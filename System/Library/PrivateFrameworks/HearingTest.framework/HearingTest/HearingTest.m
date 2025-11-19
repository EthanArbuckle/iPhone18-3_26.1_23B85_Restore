uint64_t sub_25207FC24(uint64_t a1, id *a2)
{
  result = sub_252141B7C();
  *a2 = 0;
  return result;
}

uint64_t sub_25207FC9C(uint64_t a1, id *a2)
{
  v3 = sub_252141B8C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25207FD1C@<X0>(uint64_t *a1@<X8>)
{
  sub_252141B9C();
  v2 = sub_252141B6C();

  *a1 = v2;
  return result;
}

uint64_t sub_25207FD60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_252141B9C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_25207FD8C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_25214192C();
}

uint64_t sub_25207FDD8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_25214191C();
}

uint64_t sub_25207FE30()
{
  sub_25214255C();
  v1 = *v0;
  swift_getWitnessTable();
  sub_25214191C();
  return sub_25214258C();
}

BOOL sub_25207FEDC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_25207FF68@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_25207FF84(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_2520800BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252141B6C();

  *a2 = v5;
  return result;
}

uint64_t sub_252080104(uint64_t a1)
{
  v2 = sub_252080208(&qword_27F4CD838, type metadata accessor for Name);
  v3 = sub_252080208(&qword_27F4CD840, type metadata accessor for Name);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_252080208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252080298()
{
  v1 = *v0;
  v2 = sub_252141B9C();
  v3 = MEMORY[0x253098DC0](v2);

  return v3;
}

uint64_t sub_2520802D4()
{
  v1 = *v0;
  sub_252141B9C();
  sub_252141BEC();
}

uint64_t sub_252080328()
{
  v1 = *v0;
  sub_252141B9C();
  sub_25214255C();
  sub_252141BEC();
  v2 = sub_25214258C();

  return v2;
}

uint64_t sub_2520803A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_252141B9C();
  v6 = v5;
  if (v4 == sub_252141B9C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25214247C();
  }

  return v9 & 1;
}

void sub_25208051C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2520805A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = 0;
  v12 = MEMORY[0x277D84F90];
  v4 = a1 + 32;
  do
  {
    v5 = v3 + 1;
    result = sub_252099194(0, v1, 0, v2);
    v7 = result;
    v8 = *(result + 16);
    v9 = v1;
    do
    {
      v10 = *(v7 + 24);
      v11 = v8 + 1;
      if (v8 >= v10 >> 1)
      {
        result = sub_252099194((v10 > 1), v8 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v11;
      *(v7 + 8 * v8++ + 32) = 0;
      --v9;
    }

    while (v9);
    if (v3 > v11 - 1)
    {
      __break(1u);
      goto LABEL_13;
    }

    *(v7 + 32 + 8 * v3) = *(v4 + 8 * v3);
    result = sub_2520806CC(v7);
    ++v3;
  }

  while (v5 != v1);
  if ((v1 * v1) >> 64 != (v1 * v1) >> 63)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v12;
  if (*(v12 + 16) == v1 * v1)
  {
    return v2;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_2520806CC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_252099194(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2520807B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(result + 16);
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    goto LABEL_34;
  }

  v3 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v9 = *(v5 + 24) >> 1, v9 < v7))
  {
    if (v6 <= v7)
    {
      v10 = v6 + v4;
    }

    else
    {
      v10 = v6;
    }

    result = sub_252099194(result, v10, 1, v5);
    v5 = result;
    v9 = *(result + 24) >> 1;
  }

  v6 = *(v5 + 16);
  a2 = v9 - v6;
  if (v9 != v6)
  {
    if (a2 >= 1)
    {
      v11 = *(v3 + 16);
      if (v11)
      {
        v12 = (v5 + 8 * v6 + 32);
        v13 = v9 + ~v6;
        if (v11 - 1 < v13)
        {
          v13 = v11 - 1;
        }

        v14 = v13 + 1;
        if (v14 > 6 && (v15 = 8 * v6 + v5, (v15 - v3) >= 0x20))
        {
          v18 = v14 & 3;
          if ((v14 & 3) == 0)
          {
            v18 = 4;
          }

          v16 = v14 - v18;
          v17 = v16 + 1;
          v12 += v16;
          v19 = (v3 + 48);
          v20 = (v15 + 48);
          v21 = v16;
          do
          {
            v22 = *v19;
            *(v20 - 1) = *(v19 - 1);
            *v20 = v22;
            v19 += 2;
            v20 += 2;
            v21 -= 4;
          }

          while (v21);
        }

        else
        {
          v16 = 0;
          v17 = 1;
        }

        while (1)
        {
          *v12 = *(v3 + 32 + 8 * v16);
          if (a2 == v17)
          {
            break;
          }

          v16 = v17;
          ++v12;
          if (v11 + 1 == ++v17)
          {
            goto LABEL_26;
          }
        }

        v11 = a2;
      }

LABEL_26:
      if (v11 >= v4)
      {
        if (v11 > 0)
        {
          v23 = __OFADD__(v6, v11);
          v6 += v11;
          if (v23)
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          *(v5 + 16) = v6;
        }

        goto LABEL_30;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v4)
  {
    goto LABEL_35;
  }

  v11 = 0;
LABEL_30:
  if (v11 != a2)
  {
LABEL_31:

    goto LABEL_32;
  }

LABEL_36:
  v24 = *(v3 + 16);
  if (a2 == v24)
  {
    goto LABEL_31;
  }

  if (a2 >= v24)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  v25 = v3 + 32;
  v26 = a2 + 1;
  v27 = *(v3 + 32 + 8 * a2);
LABEL_40:
  while (1)
  {
    v28 = *(v5 + 24);
    v29 = v28 >> 1;
    if ((v28 >> 1) < v6 + 1)
    {
      break;
    }

    v30 = v29 - v6;
    if (v29 > v6)
    {
      goto LABEL_42;
    }

LABEL_39:
    *(v5 + 16) = v6;
  }

  v32 = v5;
  v35 = v25;
  v33 = v26;
  v34 = v27;
  result = sub_252099194((v28 > 1), v6 + 1, 1, v32);
  v27 = v34;
  v26 = v33;
  v25 = v35;
  v5 = result;
  v29 = *(result + 24) >> 1;
  v30 = v29 - v6;
  if (v29 <= v6)
  {
    goto LABEL_39;
  }

LABEL_42:
  v31 = 0;
  while (1)
  {
    *(v5 + 8 * v6 + 32 + 8 * v31) = v27;
    if (v24 - v26 == v31)
    {
      break;
    }

    if (v26 < 0)
    {
      goto LABEL_52;
    }

    if ((v26 + v31) >= *(v3 + 16))
    {
      goto LABEL_53;
    }

    v27 = *(v25 + 8 * v26 + 8 * v31++);
    if (v30 == v31)
    {
      v26 += v31;
      v6 = v29;
      *(v5 + 16) = v29;
      goto LABEL_40;
    }
  }

  *(v5 + 16) = v6 + v31 + 1;
LABEL_32:
  *v2 = v5;
  return result;
}

uint64_t HTAudiometry.testEnded.getter()
{
  v1 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_252080AA0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
  return sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);
}

uint64_t HTAudiometry.testEnded.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
  return sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);
}

uint64_t sub_252080BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252141A4C();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_252141A8C();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25209D56C();
  v12 = sub_252141FFC();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_252141A6C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2520A2ED4(&qword_27F4CE090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDCB0, &qword_252143DE0);
  sub_2520A2F1C(&qword_27F4CE0A0, &qword_27F4CDCB0, &qword_252143DE0);
  sub_25214218C();
  MEMORY[0x2530991B0](0, v11, v7, v14);
  _Block_release(v14);

  (*(v17 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v16);
}

uint64_t (*HTAudiometry.testEnded.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_252080F00;
}

uint64_t sub_252080F00(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
    return sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);
  }

  return result;
}

uint64_t HTAudiometry.previousAudiogram.getter()
{
  v1 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t HTAudiometry.previousAudiogram.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  result = *(v1 + v3);
  if (*(result + 16))
  {

    v7 = sub_25208F534(v6);
    v8 = sub_25209D27C(*(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies), v7);

    if (v8)
    {
      return sub_252094B04();
    }
  }

  return result;
}

void (*HTAudiometry.previousAudiogram.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_2520810D8;
}

void sub_2520810D8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(*(v4 + v3[4]) + 16))
    {

      v6 = sub_25208F534(v5);
      v7 = sub_25209D27C(*(v4 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies), v6);

      if (v7)
      {
        v8 = v3[3];
        sub_252094B04();
      }
    }
  }

  free(v3);
}

uint64_t HTAudiometry.state.setter(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  sub_252081908(a1);
  return sub_25209D35C(v4);
}

uint64_t _s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel);
  v5 = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  result = sub_25214200C();
  v7 = v69;
  if (v69 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v60 = a1;
  v8 = v70;
  v9 = swift_allocObject();
  v9[2] = v68;
  v9[3] = v7;
  v9[4] = v8;
  v10 = swift_allocObject();
  v57 = v4;
  *(v10 + 16) = v4;
  v11 = swift_allocObject();
  v11[2] = sub_2520A2C64;
  v11[3] = v10;
  v11[4] = 0;
  v11[5] = v7;
  v11[6] = sub_2520A2C48;
  v11[7] = v9;
  MEMORY[0x28223BE20](v11);
  result = sub_25214200C();
  v12 = v69;
  if (v69 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = v70;
  v14 = swift_allocObject();
  v14[2] = v68;
  v14[3] = v12;
  v14[4] = v13;
  v15 = swift_allocObject();
  v15[2] = sub_25209446C;
  v15[3] = 0;
  v15[4] = 0;
  v15[5] = v12;
  v15[6] = sub_2520A3750;
  v15[7] = v14;
  v68 = 0;
  v69 = v7;
  v70 = sub_2520A2C70;
  v71 = v11;
  v72 = 0;
  v73 = v12;
  v74 = sub_2520A2D28;
  v75 = v15;

  v16 = sub_252094570(&v68);

  MEMORY[0x28223BE20](v17);
  result = sub_25214200C();
  v18 = *(&v64 + 1);
  if ((*(&v64 + 1) & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  v59 = v16;
  v62 = v2;
  v19 = v65;
  v20 = swift_allocObject();
  v20[2] = v64;
  v20[3] = v18;
  v20[4] = v19;
  v21 = sub_2521124C0(0, v18, sub_2520A3750);

  v22 = *(v21 + 2);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v67 = MEMORY[0x277D84F90];
    result = sub_25209B254(0, v22, 0);
    v24 = 0;
    v25 = v67;
    v26 = v21 + 48;
    v27 = v57;
    while (v24 < *(v21 + 2))
    {
      v63[0] = *(v26 - 1);
      v63[1] = *v26;
      v28 = v25;
      result = sub_25209497C(v63, v27, &v64);
      v25 = v28;
      v29 = v64;
      v30 = v65;
      v31 = *(&v65 + 1);
      v32 = v66;
      v67 = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        v56 = v64;
        result = sub_25209B254((v33 > 1), v34 + 1, 1);
        v29 = v56;
        v27 = v57;
        v25 = v67;
      }

      *(v25 + 16) = v34 + 1;
      v35 = v25 + 40 * v34;
      *(v35 + 32) = v29;
      ++v24;
      *(v35 + 48) = v30;
      *(v35 + 56) = v31;
      *(v35 + 64) = v32;
      v26 += 2;
      if (v22 == v24)
      {
        v36 = v25;

        v23 = MEMORY[0x277D84F90];
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_12:
  MEMORY[0x28223BE20](v37);
  result = sub_25214200C();
  v38 = *(&v64 + 1);
  if ((*(&v64 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_30;
  }

  v39 = v64;
  v40 = v65;
  v41 = swift_allocObject();
  v41[2] = v39;
  v41[3] = v38;
  v41[4] = v40;
  v42 = sub_2521124C0(0, v38, sub_2520A3750);

  v43 = *(v42 + 2);
  if (v43)
  {
    *&v64 = v23;
    result = sub_25209B234(0, v43, 0);
    v44 = v64;
    v45 = v42 + 56;
    do
    {
      v46 = *(v45 - 1);
      v47 = *v45 >> 1;
      if (v46 == v47)
      {
        v48 = 0;
      }

      else
      {
        if (v46 >= v47)
        {
          goto LABEL_26;
        }

        v48 = *(*(v45 - 2) + 8 * v46) == 1.0;
      }

      *&v64 = v44;
      v50 = *(v44 + 16);
      v49 = *(v44 + 24);
      if (v50 >= v49 >> 1)
      {
        result = sub_25209B234((v49 > 1), v50 + 1, 1);
        v44 = v64;
      }

      v45 += 4;
      *(v44 + 16) = v50 + 1;
      *(v44 + v50 + 32) = v48;
      --v43;
    }

    while (v43);
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  v52 = sub_25214200C();
  v61 = v64;
  v58 = v65;
  MEMORY[0x28223BE20](v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
  sub_25214200C();

  v53 = *&v63[0];
  v54 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
  swift_beginAccess();
  v55 = *(v62 + v54);
  *v60 = v61;
  *(v60 + 16) = v58;
  *(v60 + 32) = v59;
  *(v60 + 40) = v36;
  *(v60 + 48) = v44;
  *(v60 + 56) = v53;
  *(v60 + 64) = v55;
}

uint64_t sub_252081908(uint64_t a1)
{
  swift_getObjectType();
  v180 = *a1;
  v182 = *(a1 + 16);
  v3 = *(a1 + 40);
  v178 = *(a1 + 32);
  v4 = *(a1 + 56);
  v177 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = 1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2520A375C;
  *(v8 + 24) = v7;
  v185 = sub_2520A3768;
  v186 = v8;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1062;
  v9 = _Block_copy(&aBlock);
  v10 = v1;

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v176 = v5;
  aBlock = v180;
  v184 = v182;
  sub_252084B80(&aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2520A3620;
  *(v12 + 24) = v11;
  v185 = sub_2520A3768;
  v186 = v12;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1073;
  v13 = _Block_copy(&aBlock);
  v181 = v6;
  v7 = v10;

  v14 = v6;

  dispatch_sync(v6, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    swift_once();
    v99 = sub_25214198C();
    __swift_project_value_buffer(v99, qword_27F4CDE68);
    v100 = v4;
    v101 = sub_25214196C();
    v102 = sub_252141FBC();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&aBlock = v105;
      *v103 = 136446466;
      v106 = sub_2521425DC();
      v108 = sub_2520A5448(v106, v107, &aBlock);

      *(v103 + 4) = v108;
      *(v103 + 12) = 2112;
      v109 = v4;
      v110 = _swift_stdlib_bridgeErrorToNSError();
      *(v103 + 14) = v110;
      *v104 = v110;
      _os_log_impl(&dword_25207E000, v101, v102, "[%{public}s] Error during getColumn in setState: %@", v103, 0x16u);
      sub_2520A2584(v104, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v104, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x253099FD0](v105, -1, -1);
      MEMORY[0x253099FD0](v103, -1, -1);
    }

    v111 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
    swift_beginAccess();
    *(v7 + v111) = 1;
LABEL_54:
    sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
    sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);

LABEL_85:
    sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
    return sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);
  }

  v4 = *(v178 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v4)
  {
    *&aBlock = MEMORY[0x277D84F90];
    sub_25209B2D4(0, v4, 0);
    v16 = aBlock;
    v17 = (v178 + 40);
    v18 = v4;
    do
    {
      v19 = *(v17 - 1);
      v20 = *v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_252143AB0;
      *(v21 + 32) = v19;
      *(v21 + 40) = v20;
      *&aBlock = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        v174 = v21;
        sub_25209B2D4((v22 > 1), v23 + 1, 1);
        v21 = v174;
        v16 = aBlock;
      }

      *(v16 + 16) = v23 + 1;
      *(v16 + 8 * v23 + 32) = v21;
      v17 += 5;
      v18 = (v18 - 1);
    }

    while (v18);
    v14 = v181;
  }

  v24 = sub_252110D1C(v16);
  v26 = v25;
  v28 = v27;
  v29 = swift_allocObject();
  v29[2] = v7;
  v29[3] = v24;
  v29[4] = v26;
  v29[5] = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_2520A351C;
  *(v30 + 24) = v29;
  v185 = sub_2520A3768;
  v186 = v30;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1084;
  v31 = _Block_copy(&aBlock);
  v7 = v7;

  dispatch_sync(v14, v31);
  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    goto LABEL_89;
  }

  v32 = MEMORY[0x277D84F90];
  if (v4)
  {
    *&aBlock = MEMORY[0x277D84F90];
    sub_25209B2D4(0, v4, 0);
    v32 = aBlock;
    v33 = (v178 + 64);
    v34 = v4;
    do
    {
      v35 = *v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_252143AC0;
      if (v35)
      {
        v37 = 1.0;
      }

      else
      {
        v37 = 0.0;
      }

      *(v36 + 32) = v37;
      *&aBlock = v32;
      v39 = *(v32 + 16);
      v38 = *(v32 + 24);
      if (v39 >= v38 >> 1)
      {
        v175 = v36;
        sub_25209B2D4((v38 > 1), v39 + 1, 1);
        v36 = v175;
        v32 = aBlock;
      }

      *(v32 + 16) = v39 + 1;
      *(v32 + 8 * v39 + 32) = v36;
      v33 += 40;
      v34 = (v34 - 1);
    }

    while (v34);
    v14 = v181;
  }

  v40 = sub_252110D1C(v32);
  v42 = v41;
  v44 = v43;
  v45 = swift_allocObject();
  v45[2] = v7;
  v45[3] = v40;
  v45[4] = v42;
  v45[5] = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_2520A3528;
  *(v46 + 24) = v45;
  v185 = sub_2520A3768;
  v186 = v46;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1095;
  v47 = _Block_copy(&aBlock);
  v7 = v7;

  dispatch_sync(v14, v47);
  _Block_release(v47);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
    goto LABEL_90;
  }

  v48 = *(v3 + 16);
  v49 = MEMORY[0x277D84F90];
  if (v48)
  {
    *&aBlock = MEMORY[0x277D84F90];
    sub_25209B2D4(0, v48, 0);
    v49 = aBlock;
    v50 = (v3 + 64);
    do
    {
      v51 = *(v50 - 4);
      v52 = *(v50 - 3);
      v53 = *v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_252143AD0;
      *(v54 + 32) = v51;
      *(v54 + 40) = v52;
      *(v54 + 48) = v53;
      *&aBlock = v49;
      v56 = *(v49 + 16);
      v55 = *(v49 + 24);
      if (v56 >= v55 >> 1)
      {
        v57 = v54;
        sub_25209B2D4((v55 > 1), v56 + 1, 1);
        v54 = v57;
        v49 = aBlock;
      }

      v50 += 5;
      *(v49 + 16) = v56 + 1;
      *(v49 + 8 * v56 + 32) = v54;
      --v48;
    }

    while (v48);
    v14 = v181;
  }

  v58 = sub_252110D1C(v49);
  v60 = v59;
  v62 = v61;
  v63 = swift_allocObject();
  v63[2] = v7;
  v63[3] = v58;
  v63[4] = v60;
  v63[5] = v62;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2520A36A8;
  *(v64 + 24) = v63;
  v185 = sub_2520A3768;
  v186 = v64;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1106;
  v65 = _Block_copy(&aBlock);
  v7 = v7;

  dispatch_sync(v14, v65);
  _Block_release(v65);
  LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

  if (v65)
  {
    goto LABEL_91;
  }

  v66 = *(v177 + 16);
  v67 = MEMORY[0x277D84F90];
  if (v66)
  {
    *&aBlock = MEMORY[0x277D84F90];
    sub_25209B2D4(0, v66, 0);
    v67 = aBlock;
    v68 = (v177 + 32);
    do
    {
      v69 = *v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_252143AC0;
      if (v69)
      {
        v71 = 1.0;
      }

      else
      {
        v71 = 0.0;
      }

      *(v70 + 32) = v71;
      *&aBlock = v67;
      v73 = *(v67 + 16);
      v72 = *(v67 + 24);
      if (v73 >= v72 >> 1)
      {
        v74 = v70;
        sub_25209B2D4((v72 > 1), v73 + 1, 1);
        v70 = v74;
        v67 = aBlock;
      }

      *(v67 + 16) = v73 + 1;
      *(v67 + 8 * v73 + 32) = v70;
      ++v68;
      --v66;
    }

    while (v66);
    v14 = v181;
  }

  v75 = sub_252110D1C(v67);
  v77 = v76;
  v79 = v78;
  v80 = swift_allocObject();
  v80[2] = v7;
  v80[3] = v75;
  v80[4] = v77;
  v80[5] = v79;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_2520A3534;
  *(v81 + 24) = v80;
  v185 = sub_2520A3768;
  v186 = v81;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1117;
  v82 = _Block_copy(&aBlock);
  v7 = v7;

  dispatch_sync(v14, v82);
  _Block_release(v82);
  LOBYTE(v82) = swift_isEscapingClosureAtFileLocation();

  if (v82)
  {
    goto LABEL_92;
  }

  v83 = MEMORY[0x277D84F90];
  if (v4)
  {
    *&aBlock = MEMORY[0x277D84F90];
    sub_25209B234(0, v4, 0);
    v84 = aBlock;
    v85 = (v178 + 64);
    v86 = *(aBlock + 16);
    do
    {
      v87 = *v85;
      *&aBlock = v84;
      v88 = *(v84 + 24);
      if (v86 >= v88 >> 1)
      {
        sub_25209B234((v88 > 1), v86 + 1, 1);
        v84 = aBlock;
      }

      *(v84 + 16) = v86 + 1;
      *(v84 + v86 + 32) = v87;
      v85 += 40;
      ++v86;
      v4 = (v4 - 1);
    }

    while (v4);
  }

  else
  {
    v84 = MEMORY[0x277D84F90];
  }

  v89 = swift_allocObject();
  *(v89 + 16) = v7;
  *(v89 + 24) = v84;
  v4 = swift_allocObject();
  v4[2] = sub_2520A36BC;
  v4[3] = v89;
  v185 = sub_2520A3768;
  v186 = v4;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1128;
  v90 = _Block_copy(&aBlock);
  v7 = v7;

  dispatch_sync(v14, v90);
  _Block_release(v90);
  LOBYTE(v90) = swift_isEscapingClosureAtFileLocation();

  if (v90)
  {
    goto LABEL_93;
  }

  MEMORY[0x28223BE20](v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
  v4 = 0;
  sub_25214200C();
  v92 = *(aBlock + 16);

  if (v92)
  {
    v94 = swift_allocObject();
    *(v94 + 16) = v7;
    *(v94 + 24) = 0;
    v95 = swift_allocObject();
    *(v95 + 16) = sub_2520A3758;
    *(v95 + 24) = v94;
    v185 = sub_2520A3768;
    v186 = v95;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v184 = sub_252083924;
    *(&v184 + 1) = &block_descriptor_1140;
    v96 = _Block_copy(&aBlock);
    v4 = v7;

    dispatch_sync(v14, v96);
    _Block_release(v96);
    v97 = swift_isEscapingClosureAtFileLocation();

    if ((v97 & 1) == 0)
    {
      if (v176)
      {
        if (*(v176 + 16))
        {

          HTAudiometry.previousAudiogram.setter(v98);
        }
      }

      goto LABEL_85;
    }

    goto LABEL_94;
  }

  MEMORY[0x28223BE20](v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();
  v112 = sub_2520EEE44(0, aBlock, *(&aBlock + 1), v184);
  v179 = v7;

  v113 = *(v112 + 16);
  if (v113)
  {
    *&aBlock = v83;
    sub_25209B1F4(0, v113, 0);
    v7 = 32;
    v114 = aBlock;
    while (1)
    {
      v115 = *(v112 + v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252143AC0;
      *(inited + 32) = v115;
      MEMORY[0x28223BE20](inited);
      v117 = sub_2520AABEC(1, sub_2520A3B60);
      swift_setDeallocating();
      MEMORY[0x28223BE20](*(v117 + 16));
      v119 = sub_2520AABEC(v118, sub_2520A3344);

      MEMORY[0x28223BE20](*(v119 + 16));
      v121 = sub_2520AABEC(v120, sub_2520A3B48);

      if (!*(v121 + 16))
      {
        break;
      }

      v122 = *(v121 + 32);

      *&aBlock = v114;
      v124 = *(v114 + 16);
      v123 = *(v114 + 24);
      if (v124 >= v123 >> 1)
      {
        sub_25209B1F4((v123 > 1), v124 + 1, 1);
        v114 = aBlock;
      }

      *(v114 + 16) = v124 + 1;
      *(v114 + 8 * v124 + 32) = round(v122);
      v7 += 8;
      if (!--v113)
      {

        v14 = v181;
        goto LABEL_63;
      }
    }

    __break(1u);
    goto LABEL_87;
  }

  v114 = MEMORY[0x277D84F90];
LABEL_63:
  v125 = *(v114 + 16);
  v126 = v125 == 0;
  v127 = 0;
  if (v125)
  {
    v128 = *&v179[OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies];
    v129 = *(v128 + 16);
    v130 = (v128 + 32);
LABEL_65:
    v131 = v129;
    v132 = v130;
    while (v131)
    {
      v133 = *v132++;
      --v131;
      if (v133 == *(v114 + 32 + 8 * v127))
      {
        v126 = ++v127 == v125;
        if (v127 != v125)
        {
          goto LABEL_65;
        }

        v127 = 0;
        break;
      }
    }
  }

  MEMORY[0x28223BE20](v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAA0, &unk_2521451D0);
  v135 = sub_25214200C();
  v136 = aBlock;
  if (v126)
  {
    MEMORY[0x28223BE20](v135);
    sub_25214200C();
    v127 = *(aBlock + 16);
  }

  v137 = *(v136 + 2);
  if (v137 < v127)
  {
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    swift_once();
    v147 = sub_25214198C();
    __swift_project_value_buffer(v147, qword_27F4CDE68);
    v148 = 0;
    v149 = sub_25214196C();
    v150 = sub_252141FBC();

    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *&aBlock = v153;
      *v151 = 136446466;
      v154 = sub_2521425DC();
      v156 = sub_2520A5448(v154, v155, &aBlock);

      *(v151 + 4) = v156;
      *(v151 + 12) = 2112;
      v157 = 0;
      v158 = _swift_stdlib_bridgeErrorToNSError();
      *(v151 + 14) = v158;
      *v152 = v158;
      _os_log_impl(&dword_25207E000, v149, v150, "[%{public}s] Error during checkCoverage in setState: %@", v151, 0x16u);
      sub_2520A2584(v152, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v152, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v153);
      MEMORY[0x253099FD0](v153, -1, -1);
      MEMORY[0x253099FD0](v151, -1, -1);
    }

    v159 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
    swift_beginAccess();
    v136[v159] = 1;
    goto LABEL_54;
  }

  if (v137 != v127)
  {
    sub_252098F14(v136, (v136 + 32), 0, (2 * v127) | 1);
    v139 = v138;

    v136 = v139;
  }

  v140 = swift_allocObject();
  *(v140 + 16) = v179;
  *(v140 + 24) = v136;
  v136 = swift_allocObject();
  *(v136 + 2) = sub_2520A36BC;
  *(v136 + 3) = v140;
  v185 = sub_2520A3768;
  v186 = v136;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1157;
  v141 = _Block_copy(&aBlock);
  v142 = v179;

  dispatch_sync(v14, v141);
  _Block_release(v141);
  LOBYTE(v141) = swift_isEscapingClosureAtFileLocation();

  if (v141)
  {
    goto LABEL_96;
  }

  v143 = swift_allocObject();
  *(v143 + 16) = v142;
  *(v143 + 24) = 1;
  v144 = swift_allocObject();
  *(v144 + 16) = sub_2520A3758;
  *(v144 + 24) = v143;
  v185 = sub_2520A3768;
  v186 = v144;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1168;
  v145 = _Block_copy(&aBlock);
  v136 = v142;

  dispatch_sync(v14, v145);
  _Block_release(v145);
  LOBYTE(v145) = swift_isEscapingClosureAtFileLocation();

  if (v145)
  {
    goto LABEL_97;
  }

  MEMORY[0x28223BE20](v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  sub_25214200C();
  if (v184 != 2)
  {
    goto LABEL_85;
  }

  v160 = sub_25208F62C(2, 2, 2.2, 12.5);
  v162 = v161;
  v164 = v163;

  sub_252085D18(v165, v162, v164);

  v166 = sub_252090F78(v160, v162, v164);

  if (v166)
  {
    goto LABEL_85;
  }

  v167 = swift_allocObject();
  *(v167 + 16) = v136;
  *(v167 + 24) = 1065353216;
  v168 = swift_allocObject();
  *(v168 + 16) = sub_2520A344C;
  *(v168 + 24) = v167;
  v185 = sub_2520A3768;
  v186 = v168;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v184 = sub_252083924;
  *(&v184 + 1) = &block_descriptor_1180;
  v169 = _Block_copy(&aBlock);
  v170 = v136;

  dispatch_sync(v14, v169);
  _Block_release(v169);
  v171 = swift_isEscapingClosureAtFileLocation();

  if ((v171 & 1) == 0)
  {
    sub_252091D3C();
    v173 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
    swift_beginAccess();
    v170[v173] = 1;
    sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
    sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);
    goto LABEL_85;
  }

  __break(1u);
  return result;
}

void (*HTAudiometry.state.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  *a1 = v3;
  *(v3 + 288) = v1;
  _s11HearingTest12HTAudiometryC5stateAA09HTHearingB5StateVvg_0(v3);
  return sub_2520834C8;
}

void sub_2520834C8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[1];
    v5 = v2[2];
    v4 = v2[3];
    v2[11] = v5;
    v2[12] = v4;
    v6 = v2[1];
    v7 = *v2;
    v2[9] = *v2;
    v2[10] = v6;
    v8 = v2[3];
    v19 = v5;
    v20 = v8;
    v9 = *(v2 + 36);
    *(v2 + 26) = *(v2 + 8);
    v21 = *(v2 + 8);
    v17 = v7;
    v18 = v3;
    sub_25209D3B0((v2 + 9), v2 + 216);
    sub_252081908(&v17);
    sub_25209D35C((v2 + 9));
    v10 = *v2;
    *(v2 + 88) = v2[1];
    v11 = v2[3];
    *(v2 + 104) = v2[2];
    *(v2 + 120) = v11;
    *(v2 + 17) = *(v2 + 8);
    *(v2 + 72) = v10;
  }

  else
  {
    v12 = *v2;
    *(v2 + 88) = v2[1];
    v13 = v2[1];
    *(v2 + 104) = v2[2];
    v14 = v2[2];
    *(v2 + 120) = v2[3];
    *(v2 + 72) = *v2;
    v15 = v2[3];
    v19 = v14;
    v20 = v15;
    v16 = *(v2 + 36);
    *(v2 + 17) = *(v2 + 8);
    v21 = *(v2 + 8);
    v17 = v12;
    v18 = v13;
    sub_252081908(&v17);
  }

  sub_25209D35C(v2 + 72);

  free(v2);
}

uint64_t HTAudiometry.initialSampleEnded.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  sub_25214200C();
  return v3;
}

uint64_t sub_252083640(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520A3758;
  *(v6 + 24) = v5;
  v10[4] = sub_2520A3768;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_532;
  v7 = _Block_copy(v10);
  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t HTAudiometry.initialSampleEnded.setter(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_25209D45C;
  *(v5 + 24) = v4;
  v10[4] = sub_25209D474;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*HTAudiometry.initialSampleEnded.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  MEMORY[0x28223BE20](v3);
  sub_25214200C();
  v4[64] = *v4;
  return sub_252083A2C;
}

void sub_252083A2C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 48);
  isEscapingClosureAtFileLocation = *(*a1 + 56);
  if (a2)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    v3 = v7;
    *(v7 + 16) = sub_2520A3758;
    *(v7 + 24) = v6;
    v2[4] = sub_2520A3768;
    v2[5] = v7;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_252083924;
    v2[3] = &block_descriptor_16;
    v8 = _Block_copy(v2);
    v9 = v2[5];
    v10 = v5;

    dispatch_sync(isEscapingClosureAtFileLocation, v8);
    _Block_release(v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2520A3758;
  *(v12 + 24) = v11;
  v2[4] = sub_2520A3768;
  v2[5] = v12;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_252083924;
  v2[3] = &block_descriptor_27;
  v13 = _Block_copy(v2);
  v14 = v2[5];
  v15 = v5;

  dispatch_sync(isEscapingClosureAtFileLocation, v13);
  _Block_release(v13);
  v16 = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
    return;
  }

LABEL_5:

  free(v2);
}

uint64_t sub_252083CC0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520A3460;
  *(v6 + 24) = v5;
  v10[4] = sub_2520A3768;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_520;
  v7 = _Block_copy(v10);

  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t HTAudiometry.fitMatrix.setter(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_25209D528;
  *(v5 + 24) = v4;
  v10[4] = sub_2520A3768;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_37;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*HTAudiometry.fitMatrix.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD950, &qword_252143B40);
  sub_25214200C();
  v4[6] = *v4;
  return sub_252084080;
}

void sub_252084080(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 48);
  v3 = *v4;
  v6 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  if ((a2 & 1) == 0)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = v3;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_2520A3460;
    *(v15 + 24) = v14;
    v2[4] = sub_2520A3768;
    v2[5] = v15;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_252083924;
    v2[3] = &block_descriptor_60;
    v16 = _Block_copy(v2);
    v17 = v2[5];
    v18 = v6;

    dispatch_sync(v5, v16);
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2520A3460;
  *(v8 + 24) = v7;
  v2[4] = sub_2520A3768;
  v2[5] = v8;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_252083924;
  v2[3] = &block_descriptor_49;
  v9 = _Block_copy(v2);
  v10 = v2[5];
  v11 = v6;

  dispatch_sync(v5, v9);
  _Block_release(v9);
  v12 = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = *v4;

LABEL_5:

  free(v2);
}

uint64_t sub_25208432C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD950, &qword_252143B40);
  sub_25214200C();
  return v3;
}

uint64_t sub_2520843A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD950, &qword_252143B40);
  result = sub_25214200C();
  *a2 = v5;
  return result;
}

uint64_t sub_25208441C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2520A347C;
  *(v6 + 24) = v5;
  v10[4] = sub_2520A3768;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_508;
  v7 = _Block_copy(v10);

  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t HTAudiometry.maskingMatrix.setter(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_25209D560;
  *(v5 + 24) = v4;
  v10[4] = sub_2520A3768;
  v10[5] = v5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_252083924;
  v10[3] = &block_descriptor_70;
  v6 = _Block_copy(v10);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void (*HTAudiometry.maskingMatrix.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 64) = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD950, &qword_252143B40);
  sub_25214200C();
  v4[6] = *v4;
  return sub_2520847DC;
}

void sub_2520847DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 48);
  v3 = *v4;
  v6 = *(*a1 + 56);
  v5 = *(*a1 + 64);
  if ((a2 & 1) == 0)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v6;
    *(v14 + 24) = v3;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_2520A347C;
    *(v15 + 24) = v14;
    v2[4] = sub_2520A3768;
    v2[5] = v15;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_252083924;
    v2[3] = &block_descriptor_94;
    v16 = _Block_copy(v2);
    v17 = v2[5];
    v18 = v6;

    dispatch_sync(v5, v16);
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2520A347C;
  *(v8 + 24) = v7;
  v2[4] = sub_2520A3768;
  v2[5] = v8;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_252083924;
  v2[3] = &block_descriptor_83;
  v9 = _Block_copy(v2);
  v10 = v2[5];
  v11 = v6;

  dispatch_sync(v5, v9);
  _Block_release(v9);
  v12 = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = *v4;

LABEL_5:

  free(v2);
}

uint64_t sub_252084A70@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry__statusProvider);
  v4 = *(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry__statusProvider + 8);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2520A2FE0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2520A283C(v3);
}

uint64_t sub_252084AF8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry__statusProviderV2);
  v4 = *(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry__statusProviderV2 + 8);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2520A2FE0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2520A283C(v3);
}

uint64_t sub_252084B80(__int128 *a1)
{
  v3 = sub_252141A8C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252141A4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  sub_252141A3C();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = *a1;
  *(v15 + 40) = a1[1];
  *(v15 + 24) = v16;
  aBlock[4] = sub_2520A2B64;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2520A3B78;
  aBlock[3] = &block_descriptor_1051;
  v17 = _Block_copy(aBlock);

  sub_252141A6C();
  MEMORY[0x2530991B0](0, v7, v12, v17);
  _Block_release(v17);
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

void sub_252084DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = &Strong[OBJC_IVAR____TtC11HearingTest12HTAudiometry__stimulus];
    *v10 = a2;
    *(v10 + 1) = a3;
    *(v10 + 2) = a4;
    *(v10 + 3) = a5;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_252080BC4(sub_2520A3008, &block_descriptor_1303);
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_252080BC4(sub_2520A2ECC, &block_descriptor_1269);
  }
}

void HTAudiometry.__allocating_init(channel:)(unsigned __int8 *a1)
{
  v3 = *a1;
  v2 = objc_allocWithZone(v1);
  HTAudiometry.init(channel:initialLevel:minLevel:maxLevel:frequencies:kernelLength:)(&v3, &unk_28644C0A0, 60.0, -10.0, 85.0, 4.0);
}

void HTAudiometry.__allocating_init(channel:initialLevel:minLevel:maxLevel:frequencies:)(unsigned __int8 *a1, uint64_t a2, double a3, double a4, double a5)
{
  v11 = *a1;
  v10 = objc_allocWithZone(v5);
  HTAudiometry.init(channel:initialLevel:minLevel:maxLevel:frequencies:kernelLength:)(&v11, a2, a3, a4, a5, 4.0);
}

void HTAudiometry.init(channel:initialLevel:minLevel:maxLevel:frequencies:kernelLength:)(unsigned __int8 *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v95 = a2;
  ObjectType = swift_getObjectType();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD958, &qword_252143B48);
  v93 = *(v94 - 8);
  v13 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = v88 - v14;
  *&v91 = sub_252141FEC();
  v90 = *(v91 - 8);
  v15 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_252141FCC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v88[1] = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_252141A8C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v96 = *a1;
  v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded] = 0;
  v22 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
  v23 = MEMORY[0x277D84F90];
  *&v6[v22] = sub_25209CA3C(MEMORY[0x277D84F90]);
  v24 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v25 = sub_252141B6C();
  v26 = [v24 initWithSuiteName_];

  if (!v26)
  {
    goto LABEL_41;
  }

  v27 = sub_252141B6C();
  v28 = [v26 integerForKey_];

  v29 = 85;
  if (v28)
  {
    v29 = v28;
  }

  *&v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxSampleCount] = v29;
  *&v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxProgress] = 1063675494;
  v88[0] = OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue;
  sub_25209D56C();
  sub_252141A6C();
  *&aBlock = v23;
  sub_2520A2ED4(&qword_27F4CE0E0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD970, &qword_252143B50);
  sub_2520A2F1C(&qword_27F4CE0F0, &qword_27F4CD970, &qword_252143B50);
  sub_25214218C();
  (*(v90 + 104))(v89, *MEMORY[0x277D85260], v91);
  *&v6[v88[0]] = sub_25214202C();
  *&v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry__theta] = &unk_28644C040;
  v30 = &v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry__xSample];
  *v30 = v23;
  *(v30 + 8) = xmmword_252143AE0;
  v31 = &v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry__ySample];
  *v31 = v23;
  *(v31 + 8) = xmmword_252143AF0;
  v32 = &v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry__maskedSample];
  *v32 = v23;
  *(v32 + 8) = xmmword_252143AF0;
  v33 = &v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry__deleted];
  *v33 = v23;
  *(v33 + 8) = xmmword_252143B00;
  v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry__initialSampleEnded] = 0;
  *&v6[OBJC_IVAR____TtC11HearingTest12HTAudiometry__lastProgress] = 0;
  v34 = OBJC_IVAR____TtC11HearingTest12HTAudiometry__fitMatrix;
  *&v7[v34] = sub_25209C938(v23);
  v35 = OBJC_IVAR____TtC11HearingTest12HTAudiometry__maskingMatrix;
  *&v7[v35] = sub_25209C938(v23);
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__stateHistory] = v23;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__count] = 0;
  HTHearingTestMetrics.init()(&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__metrics]);
  HTHearingTestMetricsV2.init()(&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__metricsV2]);
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__earlyTaps] = 0;
  v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__initialSamplingTermination] = 0;
  v36 = MEMORY[0x277D84F98];
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__results] = MEMORY[0x277D84F98];
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__masking] = v36;
  v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__preStimulusResponse] = 1;
  v37 = OBJC_IVAR____TtC11HearingTest12HTAudiometry___monitoredStimulus;
  aBlock = 0uLL;
  v91 = xmmword_252143B10;
  v99 = xmmword_252143B10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  v38 = v92;
  sub_2521419BC();
  (*(v93 + 32))(&v7[v37], v38, v94);
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__cancellables] = MEMORY[0x277D84FA0];
  v39 = &v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__statusProvider];
  *v39 = 0;
  v39[1] = 0;
  v40 = &v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__statusProviderV2];
  *v40 = 0;
  v40[1] = 0;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__initialSamples] = v23;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__testFs] = v23;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__revFs] = v23;
  v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__isFastTap] = 0;
  v41 = &v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry__stimulus];
  *v41 = 0;
  *(v41 + 1) = 0;
  *(v41 + 1) = v91;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry_initialLevel] = a3;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel] = a4;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel] = a5;
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry_kernelLength] = a6;
  v42 = v95;
  v43 = *(v95 + 16);
  if (v43)
  {
    v44 = 0;
    v45 = MEMORY[0x277D84F90];
    do
    {
      v46 = *(v42 + 32 + 8 * v44);
      v47 = *(v45 + 2);
      v48 = v47;
      v49 = 32;
      while (v48)
      {
        v50 = *&v45[v49];
        v49 += 8;
        --v48;
        if (v50 == v46)
        {
          goto LABEL_7;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_252099194(0, v47 + 1, 1, v45);
      }

      v52 = *(v45 + 2);
      v51 = *(v45 + 3);
      if (v52 >= v51 >> 1)
      {
        v45 = sub_252099194((v51 > 1), v52 + 1, 1, v45);
      }

      *(v45 + 2) = v52 + 1;
      *&v45[8 * v52 + 32] = v46;
LABEL_7:
      ++v44;
    }

    while (v44 != v43);
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies] = v45;
  *&aBlock = v45;

  sub_2520806CC(&unk_28644C070);
  *&v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry_resultFrequencies] = aBlock;
  v53 = v96;
  v7[OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel] = v96;
  v102.receiver = v7;
  v102.super_class = ObjectType;
  v54 = objc_msgSendSuper2(&v102, sel_init);
  v55 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies;
  v56 = *&v54[OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies];
  if (!*(v56 + 16))
  {
    __break(1u);
    goto LABEL_39;
  }

  v57 = v54;
  *&aBlock = *(v56 + 32);
  *(&aBlock + 1) = a3;
  *&v99 = v53;
  *(&v99 + 1) = 0x3FF0000000000000;
  v58 = v54;
  sub_252084B80(&aBlock);
  v59 = *&v57[v55];

  v61 = sub_25209D6D8(v60);

  v62 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue;
  v63 = *&v58[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v64 = swift_allocObject();
  *(v64 + 16) = v58;
  *(v64 + 24) = v61;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_25209D7B0;
  *(v65 + 24) = v64;
  v100 = sub_2520A3768;
  v101 = v65;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v99 = sub_252083924;
  *(&v99 + 1) = &block_descriptor_106;
  v66 = _Block_copy(&aBlock);
  v67 = v58;

  dispatch_sync(v63, v66);
  _Block_release(v66);
  LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

  if (v63)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252143AD0;
  *(inited + 32) = 0x408F400000000000;
  v69 = *&v57[v55];
  v70 = *(v69 + 16);
  if (v70)
  {
    v71 = *(v69 + 32);
    v72 = v70 - 1;
    if (v72)
    {
      v73 = (v69 + 40);
      do
      {
        v74 = *v73++;
        v75 = v74;
        if (v71 < v74)
        {
          v71 = v75;
        }

        --v72;
      }

      while (v72);
    }
  }

  else
  {
    v71 = 8000.0;
  }

  *(inited + 40) = v71;
  v76 = *(v69 + 16);
  if (v76)
  {
    v77 = *(v69 + 32);
    v78 = v76 - 1;
    if (v78)
    {
      v79 = (v69 + 40);
      do
      {
        v80 = *v79++;
        v81 = v80;
        if (v80 < v77)
        {
          v77 = v81;
        }

        --v78;
      }

      while (v78);
    }
  }

  else
  {
    v77 = 250.0;
  }

  *(inited + 48) = v77;
  v82 = sub_25209D6D8(inited);
  swift_setDeallocating();
  v83 = *&v58[v62];
  v84 = swift_allocObject();
  *(v84 + 16) = v67;
  *(v84 + 24) = v82;
  v85 = swift_allocObject();
  *(v85 + 16) = sub_25209D7BC;
  *(v85 + 24) = v84;
  v100 = sub_2520A3768;
  v101 = v85;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v99 = sub_252083924;
  *(&v99 + 1) = &block_descriptor_116;
  v86 = _Block_copy(&aBlock);
  v87 = v67;

  dispatch_sync(v83, v86);
  _Block_release(v86);
  LOBYTE(v83) = swift_isEscapingClosureAtFileLocation();

  if (v83)
  {
    goto LABEL_40;
  }
}

int64_t sub_252085BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

float HTAudiometry.progress.getter()
{
  v1 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  v2 = swift_beginAccess();
  result = 1.0;
  if ((*(v0 + v1) & 1) == 0)
  {
    v4 = *(v0 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
    MEMORY[0x28223BE20](v2);
    sub_25214200C();
    return v5;
  }

  return result;
}

uint64_t sub_252085D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = *MEMORY[0x277D85DE8];
  v8 = *&v3[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v29 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();

  if (a1 && v24 >= 20)
  {
    v10 = sub_2520EEE44(4, a1, a2, a3);
    v19 = *(v10 + 16);
    aBlock = 0x7FF8000000000000;
    vDSP_meanvD((v10 + 32), 1, &aBlock, v19);
    v20 = *&aBlock;

    v21 = v20;
    v22 = v21 * 0.9;
  }

  else
  {
    v22 = v24 / 60.0;
  }

  MEMORY[0x28223BE20](v9);
  v11 = sub_25214200C();
  if (v22 <= *&aBlock)
  {
    MEMORY[0x28223BE20](v11);
    sub_25214200C();
    v22 = *&aBlock + 0.015;
  }

  if (v22 > 0.9)
  {
    v22 = 0.9;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  *(v12 + 24) = v22;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2520A344C;
  *(v13 + 24) = v12;
  v27 = sub_2520A3768;
  v28 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_252083924;
  v26 = &block_descriptor_782;
  v14 = _Block_copy(&aBlock);
  v15 = v4;

  dispatch_sync(v8, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t HTAudiometry.nextStatus(HTAudiometryStatusV2Handler:)(void (*a1)(_BYTE *), uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_25209D7E4;
  *(v7 + 24) = v6;
  v47[4] = sub_2520A3768;
  v47[5] = v7;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 1107296256;
  v47[2] = sub_252083924;
  v47[3] = &block_descriptor_126;
  v8 = _Block_copy(v47);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return result;
  }

  v12 = v46;
  v13 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  v14 = swift_beginAccess();
  if (v9[v13] == 1)
  {
    HTAudiometry.resultSamples.getter(v47);
    v15 = v47[0];
    HTAudiometry.resultSamples.getter(v46);
    v16 = BYTE8(v46[0]);

    sub_252086B9C();
    *(&v45[12] + 7) = v41;
    *(&v45[13] + 7) = v42;
    *(&v45[14] + 7) = v43;
    *(&v45[15] + 7) = v44;
    *(&v45[8] + 7) = v37;
    *(&v45[9] + 7) = v38;
    *(&v45[10] + 7) = v39;
    *(&v45[11] + 7) = v40;
    *(&v45[4] + 7) = v33;
    *(&v45[5] + 7) = v34;
    *(&v45[6] + 7) = v35;
    *(&v45[7] + 7) = v36;
    *(v45 + 7) = v29;
    *(&v45[1] + 7) = v30;
    *(&v45[2] + 7) = v31;
    *(&v45[3] + 7) = v32;
    *(&v46[13] + 1) = v45[12];
    *(&v46[14] + 1) = v45[13];
    *(&v46[15] + 1) = v45[14];
    v46[16] = *(&v45[14] + 15);
    *(&v46[9] + 1) = v45[8];
    *(&v46[10] + 1) = v45[9];
    *(&v46[11] + 1) = v45[10];
    *(&v46[12] + 1) = v45[11];
    *(&v46[5] + 1) = v45[4];
    *(&v46[6] + 1) = v45[5];
    *(&v46[7] + 1) = v45[6];
    *(&v46[8] + 1) = v45[7];
    *(&v46[1] + 1) = v45[0];
    *(&v46[2] + 1) = v45[1];
    *(&v46[3] + 1) = v45[2];
    *&v46[0] = 0;
    *(&v46[0] + 1) = v15;
    LOBYTE(v46[1]) = v16;
    *(&v46[4] + 1) = v45[3];
    sub_25209D844(v46);
    memcpy(v28, v46, sizeof(v28));
    a1(v28);
    memcpy(v47, v28, 0x110uLL);
    return sub_25209D858(v47);
  }

  v17 = a1;
  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  result = sub_25214200C();
  v18 = v47[2];
  if (LOBYTE(v47[2]) == 2)
  {
    v19 = swift_allocObject();
    v19[2] = v9;
    v19[3] = v17;
    v19[4] = a2;
    v20 = swift_allocObject();
    v18 = v20;
    *(v20 + 16) = sub_2520A34A4;
    *(v20 + 24) = v19;
    v47[4] = sub_2520A3768;
    v47[5] = v20;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 1107296256;
    v47[2] = sub_252083924;
    v47[3] = &block_descriptor_137;
    v21 = _Block_copy(v47);
    v12 = v47[5];
    swift_retain_n();
    v22 = v9;

    dispatch_sync(v5, v21);

    _Block_release(v21);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if ((v21 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v23 = v47[3];
  v24 = v12[17];
  v25 = 1.0;
  if ((v9[v13] & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v27 = v26;
    sub_25214200C();
    v24 = v27;
    v25 = *v47;
  }

  v12[17] = v24;
  LOBYTE(v47[2]) = v18 & 1;
  v47[3] = v23;
  *&v47[4] = v25;
  sub_25209D834(v47);
  memcpy(v46, v47, sizeof(v46));
  return v17(v46);
}

uint64_t HTAudiometry.resultSamples.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = v1;
  v2 = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA90, &qword_2521451E0);
  v3 = 0;
  sub_25214200C();
  v4 = v51;
  v5 = *(v51 + 16);
  if (v5)
  {
    v57 = MEMORY[0x277D84F90];
    sub_25209B314(0, v5, 0);
    v6 = v57;
    v3 = v51 + 64;
    v7 = -1 << *(v51 + 32);
    v8 = sub_25214219C();
    v9 = 0;
    v49 = *(v51 + 36);
    v10 = *(v51 + 32);
    v47 = v51 + 72;
    v48 = v5;
    v11 = v46;
    v50 = (v51 + 64);
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << v10)
    {
      v14 = v8 >> 6;
      if ((*(v3 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_35;
      }

      sub_252093808(v11, &v51, *(*(v4 + 48) + 8 * v8), *(*(v4 + 56) + 8 * v8));
      v15 = v51;
      v16 = v52;
      v17 = v53;
      v18 = v54;
      v19 = v55;
      v20 = v56;
      v57 = v6;
      v3 = *(v6 + 16);
      v21 = *(v6 + 24);
      v22 = v6;
      if (v3 >= v21 >> 1)
      {
        v44 = v51;
        v43 = v52;
        v42 = v53;
        v41 = v56;
        sub_25209B314((v21 > 1), v3 + 1, 1);
        v20 = v41;
        v17 = v42;
        v16 = v43;
        v15 = v44;
        v11 = v46;
        v22 = v57;
      }

      *(v22 + 16) = v3 + 1;
      v23 = v22 + 56 * v3;
      *(v23 + 32) = v15;
      *(v23 + 48) = v16;
      *(v23 + 56) = v17;
      *(v23 + 64) = v18;
      *(v23 + 72) = v19;
      *(v23 + 80) = v20;
      v10 = *(v4 + 32);
      v12 = 1 << v10;
      if (v8 >= 1 << v10)
      {
        goto LABEL_36;
      }

      v6 = v22;
      v3 = v50;
      v24 = v50[v14];
      if ((v24 & (1 << v8)) == 0)
      {
        goto LABEL_37;
      }

      if (v49 != *(v4 + 36))
      {
        goto LABEL_38;
      }

      v25 = v24 & (-2 << (v8 & 0x3F));
      if (v25)
      {
        v12 = __clz(__rbit64(v25)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v13 = v48;
      }

      else
      {
        v26 = v14 << 6;
        v27 = v14 + 1;
        v13 = v48;
        v28 = (v47 + 8 * v14);
        while (v27 < (v12 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            v12 = __clz(__rbit64(v29)) + v26;
            break;
          }
        }
      }

      ++v9;
      v8 = v12;
      if (v9 == v13)
      {

        v3 = 0;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_20:
  *&v51 = v6;

  sub_25209A0C8(&v51);

  v32 = v51;
  MEMORY[0x28223BE20](v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();
  v33 = *(v51 + 16);

  if (v33 >= *(v46 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxSampleCount))
  {
    v40 = 1;
LABEL_33:
    *a1 = v32;
    *(a1 + 8) = v40;
    return result;
  }

  MEMORY[0x28223BE20](result);
  v35 = sub_25214200C();
  v36 = v51;
  MEMORY[0x28223BE20](v35);
  sub_25214200C();

  if (*(&v51 + 1) + 0x4000000000000000 >= 0)
  {
    if (v36 >= 2 * *(&v51 + 1))
    {
      v40 = 2;
    }

    else
    {
      MEMORY[0x28223BE20](result);
      result = sub_25214200C();
      if (v51 == 1)
      {
        MEMORY[0x28223BE20](result);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAA0, &unk_2521451D0);
        sub_25214200C();
        v37 = *(v51 + 16);
        v38 = (v51 + 32);
        while (v37)
        {
          v39 = *v38++;
          --v37;
          if ((v39 & 1) == 0)
          {
            v40 = 4;
            goto LABEL_32;
          }
        }

        v40 = 3;
LABEL_32:
      }

      else
      {
        v40 = 0;
      }
    }

    goto LABEL_33;
  }

LABEL_39:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_252086B9C()
{
  v1 = *&v0[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();

  v138 = v0;
  sub_25214200C();
  *&v145 = *(&v145 + 1);
  v2 = swift_allocObject();
  v3 = v158;
  *(v2 + 216) = v157;
  *(v2 + 232) = v3;
  *(v2 + 248) = v159;
  v4 = v154;
  *(v2 + 152) = v153;
  *(v2 + 168) = v4;
  v5 = v156;
  *(v2 + 184) = v155;
  *(v2 + 200) = v5;
  v6 = v150;
  *(v2 + 88) = v149;
  *(v2 + 104) = v6;
  v7 = v152;
  *(v2 + 120) = v151;
  *(v2 + 136) = v7;
  v8 = v146;
  *(v2 + 24) = v145;
  *(v2 + 40) = v8;
  v9 = v148;
  *(v2 + 56) = v147;
  *(v2 + 16) = v138;
  *(v2 + 264) = v160;
  *(v2 + 72) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2520A2864;
  *(v10 + 24) = v2;
  v143 = sub_2520A3768;
  v144 = v10;
  v139 = MEMORY[0x277D85DD0];
  v140 = 1107296256;
  v141 = sub_252083924;
  v142 = &block_descriptor_977;
  v11 = _Block_copy(&v139);
  v12 = v138;

  dispatch_sync(v1, v11);
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_70;
  }

  MEMORY[0x28223BE20](result);
  sub_25214200C();

  v15 = *(&v145 + 1);
  MEMORY[0x28223BE20](v14);
  sub_25214200C();
  *&v146 = v15;
  v16 = swift_allocObject();
  v17 = v158;
  *(v16 + 216) = v157;
  *(v16 + 232) = v17;
  *(v16 + 248) = v159;
  v18 = v154;
  *(v16 + 152) = v153;
  *(v16 + 168) = v18;
  v19 = v156;
  *(v16 + 184) = v155;
  *(v16 + 200) = v19;
  v20 = v150;
  *(v16 + 88) = v149;
  *(v16 + 104) = v20;
  v21 = v152;
  *(v16 + 120) = v151;
  *(v16 + 136) = v21;
  v22 = v146;
  *(v16 + 24) = v145;
  *(v16 + 40) = v22;
  v23 = v148;
  *(v16 + 56) = v147;
  *(v16 + 16) = v12;
  *(v16 + 264) = v160;
  *(v16 + 72) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2520A3660;
  *(v24 + 24) = v16;
  v143 = sub_2520A3768;
  v144 = v24;
  v139 = MEMORY[0x277D85DD0];
  v140 = 1107296256;
  v141 = sub_252083924;
  v142 = &block_descriptor_990;
  v25 = _Block_copy(&v139);
  v26 = v12;

  dispatch_sync(v1, v25);
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  result = HTAudiometry.resultSamples.getter(&v145);
  v128 = v145;
  v129 = v1;
  v27 = *(v145 + 16);
  v125 = v26;
  if (!v27)
  {
    v30 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v28 = *&v26[OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel];
  if (v28 <= 5.0)
  {
    v29 = (v145 + 80);
    v30 = MEMORY[0x277D84F90];
    v31 = *(v145 + 16);
    do
    {
      if ((*(v29 - 2) & 1) == 0)
      {
        v35 = *(v29 - 3);
        if (v28 <= v35 && v35 < 5.0)
        {
          v131 = *(v29 - 3);
          v37 = *(v29 - 32);
          v134 = *(v29 - 1);
          v38 = *v29;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v145 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25209B314(0, *(v30 + 16) + 1, 1);
            v30 = v145;
          }

          v33 = *(v30 + 16);
          v32 = *(v30 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_25209B314((v32 > 1), v33 + 1, 1);
            v30 = v145;
          }

          *(v30 + 16) = v33 + 1;
          v34 = v30 + 56 * v33;
          *(v34 + 32) = v131;
          *(v34 + 48) = v37;
          *(v34 + 56) = v35;
          *(v34 + 64) = 0;
          *(v34 + 72) = v134;
          *(v34 + 80) = v38;
        }
      }

      v29 += 7;
      --v31;
    }

    while (v31);
LABEL_19:
    v40 = *(v30 + 16);

    MEMORY[0x28223BE20](v41);
    sub_25214200C();
    *(&v147 + 1) = v40;
    v42 = swift_allocObject();
    v43 = v158;
    *(v42 + 216) = v157;
    *(v42 + 232) = v43;
    *(v42 + 248) = v159;
    v44 = v154;
    *(v42 + 152) = v153;
    *(v42 + 168) = v44;
    v45 = v156;
    *(v42 + 184) = v155;
    *(v42 + 200) = v45;
    v46 = v150;
    *(v42 + 88) = v149;
    *(v42 + 104) = v46;
    v47 = v152;
    *(v42 + 120) = v151;
    *(v42 + 136) = v47;
    v48 = v146;
    *(v42 + 24) = v145;
    *(v42 + 40) = v48;
    v49 = v148;
    *(v42 + 56) = v147;
    *(v42 + 16) = v125;
    *(v42 + 264) = v160;
    *(v42 + 72) = v49;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_2520A3660;
    *(v50 + 24) = v42;
    v143 = sub_2520A3768;
    v144 = v50;
    v139 = MEMORY[0x277D85DD0];
    v140 = 1107296256;
    v141 = sub_252083924;
    v142 = &block_descriptor_1002;
    v51 = _Block_copy(&v139);
    v52 = v125;

    dispatch_sync(v129, v51);
    _Block_release(v51);
    LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

    if ((v51 & 1) == 0)
    {
      v126 = v52;
      if (v27)
      {
        v53 = (v128 + 80);
        v54 = MEMORY[0x277D84F90];
        v55 = v27;
        do
        {
          if ((*(v53 - 2) & 1) == 0)
          {
            v59 = *(v53 - 3);
            if (v59 >= 5.0 && v59 < 10.0)
            {
              v132 = *(v53 - 3);
              v61 = *(v53 - 32);
              v135 = *(v53 - 1);
              v62 = *v53;
              v63 = swift_isUniquelyReferenced_nonNull_native();
              *&v145 = v54;
              if ((v63 & 1) == 0)
              {
                sub_25209B314(0, *(v54 + 16) + 1, 1);
                v54 = v145;
              }

              v57 = *(v54 + 16);
              v56 = *(v54 + 24);
              if (v57 >= v56 >> 1)
              {
                sub_25209B314((v56 > 1), v57 + 1, 1);
                v54 = v145;
              }

              *(v54 + 16) = v57 + 1;
              v58 = v54 + 56 * v57;
              *(v58 + 32) = v132;
              *(v58 + 48) = v61;
              *(v58 + 56) = v59;
              *(v58 + 64) = 0;
              *(v58 + 72) = v135;
              *(v58 + 80) = v62;
            }
          }

          v53 += 7;
          --v55;
        }

        while (v55);
      }

      else
      {
        v54 = MEMORY[0x277D84F90];
      }

      v64 = *(v54 + 16);

      MEMORY[0x28223BE20](v65);
      sub_25214200C();
      *&v148 = v64;
      v66 = swift_allocObject();
      v67 = v158;
      *(v66 + 216) = v157;
      *(v66 + 232) = v67;
      *(v66 + 248) = v159;
      v68 = v154;
      *(v66 + 152) = v153;
      *(v66 + 168) = v68;
      v69 = v156;
      *(v66 + 184) = v155;
      *(v66 + 200) = v69;
      v70 = v150;
      *(v66 + 88) = v149;
      *(v66 + 104) = v70;
      v71 = v152;
      *(v66 + 120) = v151;
      *(v66 + 136) = v71;
      v72 = v146;
      *(v66 + 24) = v145;
      *(v66 + 40) = v72;
      v73 = v148;
      *(v66 + 56) = v147;
      *(v66 + 16) = v126;
      *(v66 + 264) = v160;
      *(v66 + 72) = v73;
      v74 = swift_allocObject();
      *(v74 + 16) = sub_2520A3660;
      *(v74 + 24) = v66;
      v143 = sub_2520A3768;
      v144 = v74;
      v139 = MEMORY[0x277D85DD0];
      v140 = 1107296256;
      v141 = sub_252083924;
      v142 = &block_descriptor_1014;
      v75 = _Block_copy(&v139);
      v76 = v126;

      dispatch_sync(v129, v75);
      _Block_release(v75);
      LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();

      if ((v75 & 1) == 0)
      {
        v127 = v76;
        if (v27)
        {
          v77 = (v128 + 80);
          v78 = MEMORY[0x277D84F90];
          v79 = v27;
          v130 = v27;
          do
          {
            if ((*(v77 - 2) & 1) == 0)
            {
              v83 = *(v77 - 3);
              if (v83 >= 10.0 && v83 < 15.0)
              {
                v136 = *(v77 - 3);
                v85 = *(v77 - 32);
                v86 = *(v77 - 1);
                v87 = *v77;
                v88 = swift_isUniquelyReferenced_nonNull_native();
                *&v145 = v78;
                if ((v88 & 1) == 0)
                {
                  sub_25209B314(0, *(v78 + 16) + 1, 1);
                  v78 = v145;
                }

                v81 = *(v78 + 16);
                v80 = *(v78 + 24);
                if (v81 >= v80 >> 1)
                {
                  sub_25209B314((v80 > 1), v81 + 1, 1);
                  v78 = v145;
                }

                *(v78 + 16) = v81 + 1;
                v82 = v78 + 56 * v81;
                *(v82 + 32) = v136;
                *(v82 + 48) = v85;
                *(v82 + 56) = v83;
                *(v82 + 64) = 0;
                *(v82 + 72) = v86;
                *(v82 + 80) = v87;
                v27 = v130;
              }
            }

            v77 += 7;
            --v79;
          }

          while (v79);
        }

        else
        {
          v78 = MEMORY[0x277D84F90];
        }

        v89 = *(v78 + 16);

        MEMORY[0x28223BE20](v90);
        sub_25214200C();
        *(&v148 + 1) = v89;
        v91 = swift_allocObject();
        v92 = v158;
        *(v91 + 216) = v157;
        *(v91 + 232) = v92;
        *(v91 + 248) = v159;
        v93 = v154;
        *(v91 + 152) = v153;
        *(v91 + 168) = v93;
        v94 = v156;
        *(v91 + 184) = v155;
        *(v91 + 200) = v94;
        v95 = v150;
        *(v91 + 88) = v149;
        *(v91 + 104) = v95;
        v96 = v152;
        *(v91 + 120) = v151;
        *(v91 + 136) = v96;
        v97 = v146;
        *(v91 + 24) = v145;
        *(v91 + 40) = v97;
        v98 = v148;
        *(v91 + 56) = v147;
        *(v91 + 16) = v127;
        *(v91 + 264) = v160;
        *(v91 + 72) = v98;
        v99 = swift_allocObject();
        *(v99 + 16) = sub_2520A3660;
        *(v99 + 24) = v91;
        v143 = sub_2520A3768;
        v144 = v99;
        v139 = MEMORY[0x277D85DD0];
        v140 = 1107296256;
        v141 = sub_252083924;
        v142 = &block_descriptor_1026;
        v100 = _Block_copy(&v139);
        v101 = v127;

        dispatch_sync(v129, v100);
        _Block_release(v100);
        LOBYTE(v100) = swift_isEscapingClosureAtFileLocation();

        if ((v100 & 1) == 0)
        {
          v133 = v101;
          if (v27)
          {
            v102 = (v128 + 80);
            v103 = MEMORY[0x277D84F90];
            do
            {
              if ((*(v102 - 2) & 1) == 0)
              {
                v107 = *(v102 - 3);
                if (v107 >= 15.0 && v107 < 20.0)
                {
                  v137 = *(v102 - 3);
                  v109 = *(v102 - 32);
                  v110 = *(v102 - 1);
                  v111 = *v102;
                  v112 = swift_isUniquelyReferenced_nonNull_native();
                  *&v145 = v103;
                  if ((v112 & 1) == 0)
                  {
                    sub_25209B314(0, *(v103 + 16) + 1, 1);
                    v103 = v145;
                  }

                  v105 = *(v103 + 16);
                  v104 = *(v103 + 24);
                  if (v105 >= v104 >> 1)
                  {
                    sub_25209B314((v104 > 1), v105 + 1, 1);
                    v103 = v145;
                  }

                  *(v103 + 16) = v105 + 1;
                  v106 = v103 + 56 * v105;
                  *(v106 + 32) = v137;
                  *(v106 + 48) = v109;
                  *(v106 + 56) = v107;
                  *(v106 + 64) = 0;
                  *(v106 + 72) = v110;
                  *(v106 + 80) = v111;
                }
              }

              v102 += 7;
              --v27;
            }

            while (v27);
          }

          else
          {
            v103 = MEMORY[0x277D84F90];
          }

          v113 = *(v103 + 16);

          MEMORY[0x28223BE20](v114);
          sub_25214200C();
          *&v149 = v113;
          v115 = swift_allocObject();
          v116 = v158;
          *(v115 + 216) = v157;
          *(v115 + 232) = v116;
          *(v115 + 248) = v159;
          v117 = v154;
          *(v115 + 152) = v153;
          *(v115 + 168) = v117;
          v118 = v156;
          *(v115 + 184) = v155;
          *(v115 + 200) = v118;
          v119 = v150;
          *(v115 + 88) = v149;
          *(v115 + 104) = v119;
          v120 = v152;
          *(v115 + 120) = v151;
          *(v115 + 136) = v120;
          v121 = v146;
          *(v115 + 24) = v145;
          *(v115 + 40) = v121;
          v122 = v148;
          *(v115 + 56) = v147;
          *(v115 + 16) = v133;
          *(v115 + 264) = v160;
          *(v115 + 72) = v122;
          v123 = swift_allocObject();
          *(v123 + 16) = sub_2520A3660;
          *(v123 + 24) = v115;
          v143 = sub_2520A3768;
          v144 = v123;
          v139 = MEMORY[0x277D85DD0];
          v140 = 1107296256;
          v141 = sub_252083924;
          v142 = &block_descriptor_1038;
          v124 = _Block_copy(&v139);
          v133;

          dispatch_sync(v129, v124);
          _Block_release(v124);
          LOBYTE(v124) = swift_isEscapingClosureAtFileLocation();

          if ((v124 & 1) == 0)
          {
            MEMORY[0x28223BE20](result);
            return sub_25214200C();
          }

          goto LABEL_74;
        }

LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t HTAudiometry.nextStatus(_:)(uint64_t (*a1)(_BYTE *), uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_25209D974;
  *(v7 + 24) = v6;
  *&v62 = sub_2520A3768;
  *(&v62 + 1) = v7;
  *&v60 = MEMORY[0x277D85DD0];
  *(&v60 + 1) = 1107296256;
  *&v61 = sub_252083924;
  *(&v61 + 1) = &block_descriptor_148;
  v8 = _Block_copy(&v60);
  v9 = v2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return result;
  }

  v27 = a1;
  v12 = v59;
  v13 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  v14 = swift_beginAccess();
  if (v9[v13] == 1)
  {
    HTAudiometry.resultSamples.getter(&v42);
    v15 = v42;
    v16 = v43;
    sub_2520883BC();
    *&v58[167] = v54;
    *&v58[183] = v55;
    *&v58[199] = v56;
    *&v58[215] = v57;
    *&v58[103] = v50;
    *&v58[119] = v51;
    *&v58[135] = v52;
    *&v58[151] = v53;
    *&v58[39] = v46;
    *&v58[55] = v47;
    *&v58[71] = v48;
    *&v58[87] = v49;
    *&v58[7] = v44;
    *&v58[23] = v45;
    *&v59[169] = *&v58[160];
    *&v59[185] = *&v58[176];
    *&v59[201] = *&v58[192];
    *&v59[216] = *&v58[207];
    *&v59[105] = *&v58[96];
    *&v59[121] = *&v58[112];
    *&v59[137] = *&v58[128];
    *&v59[153] = *&v58[144];
    *&v59[41] = *&v58[32];
    *&v59[57] = *&v58[48];
    *&v59[73] = *&v58[64];
    *&v59[89] = *&v58[80];
    *&v59[9] = *v58;
    *v59 = v15;
    v59[8] = v16;
    *&v59[25] = *&v58[16];
    sub_25209D9B0(v59);
    v40 = *&v59[192];
    v41[0] = *&v59[208];
    *(v41 + 9) = *&v59[217];
    v36 = *&v59[128];
    v37 = *&v59[144];
    v38 = *&v59[160];
    v39 = *&v59[176];
    v32 = *&v59[64];
    v33 = *&v59[80];
    v34 = *&v59[96];
    v35 = *&v59[112];
    v28 = *v59;
    v29 = *&v59[16];
    v30 = *&v59[32];
    v31 = *&v59[48];
    a1(&v28);
    v72 = v40;
    v73[0] = v41[0];
    *(v73 + 9) = *(v41 + 9);
    v68 = v36;
    v69 = v37;
    v71 = v39;
    v70 = v38;
    v64 = v32;
    v65 = v33;
    v67 = v35;
    v66 = v34;
    v60 = v28;
    v61 = v29;
    v62 = v30;
    v63 = v31;
    return sub_25209D9BC(&v60);
  }

  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  result = sub_25214200C();
  v17 = v61;
  if (v61 == 2)
  {
    v18 = swift_allocObject();
    v18[2] = v9;
    v18[3] = v27;
    v18[4] = a2;
    v19 = swift_allocObject();
    v17 = v19;
    *(v19 + 16) = sub_2520A34B8;
    *(v19 + 24) = v18;
    *&v62 = sub_2520A3768;
    *(&v62 + 1) = v19;
    *&v60 = MEMORY[0x277D85DD0];
    *(&v60 + 1) = 1107296256;
    *&v61 = sub_252083924;
    *(&v61 + 1) = &block_descriptor_160;
    v20 = _Block_copy(&v60);
    v12 = *(&v62 + 1);
    swift_retain_n();
    v21 = v9;

    dispatch_sync(v5, v20);

    _Block_release(v20);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if ((v20 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v22 = *(&v61 + 1);
  v23 = v60;
  v24 = 1.0;
  if ((v9[v13] & 1) == 0)
  {
    MEMORY[0x28223BE20](result);
    v26 = v25;
    sub_25214200C();
    v23 = v26;
    v24 = *&v60;
  }

  v60 = v23;
  LOBYTE(v61) = v17 & 1;
  *(&v61 + 1) = v22;
  *&v62 = v24;
  sub_25209D9A8(&v60);
  *&v59[192] = v72;
  *&v59[208] = v73[0];
  *(v12 + 217) = *(v73 + 9);
  *&v59[128] = v68;
  *&v59[144] = v69;
  *&v59[160] = v70;
  *&v59[176] = v71;
  *&v59[64] = v64;
  *&v59[80] = v65;
  *&v59[96] = v66;
  *&v59[112] = v67;
  *v59 = v60;
  *&v59[16] = v61;
  *&v59[32] = v62;
  *&v59[48] = v63;
  return v27(v59);
}

uint64_t sub_2520883BC()
{
  v1 = *&v0[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();

  v132 = v0;
  sub_25214200C();
  *&v139 = *(&v139 + 1);
  v2 = swift_allocObject();
  v3 = v150;
  *(v2 + 184) = v149;
  *(v2 + 200) = v3;
  *(v2 + 216) = v151;
  v4 = v146;
  *(v2 + 120) = v145;
  *(v2 + 136) = v4;
  v5 = v148;
  *(v2 + 152) = v147;
  *(v2 + 168) = v5;
  v6 = v142;
  *(v2 + 56) = v141;
  *(v2 + 72) = v6;
  v7 = v144;
  *(v2 + 88) = v143;
  *(v2 + 104) = v7;
  v8 = v140;
  *(v2 + 24) = v139;
  *(v2 + 16) = v132;
  *(v2 + 232) = v152;
  *(v2 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2520A3328;
  *(v9 + 24) = v2;
  v137 = sub_2520A3768;
  v138 = v9;
  v133 = MEMORY[0x277D85DD0];
  v134 = 1107296256;
  v135 = sub_252083924;
  v136 = &block_descriptor_903;
  v10 = _Block_copy(&v133);
  v11 = v132;

  dispatch_sync(v1, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_70;
  }

  MEMORY[0x28223BE20](result);
  sub_25214200C();

  v14 = *(&v139 + 1);
  MEMORY[0x28223BE20](v13);
  sub_25214200C();
  *&v140 = v14;
  v15 = swift_allocObject();
  v16 = v150;
  *(v15 + 184) = v149;
  *(v15 + 200) = v16;
  *(v15 + 216) = v151;
  v17 = v146;
  *(v15 + 120) = v145;
  *(v15 + 136) = v17;
  v18 = v148;
  *(v15 + 152) = v147;
  *(v15 + 168) = v18;
  v19 = v142;
  *(v15 + 56) = v141;
  *(v15 + 72) = v19;
  v20 = v144;
  *(v15 + 88) = v143;
  *(v15 + 104) = v20;
  v21 = v140;
  *(v15 + 24) = v139;
  *(v15 + 16) = v11;
  *(v15 + 232) = v152;
  *(v15 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_2520A3328;
  *(v22 + 24) = v15;
  v137 = sub_2520A3768;
  v138 = v22;
  v133 = MEMORY[0x277D85DD0];
  v134 = 1107296256;
  v135 = sub_252083924;
  v136 = &block_descriptor_916;
  v23 = _Block_copy(&v133);
  v24 = v11;

  dispatch_sync(v1, v23);
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  result = HTAudiometry.resultSamples.getter(&v139);
  v122 = v139;
  v123 = v1;
  v25 = *(v139 + 16);
  v119 = v24;
  if (!v25)
  {
    v28 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v26 = *&v24[OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel];
  if (v26 <= 5.0)
  {
    v27 = (v139 + 80);
    v28 = MEMORY[0x277D84F90];
    v29 = *(v139 + 16);
    do
    {
      if ((*(v27 - 2) & 1) == 0)
      {
        v33 = *(v27 - 3);
        if (v26 <= v33 && v33 < 5.0)
        {
          v125 = *(v27 - 3);
          v35 = *(v27 - 32);
          v128 = *(v27 - 1);
          v36 = *v27;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v139 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_25209B314(0, *(v28 + 16) + 1, 1);
            v28 = v139;
          }

          v31 = *(v28 + 16);
          v30 = *(v28 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_25209B314((v30 > 1), v31 + 1, 1);
            v28 = v139;
          }

          *(v28 + 16) = v31 + 1;
          v32 = v28 + 56 * v31;
          *(v32 + 32) = v125;
          *(v32 + 48) = v35;
          *(v32 + 56) = v33;
          *(v32 + 64) = 0;
          *(v32 + 72) = v128;
          *(v32 + 80) = v36;
        }
      }

      v27 += 7;
      --v29;
    }

    while (v29);
LABEL_19:
    v38 = *(v28 + 16);

    MEMORY[0x28223BE20](v39);
    sub_25214200C();
    *(&v141 + 1) = v38;
    v40 = swift_allocObject();
    v41 = v150;
    *(v40 + 184) = v149;
    *(v40 + 200) = v41;
    *(v40 + 216) = v151;
    v42 = v146;
    *(v40 + 120) = v145;
    *(v40 + 136) = v42;
    v43 = v148;
    *(v40 + 152) = v147;
    *(v40 + 168) = v43;
    v44 = v142;
    *(v40 + 56) = v141;
    *(v40 + 72) = v44;
    v45 = v144;
    *(v40 + 88) = v143;
    *(v40 + 104) = v45;
    v46 = v140;
    *(v40 + 24) = v139;
    *(v40 + 16) = v119;
    *(v40 + 232) = v152;
    *(v40 + 40) = v46;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_2520A3328;
    *(v47 + 24) = v40;
    v137 = sub_2520A3768;
    v138 = v47;
    v133 = MEMORY[0x277D85DD0];
    v134 = 1107296256;
    v135 = sub_252083924;
    v136 = &block_descriptor_928;
    v48 = _Block_copy(&v133);
    v49 = v119;

    dispatch_sync(v123, v48);
    _Block_release(v48);
    LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

    if ((v48 & 1) == 0)
    {
      v120 = v49;
      if (v25)
      {
        v50 = (v122 + 80);
        v51 = MEMORY[0x277D84F90];
        v52 = v25;
        do
        {
          if ((*(v50 - 2) & 1) == 0)
          {
            v56 = *(v50 - 3);
            if (v56 >= 5.0 && v56 < 10.0)
            {
              v126 = *(v50 - 3);
              v58 = *(v50 - 32);
              v129 = *(v50 - 1);
              v59 = *v50;
              v60 = swift_isUniquelyReferenced_nonNull_native();
              *&v139 = v51;
              if ((v60 & 1) == 0)
              {
                sub_25209B314(0, *(v51 + 16) + 1, 1);
                v51 = v139;
              }

              v54 = *(v51 + 16);
              v53 = *(v51 + 24);
              if (v54 >= v53 >> 1)
              {
                sub_25209B314((v53 > 1), v54 + 1, 1);
                v51 = v139;
              }

              *(v51 + 16) = v54 + 1;
              v55 = v51 + 56 * v54;
              *(v55 + 32) = v126;
              *(v55 + 48) = v58;
              *(v55 + 56) = v56;
              *(v55 + 64) = 0;
              *(v55 + 72) = v129;
              *(v55 + 80) = v59;
            }
          }

          v50 += 7;
          --v52;
        }

        while (v52);
      }

      else
      {
        v51 = MEMORY[0x277D84F90];
      }

      v61 = *(v51 + 16);

      MEMORY[0x28223BE20](v62);
      sub_25214200C();
      *&v142 = v61;
      v63 = swift_allocObject();
      v64 = v150;
      *(v63 + 184) = v149;
      *(v63 + 200) = v64;
      *(v63 + 216) = v151;
      v65 = v146;
      *(v63 + 120) = v145;
      *(v63 + 136) = v65;
      v66 = v148;
      *(v63 + 152) = v147;
      *(v63 + 168) = v66;
      v67 = v142;
      *(v63 + 56) = v141;
      *(v63 + 72) = v67;
      v68 = v144;
      *(v63 + 88) = v143;
      *(v63 + 104) = v68;
      v69 = v140;
      *(v63 + 24) = v139;
      *(v63 + 16) = v120;
      *(v63 + 232) = v152;
      *(v63 + 40) = v69;
      v70 = swift_allocObject();
      *(v70 + 16) = sub_2520A3328;
      *(v70 + 24) = v63;
      v137 = sub_2520A3768;
      v138 = v70;
      v133 = MEMORY[0x277D85DD0];
      v134 = 1107296256;
      v135 = sub_252083924;
      v136 = &block_descriptor_940;
      v71 = _Block_copy(&v133);
      v72 = v120;

      dispatch_sync(v123, v71);
      _Block_release(v71);
      LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

      if ((v71 & 1) == 0)
      {
        v121 = v72;
        if (v25)
        {
          v73 = (v122 + 80);
          v74 = MEMORY[0x277D84F90];
          v75 = v25;
          v124 = v25;
          do
          {
            if ((*(v73 - 2) & 1) == 0)
            {
              v79 = *(v73 - 3);
              if (v79 >= 10.0 && v79 < 15.0)
              {
                v130 = *(v73 - 3);
                v81 = *(v73 - 32);
                v82 = *(v73 - 1);
                v83 = *v73;
                v84 = swift_isUniquelyReferenced_nonNull_native();
                *&v139 = v74;
                if ((v84 & 1) == 0)
                {
                  sub_25209B314(0, *(v74 + 16) + 1, 1);
                  v74 = v139;
                }

                v77 = *(v74 + 16);
                v76 = *(v74 + 24);
                if (v77 >= v76 >> 1)
                {
                  sub_25209B314((v76 > 1), v77 + 1, 1);
                  v74 = v139;
                }

                *(v74 + 16) = v77 + 1;
                v78 = v74 + 56 * v77;
                *(v78 + 32) = v130;
                *(v78 + 48) = v81;
                *(v78 + 56) = v79;
                *(v78 + 64) = 0;
                *(v78 + 72) = v82;
                *(v78 + 80) = v83;
                v25 = v124;
              }
            }

            v73 += 7;
            --v75;
          }

          while (v75);
        }

        else
        {
          v74 = MEMORY[0x277D84F90];
        }

        v85 = *(v74 + 16);

        MEMORY[0x28223BE20](v86);
        sub_25214200C();
        *(&v142 + 1) = v85;
        v87 = swift_allocObject();
        v88 = v150;
        *(v87 + 184) = v149;
        *(v87 + 200) = v88;
        *(v87 + 216) = v151;
        v89 = v146;
        *(v87 + 120) = v145;
        *(v87 + 136) = v89;
        v90 = v148;
        *(v87 + 152) = v147;
        *(v87 + 168) = v90;
        v91 = v142;
        *(v87 + 56) = v141;
        *(v87 + 72) = v91;
        v92 = v144;
        *(v87 + 88) = v143;
        *(v87 + 104) = v92;
        v93 = v140;
        *(v87 + 24) = v139;
        *(v87 + 16) = v121;
        *(v87 + 232) = v152;
        *(v87 + 40) = v93;
        v94 = swift_allocObject();
        *(v94 + 16) = sub_2520A3328;
        *(v94 + 24) = v87;
        v137 = sub_2520A3768;
        v138 = v94;
        v133 = MEMORY[0x277D85DD0];
        v134 = 1107296256;
        v135 = sub_252083924;
        v136 = &block_descriptor_952;
        v95 = _Block_copy(&v133);
        v96 = v121;

        dispatch_sync(v123, v95);
        _Block_release(v95);
        LOBYTE(v95) = swift_isEscapingClosureAtFileLocation();

        if ((v95 & 1) == 0)
        {
          v127 = v96;
          if (v25)
          {
            v97 = (v122 + 80);
            v98 = MEMORY[0x277D84F90];
            do
            {
              if ((*(v97 - 2) & 1) == 0)
              {
                v102 = *(v97 - 3);
                if (v102 >= 15.0 && v102 < 20.0)
                {
                  v131 = *(v97 - 3);
                  v104 = *(v97 - 32);
                  v105 = *(v97 - 1);
                  v106 = *v97;
                  v107 = swift_isUniquelyReferenced_nonNull_native();
                  *&v139 = v98;
                  if ((v107 & 1) == 0)
                  {
                    sub_25209B314(0, *(v98 + 16) + 1, 1);
                    v98 = v139;
                  }

                  v100 = *(v98 + 16);
                  v99 = *(v98 + 24);
                  if (v100 >= v99 >> 1)
                  {
                    sub_25209B314((v99 > 1), v100 + 1, 1);
                    v98 = v139;
                  }

                  *(v98 + 16) = v100 + 1;
                  v101 = v98 + 56 * v100;
                  *(v101 + 32) = v131;
                  *(v101 + 48) = v104;
                  *(v101 + 56) = v102;
                  *(v101 + 64) = 0;
                  *(v101 + 72) = v105;
                  *(v101 + 80) = v106;
                }
              }

              v97 += 7;
              --v25;
            }

            while (v25);
          }

          else
          {
            v98 = MEMORY[0x277D84F90];
          }

          v108 = *(v98 + 16);

          MEMORY[0x28223BE20](v109);
          sub_25214200C();
          *&v143 = v108;
          v110 = swift_allocObject();
          v111 = v150;
          *(v110 + 184) = v149;
          *(v110 + 200) = v111;
          *(v110 + 216) = v151;
          v112 = v146;
          *(v110 + 120) = v145;
          *(v110 + 136) = v112;
          v113 = v148;
          *(v110 + 152) = v147;
          *(v110 + 168) = v113;
          v114 = v142;
          *(v110 + 56) = v141;
          *(v110 + 72) = v114;
          v115 = v144;
          *(v110 + 88) = v143;
          *(v110 + 104) = v115;
          v116 = v140;
          *(v110 + 24) = v139;
          *(v110 + 16) = v127;
          *(v110 + 232) = v152;
          *(v110 + 40) = v116;
          v117 = swift_allocObject();
          *(v117 + 16) = sub_2520A3328;
          *(v117 + 24) = v110;
          v137 = sub_2520A3768;
          v138 = v117;
          v133 = MEMORY[0x277D85DD0];
          v134 = 1107296256;
          v135 = sub_252083924;
          v136 = &block_descriptor_964;
          v118 = _Block_copy(&v133);
          v127;

          dispatch_sync(v123, v118);
          _Block_release(v118);
          LOBYTE(v118) = swift_isEscapingClosureAtFileLocation();

          if ((v118 & 1) == 0)
          {
            MEMORY[0x28223BE20](result);
            return sub_25214200C();
          }

          goto LABEL_74;
        }

LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t HTAudiometry.nextStatus()(uint64_t a1)
{
  *(v2 + 832) = v1;
  *(v2 + 824) = a1;
  return MEMORY[0x2822009F8](sub_252089574, 0, 0);
}

uint64_t sub_252089574()
{
  v60 = v0;
  v1 = *(v0 + 832);
  v2 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  *(v0 + 840) = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = *(v0 + 832);
    v4 = *(v0 + 824);
    HTAudiometry.resultSamples.getter(&v58);
    v5 = v58;
    v6 = v59;
    sub_2520883BC();
    *&v43[167] = v54;
    *&v43[183] = v55;
    *&v43[199] = v56;
    *&v43[215] = v57;
    *&v43[103] = v50;
    *&v43[119] = v51;
    *&v43[135] = v52;
    *&v43[151] = v53;
    *&v43[39] = v46;
    *&v43[55] = v47;
    *&v43[71] = v48;
    *&v43[87] = v49;
    *&v43[7] = v44;
    *&v43[23] = v45;
    *(v0 + 496) = v5;
    *(v0 + 504) = v6;
    *(v0 + 665) = *&v43[160];
    *(v0 + 681) = *&v43[176];
    *(v0 + 697) = *&v43[192];
    *(v0 + 712) = *&v43[207];
    *(v0 + 601) = *&v43[96];
    *(v0 + 617) = *&v43[112];
    *(v0 + 633) = *&v43[128];
    *(v0 + 649) = *&v43[144];
    *(v0 + 537) = *&v43[32];
    *(v0 + 553) = *&v43[48];
    *(v0 + 569) = *&v43[64];
    *(v0 + 585) = *&v43[80];
    *(v0 + 505) = *v43;
    *(v0 + 521) = *&v43[16];
    sub_25209D9B0(v0 + 496);
    v7 = *(v0 + 496);
    v8 = *(v0 + 528);
    v4[1] = *(v0 + 512);
    v4[2] = v8;
    *v4 = v7;
    v9 = *(v0 + 544);
    v10 = *(v0 + 560);
    v11 = *(v0 + 592);
    v4[5] = *(v0 + 576);
    v4[6] = v11;
    v4[3] = v9;
    v4[4] = v10;
    v12 = *(v0 + 608);
    v13 = *(v0 + 624);
    v14 = *(v0 + 656);
    v4[9] = *(v0 + 640);
    v4[10] = v14;
    v4[7] = v12;
    v4[8] = v13;
    v15 = *(v0 + 672);
    v16 = *(v0 + 688);
    v17 = *(v0 + 704);
    *(v4 + 217) = *(v0 + 713);
    v4[12] = v16;
    v4[13] = v17;
    v4[11] = v15;
LABEL_10:
    v40 = *(v0 + 8);

    return v40();
  }

  v18 = *(v0 + 832);
  *(v0 + 848) = *(v18 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  *(swift_task_alloc() + 16) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  sub_25214200C();
  *(v0 + 856) = 0;

  v19 = *(v0 + 752);
  if (v19 != 2)
  {
    v24 = *(v0 + 760);
    v25 = *(v0 + 736);
    v26 = 1.0;
    if ((*(v1 + v2) & 1) == 0)
    {
      v27 = *(v0 + 832);
      v42 = *(v0 + 736);
      *(swift_task_alloc() + 16) = v27;
      sub_25214200C();

      v25 = v42;
      v26 = *(v0 + 492);
    }

    v28 = *(v0 + 824);
    *(v0 + 256) = v25;
    *(v0 + 272) = v19 & 1;
    *(v0 + 280) = v24;
    *(v0 + 288) = v26;
    sub_25209D9A8(v0 + 256);
    v29 = *(v0 + 256);
    v30 = *(v0 + 288);
    v28[1] = *(v0 + 272);
    v28[2] = v30;
    *v28 = v29;
    v31 = *(v0 + 304);
    v32 = *(v0 + 320);
    v33 = *(v0 + 352);
    v28[5] = *(v0 + 336);
    v28[6] = v33;
    v28[3] = v31;
    v28[4] = v32;
    v34 = *(v0 + 368);
    v35 = *(v0 + 384);
    v36 = *(v0 + 416);
    v28[9] = *(v0 + 400);
    v28[10] = v36;
    v28[7] = v34;
    v28[8] = v35;
    v37 = *(v0 + 432);
    v38 = *(v0 + 448);
    v39 = *(v0 + 464);
    *(v28 + 217) = *(v0 + 473);
    v28[12] = v38;
    v28[13] = v39;
    v28[11] = v37;
    goto LABEL_10;
  }

  v20 = *(v0 + 832);
  v21 = swift_task_alloc();
  *(v0 + 864) = v21;
  *(v21 + 16) = v20;
  v22 = *(MEMORY[0x277D859E0] + 4);
  v23 = swift_task_alloc();
  *(v0 + 872) = v23;
  *v23 = v0;
  v23[1] = sub_252089960;

  return MEMORY[0x2822007B8](v0 + 768, 0, 0, 0x746174537478656ELL, 0xEC00000029287375, sub_25209DA10, v21, &type metadata for HTHearingTestTone);
}

uint64_t sub_252089960()
{
  v1 = *(*v0 + 872);
  v2 = *(*v0 + 864);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_252089A78, 0, 0);
}

uint64_t sub_252089A78()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 768);
  v3 = *(v0 + 784);
  v4 = *(v0 + 792);
  v5 = 1.0;
  if ((*(v1 + *(v0 + 840)) & 1) == 0)
  {
    v6 = *(v0 + 856);
    v7 = *(v0 + 848);
    v22 = *(v0 + 768);
    *(swift_task_alloc() + 16) = v1;
    sub_25214200C();

    v2 = v22;
    v5 = *(v0 + 252);
  }

  v8 = *(v0 + 824);
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  sub_25209D9A8(v0 + 16);
  v9 = *(v0 + 16);
  v10 = *(v0 + 48);
  v8[1] = *(v0 + 32);
  v8[2] = v10;
  *v8 = v9;
  v11 = *(v0 + 64);
  v12 = *(v0 + 80);
  v13 = *(v0 + 112);
  v8[5] = *(v0 + 96);
  v8[6] = v13;
  v8[3] = v11;
  v8[4] = v12;
  v14 = *(v0 + 128);
  v15 = *(v0 + 144);
  v16 = *(v0 + 176);
  v8[9] = *(v0 + 160);
  v8[10] = v16;
  v8[7] = v14;
  v8[8] = v15;
  v17 = *(v0 + 192);
  v18 = *(v0 + 208);
  v19 = *(v0 + 224);
  *(v8 + 217) = *(v0 + 233);
  v8[12] = v18;
  v8[13] = v19;
  v8[11] = v17;
  v20 = *(v0 + 8);

  return v20();
}

__n128 sub_252089BC4@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t HTAudiometry.nextStatusV2()(uint64_t a1)
{
  *(v2 + 928) = v1;
  *(v2 + 920) = a1;
  return MEMORY[0x2822009F8](sub_252089BF4, 0, 0);
}

uint64_t sub_252089BF4()
{
  v33 = v0;
  v1 = *(v0 + 928);
  v2 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  *(v0 + 936) = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = *(v0 + 928);
    v4 = *(v0 + 920);
    HTAudiometry.resultSamples.getter(v31);
    v5 = *&v31[0];
    HTAudiometry.resultSamples.getter(v30);
    v6 = v30[8];

    sub_252086B9C();
    *&v30[199] = v31[12];
    *&v30[215] = v31[13];
    *&v30[231] = v31[14];
    *&v30[247] = v32;
    *&v30[135] = v31[8];
    *&v30[151] = v31[9];
    *&v30[167] = v31[10];
    *&v30[183] = v31[11];
    *&v30[71] = v31[4];
    *&v30[87] = v31[5];
    *&v30[103] = v31[6];
    *&v30[119] = v31[7];
    *&v30[7] = v31[0];
    *&v30[23] = v31[1];
    *&v30[39] = v31[2];
    *&v30[55] = v31[3];
    *(v0 + 560) = 0;
    *(v0 + 568) = v5;
    *(v0 + 576) = v6;
    v7 = *&v30[208];
    *(v0 + 769) = *&v30[192];
    *(v0 + 785) = v7;
    *(v0 + 801) = *&v30[224];
    *(v0 + 816) = *&v30[239];
    v8 = *&v30[144];
    *(v0 + 705) = *&v30[128];
    *(v0 + 721) = v8;
    v9 = *&v30[176];
    *(v0 + 737) = *&v30[160];
    *(v0 + 753) = v9;
    v10 = *&v30[80];
    *(v0 + 641) = *&v30[64];
    *(v0 + 657) = v10;
    v11 = *&v30[112];
    *(v0 + 673) = *&v30[96];
    *(v0 + 689) = v11;
    v12 = *&v30[16];
    *(v0 + 577) = *v30;
    *(v0 + 593) = v12;
    v13 = *&v30[48];
    *(v0 + 609) = *&v30[32];
    *(v0 + 625) = v13;
    sub_25209D844(v0 + 560);
    v14 = (v0 + 560);
    v15 = v4;
LABEL_10:
    memcpy(v15, v14, 0x110uLL);
    v27 = *(v0 + 8);

    return v27();
  }

  v16 = *(v0 + 928);
  *(v0 + 944) = *(v16 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  *(swift_task_alloc() + 16) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
  sub_25214200C();
  *(v0 + 952) = 0;

  v17 = *(v0 + 848);
  if (v17 != 2)
  {
    v22 = *(v0 + 856);
    v23 = *(v0 + 832);
    v24 = 1.0;
    if ((*(v1 + v2) & 1) == 0)
    {
      v25 = *(v0 + 928);
      v29 = *(v0 + 832);
      *(swift_task_alloc() + 16) = v25;
      sub_25214200C();

      v23 = v29;
      v24 = *(v0 + 980);
    }

    v26 = *(v0 + 920);
    *(v0 + 288) = v23;
    *(v0 + 304) = v17 & 1;
    *(v0 + 312) = v22;
    *(v0 + 320) = v24;
    sub_25209D834(v0 + 288);
    v14 = (v0 + 288);
    v15 = v26;
    goto LABEL_10;
  }

  v18 = *(v0 + 928);
  v19 = swift_task_alloc();
  *(v0 + 960) = v19;
  *(v19 + 16) = v18;
  v20 = *(MEMORY[0x277D859E0] + 4);
  v21 = swift_task_alloc();
  *(v0 + 968) = v21;
  *v21 = v0;
  v21[1] = sub_252089F8C;

  return MEMORY[0x2822007B8](v0 + 864, 0, 0, 0x746174537478656ELL, 0xEE00292832567375, sub_25209DA5C, v19, &type metadata for HTHearingTestTone);
}

uint64_t sub_252089F8C()
{
  v1 = *(*v0 + 968);
  v2 = *(*v0 + 960);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25208A0A4, 0, 0);
}

uint64_t sub_25208A0A4()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 864);
  v3 = *(v0 + 880);
  v4 = *(v0 + 888);
  v5 = 1.0;
  if ((*(v1 + *(v0 + 936)) & 1) == 0)
  {
    v6 = *(v0 + 952);
    v7 = *(v0 + 944);
    v11 = *(v0 + 864);
    *(swift_task_alloc() + 16) = v1;
    sub_25214200C();

    v2 = v11;
    v5 = *(v0 + 976);
  }

  v8 = *(v0 + 920);
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  sub_25209D834(v0 + 16);
  memcpy(v8, (v0 + 16), 0x110uLL);
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_25208A1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a5;
  v26[1] = a3;
  v31 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBD0, &qword_252143D88);
  v5 = *(v30 - 8);
  v29 = *(v5 + 64);
  MEMORY[0x28223BE20](v30);
  v28 = v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBD8, &qword_252143D90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBE0, &qword_252143D98);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v26 - v15;
  v26[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBE8, &qword_252143DA0);
  v27 = *(v26[0] - 8);
  v17 = *(v27 + 64);
  MEMORY[0x28223BE20](v26[0]);
  v19 = v26 - v18;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CD958, &qword_252143B48);
  sub_2521419CC();
  swift_endAccess();
  sub_2520A2F1C(&qword_27F4CDBF0, &qword_27F4CDBD8, &qword_252143D90);
  sub_2521419EC();
  (*(v8 + 8))(v11, v7);
  sub_2520A2F1C(&qword_27F4CDBF8, &qword_27F4CDBE0, &qword_252143D98);
  sub_2521419FC();
  (*(v13 + 8))(v16, v12);
  v20 = v28;
  v21 = v30;
  (*(v5 + 16))(v28, v31, v30);
  v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + v22, v20, v21);
  sub_2520A2F1C(&qword_27F4CDC00, &qword_27F4CDBE8, &qword_252143DA0);
  v24 = v26[0];
  sub_252141A0C();

  (*(v27 + 8))(v19, v24);
  swift_beginAccess();
  sub_2521419AC();
  swift_endAccess();
}

uint64_t sub_25208A62C(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBD0, &qword_252143D88);
  return sub_252141DFC();
}

void sub_25208A68C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
    v2 = MEMORY[0x28223BE20](Strong);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC48, &qword_252143DF0);
    sub_25214200C();

    if (v5)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        sub_2520A283C(v5);
        sub_2520A10E0(v4, v5, v6);
        sub_2520A1FE4(v5);
        sub_2520A1FE4(v5);
      }

      else
      {
        sub_2520A1FE4(v5);
      }
    }
  }
}

void sub_25208A7DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
    v2 = MEMORY[0x28223BE20](Strong);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDC40, &qword_252143DE8);
    sub_25214200C();

    if (v5)
    {
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        sub_2520A283C(v5);
        sub_2520A0AF8(v4, v5, v6);
        sub_2520A1FE4(v5);
        sub_2520A1FE4(v5);
      }

      else
      {
        sub_2520A1FE4(v5);
      }
    }
  }
}

Swift::Void __swiftcall HTAudiometry.registerStimulusPlayback()()
{
  v1 = *&v0[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_25209DAA8;
  *(v3 + 24) = v2;
  v15 = sub_2520A3768;
  v16 = v3;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_252083924;
  v14 = &block_descriptor_179;
  v4 = _Block_copy(&v11);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_25209DAC0;
  *(v7 + 24) = v6;
  v15 = sub_2520A3768;
  v16 = v7;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_252083924;
  v14 = &block_descriptor_189;
  v8 = _Block_copy(&v11);
  v9 = v5;

  dispatch_sync(v1, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_25208DC58(char a1)
{
  isEscapingClosureAtFileLocation = v1;
  v8 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
  v9 = swift_beginAccess();
  if (*(*(isEscapingClosureAtFileLocation + v8) + 16))
  {
    v10 = sub_252094B04();
    return v10 & 1;
  }

  v11 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  MEMORY[0x28223BE20](v9);
  p_isa = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
  v13 = 0;
  sub_25214200C();
  v14 = *(aBlock + 16);

  if (!v14 || (MEMORY[0x28223BE20](v15), sub_25214200C(), (aBlock & 1) != 0))
  {
    p_isa = swift_allocObject();
    p_isa[2] = isEscapingClosureAtFileLocation;
    *(p_isa + 24) = 1;
    v13 = swift_allocObject();
    v13[2] = sub_2520A3758;
    v13[3] = p_isa;
    v148 = sub_2520A3768;
    v149 = v13;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v146 = sub_252083924;
    v147 = &block_descriptor_884;
    v16 = _Block_copy(&aBlock);
    v17 = isEscapingClosureAtFileLocation;

    dispatch_sync(v11, v16);
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v18 = sub_25209D6D8(&unk_28644C0F0);
  v19 = *(v18 + 16);
  if (!v19)
  {
    goto LABEL_147;
  }

  v4 = *(v18 + 32);

  MEMORY[0x28223BE20](v20);
  sub_25214200C();
  v19 = *(aBlock + 16);
  if (v19)
  {
    v2 = *(aBlock + 32);

    MEMORY[0x28223BE20](v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
    sub_25214200C();
    v22 = sub_2520EEE44(0, aBlock, *(&aBlock + 1), v146);

    if (!v13)
    {
      MEMORY[0x28223BE20](v23);
      sub_25214200C();
      v29 = sub_2520EEE44(1, aBlock, *(&aBlock + 1), v146);

      v31 = *(v29 + 16);
      v140 = v29;
      v32 = (v29 + 8 * v31 + 24);
      v139 = v31;
      if (!v31)
      {
        v32 = (isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_initialLevel);
      }

      v3 = *v32;
      MEMORY[0x28223BE20](v30);
      v138 = v11;
      isUniquelyReferenced_nonNull_native = sub_25214200C();
      v34 = 0;
      v35 = aBlock;
      v142 = *(v22 + 16);
      v137 = MEMORY[0x277D84F90];
      v143 = v22 + 32;
      p_isa = &v144;
      v141 = v22;
      while (v142 != v34)
      {
        v19 = *(v22 + 16);
        if (v34 >= v19)
        {
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
          goto LABEL_148;
        }

        v19 = *(v35 + 16);
        if (v34 == v19)
        {
          break;
        }

        if (v34 >= v19)
        {
          goto LABEL_143;
        }

        v5 = *(v143 + 8 * v34);
        v36 = *(v35 + 32 + 8 * v34);
        v144 = &unk_28644C118;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        v144 = sub_2520AABEC(1, sub_2520A3B60);
        MEMORY[0x28223BE20](v144[2]);
        v38 = sub_2520AABEC(v37, sub_2520A26A4);

        v144 = v38;
        MEMORY[0x28223BE20](*(v38 + 16));
        v40 = sub_2520AABEC(v39, sub_2520A3B48);

        v19 = *(v40 + 16);
        if (!v19)
        {
          goto LABEL_144;
        }

        v41 = *(v40 + 32);

        ++v34;
        v22 = v141;
        if (v5 == v41)
        {
          v42 = v137;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v137;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_25209B214(0, *(v137 + 16) + 1, 1);
            v42 = aBlock;
          }

          v44 = *(v42 + 16);
          v43 = *(v42 + 24);
          if (v44 >= v43 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_25209B214((v43 > 1), v44 + 1, 1);
            v42 = aBlock;
          }

          *(v42 + 16) = v44 + 1;
          v137 = v42;
          v45 = v42 + 16 * v44;
          *(v45 + 32) = v5;
          *(v45 + 40) = v36;
          v22 = v141;
        }
      }

      v46 = *(v137 + 16);
      v47 = v140;
      if (v46)
      {
        v5 = *(v137 + 16 + 16 * v46 + 8);

        v49 = v5 == 0.0;
      }

      else
      {

        v49 = 1;
      }

      LODWORD(v137) = v49;
      v50 = 0;
      v51 = MEMORY[0x277D84F90];
      p_isa = &v144;
      while (v142 != v50)
      {
        v19 = *(v22 + 16);
        if (v50 >= v19)
        {
          goto LABEL_142;
        }

        if (v139 == v50)
        {
          break;
        }

        v19 = *(v47 + 16);
        if (v50 >= v19)
        {
          goto LABEL_145;
        }

        v5 = *(v143 + 8 * v50);
        v52 = *(v140 + 32 + 8 * v50);
        v144 = &unk_28644C140;
        MEMORY[0x28223BE20](v48);
        v144 = sub_2520AABEC(1, sub_2520A3B60);
        MEMORY[0x28223BE20](v144[2]);
        v54 = sub_2520AABEC(v53, sub_2520A3374);

        v144 = v54;
        MEMORY[0x28223BE20](*(v54 + 16));
        v56 = sub_2520AABEC(v55, sub_2520A3B48);

        v19 = *(v56 + 16);
        if (!v19)
        {
          goto LABEL_146;
        }

        v57 = *(v56 + 32);

        ++v50;
        v22 = v141;
        v47 = v140;
        if (v5 == v57)
        {
          v48 = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v51;
          if ((v48 & 1) == 0)
          {
            v48 = sub_25209B214(0, *(v51 + 16) + 1, 1);
            v51 = aBlock;
          }

          v59 = *(v51 + 16);
          v58 = *(v51 + 24);
          if (v59 >= v58 >> 1)
          {
            v48 = sub_25209B214((v58 > 1), v59 + 1, 1);
            v51 = aBlock;
          }

          *(v51 + 16) = v59 + 1;
          v60 = v51 + 16 * v59;
          *(v60 + 32) = v5;
          *(v60 + 40) = v52;
          v22 = v141;
          v47 = v140;
        }
      }

      v61 = *(v51 + 16);
      v62 = (v51 + 16 + 16 * v61 + 8);
      if (!v61)
      {
        v62 = (isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_initialLevel);
      }

      v5 = *v62;

      MEMORY[0x28223BE20](v63);
      sub_25214200C();
      v64 = *(aBlock + 16);
      v65 = 32;
      do
      {
        if (!v64)
        {

          goto LABEL_51;
        }

        v66 = *(aBlock + v65);
        v65 += 8;
        --v64;
      }

      while (v66 != v2);

      if ((a1 & 1) == 0)
      {
        MEMORY[0x28223BE20](v67);
        sub_25214200C();
        v142 = 0;
        v83 = 0;
        v84 = aBlock;
        p_isa = (aBlock + 24);
        v85 = *(v22 + 16);
        v13 = MEMORY[0x277D84F90];
        v86 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v85 == v83)
          {
            goto LABEL_75;
          }

          v19 = *(v22 + 16);
          if (v83 >= v19)
          {
            goto LABEL_150;
          }

          v19 = *(v84 + 16);
          if (v83 == v19)
          {
LABEL_75:

            v93 = *(v86 + 16);
            p_isa = &v138->isa;
            if (v93)
            {
              *&aBlock = v13;
              sub_25209B1F4(0, v93, 0);
              v94 = aBlock;
              v95 = *(aBlock + 16);
              v96 = 40;
              do
              {
                v97 = *(v86 + v96);
                *&aBlock = v94;
                v98 = *(v94 + 24);
                if (v95 >= v98 >> 1)
                {
                  sub_25209B1F4((v98 > 1), v95 + 1, 1);
                  v94 = aBlock;
                }

                *(v94 + 16) = v95 + 1;
                *(v94 + 8 * v95 + 32) = v97;
                v96 += 16;
                ++v95;
                --v93;
              }

              while (v93);
            }

            else
            {

              v94 = MEMORY[0x277D84F90];
            }

            v102 = *(v94 + 16);
            if (!v102 || ((v103 = *(v94 + 8 * v102 + 24), v103 != 1.0) || v3 != *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel)) && (v103 != 0.0 || v3 != *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel)))
            {
              v110 = 32;
              v111 = *(v94 + 16);
              do
              {
                v112 = v111;
                if (!v111)
                {
                  break;
                }

                v113 = *(v94 + v110);
                v110 += 8;
                --v111;
              }

              while (v113 != 0.0);
              v114 = 32;
              do
              {
                if (!v102)
                {
                  goto LABEL_107;
                }

                v115 = *(v94 + v114);
                v114 += 8;
                --v102;
              }

              while (v115 != 1.0);

              if (!v112)
              {
                goto LABEL_108;
              }

              MEMORY[0x28223BE20](v116);
              sub_25214200C();
              v106 = aBlock;
              v109 = *(aBlock + 16);
              if (v109)
              {
                goto LABEL_165;
              }

              goto LABEL_105;
            }

            MEMORY[0x28223BE20](v104);
            sub_25214200C();
            v77 = aBlock;
            v80 = *(aBlock + 16);
            if (v80)
            {
              goto LABEL_158;
            }

            goto LABEL_95;
          }

          if (v83 >= v19)
          {
            goto LABEL_151;
          }

          v87 = *(v143 + 8 * v83++);
          if (vabdd_f64(v87, v2) < 0.01)
          {
            v88 = p_isa[v83];
            v89 = swift_isUniquelyReferenced_nonNull_native();
            *&aBlock = v86;
            if ((v89 & 1) == 0)
            {
              sub_25209B214(0, *(v86 + 16) + 1, 1);
              v86 = aBlock;
            }

            v91 = *(v86 + 16);
            v90 = *(v86 + 24);
            if (v91 >= v90 >> 1)
            {
              sub_25209B214((v90 > 1), v91 + 1, 1);
              v86 = aBlock;
            }

            *(v86 + 16) = v91 + 1;
            v92 = v86 + 16 * v91;
            *(v92 + 32) = v87;
            *(v92 + 40) = v88;
            v22 = v141;
          }
        }
      }

LABEL_51:

      MEMORY[0x28223BE20](v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA10, &qword_252143B58);
      sub_25214200C();
      v69 = v146;
      v70 = *&aBlock;
      p_isa = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252143AC0;
      *(inited + 32) = v2;
      v72 = sub_25209D600(inited);
      swift_setDeallocating();
      v19 = *(v72 + 16);
      if (!v19)
      {
        goto LABEL_152;
      }

      v73 = *(v72 + 32);

      if (v69 == 2)
      {
        v75 = 0.0;
      }

      else
      {
        v75 = v70;
      }

      if (v69 != 2 && v73 == v75)
      {
        MEMORY[0x28223BE20](v74);
        p_isa = &v138->isa;
        sub_25214200C();
        v13 = aBlock;
        v19 = *(aBlock + 16);
        if (v19)
        {
          goto LABEL_154;
        }

        goto LABEL_58;
      }

      if (v2 == v4)
      {
        if (v137)
        {
          v82 = v5 + 10.0;
          goto LABEL_84;
        }

        v101 = v5 + -10.0;
      }

      else
      {
        MEMORY[0x28223BE20](v74);
        sub_25214200C();
        v99 = *(aBlock + 16);
        if (v99)
        {
          v100 = *(aBlock + 8 * v99 + 24);

          if (v100 == 0.0)
          {
            v82 = v3 + 10.0;
LABEL_84:
            if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel) >= v82)
            {
              v2 = v82;
            }

            else
            {
              v2 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
            }

LABEL_124:
            MEMORY[0x28223BE20](v74);
            sub_25214200C();
            v19 = *(aBlock + 16);
            if (!v19)
            {
              goto LABEL_153;
            }

            v3 = *(aBlock + 32);

            v126 = swift_initStackObject();
            *(v126 + 16) = xmmword_252143AC0;
            *(v126 + 32) = v3;
            v77 = sub_25209D600(v126);
            swift_setDeallocating();
            if (!v77[2])
            {
              __break(1u);
LABEL_127:

              goto LABEL_128;
            }

LABEL_140:
            v129 = v77[4];

            v130 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel);
            *&aBlock = v129;
            *(&aBlock + 1) = v2;
            v146 = v130;
            v147 = 0x3FF0000000000000;
            sub_252084B80(&aBlock);
            v10 = 1;
            return v10 & 1;
          }
        }

        else
        {
        }

        v101 = v3 + -10.0;
      }

      if (v101 > *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel))
      {
        v2 = v101;
      }

      else
      {
        v2 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);
      }

      goto LABEL_124;
    }

    v24 = swift_allocObject();
    *(v24 + 16) = isEscapingClosureAtFileLocation;
    *(v24 + 24) = 1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_2520A3758;
    *(v25 + 24) = v24;
    v148 = sub_2520A3768;
    v149 = v25;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v146 = sub_252083924;
    v147 = &block_descriptor_820;
    v26 = _Block_copy(&aBlock);
    p_isa = v149;
    v27 = isEscapingClosureAtFileLocation;

    dispatch_sync(v11, v26);
    _Block_release(v26);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
LABEL_12:
      v10 = 0;
      return v10 & 1;
    }
  }

  else
  {
LABEL_148:
    __break(1u);
  }

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
  sub_252098E44(v13, (v13 + 4), 1, (2 * v19) | 1);
  v132 = v131;

  v13 = v132;
LABEL_58:
  v76 = swift_allocObject();
  *(v76 + 16) = isEscapingClosureAtFileLocation;
  *(v76 + 24) = v13;
  v77 = swift_allocObject();
  v77[2] = sub_2520A3620;
  v77[3] = v76;
  v148 = sub_2520A3768;
  v149 = v77;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v146 = sub_252083924;
  v147 = &block_descriptor_873;
  v78 = _Block_copy(&aBlock);
  isEscapingClosureAtFileLocation = isEscapingClosureAtFileLocation;

  dispatch_sync(p_isa, v78);
  _Block_release(v78);
  v79 = swift_isEscapingClosureAtFileLocation();

  if (v79)
  {
    __break(1u);
LABEL_156:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_158:
      sub_252098E44(v77, (v77 + 4), 1, (2 * v80) | 1);
      v134 = v133;

      v77 = v134;
LABEL_95:
      v105 = swift_allocObject();
      *(v105 + 16) = isEscapingClosureAtFileLocation;
      *(v105 + 24) = v77;
      v106 = swift_allocObject();
      *(v106 + 16) = sub_2520A3620;
      *(v106 + 24) = v105;
      v148 = sub_2520A3768;
      v149 = v106;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v146 = sub_252083924;
      v147 = &block_descriptor_858;
      v107 = _Block_copy(&aBlock);
      isEscapingClosureAtFileLocation = isEscapingClosureAtFileLocation;

      dispatch_sync(p_isa, v107);
      _Block_release(v107);
      v108 = swift_isEscapingClosureAtFileLocation();

      if ((v108 & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
      do
      {
        __break(1u);
LABEL_165:
        sub_252098E44(v106, v106 + 32, 1, (2 * v109) | 1);
        v136 = v135;

        v106 = v136;
LABEL_105:
        v117 = swift_allocObject();
        *(v117 + 16) = isEscapingClosureAtFileLocation;
        *(v117 + 24) = v106;
        v118 = swift_allocObject();
        *(v118 + 16) = sub_2520A3620;
        *(v118 + 24) = v117;
        v148 = sub_2520A3768;
        v149 = v118;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v146 = sub_252083924;
        v147 = &block_descriptor_846;
        v119 = _Block_copy(&aBlock);
        isEscapingClosureAtFileLocation = isEscapingClosureAtFileLocation;

        dispatch_sync(p_isa, v119);
        _Block_release(v119);
        v120 = swift_isEscapingClosureAtFileLocation();

        if ((v120 & 1) == 0)
        {
          goto LABEL_59;
        }

        __break(1u);
LABEL_107:

LABEL_108:
        if (v2 != v4)
        {
          goto LABEL_116;
        }

        MEMORY[0x28223BE20](v116);
        v106 = v142;
        sub_25214200C();

        v109 = *(&aBlock + 1);
        v122 = *(&aBlock + 1) - 1;
        if (__OFSUB__(*(&aBlock + 1), 1))
        {
          goto LABEL_160;
        }

        MEMORY[0x28223BE20](v121);
        sub_25214200C();
        v109 = *(&aBlock + 1);
        if (*(&aBlock + 1) < v122 || v146 < 1)
        {
          goto LABEL_161;
        }

        v109 = v122 * v146;
        if ((v122 * v146) >> 64 != (v122 * v146) >> 63)
        {
          goto LABEL_162;
        }

        if ((v109 & 0x8000000000000000) != 0)
        {
          goto LABEL_163;
        }
      }

      while (v109 >= *(aBlock + 16));
      v4 = *(aBlock + 8 * v109 + 32);

      if (v4 != v2)
      {
        if (!v137)
        {
          v127 = v5 + -10.0;
          goto LABEL_135;
        }

        v125 = v5 + 10.0;
        goto LABEL_131;
      }

LABEL_116:
      MEMORY[0x28223BE20](v116);
      sub_25214200C();
      v123 = *(aBlock + 16);
      if (!v123)
      {
        goto LABEL_127;
      }

      v124 = *(aBlock + 8 * v123 + 24);

      if (v124 == 0.0)
      {
        v125 = v3 + 10.0;
LABEL_131:
        if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel) >= v125)
        {
          v2 = v125;
        }

        else
        {
          v2 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
        }

        goto LABEL_138;
      }

LABEL_128:
      v127 = v3 + -10.0;
LABEL_135:
      if (v127 > *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel))
      {
        v2 = v127;
      }

      else
      {
        v2 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);
      }

LABEL_138:
      MEMORY[0x28223BE20](v116);
      v77 = v142;
      sub_25214200C();
      v80 = *(aBlock + 16);
      if (!v80)
      {
        goto LABEL_156;
      }

      v3 = *(aBlock + 32);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      v128 = swift_initStackObject();
      *(v128 + 16) = xmmword_252143AC0;
      *(v128 + 32) = v3;
      v77 = sub_25209D600(v128);
      swift_setDeallocating();
      v80 = v77[2];
      if (v80)
      {
        goto LABEL_140;
      }
    }

    v81 = 0;
  }

  else
  {
LABEL_59:
    v81 = 1;
  }

  v10 = sub_25208DC58(v81);
  return v10 & 1;
}

uint64_t sub_25208F534(uint64_t a1)
{
  result = MEMORY[0x253099040](*(a1 + 16), MEMORY[0x277D839F8], MEMORY[0x277D83A18]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_25213EA8C(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25208F62C(uint64_t a1, int64_t a2, double a3, double a4)
{
  v6 = v5;
  v185 = a1;
  v186 = a2;
  v189 = a4;
  v182 = a3;
  *&v7 = MEMORY[0x277D84F90];
  v215 = *MEMORY[0x277D85DE8];
  v214 = MEMORY[0x277D84F90];
  v8 = *&v4[OBJC_IVAR____TtC11HearingTest12HTAudiometry_allFrequencies];

  v10 = sub_25209D6D8(v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
  inited = swift_initStackObject();
  v206 = xmmword_252143AB0;
  *(inited + 16) = xmmword_252143AB0;
  v13 = *(v10 + 16);
  v208 = NAN;
  vDSP_minvD((v10 + 32), 1, &v208, v13);
  *(inited + 32) = v208;
  v14 = *(v10 + 16);
  v208 = NAN;
  vDSP_maxvD((v10 + 32), 1, &v208, v14);
  v15 = v208;

  *(inited + 40) = v15;
  *&v16 = COERCE_DOUBLE(sub_2520AA548(inited, &unk_28644BE80));

  v208 = *&v7;
  v17 = v4;
  sub_25209B1F4(0, 6, 0);
  v18 = v208;
  v19 = swift_initStackObject();
  v205 = xmmword_252143AC0;
  *(v19 + 16) = xmmword_252143AC0;
  *(v19 + 32) = 0x407F400000000000;
  *&v20 = COERCE_DOUBLE(sub_25209D6D8(v19));
  swift_setDeallocating();
  v21 = *(v20 + 16);
  if (!v21)
  {
    goto LABEL_175;
  }

  v195 = v11;
  v15 = *(v20 + 32);

  v11 = *(*&v18 + 16);
  v21 = *(*&v18 + 24);
  v20 = v11 + 1;
  if (v11 >= v21 >> 1)
  {
    goto LABEL_176;
  }

LABEL_3:
  *(*&v18 + 16) = *&v20;
  *(*&v18 + 8 * v11 + 32) = v15;
  v22 = sub_25209D6D8(&unk_28644BF50);
  v23 = *(v22 + 16);
  if (v23)
  {
    v15 = *(v22 + 32);

    v11 = *(*&v18 + 16);
    v23 = *(*&v18 + 24);
    v20 = v11 + 1;
    if (v11 < v23 >> 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v23 > 1), v20, 1);
  v18 = v208;
LABEL_5:
  *(*&v18 + 16) = *&v20;
  *(*&v18 + 8 * v11 + 32) = v15;
  v24 = sub_25209D6D8(&unk_28644BF28);
  v25 = *(v24 + 16);
  if (v25)
  {
    v15 = *(v24 + 32);

    v11 = *(*&v18 + 16);
    v25 = *(*&v18 + 24);
    v20 = v11 + 1;
    if (v11 < v25 >> 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v25 > 1), v20, 1);
LABEL_7:
  v26 = v208;
  *(*&v208 + 16) = *&v20;
  *(*&v26 + 8 * v11 + 32) = v15;
  v27 = sub_25209D6D8(&unk_28644BF00);
  v28 = *(v27 + 16);
  if (v28)
  {
    v15 = *(v27 + 32);

    v18 = *(*&v26 + 16);
    v28 = *(*&v26 + 24);
    v20 = *&v18 + 1;
    if (*&v18 < v28 >> 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v28 > 1), v20, 1);
  v26 = v208;
LABEL_9:
  *(*&v26 + 16) = *&v20;
  *(*&v26 + 8 * *&v18 + 32) = v15;
  v29 = sub_25209D6D8(&unk_28644BED8);
  v30 = *(v29 + 16);
  if (v30)
  {
    v15 = *(v29 + 32);

    v18 = *(*&v26 + 16);
    v30 = *(*&v26 + 24);
    v20 = *&v18 + 1;
    if (*&v18 < v30 >> 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v30 > 1), v20, 1);
  v26 = v208;
LABEL_11:
  *(*&v26 + 16) = *&v20;
  *(*&v26 + 8 * *&v18 + 32) = v15;
  v31 = sub_25209D6D8(&unk_28644BEB0);
  v32 = *(v31 + 16);
  if (v32)
  {
    v15 = *(v31 + 32);

    v11 = *(*&v26 + 16);
    v32 = *(*&v26 + 24);
    v20 = v11 + 1;
    if (v11 < v32 >> 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v32 > 1), v20, 1);
LABEL_13:
  v33 = v208;
  *(*&v208 + 16) = *&v20;
  *(*&v33 + 8 * v11 + 32) = v15;

  v208 = *&v16;
  sub_2520806CC(*&v33);

  sub_252099F94(&v208);
  v204 = *&v6;
  if (*&v6 != 0.0)
  {

    __break(1u);
    return result;
  }

  v197 = v208;
  v208 = *&v7;
  v34 = v17;
  sub_25209B1F4(0, 4, 0);
  *&v16 = v208;
  v11 = v195;
  v35 = swift_initStackObject();
  *(v35 + 16) = v205;
  *(v35 + 32) = 0x406F400000000000;
  v17 = sub_25209D6D8(v35);
  swift_setDeallocating();
  v36 = *(v17 + 16);
  if (v36)
  {
    v15 = *(v17 + 32);

    v20 = *(v16 + 16);
    v36 = *(v16 + 24);
    v17 = v20 + 1;
    if (v20 < v36 >> 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v36 > 1), v17, 1);
  *&v16 = v208;
LABEL_16:
  *(v16 + 16) = v17;
  *(v16 + 8 * v20 + 32) = v15;
  v37 = sub_25209D6D8(&unk_28644BFC8);
  v38 = *(v37 + 16);
  if (v38)
  {
    v15 = *(v37 + 32);

    v20 = *(v16 + 16);
    v38 = *(v16 + 24);
    v17 = v20 + 1;
    if (v20 < v38 >> 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v38 > 1), v17, 1);
  *&v16 = v208;
LABEL_18:
  *(v16 + 16) = v17;
  *(v16 + 8 * v20 + 32) = v15;
  v39 = sub_25209D6D8(&unk_28644BFA0);
  v40 = *(v39 + 16);
  if (v40)
  {
    v15 = *(v39 + 32);

    v20 = *(v16 + 16);
    v40 = *(v16 + 24);
    v17 = v20 + 1;
    if (v20 < v40 >> 1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v40 > 1), v17, 1);
LABEL_20:
  v41 = v208;
  *(*&v208 + 16) = v17;
  *(*&v41 + 8 * v20 + 32) = v15;
  v42 = sub_25209D6D8(&unk_28644BF78);
  v43 = *(v42 + 16);
  if (v43)
  {
    v15 = *(v42 + 32);

    v16 = *(*&v41 + 16);
    v43 = *(*&v41 + 24);
    v17 = v16 + 1;
    if (v16 < v43 >> 1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v43 > 1), v17, 1);
  v41 = v208;
LABEL_22:
  *(*&v41 + 16) = v17;
  v196 = v41;
  *(*&v41 + 8 * v16 + 32) = v15;

  v208 = *&v7;
  v203 = v34;
  sub_25209B1F4(0, 2, 0);
  *&v7 = v208;
  v44 = swift_initStackObject();
  *(v44 + 16) = v205;
  *(v44 + 32) = 0x407F400000000000;
  *&v6 = COERCE_DOUBLE(sub_25209D6D8(v44));
  swift_setDeallocating();
  v45 = *(v6 + 16);
  if (v45)
  {
    v15 = *(v6 + 32);

    v17 = *(v7 + 2);
    v45 = *(v7 + 3);
    v6 = v17 + 1;
    v46 = *&v7;
    if (v17 < v45 >> 1)
    {
      goto LABEL_24;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25209B1F4((v45 > 1), v6, 1);
  v46 = v208;
LABEL_24:
  *(*&v46 + 16) = *&v6;
  *(*&v46 + 8 * v17 + 32) = v15;
  v47 = sub_25209D6D8(&unk_28644BFF0);
  v48 = *(v47 + 16);
  if (!v48)
  {
    __break(1u);
    goto LABEL_198;
  }

  v15 = *(v47 + 32);

  v17 = *(*&v46 + 16);
  v48 = *(*&v46 + 24);
  v6 = v17 + 1;
  if (v17 >= v48 >> 1)
  {
LABEL_198:
    sub_25209B1F4((v48 > 1), v6, 1);
    v46 = v208;
  }

  *(*&v46 + 16) = *&v6;
  v183 = (*&v46 + 32);
  *(*&v46 + 32 + 8 * v17) = v15;

  v49 = v46;
  v50 = v197;
  v194 = *(*&v197 + 16);
  if (!v194)
  {
LABEL_164:

    result = v214;
    goto LABEL_165;
  }

  v51 = 0;
  v192 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel;
  v193 = v49;
  v188 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue;
  v187 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_kernelLength;
  v190 = *&v197 + 32;
  v191 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel;
  v181 = -1.6;
  *&v180 = 1.6;
  v184 = xmmword_252143B20;
  while (1)
  {
    v21 = *(*&v50 + 16);
    if (v51 >= v21)
    {
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      sub_25209B1F4((v21 > 1), v20, 1);
      v18 = v208;
      goto LABEL_3;
    }

    v201 = v51;
    v55 = *(v190 + 8 * v51);
    v56 = *&v203[v192];
    v57 = *&v203[v191];
    v15 = round((v56 - v57) / 2.5);
    v58 = swift_initStackObject();
    *(v58 + 16) = v206;
    *(v58 + 32) = v57;
    *(v58 + 40) = v56;
    v59 = swift_initStackObject();
    *(v59 + 16) = v206;
    *(v59 + 32) = 0;
    *(v59 + 40) = v15;
    *&v60 = COERCE_DOUBLE(sub_2520AA548(v58, v59));

    v62 = *(v60 + 16);
    v202 = v60;
    *&v205 = v62;
    if (v62)
    {
      v63 = (v60 + 32);
      v64 = MEMORY[0x277D84F90];
      while (1)
      {
        v15 = *v63;
        v65 = swift_initStackObject();
        *(v65 + 16) = v206;
        *(v65 + 32) = v55;
        v66 = (v65 + 32);
        *(v65 + 40) = v15;
        v67 = *(v64 + 2);
        v68 = v67 + 2;
        if (__OFADD__(v67, 2))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v70 = *(v64 + 3) >> 1, v70 < v68))
        {
          if (v67 <= v68)
          {
            v71 = v67 + 2;
          }

          else
          {
            v71 = v67;
          }

          v64 = sub_252099194(isUniquelyReferenced_nonNull_native, v71, 1, v64);
          v70 = *(v64 + 3) >> 1;
        }

        v72 = *(v64 + 2);
        if (v70 - v72 < 2)
        {
          goto LABEL_167;
        }

        *&v64[8 * v72 + 32] = *v66;

        v73 = *(v64 + 2);
        v74 = __OFADD__(v73, 2);
        v75 = v73 + 2;
        if (v74)
        {
          goto LABEL_168;
        }

        *(v64 + 2) = v75;
        ++v63;
        if (!--v62)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:

      v176 = 0x8000000252148F50;
      sub_2520A2090();
      swift_allocError();
      v178 = 0xD000000000000031;
      goto LABEL_160;
    }

    v64 = MEMORY[0x277D84F90];
LABEL_51:
    v198 = v64;
    v76 = v203;
    v77 = *&v203[v188];
    MEMORY[0x28223BE20](v61);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
    v79 = v204;
    v80 = sub_25214200C();
    *&v16 = v208;
    MEMORY[0x28223BE20](v80);
    v199 = v78;
    v81 = sub_25214200C();
    v11 = *&v208;
    v82 = v209;
    v204 = v210;
    MEMORY[0x28223BE20](v81);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
    v200 = v77;
    sub_25214200C();
    *&v20 = v208;
    v83 = *&v76[v187];
    sub_25209EA3C(v198, v205, 2, v11, v82, *&v204, v16, *&v208, &v208);
    if (v79 != 0.0)
    {
      goto LABEL_153;
    }

    v84 = v209;
    v85 = *&v210;
    v204 = v208;
    *&v205 = v211;
    v86 = v212;
    v6 = v213;

    if (v84 < 1 || v85 <= 0)
    {

      v172 = 0x8000000252148C70;
      sub_2520A2090();
      swift_allocError();
      v174 = 0xD00000000000001DLL;
LABEL_156:
      *v173 = v174;
      v173[1] = v172;
      swift_willThrow();

      goto LABEL_165;
    }

    if (v86 < 1 || v6 < 1)
    {

      v172 = 0x8000000252148C90;
      sub_2520A2090();
      swift_allocError();
      v174 = 0xD00000000000001ELL;
      goto LABEL_156;
    }

    v17 = &v180;
    v208 = *&v205;
    v209 = v86;
    v210 = *&v6;
    MEMORY[0x28223BE20](*(v205 + 16));
    *&v7 = COERCE_DOUBLE(&v208);
    v88 = COERCE_DOUBLE(sub_2520AABEC(v87, sub_2520A3B00));
    v21 = v86 * v6;
    if ((v86 * v6) >> 64 != (v86 * v6) >> 63)
    {
      goto LABEL_171;
    }

    v16 = *(*&v88 + 16);
    if (v16 != v21)
    {
      goto LABEL_172;
    }

    v17 = &v180;
    v208 = v88;
    v209 = v86;
    v210 = *&v6;
    MEMORY[0x28223BE20](*&v88);
    v11 = &v208;
    v7 = v89;
    *&v20 = COERCE_DOUBLE(sub_2520AABEC(v16, sub_2520A3B60));

    v21 = *(v20 + 16);
    if (v21 != v16)
    {
      goto LABEL_173;
    }

    v17 = &v180;
    v208 = *&v20;
    v209 = v86;
    v210 = *&v6;
    MEMORY[0x28223BE20](v90);
    v91 = COERCE_DOUBLE(sub_2520AABEC(v16, sub_2520A3B30));
    v11 = 0;

    v21 = *(*&v91 + 16);
    if (v21 != v16)
    {
      goto LABEL_174;
    }

    v208 = v91;
    v209 = v86;
    v210 = *&v6;
    MEMORY[0x28223BE20](v92);
    v93 = COERCE_DOUBLE(sub_2520AABEC(v16, sub_2520A335C));

    v208 = v93;
    MEMORY[0x28223BE20](*(*&v93 + 16));
    v95 = COERCE_DOUBLE(sub_2520AABEC(v94, sub_2520A3AE8));

    v207 = v204;
    v208 = v95;
    MEMORY[0x28223BE20](*(*&v95 + 16));
    v97 = sub_2520AABEC(v96, sub_2520A338C);

    v98 = sub_25209E75C(v97);

    v99 = sub_25209DBDC(1, -1, v98, *(v98 + 16), 1);
    v101 = v100;
    v103 = v102;

    v53 = v101 <= 0;
    v20 = v202;
    if (v53)
    {

      goto LABEL_159;
    }

    if (v103 <= 0)
    {
      break;
    }

    v104 = *(v99 + 16);
    v208 = NAN;
    v105 = v99 + 32;
    vDSP_maxvD((v99 + 32), 1, &v208, v104);
    if (v208 < 0.5)
    {

      goto LABEL_80;
    }

    v107 = *(v99 + 16);
    v208 = NAN;
    vDSP_minvD((v99 + 32), 1, &v208, v107);
    if (v208 > 0.5)
    {

      v56 = v57;
      goto LABEL_80;
    }

    v108 = *(v99 + 16);
    if (v108)
    {
      v109 = 0;
      while (*(v105 + 8 * v109) <= 0.5)
      {
        if (v108 == ++v109)
        {
          goto LABEL_70;
        }
      }

      if (!v109)
      {
        if (v103 == 1)
        {
          goto LABEL_169;
        }

        v110 = 1;
        if (v108 <= 1)
        {
LABEL_152:
          __break(1u);
LABEL_153:

          goto LABEL_165;
        }

        goto LABEL_77;
      }
    }

    else
    {
LABEL_70:
      v109 = 1;
    }

    if (v103 - 1 >= v109)
    {
      v110 = v109;
    }

    else
    {
      v110 = v103 - 1;
    }

    if (v103 == 1)
    {
      goto LABEL_169;
    }

    if (v110 >= v108)
    {
      goto LABEL_152;
    }

LABEL_77:
    if (v110 > v103)
    {
      __break(1u);
LABEL_200:
      __break(1u);
    }

    v111 = *(v105 + 8 * v110);
    v112 = *(v105 + 8 * (v110 - 1));

    if (v110 >= *(v20 + 16))
    {
      goto LABEL_200;
    }

    v113 = *(v20 + 32 + 8 * v110);
    v114 = *(v20 + 32 + 8 * (v110 - 1));

    v56 = v114 + (0.5 - v112) / (v111 - v112) * (v113 - v114);
LABEL_80:
    v115 = v56 - v189;
    v116 = v56 + v189;
    v117 = *(*&v196 + 16);
    v118 = 32;
    ++v201;
    while (v117)
    {
      v119 = *(*&v196 + v118);
      v118 += 8;
      --v117;
      if (v119 == v55)
      {
        v120 = v55 + -1.2;
        v121 = 1.2;
        goto LABEL_89;
      }
    }

    v122 = *(*&v193 + 16);
    v123 = v183;
    while (v122)
    {
      v124 = *v123++;
      --v122;
      if (v124 == v55)
      {
        v121 = *&v180;
        v120 = v55 + v181;
        goto LABEL_89;
      }
    }

    v121 = v182;
    v120 = v55 - v182;
LABEL_89:
    MEMORY[0x28223BE20](v106);
    sub_25214200C();
    v125 = sub_2520EEE44(0, *&v208, v209, *&v210);
    v204 = 0.0;
    v126 = v125;

    v127 = *(v126 + 16);
    if (v127)
    {
      v128 = 0;
      v129 = v55 + v121;
      v130 = MEMORY[0x277D84F90];
      do
      {
        v133 = *(v126 + 32 + 8 * v128);
        if (v120 <= v133 && v133 <= v129)
        {
          v135 = swift_isUniquelyReferenced_nonNull_native();
          v208 = v130;
          if ((v135 & 1) == 0)
          {
            sub_25209B2B4(0, *(*&v130 + 16) + 1, 1);
            v130 = v208;
          }

          v132 = *(*&v130 + 16);
          v131 = *(*&v130 + 24);
          v20 = v132 + 1;
          if (v132 >= v131 >> 1)
          {
            sub_25209B2B4((v131 > 1), v132 + 1, 1);
            v130 = v208;
          }

          *(*&v130 + 16) = *&v20;
          *(*&v130 + 8 * v132 + 32) = v128;
        }

        ++v128;
      }

      while (v127 != v128);
    }

    else
    {
      v130 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v136);
    v137 = v204;
    sub_25214200C();
    v138 = sub_2520EEE44(1, *&v208, v209, *&v210);
    v204 = v137;
    if (v137 != 0.0)
    {

LABEL_163:

      goto LABEL_165;
    }

    v139 = v138;

    v140 = *(v139 + 16);
    *&v205 = v139;
    if (v140)
    {
      v141 = 0;
      v142 = v139 + 32;
      v143 = MEMORY[0x277D84F90];
      do
      {
        v146 = *(v142 + 8 * v141);
        if (v115 <= v146 && v146 <= v116)
        {
          v148 = swift_isUniquelyReferenced_nonNull_native();
          v208 = v143;
          if ((v148 & 1) == 0)
          {
            sub_25209B2B4(0, *(*&v143 + 16) + 1, 1);
            v143 = v208;
          }

          v145 = *(*&v143 + 16);
          v144 = *(*&v143 + 24);
          v20 = v145 + 1;
          if (v145 >= v144 >> 1)
          {
            sub_25209B2B4((v144 > 1), v145 + 1, 1);
            v143 = v208;
          }

          *(*&v143 + 16) = *&v20;
          *(*&v143 + 8 * v145 + 32) = v141;
        }

        ++v141;
      }

      while (v140 != v141);
    }

    else
    {
      v143 = MEMORY[0x277D84F90];
    }

    v149 = *(*&v130 + 16);
    if (v149)
    {
      v150 = 0;
      v151 = (*&v130 + 32);
      *&v16 = MEMORY[0x277D84F90];
      v202 = *(*&v130 + 16);
      *&v205 = *&v130 + 32;
      do
      {
        v154 = v151[v150];
        v155 = *(*&v143 + 16);
        v156 = 32;
        while (v155)
        {
          v157 = *(*&v143 + v156);
          v156 += 8;
          --v155;
          if (v157 == v154)
          {
            v158 = swift_isUniquelyReferenced_nonNull_native();
            v208 = *&v16;
            if ((v158 & 1) == 0)
            {
              sub_25209B2B4(0, *(v16 + 16) + 1, 1);
              v149 = v202;
              *&v16 = v208;
            }

            v153 = *(v16 + 16);
            v152 = *(v16 + 24);
            v20 = v153 + 1;
            if (v153 >= v152 >> 1)
            {
              sub_25209B2B4((v152 > 1), v153 + 1, 1);
              v149 = v202;
              *&v16 = v208;
            }

            *(v16 + 16) = *&v20;
            *(v16 + 8 * v153 + 32) = v154;
            v151 = v205;
            break;
          }
        }

        ++v150;
      }

      while (v150 != v149);
    }

    else
    {

      *&v16 = MEMORY[0x277D84F90];
    }

    MEMORY[0x28223BE20](v159);
    v160 = v204;
    sub_25214200C();
    v161 = sub_2520F01BC(v16, *&v208, v209, *&v210);
    v11 = v195;
    v204 = v160;
    if (v160 != 0.0)
    {

      goto LABEL_163;
    }

    v162 = v161;

    v163 = *(v162 + 16);
    if (v163)
    {

      v164 = 32;
      v165 = MEMORY[0x277D84F90];
      do
      {
        if (*(v162 + v164) == 1.0)
        {
          v167 = swift_isUniquelyReferenced_nonNull_native();
          v208 = v165;
          if ((v167 & 1) == 0)
          {
            sub_25209B1F4(0, *(*&v165 + 16) + 1, 1);
            v165 = v208;
          }

          v20 = *(*&v165 + 16);
          v166 = *(*&v165 + 24);
          v16 = v20 + 1;
          if (v20 >= v166 >> 1)
          {
            sub_25209B1F4((v166 > 1), v20 + 1, 1);
            v165 = v208;
          }

          *(*&v165 + 16) = *&v16;
          *(*&v165 + 8 * v20 + 32) = 0x3FF0000000000000;
        }

        v164 += 8;
        --v163;
      }

      while (v163);
    }

    else
    {
      v165 = MEMORY[0x277D84F90];
    }

    v7 = *(*&v165 + 16);

    v17 = *(v162 + 16);
    if (v17)
    {
      v20 = v162 + 32;
      v52 = MEMORY[0x277D84F90];
      do
      {
        v170 = *v20;
        if (*v20 == 0.0)
        {
          v171 = swift_isUniquelyReferenced_nonNull_native();
          v208 = v52;
          if ((v171 & 1) == 0)
          {
            sub_25209B1F4(0, *(*&v52 + 16) + 1, 1);
            v52 = v208;
          }

          v169 = *(*&v52 + 16);
          v168 = *(*&v52 + 24);
          v16 = v169 + 1;
          if (v169 >= v168 >> 1)
          {
            sub_25209B1F4((v168 > 1), v169 + 1, 1);
            v52 = v208;
          }

          *(*&v52 + 16) = *&v16;
          *(*&v52 + 8 * v169 + 32) = v170;
        }

        v20 += 8;
        --v17;
      }

      while (v17);
    }

    else
    {
      v52 = MEMORY[0x277D84F90];
    }

    v6 = *(*&v52 + 16);

    v53 = v6 < v186 || v7 < v185;
    if (v53)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 1.0;
    }

    v54 = swift_initStackObject();
    *(v54 + 16) = v184;
    *(v54 + 32) = v55;
    *(v54 + 40) = v7;
    *(v54 + 48) = v6;
    *(v54 + 56) = v56;
    *(v54 + 64) = v15;
    sub_2520806CC(v54);
    v51 = v201;
    v50 = v197;
    if (v201 == v194)
    {
      goto LABEL_164;
    }
  }

LABEL_159:

  v176 = 0x8000000252148F20;
  sub_2520A2090();
  swift_allocError();
  v178 = 0xD00000000000002CLL;
LABEL_160:
  *v177 = v178;
  v177[1] = v176;
  result = swift_willThrow();
LABEL_165:
  v179 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252090F78(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_2520959A0(a1, a2, a3);
  if (v8)
  {
    return 0;
  }

  v10 = *&v3[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  v11 = 0;
  sub_25214200C();

  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAA0, &unk_2521451D0);
  sub_25214200C();
  v13 = *(aBlock + 16);

  if (__OFSUB__(v78, v13))
  {
    __break(1u);
    swift_once();
    v15 = sub_25214198C();
    __swift_project_value_buffer(v15, qword_27F4CDE68);
    v16 = 0;
    v17 = sub_25214196C();
    v18 = sub_252141FBC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock = v21;
      *v19 = 136446466;
      v22 = sub_2521425DC();
      v24 = sub_2520A5448(v22, v23, &aBlock);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      v25 = 0;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&dword_25207E000, v17, v18, "[%{public}s] Error during newPoint in nextSample: %@", v19, 0x16u);
      sub_2520A2584(v20, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x253099FD0](v21, -1, -1);
      MEMORY[0x253099FD0](v19, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  if (v78 - v13 < 5)
  {
LABEL_5:

    goto LABEL_6;
  }

  MEMORY[0x28223BE20](v14);
  sub_25214200C();
  sub_252095DAC(a1, a2, a3, aBlock, v78, *(&v78 + 1), &aBlock, 4.0);
  v68 = v10;
  v73 = aBlock;
  v33 = v78;
  v71 = v79;
  v34 = v80;
  v72 = v81;
  v35 = v83;
  v69 = v82;
  v36 = v85;
  v70 = v84;
  v74 = v86;
  v75 = v87;

  if (!*(v36 + 16))
  {
    aBlock = v73;
    v78 = v33;
    v79 = v71;
    v80 = v34;
    v81 = v72;
    v82 = v69;
    v83 = v35;
    v84 = v70;
    v85 = v36;
    v86 = v74;
    v87 = v75;
    sub_2520A2584(&aBlock, &qword_27F4CDBC8, &qword_252143D80);
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v37);
  sub_25214200C();
  *v76 = aBlock;
  *&v76[8] = v78;
  sub_2520EEFF4(v36, v74, v75);

  v38 = swift_allocObject();
  *(v38 + 16) = v4;
  *(v38 + 24) = *v76;
  *(v38 + 40) = *&v76[16];
  v39 = swift_allocObject();
  *(v39 + 16) = sub_2520A2578;
  *(v39 + 24) = v38;
  v80 = sub_2520A3768;
  v81 = v39;
  aBlock = MEMORY[0x277D85DD0];
  *&v78 = 1107296256;
  *(&v78 + 1) = sub_252083924;
  v79 = &block_descriptor_718;
  v40 = _Block_copy(&aBlock);
  v41 = v4;

  dispatch_sync(v68, v40);
  _Block_release(v40);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = v71;
  v42[4] = v34;
  v42[5] = v72;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_2520A3528;
  *(v43 + 24) = v42;
  v80 = sub_2520A3768;
  v81 = v43;
  aBlock = MEMORY[0x277D85DD0];
  *&v78 = 1107296256;
  *(&v78 + 1) = sub_252083924;
  v79 = &block_descriptor_729;
  v44 = _Block_copy(&aBlock);
  v45 = v41;

  dispatch_sync(v68, v44);
  _Block_release(v44);
  LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

  if (v44)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v73;
  *(v46 + 32) = v33;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_2520A351C;
  *(v47 + 24) = v46;
  v80 = sub_2520A3768;
  v81 = v47;
  aBlock = MEMORY[0x277D85DD0];
  *&v78 = 1107296256;
  *(&v78 + 1) = sub_252083924;
  v79 = &block_descriptor_740;
  v48 = _Block_copy(&aBlock);
  v49 = v45;

  dispatch_sync(v68, v48);
  _Block_release(v48);
  LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

  if (v48)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    swift_once();
    v54 = sub_25214198C();
    __swift_project_value_buffer(v54, qword_27F4CDE68);
    v55 = v11;
    v56 = sub_25214196C();
    v57 = sub_252141FBC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      aBlock = v60;
      *v58 = 136446466;
      v61 = sub_2521425DC();
      v63 = sub_2520A5448(v61, v62, &aBlock);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2112;
      v64 = v11;
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 14) = v65;
      *v59 = v65;
      _os_log_impl(&dword_25207E000, v56, v57, "[%{public}s] Error during checkCoverage after outlier removal in nextSample: %@", v58, 0x16u);
      sub_2520A2584(v59, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v59, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x253099FD0](v60, -1, -1);
      MEMORY[0x253099FD0](v58, -1, -1);
    }

    else
    {
    }

    return 1;
  }

  v50 = swift_allocObject();
  v50[2] = v49;
  v50[3] = v69;
  v50[4] = v35;
  v50[5] = v70;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_2520A3534;
  *(v51 + 24) = v50;
  v80 = sub_2520A3768;
  v81 = v51;
  aBlock = MEMORY[0x277D85DD0];
  *&v78 = 1107296256;
  *(&v78 + 1) = sub_252083924;
  v79 = &block_descriptor_751;
  v52 = _Block_copy(&aBlock);
  v53 = v49;

  dispatch_sync(v68, v52);
  _Block_release(v52);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
    goto LABEL_35;
  }

  a1 = sub_25208F62C(2, 2, 2.2, 12.5);
  a2 = v66;
  a3 = v67;
  if (sub_2520959A0(a1, v66, v67))
  {

    return 0;
  }

LABEL_6:
  v27 = sub_252096F0C(a1, a2, a3);

  if (!v27[2])
  {
    __break(1u);
    goto LABEL_30;
  }

  v28 = v27[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252143AC0;
  *(inited + 32) = v28;
  v11 = sub_25209D600(inited);
  swift_setDeallocating();
  if (!v11[2])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v30 = v11[4];

  if (v27[2] < 2uLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v31 = v27[5];

  v32 = v4[OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel];
  aBlock = v30;
  *&v78 = v31;
  *(&v78 + 1) = v32;
  v79 = 0x3FF0000000000000;
  sub_252084B80(&aBlock);
  return 1;
}

void sub_252091D3C()
{
  v1 = v0;
  swift_getObjectType();
  isEscapingClosureAtFileLocation = 0;
  sub_252097390(&aBlock);
  v3 = aBlock;
  v4 = v184;
  v6 = v185;
  v5 = v186;
  v7 = v187;
  v8 = v188;

  v9 = sub_2520EEE44(0, v3, v4, v6);
  v10 = sub_2520EEE44(1, v3, v4, v6);

  v72 = sub_2520EEE44(0, v5, v7, v8);

  v73 = *(v9 + 16);
  v181 = v9;
  if (v73)
  {
    aBlock = MEMORY[0x277D84F90];
    sub_25209B1F4(0, v73, 0);
    v74 = v9;
    v75 = 0;
    v76 = aBlock;
    v77 = v74 + 32;
    v78 = v72;
    do
    {
      v79 = *(v78 + 16);
      v80 = 32;
      while (v79)
      {
        v81 = *(v78 + v80);
        v80 += 8;
        --v79;
        if (v81 == *(v77 + 8 * v75))
        {
          v82 = 1.0;
          goto LABEL_25;
        }
      }

      v82 = 0.0;
LABEL_25:
      aBlock = v76;
      v84 = *(v76 + 2);
      v83 = *(v76 + 3);
      if (v84 >= v83 >> 1)
      {
        sub_25209B1F4((v83 > 1), v84 + 1, 1);
        v78 = v72;
        v76 = aBlock;
      }

      ++v75;
      *(v76 + 2) = v84 + 1;
      *&v76[8 * v84 + 32] = v82;
    }

    while (v75 != v73);
    v176 = v76;

    v9 = v181;
  }

  else
  {

    v176 = MEMORY[0x277D84F90];
  }

  v85 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_resultFrequencies];

  v87 = sub_2520A0A6C(v86);

  v88 = *(v87 + 16);
  if (v88)
  {
    v89 = sub_252099E94(*(v87 + 16), 0, &qword_27F4CDA88, &unk_252143B60);
    v90 = sub_25209C308(&aBlock, v89 + 4, v88, v87);
    sub_2520A20E4();
    if (v90 == v88)
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  v89 = MEMORY[0x277D84F90];
LABEL_34:
  aBlock = v89;

  sub_252099F94(&aBlock);

  v91 = aBlock;
  v92 = *(aBlock + 2);
  v175 = v10;
  if (v92)
  {
    v178 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
    v93 = 32;
    v174 = aBlock;
    do
    {
      v177 = v92;
      v94 = *&v91[v93];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252143AC0;
      *(inited + 32) = v94;
      v96 = sub_25209D6D8(inited);
      swift_setDeallocating();
      if (!*(v96 + 16))
      {
        goto LABEL_86;
      }

      v97 = *(v96 + 32);

      v98 = _s11HearingTest13InterpolatorsC8interp1d7xValues01yE06xPointSdSaySdG_AHSdtFZ_0(v9, v10, v97);
      v100 = v99;
      MEMORY[0x28223BE20](v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA90, &qword_2521451E0);
      sub_25214200C();
      v101 = aBlock;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v101;
      sub_2520A8730(isUniquelyReferenced_nonNull_native, v100, v94);
      v103 = aBlock;
      v104 = swift_allocObject();
      *(v104 + 16) = v1;
      *(v104 + 24) = v103;
      v105 = swift_allocObject();
      *(v105 + 16) = sub_2520A3508;
      *(v105 + 24) = v104;
      v187 = sub_2520A3768;
      v188 = v105;
      aBlock = MEMORY[0x277D85DD0];
      v184 = 1107296256;
      v185 = sub_252083924;
      v186 = &block_descriptor_655;
      v106 = _Block_copy(&aBlock);
      v107 = v1;

      dispatch_sync(v178, v106);
      _Block_release(v106);
      LOBYTE(v103) = swift_isEscapingClosureAtFileLocation();

      if (v103)
      {
        goto LABEL_87;
      }

      v108 = swift_initStackObject();
      *(v108 + 16) = xmmword_252143AC0;
      *(v108 + 32) = v94;
      v109 = sub_25209D6D8(v108);
      swift_setDeallocating();
      if (!*(v109 + 16))
      {
        goto LABEL_88;
      }

      v110 = *(v109 + 32);

      v111 = _s11HearingTest13InterpolatorsC8interp1d7xValues01yE06xPointSdSaySdG_AHSdtFZ_0(v181, v176, v110);
      v113 = v112 == 1.0;
      MEMORY[0x28223BE20](v111);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB98, &qword_252143D50);
      sub_25214200C();
      v114 = aBlock;
      v115 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v114;
      sub_2520A8600(v113, v115, v94);
      v116 = aBlock;
      v117 = swift_allocObject();
      *(v117 + 16) = v107;
      *(v117 + 24) = v116;
      v118 = swift_allocObject();
      *(v118 + 16) = sub_2520A35CC;
      *(v118 + 24) = v117;
      v187 = sub_2520A3768;
      v188 = v118;
      aBlock = MEMORY[0x277D85DD0];
      v184 = 1107296256;
      v185 = sub_252083924;
      v186 = &block_descriptor_666;
      v119 = _Block_copy(&aBlock);
      v120 = v107;

      dispatch_sync(v178, v119);
      _Block_release(v119);
      LOBYTE(v119) = swift_isEscapingClosureAtFileLocation();

      if (v119)
      {
        goto LABEL_89;
      }

      v93 += 8;
      v92 = v177 - 1;
      v9 = v181;
      v10 = v175;
      v91 = v174;
    }

    while (v177 != 1);
  }

  v121 = sub_25209C938(MEMORY[0x277D84F90]);
  v122 = v9;
  v123 = *(v9 + 16);
  if (v123)
  {
    v124 = 0;
    v180 = v122 + 32;
    do
    {
      if (v124 >= *(v181 + 16))
      {
        goto LABEL_90;
      }

      v125 = *(v10 + 16);
      if (v124 == v125)
      {
        break;
      }

      if (v124 >= v125)
      {
        goto LABEL_92;
      }

      v126 = *(v180 + 8 * v124);
      v127 = *(v10 + 8 * v124 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
      v128 = swift_allocObject();
      *(v128 + 16) = xmmword_252143AC0;
      *(v128 + 56) = MEMORY[0x277D839F8];
      *(v128 + 64) = MEMORY[0x277D83A80];
      *(v128 + 32) = v126;
      v129 = sub_252141BAC();
      v131 = v130;
      v132 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v121;
      v134 = sub_25213E648(v129, v131);
      v135 = *(v121 + 2);
      v136 = (v133 & 1) == 0;
      v137 = v135 + v136;
      if (__OFADD__(v135, v136))
      {
        goto LABEL_93;
      }

      v138 = v133;
      if (*(v121 + 3) >= v137)
      {
        if (v132)
        {
          if (v133)
          {
            goto LABEL_43;
          }
        }

        else
        {
          sub_2520A6E60();
          if (v138)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        sub_2520A79C4(v137, v132);
        v139 = sub_25213E648(v129, v131);
        if ((v138 & 1) != (v140 & 1))
        {
          goto LABEL_99;
        }

        v134 = v139;
        if (v138)
        {
LABEL_43:

          v121 = aBlock;
          *(*(aBlock + 7) + 8 * v134) = v127;
          goto LABEL_44;
        }
      }

      v121 = aBlock;
      *&aBlock[8 * (v134 >> 6) + 64] |= 1 << v134;
      v141 = (*(v121 + 6) + 16 * v134);
      *v141 = v129;
      v141[1] = v131;
      *(*(v121 + 7) + 8 * v134) = v127;
      v142 = *(v121 + 2);
      v143 = __OFADD__(v142, 1);
      v144 = v142 + 1;
      if (v143)
      {
        goto LABEL_96;
      }

      *(v121 + 2) = v144;
LABEL_44:
      v10 = v175;
      ++v124;
    }

    while (v123 != v124);
  }

  v145 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  v146 = swift_allocObject();
  *(v146 + 16) = v1;
  *(v146 + 24) = v121;
  v147 = swift_allocObject();
  *(v147 + 16) = sub_2520A3460;
  *(v147 + 24) = v146;
  v187 = sub_2520A3768;
  v188 = v147;
  aBlock = MEMORY[0x277D85DD0];
  v184 = 1107296256;
  v185 = sub_252083924;
  v186 = &block_descriptor_677;
  v148 = _Block_copy(&aBlock);
  v149 = v1;

  dispatch_sync(v145, v148);
  _Block_release(v148);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v179 = v145;
    v150 = sub_25209C938(MEMORY[0x277D84F90]);
    v151 = *(v181 + 16);
    if (!v151)
    {
LABEL_77:

      v170 = swift_allocObject();
      *(v170 + 16) = v149;
      *(v170 + 24) = v150;
      v171 = swift_allocObject();
      *(v171 + 16) = sub_2520A347C;
      *(v171 + 24) = v170;
      v187 = sub_2520A3768;
      v188 = v171;
      aBlock = MEMORY[0x277D85DD0];
      v184 = 1107296256;
      v185 = sub_252083924;
      v186 = &block_descriptor_688;
      v172 = _Block_copy(&aBlock);
      v173 = v149;

      dispatch_sync(v179, v172);
      _Block_release(v172);
      v54 = swift_isEscapingClosureAtFileLocation();

      if ((v54 & 1) == 0)
      {
        return;
      }

      __break(1u);
      swift_once();
      v11 = sub_25214198C();
      __swift_project_value_buffer(v11, qword_27F4CDE68);

      v12 = sub_25214196C();
      v13 = sub_252141FBC();

      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_11;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock = v16;
      *v14 = 136446466;
      v17 = sub_2521425DC();
      v19 = sub_2520A5448(v17, v18, &aBlock);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      sub_2520A2090();
      swift_allocError();
      *v20 = v10;
      v20[1] = v172;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v21;
      *v15 = v21;
      _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] HTAudiometryError in finalSampling: %@", v14, 0x16u);
      sub_2520A2584(v15, &unk_27F4CE080, &qword_252144E30);
      MEMORY[0x253099FD0](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x253099FD0](v16, -1, -1);
      MEMORY[0x253099FD0](v14, -1, -1);
      while (1)
      {

        v55 = sub_25209C938(MEMORY[0x277D84F90]);
        v56 = *(v54 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
        isEscapingClosureAtFileLocation = swift_allocObject();
        *(isEscapingClosureAtFileLocation + 16) = v54;
        *(isEscapingClosureAtFileLocation + 24) = v55;
        v57 = swift_allocObject();
        *(v57 + 16) = sub_2520A3460;
        *(v57 + 24) = isEscapingClosureAtFileLocation;
        v187 = sub_2520A3768;
        v188 = v57;
        aBlock = MEMORY[0x277D85DD0];
        v184 = 1107296256;
        v185 = sub_252083924;
        v186 = &block_descriptor_610;
        v58 = _Block_copy(&aBlock);
        v38 = v54;

        dispatch_sync(v56, v58);
        _Block_release(v58);
        LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

        if ((v58 & 1) == 0)
        {
          break;
        }

        while (1)
        {
          __break(1u);
          swift_once();
          v22 = sub_25214198C();
          __swift_project_value_buffer(v22, qword_27F4CDE68);
          v23 = isEscapingClosureAtFileLocation;
          v24 = sub_25214196C();
          v25 = sub_252141FBC();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            aBlock = v28;
            *v26 = 136446466;
            v29 = sub_2521425DC();
            v31 = sub_2520A5448(v29, v30, &aBlock);

            *(v26 + 4) = v31;
            *(v26 + 12) = 2112;
            v32 = isEscapingClosureAtFileLocation;
            v33 = _swift_stdlib_bridgeErrorToNSError();
            *(v26 + 14) = v33;
            *v27 = v33;
            _os_log_impl(&dword_25207E000, v24, v25, "[%{public}s] Unexpected error in finalSampling: %@", v26, 0x16u);
            sub_2520A2584(v27, &unk_27F4CE080, &qword_252144E30);
            MEMORY[0x253099FD0](v27, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v28);
            MEMORY[0x253099FD0](v28, -1, -1);
            MEMORY[0x253099FD0](v26, -1, -1);
          }

          v34 = sub_25209C938(MEMORY[0x277D84F90]);
          v12 = *&v38[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
          v35 = swift_allocObject();
          *(v35 + 16) = v38;
          *(v35 + 24) = v34;
          v36 = swift_allocObject();
          *(v36 + 16) = sub_2520A3460;
          *(v36 + 24) = v35;
          v187 = sub_2520A3768;
          v188 = v36;
          aBlock = MEMORY[0x277D85DD0];
          v184 = 1107296256;
          v185 = sub_252083924;
          v186 = &block_descriptor_567;
          v37 = _Block_copy(&aBlock);
          v38 = v38;

          dispatch_sync(v12, v37);
          _Block_release(v37);
          LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

          if ((v37 & 1) == 0)
          {
            break;
          }

          __break(1u);
        }

        v39 = sub_25209C938(MEMORY[0x277D84F90]);
        v40 = swift_allocObject();
        *(v40 + 16) = v38;
        *(v40 + 24) = v39;
        v41 = swift_allocObject();
        *(v41 + 16) = sub_2520A347C;
        *(v41 + 24) = v40;
        v187 = sub_2520A3768;
        v188 = v41;
        aBlock = MEMORY[0x277D85DD0];
        v184 = 1107296256;
        v185 = sub_252083924;
        v186 = &block_descriptor_578;
        v42 = _Block_copy(&aBlock);
        v43 = v38;

        dispatch_sync(v12, v42);
        _Block_release(v42);
        LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

        if (v42)
        {
          __break(1u);
          goto LABEL_82;
        }

        v44 = sub_25209CA3C(MEMORY[0x277D84F90]);
        v45 = swift_allocObject();
        *(v45 + 16) = v43;
        *(v45 + 24) = v44;
        v46 = swift_allocObject();
        *(v46 + 16) = sub_2520A3508;
        *(v46 + 24) = v45;
        v187 = sub_2520A3768;
        v188 = v46;
        aBlock = MEMORY[0x277D85DD0];
        v184 = 1107296256;
        v185 = sub_252083924;
        v186 = &block_descriptor_589;
        v47 = _Block_copy(&aBlock);
        v48 = v43;

        dispatch_sync(v12, v47);
        _Block_release(v47);
        LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

        if (v47)
        {
          goto LABEL_83;
        }

        v49 = sub_25209CB18(MEMORY[0x277D84F90]);
        v50 = swift_allocObject();
        *(v50 + 16) = v48;
        *(v50 + 24) = v49;
        v51 = swift_allocObject();
        *(v51 + 16) = sub_2520A2038;
        *(v51 + 24) = v50;
        v187 = sub_2520A3768;
        v188 = v51;
        aBlock = MEMORY[0x277D85DD0];
        v184 = 1107296256;
        v185 = sub_252083924;
        v186 = &block_descriptor_599;
        v52 = _Block_copy(&aBlock);
        v53 = v48;

        dispatch_sync(v12, v52);
        _Block_release(v52);
        v54 = swift_isEscapingClosureAtFileLocation();

        if ((v54 & 1) == 0)
        {
          return;
        }

        __break(1u);
LABEL_11:
      }

      v59 = sub_25209C938(MEMORY[0x277D84F90]);
      isEscapingClosureAtFileLocation = swift_allocObject();
      *(isEscapingClosureAtFileLocation + 16) = v38;
      *(isEscapingClosureAtFileLocation + 24) = v59;
      v60 = swift_allocObject();
      *(v60 + 16) = sub_2520A347C;
      *(v60 + 24) = isEscapingClosureAtFileLocation;
      v187 = sub_2520A3768;
      v188 = v60;
      aBlock = MEMORY[0x277D85DD0];
      v184 = 1107296256;
      v185 = sub_252083924;
      v186 = &block_descriptor_621;
      v61 = _Block_copy(&aBlock);
      v62 = v38;

      dispatch_sync(v56, v61);
      _Block_release(v61);
      LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

      if (v61)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
      }

      else
      {
        v63 = sub_25209CA3C(MEMORY[0x277D84F90]);
        isEscapingClosureAtFileLocation = swift_allocObject();
        *(isEscapingClosureAtFileLocation + 16) = v62;
        *(isEscapingClosureAtFileLocation + 24) = v63;
        v64 = swift_allocObject();
        *(v64 + 16) = sub_2520A3508;
        *(v64 + 24) = isEscapingClosureAtFileLocation;
        v187 = sub_2520A3768;
        v188 = v64;
        aBlock = MEMORY[0x277D85DD0];
        v184 = 1107296256;
        v185 = sub_252083924;
        v186 = &block_descriptor_632;
        v65 = _Block_copy(&aBlock);
        v66 = v62;

        dispatch_sync(v56, v65);
        _Block_release(v65);
        LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

        if ((v65 & 1) == 0)
        {
          v67 = sub_25209CB18(MEMORY[0x277D84F90]);
          isEscapingClosureAtFileLocation = swift_allocObject();
          *(isEscapingClosureAtFileLocation + 16) = v66;
          *(isEscapingClosureAtFileLocation + 24) = v67;
          v68 = swift_allocObject();
          *(v68 + 16) = sub_2520A35CC;
          *(v68 + 24) = isEscapingClosureAtFileLocation;
          v187 = sub_2520A3768;
          v188 = v68;
          aBlock = MEMORY[0x277D85DD0];
          v184 = 1107296256;
          v185 = sub_252083924;
          v186 = &block_descriptor_643;
          v69 = _Block_copy(&aBlock);
          v70 = v66;

          dispatch_sync(v56, v69);
          _Block_release(v69);
          v71 = swift_isEscapingClosureAtFileLocation();

          if ((v71 & 1) == 0)
          {

            return;
          }

LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
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
          goto LABEL_98;
        }
      }

      __break(1u);
      goto LABEL_85;
    }

    v152 = 0;
    v153 = v176;
    while (1)
    {
      if (v152 >= *(v181 + 16))
      {
        goto LABEL_91;
      }

      v154 = *(v153 + 16);
      if (v152 == v154)
      {
        goto LABEL_77;
      }

      if (v152 >= v154)
      {
        goto LABEL_94;
      }

      v155 = *(v181 + 32 + 8 * v152);
      v156 = *(v153 + 8 * v152 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAB0, &unk_252143BA0);
      v157 = swift_allocObject();
      *(v157 + 16) = xmmword_252143AC0;
      *(v157 + 56) = MEMORY[0x277D839F8];
      *(v157 + 64) = MEMORY[0x277D83A80];
      *(v157 + 32) = v155;
      v158 = sub_252141BAC();
      v160 = v159;
      isEscapingClosureAtFileLocation = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v150;
      v161 = sub_25213E648(v158, v160);
      v163 = *(v150 + 2);
      v164 = (v162 & 1) == 0;
      v143 = __OFADD__(v163, v164);
      v165 = v163 + v164;
      if (v143)
      {
        goto LABEL_95;
      }

      v10 = v162;
      if (*(v150 + 3) < v165)
      {
        break;
      }

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_72;
      }

      isEscapingClosureAtFileLocation = v161;
      sub_2520A6E60();
      v161 = isEscapingClosureAtFileLocation;
      if (v10)
      {
LABEL_62:
        isEscapingClosureAtFileLocation = v161;

        v150 = aBlock;
        *(*(aBlock + 7) + 8 * isEscapingClosureAtFileLocation) = v156;
        goto LABEL_63;
      }

LABEL_73:
      v150 = aBlock;
      *&aBlock[8 * (v161 >> 6) + 64] |= 1 << v161;
      v167 = (*(v150 + 6) + 16 * v161);
      *v167 = v158;
      v167[1] = v160;
      *(*(v150 + 7) + 8 * v161) = v156;
      v168 = *(v150 + 2);
      v143 = __OFADD__(v168, 1);
      v169 = v168 + 1;
      if (v143)
      {
        goto LABEL_97;
      }

      *(v150 + 2) = v169;
LABEL_63:
      v153 = v176;
      if (v151 == ++v152)
      {
        goto LABEL_77;
      }
    }

    sub_2520A79C4(v165, isEscapingClosureAtFileLocation);
    v161 = sub_25213E648(v158, v160);
    if ((v10 & 1) != (v166 & 1))
    {
      goto LABEL_99;
    }

LABEL_72:
    if (v10)
    {
      goto LABEL_62;
    }

    goto LABEL_73;
  }

LABEL_98:
  __break(1u);
LABEL_99:
  sub_2521424CC();
  __break(1u);

  __break(1u);
}

uint64_t sub_252093808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDB98, &qword_252143D50);
  sub_25214200C();
  if (*(v18 + 16) && (v9 = sub_25213E6C0(a3), (v10 & 1) != 0))
  {
    v11 = *(*(v18 + 56) + v9);
  }

  else
  {
    v11 = 0;
  }

  v13 = *(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
  if (*(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel) == a4)
  {
    v14 = 1;
  }

  else
  {
    v14 = v11;
  }

  v15 = a4;
  v16 = *(a1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel);
  if (v14)
  {
    v17 = a4;
  }

  else
  {
    v17 = 0.0;
  }

  if (v13 != a4)
  {
    v15 = 0.0;
  }

  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v14 ^ 1;
  *(a2 + 40) = v15;
  *(a2 + 48) = v13 != a4;
  return result;
}

id HTAudiometry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HTAudiometry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

float sub_252093C14()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_testEnded;
  v3 = swift_beginAccess();
  result = 1.0;
  if ((*(v1 + v2) & 1) == 0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
    MEMORY[0x28223BE20](v3);
    sub_25214200C();
    return v6;
  }

  return result;
}

uint64_t sub_252093D18()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue;
  v3 = *(*v0 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2520A375C;
  *(v5 + 24) = v4;
  v19 = sub_2520A3768;
  v20 = v5;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_252083924;
  v18 = &block_descriptor_544;
  v6 = _Block_copy(&v15);
  v7 = v1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = *&v1[v2];
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2520A3764;
  *(v11 + 24) = v10;
  v19 = sub_2520A3768;
  v20 = v11;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_252083924;
  v18 = &block_descriptor_555;
  v12 = _Block_copy(&v15);
  v13 = v7;

  dispatch_sync(v9, v12);
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall HTAudiometry.dropTrials(_:)(Swift::Int a1)
{
  v3 = v1;
  v5 = *&v1[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDAA8, &unk_252143B90);
  sub_25214200C();
  v6 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    swift_unknownObjectRelease();
    sub_252098FD4(a1, a1 + 32, 0, (2 * v2) | 1);
    v12 = v22;
    goto LABEL_11;
  }

  a1 = aBlock;
  v7 = *(aBlock + 16);
  v8 = v7 >= v6;
  v9 = v7 - v6;
  if (v8)
  {
    v2 = v9;
  }

  else
  {
    v2 = 0;
  }

  sub_25214248C();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 16);

  if (v11 != v2)
  {
    goto LABEL_18;
  }

  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

LABEL_11:
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2520A356C;
  *(v14 + 24) = v13;
  *&v27 = sub_2520A3768;
  *(&v27 + 1) = v14;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v26 = sub_252083924;
  *(&v26 + 1) = &block_descriptor_478;
  v15 = _Block_copy(&aBlock);
  v3;

  dispatch_sync(v5, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](v16);
    sub_25214200C();
    v17 = *(aBlock + 16);
    if (v17)
    {
      v18 = aBlock + 72 * v17;
      aBlock = *(v18 - 40);
      v19 = *(v18 - 24);
      v20 = *(v18 - 8);
      v21 = *(v18 + 8);
      v29 = *(v18 + 24);
      v27 = v20;
      v28 = v21;
      v26 = v19;
      sub_25209D3B0(&aBlock, v23);

      v23[2] = v27;
      v23[3] = v28;
      v24 = v29;
      v23[0] = aBlock;
      v23[1] = v26;
      sub_252081908(v23);
      swift_unknownObjectRelease();
      sub_25209D35C(&aBlock);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_252094354@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  if (v8)
  {
    sub_25214248C();
    swift_unknownObjectRetain_n();
    v10 = swift_dynamicCastClass();
    if (!v10)
    {
      swift_unknownObjectRelease();
      v10 = MEMORY[0x277D84F90];
    }

    v11 = *(v10 + 16);

    if (__OFSUB__(v8 >> 1, v7))
    {
      goto LABEL_14;
    }

    if (v11 != (v8 >> 1) - v7)
    {
      goto LABEL_15;
    }

    v9 = swift_dynamicCastClass();
    if (!v9)
    {
      swift_unknownObjectRelease();
      v9 = MEMORY[0x277D84F90];
    }

    goto LABEL_9;
  }

  while (1)
  {
    sub_252098E44(v5, v6, v7, v8);
LABEL_9:
    v12 = v9[2];
    if (!v12)
    {
      __break(1u);
      goto LABEL_13;
    }

    if (v12 != 1)
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    swift_unknownObjectRelease();
  }

  v13 = v9[4];
  v14 = v9[5];

  *a3 = v13;
  *(a3 + 8) = v14;
  *(a3 + 16) = a2 & 1;
  *(a3 + 24) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_25209446C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  if (v6)
  {
    sub_25214248C();
    swift_unknownObjectRetain_n();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
      swift_unknownObjectRelease();
      v8 = MEMORY[0x277D84F90];
    }

    v9 = *(v8 + 16);

    if (__OFSUB__(v6 >> 1, v5))
    {
      goto LABEL_12;
    }

    if (v9 != (v6 >> 1) - v5)
    {
      goto LABEL_13;
    }

    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      swift_unknownObjectRelease();
      v7 = MEMORY[0x277D84F90];
    }

    goto LABEL_9;
  }

  while (1)
  {
    sub_252098E44(v3, v4, v5, v6);
LABEL_9:
    if (*(v7 + 16))
    {
      break;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    swift_unknownObjectRelease();
  }

  v10 = *(v7 + 32);

  *a2 = v10 == 1.0;
  return result;
}

void *sub_252094570(void *result)
{
  v1 = *(result + 1);
  v51 = *result;
  v52 = v1;
  v2 = *(result + 3);
  v49 = *(result + 2);
  v50 = v2;
  v3 = *(&v51 + 1);
  v43 = v51;
  if (__OFSUB__(*(&v51 + 1), v51))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v4 = *(&v49 + 1);
  v5 = v49;
  if (__OFSUB__(*(&v49 + 1), v49))
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (*(&v49 + 1) - v49 >= *(&v51 + 1) - v51)
  {
    v6 = *(&v51 + 1) - v51;
  }

  else
  {
    v6 = *(&v49 + 1) - v49;
  }

  v48 = MEMORY[0x277D84F90];
  result = sub_25209B274(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_57;
  }

  v7 = v48;
  v37 = v50;
  v38 = *(&v49 + 1);
  v40 = v52;
  v39 = *(&v51 + 1);
  if (v6)
  {
    sub_2520A2D9C(&v51, &v45, &qword_27F4CDC20, &qword_252143DC0);
    result = sub_2520A2D9C(&v49, &v45, &qword_27F4CDC28, &qword_252143DC8);
    v8 = 0;
    if (v3 <= v43)
    {
      v9 = v43;
    }

    else
    {
      v9 = v3;
    }

    v33 = v9 - v43;
    if (v4 <= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v4;
    }

    v30 = v10 - v5;
    v31 = v5 - v4;
    v35 = v43 - v3;
    while (v35 + v8)
    {
      if (v3 < v43)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v33 == v8)
      {
        goto LABEL_47;
      }

      v44 = v43 + v8;
      result = v40(&v45, &v44);
      if (!(v31 + v8))
      {
        goto LABEL_59;
      }

      if (v4 < v5)
      {
        goto LABEL_48;
      }

      if (v30 == v8)
      {
        goto LABEL_49;
      }

      v41 = v45;
      v11 = v46;
      v12 = v47;
      *&v45 = v5 + v8;
      result = v37(&v44, &v45);
      v13 = v44;
      v48 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_25209B274((v14 > 1), v15 + 1, 1);
        v7 = v48;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 40 * v15;
      *(v16 + 32) = v41;
      ++v8;
      *(v16 + 48) = v11;
      *(v16 + 56) = v12;
      *(v16 + 64) = v13;
      v4 = v38;
      v3 = v39;
      if (v6 == v8)
      {
        v36 = v5 + v8;
        v17 = v43 + v8;
        if (v43 + v8 == v39)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_59;
  }

  sub_2520A2D9C(&v51, &v45, &qword_27F4CDC20, &qword_252143DC0);
  result = sub_2520A2D9C(&v49, &v45, &qword_27F4CDC28, &qword_252143DC8);
  v36 = v5;
  v17 = v43;
  if (v43 == v3)
  {
LABEL_27:

    return v7;
  }

LABEL_28:
  if (v3 >= v43)
  {
    if (v17 <= v3)
    {
      v18 = v3;
    }

    else
    {
      v18 = v17;
    }

    v19 = v36;
    if (v36 <= v4)
    {
      v20 = v4;
    }

    else
    {
      v20 = v36;
    }

    v32 = v20;
    v34 = v18;
    v21 = v17;
    v29 = v5;
    while (v17 >= v43)
    {
      if (v34 == v21)
      {
        goto LABEL_51;
      }

      v44 = v21;
      result = v40(&v45, &v44);
      if (v4 == v19)
      {
        goto LABEL_27;
      }

      if (v4 < v5)
      {
        goto LABEL_52;
      }

      if (v36 < v5)
      {
        goto LABEL_53;
      }

      if (v32 == v19)
      {
        goto LABEL_54;
      }

      v22 = v17;
      v42 = v45;
      v23 = v46;
      v24 = v47;
      *&v45 = v19;
      result = v37(&v44, &v45);
      v25 = v44;
      v48 = v7;
      v27 = *(v7 + 16);
      v26 = *(v7 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_25209B274((v26 > 1), v27 + 1, 1);
        v7 = v48;
      }

      *(v7 + 16) = v27 + 1;
      v28 = v7 + 40 * v27;
      *(v28 + 32) = v42;
      ++v21;
      *(v28 + 48) = v23;
      *(v28 + 56) = v24;
      *(v28 + 64) = v25;
      ++v19;
      v4 = v38;
      v17 = v22;
      v5 = v29;
      if (v39 == v21)
      {
        goto LABEL_27;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_25209497C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  if (v8)
  {
    sub_25214248C();
    swift_unknownObjectRetain_n();
    v10 = swift_dynamicCastClass();
    if (!v10)
    {
      swift_unknownObjectRelease();
      v10 = MEMORY[0x277D84F90];
    }

    v11 = *(v10 + 16);

    if (__OFSUB__(v8 >> 1, v7))
    {
      goto LABEL_22;
    }

    if (v11 != (v8 >> 1) - v7)
    {
      goto LABEL_23;
    }

    v9 = swift_dynamicCastClass();
    if (!v9)
    {
      swift_unknownObjectRelease();
      v9 = MEMORY[0x277D84F90];
    }

    goto LABEL_9;
  }

  while (1)
  {
    sub_252098E44(v5, v6, v7, v8);
LABEL_9:
    v12 = *(v9 + 16);
    if (!v12)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if (v12 == 1)
    {
      goto LABEL_17;
    }

    if (v12 < 3)
    {
      goto LABEL_18;
    }

    v13 = *(v9 + 32);
    v14 = *(v9 + 40);
    v15 = *(v9 + 48);
    v5 = *&v15;

    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    if (v15 <= -9.22337204e18)
    {
      goto LABEL_20;
    }

    if (v15 < 9.22337204e18)
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_unknownObjectRelease();
  }

  *a3 = v13;
  *(a3 + 8) = v14;
  *(a3 + 16) = a2 & 1;
  *(a3 + 24) = 0x3FF0000000000000;
  *(a3 + 32) = v15;
  return result;
}

uint64_t sub_252094B04()
{
  isEscapingClosureAtFileLocation = v0;
  v5 = *(v0 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDBA8, &qword_252143D60);
  v6 = 0;
  sub_25214200C();
  if (!*(aBlock + 16))
  {

    goto LABEL_5;
  }

  v2 = *(aBlock + 32);

  MEMORY[0x28223BE20](v7);
  sub_25214200C();
  if (aBlock)
  {
LABEL_5:
    v9 = swift_allocObject();
    *(v9 + 16) = isEscapingClosureAtFileLocation;
    *(v9 + 24) = 1;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_2520A3758;
    *(v6 + 24) = v9;
    v107 = sub_2520A3768;
    v108 = v6;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v105 = sub_252083924;
    v106 = &block_descriptor_1265;
    v10 = _Block_copy(&aBlock);
    v11 = isEscapingClosureAtFileLocation;

    dispatch_sync(v5, v10);
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v13 = 0;
      return v13 & 1;
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v8 = sub_25209C858(&unk_28644BE00);
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();
  v14 = sub_2520EEE44(0, aBlock, *(&aBlock + 1), v105);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252143AC0;
  *(inited + 32) = v2;
  v16 = sub_25209D600(inited);
  swift_setDeallocating();
  v12 = *(v16 + 16);
  if (v12)
  {
    v17 = *(v16 + 32);

    v1 = round(v17);
    if (*(v8 + 16) && (v18 = sub_25213E6C0(v1), (v19 & 1) != 0))
    {
      v20 = 0;
      v21 = *(*(v8 + 56) + 8 * v18);
    }

    else
    {
      v21 = 0;
      v20 = 1;
    }

    v22 = *(v14 + 16);
    v23 = 32;
    while (v22)
    {
      v24 = *(v14 + v23);
      v23 += 8;
      --v22;
      if (v24 == v2)
      {
        v103 = v21;

        MEMORY[0x28223BE20](v25);
        sub_25214200C();
        v26 = *(aBlock + 16);
        v27 = 32;
        while (v26)
        {
          v28 = *(aBlock + v27);
          v27 += 8;
          --v26;
          if (v28 == v2)
          {
            v102 = v20;

            MEMORY[0x28223BE20](v29);
            sub_25214200C();
            v101 = 0;
            v6 = 0;
            v30 = aBlock;
            v31 = aBlock + 24;
            v32 = *(v14 + 16);
            v33 = MEMORY[0x277D84F90];
            v3 = 0.01;
            v34 = MEMORY[0x277D84F90];
            while (v32 != v6)
            {
              v12 = *(v14 + 16);
              if (v6 >= v12)
              {
                __break(1u);
LABEL_98:
                __break(1u);
                goto LABEL_99;
              }

              v12 = *(v30 + 16);
              if (v6 == v12)
              {
                break;
              }

              if (v6 >= v12)
              {
                goto LABEL_98;
              }

              v35 = *(v14 + 32 + 8 * v6++);
              if (vabdd_f64(v35, v2) < 0.01)
              {
                v100 = v31;
                v36 = *(v31 + 8 * v6);
                *&aBlock = v34;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_25209B214(0, *(v34 + 16) + 1, 1);
                  v34 = aBlock;
                }

                v38 = *(v34 + 16);
                v37 = *(v34 + 24);
                v39 = v38 + 1;
                if (v38 >= v37 >> 1)
                {
                  v41 = v38 + 1;
                  v99 = v38;
                  sub_25209B214((v37 > 1), v38 + 1, 1);
                  v38 = v99;
                  v33 = MEMORY[0x277D84F90];
                  v39 = v41;
                  v34 = aBlock;
                }

                *(v34 + 16) = v39;
                v40 = v34 + 16 * v38;
                *(v40 + 32) = v35;
                *(v40 + 40) = v36;
                v31 = v100;
              }
            }

            v66 = *(v34 + 16);
            if (v66)
            {
              *&aBlock = v33;
              sub_25209B1F4(0, v66, 0);
              v67 = *(v33 + 16);
              v68 = 40;
              do
              {
                v2 = *(v34 + v68);
                *&aBlock = v33;
                v69 = *(v33 + 24);
                if (v67 >= v69 >> 1)
                {
                  sub_25209B1F4((v69 > 1), v67 + 1, 1);
                  v33 = aBlock;
                }

                *(v33 + 16) = v67 + 1;
                *(v33 + 8 * v67 + 32) = v2;
                v68 += 16;
                ++v67;
                --v66;
              }

              while (v66);
            }

            else
            {

              v33 = MEMORY[0x277D84F90];
            }

            v70 = 0;
            v71 = *(v33 + 16);
            v72 = v102;
            v73 = v103;
            do
            {
              v74 = v70;
              if (v71 == v70)
              {
                break;
              }

              ++v70;
            }

            while (*(v33 + 8 * v74 + 32) != 0.0);
            v75 = 0;
            while (v71 != v75)
            {
              v76 = v33 + 8 * v75++;
              if (*(v76 + 32) == 1.0)
              {
                if (v71 != v74)
                {

                  MEMORY[0x28223BE20](v87);
                  sub_25214200C();
                  v62 = aBlock;
                  v65 = *(aBlock + 16);
                  if (v65)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_87;
                }

                break;
              }
            }

            v2 = 10.0;
            if (v71 <= 1)
            {
              v2 = 20.0;
              if (!v71)
              {
                goto LABEL_89;
              }
            }

            v77 = *(v33 + 8 * v71 + 24);

            if (v77 != 1.0)
            {
              goto LABEL_90;
            }

            if (v103 == -1)
            {
              v79 = v102;
            }

            else
            {
              v79 = 1;
            }

            v80 = 1;
            v81 = 1;
            if (v79)
            {
              goto LABEL_74;
            }

            goto LABEL_73;
          }
        }

        goto LABEL_48;
      }
    }

    swift_bridgeObjectRelease_n();
    v42 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_previousAudiogram;
    swift_beginAccess();
    v43 = *(isEscapingClosureAtFileLocation + v42);
    v3 = 0.0;
    if (*(v43 + 16))
    {
      v44 = sub_25213E6C0(v1);
      if (v45)
      {
        v3 = *(*(v43 + 56) + 8 * v44);
      }
    }

    v46 = swift_endAccess();
    if (v20)
    {
      v47 = 0;
    }

    else
    {
      v47 = v21;
    }

    v48 = (v47 * 10) >> 64;
    v12 = 10 * v47;
    if (v48 != v12 >> 63)
    {
      goto LABEL_101;
    }

    v49 = v3 + v12;
    if (v49 <= *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel))
    {
      v49 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);
    }

    if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel) >= v49)
    {
      v3 = v49;
    }

    else
    {
      v3 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
    }

    MEMORY[0x28223BE20](v46);
    sub_25214200C();
    v50 = *(aBlock + 16);
    v51 = 32;
    while (v50)
    {
      v52 = *(aBlock + v51);
      v51 += 8;
      --v50;
      if (v52 == v2)
      {

        goto LABEL_84;
      }
    }

    MEMORY[0x28223BE20](v53);
    sub_25214200C();
    v6 = aBlock;
    v12 = *(aBlock + 16);
    if (!v12)
    {
      goto LABEL_46;
    }

    goto LABEL_102;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  sub_252098E44(v6, v6 + 32, 1, (2 * v12) | 1);
  v94 = v93;

  v6 = v94;
LABEL_46:
  v54 = swift_allocObject();
  *(v54 + 16) = isEscapingClosureAtFileLocation;
  *(v54 + 24) = v6;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_2520A3620;
  *(v55 + 24) = v54;
  v107 = sub_2520A3768;
  v108 = v55;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v105 = sub_252083924;
  v106 = &block_descriptor_1254;
  v56 = _Block_copy(&aBlock);
  v57 = isEscapingClosureAtFileLocation;

  dispatch_sync(v5, v56);
  _Block_release(v56);
  v5 = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
LABEL_84:
    v85 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel);
    *&aBlock = v1;
    *(&aBlock + 1) = v3;
    v105 = v85;
    v106 = 0x3FF0000000000000;
    sub_252084B80(&aBlock);
    v13 = 1;
    return v13 & 1;
  }

  __break(1u);
LABEL_48:

  MEMORY[0x28223BE20](v58);
  sub_25214200C();
  v59 = aBlock;
  v60 = *(aBlock + 16);
  if (v60)
  {
    sub_252098E44(aBlock, aBlock + 32, 1, (2 * v60) | 1);
    v96 = v95;

    v59 = v96;
  }

  v61 = swift_allocObject();
  *(v61 + 16) = isEscapingClosureAtFileLocation;
  *(v61 + 24) = v59;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_2520A3620;
  *(v62 + 24) = v61;
  v107 = sub_2520A3768;
  v108 = v62;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v105 = sub_252083924;
  v106 = &block_descriptor_1241;
  v63 = _Block_copy(&aBlock);
  isEscapingClosureAtFileLocation = isEscapingClosureAtFileLocation;

  dispatch_sync(v5, v63);
  _Block_release(v63);
  v5 = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
LABEL_104:
    sub_252098E44(v62, v62 + 32, 1, (2 * v65) | 1);
    v98 = v97;

    v62 = v98;
LABEL_87:
    v88 = swift_allocObject();
    *(v88 + 16) = isEscapingClosureAtFileLocation;
    *(v88 + 24) = v62;
    v89 = swift_allocObject();
    v72 = v89;
    *(v89 + 16) = sub_2520A3620;
    *(v89 + 24) = v88;
    v107 = sub_2520A3768;
    v108 = v89;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v105 = sub_252083924;
    v106 = &block_descriptor_1229;
    v90 = _Block_copy(&aBlock);
    v73 = v108;
    isEscapingClosureAtFileLocation = isEscapingClosureAtFileLocation;

    dispatch_sync(v5, v90);
    _Block_release(v90);
    v91 = swift_isEscapingClosureAtFileLocation();

    if (v91)
    {
      __break(1u);
LABEL_89:

LABEL_90:
      v80 = 0;
      v81 = 0;
      if (v73 == 1)
      {
        v92 = v72;
      }

      else
      {
        v92 = 1;
      }

      if ((v92 & 1) == 0)
      {
LABEL_73:
        v2 = 10.0;
        v81 = v80;
      }

LABEL_74:
      MEMORY[0x28223BE20](v78);
      sub_25214200C();
      v82 = sub_2520EEE44(1, aBlock, *(&aBlock + 1), v105);

      if (v101)
      {

        v83 = 0.0;
        if (v81)
        {
          goto LABEL_76;
        }

LABEL_81:
        if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel) >= v2 + v83)
        {
          v3 = v2 + v83;
        }

        else
        {
          v3 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxLevel);
        }

        goto LABEL_84;
      }

      v84 = *(v82 + 16);
      if (v84)
      {
        v83 = *(v82 + 8 * v84 + 24);

        if ((v81 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else
      {

        v83 = 0.0;
        if ((v81 & 1) == 0)
        {
          goto LABEL_81;
        }
      }

LABEL_76:
      if (v83 - v2 > *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel))
      {
        v3 = v83 - v2;
      }

      else
      {
        v3 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC11HearingTest12HTAudiometry_minLevel);
      }

      goto LABEL_84;
    }
  }

  v13 = sub_252094B04(v64);
  return v13 & 1;
}

BOOL sub_2520959A0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  sub_2520EF19C(4, a1, a2, a3);
  v8 = v7;

  if (qword_27F4CD708 != -1)
  {
    swift_once();
  }

  v9 = v8 / a2;
  v10 = sub_25214198C();
  __swift_project_value_buffer(v10, qword_27F4CDE68);
  v11 = v3;
  v12 = sub_25214196C();
  v13 = sub_252141FBC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136446466;
    v16 = sub_2521425DC();
    v18 = sub_2520A5448(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    v20 = *&v11[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
    MEMORY[0x28223BE20](v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
    sub_25214200C();
    v21 = *(v28 + 16);

    *(v14 + 14) = v21;

    _os_log_impl(&dword_25207E000, v12, v13, "[%{public}s] Samples: %ld", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x253099FD0](v15, -1, -1);
    MEMORY[0x253099FD0](v14, -1, -1);
  }

  else
  {
  }

  v23 = *&v11[OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue];
  MEMORY[0x28223BE20](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
  sub_25214200C();
  v24 = *(v28 + 16);

  return v9 >= 1.0 || v24 >= *&v11[OBJC_IVAR____TtC11HearingTest12HTAudiometry_maxSampleCount];
}

unint64_t sub_252095DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>)
{
  v10 = v8;
  v156 = *MEMORY[0x277D85DE8];
  v151 = v10;
  swift_getObjectType();
  if (a3 < 5 || a2 < 1)
  {
    sub_2520A2090();
    swift_allocError();
    *v21 = 0xD000000000000022;
    v21[1] = 0x8000000252148EF0;
    result = swift_willThrow();
    goto LABEL_6;
  }

  v145 = a7;
  result = sub_2520EEE44(0, a1, a2, a3);
  if (!v9)
  {
    v20 = result;
    v140 = sub_2520EEE44(3, a1, a2, a3);
    v23 = *(v151 + OBJC_IVAR____TtC11HearingTest12HTAudiometry_safeVariablesQueue);
    MEMORY[0x28223BE20](v140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA98, &unk_252143B70);
    sub_25214200C();

    if (v154 < 0)
    {
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v138 = v20;
    if (v154)
    {
      v25 = 0;
      v142 = MEMORY[0x277D84F90];
      v149 = v154;
      while (1)
      {
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        sub_25214200C();

        if (v25 >= v154)
        {
          goto LABEL_10;
        }

        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        sub_25214200C();

        MEMORY[0x28223BE20](v26);
        sub_25214200C();
        v27 = sub_2520F0530(v25, __B, v154, v155);
        v146 = v28;
        v29 = v27;
        v144 = v30;

        MEMORY[0x28223BE20](v31);
        sub_25214200C();
        if (v154 < v25 || v155 < 1)
        {
          goto LABEL_125;
        }

        v32 = v25 * v155;
        if ((v25 * v155) >> 64 != (v25 * v155) >> 63)
        {
          goto LABEL_126;
        }

        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_127;
        }

        if (v32 >= *(__B + 16))
        {
          goto LABEL_128;
        }

        v33 = *(__B + 8 * v32 + 32);

        if (a5 < 0)
        {
          goto LABEL_129;
        }

        if (a5)
        {
          v34 = 0;
          while (1)
          {
            v35 = v34 * a6;
            if ((v34 * a6) >> 64 != (v34 * a6) >> 63)
            {
              break;
            }

            v36 = v35 + a6;
            if (__OFADD__(v35, a6))
            {
              goto LABEL_112;
            }

            if (v36 < v35)
            {
              goto LABEL_113;
            }

            if (v35 < 0)
            {
              goto LABEL_114;
            }

            v37 = *(a4 + 16);
            if (v37 < v35 || v37 < v36)
            {
              goto LABEL_115;
            }

            if (v37 == a6)
            {

              v38 = a4;
            }

            else
            {
              sub_252098E44(a4, a4 + 32, v35, (2 * v36) | 1);
              v38 = v40;
            }

            v39 = sub_2520F11FC(v29, v38, 1.0);

            if (v39)
            {

              goto LABEL_10;
            }

            if (a5 == ++v34)
            {
              goto LABEL_32;
            }
          }

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
          goto LABEL_117;
        }

LABEL_32:
        if (v144 < 0 || v146 < 1)
        {
          goto LABEL_130;
        }

        v41 = *(v29 + 16);
        if (!v41)
        {
          goto LABEL_131;
        }

        _s11HearingTest13InterpolatorsC8interp1d7xValues01yE06xPointSdSaySdG_AHSdtFZ_0(v138, v140, *(v29 + 32));
        v43 = v42;
        if (v33 == 1.0)
        {
          break;
        }

        if (v146 < 2)
        {
          goto LABEL_135;
        }

        if (v41 == 1)
        {
          goto LABEL_136;
        }

        v44 = *(v29 + 40);

        if (v43 < v44)
        {
          goto LABEL_44;
        }

LABEL_10:
        if (++v25 == v149)
        {
          goto LABEL_51;
        }
      }

      if (v146 < 2)
      {
        goto LABEL_132;
      }

      if (v41 == 1)
      {
        goto LABEL_133;
      }

      v44 = *(v29 + 40);

      if (v44 >= v43)
      {
        goto LABEL_10;
      }

LABEL_44:
      if (vabdd_f64(v44, v43) > a8)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_25209939C(0, *(v142 + 16) + 1, 1, v142);
          v142 = isUniquelyReferenced_nonNull_native;
        }

        v45 = v142;
        v47 = *(v142 + 16);
        v46 = *(v142 + 24);
        if (v47 >= v46 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_25209939C((v46 > 1), v47 + 1, 1, v142);
          v45 = isUniquelyReferenced_nonNull_native;
        }

        *(v45 + 16) = v47 + 1;
        v142 = v45;
        *(v45 + 8 * v47 + 32) = v25;
      }

      goto LABEL_10;
    }

    v142 = MEMORY[0x277D84F90];
LABEL_51:

    MEMORY[0x28223BE20](v48);
    sub_25214200C();

    sub_2520F0704(v49, __B, v154, v155);
    v137 = v50;
    v136 = v51;
    v135 = v52;

    MEMORY[0x28223BE20](v53);
    sub_25214200C();
    sub_2520F0704(v142, __B, v154, v155);
    v134 = v54;
    v133 = v55;
    v132 = v56;

    MEMORY[0x28223BE20](v57);
    sub_25214200C();
    sub_2520F0704(v142, __B, v154, v155);
    v131 = v58;
    v130 = v59;
    v129 = v60;

    MEMORY[0x28223BE20](v61);
    sub_25214200C();
    v62 = sub_2520F0894(v142, __B, v154, v155);
    v64 = v63;
    v66 = v65;

    v67 = *(v142 + 16);
    v139 = v64;
    if (v67)
    {
      __B = MEMORY[0x277D84F90];
      sub_25209B1F4(0, v67, 0);
      v68 = v142;
      v69 = __B;
      v70 = *(a4 + 16);
      v71 = 32;
      do
      {
        v72 = *(v68 + v71);
        v73 = v72 + v70;
        if (__OFADD__(v72, v70))
        {
          goto LABEL_116;
        }

        __B = v69;
        v75 = v69[2];
        v74 = v69[3];
        if (v75 >= v74 >> 1)
        {
          sub_25209B1F4((v74 > 1), v75 + 1, 1);
          v68 = v142;
          v69 = __B;
        }

        v69[2] = v75 + 1;
        *&v69[v75 + 4] = v73;
        v71 += 8;
        --v67;
      }

      while (v67);

      v64 = v139;
    }

    else
    {

      v69 = MEMORY[0x277D84F90];
    }

    if (v64 != v69[2])
    {
      goto LABEL_137;
    }

    v76 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    v77 = v64 * v76;
    if ((v64 * v76) >> 64 != (v64 * v76) >> 63)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v77 < 0)
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v128 = v66 + 1;
    if (v77)
    {
      v141 = sub_252141D3C();
      *(v141 + 16) = v77;
      if (!v64)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v141 = MEMORY[0x277D84F90];
      if (!v64)
      {
        goto LABEL_69;
      }
    }

    v78 = (v141 + 32);
    v79 = (v62 + 32);
    v80 = v69 + 4;
    v81 = 8 * v66;
    v82 = v139;
    do
    {
      memcpy(v78, v79, v81);
      v83 = *v80++;
      *&v78[v81] = v83;
      v79 += v81;
      v78 += v81 + 8;
      --v82;
    }

    while (v82);
LABEL_69:
    *(v141 + 16) = v77;

    if (*(v141 + 16) != v77)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    MEMORY[0x28223BE20](v84);
    sub_25214200C();
    v147 = sub_2520F0894(v142, __B, v154, v155);
    v86 = v85;
    v88 = v87;

    MEMORY[0x28223BE20](v89);
    sub_25214200C();
    v90 = sub_2520F0894(v142, __B, v154, v155);

    if (v86 != *(v90 + 16))
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v91 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v92 = v86 * v91;
    if ((v86 * v91) >> 64 != (v86 * v91) >> 63)
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v92 < 0)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
    }

    v150 = v88 + 1;
    if (v92)
    {
      v93 = sub_252141D3C();
      *(v93 + 16) = v92;
      v143 = v86;
      if (!v86)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v93 = MEMORY[0x277D84F90];
      v143 = v86;
      if (!v86)
      {
LABEL_80:
        *(v93 + 16) = v92;

        if (*(v93 + 16) != v92)
        {
          goto LABEL_146;
        }

        v100 = v143;
        v101 = v150;
        if (v143)
        {
          v102 = 0;
          v148 = OBJC_IVAR____TtC11HearingTest12HTAudiometry_channel;
          while (1)
          {
            v103 = v102 * v101;
            if ((v102 * v101) >> 64 != (v102 * v101) >> 63)
            {
              break;
            }

            v104 = v103 + v101;
            if (__OFADD__(v103, v101))
            {
              goto LABEL_118;
            }

            if (v104 < v103)
            {
              goto LABEL_119;
            }

            if (v103 < 0)
            {
              goto LABEL_120;
            }

            v105 = *(v93 + 16);
            if (v105 < v103 || v105 < v104)
            {
              goto LABEL_121;
            }

            if (v105 == v101)
            {
              swift_bridgeObjectRetain_n();
              v106 = v93;
            }

            else if (v104 == v103)
            {

              v106 = MEMORY[0x277D84F90];
            }

            else
            {
              if (v101 < 1)
              {
                v106 = MEMORY[0x277D84F90];
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4CDA88, &unk_252143B60);
                v106 = swift_allocObject();
                v126 = _swift_stdlib_malloc_size(v106);
                v127 = v126 - 32;
                if (v126 < 32)
                {
                  v127 = v126 - 25;
                }

                *(v106 + 16) = v101;
                *(v106 + 24) = 2 * (v127 >> 3);
              }

              memcpy((v106 + 32), (v93 + 32 + 8 * v103), 8 * v101);
            }

            if (*(v106 + 16) < 3uLL)
            {
            }

            else
            {
              v152 = *(v106 + 32);
              v107 = sub_252141D3C();
              *(v107 + 16) = 1;
              __B = 0x4018000000000000;
              vDSP_vsdivD(&v152, 1, &__B, (v107 + 32), 1, 1uLL);
              *(v107 + 16) = 1;
              __B = v107;
              MEMORY[0x28223BE20](v108);
              v109 = sub_2520AABEC(1, sub_2520A3344);

              __B = v109;
              MEMORY[0x28223BE20](v109[2]);
              v111 = sub_2520AABEC(v110, sub_2520A3B48);

              if (!*(v111 + 16))
              {
                goto LABEL_122;
              }

              v112 = *(v111 + 32);

              v113 = *(v106 + 16);
              if (v113 < 2)
              {
                goto LABEL_123;
              }

              if (v113 == 2)
              {
                goto LABEL_124;
              }

              v114 = *(v106 + 40);
              v115 = *(v106 + 48);

              v116 = *(v151 + v148);
              if (qword_27F4CD708 != -1)
              {
                swift_once();
              }

              v117 = sub_25214198C();
              __swift_project_value_buffer(v117, qword_27F4CDE68);
              v118 = sub_25214196C();
              v119 = sub_252141FBC();
              if (os_log_type_enabled(v118, v119))
              {
                v120 = swift_slowAlloc();
                v121 = swift_slowAlloc();
                __B = v121;
                *v120 = 136447234;
                v122 = sub_2521425DC();
                v124 = sub_2520A5448(v122, v123, &__B);

                *(v120 + 4) = v124;
                *(v120 + 12) = 2048;
                *(v120 + 14) = v112;
                *(v120 + 22) = 2048;
                *(v120 + 24) = v114;
                *(v120 + 32) = 1024;
                *(v120 + 34) = v115 != 0.0;
                *(v120 + 38) = 2048;
                *(v120 + 40) = v116;
                _os_log_impl(&dword_25207E000, v118, v119, "[%{public}s] Deleted tone freq %f, level %f, response %{BOOL}d, ch %ld", v120, 0x30u);
                __swift_destroy_boxed_opaque_existential_0(v121);
                v125 = v121;
                v100 = v143;
                MEMORY[0x253099FD0](v125, -1, -1);
                MEMORY[0x253099FD0](v120, -1, -1);
              }

              v101 = v150;
            }

            if (v100 == ++v102)
            {
              goto LABEL_110;
            }
          }

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

LABEL_110:

        *v145 = v137;
        v145[1] = v136;
        v145[2] = v135;
        v145[3] = v134;
        v145[4] = v133;
        v145[5] = v132;
        v145[6] = v131;
        v145[7] = v130;
        v145[8] = v129;
        v145[9] = v141;
        v145[10] = v139;
        v145[11] = v128;
        goto LABEL_6;
      }
    }

    v94 = (v93 + 32);
    v95 = (v147 + 32);
    v96 = (v90 + 32);
    v97 = 8 * v88;
    v98 = v143;
    do
    {
      memcpy(v94, v95, v97);
      v99 = *v96++;
      *&v94[v97] = v99;
      v95 += v97;
      v94 += v97 + 8;
      --v98;
    }

    while (v98);
    goto LABEL_80;
  }

LABEL_6:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}