void sub_1C4AD37FC()
{
  *&xmmword_1EDE2DA00 = 0xD000000000000025;
  *(&xmmword_1EDE2DA00 + 1) = 0x80000001C4FB0370;
  sub_1C441A360(MEMORY[0x1E69E7CC0]);
}

void sub_1C4AD382C()
{
  qword_1EDE2D870 = 0xD000000000000013;
  *algn_1EDE2D878 = 0x80000001C4FB0230;
  sub_1C44078EC();
}

void sub_1C4AD386C()
{
  qword_1EDE2D848 = 0xD000000000000015;
  unk_1EDE2D850 = 0x80000001C4FB0210;
  sub_1C44078EC();
}

void sub_1C4AD38AC()
{
  qword_1EDE2D820 = 0xD000000000000015;
  *algn_1EDE2D828 = 0x80000001C4FB01F0;
  sub_1C44078EC();
}

void sub_1C4AD38EC()
{
  *&xmmword_1EDE2D960 = 0x6D614E6573616870;
  *(&xmmword_1EDE2D960 + 1) = 0xEA00000000007365;
  sub_1C440B13C(&xmmword_1EDE2D960);
}

void sub_1C4AD392C()
{
  *&xmmword_1EDE2D7D0 = 0xD000000000000015;
  *(&xmmword_1EDE2D7D0 + 1) = 0x80000001C4FB03A0;
  sub_1C44078EC();
}

void sub_1C4AD396C()
{
  strcpy(&xmmword_1EDE2D910, "phaseStartTime");
  HIBYTE(xmmword_1EDE2D910) = -18;
  sub_1C440B13C(&xmmword_1EDE2D910);
}

void sub_1C4AD39B4()
{
  *&xmmword_1EDE2D7F8 = 0xD000000000000015;
  *(&xmmword_1EDE2D7F8 + 1) = 0x80000001C4FB01D0;
  sub_1C44078EC();
}

void sub_1C4AD39F4()
{
  strcpy(&xmmword_1EDE2D8E8, "phaseTimeSpent");
  HIBYTE(xmmword_1EDE2D8E8) = -18;
  sub_1C440B13C(&xmmword_1EDE2D8E8);
}

uint64_t sub_1C4AD3A3C()
{
  v0 = sub_1C4F025D8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4AD3A88(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4687A74();
}

uint64_t sub_1C4AD3AAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4AD3A3C();
  *a2 = result;
  return result;
}

unint64_t sub_1C4AD3B3C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000039;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001DLL;
  }

  return 0xD000000000000044;
}

unint64_t sub_1C4AD3B98()
{
  result = qword_1EC0C2F38;
  if (!qword_1EC0C2F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2F38);
  }

  return result;
}

uint64_t sub_1C4AD3BEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4AD3C40()
{
  v1 = v0[3];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  sub_1C44006A8();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

_BYTE *sub_1C4AD3C8C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C4AD3D64(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4AD3E4C()
{
  result = qword_1EC0C2F70;
  if (!qword_1EC0C2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2F70);
  }

  return result;
}

unint64_t sub_1C4AD3EA4()
{
  result = qword_1EC0C2F78;
  if (!qword_1EC0C2F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2F78);
  }

  return result;
}

uint64_t static PipelineType.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = *a1;
  v4 = *a2;
  v5 = 0xE700000000000000;
  v6 = 0x6E776F6E6B6E75;
  switch(v3)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1819047270;
      break;
    case 2:
      v6 = sub_1C44076F0();
      break;
    case 3:
      v6 = sub_1C44133C0();
      v5 = 0xEA0000000000676ELL;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(v4)
  {
    case 1:
      v7 = 0xE400000000000000;
      v2 = 1819047270;
      break;
    case 2:
      v7 = 0xE500000000000000;
      v2 = 0x61746C6564;
      break;
    case 3:
      v2 = 0x69686374614D6F74;
      v7 = 0xEA0000000000676ELL;
      break;
    default:
      break;
  }

  if (v6 == v2 && v5 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_1C4F02938();
  }

  return v9 & 1;
}

uint64_t sub_1C4AD402C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4684BDC();
}

uint64_t sub_1C4AD4054(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4A6BEEC();
}

uint64_t sub_1C4AD4060(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4A6BB08();
}

uint64_t sub_1C4AD406C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1C4D37C8C();
}

unint64_t sub_1C4AD4088()
{
  result = qword_1EC0C2F80;
  if (!qword_1EC0C2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2F80);
  }

  return result;
}

unint64_t sub_1C4AD40E0()
{
  result = qword_1EC0C2F88;
  if (!qword_1EC0C2F88)
  {
    sub_1C4572308(&qword_1EC0B9230, &unk_1C4F0ED50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2F88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PipelineType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C4AD4290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v35 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v22 = 0;
  do
  {
    sub_1C4AD6BCC(byte_1F43D27E8[v22 + 32]);
    v31 = v30;
    v32 = v23;
    v33 = *(v35 + 16);
    if (v33 >= *(v35 + 24) >> 1)
    {
      sub_1C44CD9C0();
    }

    ++v22;
    *(v35 + 16) = v33 + 1;
    v34 = v35 + 16 * v33;
    *(v34 + 32) = v31;
    *(v34 + 40) = v32;
  }

  while (v22 != 62);

  sub_1C4499940(v35, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4AD4374()
{
  v1 = objc_autoreleasePoolPush();
  sub_1C4AD43CC(v0, &v3);
  objc_autoreleasePoolPop(v1);
  return v3;
}

uint64_t sub_1C4AD43CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  v5 = *(a1 + 16);
  sub_1C4EF9AD8();
  v6 = sub_1C4F019C8();
  v7 = [v5 publisherWithStartTime:v6 endTime:0 maxEvents:0 reversed:1];

  v8 = swift_allocObject();
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  v19 = sub_1C4AD461C;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1C44405F8;
  v18 = &unk_1F43F96F0;
  v9 = _Block_copy(&v15);
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = v8;
  v19 = sub_1C4AD59B0;
  v20 = v10;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1C4440590;
  v18 = &unk_1F43F9740;
  v11 = _Block_copy(&v15);
  v12 = v7;

  v13 = [v12 sinkWithCompletion:v9 receiveInput:v11];

  _Block_release(v11);
  _Block_release(v9);

  swift_beginAccess();
  *a2 = *(v8 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4AD461C(void *a1)
{
  v1 = [a1 error];
  if (v1)
  {
    v2 = v1;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDDFECB8);
    v4 = v2;
    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = v4;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v9 = sub_1C4F01198();
      v11 = sub_1C441D828(v9, v10, &v13);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1C43F8000, oslog, v5, "Fetching POICategoryEvent from BMPOICategoryEvent failed with error: %s", v6, 0xCu);
      sub_1C440962C(v7);
      MEMORY[0x1C6942830](v7, -1, -1);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C4AD47DC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 eventBody];
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    if (*(a2 + 24))
    {
      [v6 timeIntervalSince1970];
      v8 = v7;
    }

    else
    {
      v8 = *(a2 + 16);
    }

    swift_beginAccess();
    *(a2 + 16) = v8;
    *(a2 + 24) = 0;
    [v6 timeIntervalSince1970];
    v13 = v12;
    swift_beginAccess();
    if (*(a2 + 24))
    {
      __break(1u);
    }

    else if (v13 < *(a2 + 16) || [v6 rank] > 4)
    {
    }

    else
    {
      v14 = swift_beginAccess();
      MEMORY[0x1C6940330](v14);
      sub_1C4427EF0(*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1C4F01748();
      swift_endAccess();
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v10, "Unable to parse eventBody from read event in poi category featurizer", v11, 2u);
      MEMORY[0x1C6942830](v11, -1, -1);
    }
  }
}

uint64_t sub_1C4AD4A0C(uint64_t a1)
{
  v39 = sub_1C4577DBC();
  v2 = sub_1C4F00F28();
  v43 = a1;
  v3 = sub_1C4428DA0();
  if (!v3)
  {
    return v2;
  }

  v4 = v3;
  v41 = objc_opt_self();
  if (v4 >= 1)
  {
    v5 = 0;
    v42 = a1 & 0xC000000000000001;
    v40 = v4;
    while (1)
    {
      v6 = v42 ? MEMORY[0x1C6940F90](v5, v43) : *(v43 + 8 * v5 + 32);
      v7 = v6;
      v8 = [v6 poiCategory];
      v9 = sub_1C4F01138();
      v11 = v10;

      v12 = sub_1C4AD5C68(v9, v11);
      v13 = [v7 rank];
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v14 = round(1.0 / (v13 + 1) * 100.0) / 100.0;
      sub_1C4AD6BCC(v12);
      v16 = v15;
      v18 = v17;
      v19 = [v41 featureValueWithDouble_];
      if (v19)
      {
        v20 = v19;
        swift_isUniquelyReferenced_nonNull_native();
        v21 = sub_1C445FAA8(v16, v18);
        if (__OFADD__(v2[2], (v22 & 1) == 0))
        {
          goto LABEL_24;
        }

        v23 = v21;
        v24 = v22;
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        if (sub_1C4400BC4())
        {
          v25 = sub_1C445FAA8(v16, v18);
          if ((v24 & 1) != (v26 & 1))
          {
            goto LABEL_27;
          }

          v23 = v25;
        }

        if (v24)
        {
          v27 = v2[7];
          v28 = *(v27 + 8 * v23);
          *(v27 + 8 * v23) = v20;
        }

        else
        {
          v2[(v23 >> 6) + 8] |= 1 << v23;
          v34 = (v2[6] + 16 * v23);
          *v34 = v16;
          v34[1] = v18;
          *(v2[7] + 8 * v23) = v20;
          v35 = v2[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            goto LABEL_25;
          }

          v2[2] = v37;
          v28 = v7;
        }

        v4 = v40;
      }

      else
      {
        v29 = sub_1C445FAA8(v16, v18);
        v31 = v30;

        if (v31)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v32 = v2[3];
          sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          sub_1C4400BC4();
          v33 = *(v2[6] + 16 * v29 + 8);

          sub_1C4F02478();
        }
      }

      if (v4 == ++v5)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
LABEL_27:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C4AD4D48(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = v2;
  v40 = sub_1C4EF9CD8();
  v6 = sub_1C43FCDF8(v40);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = type metadata accessor for FeatureProviderSnapshot(0);
  v15 = sub_1C43FCDF8(v14);
  v38 = v16;
  v39 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v22 = *(a1 + 16);
  v23 = MEMORY[0x1E69E7CC0];
  if (v22)
  {
    v35 = a2;
    v42 = MEMORY[0x1E69E7CC0];
    v41 = v21;
    sub_1C459D0A8();
    v24 = v41;
    v23 = v42;
    v26 = *(v8 + 16);
    v25 = v8 + 16;
    v27 = a1 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v36 = *(v25 + 56);
    v37 = v26;
    do
    {
      v37(v13, v27, v40);
      v37(v24, v13, v40);
      v28 = sub_1C4AD4374();
      v29 = sub_1C4AD4A0C(v28);

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = v3;
      v31 = sub_1C4AD59B8(v29);

      sub_1C465CF34(v31);
      v33 = v32;

      (*(v25 - 8))(v13, v40);
      *(v41 + *(v39 + 20)) = v33;
      v24 = v41;
      v34 = *(v42 + 16);
      if (v34 >= *(v42 + 24) >> 1)
      {
        sub_1C459D0A8();
        v24 = v41;
      }

      *(v42 + 16) = v34 + 1;
      sub_1C4586A54(v24, v42 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34);
      v27 += v36;
      --v22;
      v3 = v30;
    }

    while (v22);
    a2 = v35;
  }

  *a2 = v23;
}

uint64_t sub_1C4AD5010()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  v9 = sub_1C4AD4374();
  v10 = sub_1C4AD4A0C(v9);

  (*(v3 + 8))(v8, v0);
  return v10;
}

void sub_1C4AD50E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v26 = a1;
  v27 = a3;
  v7 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1C456902C(&qword_1EC0C2D58, &qword_1C4F50AE0);
  v10 = sub_1C43FCDF8(v9);
  v25 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v24 - v14;
  v16 = *(v5 + 16);
  sub_1C4EF9AD8();
  v17 = sub_1C4F019C8();
  v18 = a2 + *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
  sub_1C4EF9AD8();
  v19 = sub_1C4F019C8();
  v20 = [v16 publisherWithStartTime:v17 endTime:v19 maxEvents:0 reversed:0];

  v21 = v20;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C4EFFC38();
  if (v4)
  {
  }

  else
  {
    v22 = swift_allocObject();
    v24[1] = v7;
    v23 = v26;
    *(v22 + 16) = v5;
    *(v22 + 24) = v23;
    type metadata accessor for FeatureProviderChange(0);
    sub_1C4401CBC(&qword_1EC0C2FA0, &qword_1EC0B8600, &unk_1C4F0D4E0);

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4F02848();

    (*(v25 + 32))(v27, v15, v9);
  }
}

uint64_t sub_1C4AD5390(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a3;
  v5 = *a2;
  v4[9] = a4;
  v4[10] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1C4AD53B8, 0, 0);
}

uint64_t sub_1C4AD53B8()
{
  v1 = [*(v0 + 80) eventBody];
  if (v1)
  {
    v2 = v1;
    if ([v1 rank])
    {
      v3 = *(v0 + 56);
      v4 = type metadata accessor for FeatureProviderChange(0);
      sub_1C440BAA8(v3, 1, 1, v4);

      goto LABEL_11;
    }

    v13 = *(v0 + 72);
    v14 = *(v0 + 56);
    [*(v0 + 80) timestamp];
    sub_1C4EF9AC8();
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0FCC0;
    *(inited + 32) = v2;
    v16 = v2;
    v17 = sub_1C4AD4A0C(inited);
    swift_setDeallocating();
    sub_1C49E1628();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = sub_1C4AD59B8(v17);

    sub_1C465CF34(v18);
    v20 = v19;

    v10 = type metadata accessor for FeatureProviderChange(0);
    *(v14 + *(v10 + 20)) = 2;
    *(v14 + *(v10 + 24)) = v20;
    v11 = v14;
    v12 = 0;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, v6, v7, "Unable to parse eventBody from read event in POI category featurizer", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    v9 = *(v0 + 56);

    v10 = type metadata accessor for FeatureProviderChange(0);
    v11 = v9;
    v12 = 1;
  }

  sub_1C440BAA8(v11, v12, 1, v10);
LABEL_11:
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1C4AD58C0(uint64_t a1)
{
  *(a1 + 8) = sub_1C4AD5928(&qword_1EC0C2F90);
  result = sub_1C4AD5928(&qword_1EC0C2F98);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4AD5928(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PoiCategorySignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4AD596C(uint64_t a1)
{
  result = sub_1C4AD5928(&qword_1EC0C2F98);
  *(a1 + 16) = result;
  return result;
}

void *sub_1C4AD59B8(_BYTE *a1)
{
  v2 = a1;
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a1[32];
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = swift_bridgeObjectRetain_n();
  if (v4 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v15 = sub_1C441235C();
      v2 = sub_1C45867F0(v15, v16, v17, v18);
      MEMORY[0x1C6942830](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v6);
  sub_1C4501018(0, v5, v19 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = sub_1C441235C();
  sub_1C4586AB8(v7, v8, v9, v10);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v11;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v12 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1C4AD5B5C(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_1C4AD5BAC(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C44A7DA0;

  return sub_1C4AD5390(a1, a2, v7, v6);
}

uint64_t sub_1C4AD5C68(uint64_t a1, unint64_t a2)
{
  v4 = a1 == 0x6172756174736572 && a2 == 0xEA0000000000746ELL;
  if (v4 || (sub_1C43FD4D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x797265636F7267 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C43FD4D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656566666F63 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C43FD4D8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7174503 && a2 == 0xE300000000000000;
        if (v8 || (sub_1C43FD4D8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D756964617473 && a2 == 0xE700000000000000;
          if (v9 || (sub_1C43FD4D8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701538152 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C43FD4D8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1802658160 && a2 == 0xE400000000000000;
              if (v11 || (sub_1C43FD4D8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x7972617262696CLL && a2 == 0xE700000000000000;
                if (v12 || (sub_1C43FD4D8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x756F6967696C6572 && a2 == 0xE900000000000073;
                  if (v13 || (sub_1C43FD4D8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6569766F6DLL && a2 == 0xE500000000000000;
                    if (v14 || (sub_1C43FD4D8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 7566690 && a2 == 0xE300000000000000;
                      if (v15 || (sub_1C43FD4D8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E69617274 && a2 == 0xE500000000000000;
                        if (v16 || (sub_1C43FD4D8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x74726F70726961 && a2 == 0xE700000000000000;
                          if (v17 || (sub_1C43FD4D8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 30309 && a2 == 0xE200000000000000;
                            if (v18 || (sub_1C43FD4D8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 7561575 && a2 == 0xE300000000000000;
                              if (v19 || (sub_1C43FD4D8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x7972646E75616CLL && a2 == 0xE700000000000000;
                                if (v20 || (sub_1C43FD4D8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6D756573756DLL && a2 == 0xE600000000000000;
                                  if (v21 || (sub_1C43FD4D8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    sub_1C4420178();
                                    v23 = v4 && v22 == a2;
                                    if (v23 || (sub_1C44078F8() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      sub_1C43FE984();
                                      v25 = a1 == 0xD00000000000001BLL && v24 == a2;
                                      if (v25 || (sub_1C43FD4D8() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        sub_1C43FE984();
                                        v27 = a1 == 0xD000000000000016 && v26 == a2;
                                        if (v27 || (sub_1C43FD4D8() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          sub_1C43FE984();
                                          v29 = a1 == 0xD000000000000011 && v28 == a2;
                                          if (v29 || (sub_1C43FD4D8() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            sub_1C43FE984();
                                            v31 = a1 == 0xD000000000000014 && v30 == a2;
                                            if (v31 || (sub_1C43FD4D8() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              sub_1C43FE984();
                                              v33 = a1 == 0xD000000000000012 && v32 == a2;
                                              if (v33 || (sub_1C43FD4D8() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                sub_1C43FE984();
                                                v35 = a1 == 0xD000000000000013 && v34 == a2;
                                                if (v35 || (sub_1C43FD4D8() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  sub_1C4420178();
                                                  v37 = v4 && v36 == a2;
                                                  if (v37 || (sub_1C44078F8() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    sub_1C43FE984();
                                                    v39 = a1 == 0xD000000000000012 && v38 == a2;
                                                    if (v39 || (sub_1C43FD4D8() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      sub_1C43FE984();
                                                      v41 = a1 == 0xD000000000000018 && v40 == a2;
                                                      if (v41 || (sub_1C43FD4D8() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        sub_1C43FE984();
                                                        v43 = a1 == 0xD000000000000017 && v42 == a2;
                                                        if (v43 || (sub_1C43FD4D8() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          sub_1C43FE984();
                                                          v45 = a1 == 0xD000000000000017 && v44 == a2;
                                                          if (v45 || (sub_1C43FD4D8() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            sub_1C43FE984();
                                                            v47 = a1 == 0xD000000000000019 && v46 == a2;
                                                            if (v47 || (sub_1C43FD4D8() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              sub_1C43FE984();
                                                              v49 = a1 == 0xD00000000000001BLL && v48 == a2;
                                                              if (v49 || (sub_1C43FD4D8() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                sub_1C441A36C();
                                                                v51 = v4 && v50 == a2;
                                                                if (v51 || (sub_1C43FD4D8() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  sub_1C441A36C();
                                                                  v53 = v4 && v52 == a2;
                                                                  if (v53 || (sub_1C43FD4D8() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    sub_1C440B148();
                                                                    v55 = v4 && v54 == a2;
                                                                    if (v55 || (sub_1C43FD4D8() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      sub_1C43FE984();
                                                                      v57 = a1 == 0xD000000000000013 && v56 == a2;
                                                                      if (v57 || (sub_1C43FD4D8() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        sub_1C4420178();
                                                                        v59 = v4 && v58 == a2;
                                                                        if (v59 || (sub_1C44078F8() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          sub_1C4420178();
                                                                          v61 = v4 && v60 == a2;
                                                                          if (v61 || (sub_1C44078F8() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            sub_1C4400BE4();
                                                                            v63 = v4 && v62 == a2;
                                                                            if (v63 || (sub_1C43FD4D8() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              sub_1C43FE984();
                                                                              v65 = a1 == 0xD00000000000001ALL && v64 == a2;
                                                                              if (v65 || (sub_1C43FD4D8() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                sub_1C4400BE4();
                                                                                v67 = v4 && v66 == a2;
                                                                                if (v67 || (sub_1C43FD4D8() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  sub_1C43FE984();
                                                                                  v69 = a1 == 0xD00000000000001ALL && v68 == a2;
                                                                                  if (v69 || (sub_1C43FD4D8() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    sub_1C43FE984();
                                                                                    v71 = a1 == 0xD000000000000017 && v70 == a2;
                                                                                    if (v71 || (sub_1C43FD4D8() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      sub_1C43FE984();
                                                                                      v73 = a1 == 0xD000000000000012 && v72 == a2;
                                                                                      if (v73 || (sub_1C43FD4D8() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        sub_1C4420178();
                                                                                        v75 = v4 && v74 == a2;
                                                                                        if (v75 || (sub_1C44078F8() & 1) != 0)
                                                                                        {

                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          sub_1C440B148();
                                                                                          v77 = v4 && v76 == a2;
                                                                                          if (v77 || (sub_1C43FD4D8() & 1) != 0)
                                                                                          {

                                                                                            return 44;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            sub_1C441A36C();
                                                                                            v79 = v4 && v78 == a2;
                                                                                            if (v79 || (sub_1C43FD4D8() & 1) != 0)
                                                                                            {

                                                                                              return 45;
                                                                                            }

                                                                                            else
                                                                                            {
                                                                                              sub_1C4400BE4();
                                                                                              v81 = v4 && v80 == a2;
                                                                                              if (v81 || (sub_1C43FD4D8() & 1) != 0)
                                                                                              {

                                                                                                return 46;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                sub_1C441A36C();
                                                                                                v83 = v4 && v82 == a2;
                                                                                                if (v83 || (sub_1C43FD4D8() & 1) != 0)
                                                                                                {

                                                                                                  return 47;
                                                                                                }

                                                                                                else
                                                                                                {
                                                                                                  sub_1C43FE984();
                                                                                                  v85 = a1 == 0xD00000000000001DLL && v84 == a2;
                                                                                                  if (v85 || (sub_1C43FD4D8() & 1) != 0)
                                                                                                  {

                                                                                                    return 48;
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    sub_1C43FE984();
                                                                                                    v87 = a1 == 0xD00000000000001BLL && v86 == a2;
                                                                                                    if (v87 || (sub_1C43FD4D8() & 1) != 0)
                                                                                                    {

                                                                                                      return 49;
                                                                                                    }

                                                                                                    else
                                                                                                    {
                                                                                                      sub_1C441A36C();
                                                                                                      v89 = v4 && v88 == a2;
                                                                                                      if (v89 || (sub_1C43FD4D8() & 1) != 0)
                                                                                                      {

                                                                                                        return 50;
                                                                                                      }

                                                                                                      else
                                                                                                      {
                                                                                                        sub_1C440B148();
                                                                                                        v91 = v4 && v90 == a2;
                                                                                                        if (v91 || (sub_1C43FD4D8() & 1) != 0)
                                                                                                        {

                                                                                                          return 51;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          sub_1C4400BE4();
                                                                                                          v93 = v4 && v92 == a2;
                                                                                                          if (v93 || (sub_1C43FD4D8() & 1) != 0)
                                                                                                          {

                                                                                                            return 52;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            sub_1C4420178();
                                                                                                            v95 = v4 && v94 == a2;
                                                                                                            if (v95 || (sub_1C44078F8() & 1) != 0)
                                                                                                            {

                                                                                                              return 53;
                                                                                                            }

                                                                                                            else
                                                                                                            {
                                                                                                              sub_1C43FE984();
                                                                                                              v97 = a1 == 0xD000000000000013 && v96 == a2;
                                                                                                              if (v97 || (sub_1C43FD4D8() & 1) != 0)
                                                                                                              {

                                                                                                                return 54;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                sub_1C4420178();
                                                                                                                v99 = v4 && v98 == a2;
                                                                                                                if (v99 || (sub_1C44078F8() & 1) != 0)
                                                                                                                {

                                                                                                                  return 55;
                                                                                                                }

                                                                                                                else
                                                                                                                {
                                                                                                                  sub_1C441A36C();
                                                                                                                  v101 = v4 && v100 == a2;
                                                                                                                  if (v101 || (sub_1C43FD4D8() & 1) != 0)
                                                                                                                  {

                                                                                                                    return 56;
                                                                                                                  }

                                                                                                                  else
                                                                                                                  {
                                                                                                                    sub_1C4400BE4();
                                                                                                                    v103 = v4 && v102 == a2;
                                                                                                                    if (v103 || (sub_1C43FD4D8() & 1) != 0)
                                                                                                                    {

                                                                                                                      return 57;
                                                                                                                    }

                                                                                                                    else
                                                                                                                    {
                                                                                                                      sub_1C43FE984();
                                                                                                                      v105 = a1 == 0xD000000000000011 && v104 == a2;
                                                                                                                      if (v105 || (sub_1C43FD4D8() & 1) != 0)
                                                                                                                      {

                                                                                                                        return 58;
                                                                                                                      }

                                                                                                                      else
                                                                                                                      {
                                                                                                                        sub_1C43FE984();
                                                                                                                        v107 = a1 == 0xD000000000000019 && v106 == a2;
                                                                                                                        if (v107 || (sub_1C43FD4D8() & 1) != 0)
                                                                                                                        {

                                                                                                                          return 59;
                                                                                                                        }

                                                                                                                        else
                                                                                                                        {
                                                                                                                          sub_1C43FE984();
                                                                                                                          v109 = a1 == 0xD00000000000001DLL && v108 == a2;
                                                                                                                          if (v109 || (sub_1C43FD4D8() & 1) != 0)
                                                                                                                          {

                                                                                                                            return 60;
                                                                                                                          }

                                                                                                                          else
                                                                                                                          {
                                                                                                                            sub_1C43FE984();
                                                                                                                            v111 = a1 == 0xD000000000000019 && v110 == a2;
                                                                                                                            if (v111 || (sub_1C43FD4D8() & 1) != 0)
                                                                                                                            {
                                                                                                                            }

                                                                                                                            else
                                                                                                                            {
                                                                                                                              if (qword_1EDDFECB0 != -1)
                                                                                                                              {
                                                                                                                                swift_once();
                                                                                                                              }

                                                                                                                              v112 = sub_1C4F00978();
                                                                                                                              sub_1C442B738(v112, qword_1EDDFECB8);
                                                                                                                              sub_1C44042C4();
                                                                                                                              v113 = swift_allocObject();
                                                                                                                              *(v113 + 16) = a1;
                                                                                                                              *(v113 + 24) = a2;
                                                                                                                              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                                                                                                                              v114 = sub_1C4F00968();
                                                                                                                              v115 = sub_1C4F01CE8();
                                                                                                                              v116 = swift_allocObject();
                                                                                                                              *(v116 + 16) = 32;
                                                                                                                              v117 = swift_allocObject();
                                                                                                                              *(v117 + 16) = 8;
                                                                                                                              sub_1C44042C4();
                                                                                                                              v118 = swift_allocObject();
                                                                                                                              *(v118 + 16) = sub_1C4AD7104;
                                                                                                                              *(v118 + 24) = v113;
                                                                                                                              sub_1C44042C4();
                                                                                                                              v119 = swift_allocObject();
                                                                                                                              *(v119 + 16) = sub_1C4AD71F0;
                                                                                                                              *(v119 + 24) = v118;
                                                                                                                              sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
                                                                                                                              inited = swift_initStackObject();
                                                                                                                              sub_1C466323C(inited, 3);
                                                                                                                              *v121 = sub_1C44549EC;
                                                                                                                              v121[1] = v116;
                                                                                                                              v121[2] = sub_1C44549F4;
                                                                                                                              v121[3] = v117;
                                                                                                                              v121[4] = sub_1C4454B88;
                                                                                                                              v121[5] = v119;

                                                                                                                              if (os_log_type_enabled(v114, v115))
                                                                                                                              {
                                                                                                                                v122 = sub_1C4B400F0();
                                                                                                                                v123 = swift_slowAlloc();
                                                                                                                                v125 = v123;
                                                                                                                                *v122 = 136315138;
                                                                                                                                v124 = sub_1C441D828(a1, a2, &v125);

                                                                                                                                *(v122 + 4) = v124;
                                                                                                                                _os_log_impl(&dword_1C43F8000, v114, v115, "Unknown POI category string with value: %s", v122, 0xCu);
                                                                                                                                sub_1C440962C(v123);
                                                                                                                                MEMORY[0x1C6942830](v123, -1, -1);
                                                                                                                                MEMORY[0x1C6942830](v122, -1, -1);
                                                                                                                              }

                                                                                                                              else
                                                                                                                              {
                                                                                                                              }
                                                                                                                            }

                                                                                                                            return 61;
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
            }
          }
        }
      }
    }
  }
}

void sub_1C4AD6BCC(char a1)
{
  switch(a1)
  {
    case 17:
    case 24:
    case 29:
    case 35:
    case 36:
    case 43:
    case 53:
    case 55:
    case 59:
      sub_1C43FE984();
      break;
    case 61:
      return;
    default:
      sub_1C4413680();
      break;
  }
}

uint64_t sub_1C4AD710C()
{
  v0 = sub_1C4F029A8();

  if (v0 >= 0x3E)
  {
    return 62;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4AD7184@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C4AD710C();
  *a2 = result;
  return result;
}

void sub_1C4AD71B4(void *a1@<X8>)
{
  sub_1C4AD6BCC(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t _s7FeatureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xC3)
  {
    if (a2 + 61 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 61) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 62;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3E;
  v5 = v6 - 62;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s7FeatureOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 61 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 61) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC2)
  {
    v6 = ((a2 - 195) >> 8) + 1;
    *result = a2 + 61;
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
          *result = a2 + 61;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4AD7360()
{
  result = qword_1EC0C2FB0;
  if (!qword_1EC0C2FB0)
  {
    sub_1C4572308(&qword_1EC0C2FB8, qword_1C4F4E968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2FB0);
  }

  return result;
}

unint64_t sub_1C4AD73C8()
{
  result = qword_1EC0C2FC0;
  if (!qword_1EC0C2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2FC0);
  }

  return result;
}

void *sub_1C4AD7438(uint64_t a1, char a2)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0x6B6E6152696F70;
  *(inited + 40) = 0xE700000000000000;
  v5 = objc_opt_self();
  *(inited + 48) = [v5 featureValueWithInt64_];
  sub_1C4577DBC();
  v6 = sub_1C4F00F28();
  sub_1C465BEF8();
  if ((v7 & 1) == 0)
  {
    v8 = sub_1C4B744F4(a2, byte_1F43D27E8);
    if (v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = v8;
    }

    if ([v5 featureValueWithInt64_])
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660314();
    }

    else
    {
      v11 = sub_1C445FAA8(0x6765746143696F70, 0xEB0000000079726FLL);
      if (v12)
      {
        v13 = v11;
        swift_isUniquelyReferenced_nonNull_native();
        v14 = v6[3];
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();
        v15 = *(v6[6] + 16 * v13 + 8);

        v16 = *(v6[7] + 8 * v13);
        sub_1C4F02478();
      }
    }
  }

  return v6;
}

uint64_t sub_1C4AD7648@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(result + 24));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *a2 = v4;
  *(a2 + 8) = v3;
  return result;
}

void sub_1C4AD7664()
{
  v0 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v1 = [v0 PointOfInterest];
  swift_unknownObjectRelease();
  v2 = [v1 Category];
  swift_unknownObjectRelease();
  sub_1C45808E8();
}

uint64_t type metadata accessor for PoiCategoryEvent()
{
  result = qword_1EDDE6AC8;
  if (!qword_1EDDE6AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AD77C0()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PoiCategoryContent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xC3 && *(a1 + 9))
    {
      v2 = *a1 + 194;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 0x3E;
      v2 = v3 - 62;
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

uint64_t storeEnumTagSinglePayload for PoiCategoryContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC2)
  {
    *(result + 8) = 0;
    *result = a2 - 195;
    if (a3 >= 0xC3)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC3)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 61;
    }
  }

  return result;
}

unint64_t sub_1C4AD78CC()
{
  result = qword_1EDDDE910;
  if (!qword_1EDDDE910)
  {
    sub_1C4572308(&qword_1EC0C2FC8, &qword_1C4F4EAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE910);
  }

  return result;
}

uint64_t PortraitTopicKeyValueStore.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PortraitTopicKeyValueStore.init(config:)(a1);
  return v2;
}

void *PortraitTopicKeyValueStore.init(config:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = type metadata accessor for Configuration();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  sub_1C44098F0(a1, v21 - v11);
  v13 = type metadata accessor for KeyValueStore();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = KeyValueStore.init(config:domain:)(v12, 0xD000000000000014, 0x80000001C4FB0A10);
  if (v2)
  {
    sub_1C4467948(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v3[2] = v16;
    sub_1C44098F0(a1, v10);
    v17 = *(v13 + 48);
    v18 = *(v13 + 52);
    swift_allocObject();
    v19 = KeyValueStore.init(config:domain:)(v10, 0xD000000000000020, 0x80000001C4FB0A30);
    sub_1C4467948(a1);
    v3[3] = v19;
  }

  return v3;
}

uint64_t PortraitTopicKeyValueStore.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t PortraitTopicKeyValueStore.__deallocating_deinit()
{
  PortraitTopicKeyValueStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t PostalAddress.mapLocation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t PostalAddress.identifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4AD7C9C()
{
  if (qword_1EC0B70D0 != -1)
  {
    swift_once();
  }

  qword_1EC0C2FD0 = qword_1EC0C3748;
  *&qword_1EC0C2FD8 = *&qword_1EC0C3750;
  qword_1EC0C2FE8 = qword_1EC0C3760;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t *sub_1C4AD7D1C()
{
  if (qword_1EC0B7078 != -1)
  {
    sub_1C4420188();
  }

  return &qword_1EC0C2FD0;
}

uint64_t static PostalAddress.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7078 != -1)
  {
    sub_1C4420188();
  }

  swift_beginAccess();
  v2 = qword_1EC0C2FE8;
  *a1 = qword_1EC0C2FD0;
  *(a1 + 8) = *&qword_1EC0C2FD8;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static PostalAddress.type.setter(uint64_t a1)
{
  v1 = *a1;
  v4 = *(a1 + 8);
  v2 = *(a1 + 24);
  if (qword_1EC0B7078 != -1)
  {
    sub_1C4420188();
  }

  swift_beginAccess();
  qword_1EC0C2FD0 = v1;
  *&qword_1EC0C2FD8 = v4;
  qword_1EC0C2FE8 = v2;
}

uint64_t (*static PostalAddress.type.modify())()
{
  if (qword_1EC0B7078 != -1)
  {
    sub_1C4420188();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C4AD7EE8@<X0>(uint64_t a1@<X8>)
{
  sub_1C4AD7D1C();
  swift_beginAccess();
  v2 = qword_1EC0C2FE8;
  *a1 = qword_1EC0C2FD0;
  *(a1 + 8) = *&qword_1EC0C2FD8;
  *(a1 + 24) = v2;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4AD7F50(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v4 = *(a1 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4AD7D1C();
  swift_beginAccess();
  qword_1EC0C2FD0 = v1;
  *&qword_1EC0C2FD8 = v4;
  qword_1EC0C2FE8 = v2;
}

uint64_t PostalAddress.basicProperties.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_1C4AD8818(uint64_t a1)
{
  v2 = sub_1C4AD8D6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4AD8854(uint64_t a1)
{
  v2 = sub_1C4AD8D6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PostalAddress.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C2FF0, &unk_1C4F4EB70);
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v18 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v20 = v1[3];
  v21 = v13;
  v19 = v1[4];
  v14 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AD8D6C();
  sub_1C4F02BF8();
  v26 = 0;
  v15 = v22;
  sub_1C4F02798();
  if (!v15)
  {
    v16 = v19;
    v25 = 1;
    sub_1C4F02738();
    v23 = v16;
    v24 = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984);
    sub_1C4F027E8();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t PostalAddress.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C3000, &qword_1C4F4EB80);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4AD8D6C();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v10 = sub_1C4F02678();
  v18 = v11;
  v16 = sub_1C4F02618();
  v17 = v12;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50);
  sub_1C4F026C8();
  v13 = sub_1C4413694();
  v14(v13);
  *a2 = v10;
  a2[1] = v18;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v19;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

unint64_t sub_1C4AD8D6C()
{
  result = qword_1EC0C2FF8;
  if (!qword_1EC0C2FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C2FF8);
  }

  return result;
}

unint64_t sub_1C4AD8DC0(uint64_t a1)
{
  result = sub_1C4AD8DE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4AD8DE8()
{
  result = qword_1EC0C3008;
  if (!qword_1EC0C3008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3008);
  }

  return result;
}

unint64_t sub_1C4AD8E3C(uint64_t a1)
{
  *(a1 + 8) = sub_1C4AD8E6C();
  result = sub_1C4AD8EC0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4AD8E6C()
{
  result = qword_1EC0C3010;
  if (!qword_1EC0C3010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3010);
  }

  return result;
}

unint64_t sub_1C4AD8EC0()
{
  result = qword_1EC0C3018;
  if (!qword_1EC0C3018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3018);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PostalAddress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4AD9004()
{
  result = qword_1EC0C3020;
  if (!qword_1EC0C3020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3020);
  }

  return result;
}

unint64_t sub_1C4AD905C()
{
  result = qword_1EC0C3028;
  if (!qword_1EC0C3028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3028);
  }

  return result;
}

unint64_t sub_1C4AD90B4()
{
  result = qword_1EC0C3030;
  if (!qword_1EC0C3030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3030);
  }

  return result;
}

uint64_t sub_1C4AD9108()
{
  v0 = sub_1C4F01108();
  v1 = sub_1C4F01108();
  v2 = PPSCreateTelemetryIdentifier();

  if (!v2)
  {
  }

  return v2;
}

uint64_t sub_1C4AD91A4()
{
  result = sub_1C4AD9108();
  qword_1EDE2DD18 = result;
  unk_1EDE2DD20 = v1;
  qword_1EDE2DD28 = v2;
  return result;
}

uint64_t PredicatePresenceBlockingFunction.init(predicates:relationshipPredicates:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C4AD9268(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_1C4AD92DC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v5 = a3[4];
  return sub_1C4415EFC();
}

uint64_t sub_1C4AD92E8(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_1C45642E8();
}

uint64_t sub_1C4AD92F8(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v2 = a2[3];
  v4 = a2[4];
  return sub_1C450EFDC();
}

uint64_t sub_1C4AD9308(uint64_t a1, void *a2)
{
  sub_1C4F02AF8();
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  sub_1C450EFDC();
  return sub_1C4F02B68();
}

uint64_t sub_1C4AD9350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1C4AD9268(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1C4AD9388(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_1C4462378();
}

uint64_t sub_1C4AD93B0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  result = sub_1C4415EFC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C4AD93E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C4AD943C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ProgressToken.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v36 = *(a2 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProgressToken.CodingKeys();
  sub_1C441A380();
  swift_getWitnessTable();
  v39 = sub_1C4F02708();
  v9 = sub_1C43FCDF8(v39);
  v34 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v30 - v13;
  v35 = a2;
  v37 = a3;
  v15 = type metadata accessor for ProgressToken();
  v16 = sub_1C43FCDF8(v15);
  v32 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v30 - v20;
  v22 = a1[4];
  sub_1C4409678(a1, a1[3]);
  v23 = v40;
  sub_1C4F02BC8();
  if (!v23)
  {
    v31 = v21;
    v40 = v15;
    v25 = v34;
    v24 = v35;
    v26 = v36;
    v27 = v38;
    sub_1C4F026C8();
    (*(v25 + 8))(v14, v39);
    v28 = v31;
    (*(v26 + 32))(v31, v27, v24);
    (*(v32 + 32))(v33, v28, v40);
  }

  return sub_1C440962C(a1);
}

uint64_t sub_1C4AD97E8()
{
  v25 = v0;
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DE10);

  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    v7 = sub_1C485224C();
    v9 = sub_1C441D828(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C43F8000, v3, v4, "Pipeline: %s: promoting Resolver KVStore to production...", v5, 0xCu);
    sub_1C440962C(v6);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v10 = *(*(*(v0 + 16) + 40) + 16);
  v11._object = 0x80000001C4FB0C10;
  v11._countAndFlagsBits = 0xD000000000000017;
  KeyValueStore.copyAllKeyValues(to:clearCurrentDomain:clearNewDomain:)(v11, 1, 1);

  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    v16 = sub_1C485224C();
    v18 = sub_1C441D828(v16, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1C43F8000, v12, v13, "Pipeline: %s: promoting construction table to production...", v14, 0xCu);
    sub_1C440962C(v15);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v19 = *(v0 + 16);
  v20 = *(v19 + 32);
  v21 = *(v19 + 48);
  sub_1C4873B00();
  v22 = *(v0 + 8);

  return v22();
}

void *sub_1C4AD9A74()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_1C4AD9AA4()
{
  sub_1C4AD9A74();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AD9AD8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C44A7DA0;

  return sub_1C4AD97C8();
}

unint64_t sub_1C4AD9B6C(uint64_t a1)
{
  result = sub_1C4AD9B94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4AD9B94()
{
  result = qword_1EDDE1A08;
  if (!qword_1EDDE1A08)
  {
    type metadata accessor for PromoteConstructionPhase();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1A08);
  }

  return result;
}

uint64_t sub_1C4AD9BE8()
{
  sub_1C456902C(&qword_1EC0C3048, &unk_1C4F4F0B0);
  swift_allocObject();
  result = sub_1C4CE507C();
  qword_1EC152B90 = result;
  return result;
}

uint64_t sub_1C4AD9C34()
{
  sub_1C44F920C();
  result = static NSUserDefaults.sqlite3ReducedCacheSpillSize.getter();
  qword_1EC152B98 = result;
  return result;
}

uint64_t sub_1C4AD9C68()
{
  sub_1C4F02248();

  v0 = sub_1C4EF98E8();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0x617461444449513CLL;
}

char *sub_1C4AD9D08(uint64_t a1)
{
  v2 = v1;
  v46 = *v1;
  v4 = sub_1C4F00D88();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1C4EFB148();
  v7 = sub_1C43FCDF8(v6);
  v50 = v8;
  v51 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  v15 = sub_1C4EF98F8();
  v16 = sub_1C43FCDF8(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C441A398();
  sub_1C4EF9888();
  v23 = OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_url;
  (*(v18 + 32))(&v2[OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_url], v22, v15);
  v44 = OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_config;
  sub_1C44098F0(a1, &v2[OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_config]);
  v24 = *(v18 + 16);
  v45 = v23;
  v24(v22, &v2[v23], v15);
  v25 = sub_1C4EF98E8();
  v43 = *(v18 + 8);
  v43(v22, v15);
  sub_1C4EFB138();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v47 = v25;
  sub_1C4EFB108();
  sub_1C4F00D68();
  sub_1C4EFB0E8();
  sub_1C4EFB0D8();
  v26 = *(type metadata accessor for Configuration() + 20);
  v49 = a1;
  v27 = (a1 + v26);
  v29 = *v27;
  v28 = v27[1];
  if (qword_1EDDFEC70 != -1)
  {
    swift_once();
  }

  v30 = v50;
  if ((xmmword_1EDDFEC78 & ~v29) != 0 || (*(&xmmword_1EDDFEC78 + 1) & v28) != *(&xmmword_1EDDFEC78 + 1))
  {
    if (qword_1EDDFEC60 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFFAE0 & ~v29) == 0 && (*(&xmmword_1EDDFFAE0 + 1) & v28) == *(&xmmword_1EDDFFAE0 + 1))
    {
      *(swift_allocObject() + 16) = v46;
      sub_1C4EFB0C8();
    }
  }

  else
  {
    sub_1C4EFB0C8();
  }

  v31 = v51;
  (*(v30 + 16))(v48, v14, v51);
  v32 = sub_1C4EFAFC8();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = v52;
  v36 = sub_1C4EFAF68();
  v37 = v30;
  if (v35)
  {
    sub_1C4467948(v49);
    (*(v30 + 8))(v14, v31);
    v43(&v2[v45], v15);
    sub_1C4467948(&v2[v44]);
    v38 = *(*v2 + 48);
    v39 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v40 = v36;
    sub_1C4467948(v49);
    (*(v37 + 8))(v14, v31);
    *&v2[OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_pool] = v40;
  }

  return v2;
}

uint64_t sub_1C4ADA214()
{
  v0 = sub_1C4EFB768();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1C4ADA310()
{
  v0 = sub_1C4EFB768();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_1C4F02248();

  v7 = 0xD000000000000015;
  v8 = 0x80000001C4F8D6D0;
  if (qword_1EC0B7090 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC152B98;
  v5 = sub_1C4F02858();
  MEMORY[0x1C6940010](v5);

  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_1C4ADA4B8()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_url;
  v2 = sub_1C4EF98F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_config);
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore11QIDDatabase_pool);

  return v0;
}

uint64_t sub_1C4ADA538()
{
  sub_1C4ADA4B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for QIDDatabase()
{
  result = qword_1EC0C3038;
  if (!qword_1EC0C3038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4ADA5E4()
{
  if (qword_1EC0B7088 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C4ADA698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v19 - v14;
  (*(a5 + 24))(a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v12 + 8))(v15, AssociatedTypeWitness);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = v20;
  v26 = a2;
  v27 = a1;
  v17 = sub_1C4F017A8();
  sub_1C4776EE0(sub_1C4ADAF7C, v21, v17);

  return v28;
}

uint64_t sub_1C4ADA854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v68 = a2;
  v76 = a5;
  v69 = a3;
  v66 = a1;
  v59 = a6;
  v7 = sub_1C4EFD678();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1C4EFB8C8();
  v74 = *(v70 - 8);
  v10 = *(v74 + 64);
  v11 = MEMORY[0x1EEE9AC00](v70);
  v63 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v59 - v13;
  v14 = sub_1C4EFF658();
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v59 - v23;
  v25 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v59 - v27;
  v29 = sub_1C4EFF8F8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4ADAFA0(v68, v28);
  v34 = sub_1C44157D4(v28, 1, v29);
  v62 = v29;
  v71 = v7;
  v72 = v30;
  if (v34 == 1)
  {
    v35 = v7;
    v36 = v17;
    sub_1C440BAA8(v24, 1, 1, v35);
    sub_1C4EFF8C8();
    if (sub_1C44157D4(v28, 1, v29) != 1)
    {
      sub_1C4423A0C(v28, &qword_1EC0BAA00, &unk_1C4F17400);
    }
  }

  else
  {
    v36 = v17;
    (*(v30 + 32))(v33, v28, v29);
  }

  v37 = v76;
  v38 = *(*(*(v76 + 16) + 8) + 16);
  sub_1C4EFADB8();
  (*(v37 + 24))(a4, v37);
  v39 = v36;
  sub_1C4EFF648();
  v75[3] = sub_1C4EFB298();
  v75[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v75);
  sub_1C4EFDCA8();
  v40 = v73;
  sub_1C4EFAE28();
  sub_1C440962C(v75);
  sub_1C4EFF8E8();
  v41 = v71;
  v42 = v33;
  if (sub_1C44157D4(v22, 1, v71) == 1)
  {
    sub_1C4423A0C(v22, &unk_1EC0C07E0, &unk_1C4F168F0);
    v43 = v74;
    v44 = v72;
    v45 = v70;
  }

  else
  {
    v46 = v61;
    v47 = *(v61 + 32);
    v69 = v39;
    v48 = v33;
    v49 = v60;
    v47(v60, v22, v41);
    sub_1C4EFD658();
    v45 = v70;
    swift_getWitnessTable();
    v50 = v63;
    sub_1C4EFB308();

    v51 = v49;
    v42 = v48;
    v39 = v69;
    (*(v46 + 8))(v51, v41);
    v43 = v74;
    (*(v74 + 8))(v40, v45);
    (*(v43 + 32))(v40, v50, v45);
    v44 = v72;
  }

  result = sub_1C4EFF8D8();
  if ((v53 & 1) == 0)
  {
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    swift_getWitnessTable();
    v54 = v63;
    sub_1C4EFB608();
    (*(v43 + 8))(v40, v45);
    (*(v43 + 32))(v40, v54, v45);
  }

  swift_getWitnessTable();
  v55 = *(v76 + 8);
  v56 = v67;
  v57 = sub_1C4EFAFE8();
  if (v56)
  {
    (*(v43 + 8))(v40, v45);
    (*(v64 + 8))(v39, v65);
    return (*(v44 + 8))(v42, v62);
  }

  else
  {
    v58 = v57;
    (*(v43 + 8))(v40, v45);
    (*(v64 + 8))(v39, v65);
    result = (*(v44 + 8))(v42, v62);
    *v59 = v58;
  }

  return result;
}

uint64_t sub_1C4ADAF7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  return sub_1C4ADA854(a1, *(v2 + 48), *(v2 + 56), *(v2 + 24), *(v2 + 40), a2);
}

uint64_t sub_1C4ADAFA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4ADB014(unint64_t a1)
{
  v4 = sub_1C4EF9488();
  v185 = *(v4 - 8);
  v186 = v4;
  v5 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v184 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = 39;
  v204 = 0xE100000000000000;
  v7 = *(a1 + 88);
  v197 = *(a1 + 96);
  MEMORY[0x1C6940010](v7);
  MEMORY[0x1C6940010](0x7361622053412027, 0xE900000000000065);
  v187 = v203;
  v189 = v204;
  v8 = MEMORY[0x1E69E7CC0];
  v206 = MEMORY[0x1E69E7CC0];
  sub_1C440F1BC();
  swift_beginAccess();
  v9 = *(a1 + 48);
  v10 = *(v9 + 16);
  v195 = a1;
  if (v10)
  {
    v196 = v7;
    *&v202[0] = v8;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44CD9C0();
    v8 = *&v202[0];
    v11 = (v9 + 40);
    v2 = 0xE500000000000000;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      sub_1C4407940();
      v203 = v14;
      v204 = 0xE500000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v12, v13);

      v16 = v203;
      v15 = v204;
      *&v202[0] = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      v1 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_1C43FCFE8(v17);
        sub_1C44328D4();
        sub_1C44CD9C0();
        v8 = *&v202[0];
      }

      *(v8 + 16) = v1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      v11 += 2;
      --v10;
    }

    while (v10);

    a1 = v195;
    v7 = v196;
  }

  if (!*(v8 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C443D664();
      v8 = v177;
    }

    v21 = *(v8 + 16);
    v20 = *(v8 + 24);
    v22 = v8;
    if (v21 >= v20 >> 1)
    {
      sub_1C43FFD98(v20);
      sub_1C443D664();
      v22 = v178;
    }

    *(v22 + 16) = v21 + 1;
    v8 = v22;
    v23 = v22 + 16 * v21;
    *(v23 + 32) = 0x2A2E65736162;
    *(v23 + 40) = 0xE600000000000000;
  }

  v24 = *(a1 + 24);
  if (v24)
  {
    v1 = v8;
    v25 = *(a1 + 16);
    v203 = 0xD00000000000002BLL;
    v204 = 0x80000001C4FB0C70;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v7, v197);
    MEMORY[0x1C6940010](15145, 0xE200000000000000);
    v26 = v203;
    v27 = v204;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1C4412380();
    sub_1C458D184();
    v30 = v29;
    v2 = *(v29 + 16);
    v31 = *(v29 + 24);
    if (v2 >= v31 >> 1)
    {
      sub_1C43FFD98(v31);
      sub_1C458D184();
      v30 = v172;
    }

    *(v30 + 16) = v2 + 1;
    v192 = v30;
    v32 = v30 + 32 * v2;
    *(v32 + 32) = v26;
    *(v32 + 40) = v27;
    *(v32 + 48) = v28;
    *(v32 + 56) = 1;
    v203 = 0x2728686372616573;
    v204 = 0xE800000000000000;
    MEMORY[0x1C6940010](v25, v24);

    MEMORY[0x1C6940010](0x73205341202927, 0xE700000000000000);
    v33 = v203;
    v34 = v204;
    sub_1C4412380();
    sub_1C458D0C4();
    v36 = v35;
    v38 = *(v35 + 16);
    v37 = *(v35 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_1C43FFD98(v37);
      sub_1C458D0C4();
      v36 = v173;
    }

    a1 = v195;
    *(v36 + 16) = v38 + 1;
    v196 = v36;
    v39 = v36 + 48 * v38;
    *(v39 + 32) = v33;
    *(v39 + 40) = v34;
    *(v39 + 48) = 0x63656A6275732E73;
    *(v39 + 56) = 0xE900000000000074;
    strcpy((v39 + 64), "base.subject");
    *(v39 + 77) = 0;
    *(v39 + 78) = -5120;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v174 = *(v8 + 16);
      sub_1C43FCEC0();
      sub_1C443D664();
      v1 = v175;
    }

    v41 = *(v1 + 16);
    v40 = *(v1 + 24);
    v42 = v1;
    if (v41 >= v40 >> 1)
    {
      sub_1C43FFD98(v40);
      sub_1C443D664();
      v42 = v176;
    }

    *(v42 + 16) = v41 + 1;
    v8 = v42;
    v43 = v42 + 16 * v41;
    *(v43 + 32) = 0xD000000000000015;
    *(v43 + 40) = 0x80000001C4FB0CA0;
    v194 = 0x80000001C4FB0CC0;
    v188 = 0xD000000000000019;
  }

  else
  {
    v188 = 0;
    v194 = 0xE000000000000000;
    v196 = MEMORY[0x1E69E7CC0];
    v192 = MEMORY[0x1E69E7CC0];
  }

  v193 = v8;
  sub_1C440F1BC();
  swift_beginAccess();
  v44 = *(a1 + 40);
  v45 = *(v44 + 16);
  if (v45)
  {
    *&v200 = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440B168();
    v46 = v200;
    v197 = v44;
    v47 = v44 + 32;
    do
    {
      sub_1C46E19E0(v47, &v203);
      sub_1C4407940();
      *&v202[0] = v48;
      *(&v202[0] + 1) = 0xE500000000000000;
      MEMORY[0x1C6940010]();
      v49 = v202[0];
      sub_1C4ADC53C(&v203);
      sub_1C440363C();
      if (v51)
      {
        sub_1C43FCFE8(v50);
        sub_1C44328D4();
        sub_1C44CD9C0();
        v46 = v200;
      }

      *(v46 + 16) = v1;
      *(v46 + 16 * v2 + 32) = v49;
      v47 += 56;
      --v45;
    }

    while (v45);
    v183 = v46;

    a1 = v195;
    v52 = *(v195 + 40);
    v1 = *(v52 + 16);
    if (v1)
    {
      v53 = v52 + 32;
      v54 = *(v195 + 40);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v55 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C46E19E0(v53, &v203);
        sub_1C46E0B60(v205, &v200);
        sub_1C4ADC53C(&v203);
        if (v201)
        {
          sub_1C441D670(&v200, v202);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = *(v55 + 16);
            sub_1C43FCEC0();
            sub_1C458D008();
            v55 = v59;
          }

          v57 = *(v55 + 16);
          v56 = *(v55 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_1C43FCFE8(v56);
            sub_1C4412380();
            sub_1C458D008();
            v55 = v60;
          }

          *(v55 + 16) = v57 + 1;
          sub_1C441D670(v202, v55 + 40 * v57 + 32);
        }

        else
        {
          sub_1C4ADC590(&v200);
        }

        v53 += 56;
        --v1;
      }

      while (v1);

      a1 = v195;
    }

    else
    {
      v55 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v55 = MEMORY[0x1E69E7CC0];
    v183 = MEMORY[0x1E69E7CC0];
  }

  sub_1C49D43F0(v55);
  sub_1C440F1BC();
  swift_beginAccess();
  v61 = *(a1 + 56);
  v62 = *(v61 + 16);
  if (v62)
  {
    v203 = 0x59422050554F5247;
    v204 = 0xE900000000000020;
    *&v200 = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440B168();
    v63 = v200;
    v197 = v61;
    v64 = (v61 + 40);
    do
    {
      v65 = *(v64 - 1);
      v66 = *v64;
      sub_1C4407940();
      *&v202[0] = v67;
      *(&v202[0] + 1) = 0xE500000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](v65, v66);

      v2 = *(&v202[0] + 1);
      v68 = *&v202[0];
      *&v200 = v63;
      v70 = *(v63 + 16);
      v69 = *(v63 + 24);
      v1 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        sub_1C43FCFE8(v69);
        sub_1C44328D4();
        sub_1C44CD9C0();
        v63 = v200;
      }

      *(v63 + 16) = v1;
      v71 = v63 + 16 * v70;
      *(v71 + 32) = v68;
      *(v71 + 40) = v2;
      v64 += 2;
      --v62;
    }

    while (v62);

    *&v202[0] = v63;
    v72 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C4F01048();
    sub_1C43FDD04();
    MEMORY[0x1C6940010](v72, 0);

    v181 = v203;
    v182 = v204;
    a1 = v195;
  }

  else
  {
    v181 = 0;
    v182 = 0xE000000000000000;
  }

  sub_1C440F1BC();
  swift_beginAccess();
  v73 = *(a1 + 64);
  v74 = *(v73 + 16);
  if (v74)
  {
    *&v200 = MEMORY[0x1E69E7CC0];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440B168();
    v75 = v200;
    v197 = v73;
    v76 = v73 + 32;
    do
    {
      sub_1C46E19E0(v76, &v203);
      sub_1C4407940();
      *&v202[0] = v77;
      *(&v202[0] + 1) = 0xE500000000000000;
      MEMORY[0x1C6940010]();
      v78 = v202[0];
      sub_1C4ADC53C(&v203);
      sub_1C440363C();
      if (v51)
      {
        sub_1C43FCFE8(v79);
        sub_1C44328D4();
        sub_1C44CD9C0();
        v75 = v200;
      }

      *(v75 + 16) = v1;
      *(v75 + 16 * v2 + 32) = v78;
      v76 += 56;
      --v74;
    }

    while (v74);
    v180 = v75;

    a1 = v195;
    v80 = *(v195 + 64);
    v81 = *(v80 + 16);
    if (v81)
    {
      v74 = v80 + 32;
      v82 = *(v195 + 64);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v83 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C46E19E0(v74, &v203);
        sub_1C46E0B60(v205, &v200);
        sub_1C4ADC53C(&v203);
        if (v201)
        {
          sub_1C441D670(&v200, v202);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v86 = *(v83 + 16);
            sub_1C43FCEC0();
            sub_1C458D008();
            v83 = v87;
          }

          v85 = *(v83 + 16);
          v84 = *(v83 + 24);
          if (v85 >= v84 >> 1)
          {
            sub_1C43FCFE8(v84);
            sub_1C4412380();
            sub_1C458D008();
            v83 = v88;
          }

          *(v83 + 16) = v85 + 1;
          sub_1C441D670(v202, v83 + 40 * v85 + 32);
        }

        else
        {
          sub_1C4ADC590(&v200);
        }

        v74 += 56;
        --v81;
      }

      while (v81);

      a1 = v195;
    }

    else
    {
      v83 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v83 = MEMORY[0x1E69E7CC0];
    v180 = MEMORY[0x1E69E7CC0];
  }

  sub_1C49D43F0(v83);
  sub_1C440F1BC();
  swift_beginAccess();
  if (*(*(a1 + 32) + 16))
  {

    v89 = *(a1 + 32);
    v90 = *(v89 + 16);
    v74 = MEMORY[0x1E69E7CC0];
    if (v90)
    {
      *&v200 = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44CD9C0();
      v91 = 0;
      v92 = (v89 + 48);
      v74 = v200;
      v197 = v89;
      while (v91 < *(v89 + 16))
      {
        v93 = *(v92 - 2);
        v94 = *(v92 - 1);
        v95 = *v92;
        *&v202[0] = v93;
        *(&v202[0] + 1) = v94;
        swift_bridgeObjectRetain_n();
        MEMORY[0x1C6940010](32, 0xE100000000000000);
        if (v95)
        {
          v96 = 1129530692;
        }

        else
        {
          v96 = 4412225;
        }

        if (v95)
        {
          v97 = 0xE400000000000000;
        }

        else
        {
          v97 = 0xE300000000000000;
        }

        MEMORY[0x1C6940010](v96, v97);

        v99 = *(&v202[0] + 1);
        v98 = *&v202[0];
        v100 = v93 == 0x725F686372616573 && v94 == 0xEB000000006B6E61;
        if (v100 || (sub_1C4F02938() & 1) != 0)
        {
        }

        else
        {
          sub_1C4407940();
          *&v202[0] = v101;
          *(&v202[0] + 1) = 0xE500000000000000;
          MEMORY[0x1C6940010](v98, v99);

          v99 = *(&v202[0] + 1);
          v98 = *&v202[0];
        }

        *&v200 = v74;
        v103 = *(v74 + 16);
        v102 = *(v74 + 24);
        v83 = v103 + 1;
        if (v103 >= v102 >> 1)
        {
          sub_1C43FCFE8(v102);
          sub_1C44CD9C0();
          v74 = v200;
        }

        ++v91;
        *(v74 + 16) = v83;
        v104 = v74 + 16 * v103;
        *(v104 + 32) = v98;
        *(v104 + 40) = v99;
        v92 += 24;
        v89 = v197;
        if (v90 == v91)
        {

          goto LABEL_88;
        }
      }

      goto LABEL_120;
    }

LABEL_88:
    *&v202[0] = 0x594220524544524FLL;
    *(&v202[0] + 1) = 0xE900000000000020;
    *&v200 = v74;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C44176D0();
    v105 = sub_1C4F01048();
    v107 = v106;

    MEMORY[0x1C6940010](v105, v107);

    v194 = *(&v202[0] + 1);
    v188 = *&v202[0];
    a1 = v195;
  }

  if (*(a1 + 80))
  {
    v108 = 0;
    v109 = 0xE000000000000000;
  }

  else
  {
    v110 = *(a1 + 72);
    *&v202[0] = 0x2054494D494CLL;
    *(&v202[0] + 1) = 0xE600000000000000;
    *&v200 = v110;
    v111 = sub_1C4F02858();
    MEMORY[0x1C6940010](v111);

    v109 = *(&v202[0] + 1);
    v108 = *&v202[0];
  }

  *&v202[0] = 0x205443454C4553;
  *(&v202[0] + 1) = 0xE700000000000000;
  *&v200 = v193;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v112 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C44176D0();
  v190 = v113;
  v191 = v112;
  sub_1C4F01048();
  sub_1C43FDD04();
  MEMORY[0x1C6940010](v112, v74);

  MEMORY[0x1C6940010](0x204D4F52460ALL, 0xE600000000000000);
  MEMORY[0x1C6940010](v187, v189);
  v114 = sub_1C4400714();
  MEMORY[0x1C6940010](v114);
  v74 = v196;
  v91 = *(v196 + 16);
  if (v91)
  {
    v179 = v108;
    v187 = v109;
    v198 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v83 = 0;
    v115 = v198;
    v116 = (v74 + 72);
    v195 = v91;
    while (v83 < *(v74 + 16))
    {
      v117 = *(v116 - 5);
      v118 = *(v116 - 4);
      v120 = *(v116 - 3);
      v119 = *(v116 - 2);
      v121 = *v116;
      v197 = *(v116 - 1);
      *&v200 = 0;
      *(&v200 + 1) = 0xE000000000000000;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F02248();

      *&v200 = 0x4F4A2052454E4E49;
      *(&v200 + 1) = 0xEB00000000204E49;
      MEMORY[0x1C6940010](v117, v118);
      MEMORY[0x1C6940010](542002976, 0xE400000000000000);
      MEMORY[0x1C6940010](v120, v119);
      MEMORY[0x1C6940010](2112800, 0xE300000000000000);
      MEMORY[0x1C6940010](v197, v121);

      v122 = v200;
      v198 = v115;
      v124 = *(v115 + 16);
      v123 = *(v115 + 24);
      if (v124 >= v123 >> 1)
      {
        sub_1C43FCFE8(v123);
        sub_1C44CD9C0();
        v115 = v198;
      }

      ++v83;
      *(v115 + 16) = v124 + 1;
      *(v115 + 16 * v124 + 32) = v122;
      v116 += 6;
      v91 = v195;
      v74 = v196;
      if (v195 == v83)
      {

        *&v200 = v115;
        sub_1C4400714();
        v125 = sub_1C4F01048();
        v127 = v126;

        v109 = v187;
        v108 = v179;
        goto LABEL_100;
      }
    }

    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v125 = 0;
  v127 = 0xE000000000000000;
LABEL_100:
  MEMORY[0x1C6940010](v125, v127);

  v128 = sub_1C4400714();
  MEMORY[0x1C6940010](v128);
  if (*(v183 + 16))
  {
    *&v200 = 0x204552454857;
    *(&v200 + 1) = 0xE600000000000000;
    v198 = v183;
    v129 = sub_1C440E6B0();
    v131 = v130;

    MEMORY[0x1C6940010](v129, v131);

    v133 = *(&v200 + 1);
    v132 = v200;
  }

  else
  {

    v132 = 0;
    v133 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v132, v133);

  v134 = sub_1C4400714();
  MEMORY[0x1C6940010](v134);
  v135 = v182;
  MEMORY[0x1C6940010](v181, v182);

  v136 = sub_1C4400714();
  MEMORY[0x1C6940010](v136);
  if (*(v180 + 16))
  {
    *&v200 = 0x20474E49564148;
    *(&v200 + 1) = 0xE700000000000000;
    v198 = v180;
    sub_1C440E6B0();
    sub_1C43FDD04();
    MEMORY[0x1C6940010](0x20444E4120, v135);

    v138 = *(&v200 + 1);
    v137 = v200;
  }

  else
  {

    v137 = 0;
    v138 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v137, v138);

  v139 = sub_1C4400714();
  MEMORY[0x1C6940010](v139);
  MEMORY[0x1C6940010](v188, v194);

  v140 = sub_1C4400714();
  MEMORY[0x1C6940010](v140);
  MEMORY[0x1C6940010](v108, v109);

  v141 = *(&v202[0] + 1);
  v142 = *&v202[0];
  sub_1C4415EA8();
  while (1)
  {
    *&v202[0] = v142;
    *(&v202[0] + 1) = v141;
    *&v200 = 2570;
    *(&v200 + 1) = 0xE200000000000000;
    if ((sub_1C4F02048() & 1) == 0)
    {
      break;
    }

    v143 = objc_autoreleasePoolPush();
    *&v202[0] = v142;
    *(&v202[0] + 1) = v141;
    *&v200 = 2570;
    *(&v200 + 1) = 0xE200000000000000;
    v198 = 10;
    v199 = 0xE100000000000000;
    sub_1C440F1BC();
    v142 = sub_1C4F02008();
    v145 = v144;

    objc_autoreleasePoolPop(v143);
    v141 = v145;
  }

  *&v202[0] = v142;
  *(&v202[0] + 1) = v141;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v146 = v184;
  sub_1C4EF9448();
  v147 = sub_1C4F01FF8();
  v149 = v148;
  (*(v185 + 8))(v146, v186);

  *&v202[0] = v147;
  *(&v202[0] + 1) = v149;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](59, 0xE100000000000000);

  v74 = *(&v202[0] + 1);
  v83 = *&v202[0];
  v91 = v206;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v150 = v192;
    goto LABEL_111;
  }

LABEL_121:
  v169 = *(v192 + 16);
  sub_1C43FCEC0();
  sub_1C458D184();
  v150 = v170;
LABEL_111:
  v152 = *(v150 + 16);
  v151 = *(v150 + 24);
  if (v152 >= v151 >> 1)
  {
    sub_1C43FFD98(v151);
    sub_1C458D184();
    v150 = v171;
  }

  *(v150 + 16) = v152 + 1;
  v153 = v150 + 32 * v152;
  *(v153 + 32) = v83;
  *(v153 + 40) = v74;
  *(v153 + 48) = v91;
  *(v153 + 56) = 0;
  if (qword_1EC0B6DE8 != -1)
  {
    swift_once();
  }

  v154 = sub_1C4F00978();
  sub_1C442B738(v154, qword_1EC152638);
  v155 = swift_allocObject();
  *(v155 + 16) = v150;
  swift_bridgeObjectRetain_n();
  v156 = sub_1C4F00968();
  v157 = sub_1C4F01CB8();
  v158 = swift_allocObject();
  *(v158 + 16) = 32;
  v159 = swift_allocObject();
  *(v159 + 16) = 8;
  v160 = swift_allocObject();
  *(v160 + 16) = sub_1C4ADC5F8;
  *(v160 + 24) = v155;
  v161 = swift_allocObject();
  *(v161 + 16) = sub_1C4AD71F0;
  *(v161 + 24) = v160;
  sub_1C456902C(&qword_1EC0BBF38, &unk_1C4F4B420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0C890;
  *(inited + 32) = sub_1C44549EC;
  *(inited + 40) = v158;
  *(inited + 48) = sub_1C44549F4;
  *(inited + 56) = v159;
  *(inited + 64) = sub_1C4454B88;
  *(inited + 72) = v161;
  swift_setDeallocating();
  sub_1C49E1614();
  if (os_log_type_enabled(v156, v157))
  {
    v163 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    *&v202[0] = v164;
    *v163 = 136315138;
    v165 = sub_1C4ADC420(v150);
    v167 = sub_1C441D828(v165, v166, v202);

    *(v163 + 4) = v167;

    _os_log_impl(&dword_1C43F8000, v156, v157, "Commands: %s", v163, 0xCu);
    sub_1C440962C(v164);
    MEMORY[0x1C6942830](v164, -1, -1);
    MEMORY[0x1C6942830](v163, -1, -1);
  }

  else
  {
  }

  return v150;
}

uint64_t sub_1C4ADC420(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v7 >= v6 >> 1)
      {
        sub_1C44CD9C0();
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  v9 = sub_1C4F01048();

  return v9;
}

uint64_t sub_1C4ADC590(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9438, &unk_1C4F203C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4ADC610()
{
  if (qword_1EC0B70D8 != -1)
  {
    swift_once();
  }

  qword_1EC152BB8 = qword_1EC0C3768;
  unk_1EC152BC0 = *&qword_1EC0C3770;
  qword_1EC152BD0 = qword_1EC0C3780;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4ADC690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  v10 = *v7;
  v11 = v7[1];
  v12 = *(v7 + 4);
  v8 = *a7;
  return sub_1C4B2A8D0(a2, a3, a4, a5);
}

uint64_t sub_1C4ADC6EC(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0C3078, &qword_1C4F4F1F0);
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4ADCE18();
  sub_1C4F02BF8();
  v14 = *v3;
  v15 = v3[1];
  v22 = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21 = 1;
    sub_1C4F02738();
    v20 = v3[4];
    v19[15] = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C46D4190(&qword_1EC0B8728, sub_1C458A984);
    sub_1C4F027E8();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1C4ADC8C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0C3068, &unk_1C4F4F1E0);
  v6 = sub_1C43FCDF8(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4ADCE18();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v10 = sub_1C4F02678();
  v12 = v11;
  v19 = v10;
  v17 = sub_1C4F02618();
  v18 = v13;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C46D4190(&qword_1EC0B8740, sub_1C458AA50);
  sub_1C4F026C8();
  v14 = sub_1C4402F74();
  v15(v14);
  result = sub_1C440962C(a1);
  *a2 = v19;
  a2[1] = v12;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v20;
  return result;
}

uint64_t sub_1C4ADCB40(uint64_t a1)
{
  v2 = sub_1C4ADCE18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4ADCB7C(uint64_t a1)
{
  v2 = sub_1C4ADCE18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4ADCBB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7098 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC152BD0;
  *a1 = qword_1EC152BB8;
  *(a1 + 8) = unk_1EC152BC0;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

double sub_1C4ADCC64@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4ADC8C8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1C4ADCCC4(uint64_t a1)
{
  result = sub_1C4ADCCEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4ADCCEC()
{
  result = qword_1EC0C3050;
  if (!qword_1EC0C3050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3050);
  }

  return result;
}

unint64_t sub_1C4ADCD40(uint64_t a1)
{
  *(a1 + 8) = sub_1C4ADCD70();
  result = sub_1C4ADCDC4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4ADCD70()
{
  result = qword_1EC0C3058;
  if (!qword_1EC0C3058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3058);
  }

  return result;
}

unint64_t sub_1C4ADCDC4()
{
  result = qword_1EC0C3060;
  if (!qword_1EC0C3060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3060);
  }

  return result;
}

unint64_t sub_1C4ADCE18()
{
  result = qword_1EC0C3070;
  if (!qword_1EC0C3070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3070);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Relationship.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4ADCF4C()
{
  result = qword_1EC0C3080;
  if (!qword_1EC0C3080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3080);
  }

  return result;
}

unint64_t sub_1C4ADCFA4()
{
  result = qword_1EC0C3088;
  if (!qword_1EC0C3088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3088);
  }

  return result;
}

unint64_t sub_1C4ADCFFC()
{
  result = qword_1EC0C3090;
  if (!qword_1EC0C3090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3090);
  }

  return result;
}

uint64_t RelationshipKeyValueStore.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RelationshipKeyValueStore.init(config:)(a1);
  return v2;
}

void *RelationshipKeyValueStore.init(config:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = type metadata accessor for Configuration();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  sub_1C44098F0(a1, v21 - v11);
  v13 = type metadata accessor for KeyValueStore();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = KeyValueStore.init(config:domain:)(v12, 0xD000000000000013, 0x80000001C4FB0CE0);
  if (v2)
  {
    sub_1C4467948(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v3[2] = v16;
    sub_1C44098F0(a1, v10);
    v17 = *(v13 + 48);
    v18 = *(v13 + 52);
    swift_allocObject();
    v19 = KeyValueStore.init(config:domain:)(v10, 0xD000000000000018, 0x80000001C4FB0D00);
    sub_1C4467948(a1);
    v3[3] = v19;
  }

  return v3;
}

uint64_t RelationshipKeyValueStore.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t RelationshipKeyValueStore.__deallocating_deinit()
{
  RelationshipKeyValueStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4ADD398()
{
  result = type metadata accessor for Source();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4ADD424()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C4496898();
}

uint64_t sub_1C4ADD4B0(uint64_t a1)
{
  result = sub_1C4497370(&qword_1EDDDEE78, type metadata accessor for RelationshipFullSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4ADD508(uint64_t a1)
{
  result = sub_1C4497370(&qword_1EDDDEE60, type metadata accessor for RelationshipFullSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4ADD560(uint64_t a1)
{
  result = sub_1C4497370(&qword_1EDDDEE68, type metadata accessor for RelationshipFullSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

id sub_1C4ADD5B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v10 - v7;
  sub_1C4A480D4(a1, &v10 - v7);
  result = sub_1C4ADDC70(v8, 0);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C4ADD65C(unsigned __int8 a1)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001C4F9AE80;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C4ADD71C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6765746143707061 && a2 == 0xEF6570795479726FLL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
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

uint64_t sub_1C4ADD7EC(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 0x6765746143707061;
  }
}

uint64_t sub_1C4ADD830(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v7 = sub_1C456902C(&qword_1EC0C30C8, &unk_1C4F4F620);
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v14 = v17 - v13;
  v15 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4ADE5D8();
  sub_1C4F02BF8();
  v20 = a2;
  v19 = 0;
  sub_1C4593C64();
  sub_1C4F027E8();
  if (!v4)
  {
    v18 = 1;
    sub_1C4F02798();
  }

  return (*(v10 + 8))(v14, v7);
}

uint64_t sub_1C4ADD9B0(uint64_t *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C30B8, &qword_1C4F4F618);
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v13[-v9];
  v11 = a1[3];
  sub_1C4409678(a1, v11);
  sub_1C4ADE5D8();
  sub_1C4F02BC8();
  if (!v1)
  {
    v13[14] = 0;
    sub_1C4593C10();
    sub_1C4F026C8();
    v11 = v13[15];
    v13[13] = 1;
    sub_1C4F02678();
    (*(v6 + 8))(v10, v3);
  }

  sub_1C440962C(a1);
  return v11;
}

uint64_t sub_1C4ADDB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4ADD71C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4ADDB98(uint64_t a1)
{
  v2 = sub_1C4ADE5D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4ADDBD4(uint64_t a1)
{
  v2 = sub_1C4ADE5D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4ADDC10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4ADD9B0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

id sub_1C4ADDC70(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E698F250]) init];
    v5 = [v4 remoteDevices];
    if (!v5)
    {
      sub_1C4F01678();
      v5 = sub_1C4F01658();
    }

    sub_1C4EF9AD8();
    v6 = sub_1C4F019C8();
    v7 = a1 + *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
    sub_1C4EF9AD8();
    v8 = sub_1C4F019C8();
    aBlock[4] = j__swift_unknownObjectRetain;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C4ADDE9C;
    aBlock[3] = &unk_1F43F9FA0;
    v9 = _Block_copy(aBlock);
    LOBYTE(v12) = 0;
    v10 = [v4 publishersForRemoteDevices:v5 startTime:v6 endTime:v8 maxEvents:0 lastN:0 reversed:0 includeLocal:v12 pipeline:v9];
    _Block_release(v9);

    v3 = [v10 merge];
  }

  sub_1C49C3CB4(a1);
  return v3;
}

id sub_1C4ADDE9C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_1C4ADDF04(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4ADDF24, 0, 0);
}

uint64_t sub_1C4ADDF24()
{
  v29 = v0;
  if (![**(v0 + 96) nextEvent])
  {
LABEL_14:
    v25 = *(v0 + 88);
    v12 = sub_1C456902C(&qword_1EC0C0008, &qword_1C4F3E0E0);
    v14 = v25;
    v15 = 1;
    goto LABEL_15;
  }

  sub_1C4F02078();
  swift_unknownObjectRelease();
  sub_1C442B870(v0 + 16, v0 + 48);
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDDFECB8);
    sub_1C442B870(v0 + 16, v0 + 48);
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      sub_1C4409678((v0 + 48), *(v0 + 72));
      swift_getDynamicType();
      v21 = sub_1C4F02C58();
      v23 = v22;
      sub_1C440962C((v0 + 48));
      v24 = sub_1C441D828(v21, v23, &v28);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1C43F8000, v17, v18, "Unable to convert the nextEvent to BMStoreEvent - %s", v19, 0xCu);
      sub_1C440962C(v20);
      MEMORY[0x1C6942830](v20, -1, -1);
      MEMORY[0x1C6942830](v19, -1, -1);
    }

    else
    {

      sub_1C440962C((v0 + 48));
    }

    sub_1C440962C((v0 + 16));
    goto LABEL_14;
  }

  v1 = *(v0 + 80);
  v2 = [v1 eventBody];
  if (!v2)
  {

    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v2 bundleID];
  if (!v4)
  {
    sub_1C4F01138();
    v4 = sub_1C4F01108();
  }

  v5 = *(v0 + 88);
  v6 = [objc_opt_self() categoryForBundleId_];

  v7 = sub_1C4592C7C(v6);
  v8 = [v3 bundleID];
  v9 = sub_1C4F01138();
  v11 = v10;

  [v1 timestamp];
  sub_1C4EF9AC8();
  LOBYTE(v8) = [v3 isStarting];

  sub_1C440962C((v0 + 16));
  v12 = sub_1C456902C(&qword_1EC0C0008, &qword_1C4F3E0E0);
  v13 = v5 + *(v12 + 32);
  *v13 = v7;
  *(v13 + 8) = v9;
  *(v13 + 16) = v11;
  *(v5 + *(v12 + 28)) = v8;
  v14 = v5;
  v15 = 0;
LABEL_15:
  sub_1C440BAA8(v14, v15, 1, v12);
  v26 = *(v0 + 8);

  return v26();
}

void sub_1C4ADE2D4(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v3;

  *a1 = v3;
}

uint64_t sub_1C4ADE308(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4AA8100;

  return sub_1C4ADDF04(a1);
}

uint64_t sub_1C4ADE3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4ADE46C;

  return (sub_1C4981FA4)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4ADE46C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1C4ADE584()
{
  result = qword_1EC0C30B0;
  if (!qword_1EC0C30B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C30B0);
  }

  return result;
}

unint64_t sub_1C4ADE5D8()
{
  result = qword_1EC0C30C0;
  if (!qword_1EC0C30C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C30C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteAppCategoryContent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4ADE734()
{
  result = qword_1EC0C30D0;
  if (!qword_1EC0C30D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C30D0);
  }

  return result;
}

unint64_t sub_1C4ADE78C()
{
  result = qword_1EC0C30D8;
  if (!qword_1EC0C30D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C30D8);
  }

  return result;
}

unint64_t sub_1C4ADE7E4()
{
  result = qword_1EC0C30E0;
  if (!qword_1EC0C30E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C30E0);
  }

  return result;
}

uint64_t AsyncSequence.removeDuplicates(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_1C4ADE948();
}

uint64_t sub_1C4ADE948()
{
  sub_1C43FDD20();
  v3 = v2;
  (*(*(v4 - 8) + 32))(v2, v5, v4);
  result = type metadata accessor for RemoveDuplicatesAsyncSequence();
  v7 = (v3 + *(result + 36));
  *v7 = v1;
  v7[1] = v0;
  return result;
}

uint64_t RemoveDuplicatesAsyncSequence.makeAsyncIterator()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  (*(v5 + 16))(v9, v2, v4);
  sub_1C4F019A8();
  v13 = (v2 + *(a1 + 36));
  v14 = *v13;
  v15 = v13[1];
  sub_1C4ADEB34();
}

uint64_t sub_1C4ADEB34()
{
  sub_1C43FDD20();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for RemoveDuplicatesAsyncSequence.Iterator();
  v7 = *(v6 + 40);
  sub_1C43FD064();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C440BAA8(v5 + v7, 1, 1, AssociatedTypeWitness);
  sub_1C43FD064();
  v9 = swift_getAssociatedTypeWitness();
  result = (*(*(v9 - 8) + 32))(v5, v3, v9);
  v11 = (v5 + *(v6 + 36));
  *v11 = v1;
  v11[1] = v0;
  return result;
}

uint64_t RemoveDuplicatesAsyncSequence.Iterator.next()()
{
  sub_1C43FBCD4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *(v2 + 24);
  v1[6] = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[7] = AssociatedTypeWitness;
  v5 = sub_1C4F01F48();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = *(AssociatedTypeWitness - 8);
  v1[13] = v8;
  v9 = *(v8 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C4ADED80()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(*(v0 + 24) + 40);
  *(v0 + 200) = v6;
  v7 = *(v3 + 16);
  *(v0 + 128) = v7;
  *(v0 + 136) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5 + v6, v2);
  if (sub_1C44157D4(v1, 1, v4) == 1)
  {
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    (*(*(v0 + 72) + 8))(*(v0 + 96), *(v0 + 64));
    sub_1C43FD064();
    swift_getAssociatedTypeWitness();
    sub_1C440A544();
    v10 = *(MEMORY[0x1E69E85A8] + 4);
    v11 = swift_task_alloc();
    *(v0 + 184) = v11;
    *v11 = v0;
    v11[1] = sub_1C4ADF52C;
    v12 = *(v0 + 80);
  }

  else
  {
    v13 = *(v0 + 120);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = *(v0 + 56);
    v17 = *(v15 + 32);
    *(v0 + 144) = v17;
    *(v0 + 152) = (v15 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v17(v13, v14, v16);
    v18 = *(v0 + 40);
    v19 = *(v0 + 48);
    sub_1C43FD064();
    swift_getAssociatedTypeWitness();
    sub_1C440A544();
    v20 = *(MEMORY[0x1E69E85A8] + 4);
    v21 = swift_task_alloc();
    *(v0 + 160) = v21;
    *v21 = v0;
    sub_1C4407950(v21);
    v22 = *(v0 + 88);
  }

  sub_1C440E6D0();

  return MEMORY[0x1EEE6D8C8](v23);
}

uint64_t sub_1C4ADEF54()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 168) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4ADF050()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 64);
    v4 = *(v0 + 72);
    v5 = *(v0 + 16);
    (*(*(v0 + 104) + 8))(*(v0 + 120), v2);
    (*(v4 + 8))(v1, v3);
    sub_1C440BAA8(v5, 1, 1, v2);
    sub_1C44328E0();

    sub_1C43FBDA0();

    return v6();
  }

  else
  {
    v8 = *(v0 + 152);
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    (*(v0 + 144))(*(v0 + 112), v1, v2);
    v11 = (v9 + *(v10 + 36));
    v12 = v11[1];
    v17 = (*v11 + **v11);
    v13 = (*v11)[1];
    v14 = swift_task_alloc();
    *(v0 + 176) = v14;
    *v14 = v0;
    v14[1] = sub_1C4ADF238;
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);

    return v17(v16, v15);
  }
}

uint64_t sub_1C4ADF238()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v2 = v1;
  v4 = *(v3 + 176);
  *v2 = *v0;
  *(v1 + 204) = v5;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4ADF328()
{
  if (*(v0 + 204))
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 56));
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_1C43FD064();
    swift_getAssociatedTypeWitness();
    sub_1C440A544();
    v3 = *(MEMORY[0x1E69E85A8] + 4);
    v4 = swift_task_alloc();
    *(v0 + 160) = v4;
    *v4 = v0;
    sub_1C4407950();
    v5 = *(v0 + 88);
    sub_1C440E6D0();

    return MEMORY[0x1EEE6D8C8](v6);
  }

  else
  {
    v7 = *(v0 + 144);
    v18 = *(v0 + 152);
    v8 = *(v0 + 200);
    v9 = *(v0 + 112);
    v10 = *(v0 + 104);
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);
    v14 = *(v0 + 32);
    v15 = *(v0 + 16);
    (*(v10 + 8))(*(v0 + 120), v13);
    (*(v12 + 8))(v14 + v8, v11);
    (*(v10 + 16))(v14 + v8, v9, v13);
    sub_1C440BAA8(v14 + v8, 0, 1, v13);
    v7(v15, v9, v13);
    sub_1C440BAA8(v15, 0, 1, v13);
    sub_1C44328E0();

    sub_1C43FBDA0();

    return v16();
  }
}

uint64_t sub_1C4ADF52C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 192) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4ADF628()
{
  sub_1C43FEAEC();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 200);
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);
  (*(*(v0 + 72) + 40))(v5 + v3, *(v0 + 80), v4);
  v2(v6, v5 + v3, v4);
  sub_1C44328E0();

  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C4ADF6F0()
{
  sub_1C43FEAEC();
  v1 = v0[24];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C4ADF784()
{
  sub_1C43FEAEC();
  (*(v0[13] + 8))(v0[15], v0[7]);
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];

  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C4ADF834(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1C4ADF8D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return RemoveDuplicatesAsyncSequence.Iterator.next()();
}

uint64_t sub_1C4ADF97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v13 = *(a5 + 16);
  v12 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v6[4] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v6[5] = v17;
  v18 = *(MEMORY[0x1E69E85D8] + 4);
  v19 = swift_task_alloc();
  v6[6] = v19;
  *v19 = v6;
  v19[1] = sub_1C4ADFACC;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v17);
}

uint64_t sub_1C4ADFACC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;

  if (v0)
  {
    (*(v3[4] + 32))(v3[2], v3[5], v3[3]);
  }

  else
  {
    v10 = v3[5];
  }

  sub_1C43FBDA0();

  return v9();
}

uint64_t sub_1C4ADFC00(uint64_t a1)
{
  RemoveDuplicatesAsyncSequence.makeAsyncIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

unint64_t sub_1C4ADFC60(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1C4A723C8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4ADFCE8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C44157D4(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C4ADFE24(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C440BAA8(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C4AE000C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = sub_1C4A723C8();
    if (v5 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_1C4F01F48();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C4AE00F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v9 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v8 + 64);
  v17 = *(v11 + 80);
  v18 = *(*(v10 - 8) + 64);
  if (!v12)
  {
    ++v18;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v15)
  {
    goto LABEL_30;
  }

  v19 = v18 + ((v17 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v15 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_30;
      }

      goto LABEL_22;
    }

    if (v23 < 2)
    {
LABEL_30:
      if (v9 == v15)
      {

        return sub_1C44157D4(a1, v9, AssociatedTypeWitness);
      }

      else
      {
        v25 = ((a1 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v14 & 0x80000000) != 0)
        {
          v27 = sub_1C44157D4((v25 + v17 + 16) & ~v17, v12, v10);
          if (v27 >= 2)
          {
            return v27 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v26 = *v25;
          if (v26 >= 0xFFFFFFFF)
          {
            LODWORD(v26) = -1;
          }

          return (v26 + 1);
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_30;
  }

LABEL_22:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 > 3)
    {
      LODWORD(v19) = 4;
    }

    switch(v19)
    {
      case 2:
        LODWORD(v19) = *a1;
        break;
      case 3:
        LODWORD(v19) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v19) = *a1;
        break;
      default:
        LODWORD(v19) = *a1;
        break;
    }
  }

  return v15 + (v19 | v24) + 1;
}

void sub_1C4AE03BC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = swift_getAssociatedTypeWitness();
  v13 = 0;
  v14 = *(v12 - 8);
  v15 = *(v14 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v11 > v16)
  {
    v16 = v11;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v10 + 64);
  v19 = *(v14 + 80);
  v20 = (v19 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v19;
  v21 = *(*(v12 - 8) + 64);
  if (!v15)
  {
    ++v21;
  }

  v22 = v20 + v21;
  v23 = 8 * (v20 + v21);
  if (a3 > v17)
  {
    if (v22 <= 3)
    {
      v24 = ((a3 - v17 + ~(-1 << v23)) >> v23) + 1;
      if (HIWORD(v24))
      {
        v13 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v13 = v25;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v17 >= a2)
  {
    switch(v13)
    {
      case 1:
        a1[v22] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *&a1[v22] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_53:
        __break(1u);
        return;
      case 4:
        *&a1[v22] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v11 == v17)
        {
          v29 = a1;
          v30 = a2;
          v15 = v11;
          v12 = AssociatedTypeWitness;
        }

        else
        {
          v31 = (&a1[v18 + 7] & 0xFFFFFFFFFFFFFFF8);
          if ((v16 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              v32 = a2 & 0x7FFFFFFF;
              v31[1] = 0;
            }

            else
            {
              v32 = (a2 - 1);
            }

            *v31 = v32;
            return;
          }

          v29 = (v31 + v19 + 16) & ~v19;
          v30 = (a2 + 1);
        }

        sub_1C440BAA8(v29, v30, v15, v12);
        break;
    }
  }

  else
  {
    v26 = ~v17 + a2;
    if (v22 < 4)
    {
      v27 = (v26 >> v23) + 1;
      if (v22)
      {
        v28 = v26 & ~(-1 << v23);
        bzero(a1, v22);
        if (v22 == 3)
        {
          *a1 = v28;
          a1[2] = BYTE2(v28);
        }

        else if (v22 == 2)
        {
          *a1 = v28;
        }

        else
        {
          *a1 = v26;
        }
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v26;
      v27 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v22] = v27;
        break;
      case 2:
        *&a1[v22] = v27;
        break;
      case 3:
        goto LABEL_53;
      case 4:
        *&a1[v22] = v27;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C4AE0718(uint64_t a1, uint64_t *a2)
{
  v30 = a2;
  v3 = type metadata accessor for EntityMatch(0);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = 0;
  v31 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v27 = a1;
  while (1)
  {
    v12 = v10;
LABEL_3:
    if (v12 == v31)
    {

      return v11;
    }

    if (v12 >= *(a1 + 16))
    {
      break;
    }

    v13 = *(v28 + 72);
    v33 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v34 = v12 + 1;
    v32 = v13;
    sub_1C4471AF0(a1 + v33 + v13 * v12, v9);
    v14 = *v30;
    v15 = *(v29 + 24);
    v16 = *(*v30 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = 0;
    do
    {
      if (v16 == v17)
      {

        result = sub_1C447EB38(v9, type metadata accessor for EntityMatch);
        v12 = v34;
        a1 = v27;
        goto LABEL_3;
      }

      v18 = *(sub_1C4EFF0C8() - 8);
      v19 = v17 + 1;
      v20 = v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v17;
      sub_1C4AE2EAC(&qword_1EDDFCC98, MEMORY[0x1E69A9810]);
      v17 = v19;
    }

    while ((sub_1C4F010B8() & 1) == 0);

    sub_1C44E3714(v9, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = *(v11 + 16);
      sub_1C459DDD8();
      v11 = v35;
    }

    a1 = v27;
    v23 = v33;
    v10 = v34;
    v24 = *(v11 + 16);
    if (v24 >= *(v11 + 24) >> 1)
    {
      sub_1C459DDD8();
      v11 = v35;
    }

    *(v11 + 16) = v24 + 1;
    result = sub_1C44E3714(v26, v11 + v23 + v24 * v32);
  }

  __break(1u);
  return result;
}

void sub_1C4AE0A58(uint64_t a1, uint64_t *a2, uint64_t a3, float *a4)
{
  v9 = 0;
  v10 = *(a1 + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    v11 = *(sub_1C4EFF0C8() - 8);
    sub_1C4AE1388(a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++, a2, a3, a4);
  }

  while (!v4);
}

uint64_t sub_1C4AE0B30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v35 = a2;
  v36 = a3;
  v4 = sub_1C4EFF0C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + 56;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 56);
  v13 = (v10 + 63) >> 6;
  v37 = v5 + 8;
  v40 = a1;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  v38 = v5 + 16;
  for (i = v4; v12; result = (*(v5 + 8))(v8, v4))
  {
LABEL_8:
    v17 = *(v40 + 48);
    v41 = *(v5 + 72);
    v18 = *(v5 + 16);
    v18(v8, v17 + v41 * (__clz(__rbit64(v12)) | (v15 << 6)), v4);
    v19 = sub_1C4EFEFF8();
    v42 = v18;
    if (v19)
    {
      v20 = v35;
      v21 = *v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v20 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C44D45E4(0, *(v21 + 16) + 1, 1, v21);
        v21 = v32;
        *v35 = v32;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 < v23 >> 1)
      {
        goto LABEL_16;
      }

      sub_1C44D45E4(v23 > 1, v24 + 1, 1, v21);
      v21 = v26;
      v27 = v35;
    }

    else
    {
      v28 = v36;
      v21 = *v36;
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *v28 = v21;
      if ((v29 & 1) == 0)
      {
        sub_1C44D45E4(0, *(v21 + 16) + 1, 1, v21);
        v21 = v33;
        *v36 = v33;
      }

      v24 = *(v21 + 16);
      v30 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 < v30 >> 1)
      {
        goto LABEL_16;
      }

      sub_1C44D45E4(v30 > 1, v24 + 1, 1, v21);
      v21 = v26;
      v27 = v36;
    }

    *v27 = v26;
LABEL_16:
    v12 &= v12 - 1;
    *(v21 + 16) = v25;
    v31 = v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + v24 * v41;
    v4 = i;
    v42(v31, v8, i);
  }

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

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t Resolver.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28[-v12];
  v14 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  v15 = sub_1C43FBD18(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v28[-v18];
  v20 = *a3;
  v21 = type metadata accessor for Resolver();
  *(a4 + v21[6]) = 4;
  sub_1C4425F30();
  sub_1C4471AF0(a1, a4);
  v22 = v21[5];
  sub_1C44201A8();
  sub_1C4471AF0(a2, a4 + v23);
  *(a4 + v21[7]) = v20;
  v24 = sub_1C4EF9E48();
  sub_1C440BAA8(v13, 1, 1, v24);
  sub_1C4EFF1A8();
  sub_1C441A3AC();
  sub_1C447EB38(a2, v25);
  sub_1C447EB38(a1, type metadata accessor for PhaseStores);
  v26 = sub_1C4EFF1C8();
  sub_1C440BAA8(v19, 0, 1, v26);
  return sub_1C4482F3C(v19, a4 + v21[8]);
}

uint64_t sub_1C4AE0FC8(uint64_t a1)
{
  v2 = type metadata accessor for Source();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  if (qword_1EDDFDCF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8 && (v9 = (*(off_1EDDFF3D0 + 1))(), (v11 = (*(v10 + 40))(a1, v9, v10)) != 0))
  {
    v12 = v11;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDDFECB8);
    sub_1C4471AF0(a1, v8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CF8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315394;
      sub_1C44E3714(v8, v6);
      v18 = *v6;
      v19 = v6[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C447EB38(v6, type metadata accessor for Source);
      v20 = sub_1C441D828(v18, v19, &v26);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2048;
      *(v16 + 14) = *(v12 + 16);

      _os_log_impl(&dword_1C43F8000, v14, v15, "InternalPlugin: Resolver: loadEntityClasses: %s has %ld classes", v16, 0x16u);
      sub_1C440962C(v17);
      MEMORY[0x1C6942830](v17, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    else
    {

      sub_1C447EB38(v8, type metadata accessor for Source);
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v21 = sub_1C4F00978();
    sub_1C442B738(v21, qword_1EDDFECB8);
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CF8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C43F8000, v22, v23, "InternalPlugin: Resolver: loadEntityClasses: failed to load plugin", v24, 2u);
      MEMORY[0x1C6942830](v24, -1, -1);
    }

    return 0;
  }

  return v12;
}

void sub_1C4AE1388(uint64_t a1, uint64_t *a2, uint64_t a3, float *a4)
{
  v31 = a3;
  v7 = type metadata accessor for EntityMatch(0);
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  if (!*(v12 + 16) || (sub_1C44E3664(), (v14 & 1) == 0))
  {
LABEL_32:
    sub_1C4F024A8();
    __break(1u);
    return;
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  v16 = *(v15 + 16);
  if (v16)
  {
    v30 = v4;
    v17 = v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v18 = 0;
    v41 = a4;
    v32 = v17;
    v33 = v8;
    while (v18 < *(v15 + 16))
    {
      sub_1C4471AF0(v17 + *(v8 + 72) * v18, v11);
      v19 = &v11[v7[6]];
      if (sub_1C4EFEFF8())
      {
        v20 = *&v11[v7[10]];
        if (v20)
        {
          if (*(v20 + 16) && (v21 = sub_1C445FAA8(0x6E65727275437369, 0xED00007265735574), (v22 & 1) != 0))
          {
            v23 = (*(v20 + 56) + 16 * v21);
            v24 = *v23;
            v20 = v23[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          else
          {
            v24 = 0;
            v20 = 0;
          }
        }

        else
        {
          v24 = 0;
        }

        strcpy(v34, "isCurrentUser");
        v34[7] = -4864;
        v35 = 1702195828;
        v36 = 0xE400000000000000;
        v38 = 0;
        v39 = 0;
        v37 = 0;
        v40 = 1;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44E3634(v34);
        if (v20)
        {
          if (v24 == 1702195828 && v20 == 0xE400000000000000)
          {

LABEL_29:

            v29 = v31;
            sub_1C4420C3C(v31, &qword_1EC0BB248, &qword_1C4F1E7C8);
            sub_1C44E3714(v11, v29);
            sub_1C440BAA8(v29, 0, 1, v7);
            return;
          }

          v26 = sub_1C4F02938();

          if (v26)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }

        v27 = *&v11[v7[7]];
        if (*v41 >= v27)
        {
          sub_1C447EB38(v11, type metadata accessor for EntityMatch);
        }

        else
        {
          *v41 = v27;
          v28 = v31;
          sub_1C4420C3C(v31, &qword_1EC0BB248, &qword_1C4F1E7C8);
          sub_1C44E3714(v11, v28);
          sub_1C440BAA8(v28, 0, 1, v7);
        }

        v17 = v32;
        v8 = v33;
      }

      else
      {
        sub_1C447EB38(v11, type metadata accessor for EntityMatch);
      }

      if (v16 == ++v18)
      {

        return;
      }
    }

    __break(1u);
    goto LABEL_32;
  }
}

void sub_1C4AE178C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1C456902C(&qword_1EC0B91E8, &qword_1C4F0ECF0);
  v5 = (type metadata accessor for EntityMatch(0) - 8);
  v6 = *(*v5 + 72);
  v7 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F0D130;
  v9 = v8 + v7;
  v10 = sub_1C4EFD548();
  (*(*(v10 - 8) + 16))(v9, a3, v10);
  v11 = v5[7];
  v12 = sub_1C4EFF0C8();
  v13 = *(*(v12 - 8) + 16);
  v13(v9 + v11, a1, v12);
  v13(v9 + v5[8], a3 + v5[8], v12);
  v14 = *(a3 + v5[10]);
  v15 = *(a3 + v5[11]);
  v16 = *(a3 + v5[12]);
  *(v9 + v5[9]) = *(a3 + v5[9]);
  *(v9 + v5[10]) = v14;
  *(v9 + v5[11]) = v15;
  *(v9 + v5[12]) = v16;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = *a2;
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *a2;
  sub_1C4661954();
  *a2 = v19;
}

uint64_t sub_1C4AE1974(uint64_t a1)
{
  result = sub_1C4AE2EAC(&qword_1EDDF0A58, type metadata accessor for Resolver);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AE19CC(uint64_t a1)
{
  result = sub_1C4AE2EAC(&qword_1EDDF0A68, type metadata accessor for Resolver);
  *(a1 + 8) = result;
  return result;
}

void sub_1C4AE1A4C()
{
  type metadata accessor for PhaseStores();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Source();
    if (v1 <= 0x3F)
    {
      sub_1C4682388();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C4AE1B00(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        sub_1C4EFF0C8();
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C4EFF0C8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C4AE1EEC(v8, v9, a1, v4);
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
    return sub_1C4AE1C30(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C4AE1C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C4EFF0C8();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v46 = &v32 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v45 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v43 = *(v15 + 16);
    v44 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v40 = (v15 + 32);
    v41 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v39 = -v18;
    v21 = a1 - a3;
    v33 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v37 = v20;
      v38 = a3;
      v35 = v22;
      v36 = v21;
      v23 = v20;
      do
      {
        v24 = v45;
        v25 = v43;
        v43(v45, v22, v8);
        v26 = v46;
        v25(v46, v23, v8);
        sub_1C4AE2EAC(&unk_1EDDFA1B0, MEMORY[0x1E69A9810]);
        v27 = sub_1C4F01068();
        v28 = *v19;
        (*v19)(v26, v8);
        result = v28(v24, v8);
        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!v41)
        {
          __break(1u);
          return result;
        }

        v29 = *v40;
        v30 = v42;
        (*v40)(v42, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v29)(v23, v30, v8);
        v23 += v39;
        v22 += v39;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v38 + 1;
      v20 = v37 + v33;
      v21 = v36 - 1;
      v22 = v35 + v33;
      if (v38 + 1 != v34)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C4AE1EEC(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v120 = a1;
  v8 = sub_1C4EFF0C8();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v133 = &v117 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v139 = &v117 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v138 = &v117 - v17;
  v130 = v9;
  v131 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v140 = *v120;
    if (!v140)
    {
      goto LABEL_141;
    }

    a4 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v110 = (v20 + 16);
      v111 = *(v20 + 16);
      while (v111 >= 2)
      {
        if (!*v131)
        {
          goto LABEL_138;
        }

        v112 = a4;
        v113 = v20;
        v114 = (v20 + 16 * v111);
        v20 = *v114;
        a4 = &v110[2 * v111];
        v115 = *(a4 + 8);
        sub_1C4AE2920(&(*v131)[v9[9] * *v114], &(*v131)[v9[9] * *a4], &(*v131)[v9[9] * v115], v140);
        v9 = v112;
        if (v112)
        {
          break;
        }

        if (v115 < v20)
        {
          goto LABEL_126;
        }

        if (v111 - 2 >= *v110)
        {
          goto LABEL_127;
        }

        *v114 = v20;
        v114[1] = v115;
        v116 = *v110 - v111;
        if (*v110 < v111)
        {
          goto LABEL_128;
        }

        v111 = *v110 - 1;
        sub_1C461950C((a4 + 16), v116, a4);
        *v110 = v111;
        a4 = 0;
        v9 = v130;
        v20 = v113;
      }

LABEL_109:

      return;
    }

LABEL_135:
    v20 = sub_1C46194F4(v20);
    goto LABEL_101;
  }

  v118 = a4;
  v19 = 0;
  v136 = (v9 + 1);
  v137 = v9 + 2;
  v135 = (v9 + 4);
  v20 = MEMORY[0x1E69E7CC0];
  v123 = v16;
  v140 = v8;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v122 = v19;
    if (v19 + 1 < v18)
    {
      v124 = v5;
      v119 = v20;
      v23 = v19;
      v24 = *v131;
      v25 = v9[9];
      a4 = &(*v131)[v25 * v22];
      v26 = v9[2];
      v129 = v19 + 1;
      v27 = v138;
      v132 = v18;
      v26(v138, a4, v8);
      v28 = &v24[v25 * v23];
      v29 = v8;
      v30 = v139;
      v127 = v26;
      v26(v139, v28, v29);
      v126 = sub_1C4AE2EAC(&unk_1EDDFA1B0, MEMORY[0x1E69A9810]);
      LODWORD(v128) = sub_1C4F01068();
      v20 = v9[1];
      (v20)(v30, v29);
      v31 = v27;
      v22 = v129;
      v125 = v20;
      (v20)(v31, v29);
      v32 = v132;
      v33 = (v122 + 2);
      v134 = v25;
      v34 = &v24[v25 * (v122 + 2)];
      while (1)
      {
        v9 = v33;
        v35 = v22 + 1;
        if (v35 >= v32)
        {
          break;
        }

        v36 = v138;
        v37 = v140;
        v38 = v127;
        (v127)(v138, v34, v140);
        v39 = v35;
        v40 = v139;
        v38(v139, a4, v37);
        v41 = sub_1C4F01068() & 1;
        v42 = v40;
        v22 = v39;
        v20 = v125;
        v125(v42, v37);
        (v20)(v36, v37);
        v32 = v132;
        v34 += v134;
        a4 += v134;
        v33 = (v9 + 1);
        if ((v128 & 1) != v41)
        {
          goto LABEL_9;
        }
      }

      v22 = v32;
LABEL_9:
      if (v128)
      {
        v21 = v122;
        if (v22 < v122)
        {
          goto LABEL_132;
        }

        if (v122 >= v22)
        {
          v9 = v130;
          v20 = v119;
          v8 = v140;
          v5 = v124;
        }

        else
        {
          if (v32 >= v9)
          {
            v43 = v9;
          }

          else
          {
            v43 = v32;
          }

          v44 = v134 * (v43 - 1);
          v45 = v134 * v43;
          v46 = v122 * v134;
          v47 = v22;
          v48 = v122;
          v5 = v124;
          do
          {
            if (v48 != --v47)
            {
              v124 = v5;
              v49 = *v131;
              if (!*v131)
              {
                goto LABEL_139;
              }

              a4 = &v49[v46];
              v50 = v140;
              v132 = *v135;
              (v132)(v123, &v49[v46], v140);
              v51 = v46 < v44 || a4 >= &v49[v45];
              if (v51)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v46 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v132)(&v49[v44], v123, v50);
              v5 = v124;
              v21 = v122;
            }

            ++v48;
            v44 -= v134;
            v45 -= v134;
            v46 += v134;
          }

          while (v48 < v47);
          v9 = v130;
          v20 = v119;
          v8 = v140;
        }
      }

      else
      {
        v9 = v130;
        v20 = v119;
        v8 = v140;
        v5 = v124;
        v21 = v122;
      }
    }

    v52 = v131[1];
    if (v22 < v52)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_131;
      }

      if (v22 - v21 < v118)
      {
        break;
      }
    }

LABEL_47:
    if (v22 < v21)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = *(v20 + 16);
      sub_1C458A358();
      v20 = v108;
    }

    v68 = *(v20 + 16);
    a4 = v68 + 1;
    if (v68 >= *(v20 + 24) >> 1)
    {
      sub_1C458A358();
      v20 = v109;
    }

    *(v20 + 16) = a4;
    v69 = v20 + 32;
    v70 = (v20 + 32 + 16 * v68);
    *v70 = v21;
    v70[1] = v22;
    v134 = *v120;
    if (!v134)
    {
      goto LABEL_140;
    }

    v129 = v22;
    if (v68)
    {
      while (1)
      {
        v71 = a4 - 1;
        v72 = (v69 + 16 * (a4 - 1));
        v73 = (v20 + 16 * a4);
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v74 = *(v20 + 32);
          v75 = *(v20 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_67:
          if (v77)
          {
            goto LABEL_117;
          }

          v89 = *v73;
          v88 = v73[1];
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_120;
          }

          v93 = v72[1];
          v94 = v93 - *v72;
          if (__OFSUB__(v93, *v72))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v91, v94))
          {
            goto LABEL_125;
          }

          if (v91 + v94 >= v76)
          {
            if (v76 < v94)
            {
              v71 = a4 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (a4 < 2)
        {
          goto LABEL_119;
        }

        v96 = *v73;
        v95 = v73[1];
        v84 = __OFSUB__(v95, v96);
        v91 = v95 - v96;
        v92 = v84;
LABEL_82:
        if (v92)
        {
          goto LABEL_122;
        }

        v98 = *v72;
        v97 = v72[1];
        v84 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v84)
        {
          goto LABEL_124;
        }

        if (v99 < v91)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v71 - 1 >= a4)
        {
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
          goto LABEL_134;
        }

        if (!*v131)
        {
          goto LABEL_137;
        }

        v103 = v20;
        v104 = (v69 + 16 * (v71 - 1));
        a4 = *v104;
        v105 = v69 + 16 * v71;
        v20 = *(v105 + 8);
        sub_1C4AE2920(&(*v131)[v9[9] * *v104], &(*v131)[v9[9] * *v105], &(*v131)[v9[9] * v20], v134);
        if (v5)
        {
          goto LABEL_109;
        }

        if (v20 < a4)
        {
          goto LABEL_112;
        }

        v9 = *(v103 + 16);
        if (v71 > v9)
        {
          goto LABEL_113;
        }

        *v104 = a4;
        v104[1] = v20;
        if (v71 >= v9)
        {
          goto LABEL_114;
        }

        a4 = v9 - 1;
        sub_1C461950C((v105 + 16), v9 - v71 - 1, (v69 + 16 * v71));
        v20 = v103;
        *(v103 + 16) = v9 - 1;
        v106 = v9 > 2;
        v9 = v130;
        if (!v106)
        {
          goto LABEL_96;
        }
      }

      v78 = v69 + 16 * a4;
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_115;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_116;
      }

      v85 = v73[1];
      v86 = v85 - *v73;
      if (__OFSUB__(v85, *v73))
      {
        goto LABEL_118;
      }

      v84 = __OFADD__(v76, v86);
      v87 = v76 + v86;
      if (v84)
      {
        goto LABEL_121;
      }

      if (v87 >= v81)
      {
        v101 = *v72;
        v100 = v72[1];
        v84 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v84)
        {
          goto LABEL_129;
        }

        if (v76 < v102)
        {
          v71 = a4 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v18 = v131[1];
    v19 = v129;
    v8 = v140;
    if (v129 >= v18)
    {
      goto LABEL_99;
    }
  }

  v53 = (v21 + v118);
  if (__OFADD__(v21, v118))
  {
    goto LABEL_133;
  }

  if (v53 >= v52)
  {
    v53 = v131[1];
  }

  if (v53 < v21)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v22 == v53)
  {
    goto LABEL_47;
  }

  v119 = v20;
  v124 = v5;
  v125 = v53;
  v54 = *v131;
  v55 = v9[9];
  v134 = v9[2];
  v56 = &v54[v55 * (v22 - 1)];
  v57 = -v55;
  v58 = (v21 - v22);
  v132 = v54;
  v121 = v55;
  a4 = &v54[v22 * v55];
LABEL_40:
  v128 = v56;
  v129 = v22;
  v126 = a4;
  v127 = v58;
  v59 = v56;
  while (1)
  {
    v60 = v138;
    v61 = v134;
    (v134)(v138, a4, v8);
    v62 = v139;
    v61(v139, v59, v140);
    sub_1C4AE2EAC(&unk_1EDDFA1B0, MEMORY[0x1E69A9810]);
    v63 = sub_1C4F01068();
    v64 = *v136;
    v65 = v62;
    v8 = v140;
    (*v136)(v65, v140);
    v64(v60, v8);
    if ((v63 & 1) == 0)
    {
LABEL_45:
      v22 = v129 + 1;
      v56 = &v128[v121];
      v58 = v127 - 1;
      a4 = v126 + v121;
      if ((v129 + 1) == v125)
      {
        v22 = v125;
        v5 = v124;
        v9 = v130;
        v20 = v119;
        v21 = v122;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v132)
    {
      break;
    }

    v66 = *v135;
    v67 = v133;
    (*v135)(v133, a4, v8);
    swift_arrayInitWithTakeFrontToBack();
    v66(v59, v67, v8);
    v59 += v57;
    a4 += v57;
    v51 = __CFADD__(v58++, 1);
    if (v51)
    {
      goto LABEL_45;
    }
  }

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
}

uint64_t sub_1C4AE2920(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = a4;
  v7 = sub_1C4EFF0C8();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v62 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v61 = &v52 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v16 = a2 - a1 == 0x8000000000000000 && v15 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v19 = (a2 - a1) / v15;
  v67 = a1;
  v66 = v64;
  v59 = (v12 + 8);
  v60 = (v12 + 16);
  v20 = v15;
  v21 = v17 / v15;
  if (v19 >= v17 / v15)
  {
    v36 = v64;
    sub_1C44E7364(a2, v17 / v15, v64);
    v37 = v36 + v21 * v20;
    v38 = -v20;
    v39 = v37;
    v55 = -v20;
    v56 = a1;
LABEL_36:
    v57 = a2;
    v58 = a2 + v38;
    v40 = a3;
    v53 = v39;
    while (1)
    {
      if (v37 <= v64)
      {
        v67 = a2;
        v65 = v39;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v54 = v39;
      v63 = v40 + v38;
      v41 = v37 + v38;
      v42 = v37;
      v43 = v61;
      v44 = *v60;
      (*v60)(v61, v41, v7);
      v45 = v62;
      v44(v62, v58, v7);
      sub_1C4AE2EAC(&unk_1EDDFA1B0, MEMORY[0x1E69A9810]);
      LOBYTE(v44) = sub_1C4F01068();
      v46 = *v59;
      (*v59)(v45, v7);
      v46(v43, v7);
      if (v44)
      {
        v37 = v42;
        a3 = v63;
        if (v40 < v57 || v63 >= v57)
        {
          a2 = v58;
          swift_arrayInitWithTakeFrontToBack();
          v39 = v54;
          v38 = v55;
          a1 = v56;
        }

        else
        {
          v50 = v54;
          v38 = v55;
          v39 = v54;
          v16 = v40 == v57;
          v51 = v58;
          a2 = v58;
          a1 = v56;
          if (!v16)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v51;
            v39 = v50;
          }
        }

        goto LABEL_36;
      }

      v47 = v63;
      if (v40 < v42 || v63 >= v42)
      {
        swift_arrayInitWithTakeFrontToBack();
        v40 = v47;
        v37 = v41;
        v39 = v41;
        a1 = v56;
        a2 = v57;
        v38 = v55;
      }

      else
      {
        v39 = v41;
        v16 = v42 == v40;
        v40 = v63;
        v37 = v41;
        a1 = v56;
        a2 = v57;
        v38 = v55;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v40 = v47;
          v37 = v41;
          v39 = v41;
        }
      }
    }

    v67 = a2;
    v65 = v53;
  }

  else
  {
    v22 = v64;
    sub_1C44E7364(a1, (a2 - a1) / v15, v64);
    v58 = v22 + v19 * v20;
    v65 = v58;
    v23 = v20;
    v63 = a3;
    while (v64 < v58 && a2 < a3)
    {
      v25 = a1;
      v26 = v61;
      v27 = *v60;
      (*v60)(v61, a2, v7);
      v28 = a2;
      v29 = v62;
      v27(v62, v64, v7);
      sub_1C4AE2EAC(&unk_1EDDFA1B0, MEMORY[0x1E69A9810]);
      v30 = sub_1C4F01068();
      v31 = *v59;
      (*v59)(v29, v7);
      v31(v26, v7);
      if (v30)
      {
        a2 = v28 + v23;
        v32 = v25;
        if (v25 < v28 || v25 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v63;
        }

        else
        {
          a3 = v63;
          if (v25 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v34 = v64 + v23;
        v32 = v25;
        if (v25 < v64 || v25 >= v34)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v28;
          a3 = v63;
        }

        else
        {
          a3 = v63;
          a2 = v28;
          if (v25 != v64)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v66 = v34;
        v64 = v34;
      }

      a1 = v32 + v23;
      v67 = a1;
    }
  }

LABEL_58:
  sub_1C4BEB414(&v67, &v66, &v65);
  return 1;
}

uint64_t sub_1C4AE2EAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ResolverKeyValueStore.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ResolverKeyValueStore.init(config:)(a1);
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResolverKeyValueStore.promoteStore()()
{
  v1 = *(v0 + 16);
  v2._object = 0x80000001C4FB0C10;
  v2._countAndFlagsBits = 0xD000000000000017;
  KeyValueStore.copyAllKeyValues(to:clearCurrentDomain:clearNewDomain:)(v2, 1, 1);
}

void *ResolverKeyValueStore.init(config:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = type metadata accessor for Configuration();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  sub_1C44098F0(a1, v21 - v11);
  v13 = type metadata accessor for KeyValueStore();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = KeyValueStore.init(config:domain:)(v12, 0xD000000000000017, 0x80000001C4FB0C10);
  if (v2)
  {
    sub_1C4467948(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v3[3] = v16;
    sub_1C44098F0(a1, v10);
    v17 = *(v13 + 48);
    v18 = *(v13 + 52);
    swift_allocObject();
    v19 = KeyValueStore.init(config:domain:)(v10, 0xD000000000000023, 0x80000001C4FB0FB0);
    sub_1C4467948(a1);
    v3[2] = v19;
  }

  return v3;
}

uint64_t ResolverKeyValueStore.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ResolverKeyValueStore.__deallocating_deinit()
{
  ResolverKeyValueStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AE3260(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1), void *))
{
  v4 = v3;
  v5 = v2;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(v5 + 8);
  v13 = *(v5 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v8 + 8))(v11, v7);
  if (!v4)
  {
    v23 = sub_1C4BC76D8(result);
    v16 = v15;
    type metadata accessor for EscapeBlockMonitor();
    v17 = swift_allocObject();
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0FCC0;
    *(inited + 32) = v17;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v23;
    v21[5] = v16;

    a2(sub_1C4AE5484, v21);

    swift_setDeallocating();
    return sub_1C49E1628();
  }

  return result;
}

uint64_t sub_1C4AE34A0(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1), void *))
{
  v4 = v3;
  v5 = v2;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *v5;
  v13 = v5[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v8 + 8))(v11, v7);
  if (!v4)
  {
    v23 = sub_1C4BC77A4(result);
    v16 = v15;
    type metadata accessor for EscapeBlockMonitor();
    v17 = swift_allocObject();
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0FCC0;
    *(inited + 32) = v17;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v23;
    v21[5] = v16;

    a2(sub_1C4AE52C8, v21);

    swift_setDeallocating();
    return sub_1C49E1628();
  }

  return result;
}

uint64_t sub_1C4AE36E0(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10)
{
  v31 = a8;
  v32 = a3;
  v33 = a2;
  v15 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v29 - v18;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v16 + 8))(v19, v15);
  if (!v10)
  {
    v29[1] = a9;
    v30 = a10;
    v21 = v31(a4, a5, a6, a7);
    v23 = v22;
    type metadata accessor for EscapeBlockMonitor();
    v24 = swift_allocObject();
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0FCC0;
    *(inited + 32) = v24;
    sub_1C43FBDBC();
    v26 = swift_allocObject();
    swift_weakInit();
    sub_1C43FBDBC();
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    v28[2] = v26;
    v28[3] = v27;
    v28[4] = v21;
    v28[5] = v23;

    v33(v30, v28);

    swift_setDeallocating();
    return sub_1C49E1628();
  }

  return result;
}

uint64_t sub_1C4AE3928(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1), void *))
{
  v4 = v3;
  v5 = v2;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *v5;
  v13 = v5[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v8 + 8))(v11, v7);
  if (!v4)
  {
    v23 = sub_1C4BC7950(result);
    v16 = v15;
    type metadata accessor for EscapeBlockMonitor();
    v17 = swift_allocObject();
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0FCC0;
    *(inited + 32) = v17;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v23;
    v21[5] = v16;

    a2(sub_1C4AE5484, v21);

    swift_setDeallocating();
    return sub_1C49E1628();
  }

  return result;
}

uint64_t sub_1C4AE3B68(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1), void *))
{
  v4 = v3;
  v5 = v2;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *v5;
  v13 = v5[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v8 + 8))(v11, v7);
  if (!v4)
  {
    v23 = sub_1C4BC7950(result);
    v16 = v15;
    type metadata accessor for EscapeBlockMonitor();
    v17 = swift_allocObject();
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0FCC0;
    *(inited + 32) = v17;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v23;
    v21[5] = v16;

    a2(sub_1C4AE5484, v21);

    swift_setDeallocating();
    return sub_1C49E1628();
  }

  return result;
}

uint64_t sub_1C4AE3DA8(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1), void *))
{
  v4 = v3;
  v5 = v2;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *v5;
  v13 = v5[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v8 + 8))(v11, v7);
  if (!v4)
  {
    v23 = sub_1C4BC7A14(result);
    v16 = v15;
    type metadata accessor for EscapeBlockMonitor();
    v17 = swift_allocObject();
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0FCC0;
    *(inited + 32) = v17;
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = v19;
    v21[3] = v20;
    v21[4] = v23;
    v21[5] = v16;

    a2(sub_1C4AE5484, v21);

    swift_setDeallocating();
    return sub_1C49E1628();
  }

  return result;
}

uint64_t sub_1C4AE3FF0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  memcpy(__dst, v2, sizeof(__dst));
  v6 = *(v5 + 16);
  v8[2] = __dst;
  v8[3] = a1;
  v8[4] = a2;

  sub_1C446C37C(sub_1C4AE53C8, v8);
}

uint64_t sub_1C4AE407C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  memcpy(__dst, v2, sizeof(__dst));
  v6 = *(v5 + 16);
  v8[2] = __dst;
  v8[3] = a1;
  v8[4] = a2;

  sub_1C446C37C(sub_1C4AE52AC, v8);
}

uint64_t sub_1C4AE4108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11[0] = a3;
  v11[1] = a4;
  v11[2] = a5;
  v11[3] = a6;
  v8 = *(a5 + 16);
  v10[2] = v11;
  v10[3] = a1;
  v10[4] = a2;

  sub_1C446C37C(a7, v10);
}

uint64_t sub_1C4AE4164(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 24) + 16);
  v5[3] = a1;
  v5[4] = a2;

  sub_1C446C37C(sub_1C4AE5410, v5);
}

uint64_t sub_1C4AE41C8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v9 = *(v2 + 32);
  v4 = *(v2 + 16);
  v8[0] = *v2;
  v8[1] = v4;
  v5 = *(v3 + 16);
  v7[2] = v8;
  v7[3] = a1;
  v7[4] = a2;

  sub_1C446C37C(sub_1C4AE53AC, v7);
}

uint64_t sub_1C4AE4238(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 32) + 16);
  v5[3] = a1;
  v5[4] = a2;

  sub_1C446C37C(sub_1C4AE53E4, v5);
}

uint64_t sub_1C4AE4448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F02248();

  strcpy(v16, "INSERT INTO ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  v5 = (*(a3 + 8))(a1, a3);
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](0x205345554C415620, 0xE900000000000028);
  v6 = *((*(a3 + 24))(a1, a3) + 16);
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v7 = *(v15 + 16);
    v8 = 16 * v7;
    do
    {
      v9 = v7 + 1;
      if (v7 >= *(v15 + 24) >> 1)
      {
        sub_1C44CD9C0();
      }

      *(v15 + 16) = v9;
      v10 = v15 + v8;
      *(v10 + 32) = 63;
      *(v10 + 40) = 0xE100000000000000;
      v8 += 16;
      v7 = v9;
      --v6;
    }

    while (v6);
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870);
  v11 = sub_1C4F01048();
  v13 = v12;

  MEMORY[0x1C6940010](v11, v13);

  MEMORY[0x1C6940010](41, 0xE100000000000000);
  return v16[0];
}

uint64_t sub_1C4AE49C4(uint64_t a1, void (*a2)(uint64_t (*)(), void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C4AE4448(a4, a2, a6);
  v8 = sub_1C4EFBE98();
  if (v6)
  {
  }

  v10 = v8;

  type metadata accessor for EscapeBlockMonitor();
  v11 = swift_allocObject();
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0FCC0;
  *(inited + 32) = v11;
  sub_1C43FBDBC();
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1C43FBDBC();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v10;

  a2(sub_1C4AE5180, v15);

  swift_setDeallocating();
  return sub_1C49E1628();
}

uint64_t sub_1C4AE4B64(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14[-v4];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_1C4811948(a1);
      sub_1C4EFB788();
      sub_1C4EFC0A8();
      sub_1C4AE5118(v5);
    }
  }

  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DF70);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CE8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v15[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1C441D828(0xD000000000000106, 0x80000001C4FB10B0, v15);
    _os_log_impl(&dword_1C43F8000, v8, v9, "%s", v10, 0xCu);
    sub_1C440962C(v11);
    MEMORY[0x1C6942830](v11, -1, -1);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  sub_1C450B034();
  swift_allocError();
  *v12 = 0;
  *(v12 + 8) = 0xE000000000000000;
  *(v12 + 16) = 0xD000000000000106;
  *(v12 + 24) = 0x80000001C4FB10B0;
  v13 = v15[1];
  *(v12 + 32) = v15[0];
  *(v12 + 48) = v13;
  *(v12 + 64) = 9;
  return swift_willThrow();
}

uint64_t sub_1C4AE4F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDE2E088);
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CC8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C43F8000, v13, v14, "RowUpdatableDatabaseTable: insert with callback", v15, 2u);
    MEMORY[0x1C6942830](v15, -1, -1);
  }

  v16 = *((*(a5 + 16))(a3, a5) + 16);

  MEMORY[0x1EEE9AC00](v17);
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = v6;
  v19[6] = a1;
  v19[7] = a2;
  sub_1C446C37C(sub_1C4AE519C, v19);
}

uint64_t sub_1C4AE5118(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4AE519C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5[2];
  v7 = v5[4];
  v8 = v5[6];
  v9 = v5[7];
  v10 = v5[5];
  return sub_1C4AE49C4(a1, v8, v9, v6, a5, v7);
}

uint64_t sub_1C4AE5378(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1), void *))
{
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return sub_1C4AE4F18(a1, v5, a3);
}

uint64_t sub_1C4AE53E4(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_1C4AE3DA8(a1, v2);
}

uint64_t sub_1C4AE5410(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_1C4AE3928(a1, v2);
}

uint64_t sub_1C4AE543C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t RTAddress.rtSubPremises.getter()
{
  if (!sub_1C4AE58A4(v0))
  {
    return 0;
  }

  sub_1C4813140();
  v2 = v1;

  return v2;
}

void sub_1C4AE5508()
{
  v1 = [v0 identifier];
  sub_1C4EF9D18();
}

uint64_t sub_1C4AE58A4(void *a1)
{
  v1 = [a1 subPremises];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C4AE5A08();
  v3 = sub_1C4F01678();

  return v3;
}

unint64_t sub_1C4AE5A08()
{
  result = qword_1EC0BDAE8;
  if (!qword_1EC0BDAE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0BDAE8);
  }

  return result;
}

uint64_t RTLocationOfInterestType.description.getter(uint64_t a1)
{
  v2 = sub_1C4F00978();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1802661751;
  switch(a1)
  {
    case -1:
      sub_1C441A3C4();
      break;
    case 0:
      v7 = 1701670760;
      break;
    case 1:
      return v7;
    case 2:
      v7 = 0x6C6F6F686373;
      break;
    case 3:
      v7 = 7174503;
      break;
    default:
      sub_1C4F00148();
      v7 = v6;
      v8 = sub_1C4F00968();
      v9 = sub_1C4F01CE8();
      os_log_type_enabled(v8, v9);
      sub_1C441A3C4();
      if (v10)
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17 = a1;
        v18 = v12;
        *v11 = 136315138;
        type metadata accessor for RTLocationOfInterestType(0);
        v13 = sub_1C4F01198();
        v15 = sub_1C441D828(v13, v14, &v18);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_1C43F8000, v8, v9, "RTLocationOfInterestType has unexpected case: %s", v11, 0xCu);
        sub_1C440962C(v12);
        MEMORY[0x1C6942830](v12, -1, -1);
        MEMORY[0x1C6942830](v11, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      break;
  }

  return v7;
}

uint64_t sub_1C4AE5DA0@<X0>(SEL *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = [v5 *a1];
  result = sub_1C4461BB8(0, a2, a3);
  a5[3] = result;
  a5[4] = a4;
  *a5 = v10;
  return result;
}

uint64_t RTLocationOfInterest.rtVisits.getter()
{
  v1 = [v0 visits];
  sub_1C4461BB8(0, &qword_1EC0BDAE0, 0x1E6999060);
  sub_1C4F01678();

  sub_1C4813290();
  v3 = v2;

  return v3;
}

unint64_t RTLocationOfInterestVisit.rtLocation.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 location];
  result = sub_1C4AE6128();
  a1[3] = result;
  a1[4] = &protocol witness table for RTLocation;
  *a1 = v3;
  return result;
}

unint64_t sub_1C4AE6128()
{
  result = qword_1EDDF05B0;
  if (!qword_1EDDF05B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDF05B0);
  }

  return result;
}

void sub_1C4AE6250(SEL *a1, void (*a2)(void))
{
  v4 = [v2 *a1];
  a2();
}

unint64_t RTMapItem.rtAddress.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 address];
  result = sub_1C4AE63B8();
  a1[3] = result;
  a1[4] = &protocol witness table for RTAddress;
  *a1 = v3;
  return result;
}

unint64_t sub_1C4AE63B8()
{
  result = qword_1EDDF0358;
  if (!qword_1EDDF0358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDF0358);
  }

  return result;
}

id RTPlaceInference.rtMapItem.getter@<X0>(void *a1@<X8>)
{
  result = [v1 mapItem];
  v4 = result;
  if (result)
  {
    result = sub_1C4AE6540();
    v5 = &protocol witness table for RTMapItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

unint64_t sub_1C4AE6540()
{
  result = qword_1EDDF0350;
  if (!qword_1EDDF0350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDF0350);
  }

  return result;
}

uint64_t sub_1C4AE662C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 loiIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_1C4EF9D18();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C4EF9D38();

  return sub_1C440BAA8(a1, v5, 1, v6);
}

uint64_t RTPlaceInferenceUserSpecificPlaceType.description.getter(uint64_t a1)
{
  v2 = sub_1C4F00978();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1802661751;
  switch(a1)
  {
    case 0:
      sub_1C441A3C4();
      break;
    case 1:
      v7 = 1701670760;
      break;
    case 2:
      return v7;
    case 3:
      v7 = 0x6C6F6F686373;
      break;
    case 4:
      v7 = 7174503;
      break;
    default:
      sub_1C4F00148();
      v7 = v6;
      v8 = sub_1C4F00968();
      v9 = sub_1C4F01CE8();
      os_log_type_enabled(v8, v9);
      sub_1C441A3C4();
      if (v10)
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v17 = a1;
        v18 = v12;
        *v11 = 136315138;
        type metadata accessor for RTPlaceInferenceUserSpecificPlaceType(0);
        v13 = sub_1C4F01198();
        v15 = sub_1C441D828(v13, v14, &v18);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_1C43F8000, v8, v9, "RTPlaceInferenceUserSpecificPlaceType has unexpected case: %s", v11, 0xCu);
        sub_1C440962C(v12);
        MEMORY[0x1C6942830](v12, -1, -1);
        MEMORY[0x1C6942830](v11, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      break;
  }

  return v7;
}

uint64_t sub_1C4AE6944(void *a1)
{
  v1 = [a1 preferredName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

id RTVisit.rtLocation.getter@<X0>(void *a1@<X8>)
{
  result = [v1 location];
  v4 = result;
  if (result)
  {
    result = sub_1C4461BB8(0, &qword_1EDDF05B0, 0x1E6999050);
    v5 = &protocol witness table for RTLocation;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id RTVisit.inferredLocation.getter@<X0>(void *a1@<X8>)
{
  result = [v1 placeInference];
  v4 = result;
  if (result)
  {
    result = sub_1C4461BB8(0, &qword_1EDDF0448, 0x1E6999070);
    v5 = &protocol witness table for RTPlaceInference;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_1C4AE6B94(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal____lazy_storage___featureNames) = 0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal_config);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal_store) = a3;
  return v3;
}

uint64_t sub_1C4AE6C00()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal____lazy_storage___featureNames);
  }

  else
  {
    sub_1C448DE08(&unk_1F43DA9E8);
    v2 = v3;
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t sub_1C4AE6C6C()
{
  v169 = type metadata accessor for GraphTriple(0);
  v1 = sub_1C43FCDF8(v169);
  v151 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v157 = &v133 - v9;
  v10 = sub_1C4EFDE88();
  v11 = sub_1C43FCDF8(v10);
  v161 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v155 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  v154 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  v163 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  v22 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v133 - v24;
  v156 = sub_1C4EFDE98();
  v26 = sub_1C43FCDF8(v156);
  v160 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v159 = &v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v133 - v33;
  v35 = sub_1C4EFF0C8();
  v36 = sub_1C43FCDF8(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  v167 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  v147 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v133 - v45;
  v152 = v0;
  v153 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal_store);
  sub_1C486DFC0();
  sub_1C4868198();

  if (sub_1C44157D4(v34, 1, v35) == 1)
  {
    return sub_1C4420C3C(v34, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v164 = *(v38 + 32);
  v165 = v38 + 32;
  v164(v46, v34, v35);
  sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v48 = *(v38 + 72);
  v49 = *(v38 + 80);
  v148 = v38;
  v50 = (v49 + 32) & ~v49;
  v172 = v48;
  v51 = swift_allocObject();
  v149 = xmmword_1C4F0D130;
  *(v51 + 16) = xmmword_1C4F0D130;
  v52 = *(v38 + 16);
  v166 = v50;
  v168 = v35;
  v170 = v52;
  v171 = v38 + 16;
  v52(v51 + v50, v46, v35);
  sub_1C4D51ABC();
  v146 = v53;
  v54 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v55 = *(sub_1C4EFEEF8() - 8);
  v56 = *(v55 + 80);
  v57 = (v56 + 32) & ~v56;
  v139 = *(v55 + 72);
  v138 = v56;
  v141 = v54;
  v58 = swift_allocObject();
  sub_1C44322E0(v58);
  v140 = v57;
  sub_1C4EFED68();
  sub_1C4D504A4();
  v145 = v59;
  v158 = v25;
  v60 = *MEMORY[0x1E69A95C0];
  v61 = v161;
  v150 = v46;
  v62 = v10;
  v64 = v161 + 104;
  v63 = *(v161 + 104);
  sub_1C43FC2F4();
  v63();
  v65 = v22;
  sub_1C43FC2F4();
  v63();
  sub_1C43FC2F4();
  v63();
  v66 = v154;
  sub_1C43FC2F4();
  v63();
  v67 = v155;
  HIDWORD(v143) = v60;
  sub_1C43FC2F4();
  v144 = v64;
  v142 = v63;
  v63();
  v68 = v163;
  sub_1C4EFDCD8();

  v69 = *(v61 + 8);
  v69(v67, v62);
  v69(v66, v62);
  v69(v68, v62);
  v146 = v65;
  v69(v65, v62);
  v145 = v69;
  v69(v158, v62);
  v70 = sub_1C4EFF8F8();
  v71 = v157;
  v137 = v70;
  sub_1C440BAA8(v157, 1, 1, v70);
  v72 = v159;
  v73 = sub_1C498DB80();
  sub_1C4420C3C(v71, &qword_1EC0BAA00, &unk_1C4F17400);
  v74 = *(v160 + 8);
  v160 += 8;
  v136 = v74;
  v74(v72, v156);
  v75 = *(v73 + 16);
  v76 = v62;
  v161 = v61 + 8;
  if (v75)
  {
    v135 = v62;
    v173[0] = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v77 = v173[0];
    v78 = (*(v151 + 80) + 32) & ~*(v151 + 80);
    v134 = v73;
    v79 = v73 + v78;
    v80 = *(v151 + 72);
    do
    {
      sub_1C449EE28(v79, v6, type metadata accessor for GraphTriple);
      v81 = &v6[v169[8]];
      v83 = *v81;
      v82 = *(v81 + 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C449F17C(v6, type metadata accessor for GraphTriple);
      v173[0] = v77;
      v84 = *(v77 + 16);
      if (v84 >= *(v77 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v77 = v173[0];
      }

      *(v77 + 16) = v84 + 1;
      v85 = v77 + 16 * v84;
      *(v85 + 32) = v83;
      *(v85 + 40) = v82;
      v79 += v80;
      --v75;
    }

    while (v75);

    v86 = v150;
    v76 = v135;
  }

  else
  {

    v77 = MEMORY[0x1E69E7CC0];
    v86 = v150;
  }

  v87 = v146;
  if (*(v77 + 16))
  {
    v88 = swift_allocObject();
    sub_1C44322E0(v88);
    sub_1C4EFED68();
    sub_1C4D504A4();
    v169 = v89;
    sub_1C4499940(v77, v90, v91, v92, v93, v94, v95, v96, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146);
    *&v149 = v97;
    sub_1C440AA08();
    v98 = v142;
    v142();
    sub_1C440AA08();
    v98();
    sub_1C440AA08();
    v98();
    v99 = v154;
    sub_1C440AA08();
    v98();
    v100 = v87;
    v101 = v155;
    sub_1C440AA08();
    v98();
    v102 = v100;
    v103 = v159;
    v104 = v163;
    sub_1C4EFDCD8();

    v105 = v145;
    v145(v101, v76);
    v105(v99, v76);
    v105(v104, v76);
    v105(v102, v76);
    v105(v158, v76);
    v106 = v157;
    sub_1C440BAA8(v157, 1, 1, v137);
    v107 = sub_1C498DB80();
    sub_1C4420C3C(v106, &qword_1EC0BAA00, &unk_1C4F17400);
    v136(v103, v156);
    v108 = *(v107 + 2);
    if (v108)
    {
      v169 = v6;
      v173[0] = MEMORY[0x1E69E7CC0];
      sub_1C459D178();
      v109 = v173[0];
      v110 = *(v151 + 80);
      v163 = v107;
      v111 = &v107[(v110 + 32) & ~v110];
      v112 = *(v151 + 72);
      v113 = v168;
      v114 = v147;
      do
      {
        v115 = v169;
        sub_1C449EE28(v111, v169, type metadata accessor for GraphTriple);
        v170(v114, v115, v113);
        sub_1C449F17C(v115, type metadata accessor for GraphTriple);
        v173[0] = v109;
        v116 = *(v109 + 16);
        v107 = (v116 + 1);
        if (v116 >= *(v109 + 24) >> 1)
        {
          sub_1C459D178();
          v109 = v173[0];
        }

        *(v109 + 16) = v107;
        v164(v166 + v109 + v116 * v172, v114, v113);
        v111 += v112;
        --v108;
      }

      while (v108);

      sub_1C4406DE0();
      v117 = v109;
    }

    else
    {

      v117 = MEMORY[0x1E69E7CC0];
      v113 = v168;
      sub_1C4406DE0();
    }

    v173[0] = MEMORY[0x10];
    v173[1] = MEMORY[0x18];
    v173[2] = MEMORY[0x20];
    v173[3] = MEMORY[0x28];
    v173[4] = MEMORY[0x30];
    v118 = *(v117 + 16);
    if (v118)
    {
      v174 = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C459D810();
      v119 = v174;
      v169 = objc_opt_self();
      v108 = v166 + v117;
      v165 = v117;
      v166 = (v107 + 8);
      do
      {
        v120 = v167;
        v170(v167, v108, v113);
        v121 = sub_1C4EFF048();
        v123 = v122;
        v107 = [v169 featureValueWithInt64_];
        (*v166)(v120, v113);
        v174 = v119;
        v124 = *(v119 + 16);
        if (v124 >= *(v119 + 24) >> 1)
        {
          sub_1C459D810();
          v119 = v174;
        }

        *(v119 + 16) = v124 + 1;
        v125 = v119 + 40 * v124;
        strcpy((v125 + 32), "sameEmployer");
        *(v125 + 45) = 0;
        *(v125 + 46) = -5120;
        *(v125 + 48) = v121;
        *(v125 + 56) = v123;
        *(v125 + 64) = v107;
        v108 += v172;
        --v118;
        v113 = v168;
      }

      while (v118);

      sub_1C4406DE0();
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v126 = v162;
    sub_1C47D32C8();
    if (v126)
    {

      return (*(v107 + 1))(v150, v113);
    }

    else
    {

      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v127 = sub_1C4F00978();
      sub_1C442B738(v127, qword_1EDE2DF70);

      v128 = sub_1C4F00968();
      v129 = sub_1C4F01CB8();

      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v131 = v107;
        v132 = swift_slowAlloc();
        v173[0] = v132;
        *v130 = 136315138;
        *(v130 + 4) = sub_1C441D828(*&v108[OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal_config], *&v108[OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal_config + 8], v173);
        _os_log_impl(&dword_1C43F8000, v128, v129, "SignalView %s: wrote features", v130, 0xCu);
        sub_1C440962C(v132);
        MEMORY[0x1C6942830](v132, -1, -1);
        MEMORY[0x1C6942830](v130, -1, -1);

        return v131[1](v150, v168);
      }

      else
      {

        return (*(v107 + 1))(v150, v168);
      }
    }
  }

  else
  {
    (*(v148 + 8))(v86, v168);
  }
}

void *sub_1C4AE7BD8()
{
  v1 = v0[3];
  v3 = v0[5];
  v2 = v0[6];

  sub_1C449F17C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal_config, _s10ViewConfigVMa);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal_store);

  v5 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal____lazy_storage___featureNames);

  return v0;
}

uint64_t sub_1C4AE7C60()
{
  sub_1C4AE7BD8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SameEmployerSignal()
{
  result = qword_1EC0C3218;
  if (!qword_1EC0C3218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AE7D0C()
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

uint64_t sub_1C4AE7DC0()
{
  sub_1C4AE6C6C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Daemon.confstr(_:)(int a1)
{
  v2 = sub_1C4EF9578();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v7 = 0x40000000000;
  v8 = sub_1C4EF9548();
  sub_1C4AE87A0(&v7, 0);
  v8 |= 0x4000000000000000uLL;
  v5 = sub_1C4AE8354(&v7, a1);
  sub_1C4434000(v7, v8);
  return v5;
}

uint64_t sub_1C4AE7F3C@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = sub_1C4F01338();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t static Daemon.enterSandbox(identifier:macOSProfile:)()
{
  v0 = sub_1C4EFCE28();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = sub_1C4F00978();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  sub_1C4F011C8();
  v22 = _set_user_dir_suffix();

  if (!v22)
  {
    sub_1C4F00148();
    v30 = sub_1C4F00968();
    v31 = sub_1C4F01CD8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1C43F8000, v30, v31, "Sandbox: _set_user_dir_suffix returned nil", v32, 2u);
      MEMORY[0x1C6942830](v32, -1, -1);
    }

    (*(v14 + 8))(v19, v11);
    (*(v3 + 104))(v8, *MEMORY[0x1E69A9220], v0);
    goto LABEL_13;
  }

  static Daemon.confstr(_:)(65537);
  if (!v23 || (String.realpath.getter(), v25 = v24, , !v25))
  {
    sub_1C4F00148();
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CD8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1C43F8000, v27, v28, "Sandbox: confstr(_CS_DARWIN_USER_TEMP_DIR) failed", v29, 2u);
      MEMORY[0x1C6942830](v29, -1, -1);
    }

    (*(v14 + 8))(v21, v11);
    (*(v3 + 104))(v10, *MEMORY[0x1E69A9218], v0);
LABEL_13:
    result = sub_1C4F000B8();
    __break(1u);
    return result;
  }
}

uint64_t String.realpath.getter()
{
  v0 = sub_1C4F011C8();
  v1 = realpath_DARWIN_EXTSN((v0 + 32), 0);

  if (!v1)
  {
    return 0;
  }

  v2 = sub_1C4F01338();
  MEMORY[0x1C6942830](v1, -1, -1);
  return v2;
}

uint64_t sub_1C4AE8354(uint64_t *a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  v5 = v2;
  switch(v3 >> 62)
  {
    case 1uLL:
      v13 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C4434000(v4, v3);
      *a1 = xmmword_1C4F4FDA0;
      sub_1C4434000(0, 0xC000000000000000);
      v14 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v14 < v4)
      {
        goto LABEL_23;
      }

      if (sub_1C4EF9538() && __OFSUB__(v4, sub_1C4EF9568()))
      {
        goto LABEL_24;
      }

      v15 = sub_1C4EF9578();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v18 = sub_1C4EF9518();

      v13 = v18;
LABEL_16:
      if (v14 < v4)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v5 = sub_1C4AE86F4(v4, v4 >> 32, v13, a2);

      v12 = v13 | 0x4000000000000000;
      if (v2)
      {
        *a1 = v4;
        goto LABEL_19;
      }

      *a1 = v4;
      a1[1] = v12;
      break;
    case 2uLL:
      v9 = *a1;

      sub_1C4434000(v4, v3);
      v23 = v4;
      v24 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1C4F4FDA0;
      sub_1C4434000(0, 0xC000000000000000);
      sub_1C4EF9918();
      v10 = v24;
      v11 = sub_1C4AE86F4(*(v23 + 16), *(v23 + 24), v24, a2);
      if (v2)
      {
        v12 = v24 | 0x8000000000000000;
        *a1 = v23;
LABEL_19:
        a1[1] = v12;
      }

      else
      {
        v5 = v11;
        *a1 = v23;
        a1[1] = v10 | 0x8000000000000000;
      }

      break;
    case 3uLL:
      memset(v22, 0, 15);
      sub_1C4AE7F3C(v22, a2, &v23);
      if (!v2)
      {
        v5 = v23;
      }

      break;
    default:
      v5 = v4 >> 40;
      sub_1C4434000(v4, v3);
      *v22 = v4;
      *&v22[8] = v3;
      v22[10] = BYTE2(v3);
      v22[11] = BYTE3(v3);
      v22[12] = BYTE4(v3);
      v22[13] = BYTE5(v3);
      v22[14] = BYTE6(v3);
      sub_1C4AE7F3C(v22, a2, &v23);
      if (!v2)
      {
        v5 = v23;
      }

      v8 = *&v22[8] | ((*&v22[12] | (v22[14] << 16)) << 32);
      *a1 = *v22;
      a1[1] = v8;
      break;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1C4AE86F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_1C4EF9538();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = sub_1C4EF9568();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1C4EF9558();
  result = sub_1C4AE7F3C((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1C4AE87A0(int *a1, int a2)
{
  result = sub_1C4EF9958();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_1C4EF9538();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_1C4EF9568();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_1C4EF9558();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_1C4AE8848(uint64_t a1)
{
  v2 = type metadata accessor for ScheduledTasks.AutonamingMetricsLoggingRunner();
  v3 = sub_1C43FBCE0(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v47 - v7);
  v9 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v15 = sub_1C4F00978();
  sub_1C43FCEE8(v15, qword_1EDE2DE10);
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_1C43FCED0();
    *v18 = 0;
    _os_log_impl(&dword_1C43F8000, v16, v17, "IntelligencePlatformTasks: registering all tasks.", v18, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0();
  }

  sub_1C43FCEE8(v9, qword_1EDE2DD70);
  sub_1C4431194(a1, v14, type metadata accessor for Configuration);
  v19 = type metadata accessor for Configuration();
  sub_1C440BAA8(v14, 0, 1, v19);
  sub_1C445FE5C();
  sub_1C45A6EE0(v14, v16);
  swift_endAccess();
  type metadata accessor for SimpleScheduledTask();
  sub_1C44149FC();
  v20 = swift_allocObject();
  sub_1C4AF186C(0xD000000000000027, 0x80000001C4FB1580, v20, &type metadata for ScheduledTasks.AssetRegistryOverrideStoreWeeklyCleanupRunner, &off_1F43FAFC0, v21, v22, v23);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v24 = swift_allocObject();
  sub_1C4AF186C(0xD00000000000001BLL, 0x80000001C4FB15B0, v24, &type metadata for ScheduledTasks.GlobalKnowledgeTwoHourPruneRunner, &off_1F43FAFE0, v25, v26, v27);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v28 = swift_allocObject();
  sub_1C4AF186C(0xD00000000000001FLL, 0x80000001C4FB15D0, v28, &type metadata for ScheduledTasks.EventAndFeedbackDailyProcessingRunner, &off_1F43FB000, v29, v30, v31);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v32 = swift_allocObject();
  sub_1C4AF186C(0xD00000000000001ALL, 0x80000001C4FB15F0, v32, &type metadata for ScheduledTasks.EventStreamsDataCollectionRunner, &off_1F43FB020, v33, v34, v35);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v36 = swift_allocObject();
  sub_1C4AF186C(0xD00000000000001ALL, 0x80000001C4FB1610, v36, &type metadata for ScheduledTasks.LongitudinalDataCollectionRunner, &off_1F43FB040, v37, v38, v39);
  sub_1C4A4CFA8();

  sub_1C4431194(a1, v8 + *(v2 + 20), type metadata accessor for Configuration);
  sub_1C43FBDF0();
  *v8 = 0xD000000000000018;
  v8[1] = v40;
  sub_1C44149FC();
  swift_allocObject();
  v41 = sub_1C4402B58();
  sub_1C4431194(v41, v42, v43);
  v44 = sub_1C4404050();
  sub_1C4AF1794(v44, v45);
  sub_1C44542C0(v8, type metadata accessor for ScheduledTasks.AutonamingMetricsLoggingRunner);
  sub_1C4A4CFA8();
}