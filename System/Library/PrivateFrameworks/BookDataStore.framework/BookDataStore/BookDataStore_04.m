uint64_t ReadingGoalsController.deinit()
{
  sub_1E4658A0C((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t ReadingGoalsController.__deallocating_deinit()
{
  sub_1E4658A0C((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

double sub_1E4679200@<D0>(double *a1@<X8>)
{
  v3 = *(*(*v1 + 56) + 16);
  sub_1E470B37C();
  result = v6;
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_1E4679274@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 56);
  a1[3] = sub_1E4650534(&qword_1ECF749D8, &qword_1E471C580);
  a1[4] = &protocol witness table for <> ObservableContainer<A>;
  *a1 = v3;
}

Swift::Void __swiftcall ReadingGoalsController.changeBooksFinishedGoal(to:)(Swift::Int to)
{
  swift_beginAccess();
  sub_1E4658550(v1 + 16, &aBlock);
  v3 = v15;
  v4 = v16;
  sub_1E465057C(&aBlock, v15);
  (*(v4 + 5))(to, v3, v4);
  sub_1E4658A0C(&aBlock);
  v5 = *(v1 + 56);
  v6 = *(v5 + 16);
  sub_1E470B37C();
  v18[1] = v13;
  v18[0] = to;
  v11[2] = v18;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_1E467A46C;
  v8[3] = v11;
  v8[4] = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E467A4D8;
  *(v9 + 24) = v8;
  v16 = sub_1E467A478;
  v17 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1E46679F4;
  v15 = &unk_1F5E63938;
  v10 = _Block_copy(&aBlock);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ReadingGoalsController.changeDailyGoal(to:)(Swift::Double to)
{
  swift_beginAccess();
  sub_1E4658550(v1 + 16, aBlock);
  v3 = v13;
  v4 = v14;
  sub_1E465057C(aBlock, v13);
  (*(v4 + 6))(v3, v4, to);
  sub_1E4658A0C(aBlock);
  v5 = *(v1 + 56);
  v6 = *(v5 + 16);
  sub_1E470B37C();
  v16[0] = aBlock[0];
  *&v16[1] = to;
  v11[2] = v16;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_1E4679B24;
  v8[3] = v11;
  v8[4] = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1E467A4D8;
  *(v9 + 24) = v8;
  v14 = sub_1E467A478;
  v15 = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46679F4;
  v13 = &unk_1F5E639B0;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ReadingGoalsController.clearData()()
{
  v1 = v0;
  swift_beginAccess();
  sub_1E4658550((v0 + 2), &aBlock);
  v2 = v23;
  v3 = v24;
  sub_1E465057C(&aBlock, v23);
  (*(v3 + 7))(v2, v3);
  sub_1E4658A0C(&aBlock);
  v4 = v0[5];
  v5 = v0[6];
  v6 = sub_1E465057C(v1 + 2, v1[5]);
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6, v6);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v11, v9);
  (*(v5 + 8))(&aBlock, v4, v5);
  (*(v7 + 8))(v11, v4);
  v12 = v1[7];
  v18 = aBlock;
  v19 = v21;
  v13 = *(v12 + 16);
  v14 = swift_allocObject();
  v14[2] = sub_1E4679B44;
  v14[3] = v17;
  v14[4] = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1E467A4D8;
  *(v15 + 24) = v14;
  v24 = sub_1E467A478;
  v25 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1E46679F4;
  v23 = &unk_1F5E63A28;
  v16 = _Block_copy(&aBlock);

  dispatch_sync(v13, v16);
  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

BOOL _s13BookDataStore12ReadingGoalsO11StateChangeV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 == 3)
  {
    return v5 == 3;
  }

  else
  {
    return v5 != 3 && v4 == v5;
  }
}

uint64_t sub_1E4679A94(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

double sub_1E4679AE4(uint64_t a1)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = result;
  *(a1 + 16) = 3;
  return result;
}

uint64_t sub_1E4679B0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1E4679B24(uint64_t a1)
{
  v2 = *(v1 + 16);
  result = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = result;
  *(a1 + 16) = 1;
  return result;
}

double sub_1E4679B44(uint64_t a1)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

unint64_t sub_1E4679B60()
{
  result = qword_1ECF749E0;
  if (!qword_1ECF749E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF749E0);
  }

  return result;
}

unint64_t sub_1E4679BFC()
{
  result = qword_1ECF749F8;
  if (!qword_1ECF749F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF749F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoals(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ReadingGoals(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoals.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ReadingGoals.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ReadingGoals.StateChange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoals.StateChange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingGoals.StateChange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoals.StateChange.Source(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ReadingGoals.StateChange.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E4679FA0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E4679FB4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

double sub_1E467A138@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 48);
  v4 = *(v1 + 56);
  *a1 = *(v1 + 40);
  *(a1 + 8) = result;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1E467A194(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E467A204(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

uint64_t sub_1E467A258(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E467A2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E467A318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelSyncVersion();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E467A37C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E467A3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E467A4DC()
{
  v1 = v0;
  v2 = type metadata accessor for PBPropertyBookImpressionParam(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v74 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  v6 = *(*(v72 - 8) + 64);
  MEMORY[0x1EEE9AC00](v72, v7);
  v73 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for PBPropertySingleFloatParam(0);
  v9 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70, v10);
  v71 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  v13 = *(*(Params - 8) + 64);
  MEMORY[0x1EEE9AC00](Params - 8, v14);
  v75 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  *&v78 = &v70 - v19;
  v20 = sub_1E4709CCC();
  v76 = *(v20 - 8);
  v77 = v20;
  v21 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8, v27);
  v29 = &v70 - v28;
  v30 = sub_1E4709E7C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0xE000000000000000;
  v80 = 0;
  v81 = 0xE000000000000000;
  v37 = type metadata accessor for PBPropertyValue(0);
  v38 = (v0 + v37[8]);
  v39 = v38[1];
  if (v39)
  {
    v40 = *v38;
  }

  else
  {
    v40 = 0;
  }

  if (v39)
  {
    v36 = v38[1];
  }

  MEMORY[0x1E6915D10](v40, v36);

  MEMORY[0x1E6915D10](32, 0xE100000000000000);
  v79 = *v0;
  v41 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v41);

  MEMORY[0x1E6915D10](32, 0xE100000000000000);
  sub_1E465E0B0(v0 + v37[7], v29, &qword_1ECF74A38, &unk_1E471EB00);
  v42 = *(v31 + 48);
  if (v42(v29, 1, v30) == 1)
  {
    sub_1E4709E6C();
    if (v42(v29, 1, v30) != 1)
    {
      sub_1E465E050(v29, &qword_1ECF74A38, &unk_1E471EB00);
    }
  }

  else
  {
    (*(v31 + 32))(v35, v29, v30);
  }

  sub_1E4709E5C();
  (*(v31 + 8))(v35, v30);
  sub_1E467B1AC();
  v43 = v77;
  v44 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v44);

  (*(v76 + 8))(v24, v43);
  v45 = v80;
  v46 = v81;
  v47 = v78;
  sub_1E465E0B0(v1 + v37[5], v78, &qword_1ECF74A30, &unk_1E471EB10);
  v48 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
  {
    goto LABEL_11;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v54 = v75;
      sub_1E467B204(v47, v75, type metadata accessor for PBPropertyBookReadParams);
      v80 = 0;
      v81 = 0xE000000000000000;
      sub_1E470B5CC();

      v80 = 0x736572676F727020;
      v81 = 0xEA00000000003D73;
      sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
      v55 = swift_allocObject();
      v78 = xmmword_1E471BA00;
      *(v55 + 16) = xmmword_1E471BA00;
      v56 = *(v54 + 1);
      v57 = MEMORY[0x1E69E64A8];
      *(v55 + 56) = MEMORY[0x1E69E6448];
      *(v55 + 64) = v57;
      *(v55 + 32) = v56;
      v58 = sub_1E470AF3C();
      MEMORY[0x1E6915D10](v58);

      MEMORY[0x1E6915D10](0x6C706D6153736920, 0xEA00000000003D65);
      v59 = swift_allocObject();
      *(v59 + 16) = v78;
      v60 = *v54;
      v61 = sub_1E4663DE4();
      v62 = 20302;
      if (v60)
      {
        v62 = 5457241;
      }

      *(v59 + 56) = MEMORY[0x1E69E6158];
      *(v59 + 64) = v61;
      if (v60)
      {
        v63 = 0xE300000000000000;
      }

      else
      {
        v63 = 0xE200000000000000;
      }

      *(v59 + 32) = v62;
      *(v59 + 40) = v63;
      v64 = sub_1E470AF3C();
      MEMORY[0x1E6915D10](v64);

      v49 = v80;
      v50 = v81;
      v65 = type metadata accessor for PBPropertyBookReadParams;
      v66 = v54;
      goto LABEL_33;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v52 = v73;
      sub_1E467B204(v47, v73, type metadata accessor for PBPropertyMarkedAsFinishedParam);
      v80 = 0;
      v81 = 0xE000000000000000;
      MEMORY[0x1E6915D10](0x3D65756C617620, 0xE700000000000000);
      sub_1E470B66C();
      v49 = v80;
      v50 = v81;
      v53 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
    }

    else
    {
      v52 = v74;
      sub_1E467B204(v47, v74, type metadata accessor for PBPropertyBookImpressionParam);
      v80 = 0;
      v81 = 0xE000000000000000;
      sub_1E470B5CC();

      v80 = 0xD000000000000026;
      v81 = 0x80000001E47187A0;
      if (*v52)
      {
        v67 = 1702195828;
      }

      else
      {
        v67 = 0x65736C6166;
      }

      if (*v52)
      {
        v68 = 0xE400000000000000;
      }

      else
      {
        v68 = 0xE500000000000000;
      }

      MEMORY[0x1E6915D10](v67, v68);

      v49 = v80;
      v50 = v81;
      v53 = type metadata accessor for PBPropertyBookImpressionParam;
    }

LABEL_32:
    v65 = v53;
    v66 = v52;
LABEL_33:
    sub_1E467B26C(v66, v65);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload)
  {
    v52 = v71;
    sub_1E467B204(v47, v71, type metadata accessor for PBPropertySingleFloatParam);
    v80 = 0;
    v81 = 0xE000000000000000;
    MEMORY[0x1E6915D10](0x3D65756C617620, 0xE700000000000000);
    sub_1E470B66C();
    v49 = v80;
    v50 = v81;
    v53 = type metadata accessor for PBPropertySingleFloatParam;
    goto LABEL_32;
  }

  sub_1E467B26C(v47, type metadata accessor for PBPropertyValue.OneOf_Params);
LABEL_11:
  v49 = 0;
  v50 = 0xE000000000000000;
LABEL_34:
  v80 = v45;
  v81 = v46;
  MEMORY[0x1E6915D10](v49, v50);

  return v80;
}

uint64_t sub_1E467ADA8()
{
  v1 = v0;
  v2 = type metadata accessor for PBPropertyValue(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for PBPropertyConfiguration(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = 0;
  v38 = 0xE000000000000000;
  v19 = type metadata accessor for PBPropertyBundle(0);
  sub_1E465E0B0(v1 + *(v19 + 28), v12, &qword_1ECF74A28, &unk_1E471E790);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    *v18 = 0;
    v18[1] = 0;
    v18[2] = 0;
    v18[3] = 0xE000000000000000;
    v18[4] = 0;
    v21 = v18 + *(v13 + 32);
    _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
    if (v20(v12, 1, v13) != 1)
    {
      sub_1E465E050(v12, &qword_1ECF74A28, &unk_1E471E790);
    }
  }

  else
  {
    sub_1E467B204(v12, v18, type metadata accessor for PBPropertyConfiguration);
  }

  v22 = v18[2];
  v23 = v18[3];

  sub_1E467B26C(v18, type metadata accessor for PBPropertyConfiguration);
  MEMORY[0x1E6915D10](v22, v23);

  result = MEMORY[0x1E6915D10](32, 0xE100000000000000);
  v25 = *v1;
  v26 = *(*v1 + 16);
  if (v26)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0xE000000000000000;
    while (v28 < *(v25 + 16))
    {
      sub_1E467B148(v25 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v28++, v7);
      v35 = v27;
      v36 = v29;
      v30 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v30 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v30)
      {
        v31 = 8236;
      }

      else
      {
        v31 = 0;
      }

      if (v30)
      {
        v32 = 0xE200000000000000;
      }

      else
      {
        v32 = 0xE000000000000000;
      }

      MEMORY[0x1E6915D10](v31, v32);

      v33 = sub_1E467A4DC();
      MEMORY[0x1E6915D10](v33);

      v27 = v35;
      v34 = v36;
      sub_1E467B26C(v7, type metadata accessor for PBPropertyValue);

      v29 = v34;
      if (v26 == v28)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = 0;
    v34 = 0xE000000000000000;
LABEL_19:
    MEMORY[0x1E6915D10](v27, v34);

    return v37;
  }

  return result;
}

uint64_t sub_1E467B148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPropertyValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E467B1AC()
{
  result = qword_1ECF741E0;
  if (!qword_1ECF741E0)
  {
    sub_1E4709CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF741E0);
  }

  return result;
}

uint64_t sub_1E467B204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E467B26C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ReadingHistory.Day.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E470B5CC();

  v4 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v4);

  MEMORY[0x1E6915D10](0x3A6C616F67202CLL, 0xE700000000000000);
  v5 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v5);

  MEMORY[0x1E6915D10](0x6B6165727473202CLL, 0xE90000000000003ALL);
  if (v3)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v3)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1E6915D10](v6, v7);

  MEMORY[0x1E6915D10](125, 0xE100000000000000);
  return 0x3A656D69747BLL;
}

BookDataStore::ReadingHistory::Day __swiftcall ReadingHistory.Day.init(readingTime:goal:isStreakDay:)(Swift::Int readingTime, Swift::Int goal, Swift::Bool isStreakDay)
{
  *v3 = readingTime;
  *(v3 + 8) = goal;
  *(v3 + 16) = isStreakDay;
  result.goal = goal;
  result.readingTime = readingTime;
  result.isStreakDay = isStreakDay;
  return result;
}

uint64_t static ReadingHistory.Day.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E467B4F4()
{
  v1 = 1818324839;
  if (*v0 != 1)
  {
    v1 = 0x6B61657274537369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x54676E6964616572;
  }
}

uint64_t sub_1E467B558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E46811EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E467B580(uint64_t a1)
{
  v2 = sub_1E467B7B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E467B5BC(uint64_t a1)
{
  v2 = sub_1E467B7B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReadingHistory.Day.encode(to:)(void *a1)
{
  v4 = sub_1E4650534(&qword_1ECF74A40, &qword_1E471C950);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v13 - v8;
  v10 = *v1;
  v13[1] = v1[1];
  v14 = *(v1 + 16);
  v11 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E467B7B0();
  sub_1E470B93C();
  v17 = 0;
  sub_1E470B7EC();
  if (v2)
  {
    return (*(v5 + 8))(v9, v4);
  }

  v16 = 1;
  sub_1E470B7EC();
  v15 = 2;
  sub_1E470B7CC();
  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_1E467B7B0()
{
  result = qword_1ECF74A48;
  if (!qword_1ECF74A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74A48);
  }

  return result;
}

uint64_t ReadingHistory.Day.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E4650534(&qword_1ECF74A50, &qword_1E471C958);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E467B7B0();
  sub_1E470B92C();
  if (!v2)
  {
    v20 = 0;
    v12 = sub_1E470B77C();
    v19 = 1;
    v17 = sub_1E470B77C();
    v18 = 2;
    v14 = sub_1E470B75C();
    (*(v6 + 8))(v10, v5);
    v15 = v17;
    *a2 = v12;
    *(a2 + 8) = v15;
    *(a2 + 16) = v14 & 1;
  }

  return sub_1E4658A0C(a1);
}

uint64_t sub_1E467B9D4(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ReadingHistory.DayEntry.date.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ReadingHistory.DayEntry.date.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 ReadingHistory.DayEntry.day.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ReadingHistory.DayEntry.day.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

uint64_t ReadingHistory.DayEntry.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  MEMORY[0x1E6915D10](*v0, *(v0 + 8));
  MEMORY[0x1E6915D10](8250, 0xE200000000000000);
  v4 = ReadingHistory.Day.description.getter();
  MEMORY[0x1E6915D10](v4);

  MEMORY[0x1E6915D10](125, 0xE100000000000000);
  return 123;
}

void __swiftcall ReadingHistory.DayEntry.init(date:day:)(BookDataStore::ReadingHistory::DayEntry *__return_ptr retstr, Swift::String date, BookDataStore::ReadingHistory::Day day)
{
  v3 = *(day.readingTime + 16);
  retstr->date = date;
  *&retstr->day.readingTime = *day.readingTime;
  retstr->day.isStreakDay = v3;
}

uint64_t sub_1E467BBB8()
{
  if (*v0)
  {
    result = 7954788;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t sub_1E467BBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E470B84C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E470B84C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E467BCC0(uint64_t a1)
{
  v2 = sub_1E467FDFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E467BCFC(uint64_t a1)
{
  v2 = sub_1E467FDFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReadingHistory.DayEntry.encode(to:)(void *a1)
{
  v4 = sub_1E4650534(&qword_1ECF74A58, &qword_1E471C960);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v14 = v1[3];
  v15 = v11;
  v20 = *(v1 + 32);
  v12 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E467FDFC();
  sub_1E470B93C();
  LOBYTE(v17) = 0;
  sub_1E470B7BC();
  if (!v2)
  {
    v17 = v15;
    v18 = v14;
    v19 = v20;
    v21 = 1;
    sub_1E467FE50();
    sub_1E470B7FC();
  }

  return (*(v16 + 8))(v8, v4);
}

uint64_t ReadingHistory.DayEntry.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E4650534(&qword_1ECF74A70, &qword_1E471C968);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E467FDFC();
  sub_1E470B92C();
  if (v2)
  {
    return sub_1E4658A0C(a1);
  }

  LOBYTE(v19) = 0;
  v12 = sub_1E470B74C();
  v14 = v13;
  v15 = v12;
  v21 = 1;
  sub_1E467FEA4();
  sub_1E470B78C();
  (*(v6 + 8))(v10, v5);
  v16 = v20;
  v17 = v19;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v17;
  *(a2 + 32) = v16;

  sub_1E4658A0C(a1);
}

uint64_t ReadingHistory.Streak.description.getter()
{
  sub_1E470B5CC();

  sub_1E4709CCC();
  sub_1E467FF4C(&qword_1ECF741E0, MEMORY[0x1E6969530]);
  v1 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v1);

  MEMORY[0x1E6915D10](0x6874676E656C202CLL, 0xE90000000000003ALL);
  v4 = *(v0 + *(type metadata accessor for ReadingHistory.Streak(0) + 20));
  v2 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v2);

  MEMORY[0x1E6915D10](125, 0xE100000000000000);
  return 0x65746144646E657BLL;
}

uint64_t ReadingHistory.Streak.init(endDate:length:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E4709CCC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ReadingHistory.Streak(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

BOOL static ReadingHistory.Streak.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1E4709C8C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ReadingHistory.Streak(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1E467C340()
{
  if (*v0)
  {
    result = 0x6874676E656CLL;
  }

  else
  {
    result = 0x65746144646E65;
  }

  *v0;
  return result;
}

uint64_t sub_1E467C378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E470B84C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E470B84C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E467C450(uint64_t a1)
{
  v2 = sub_1E467FEF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E467C48C(uint64_t a1)
{
  v2 = sub_1E467FEF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReadingHistory.Streak.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1E4650534(&qword_1ECF74A80, &qword_1E471C970);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14[-v9];
  v11 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E467FEF8();
  sub_1E470B93C();
  v14[15] = 0;
  sub_1E4709CCC();
  sub_1E467FF4C(&qword_1ECF74180, MEMORY[0x1E6969530]);
  sub_1E470B7FC();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for ReadingHistory.Streak(0) + 20));
    v14[14] = 1;
    sub_1E470B7EC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t ReadingHistory.Streak.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1E4709CCC();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E4650534(&qword_1ECF74A90, &qword_1E471C978);
  v28 = *(v31 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31, v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for ReadingHistory.Streak(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E467FEF8();
  sub_1E470B92C();
  if (v2)
  {
    return sub_1E4658A0C(a1);
  }

  v26 = v17;
  v19 = v28;
  v20 = v29;
  v33 = 0;
  sub_1E467FF4C(&qword_1ECF741A0, MEMORY[0x1E6969530]);
  v21 = v30;
  sub_1E470B78C();
  (*(v20 + 32))(v26, v8, v21);
  v32 = 1;
  v22 = sub_1E470B77C();
  (*(v19 + 8))(v12, v31);
  v24 = v26;
  v23 = v27;
  *&v26[*(v13 + 20)] = v22;
  sub_1E46802A0(v24, v23, type metadata accessor for ReadingHistory.Streak);
  sub_1E4658A0C(a1);
  return sub_1E4680308(v24, type metadata accessor for ReadingHistory.Streak);
}

uint64_t ReadingHistory.State.longestStreak.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.State(0) + 20);

  return sub_1E467FF94(v3, a1);
}

uint64_t ReadingHistory.State.longestStreak.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.State(0) + 20);

  return sub_1E4680004(a1, v3);
}

__n128 ReadingHistory.State.today.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReadingHistory.State(0) + 24));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t ReadingHistory.State.today.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for ReadingHistory.State(0);
  v6 = v1 + *(result + 24);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

uint64_t ReadingHistory.State.readingHistory.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReadingHistory.State(0) + 28));
}

uint64_t ReadingHistory.State.readingHistory.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingHistory.State(0) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ReadingHistory.State.description.getter()
{
  v1 = v0;
  v2 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v45 - v5;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E471C940;
  v55 = *v0;
  sub_1E4680074();
  v8 = sub_1E470B4AC();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1E4663DE4();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v13 = type metadata accessor for ReadingHistory.State(0);
  sub_1E467FF94(v1 + v13[5], v6);
  v14 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v14 - 8) + 48))(v6, 1, v14) == 1)
  {
    sub_1E465E050(v6, &qword_1ECF74C40, &unk_1E471C980);
    v15 = (v7 + 72);
    *(v7 + 96) = v11;
    *(v7 + 104) = v12;
  }

  else
  {
    v16 = ReadingHistory.Streak.description.getter();
    v18 = v17;
    sub_1E4680308(v6, type metadata accessor for ReadingHistory.Streak);
    v15 = (v7 + 72);
    *(v7 + 96) = v11;
    *(v7 + 104) = v12;
    if (v18)
    {
      *v15 = v16;
      goto LABEL_6;
    }
  }

  *v15 = 7104878;
  v18 = 0xE300000000000000;
LABEL_6:
  *(v7 + 80) = v18;
  v19 = v1 + v13[6];
  v20 = v19[16];
  v53 = *v19;
  v54 = v20;
  v21 = ReadingHistory.Day.description.getter();
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  *(v7 + 112) = v21;
  *(v7 + 120) = v22;
  v23 = *(v1 + v13[7]);
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v45 = v12;
    v46 = v7;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1E467F200(0, v24, 0);
    v25 = v52;
    v26 = (v23 + 64);
    do
    {
      v27 = *(v26 - 4);
      v28 = *(v26 - 3);
      v29 = *(v26 - 2);
      v30 = *(v26 - 1);
      v31 = *v26;
      v50 = 123;
      v51 = 0xE100000000000000;

      MEMORY[0x1E6915D10](v27, v28);
      MEMORY[0x1E6915D10](8250, 0xE200000000000000);
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1E470B5CC();

      v47 = v29;
      v48 = 0x3A656D69747BLL;
      v49 = 0xE600000000000000;
      v32 = sub_1E470B81C();
      MEMORY[0x1E6915D10](v32);

      MEMORY[0x1E6915D10](0x3A6C616F67202CLL, 0xE700000000000000);
      v47 = v30;
      v33 = sub_1E470B81C();
      MEMORY[0x1E6915D10](v33);

      MEMORY[0x1E6915D10](0x6B6165727473202CLL, 0xE90000000000003ALL);
      if (v31)
      {
        v34 = 1702195828;
      }

      else
      {
        v34 = 0x65736C6166;
      }

      if (v31)
      {
        v35 = 0xE400000000000000;
      }

      else
      {
        v35 = 0xE500000000000000;
      }

      MEMORY[0x1E6915D10](v34, v35);

      MEMORY[0x1E6915D10](125, 0xE100000000000000);
      MEMORY[0x1E6915D10](v48, v49);

      MEMORY[0x1E6915D10](125, 0xE100000000000000);

      v36 = v50;
      v37 = v51;
      v52 = v25;
      v39 = *(v25 + 16);
      v38 = *(v25 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1E467F200((v38 > 1), v39 + 1, 1);
        v25 = v52;
      }

      *(v25 + 16) = v39 + 1;
      v40 = v25 + 16 * v39;
      *(v40 + 32) = v36;
      *(v40 + 40) = v37;
      v26 += 40;
      --v24;
    }

    while (v24);
    v12 = v45;
    v7 = v46;
    v11 = MEMORY[0x1E69E6158];
  }

  v50 = v25;
  sub_1E4650534(&qword_1ECF74AA0, &qword_1E471C990);
  sub_1E46800C8();
  v41 = sub_1E470AEDC();
  v43 = v42;

  *(v7 + 176) = v11;
  *(v7 + 184) = v12;
  *(v7 + 152) = v41;
  *(v7 + 160) = v43;
  return sub_1E470AF3C();
}

uint64_t ReadingHistory.State.init(currentStreak:longestStreak:today:readingHistory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 16);
  v12 = type metadata accessor for ReadingHistory.State(0);
  v13 = v12[5];
  v14 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  *a5 = a1;
  result = sub_1E4680004(a2, &a5[v13]);
  v16 = &a5[v12[6]];
  *v16 = v9;
  *(v16 + 1) = v10;
  v16[16] = v11;
  *&a5[v12[7]] = a4;
  return result;
}

uint64_t sub_1E467D230()
{
  v1 = 0x53746E6572727563;
  v2 = 0x7961646F74;
  if (*v0 != 2)
  {
    v2 = 0x48676E6964616572;
  }

  if (*v0)
  {
    v1 = 0x53747365676E6F6CLL;
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

uint64_t sub_1E467D2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E468130C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E467D2F0(uint64_t a1)
{
  v2 = sub_1E468012C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E467D32C(uint64_t a1)
{
  v2 = sub_1E468012C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReadingHistory.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1E4650534(&qword_1ECF74AA8, &qword_1E471C998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E468012C();
  sub_1E470B93C();
  v12 = *v3;
  LOBYTE(v20) = 0;
  sub_1E470B7EC();
  if (!v2)
  {
    v13 = type metadata accessor for ReadingHistory.State(0);
    v14 = v13[5];
    LOBYTE(v20) = 1;
    type metadata accessor for ReadingHistory.Streak(0);
    sub_1E467FF4C(&qword_1ECF74AB8, type metadata accessor for ReadingHistory.Streak);
    sub_1E470B7AC();
    v15 = v3 + v13[6];
    v16 = v15[16];
    v20 = *v15;
    v21 = v16;
    v19 = 2;
    sub_1E467FE50();
    sub_1E470B7FC();
    *&v20 = *(v3 + v13[7]);
    v19 = 3;
    sub_1E4650534(&qword_1ECF74AC0, &qword_1E471C9A0);
    sub_1E46801D4(&qword_1ECF74AC8, sub_1E4680180);
    sub_1E470B7FC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t ReadingHistory.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v32 = &v28 - v6;
  v34 = sub_1E4650534(&qword_1ECF74AD8, &qword_1E471C9A8);
  v31 = *(v34 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v34, v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ReadingHistory.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v16 + 20);
  v18 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v18 - 8) + 56))(v15 + v17, 1, 1, v18);
  v19 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E468012C();
  v33 = v10;
  v20 = v35;
  sub_1E470B92C();
  if (v20)
  {
    sub_1E4658A0C(a1);
    return sub_1E465E050(v15 + v17, &qword_1ECF74C40, &unk_1E471C980);
  }

  else
  {
    v29 = a1;
    v35 = v17;
    v21 = v31;
    v22 = v32;
    LOBYTE(v36) = 0;
    v23 = v33;
    v24 = v34;
    *v15 = sub_1E470B77C();
    LOBYTE(v36) = 1;
    sub_1E467FF4C(&qword_1ECF74AE0, type metadata accessor for ReadingHistory.Streak);
    sub_1E470B73C();
    sub_1E4680004(v22, v15 + v35);
    v38 = 2;
    sub_1E467FEA4();
    sub_1E470B78C();
    v25 = v37;
    v26 = v15 + *(v11 + 24);
    *v26 = v36;
    v26[16] = v25;
    sub_1E4650534(&qword_1ECF74AC0, &qword_1E471C9A0);
    v38 = 3;
    sub_1E46801D4(&qword_1ECF74AE8, sub_1E468024C);
    sub_1E470B78C();
    (*(v21 + 8))(v23, v24);
    *(v15 + *(v11 + 28)) = v36;
    sub_1E46802A0(v15, v30, type metadata accessor for ReadingHistory.State);
    sub_1E4658A0C(v29);
    return sub_1E4680308(v15, type metadata accessor for ReadingHistory.State);
  }
}

uint64_t sub_1E467DA90(uint64_t a1)
{
  v2 = sub_1E4680368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E467DACC(uint64_t a1)
{
  v2 = sub_1E4680368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E467DB94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4709CCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReadingHistory.Notification.AddFakeSession.init(date:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1E4709CCC();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for ReadingHistory.Notification.AddFakeSession(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_1E467DC9C()
{
  if (*v0)
  {
    result = 0x6E6F697461727564;
  }

  else
  {
    result = 1702125924;
  }

  *v0;
  return result;
}

uint64_t sub_1E467DCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E470B84C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E470B84C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E467DDAC(uint64_t a1)
{
  v2 = sub_1E46803DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E467DDE8(uint64_t a1)
{
  v2 = sub_1E46803DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReadingHistory.Notification.AddFakeSession.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1E4650534(&qword_1ECF74B08, &qword_1E471C9B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14[-v9];
  v11 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E46803DC();
  sub_1E470B93C();
  v14[15] = 0;
  sub_1E4709CCC();
  sub_1E467FF4C(&qword_1ECF74180, MEMORY[0x1E6969530]);
  sub_1E470B7FC();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for ReadingHistory.Notification.AddFakeSession(0) + 20));
    v14[14] = 1;
    sub_1E470B7DC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t ReadingHistory.Notification.AddFakeSession.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1E4709CCC();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1E4650534(&qword_1ECF74B18, &qword_1E471C9C0);
  v30 = *(v33 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v33, v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for ReadingHistory.Notification.AddFakeSession(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E46803DC();
  sub_1E470B92C();
  if (v2)
  {
    return sub_1E4658A0C(a1);
  }

  v28 = v17;
  v19 = v30;
  v20 = v31;
  v35 = 0;
  sub_1E467FF4C(&qword_1ECF741A0, MEMORY[0x1E6969530]);
  v21 = v32;
  sub_1E470B78C();
  (*(v20 + 32))(v28, v8, v21);
  v34 = 1;
  sub_1E470B76C();
  v23 = v22;
  (*(v19 + 8))(v12, v33);
  v25 = v28;
  v24 = v29;
  *&v28[*(v13 + 20)] = v23;
  sub_1E46802A0(v25, v24, type metadata accessor for ReadingHistory.Notification.AddFakeSession);
  sub_1E4658A0C(a1);
  return sub_1E4680308(v25, type metadata accessor for ReadingHistory.Notification.AddFakeSession);
}

uint64_t sub_1E467E35C(uint64_t a1)
{
  v2 = sub_1E4680430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E467E398(uint64_t a1)
{
  v2 = sub_1E4680430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E467E418(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = sub_1E4650534(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_1E465057C(a1, a1[3]);
  a4();
  sub_1E470B93C();
  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_1E467E5A4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = sub_1E4650534(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_1E465057C(a1, a1[3]);
  a6();
  sub_1E470B93C();
  return (*(v9 + 8))(v13, v8);
}

BDSReadingHistoryDayInfo __swiftcall ReadingHistory.Day.toInfo()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = objc_allocWithZone(BDSReadingHistoryDayInfo);

  v5 = [v4 initWithReadingTime:v1 goal:v2 isStreakDay:v3];
  result._goal = v8;
  result._readingTime = v7;
  result.super.isa = v5;
  result._isStreakDay = v6;
  return result;
}

id static ReadingHistory.Day.from(info:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 readingTime];
  v5 = [a1 goal];
  result = [a1 isStreakDay];
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = result;
  return result;
}

BDSReadingHistoryDayEntryInfo __swiftcall ReadingHistory.DayEntry.toInfo()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = [objc_allocWithZone(BDSReadingHistoryDayInfo) initWithReadingTime:v0[2] goal:v0[3] isStreakDay:*(v0 + 32)];
  v4 = objc_allocWithZone(BDSReadingHistoryDayEntryInfo);
  v5 = sub_1E470AF0C();
  v6 = [v4 initWithDate:v5 day:v3];

  v9 = v6;
  result._day = v8;
  result._date = v7;
  result.super.isa = v9;
  return result;
}

void static ReadingHistory.DayEntry.from(info:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 date];
  v5 = sub_1E470AF1C();
  v7 = v6;

  v8 = [a1 day];
  v9 = [v8 readingTime];
  v10 = [v8 goal];
  v11 = [v8 isStreakDay];

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
}

BDSReadingHistoryStreakInfo __swiftcall ReadingHistory.Streak.toInfo()()
{
  v1 = *(v0 + *(type metadata accessor for ReadingHistory.Streak(0) + 20));
  v2 = objc_allocWithZone(BDSReadingHistoryStreakInfo);
  v3 = sub_1E4709C5C();
  v4 = [v2 initWithEndDate:v3 length:v1];

  v7 = v4;
  result._length = v6;
  result._endDate = v5;
  result.super.isa = v7;
  return result;
}

uint64_t static ReadingHistory.Streak.from(info:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 endDate];
  sub_1E4709C9C();

  v5 = [a1 length];
  result = type metadata accessor for ReadingHistory.Streak(0);
  *(a2 + *(result + 20)) = v5;
  return result;
}

void __swiftcall ReadingHistory.State.toInfo()(BDSReadingHistoryStateInfo *__return_ptr retstr)
{
  v2 = v1;
  v3 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v36 - v6;
  v8 = *v2;
  v9 = type metadata accessor for ReadingHistory.State(0);
  sub_1E467FF94(v2 + v9[5], v7);
  v10 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
    sub_1E465E050(v7, &qword_1ECF74C40, &unk_1E471C980);
    v11 = 0;
  }

  else
  {
    v12 = *&v7[*(v10 + 20)];
    v13 = objc_allocWithZone(BDSReadingHistoryStreakInfo);
    v14 = sub_1E4709C5C();
    v11 = [v13 initWithEndDate:v14 length:v12];

    sub_1E4680308(v7, type metadata accessor for ReadingHistory.Streak);
  }

  v15 = v2 + v9[6];
  v16 = 0x1E8758000uLL;
  v17 = [objc_allocWithZone(BDSReadingHistoryDayInfo) initWithReadingTime:*v15 goal:*(v15 + 1) isStreakDay:v15[16]];
  v18 = v17;
  v19 = *(v2 + v9[7]);
  v20 = *(v19 + 16);
  if (v20)
  {
    v36 = v17;
    v37 = v11;
    v38 = v8;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1E470B63C();
    v21 = (v19 + 64);
    do
    {
      v22 = *(v21 - 4);
      v23 = *(v21 - 3);
      v24 = *(v21 - 2);
      v25 = *(v21 - 1);
      v26 = *v21;
      v21 += 40;
      v27 = v16;
      v28 = objc_allocWithZone(*(v16 + 3320));

      v29 = v28;
      v16 = v27;
      v30 = [v29 &selRef:v24 dataManager:v25 didInsertNewRecords:v26 + 4];
      v31 = objc_allocWithZone(BDSReadingHistoryDayEntryInfo);
      v32 = sub_1E470AF0C();
      [v31 initWithDate:v32 day:v30];

      sub_1E470B61C();
      v33 = *(v39 + 16);
      sub_1E470B64C();
      sub_1E470B65C();
      sub_1E470B62C();
      --v20;
    }

    while (v20);
    v8 = v38;
    v18 = v36;
    v11 = v37;
  }

  v34 = objc_allocWithZone(BDSReadingHistoryStateInfo);
  sub_1E4680484();
  v35 = sub_1E470B0AC();

  [v34 initWithCurrentStreak:v8 longestStreak:v11 today:v18 readingHistory:v35];
}

uint64_t static ReadingHistory.State.from(info:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v45 - v8;
  v10 = [a1 currentStreak];
  v11 = [a1 longestStreak];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 endDate];
    sub_1E4709C9C();

    v14 = [v12 length];
    v15 = type metadata accessor for ReadingHistory.Streak(0);
    *&v9[*(v15 + 20)] = v14;
    (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for ReadingHistory.Streak(0);
    (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  }

  v17 = [a1 today];
  v18 = [v17 readingTime];
  v19 = [v17 goal];
  v20 = [v17 isStreakDay];

  v21 = [a1 readingHistory];
  sub_1E4680484();
  v22 = sub_1E470B0BC();

  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_16:

    v26 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v41 = type metadata accessor for ReadingHistory.State(0);
    v42 = v41[5];
    v43 = type metadata accessor for ReadingHistory.Streak(0);
    (*(*(v43 - 8) + 56))(&a2[v42], 1, 1, v43);
    *a2 = v10;
    result = sub_1E4680004(v9, &a2[v42]);
    v44 = &a2[v41[6]];
    *v44 = v18;
    *(v44 + 1) = v19;
    v44[16] = v20;
    *&a2[v41[7]] = v26;
    return result;
  }

  v23 = sub_1E470B50C();
  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_6:
  v54 = MEMORY[0x1E69E7CC0];
  result = sub_1E467F220(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v52 = v23;
    v53 = v22;
    HIDWORD(v45) = v20;
    v46 = v19;
    v47 = v18;
    v48 = v10;
    v49 = v9;
    v25 = 0;
    v26 = v54;
    v27 = v22;
    v50 = a2;
    v51 = v22 & 0xC000000000000001;
    do
    {
      if (v51)
      {
        v28 = MEMORY[0x1E6916300](v25, v27);
      }

      else
      {
        v28 = *(v27 + 8 * v25 + 32);
      }

      v29 = v28;
      v30 = [v28 date];
      v31 = sub_1E470AF1C();
      v33 = v32;

      v34 = [v29 day];
      v35 = [v34 readingTime];
      v36 = [v34 goal];
      v37 = [v34 isStreakDay];

      v54 = v26;
      v39 = *(v26 + 16);
      v38 = *(v26 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1E467F220((v38 > 1), v39 + 1, 1);
        v26 = v54;
      }

      ++v25;
      *(v26 + 16) = v39 + 1;
      v40 = v26 + 40 * v39;
      *(v40 + 32) = v31;
      *(v40 + 40) = v33;
      *(v40 + 48) = v35;
      *(v40 + 56) = v36;
      *(v40 + 64) = v37;
      v27 = v53;
    }

    while (v52 != v25);

    v9 = v49;
    a2 = v50;
    v18 = v47;
    v10 = v48;
    v19 = v46;
    LOBYTE(v20) = BYTE4(v45);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t BDSReadingHistoryStreakInfo.toStreak()@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 endDate];
  sub_1E4709C9C();

  v4 = [v1 length];
  result = type metadata accessor for ReadingHistory.Streak(0);
  *(a1 + *(result + 20)) = v4;
  return result;
}

BookDataStore::ReadingHistory::Day __swiftcall BDSReadingHistoryDayInfo.toDay()()
{
  v2 = v0;
  v3 = [v1 readingTime];
  v4 = [v1 goal];
  v5 = [v1 isStreakDay];
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  result.goal = v6;
  result.readingTime = v5;
  result.isStreakDay = v7;
  return result;
}

char *sub_1E467F200(char *a1, int64_t a2, char a3)
{
  result = sub_1E467F284(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E467F220(char *a1, int64_t a2, char a3)
{
  result = sub_1E467F3B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E467F240(size_t a1, int64_t a2, char a3)
{
  result = sub_1E467F82C(a1, a2, a3, *v3, &unk_1ECF752F0, &qword_1E471D518, MEMORY[0x1E695B5E8]);
  *v3 = result;
  return result;
}

char *sub_1E467F284(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1E4650534(&unk_1ECF74CE0, &qword_1E471D520);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E467F3B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1E4650534(&qword_1ECF74C18, &qword_1E471D570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E467F4D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1E4650534(&qword_1ECF74BF8, &unk_1E471D550);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1E467F644(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1E4650534(a5, a6);
  v16 = *(sub_1E4650534(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_1E4650534(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_1E467F82C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1E4650534(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t _s13BookDataStore14ReadingHistoryO5StateV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ReadingHistory.Streak(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = &v35 - v13;
  v15 = sub_1E4650534(&unk_1ECF74C20, &qword_1E471D578);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v35 - v18;
  if (*a1 != *a2)
  {
    goto LABEL_13;
  }

  v20 = type metadata accessor for ReadingHistory.State(0);
  v21 = v20[5];
  v22 = *(v15 + 48);
  sub_1E467FF94(a1 + v21, v19);
  sub_1E467FF94(a2 + v21, &v19[v22]);
  v23 = *(v5 + 48);
  if (v23(v19, 1, v4) != 1)
  {
    sub_1E467FF94(v19, v14);
    if (v23(&v19[v22], 1, v4) != 1)
    {
      sub_1E4681484(&v19[v22], v9);
      if (sub_1E4709C8C())
      {
        v32 = *(v4 + 20);
        v33 = *&v14[v32];
        v34 = *&v9[v32];
        sub_1E4680308(v9, type metadata accessor for ReadingHistory.Streak);
        sub_1E4680308(v14, type metadata accessor for ReadingHistory.Streak);
        sub_1E465E050(v19, &qword_1ECF74C40, &unk_1E471C980);
        if (v33 == v34)
        {
          goto LABEL_5;
        }

LABEL_13:
        v24 = 0;
        return v24 & 1;
      }

      sub_1E4680308(v9, type metadata accessor for ReadingHistory.Streak);
      sub_1E4680308(v14, type metadata accessor for ReadingHistory.Streak);
      v29 = &qword_1ECF74C40;
      v30 = &unk_1E471C980;
LABEL_12:
      sub_1E465E050(v19, v29, v30);
      goto LABEL_13;
    }

    sub_1E4680308(v14, type metadata accessor for ReadingHistory.Streak);
LABEL_11:
    v29 = &unk_1ECF74C20;
    v30 = &qword_1E471D578;
    goto LABEL_12;
  }

  if (v23(&v19[v22], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1E465E050(v19, &qword_1ECF74C40, &unk_1E471C980);
LABEL_5:
  v24 = 0;
  v25 = v20[6];
  v26 = a1 + v25;
  v27 = *(a1 + v25);
  v28 = a2 + v25;
  if (v27 == *v28 && *(v26 + 1) == *(v28 + 1) && ((v26[16] ^ v28[16]) & 1) == 0)
  {
    v24 = sub_1E46D2C80(*(a1 + v20[7]), *(a2 + v20[7]));
  }

  return v24 & 1;
}

uint64_t _s13BookDataStore14ReadingHistoryO8DayEntryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (v9 = sub_1E470B84C(), result = 0, (v9 & 1) != 0))
  {
    v12 = v2 == v5 && v3 == v6;
    return v12 & (v4 ^ v7 ^ 1u);
  }

  return result;
}

unint64_t sub_1E467FDFC()
{
  result = qword_1ECF74A60;
  if (!qword_1ECF74A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74A60);
  }

  return result;
}

unint64_t sub_1E467FE50()
{
  result = qword_1ECF74A68;
  if (!qword_1ECF74A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74A68);
  }

  return result;
}

unint64_t sub_1E467FEA4()
{
  result = qword_1ECF74A78;
  if (!qword_1ECF74A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74A78);
  }

  return result;
}

unint64_t sub_1E467FEF8()
{
  result = qword_1ECF74A88;
  if (!qword_1ECF74A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74A88);
  }

  return result;
}

uint64_t sub_1E467FF4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E467FF94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4680004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4680074()
{
  result = qword_1ECF74A98;
  if (!qword_1ECF74A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74A98);
  }

  return result;
}

unint64_t sub_1E46800C8()
{
  result = qword_1EE2ACD00;
  if (!qword_1EE2ACD00)
  {
    sub_1E46506D0(&qword_1ECF74AA0, &qword_1E471C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ACD00);
  }

  return result;
}

unint64_t sub_1E468012C()
{
  result = qword_1ECF74AB0;
  if (!qword_1ECF74AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74AB0);
  }

  return result;
}

unint64_t sub_1E4680180()
{
  result = qword_1ECF74AD0;
  if (!qword_1ECF74AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74AD0);
  }

  return result;
}

uint64_t sub_1E46801D4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1E46506D0(&qword_1ECF74AC0, &qword_1E471C9A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E468024C()
{
  result = qword_1ECF74AF0;
  if (!qword_1ECF74AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74AF0);
  }

  return result;
}

uint64_t sub_1E46802A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4680308(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4680368()
{
  result = qword_1ECF74B00;
  if (!qword_1ECF74B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B00);
  }

  return result;
}

unint64_t sub_1E46803DC()
{
  result = qword_1ECF74B10;
  if (!qword_1ECF74B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B10);
  }

  return result;
}

unint64_t sub_1E4680430()
{
  result = qword_1ECF74B28;
  if (!qword_1ECF74B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B28);
  }

  return result;
}

unint64_t sub_1E4680484()
{
  result = qword_1ECF74B30;
  if (!qword_1ECF74B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF74B30);
  }

  return result;
}

unint64_t sub_1E46804D4()
{
  result = qword_1EE2AE300;
  if (!qword_1EE2AE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2AE300);
  }

  return result;
}

unint64_t sub_1E468052C()
{
  result = qword_1EE2AE308[0];
  if (!qword_1EE2AE308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2AE308);
  }

  return result;
}

unint64_t sub_1E4680614()
{
  result = qword_1EE2AE3B0;
  if (!qword_1EE2AE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2AE3B0);
  }

  return result;
}

unint64_t sub_1E468066C()
{
  result = qword_1EE2AE3B8;
  if (!qword_1EE2AE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2AE3B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingHistory.Day(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingHistory.Day(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1E4680778(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E468078C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E46807D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E46808A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4709CCC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4680928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4709CCC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t getEnumTagSinglePayload for ReadingHistory.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReadingHistory.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4680B68()
{
  result = qword_1ECF74B38;
  if (!qword_1ECF74B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B38);
  }

  return result;
}

unint64_t sub_1E4680BC0()
{
  result = qword_1ECF74B40;
  if (!qword_1ECF74B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B40);
  }

  return result;
}

unint64_t sub_1E4680C18()
{
  result = qword_1ECF74B48;
  if (!qword_1ECF74B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B48);
  }

  return result;
}

unint64_t sub_1E4680C70()
{
  result = qword_1ECF74B50;
  if (!qword_1ECF74B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B50);
  }

  return result;
}

unint64_t sub_1E4680CC8()
{
  result = qword_1ECF74B58;
  if (!qword_1ECF74B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B58);
  }

  return result;
}

unint64_t sub_1E4680D20()
{
  result = qword_1ECF74B60;
  if (!qword_1ECF74B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B60);
  }

  return result;
}

unint64_t sub_1E4680D78()
{
  result = qword_1ECF74B68;
  if (!qword_1ECF74B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B68);
  }

  return result;
}

unint64_t sub_1E4680DD0()
{
  result = qword_1ECF74B70;
  if (!qword_1ECF74B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B70);
  }

  return result;
}

unint64_t sub_1E4680E28()
{
  result = qword_1ECF74B78;
  if (!qword_1ECF74B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B78);
  }

  return result;
}

unint64_t sub_1E4680E80()
{
  result = qword_1ECF74B80;
  if (!qword_1ECF74B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B80);
  }

  return result;
}

unint64_t sub_1E4680ED8()
{
  result = qword_1ECF74B88;
  if (!qword_1ECF74B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B88);
  }

  return result;
}

unint64_t sub_1E4680F30()
{
  result = qword_1ECF74B90;
  if (!qword_1ECF74B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B90);
  }

  return result;
}

unint64_t sub_1E4680F88()
{
  result = qword_1ECF74B98;
  if (!qword_1ECF74B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B98);
  }

  return result;
}

unint64_t sub_1E4680FE0()
{
  result = qword_1ECF74BA0;
  if (!qword_1ECF74BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74BA0);
  }

  return result;
}

unint64_t sub_1E4681038()
{
  result = qword_1ECF74BA8;
  if (!qword_1ECF74BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74BA8);
  }

  return result;
}

unint64_t sub_1E4681090()
{
  result = qword_1ECF74BB0;
  if (!qword_1ECF74BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74BB0);
  }

  return result;
}

unint64_t sub_1E46810E8()
{
  result = qword_1ECF74BB8;
  if (!qword_1ECF74BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74BB8);
  }

  return result;
}

unint64_t sub_1E4681140()
{
  result = qword_1ECF74BC0;
  if (!qword_1ECF74BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74BC0);
  }

  return result;
}

unint64_t sub_1E4681198()
{
  result = qword_1ECF74BC8;
  if (!qword_1ECF74BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74BC8);
  }

  return result;
}

uint64_t sub_1E46811EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54676E6964616572 && a2 == 0xEB00000000656D69;
  if (v4 || (sub_1E470B84C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1818324839 && a2 == 0xE400000000000000 || (sub_1E470B84C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B61657274537369 && a2 == 0xEB00000000796144)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E470B84C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E468130C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746E6572727563 && a2 == 0xED00006B61657274;
  if (v4 || (sub_1E470B84C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53747365676E6F6CLL && a2 == 0xED00006B61657274 || (sub_1E470B84C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961646F74 && a2 == 0xE500000000000000 || (sub_1E470B84C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x48676E6964616572 && a2 == 0xEE0079726F747369)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E470B84C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E4681484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4681564(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v39 = a1;
  v2 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v40 = v38 - v5;
  v6 = sub_1E4650534(&qword_1ECF74BE8, &unk_1E471D540);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (v38 - v10);
  v12 = sub_1E4650534(&qword_1ECF74D40, &unk_1E471DBC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = v38 - v15;
  v17 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v38 - v21;
  v23 = sub_1E4650534(&qword_1ECF74D48, &qword_1E471D840);
  v38[0] = *(v23 - 8);
  v24 = *(v38[0] + 64);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = v38 - v27;
  (*(v18 + 16))(v22, v39, v17, v26);
  sub_1E45E2F14(&qword_1EE2ACD90, &unk_1ECF74D00, &unk_1E471DBA0);
  v39 = v17;
  sub_1E470B06C();
  v38[2] = sub_1E45E2F14(&qword_1EE2ACDC8, &qword_1ECF74D48, &qword_1E471D840);
  sub_1E470B49C();
  v29 = v6;
  v32 = *(v7 + 48);
  v30 = v7 + 48;
  v31 = v32;
  if (v32(v16, 1, v6) != 1)
  {
    do
    {
      sub_1E46574C0(v16, v11, &qword_1ECF74BE8, &unk_1E471D540);
      v33 = v30;
      v34 = v29;
      v35 = *v11;
      v36 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
      (*(*(v36 - 8) + 56))(v40, 1, 1, v36);
      v42 = v35;
      sub_1E470AB1C();
      sub_1E465E050(v11, &qword_1ECF74BE8, &unk_1E471D540);
      sub_1E470B49C();
      v29 = v34;
      v30 = v33;
    }

    while (v31(v16, 1, v29) != 1);
  }

  return (*(v38[0] + 8))(v28, v23);
}

uint64_t sub_1E46819C8(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v40 = a1;
  v2 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v41 = v39 - v5;
  v6 = sub_1E4650534(&qword_1ECF74BD8, &qword_1E471D530);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (v39 - v10);
  v12 = sub_1E4650534(&qword_1ECF74D10, &unk_1E471E770);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = v39 - v15;
  v17 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = v39 - v21;
  v23 = sub_1E4650534(&qword_1ECF74D18, &unk_1E471D830);
  v39[0] = *(v23 - 8);
  v24 = *(v39[0] + 64);
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v28 = v39 - v27;
  (*(v18 + 16))(v22, v40, v17, v26);
  sub_1E45E2F14(&qword_1ECF74D20, &unk_1ECF74CF0, &qword_1E471D828);
  v40 = v17;
  sub_1E470B06C();
  v39[2] = sub_1E45E2F14(&qword_1ECF74D28, &qword_1ECF74D18, &unk_1E471D830);
  sub_1E470B49C();
  v29 = v6;
  v32 = *(v7 + 48);
  v30 = v7 + 48;
  v31 = v32;
  if (v32(v16, 1, v6) != 1)
  {
    do
    {
      sub_1E46574C0(v16, v11, &qword_1ECF74BD8, &qword_1E471D530);
      v33 = v30;
      v34 = v29;
      v35 = *v11;
      v36 = sub_1E4709CCC();
      (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
      v43 = v35;
      v37 = v42 + *(type metadata accessor for ReadingHistoryModel(0) + 20);
      sub_1E470AB1C();
      sub_1E465E050(v11, &qword_1ECF74BD8, &qword_1E471D530);
      sub_1E470B49C();
      v29 = v34;
      v30 = v33;
    }

    while (v31(v16, 1, v29) != 1);
  }

  return (*(v39[0] + 8))(v28, v23);
}

uint64_t sub_1E4681E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1E4697A8C;
  *(v10 + 24) = v9;
  v13[4] = sub_1E467A478;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E46679F4;
  v13[3] = &unk_1F5E64C80;
  v11 = _Block_copy(v13);

  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4681FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1E4698424;
  *(v10 + 24) = v9;
  v13[4] = sub_1E467A478;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E46679F4;
  v13[3] = &unk_1F5E650E0;
  v11 = _Block_copy(v13);

  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4682128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v6 = sub_1E470A61C();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E470A5DC();
  v11 = *(v35 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v35, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(a1 + 40);
  v16 = *(a1 + 48);
  v18 = *(a1 + 56);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(a1 + 72);
    ObjectType = swift_getObjectType();
    (*(v19 + 8))(a1, ObjectType, v19);
    swift_unknownObjectRelease();
  }

  v21 = *(a1 + 24);
  sub_1E470A5CC();
  v22 = swift_allocObject();
  swift_weakInit();
  LOBYTE(v40) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  v34 = a2;
  v24 = v38;
  *(v23 + 24) = v38;
  *(v23 + 32) = v17;
  *(v23 + 40) = v16;
  *(v23 + 48) = v18;
  *(v23 + 56) = 0;
  *(v23 + 64) = 0;
  *(v23 + 72) = 0;
  *(v23 + 73) = v40;
  *(v23 + 80) = v22;
  aBlock[4] = sub_1E4697A98;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E64CF8;
  v25 = _Block_copy(aBlock);

  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v10, v15, v25);
  _Block_release(v25);
  (*(v36 + 8))(v10, v37);
  (*(v11 + 8))(v15, v35);

  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v28 = v39;
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v26;
  v29[3] = v27;
  v30 = v34;
  v29[4] = v28;
  v29[5] = v30;
  v29[6] = v24;
  swift_beginAccess();

  v31 = *(a1 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(a1 + 32);
  *(a1 + 32) = 0x8000000000000000;
  sub_1E46C732C(sub_1E4697AD4, v29, v28, isUniquelyReferenced_nonNull_native);
  *(a1 + 32) = v40;
  swift_endAccess();
}

uint64_t sub_1E4682520(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v6 = sub_1E470A61C();
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E470A5DC();
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v19 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v43 - v22;
  v24 = *(*a1 + 120);
  swift_beginAccess();
  sub_1E465E0B0(a1 + v24, v23, &qword_1ECF74A00, &unk_1E471D5B0);
  swift_storeEnumTagMultiPayload();
  v25 = a1 + *(*a1 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = *(v25 + 1);
    ObjectType = swift_getObjectType();
    (*(v26 + 8))(a1, ObjectType, v26);
    swift_unknownObjectRelease();
  }

  v43 = a1[3];
  sub_1E470A5CC();
  v28 = swift_allocObject();
  swift_weakInit();
  sub_1E465E0B0(v23, v19, &qword_1ECF74D90, &unk_1E471C8F0);
  v29 = *(v16 + 80);
  v45 = v23;
  v30 = (v29 + 32) & ~v29;
  v31 = swift_allocObject();
  *(v31 + 16) = a2;
  v44 = a2;
  v32 = v51;
  *(v31 + 24) = v51;
  sub_1E46574C0(v19, v31 + v30, &qword_1ECF74D90, &unk_1E471C8F0);
  *(v31 + ((v17 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  aBlock[4] = sub_1E4697F3C;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E64FF0;
  v33 = _Block_copy(aBlock);

  v34 = v48;
  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v34, v14, v33);
  _Block_release(v33);
  (*(v49 + 8))(v34, v50);
  (*(v46 + 8))(v14, v47);

  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v37 = v52;
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  v38[2] = v35;
  v38[3] = v36;
  v39 = v44;
  v38[4] = v37;
  v38[5] = v39;
  v38[6] = v32;
  swift_beginAccess();

  v40 = a1[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = a1[4];
  a1[4] = 0x8000000000000000;
  sub_1E46C7358(sub_1E4698020, v38, v37, isUniquelyReferenced_nonNull_native);
  a1[4] = v53;
  swift_endAccess();
  sub_1E465E050(v45, &qword_1ECF74D90, &unk_1E471C8F0);
}

uint64_t sub_1E4682A84(void (*a1)(__int128 *), uint64_t a2, __int128 *a3)
{
  v3 = a3[1];
  v10 = *a3;
  v11[0] = v3;
  *(v11 + 10) = *(a3 + 26);
  a1(&v10);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 72);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);

      v8(v9, ObjectType, v6);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E4682B78(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  a1(a3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result + *(*result + 128);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 16);

      v7(v8, ObjectType, v5);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E4682C74(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1E470A5DC();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E470A61C();
  v32 = *(v15 - 8);
  v16 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v31 = *(v21 + 24);
      v22 = swift_allocObject();
      *(v22 + 16) = a5;
      *(v22 + 24) = a6;
      v23 = a1[1];
      *(v22 + 32) = *a1;
      *(v22 + 48) = v23;
      *(v22 + 58) = *(a1 + 26);
      aBlock[4] = sub_1E4697B14;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E46C4624;
      aBlock[3] = &unk_1F5E64D98;
      v24 = _Block_copy(aBlock);

      sub_1E470A5FC();
      v34 = MEMORY[0x1E69E7CC0];
      sub_1E4698194(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
      sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
      sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
      sub_1E470B4CC();
      MEMORY[0x1E69160A0](0, v19, v14, v24);
      _Block_release(v24);
      (*(v33 + 8))(v14, v10);
      (*(v32 + 8))(v19, v15);
    }

    else
    {
      sub_1E470B2CC();
      sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1E471BA00;
      aBlock[0] = a4;
      v26 = sub_1E470AF6C();
      v28 = v27;
      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = sub_1E4663DE4();
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      sub_1E45E2DE8(0, &qword_1EE2ACCB8, 0x1E69E9BF8);
      v29 = sub_1E470B45C();
      sub_1E470A0AC();

      swift_beginAccess();
      v30 = sub_1E46FF750(a4);
      swift_endAccess();
      sub_1E45EB5D8(v30);
    }
  }

  return result;
}

uint64_t sub_1E46830C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v38 = a4;
  v39 = a1;
  v6 = sub_1E470A5DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E470A61C();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v20);
  v22 = &v37 - v21;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v37 = *(v24 + 24);
      v38 = v12;
      sub_1E465E0B0(v39, v22, &qword_1ECF74D90, &unk_1E471C8F0);
      v25 = *(v18 + 80);
      v39 = v7;
      v26 = (v25 + 32) & ~v25;
      v27 = swift_allocObject();
      v28 = v41;
      *(v27 + 16) = v40;
      *(v27 + 24) = v28;
      sub_1E46574C0(v22, v27 + v26, &qword_1ECF74D90, &unk_1E471C8F0);
      aBlock[4] = sub_1E4698030;
      aBlock[5] = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E46C4624;
      aBlock[3] = &unk_1F5E65068;
      v29 = _Block_copy(aBlock);

      sub_1E470A5FC();
      v43 = MEMORY[0x1E69E7CC0];
      sub_1E4698194(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
      sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
      sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
      sub_1E470B4CC();
      MEMORY[0x1E69160A0](0, v16, v11, v29);
      _Block_release(v29);
      (*(v39 + 8))(v11, v6);
      (*(v42 + 8))(v16, v38);
    }

    else
    {
      sub_1E470B2CC();
      sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1E471BA00;
      v31 = v38;
      aBlock[0] = v38;
      v32 = sub_1E470AF6C();
      v34 = v33;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 64) = sub_1E4663DE4();
      *(v30 + 32) = v32;
      *(v30 + 40) = v34;
      sub_1E45E2DE8(0, &qword_1EE2ACCB8, 0x1E69E9BF8);
      v35 = sub_1E470B45C();
      sub_1E470A0AC();

      swift_beginAccess();
      v36 = sub_1E46FF768(v31);
      swift_endAccess();
      sub_1E45EB5D8(v36);
    }
  }

  return result;
}

uint64_t sub_1E46835D4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E4698378;
  *(v5 + 24) = v4;
  v8[4] = sub_1E467A478;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E46679F4;
  v8[3] = &unk_1F5E64F78;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E468373C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 32);
  v5 = sub_1E4655454(a1);
  if (v6)
  {
    v7 = v5;
    v8 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a2 + 32);
    *(a2 + 32) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4657C84();
    }

    v11 = *(*(v10 + 56) + 16 * v7 + 8);

    sub_1E46FFD54(v7, v10);
    *(a2 + 32) = v10;
  }

  return swift_endAccess();
}

BookDataStore::ReadingHistoryDataStore::Config __swiftcall ReadingHistoryDataStore.Config.init(dataPruningEnabled:historicalMonthsToKeep:)(Swift::Bool dataPruningEnabled, Swift::Int historicalMonthsToKeep)
{
  *v2 = dataPruningEnabled;
  *(v2 + 8) = historicalMonthsToKeep;
  result.historicalMonthsToKeep = historicalMonthsToKeep;
  result.dataPruningEnabled = dataPruningEnabled;
  return result;
}

uint64_t ReadingHistoryDataStore.updateCollector.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1E4697BD4(a1, v1 + 16, &qword_1ECF74C38, &unk_1E471D580);
  return swift_endAccess();
}

uint64_t sub_1E4683900()
{
  v1 = v0;
  v2 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v32 - v9;
  sub_1E4650534(&unk_1ECF74CE0, &qword_1E471D520);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1E471C940;
  v32[0] = 0x3D6C65646F6DLL;
  v32[1] = 0xE600000000000000;
  v12 = ReadingHistoryModel.description.getter();
  MEMORY[0x1E6915D10](v12);

  v13 = v32[1];
  *(v11 + 32) = v32[0];
  *(v11 + 40) = v13;
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_1E470B5CC();

  strcpy(v32, "currentStreak=");
  HIBYTE(v32[1]) = -18;
  v14 = type metadata accessor for ReadingHistoryDataStore.State(0);
  sub_1E465E0B0(v0 + v14[5], v10, &qword_1ECF74C40, &unk_1E471C980);
  v15 = type metadata accessor for ReadingHistory.Streak(0);
  v16 = *(*(v15 - 8) + 48);
  if (v16(v10, 1, v15) == 1)
  {
    sub_1E465E050(v10, &qword_1ECF74C40, &unk_1E471C980);
    v17 = 0xE300000000000000;
    v18 = 7104878;
  }

  else
  {
    v19 = ReadingHistory.Streak.description.getter();
    v17 = v20;
    sub_1E4697478(v10, type metadata accessor for ReadingHistory.Streak);
    v18 = v19;
  }

  MEMORY[0x1E6915D10](v18, v17);

  v21 = v32[1];
  *(v11 + 48) = v32[0];
  *(v11 + 56) = v21;
  v32[0] = 0x3D7961646F74;
  v32[1] = 0xE600000000000000;
  v22 = v1 + v14[6];
  v23 = sub_1E4709C1C();
  MEMORY[0x1E6915D10](v23);

  v24 = v32[1];
  *(v11 + 64) = v32[0];
  *(v11 + 72) = v24;
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_1E470B5CC();

  strcpy(v32, "longestStreak=");
  HIBYTE(v32[1]) = -18;
  sub_1E465E0B0(v1 + v14[7], v6, &qword_1ECF74C40, &unk_1E471C980);
  if (v16(v6, 1, v15) == 1)
  {
    sub_1E465E050(v6, &qword_1ECF74C40, &unk_1E471C980);
    v25 = 0xE300000000000000;
    v26 = 7104878;
  }

  else
  {
    v27 = ReadingHistory.Streak.description.getter();
    v25 = v28;
    sub_1E4697478(v6, type metadata accessor for ReadingHistory.Streak);
    v26 = v27;
  }

  MEMORY[0x1E6915D10](v26, v25);

  v29 = v32[1];
  *(v11 + 80) = v32[0];
  *(v11 + 88) = v29;
  v32[0] = v11;
  sub_1E4650534(&qword_1ECF74AA0, &qword_1E471C990);
  sub_1E45E2F14(&qword_1EE2ACD00, &qword_1ECF74AA0, &qword_1E471C990);
  v30 = sub_1E470AEDC();

  return v30;
}

uint64_t sub_1E4683CEC()
{
  v1 = v0;
  v2 = sub_1E470A5DC();
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v70 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1E470A61C();
  v69 = *(v71 - 8);
  v6 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71, v7);
  v68 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470A5EC();
  v66 = *(v9 - 8);
  v10 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v60 - v20;
  v22 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v62 = *(v22 - 8);
  v23 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8, v24);
  v64 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v60 - v28;
  v30 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v31 = v30 - 8;
  v32 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  sub_1E4697B6C(v1 + v36, v35, type metadata accessor for ReadingHistoryDataStore.State);
  v37 = *(v31 + 28);
  v74 = v35;
  sub_1E465E0B0(&v35[v37], v21, &qword_1ECF74C40, &unk_1E471C980);
  v38 = type metadata accessor for ReadingHistory.Streak(0);
  v39 = *(*(v38 - 8) + 48);
  v40 = v39(v21, 1, v38);
  v67 = v29;
  if (v40 == 1)
  {
    sub_1E465E050(v21, &qword_1ECF74C40, &unk_1E471C980);
    v41 = sub_1E4709CCC();
    (*(*(v41 - 8) + 56))(v29, 1, 1, v41);
  }

  else
  {
    v42 = sub_1E4709CCC();
    v43 = *(v42 - 8);
    v61 = v9;
    v44 = v43;
    (*(v43 + 16))(v29, v21, v42);
    sub_1E4697478(v21, type metadata accessor for ReadingHistory.Streak);
    (*(v44 + 56))(v29, 0, 1, v42);
    v9 = v61;
  }

  sub_1E465E0B0(&v74[v37], v17, &qword_1ECF74C40, &unk_1E471C980);
  if (v39(v17, 1, v38) == 1)
  {
    sub_1E465E050(v17, &qword_1ECF74C40, &unk_1E471C980);
    v45 = 0;
  }

  else
  {
    v45 = *&v17[*(v38 + 20)];
    sub_1E4697478(v17, type metadata accessor for ReadingHistory.Streak);
  }

  sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  v47 = v65;
  v46 = v66;
  (*(v66 + 104))(v65, *MEMORY[0x1E69E7F80], v9);
  v48 = sub_1E470B3AC();
  (*(v46 + 8))(v47, v9);
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = v67;
  v51 = v64;
  sub_1E465E0B0(v67, v64, &unk_1ECF74CD0, &qword_1E471B620);
  v52 = (*(v62 + 80) + 24) & ~*(v62 + 80);
  v53 = (v63 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = v49;
  sub_1E46574C0(v51, v54 + v52, &unk_1ECF74CD0, &qword_1E471B620);
  *(v54 + v53) = v45;
  aBlock[4] = sub_1E4697D0C;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E64E88;
  v55 = _Block_copy(aBlock);

  v56 = v68;
  sub_1E470A5FC();
  v75 = MEMORY[0x1E69E7CC0];
  sub_1E4698194(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  v57 = v70;
  v58 = v73;
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v56, v57, v55);
  _Block_release(v55);

  (*(v72 + 8))(v57, v58);
  (*(v69 + 8))(v56, v71);
  sub_1E465E050(v50, &unk_1ECF74CD0, &qword_1E471B620);
  sub_1E4697478(v74, type metadata accessor for ReadingHistoryDataStore.State);
}

void sub_1E468453C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v61 = a2;
  v3 = sub_1E4709D5C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4709D7C();
  v58 = *(v9 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v51 - v17;
  v19 = sub_1E4709CCC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v59 = &v51 - v27;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v57 = v9;
    v30 = v4;
    v31 = *(Strong + 112);
    sub_1E465E0B0(v61, v18, &unk_1ECF74CD0, &qword_1E471B620);
    if ((*(v20 + 48))(v18, 1, v19) == 1)
    {
      v32 = v31;
      sub_1E465E050(v18, &unk_1ECF74CD0, &qword_1E471B620);
      v33 = sub_1E470AF0C();
      [v32 removeObjectForKey_];

      v34 = &off_1E875C000;
      v35 = v60;
LABEL_9:
      v50 = sub_1E470AF0C();
      [v31 v34[54]];

      return;
    }

    v54 = v29;
    v36 = v59;
    (*(v20 + 32))(v59, v18, v19);
    v56 = v20;
    (*(v20 + 16))(v24, v36, v19);
    v53 = v31;
    v52 = v31;
    sub_1E4709CDC();
    v37 = *(v30 + 104);
    v37(v8, *MEMORY[0x1E6969A68], v3);
    v38 = sub_1E4709D6C();
    v39 = v30 + 8;
    v40 = *(v30 + 8);
    v40(v8, v3);
    v41 = *MEMORY[0x1E6969A78];
    v55 = v37;
    v37(v8, v41, v3);
    v42 = sub_1E4709D6C();
    v61 = v39;
    v40(v8, v3);
    v43 = 100 * v38;
    if ((v38 * 100) >> 64 == (100 * v38) >> 63)
    {
      v44 = v43 + v42;
      if (!__OFADD__(v43, v42))
      {
        v55(v8, *MEMORY[0x1E6969A48], v3);
        v45 = sub_1E4709D6C();
        v40(v8, v3);
        (*(v58 + 8))(v13, v57);
        v46 = *(v56 + 8);
        v46(v24, v19);
        v47 = 100 * v44;
        if ((v44 * 100) >> 64 == (100 * v44) >> 63)
        {
          v48 = v47 + v45;
          if (!__OFADD__(v47, v45))
          {
            v49 = sub_1E470AF0C();
            v34 = &off_1E875C000;
            [v52 setInteger:v48 forKey:v49];

            v46(v59, v19);
            v35 = v60;
            v31 = v53;
            goto LABEL_9;
          }

LABEL_14:
          __break(1u);
          return;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

uint64_t static ReadingHistoryDataStore.recalculationCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_1ECF74C30 = a1;
  return result;
}

uint64_t ReadingHistoryDataStore.__allocating_init(goals:modelProvider:transactionProvider:config:userDefaults:currentDate:)(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), unsigned __int8 *a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  swift_allocObject();
  v17 = sub_1E4696484(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();

  return v17;
}

uint64_t ReadingHistoryDataStore.init(goals:modelProvider:transactionProvider:config:userDefaults:currentDate:)(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), unsigned __int8 *a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v8 = sub_1E4696484(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_1E4684C74(__int128 *a1)
{
  v5 = *a1;
  v6 = a1[1];
  v1 = *(a1 + 4);
  v2 = *(a1 + 40);
  v3 = *(a1 + 41);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7[0] = v5;
    v7[1] = v6;
    v8 = v1;
    v9 = v2;
    v10 = v3;
    sub_1E4684D0C(v7);
  }

  return result;
}

uint64_t sub_1E4684D0C(_OWORD *a1)
{
  v2 = v1;
  v4 = sub_1E4650534(&qword_1ECF74DC0, &qword_1E471D8B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &aBlock - v7;
  v9 = sub_1E47099BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v15 = *(v2 + 144);
  v16 = swift_allocObject();
  v17 = a1[1];
  *(v16 + 16) = *a1;
  *(v16 + 32) = v17;
  *(v16 + 42) = *(a1 + 26);
  *(v16 + 64) = v2;
  *(v16 + 72) = &v27;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1E46982A0;
  *(v18 + 24) = v16;
  v25 = sub_1E467A478;
  v26 = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v24 = sub_1E46679F4;
  *(&v24 + 1) = &unk_1F5E652C0;
  v19 = _Block_copy(&aBlock);

  dispatch_sync(v15, v19);
  _Block_release(v19);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (v27 == 1)
    {
      sub_1E46982AC();
      aBlock = 0u;
      v24 = 0u;
      sub_1E4709E0C();
      sub_1E465E050(&aBlock, &unk_1ECF74DD0, &qword_1E471D8C0);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_1E465E050(v8, &qword_1ECF74DC0, &qword_1E471D8B8);
      }

      else
      {
        (*(v10 + 32))(v14, v8, v9);
        v21 = [objc_opt_self() defaultCenter];
        v22 = sub_1E470998C();
        [v21 postNotification_];

        (*(v10 + 8))(v14, v9);
      }
    }
  }

  return result;
}

uint64_t sub_1E468505C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E46850BC(a1);
  }

  return result;
}

uint64_t sub_1E46850BC(uint64_t a1)
{
  v3 = sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v8 = aBlock - v7;
  v9 = *(v1 + 144);
  sub_1E465E0B0(a1, aBlock - v7, &qword_1ECF74D90, &unk_1E471C8F0);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1E46574C0(v8, v11 + v10, &qword_1ECF74D90, &unk_1E471C8F0);
  *(v11 + ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1E46980FC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1E467A478;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46679F4;
  aBlock[3] = &unk_1F5E651D0;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v9, v13);
  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ReadingHistoryDataStore.observeSignificantDateChange(_:)(NSNotificationName a1)
{
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel__handleSignificantDateChange_ name:a1 object:0];
}

uint64_t sub_1E468535C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1E4709D7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4709CCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v33 - v17;
  sub_1E4709CDC();
  sub_1E4709BFC();
  (*(v4 + 8))(v8, v3);
  v19 = sub_1E46A3D04(a1, 1);
  if (!sub_1E46A3D04(v18, 1))
  {
    sub_1E470B2CC();
    if (qword_1EE2ADC90 == -1)
    {
LABEL_6:
      sub_1E470A0AC();
      (*(v10 + 8))(v18, v9);
      goto LABEL_13;
    }

LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  swift_beginAccess();
  if (__OFADD__(qword_1ECF74C30, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  ++qword_1ECF74C30;
  if (v19)
  {
    v20 = a1;
  }

  else
  {
    v20 = v18;
  }

  (*(v10 + 16))(v14, v20, v9);
  v21 = sub_1E46A4088(v14, 1);
  sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    swift_once();
  }

  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E471B800;
  v23 = sub_1E4709C1C();
  v25 = v24;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v26 = sub_1E4663DE4();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  v27 = MEMORY[0x1E69E65A8];
  *(v22 + 96) = MEMORY[0x1E69E6530];
  *(v22 + 104) = v27;
  *(v22 + 64) = v26;
  *(v22 + 72) = v21;
  sub_1E470A0AC();

  v28 = *(v10 + 8);
  v28(v18, v9);
  if (v21 >= 2)
  {
    v29 = v33;
    (*(v10 + 32))(v33, v14, v9);
    v30 = type metadata accessor for ReadingHistory.Streak(0);
    *(v29 + *(v30 + 20)) = v21;
    return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  }

  v28(v14, v9);
LABEL_13:
  v32 = type metadata accessor for ReadingHistory.Streak(0);
  return (*(*(v32 - 8) + 56))(v33, 1, 1, v32);
}

uint64_t sub_1E46857BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v130 = a2;
  v131 = a3;
  v121 = a1;
  v111 = a4;
  v133 = *MEMORY[0x1E69E9840];
  v4 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v108 = (&v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v112 = &v108 - v10;
  v120 = type metadata accessor for ReadingHistory.Streak(0);
  v117 = *(v120 - 8);
  v11 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v120, v12);
  v110 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4709D5C();
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E4709D7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E4709CCC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  v109 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = (&v108 - v33);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v108 - v37;
  sub_1E4709CDC();
  v122 = v38;
  v39 = v131;
  sub_1E4709BFC();
  v40 = *(v21 + 8);
  v126 = v21 + 8;
  v127 = v20;
  v125 = v40;
  v40(v25, v20);
  v132 = v27;
  v41 = *(v27 + 16);
  v129 = v26;
  v118 = v41;
  v119 = v27 + 16;
  v41(v34, v39, v26);
  sub_1E4709CDC();
  v42 = v15[13];
  v115 = *MEMORY[0x1E6969A68];
  v42(v19);
  v43 = sub_1E4709D6C();
  v46 = v15[1];
  v45 = (v15 + 1);
  v44 = v46;
  v46(v19, v14);
  v114 = *MEMORY[0x1E6969A78];
  v42(v19);
  v47 = sub_1E4709D6C();
  v128 = v45;
  v46(v19, v14);
  v49 = 100 * v43;
  if ((v43 * 100) >> 64 != (100 * v43) >> 63)
  {
    __break(1u);
    goto LABEL_65;
  }

  v50 = __OFADD__(v49, v47);
  v51 = v49 + v47;
  if (v50)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v124 = v51;
  v113 = *MEMORY[0x1E6969A48];
  v42(v19);
  v123 = sub_1E4709D6C();
  v44(v19, v14);
  v125(v25, v127);
  v52 = *(v132 + 8);
  v53 = v129;
  v132 += 8;
  v116 = v52;
  v52(v34, v129);
  v118(v34, v122, v53);
  sub_1E4709CDC();
  (v42)(v19, v115, v14);
  v45 = sub_1E4709D6C();
  v44(v19, v14);
  (v42)(v19, v114, v14);
  v47 = sub_1E4709D6C();
  v44(v19, v14);
  v54 = 100 * v45;
  if ((v45 * 100) >> 64 != (100 * v45) >> 63)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v50 = __OFADD__(v54, v47);
  v55 = v54 + v47;
  if (v50)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v56 = v55;
  (v42)(v19, v113, v14);
  v45 = sub_1E4709D6C();
  v44(v19, v14);
  v125(v25, v127);
  v19 = v129;
  v44 = v116;
  v116(v34, v129);
  v25 = sub_1E46A48B8(v130);
  v34 = &v108;
  MEMORY[0x1EEE9AC00](v25, v57);
  v59 = v123;
  *(&v108 - 4) = v124;
  *(&v108 - 3) = v59;
  v42 = v56;
  *(&v108 - 2) = v56;
  *(&v108 - 1) = v45;
  v60 = *(v58 + 32);
  v47 = ((1 << v60) + 63) >> 6;
  v48 = 8 * v47;
  if ((v60 & 0x3Fu) <= 0xD)
  {
    goto LABEL_6;
  }

LABEL_68:
  v104 = v48;

  if (swift_stdlib_isStackAllocationSafe())
  {

    v48 = v104;
LABEL_6:
    MEMORY[0x1EEE9AC00](v58, v48);
    v62 = &v108 - ((v61 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v62, v61);
    v63 = 0;
    v64 = 0;
    v65 = 1 << *(v25 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & *(v25 + 56);
    v68 = (v65 + 63) >> 6;
    v69 = v131;
    v71 = v123;
    v70 = v124;
    while (v67)
    {
      v72 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
      v73 = v72 | (v64 << 6);
LABEL_16:
      v76 = (*(v25 + 48) + 16 * v73);
      v77 = *v76;
      v78 = v76[1];
      if ((v77 != v70 || v78 != v71) && (v77 != v42 || v78 != v45))
      {
        *&v62[(v73 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v73;
        v50 = __OFADD__(v63++, 1);
        if (v50)
        {
          __break(1u);
LABEL_27:
          v81 = sub_1E46E4EC4(v62, v47, v63, v25);
          goto LABEL_28;
        }
      }
    }

    v74 = v64;
    while (1)
    {
      v64 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v64 >= v68)
      {
        goto LABEL_27;
      }

      v75 = *(v25 + 56 + 8 * v64);
      ++v74;
      if (v75)
      {
        v67 = (v75 - 1) & v75;
        v73 = __clz(__rbit64(v75)) | (v64 << 6);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v105 = swift_slowAlloc();
  v106 = sub_1E4694524(v105, v47, v25, sub_1E4697DA8);

  v107 = v105;
  v44 = v116;
  MEMORY[0x1E6917530](v107, -1, -1);
  v81 = v106;
  v69 = v131;
LABEL_28:
  v82 = *(v81 + 16);

  v83 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v84 = v112;
  sub_1E465E0B0(v121 + *(v83 + 20), v112, &qword_1ECF74C40, &unk_1E471C980);
  v85 = (*(v117 + 48))(v84, 1, v120);
  v45 = v122;
  if (v85 != 1)
  {
    v86 = v84;
    v87 = v110;
    sub_1E4697DD8(v86, v110, type metadata accessor for ReadingHistory.Streak);
    if (v82)
    {
      sub_1E4697478(v87, type metadata accessor for ReadingHistory.Streak);
      goto LABEL_32;
    }

    v90 = v109;
    v118(v109, v87, v19);
    v91 = *(v87 + *(v120 + 20));
    LOBYTE(v25) = sub_1E46A3D04(v69, 1);
    v92 = sub_1E46A3D04(v45, 1);
    if (sub_1E4709C8C())
    {
      v34 = v108;
      if (v25)
      {
        v93 = v110;
        sub_1E4697B6C(v110, v108, type metadata accessor for ReadingHistory.Streak);
        (*(v117 + 56))(v34, 0, 1, v120);
        sub_1E470B29C();
        if (qword_1EE2ADC90 != -1)
        {
          swift_once();
        }

        sub_1E470A0AC();
        v44(v109, v19);
        sub_1E4697478(v93, type metadata accessor for ReadingHistory.Streak);
        v44(v45, v19);
        goto LABEL_59;
      }

      if (v91 < 2)
      {
        (*(v117 + 56))(v108, 1, 1, v120);
        sub_1E470B29C();
        if (qword_1EE2ADC90 == -1)
        {
LABEL_56:
          sub_1E470A0AC();
          v44(v109, v19);
          sub_1E4697478(v110, type metadata accessor for ReadingHistory.Streak);
          v44(v45, v19);
LABEL_59:
          result = sub_1E46574C0(v34, v111, &qword_1ECF74C40, &unk_1E471C980);
          goto LABEL_33;
        }
      }

      else
      {
        v118(v108, v45, v19);
        *(v34 + *(v120 + 20)) = v91 - 1;
        (*(v117 + 56))(v34, 0, 1);
        sub_1E470B29C();
        if (qword_1EE2ADC90 == -1)
        {
          goto LABEL_56;
        }
      }

LABEL_72:
      swift_once();
      goto LABEL_56;
    }

    v94 = sub_1E4709C8C();
    v34 = v108;
    if (v94)
    {
      if (v25)
      {
        v118(v108, v69, v19);
        v95 = v91 + 1;
        if (!__OFADD__(v91, 1))
        {
          *(v34 + *(v120 + 20)) = v95;
          (*(v117 + 56))(v34, 0, 1);
          sub_1E470B2CC();
          if (qword_1EE2ADC90 != -1)
          {
            swift_once();
          }

          sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
          v96 = swift_allocObject();
          *(v96 + 16) = xmmword_1E471B800;
          v97 = sub_1E4709C1C();
          v99 = v98;
          *(v96 + 56) = MEMORY[0x1E69E6158];
          v100 = sub_1E4663DE4();
          *(v96 + 32) = v97;
          *(v96 + 40) = v99;
          v101 = MEMORY[0x1E69E65A8];
          *(v96 + 96) = MEMORY[0x1E69E6530];
          *(v96 + 104) = v101;
          *(v96 + 64) = v100;
          *(v96 + 72) = v95;
          sub_1E470A0AC();

          v102 = v116;
          v116(v109, v19);
          sub_1E4697478(v110, type metadata accessor for ReadingHistory.Streak);
          v102(v45, v19);
          goto LABEL_59;
        }

        __break(1u);
        goto LABEL_72;
      }

      v118(v108, v45, v19);
      *(v34 + *(v120 + 20)) = v91;
      (*(v117 + 56))(v34, 0, 1);
      sub_1E470B29C();
      if (qword_1EE2ADC90 != -1)
      {
        swift_once();
      }

      sub_1E470A0AC();
    }

    else
    {
      if ((sub_1E4709C7C() & 1) == 0)
      {
        sub_1E468535C(v69, v34);
        v103 = v90;
        goto LABEL_58;
      }

      if (!v92)
      {
LABEL_61:
        v44(v109, v19);
        sub_1E4697478(v110, type metadata accessor for ReadingHistory.Streak);
        v44(v45, v19);
        if (v25)
        {
          v118(v34, v69, v19);
          *(v34 + *(v120 + 20)) = 1;
          (*(v117 + 56))(v34, 0, 1);
        }

        else
        {
          (*(v117 + 56))(v34, 1, 1, v120);
        }

        goto LABEL_59;
      }

      sub_1E468535C(v69, v34);
    }

    v103 = v109;
LABEL_58:
    v44(v103, v19);
    sub_1E4697478(v110, type metadata accessor for ReadingHistory.Streak);
    v44(v45, v19);
    goto LABEL_59;
  }

  sub_1E465E050(v84, &qword_1ECF74C40, &unk_1E471C980);
LABEL_32:
  sub_1E468535C(v69, v111);
  result = (v44)(v45, v19);
LABEL_33:
  v89 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1E4686820(uint64_t a1)
{
  v2 = v1;
  v176 = *v2;
  v169 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  v172 = *(v169 - 8);
  v4 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v169, v5);
  v168 = &v155 - v6;
  v7 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v167 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v170 = &v155 - v13;
  v14 = sub_1E4650534(&qword_1ECF74D70, &unk_1E471DBD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v184 = &v155 - v17;
  v18 = sub_1E4650534(&qword_1ECF74D78, &unk_1E471D870);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v183 = &v155 - v21;
  v182 = sub_1E4709A3C();
  v171 = *(v182 - 8);
  v22 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v182, v23);
  v181 = &v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8, v27);
  v193 = &v155 - v28;
  v191 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v29 = *(*(v191 - 8) + 64);
  MEMORY[0x1EEE9AC00](v191, v30);
  v185 = &v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_1E4709D5C();
  v178 = *(v179 - 1);
  v32 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v179, v33);
  v188 = &v155 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1E4709D7C();
  v177 = *(v189 - 8);
  v35 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v189, v36);
  v195 = &v155 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_1E4709CCC();
  v192 = *(v196 - 8);
  v38 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v196, v39);
  v180 = &v155 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v187 = &v155 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v194 = &v155 - v46;
  v47 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8, v49);
  v175 = &v155 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v190 = &v155 - v53;
  v54 = sub_1E4650534(&qword_1ECF74DA8, &qword_1E471D8A8);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8, v56);
  v58 = &v155 - v57;
  v59 = sub_1E4650534(&qword_1ECF74DB0, &qword_1E471D8B0);
  v186 = *(v59 - 8);
  v60 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v59, v61);
  v173 = &v155 - v62;
  v63 = type metadata accessor for ReadingHistoryModel(0);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63, v65);
  v67 = &v155 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68, v69);
  v71 = &v155 - v70;
  MEMORY[0x1EEE9AC00](v72, v73);
  v75 = &v155 - v74;
  v76 = v2;
  v77 = (v2 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state);
  swift_beginAccess();
  sub_1E4697B6C(v77, v75, type metadata accessor for ReadingHistoryModel);
  sub_1E4698194(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);
  v78 = a1;
  LOBYTE(a1) = sub_1E470A8AC();
  v174 = v75;
  result = sub_1E4697478(v75, type metadata accessor for ReadingHistoryModel);
  if ((a1 & 1) == 0)
  {
    return result;
  }

  v165 = v76;
  v166 = v77;
  sub_1E4697B6C(v77, v71, type metadata accessor for ReadingHistoryModel);
  sub_1E4698194(&qword_1EE2ADA90, type metadata accessor for ReadingHistoryModel);
  v164 = v78;
  sub_1E470ABDC();
  v80 = *(v63 + 20);
  sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  sub_1E45E2F14(&qword_1ECF74DB8, &unk_1ECF74CF0, &qword_1E471D828);
  sub_1E470AC1C();
  v81 = v186;
  if ((*(v186 + 48))(v58, 1, v59) == 1)
  {
    sub_1E465E050(v58, &qword_1ECF74DA8, &qword_1E471D8A8);
    v159 = 0;
  }

  else
  {
    v82 = v173;
    (*(v81 + 32))(v173, v58, v59);
    v83 = sub_1E470AA5C();
    MEMORY[0x1EEE9AC00](v83, v84);
    v153 = v71;
    v154 = v67;
    sub_1E46777E0(sub_1E4698284, &v151, v83);
    v159 = 0;

    (*(v81 + 8))(v82, v59);
  }

  v85 = v196;
  v86 = v191;
  v87 = v192;
  v88 = v166;
  v89 = v190;
  sub_1E465E0B0(v166 + *(v191 + 20), v190, &qword_1ECF74C40, &unk_1E471C980);
  v90 = *(v87 + 16);
  v91 = v88 + v86[6];
  v92 = v194;
  v90(v194, v91, v85);
  v93 = sub_1E46A48B8(v67);
  if (!*(v93 + 16))
  {

    v149 = v90;
    v150 = v185;
    sub_1E4697B6C(v67, v185, type metadata accessor for ReadingHistoryModel);
    sub_1E465E0B0(v89, v150 + v86[5], &qword_1ECF74C40, &unk_1E471C980);
    v149(v150 + v86[6], v92, v85);
    sub_1E46A38A8(v92, (v150 + v86[7]));
    sub_1E4689F54(v150, v164, 0x656772656DLL, 0xE500000000000000);
    sub_1E4697478(v150, type metadata accessor for ReadingHistoryDataStore.State);
    (*(v87 + 8))(v92, v85);
    goto LABEL_43;
  }

  v162 = v93;
  v163 = v71;
  v173 = v67;
  v161 = v87 + 16;
  v160 = v90;
  v90(v187, v92, v85);
  sub_1E4709CDC();
  v94 = v178;
  v95 = *(v178 + 104);
  v96 = v188;
  v97 = v179;
  v95(v188, *MEMORY[0x1E6969A68], v179);
  v98 = sub_1E4709D6C();
  v99 = *(v94 + 8);
  v99(v96, v97);
  v95(v96, *MEMORY[0x1E6969A78], v97);
  v100 = sub_1E4709D6C();
  v99(v96, v97);
  v101 = 100 * v98;
  if ((v98 * 100) >> 64 != (100 * v98) >> 63)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
    goto LABEL_40;
  }

  v102 = __OFADD__(v101, v100);
  v103 = v101 + v100;
  if (v102)
  {
    goto LABEL_49;
  }

  v104 = v188;
  v95(v188, *MEMORY[0x1E6969A48], v97);
  v105 = v187;
  v106 = v195;
  v107 = sub_1E4709D6C();
  v99(v104, v97);
  v108 = v177;
  v109 = *(v177 + 8);
  v186 = v177 + 8;
  v179 = v109;
  (v109)(v106, v189);
  v110 = v192;
  v111 = v105;
  v112 = v196;
  v187 = *(v192 + 8);
  v188 = (v192 + 8);
  (v187)(v111, v196);
  v96 = v162;
  if (*(v162 + 16) == 1 && (sub_1E46F4454(v103, v107, v162) & 1) != 0)
  {

    sub_1E470B29C();
    if (qword_1EE2ADC90 != -1)
    {
      swift_once();
    }

    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_1E471BA00;
    v114 = v194;
    v115 = sub_1E4709C1C();
    v117 = v116;
    *(v113 + 56) = MEMORY[0x1E69E6158];
    *(v113 + 64) = sub_1E4663DE4();
    *(v113 + 32) = v115;
    *(v113 + 40) = v117;
    sub_1E470A0AC();

    v118 = v185;
    sub_1E4697B6C(v166, v185, type metadata accessor for ReadingHistoryDataStore.State);
    v119 = v175;
    v67 = v173;
    sub_1E46857BC(v118, v173, v114, v175);
    sub_1E4697478(v118, type metadata accessor for ReadingHistoryDataStore.State);
    v89 = v190;
    sub_1E465E050(v190, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E46574C0(v119, v89, &qword_1ECF74C40, &unk_1E471C980);
    v120 = v174;
    sub_1E4688298(v67, v89, v174);
    v121 = v191;
    goto LABEL_41;
  }

  v122 = 1 << *(v96 + 32);
  v123 = -1;
  if (v122 < 64)
  {
    v123 = ~(-1 << v122);
  }

  v124 = v123 & *(v96 + 56);
  v125 = (v122 + 63) >> 6;
  v178 = v108 + 56;
  v177 = v171 + 8;
  v171 = v110 + 48;
  v166 = (v110 + 32);
  v158 = (v172 + 16);
  v172 += 8;
  v192 = v110 + 56;

  v126 = 0;
LABEL_16:
  v127 = v193;
  while (v124)
  {
LABEL_22:
    v129 = (*(v96 + 48) + ((v126 << 10) | (16 * __clz(__rbit64(v124)))));
    v130 = 100 * *v129;
    if ((*v129 * 100) >> 64 != v130 >> 63)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v131 = v129[1];
    if (__OFADD__(v130, v131))
    {
      goto LABEL_47;
    }

    v124 &= v124 - 1;
    if (v130 + v131 <= 9999)
    {
      (*v192)(v127, 1, 1, v112);
      goto LABEL_27;
    }

    v132 = v189;
    (*v178)(v183, 1, 1, v189);
    v133 = sub_1E4709D8C();
    (*(*(v133 - 8) + 56))(v184, 1, 1, v133);
    LOBYTE(v154) = 1;
    v153 = 0;
    v152 = 1;
    v151 = 0;
    v134 = v181;
    v127 = v193;
    sub_1E4709A2C();
    v135 = v195;
    sub_1E4709CDC();
    sub_1E4709D1C();
    v136 = v132;
    v137 = v180;
    (v179)(v135, v136);
    (*v177)(v134, v182);
    if ((*v171)(v127, 1, v112) == 1)
    {
LABEL_27:
      sub_1E465E050(v127, &unk_1ECF74CD0, &qword_1E471B620);
    }

    else
    {
      (*v166)(v137, v127, v112);
      if (sub_1E4709C7C())
      {
        v138 = v170;
        ReadingHistoryModel.readingHistoryDay(for:)(v170);
        v139 = type metadata accessor for ReadingHistoryDay(0);
        v157 = *(*(v139 - 8) + 48);
        if (v157(v138, 1, v139) == 1)
        {
          sub_1E465E050(v138, &qword_1ECF74200, &qword_1E471AF80);
          v156 = 0;
        }

        else
        {
          v140 = v138 + *(v139 + 20);
          v141 = v168;
          v142 = v169;
          (*v158)(v168, v140, v169);
          sub_1E4697478(v170, type metadata accessor for ReadingHistoryDay);
          sub_1E470A62C();
          (*v172)(v141, v142);
          v156 = v197;
        }

        v143 = v167;
        ReadingHistoryModel.readingHistoryDay(for:)(v167);
        if (v157(v143, 1, v139) == 1)
        {
          sub_1E465E050(v143, &qword_1ECF74200, &qword_1E471AF80);
          v112 = v196;
        }

        else
        {
          v144 = v143 + *(v139 + 20);
          v145 = v168;
          v146 = v169;
          (*v158)(v168, v144, v169);
          sub_1E4697478(v143, type metadata accessor for ReadingHistoryDay);
          sub_1E470A62C();
          (*v172)(v145, v146);
          v112 = v196;
          if (v156 >= 1 && v156 < v197)
          {
            ReadingHistoryModel.setGoal(_:date:)(v156, v137);
          }
        }

        (v187)(v137, v112);
        goto LABEL_16;
      }

      (v187)(v137, v112);
    }
  }

  while (1)
  {
    v128 = v126 + 1;
    if (__OFADD__(v126, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v128 >= v125)
    {
      break;
    }

    v124 = *(v96 + 56 + 8 * v128);
    ++v126;
    if (v124)
    {
      v126 = v128;
      goto LABEL_22;
    }
  }

  sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    goto LABEL_50;
  }

LABEL_40:
  sub_1E470A0AC();
  v147 = v175;
  v67 = v173;
  v114 = v194;
  sub_1E468535C(v194, v175);
  v89 = v190;
  sub_1E465E050(v190, &qword_1ECF74C40, &unk_1E471C980);
  sub_1E46574C0(v147, v89, &qword_1ECF74C40, &unk_1E471C980);
  sub_1E46887F0(v67, v96, v147);

  v120 = v174;
  sub_1E4688298(v67, v147, v174);
  sub_1E465E050(v147, &qword_1ECF74C40, &unk_1E471C980);
  v118 = v185;
  v121 = v191;
LABEL_41:
  sub_1E4698220(v120, v67);
  sub_1E4697B6C(v67, v118, type metadata accessor for ReadingHistoryModel);
  sub_1E465E0B0(v89, v118 + v121[5], &qword_1ECF74C40, &unk_1E471C980);
  v148 = v196;
  v160(v118 + v121[6], v114, v196);
  sub_1E46A38A8(v114, (v118 + v121[7]));
  sub_1E4689F54(v118, v164, 0x656772656DLL, 0xE500000000000000);
  sub_1E4697478(v118, type metadata accessor for ReadingHistoryDataStore.State);
  (v187)(v114, v148);
  v71 = v163;
LABEL_43:
  sub_1E465E050(v89, &qword_1ECF74C40, &unk_1E471C980);
  sub_1E4697478(v67, type metadata accessor for ReadingHistoryModel);
  return sub_1E4697478(v71, type metadata accessor for ReadingHistoryModel);
}

uint64_t sub_1E4687ED0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v45 = a3;
  v5 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v42 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v44 = v38 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v38 - v14;
  v16 = sub_1E4709CCC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v43 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v46 = v38 - v23;
  v24 = *a1;
  v25 = type metadata accessor for ReadingHistoryModel(0);
  v26 = *(v25 + 20);
  v47 = v24;
  v27 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  sub_1E470AB0C();
  v28 = v17;
  v29 = *(v17 + 48);
  if (v29(v15, 1, v16) == 1)
  {
    return sub_1E465E050(v15, &unk_1ECF74CD0, &qword_1E471B620);
  }

  v41 = v3;
  v40 = *(v28 + 32);
  v40(v46, v15, v16);
  v31 = *(v25 + 20);
  v38[1] = v27;
  v39 = v24;
  v47 = v24;
  v32 = v44;
  v38[0] = v31;
  sub_1E470AB0C();
  if (v29(v32, 1, v16) == 1)
  {
    (*(v28 + 8))(v46, v16);
    return sub_1E465E050(v32, &unk_1ECF74CD0, &qword_1E471B620);
  }

  else
  {
    v33 = v43;
    v40(v43, v32, v16);
    if (sub_1E4709C7C())
    {
      v34 = v42;
      v35 = v46;
      (*(v28 + 16))(v42, v46, v16);
      (*(v28 + 56))(v34, 0, 1, v16);
      v47 = v39;
      sub_1E470AB1C();
      v36 = *(v28 + 8);
      v36(v33, v16);
      return (v36)(v35, v16);
    }

    else
    {
      v37 = *(v28 + 8);
      v37(v33, v16);
      return (v37)(v46, v16);
    }
  }
}

uint64_t sub_1E4688298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v51 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v49 - v11;
  v13 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v49 - v20;
  v22 = type metadata accessor for ReadingHistory.Streak(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E465E0B0(a2, v21, &qword_1ECF74C40, &unk_1E471C980);
  v28 = *(v23 + 48);
  if (v28(v21, 1, v22) == 1)
  {
    v29 = &qword_1ECF74C40;
    v30 = &unk_1E471C980;
    v31 = v21;
LABEL_12:
    sub_1E465E050(v31, v29, v30);
    return sub_1E4697B6C(a1, v52, type metadata accessor for ReadingHistoryModel);
  }

  sub_1E4697DD8(v21, v27, type metadata accessor for ReadingHistory.Streak);
  v32 = *&v27[*(v22 + 20)];
  sub_1E46A38A8(v27, v17);
  if (v28(v17, 1, v22) == 1)
  {
    sub_1E465E050(v17, &qword_1ECF74C40, &unk_1E471C980);
    if (v32 >= 1)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1E4697478(v27, type metadata accessor for ReadingHistory.Streak);
    return sub_1E4697B6C(a1, v52, type metadata accessor for ReadingHistoryModel);
  }

  v48 = *&v17[*(v22 + 20)];
  sub_1E4697478(v17, type metadata accessor for ReadingHistory.Streak);
  if (v48 >= v32)
  {
    goto LABEL_10;
  }

LABEL_5:
  v33 = type metadata accessor for ReadingHistoryModel(0);
  v34 = *(v33 + 20);
  v53 = v32;
  v35 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  sub_1E470AB0C();
  v36 = sub_1E4709CCC();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v12, 1, v36) != 1)
  {
    sub_1E4697478(v27, type metadata accessor for ReadingHistory.Streak);
    v29 = &unk_1ECF74CD0;
    v30 = &qword_1E471B620;
    v31 = v12;
    goto LABEL_12;
  }

  v50 = v35;
  sub_1E465E050(v12, &unk_1ECF74CD0, &qword_1E471B620);
  v49[3] = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    swift_once();
  }

  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v38 = swift_allocObject();
  v39 = MEMORY[0x1E69E6530];
  *(v38 + 16) = xmmword_1E471B800;
  v40 = MEMORY[0x1E69E65A8];
  *(v38 + 56) = v39;
  *(v38 + 64) = v40;
  *(v38 + 32) = v32;
  v41 = sub_1E4709C1C();
  v43 = v42;
  *(v38 + 96) = MEMORY[0x1E69E6158];
  *(v38 + 104) = sub_1E4663DE4();
  *(v38 + 72) = v41;
  *(v38 + 80) = v43;
  sub_1E470A0AC();

  v44 = v52;
  sub_1E4697B6C(a1, v52, type metadata accessor for ReadingHistoryModel);
  v45 = v51;
  (*(v37 + 16))(v51, v27, v36);
  (*(v37 + 56))(v45, 0, 1, v36);
  v53 = v32;
  v46 = v44 + *(v33 + 20);
  sub_1E470AB1C();
  return sub_1E4697478(v27, type metadata accessor for ReadingHistory.Streak);
}

uint64_t sub_1E46887F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v172 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v180 = *(v172 - 8);
  v6 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v172, v7);
  v171 = v158 - v8;
  v9 = type metadata accessor for ReadingHistoryMonth(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v170 = v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v201 = v158 - v16;
  v17 = sub_1E4650534(&qword_1ECF74D68, &unk_1E471D860);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v169 = v158 - v20;
  v189 = sub_1E4709D5C();
  v179 = *(v189 - 8);
  v21 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v189, v22);
  v188 = v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v187 = v158 - v27;
  v28 = type metadata accessor for ReadingHistoryDay(0);
  v177 = *(v28 - 8);
  v29 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v28, v30);
  v186 = v158 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8, v34);
  v162 = v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v166 = v158 - v38;
  v39 = sub_1E4709D7C();
  v205 = *(v39 - 8);
  v40 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v39, v41);
  v202 = v158 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v204 = v158 - v45;
  v46 = sub_1E4650534(&qword_1ECF74D70, &unk_1E471DBD0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8, v48);
  v206 = v158 - v49;
  v50 = sub_1E4650534(&qword_1ECF74D78, &unk_1E471D870);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8, v52);
  v200 = v158 - v53;
  v199 = sub_1E4709A3C();
  v54 = *(v199 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v199, v56);
  v198 = v158 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58 - 8, v60);
  v62 = v158 - v61;
  v208 = sub_1E4709CCC();
  v173 = *(v208 - 8);
  v63 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v208, v64);
  v66 = v158 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67, v68);
  v193 = v158 - v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  v191 = v158 - v72;
  MEMORY[0x1EEE9AC00](v73, v74);
  v165 = v158 - v75;
  MEMORY[0x1EEE9AC00](v76, v77);
  v197 = v158 - v78;
  v190 = a1;
  v210 = a1;

  v79 = sub_1E4694150(sub_1E4697EDC, v209, a2);
  v80 = v79;
  v81 = *(v79 + 16);
  if (!v81)
  {
    goto LABEL_4;
  }

  v82 = sub_1E46B7AB4(*(v79 + 16), 0);
  v207 = sub_1E46B86B0(v211, v82 + 2, v81, v80);
  v203 = v211[0];
  v196 = v211[1];
  v195 = v211[2];
  v194 = v211[3];
  v192 = v211[4];

  sub_1E45E781C();
  if (v207 != v81)
  {
    __break(1u);
LABEL_4:
    v82 = MEMORY[0x1E69E7CC0];
  }

  v211[0] = v82;
  sub_1E469383C(v211);
  v203 = v66;
  v185 = v28;
  v164 = a3;

  v83 = *(v211[0] + 2);
  v194 = v39;
  v181 = v211[0];
  if (v83)
  {
    v195 = (v205 + 56);
    v192 = (v205 + 8);
    v184 = (v54 + 8);
    v183 = (v173 + 48);
    v196 = (v173 + 32);
    v182 = (v173 + 56);
    i = v211[0] + 40;
    v207 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v85 = *(i - 1);
      v86 = 100 * v85;
      if ((v85 * 100) >> 64 != (100 * v85) >> 63)
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);

        __break(1u);
        return result;
      }

      if (__OFADD__(v86, *i))
      {
        goto LABEL_53;
      }

      if (v86 + *i <= 9999)
      {
        (*v182)(v62, 1, 1, v208);
      }

      else
      {
        (*v195)(v200, 1, 1, v39);
        v87 = sub_1E4709D8C();
        (*(*(v87 - 8) + 56))(v206, 1, 1, v87);
        v88 = v198;
        sub_1E4709A2C();
        v89 = v204;
        sub_1E4709CDC();
        sub_1E4709D1C();
        (*v192)(v89, v39);
        (*v184)(v88, v199);
        v90 = v208;
        if ((*v183)(v62, 1, v208) != 1)
        {
          v91 = *v196;
          (*v196)(v197, v62, v90);
          v92 = v207;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = sub_1E4693E1C(0, v92[2] + 1, 1, v92, &qword_1ECF74C00, &unk_1E471D880, MEMORY[0x1E6969530]);
          }

          v94 = v92[2];
          v93 = v92[3];
          v207 = v92;
          if (v94 >= v93 >> 1)
          {
            v207 = sub_1E4693E1C(v93 > 1, v94 + 1, 1, v207, &qword_1ECF74C00, &unk_1E471D880, MEMORY[0x1E6969530]);
          }

          v95 = v207;
          v207[2] = v94 + 1;
          v91(&v95[((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v94], v197, v208);
          v39 = v194;
          goto LABEL_9;
        }
      }

      sub_1E465E050(v62, &unk_1ECF74CD0, &qword_1E471B620);
LABEL_9:
      i += 16;
      if (!--v83)
      {
        goto LABEL_20;
      }
    }
  }

  v207 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v96 = v207[2];
  if (!v96)
  {
    v157 = type metadata accessor for ReadingHistory.Streak(0);
    (*(*(v157 - 8) + 56))(v164, 1, 1, v157);
  }

  v97 = v173;
  v98 = v207 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
  v99 = *(v173 + 16);
  v198 = (v173 + 16);
  v199 = v98;
  v197 = v99;
  (v99)(v165);
  v100 = v204;
  sub_1E4709CDC();
  v101 = v191;
  sub_1E4709BFC();
  v102 = sub_1E46A4088(v101, 1);
  v192 = *(v97 + 8);
  (v192)(v101, v208);
  v103 = v205 + 8;
  v104 = *(v205 + 8);
  v104(v100, v39);
  sub_1E4709CDC();
  sub_1E4709BFC();
  v105 = v208;
  v205 = v103;
  v200 = v104;
  v104(v100, v39);
  v106 = type metadata accessor for ReadingHistory.Streak(0);
  v107 = *(v106 - 8);
  v108 = *(v107 + 56);
  v109 = v107 + 56;
  v163 = v106;
  v159 = v108;
  v108(v166, 1, 1);
  v110 = 0;
  v206 = (v97 + 8);
  v184 = (v97 + 32);
  v183 = (v179 + 104);
  v182 = (v179 + 8);
  v168 = (v180 + 16);
  LODWORD(v181) = *MEMORY[0x1E6969A68];
  v167 = (v180 + 8);
  v178 = (v177 + 56);
  LODWORD(v180) = *MEMORY[0x1E6969A78];
  v177 += 48;
  v158[1] = v109;
  v161 = (v109 - 8);
  LODWORD(v179) = *MEMORY[0x1E6969A48];
  v196 = v96;
  v160 = v96 - 1;
LABEL_22:
  v111 = v110;
  i = v193;
  v112 = v192;
  do
  {
    if (v111 >= v207[2])
    {
      goto LABEL_54;
    }

    v113 = v111 + 1;
    v114 = v203;
    (v197)(v203, v199 + *(v97 + 72) * v111, v105);
    if (sub_1E4709C6C())
    {
      v115 = i;
      i = v204;
      sub_1E4709CDC();
      v116 = v191;
      sub_1E4709C0C();
      v117 = v208;
      (v200)(i, v39);
      (v112)(v115, v117);
      v174 = *v184;
      (v174)(v115, v116, v117);
      if (__OFADD__(v102, 1))
      {
        goto LABEL_58;
      }

      v195 = (v102 + 1);
      v175 = v111;
      v176 = v111 + 1;
      for (i = v193; ; (v174)(i, v150, v151))
      {
        sub_1E4709CDC();
        v118 = *v183;
        v119 = v188;
        v120 = v189;
        (*v183)(v188, v181, v189);
        v121 = sub_1E4709D6C();
        v122 = *v182;
        (*v182)(v119, v120);
        v118(v119, v180, v120);
        v123 = sub_1E4709D6C();
        (v122)(v119, v120);
        v118(v119, v179, v120);
        v124 = sub_1E4709D6C();
        (v122)(v119, v120);
        v125 = 100 * v121;
        if ((v121 * 100) >> 64 != (100 * v121) >> 63)
        {
          goto LABEL_55;
        }

        v126 = __OFADD__(v125, v123);
        v127 = (v125 + v123);
        v128 = v187;
        if (v126)
        {
          goto LABEL_56;
        }

        v211[0] = v127;
        sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
        v129 = v201;
        sub_1E470AB0C();
        v130 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
        v131 = *(v130 - 8);
        if ((*(v131 + 48))(v129, 1, v130) == 1)
        {
          v39 = v194;
          (v200)(v202, v194);
          sub_1E465E050(v201, &unk_1ECF74D30, &unk_1E471DB90);
          v132 = 1;
          v133 = v185;
          v110 = v176;
          i = v175;
        }

        else
        {
          v134 = v201;
          v135 = v170;
          MEMORY[0x1E69159F0](v130);
          (*(v131 + 8))(v134, v130);
          v136 = v171;
          v137 = v172;
          (*v168)(v171, v135, v172);
          sub_1E4697478(v135, type metadata accessor for ReadingHistoryMonth);
          v211[0] = v124;
          v138 = v169;
          sub_1E470AB0C();
          (*v167)(v136, v137);
          v139 = sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
          v140 = *(v139 - 8);
          v141 = (*(v140 + 48))(v138, 1, v139);
          v110 = v176;
          i = v175;
          if (v141 == 1)
          {
            v39 = v194;
            (v200)(v202, v194);
            sub_1E465E050(v138, &qword_1ECF74D68, &unk_1E471D860);
            v132 = 1;
          }

          else
          {
            MEMORY[0x1E69159F0](v139);
            v39 = v194;
            (v200)(v202, v194);
            (*(v140 + 8))(v138, v139);
            v132 = 0;
          }

          v133 = v185;
        }

        (*v178)(v128, v132, 1, v133);
        v142 = (*v177)(v128, 1, v133);
        v143 = v186;
        v144 = v195;
        if (v142 == 1)
        {
          sub_1E465E050(v128, &qword_1ECF74200, &qword_1E471AF80);
          goto LABEL_43;
        }

        sub_1E4697DD8(v128, v186, type metadata accessor for ReadingHistoryDay);
        v145 = sub_1E470AD8C();
        v146 = *(v133 + 20);
        sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
        sub_1E470A62C();
        if (v145 < v211[0])
        {
          break;
        }

        v126 = __OFADD__(v144, 1);
        v147 = (v144 + 1);
        v148 = v192;
        if (v126)
        {
          goto LABEL_57;
        }

        v195 = v147;
        v149 = v204;
        sub_1E4709CDC();
        v150 = v191;
        i = v193;
        sub_1E4709C0C();
        (v200)(v149, v39);
        sub_1E4697478(v143, type metadata accessor for ReadingHistoryDay);
        v151 = v208;
        (v148)(i, v208);
      }

      sub_1E4697478(v143, type metadata accessor for ReadingHistoryDay);
LABEL_43:
      v152 = v166;
      v153 = v163;
      if ((*v161)(v166, 1, v163))
      {
        if (v144 >= 1)
        {
LABEL_45:
          v154 = v204;
          sub_1E4709CDC();
          v155 = v162;
          sub_1E4709BFC();
          (v200)(v154, v39);
          v105 = v208;
          (v192)(v203, v208);
          *(v155 + *(v163 + 20)) = v144;
          v159(v155, 0, 1);
          sub_1E4697BD4(v155, v166, &qword_1ECF74C40, &unk_1E471C980);
LABEL_48:
          v97 = v173;
          v102 = 0;
          if (v160 != i)
          {
            goto LABEL_22;
          }

          i = v193;
          v112 = v192;
          goto LABEL_50;
        }
      }

      else if (*(v152 + *(v153 + 20)) < v144)
      {
        goto LABEL_45;
      }

      v105 = v208;
      (v192)(v203, v208);
      goto LABEL_48;
    }

    (v112)(v114, v105);
    ++v111;
  }

  while (v196 != v113);

LABEL_50:
  (v112)(i, v105);
  (v112)(v165, v105);
  return sub_1E46574C0(v166, v164, &qword_1ECF74C40, &unk_1E471C980);
}

uint64_t sub_1E4689F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    swift_once();
  }

  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E471C940;
  v16 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1E4663DE4();
  *(v15 + 64) = v17;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;

  v18 = sub_1E4683900();
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  *(v15 + 72) = v18;
  *(v15 + 80) = v19;
  v20 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v21 = 0x676E6964616F6CLL;
  if (*(a2 + *(v20 + 44)))
  {
    v21 = 0x7964616572;
  }

  v22 = 0xE700000000000000;
  if (*(a2 + *(v20 + 44)))
  {
    v22 = 0xE500000000000000;
  }

  *(v15 + 136) = v16;
  *(v15 + 144) = v17;
  *(v15 + 112) = v21;
  *(v15 + 120) = v22;
  v23 = a2 + *(v20 + 48);
  v24 = sub_1E46E6060();
  *(v15 + 176) = v16;
  *(v15 + 184) = v17;
  *(v15 + 152) = v24;
  *(v15 + 160) = v25;
  sub_1E470A0AC();

  sub_1E4697B6C(a1, v14, type metadata accessor for ReadingHistoryDataStore.State);
  v26 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  sub_1E4697C3C(v14, v5 + v26, type metadata accessor for ReadingHistoryDataStore.State);
  swift_endAccess();
  sub_1E4683CEC();
  v27 = sub_1E4697478(v14, type metadata accessor for ReadingHistoryDataStore.State);
  v28 = *(v5 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange);
  MEMORY[0x1EEE9AC00](v27, v29);
  *&v35[-4] = a2;
  v30 = *(v28 + 16);
  v31 = swift_allocObject();
  v31[2] = sub_1E4697CA4;
  v31[3] = &v35[-8];
  v31[4] = v28;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1E4697D00;
  *(v32 + 24) = v31;
  aBlock[4] = sub_1E467A478;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46679F4;
  aBlock[3] = &unk_1F5E64E10;
  v33 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v30, v33);
  _Block_release(v33);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
  }

  return result;
}

void sub_1E468A328(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v263 = a3;
  v267 = a1;
  v3 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v255 = &v225 - v6;
  v256 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v7 = *(*(v256 - 8) + 64);
  MEMORY[0x1EEE9AC00](v256, v8);
  v253 = &v225 - v9;
  v10 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v249 = &v225 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v250 = &v225 - v16;
  v257 = type metadata accessor for ReadingHistory.Streak(0);
  v258 = *(v257 - 8);
  v17 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v257, v18);
  v251 = &v225 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v252 = &v225 - v22;
  v261 = sub_1E4709D5C();
  v264 = *(v261 - 8);
  v23 = *(v264 + 64);
  MEMORY[0x1EEE9AC00](v261, v24);
  v265 = &v225 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E4709D7C();
  v27 = *(v26 - 8);
  v259 = v26;
  v260 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26, v29);
  v262 = &v225 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v266 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v31 = *(*(v266 - 8) + 64);
  MEMORY[0x1EEE9AC00](v266, v32);
  v254 = &v225 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v225 - v36;
  v38 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8, v40);
  v42 = &v225 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v225 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = (&v225 - v49);
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v225 - v53;
  v55 = type metadata accessor for ReadingHistoryModel(0);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55, v57);
  v59 = &v225 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v225 - v62;
  MEMORY[0x1EEE9AC00](v64, v65);
  v67 = &v225 - v66;
  v68 = sub_1E4709CCC();
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68, v70);
  MEMORY[0x1EEE9AC00](v72, &v225 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v73, v74);
  MEMORY[0x1EEE9AC00](v75, v76);
  v84 = &v225 - v83;
  v85 = *(v267 + 8);
  v86 = *(v267 + 32);
  v87 = *(v267 + 41);
  if (v87)
  {
    v88 = *(v267 + 32);
  }

  else
  {
    v88 = *(v267 + 8);
  }

  if (*(v80 + 136) != v88)
  {
    v248 = v67;
    v245 = v50;
    v243 = v46;
    v241 = v42;
    v242 = v55;
    v244 = v59;
    v247 = v63;
    v246 = v54;
    v89 = *(v267 + 16);
    if (v87)
    {
      v89 = *(v267 + 40);
    }

    if (v89 == 3)
    {
      *(v80 + 136) = v88;
      v90 = v80 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
      v91 = v77;
      v92 = v82;
      swift_beginAccess();
      (*(v92 + 16))(v84, v90 + *(v266 + 24), v91);
      v93 = v90;
      v94 = v248;
      sub_1E4697B6C(v93, v248, type metadata accessor for ReadingHistoryModel);
      ReadingHistoryModel.readingDay(for:)(v271);
      sub_1E4697478(v94, type metadata accessor for ReadingHistoryModel);
      (*(v92 + 8))(v84, v91);
      if (v271[16] == 2)
      {
        *v263 = 1;
      }

      return;
    }

    if ((v87 & 1) == 0)
    {
      *(v80 + 136) = v85;
      return;
    }

    if (!*(v267 + 40))
    {
      *(v80 + 136) = v86;
      return;
    }

    v95 = v247;
    v96 = v266;
    if (*(v267 + 40) == 1)
    {
      v240 = v79;
      v226 = v78;
      v232 = v80;
      v97 = v80 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
      v98 = v81;
      v99 = v77;
      v100 = v82;
      swift_beginAccess();
      v101 = v96[6];
      v233 = v100;
      v104 = *(v100 + 16);
      v102 = v100 + 16;
      v103 = v104;
      v263 = v98;
      v267 = v99;
      v104(v98, (v97 + v101), v99);
      sub_1E4697B6C(v97, v95, type metadata accessor for ReadingHistoryModel);
      if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v46 = v248;
        if (v86 > -9.22337204e18)
        {
          v105 = v263;
          if (v86 < 9.22337204e18)
          {
            ReadingHistoryModel.setGoal(_:date:)(v86, v263);
            type metadata accessor for ReadingHistoryDataStore(0);
            v239 = v97;
            sub_1E4697B6C(v97, v37, type metadata accessor for ReadingHistoryDataStore.State);
            v106 = v246;
            sub_1E46857BC(v37, v95, v105, v246);
            sub_1E4697478(v37, type metadata accessor for ReadingHistoryDataStore.State);
            sub_1E4688298(v95, v106, v46);
            sub_1E4697478(v95, type metadata accessor for ReadingHistoryModel);
            sub_1E4697DD8(v46, v95, type metadata accessor for ReadingHistoryModel);
            v235 = v102;
            v234 = v103;
            v103(v240, v105, v267);
            sub_1E4709CDC();
            v108 = v264;
            v107 = v265;
            v109 = v264 + 104;
            v67 = *(v264 + 104);
            v231 = *MEMORY[0x1E6969A68];
            v110 = v261;
            (v67)(v265);
            v111 = sub_1E4709D6C();
            v46 = *(v108 + 8);
            (v46)(v107, v110);
            v230 = *MEMORY[0x1E6969A78];
            v248 = v109;
            v238 = v67;
            (v67)(v107);
            v112 = v107;
            v113 = sub_1E4709D6C();
            v264 = v108 + 8;
            (v46)(v112, v110);
            v114 = 100 * v111;
            if ((v111 * 100) >> 64 == (100 * v111) >> 63)
            {
              v229 = v114 + v113;
              v115 = v257;
              if (!__OFADD__(v114, v113))
              {
                v228 = *MEMORY[0x1E6969A48];
                v116 = v261;
                (v238)(v112);
                v117 = v240;
                v118 = v262;
                v119 = sub_1E4709D6C();
                v120 = v265;
                v121 = v119;
                (v46)(v265, v116);
                v122 = *(v260 + 8);
                v260 += 8;
                v227 = v122;
                v122(v118, v259);
                v123 = *(v233 + 8);
                v237 = v233 + 8;
                v236 = v123;
                v123(v117, v267);
                v124 = v239;
                v125 = v245;
                sub_1E465E0B0(v239 + v96[5], v245, &qword_1ECF74C40, &unk_1E471C980);
                v126 = v258 + 48;
                v127 = *(v258 + 48);
                if (v127(v125, 1, v115) == 1)
                {
                  v128 = v125;
LABEL_25:
                  sub_1E465E050(v128, &qword_1ECF74C40, &unk_1E471C980);
                  v46 = v253;
                  v133 = v255;
LABEL_26:
                  v67 = v256;
LABEL_27:
                  v134 = v247;
LABEL_28:
                  v135 = v254;
                  sub_1E4697B6C(v134, v254, type metadata accessor for ReadingHistoryModel);
                  v136 = v266;
                  v137 = v246;
                  sub_1E465E0B0(v246, v135 + *(v266 + 20), &qword_1ECF74C40, &unk_1E471C980);
                  v138 = v263;
                  v234(v135 + *(v136 + 24), v263, v267);
                  sub_1E46A38A8(v138, (v135 + *(v136 + 28)));
                  v139 = v232;
                  v140 = *(*(v232 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) + 16);

                  sub_1E470B37C();

                  v141 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
                  (*(*(v141 - 8) + 56))(v133, 1, 2, v141);
                  sub_1E4697C3C(v135, v46, type metadata accessor for ReadingHistoryModel);
                  sub_1E4697BD4(v133, &v46[*(v67 + 12)], &unk_1ECF74C60, &qword_1E471C910);
                  sub_1E4689F54(v135, v46, 0xD000000000000015, 0x80000001E4718DF0);
                  *(v139 + 136) = v86;
                  sub_1E4658550(v139 + 56, &v268);
                  v142 = v269;
                  v143 = v270;
                  sub_1E465057C(&v268, v269);
                  v144 = v244;
                  sub_1E4697B6C(v239, v244, type metadata accessor for ReadingHistoryModel);
                  (*(v143 + 48))(v144, v142, v143);
                  sub_1E4697478(v144, type metadata accessor for ReadingHistoryModel);
                  sub_1E4697478(v135, type metadata accessor for ReadingHistoryDataStore.State);
                  sub_1E4697478(v247, type metadata accessor for ReadingHistoryModel);
                  v236(v263, v267);
                  sub_1E4658A0C(&v268);
                  sub_1E465E050(v46, &qword_1ECF74A00, &unk_1E471D5B0);
                  sub_1E465E050(v137, &qword_1ECF74C40, &unk_1E471C980);
                  return;
                }

                v129 = v125;
                v130 = v252;
                sub_1E4697DD8(v129, v252, type metadata accessor for ReadingHistory.Streak);
                v131 = v124 + v96[7];
                v132 = v243;
                sub_1E465E0B0(v131, v243, &qword_1ECF74C40, &unk_1E471C980);
                v245 = v127;
                if (v127(v132, 1, v115) == 1)
                {
                  sub_1E4697478(v130, type metadata accessor for ReadingHistory.Streak);
                  v128 = v132;
                  goto LABEL_25;
                }

                v225 = v121;
                v258 = v126;
                sub_1E4697DD8(v132, v251, type metadata accessor for ReadingHistory.Streak);
                v234(v240, v130, v267);
                sub_1E4709CDC();
                v67 = v238;
                (v238)(v120, v231, v116);
                v145 = sub_1E4709D6C();
                (v46)(v265, v116);
                (v67)(v265, v230, v116);
                v146 = sub_1E4709D6C();
                v147 = v265;
                v148 = v116;
                v149 = v146;
                (v46)(v265, v148);
                v150 = 100 * v145;
                if ((v145 * 100) >> 64 == (100 * v145) >> 63)
                {
                  v151 = v150 + v149;
                  v67 = v256;
                  v152 = v245;
                  if (!__OFADD__(v150, v149))
                  {
                    v153 = v261;
                    (v238)(v147, v228, v261);
                    v154 = v240;
                    v155 = v262;
                    v156 = sub_1E4709D6C();
                    v157 = v265;
                    v158 = v156;
                    (v46)(v265, v153);
                    v227(v155, v259);
                    v236(v154, v267);
                    if (v151 != v229 || v158 != v225)
                    {
                      goto LABEL_48;
                    }

                    v234(v240, v251, v267);
                    sub_1E4709CDC();
                    v159 = v261;
                    v243 = v46;
                    v160 = v238;
                    (v238)(v157, v231, v261);
                    v161 = sub_1E4709D6C();
                    (v243)(v265, v159);
                    (v160)(v265, v230, v159);
                    v46 = v243;
                    v162 = sub_1E4709D6C();
                    v163 = v265;
                    v164 = v162;
                    (v46)(v265, v159);
                    v165 = 100 * v161;
                    if ((v161 * 100) >> 64 == (100 * v161) >> 63)
                    {
                      v166 = v165 + v164;
                      if (!__OFADD__(v165, v164))
                      {
                        v167 = v261;
                        (v238)(v163, v228, v261);
                        v168 = v240;
                        v169 = v262;
                        v170 = sub_1E4709D6C();
                        v171 = v265;
                        v172 = v170;
                        (v46)(v265, v167);
                        v227(v169, v259);
                        v236(v168, v267);
                        if (v166 == v229 && v172 == v225)
                        {
                          v173 = v257;
                          v174 = v152(v246, 1, v257);
                          v134 = v247;
                          v175 = v242;
                          v176 = v252;
                          if (v174 == 1)
                          {
                            goto LABEL_46;
                          }

                          v177 = v241;
                          sub_1E465E0B0(v246, v241, &qword_1ECF74C40, &unk_1E471C980);
                          if (v152(v177, 1, v173) == 1)
                          {
                            __break(1u);
                            return;
                          }

                          v234(v240, v177, v267);
                          sub_1E4697478(v177, type metadata accessor for ReadingHistory.Streak);
                          sub_1E4709CDC();
                          v178 = v261;
                          v179 = v238;
                          (v238)(v171, v231, v261);
                          v180 = sub_1E4709D6C();
                          v181 = v243;
                          (v243)(v265, v178);
                          (v179)(v265, v230, v178);
                          v46 = v181;
                          v182 = sub_1E4709D6C();
                          v183 = v265;
                          v184 = v182;
                          (v181)(v265, v178);
                          v185 = 100 * v180;
                          if ((v180 * 100) >> 64 == (100 * v180) >> 63)
                          {
                            v186 = v185 + v184;
                            if (!__OFADD__(v185, v184))
                            {
                              v187 = v261;
                              (v238)(v183, v228, v261);
                              v188 = v240;
                              v189 = v262;
                              v190 = sub_1E4709D6C();
                              (v181)(v265, v187);
                              v227(v189, v259);
                              v236(v188, v267);
                              v191 = 100 * v186;
                              if ((v186 * 100) >> 64 == (100 * v186) >> 63)
                              {
                                v192 = __OFADD__(v191, v190);
                                v193 = v191 + v190;
                                v134 = v247;
                                v175 = v242;
                                v176 = v252;
                                if (!v192)
                                {
                                  v194 = 100 * v229;
                                  if ((v229 * 100) >> 64 == (100 * v229) >> 63)
                                  {
                                    v192 = __OFADD__(v194, v225);
                                    v195 = v194 + v225;
                                    if (!v192)
                                    {
                                      if (v193 >= v195)
                                      {
                                        sub_1E4697478(v251, type metadata accessor for ReadingHistory.Streak);
                                        sub_1E4697478(v176, type metadata accessor for ReadingHistory.Streak);
                                        v46 = v253;
                                        v133 = v255;
                                        goto LABEL_28;
                                      }

LABEL_46:
                                      v196 = *(v173 + 20);
                                      v197 = v251;
                                      v67 = *&v251[v196];
                                      v198 = *(v175 + 20);
                                      v268 = v67;
                                      v199 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
                                      v200 = v250;
                                      sub_1E470AB0C();
                                      v201 = v233;
                                      if ((*(v233 + 48))(v200, 1, v267) == 1)
                                      {
                                        sub_1E4697478(v197, type metadata accessor for ReadingHistory.Streak);
                                        sub_1E4697478(v176, type metadata accessor for ReadingHistory.Streak);
                                        sub_1E465E050(v200, &unk_1ECF74CD0, &qword_1E471B620);
                                        v46 = v253;
LABEL_55:
                                        v133 = v255;
                                        v67 = v256;
                                        goto LABEL_28;
                                      }

                                      v258 = v199;
                                      v202 = *(v201 + 32);
                                      v203 = v226;
                                      v204 = v267;
                                      v202(v226, v200, v267);
                                      v234(v240, v203, v204);
                                      sub_1E4709CDC();
                                      v205 = v265;
                                      v206 = v261;
                                      v207 = v238;
                                      (v238)(v265, v231, v261);
                                      v208 = sub_1E4709D6C();
                                      (v243)(v205, v206);
                                      (v207)(v205, v230, v206);
                                      v46 = v243;
                                      v209 = sub_1E4709D6C();
                                      (v46)(v205, v206);
                                      v210 = 100 * v208;
                                      v133 = v255;
                                      if ((v208 * 100) >> 64 == (100 * v208) >> 63)
                                      {
                                        v211 = v210 + v209;
                                        if (!__OFADD__(v210, v209))
                                        {
                                          v212 = v265;
                                          v213 = v261;
                                          (v238)(v265, v228, v261);
                                          v214 = v240;
                                          v215 = v262;
                                          v216 = sub_1E4709D6C();
                                          (v46)(v212, v213);
                                          v227(v215, v259);
                                          v236(v214, v267);
                                          if (v211 != v229 || v216 != v225)
                                          {
                                            v236(v226, v267);
                                            sub_1E4697478(v251, type metadata accessor for ReadingHistory.Streak);
                                            sub_1E4697478(v252, type metadata accessor for ReadingHistory.Streak);
                                            v46 = v253;
                                            goto LABEL_26;
                                          }

                                          sub_1E470B2CC();
                                          v46 = v253;
                                          if (qword_1EE2ADC90 == -1)
                                          {
                                            goto LABEL_54;
                                          }

                                          goto LABEL_75;
                                        }

LABEL_74:
                                        __break(1u);
LABEL_75:
                                        swift_once();
LABEL_54:
                                        sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
                                        v217 = swift_allocObject();
                                        v218 = MEMORY[0x1E69E6530];
                                        *(v217 + 16) = xmmword_1E471B800;
                                        v219 = MEMORY[0x1E69E65A8];
                                        *(v217 + 56) = v218;
                                        *(v217 + 64) = v219;
                                        *(v217 + 32) = v67;
                                        v220 = v251;
                                        v221 = sub_1E4709C1C();
                                        v223 = v222;
                                        *(v217 + 96) = MEMORY[0x1E69E6158];
                                        *(v217 + 104) = sub_1E4663DE4();
                                        *(v217 + 72) = v221;
                                        *(v217 + 80) = v223;
                                        sub_1E470A0AC();

                                        v224 = v267;
                                        (*(v233 + 56))(v249, 1, 1, v267);
                                        v268 = v67;
                                        v134 = v247;
                                        sub_1E470AB1C();
                                        v236(v226, v224);
                                        sub_1E4697478(v220, type metadata accessor for ReadingHistory.Streak);
                                        sub_1E4697478(v252, type metadata accessor for ReadingHistory.Streak);
                                        goto LABEL_55;
                                      }

LABEL_73:
                                      __break(1u);
                                      goto LABEL_74;
                                    }

LABEL_72:
                                    __break(1u);
                                    goto LABEL_73;
                                  }

LABEL_71:
                                  __break(1u);
                                  goto LABEL_72;
                                }

LABEL_70:
                                __break(1u);
                                goto LABEL_71;
                              }

LABEL_69:
                              __break(1u);
                              goto LABEL_70;
                            }

LABEL_68:
                            __break(1u);
                            goto LABEL_69;
                          }

LABEL_67:
                          __break(1u);
                          goto LABEL_68;
                        }

LABEL_48:
                        sub_1E4697478(v251, type metadata accessor for ReadingHistory.Streak);
                        sub_1E4697478(v252, type metadata accessor for ReadingHistory.Streak);
                        v46 = v253;
                        v133 = v255;
                        goto LABEL_27;
                      }

LABEL_66:
                      __break(1u);
                      goto LABEL_67;
                    }

LABEL_65:
                    __break(1u);
                    goto LABEL_66;
                  }

LABEL_64:
                  __break(1u);
                  goto LABEL_65;
                }

LABEL_63:
                __break(1u);
                goto LABEL_64;
              }

LABEL_62:
              __break(1u);
              goto LABEL_63;
            }

LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

LABEL_60:
          __break(1u);
          goto LABEL_61;
        }
      }

      __break(1u);
      goto LABEL_60;
    }
  }
}

uint64_t ReadingHistoryModel.readingDay(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v19 - v5;
  v7 = type metadata accessor for ReadingHistoryDay(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ReadingHistoryModel.readingHistoryDay(for:)(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1E465E050(v6, &qword_1ECF74200, &qword_1E471AF80);
    v14 = 0;
    v15 = 0;
    v16 = 2;
  }

  else
  {
    sub_1E4697DD8(v6, v12, type metadata accessor for ReadingHistoryDay);
    v14 = sub_1E470AD8C();
    v17 = *(v7 + 20);
    sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
    sub_1E470A62C();
    v15 = v19[1];
    v18 = sub_1E470AD8C();
    sub_1E470A62C();
    result = sub_1E4697478(v12, type metadata accessor for ReadingHistoryDay);
    v16 = v18 >= v19[0];
  }

  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  return result;
}

uint64_t sub_1E468C030(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v66 = type metadata accessor for ReadingHistoryModel(0);
  v3 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66, v4);
  v65 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v62 - v8;
  v10 = sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v62 - v17;
  v19 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v63 = &v62 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v62 = &v62 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v62 - v32;
  v64 = a1;
  sub_1E465E0B0(a1, v18, &qword_1ECF74D90, &unk_1E471C8F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = sub_1E4650534(&qword_1ECF74A08, &unk_1E471D890);
    sub_1E46574C0(&v18[*(v34 + 48)], v33, &qword_1ECF74A00, &unk_1E471D5B0);
    sub_1E465E050(v18, &qword_1ECF74A00, &unk_1E471D5B0);
  }

  else
  {
    sub_1E46574C0(v18, v33, &qword_1ECF74A00, &unk_1E471D5B0);
  }

  v35 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  v36 = v67;
  swift_beginAccess();
  sub_1E4697B6C(v36 + v35, v9, type metadata accessor for ReadingHistoryModel);
  sub_1E4698194(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel);
  v37 = sub_1E470A8AC();
  sub_1E4697478(v9, type metadata accessor for ReadingHistoryModel);
  if (v37)
  {
    sub_1E4686820(v33);
    sub_1E465E0B0(v64, v14, &qword_1ECF74D90, &unk_1E471C8F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = *(sub_1E4650534(&qword_1ECF74A08, &unk_1E471D890) + 48);
      v39 = v62;
      sub_1E46574C0(v14, v62, &qword_1ECF74A00, &unk_1E471D5B0);
      v40 = &v14[v38];
      v41 = v63;
      sub_1E46574C0(v40, v63, &qword_1ECF74A00, &unk_1E471D5B0);
      v42 = *(v19 + 44);
      if ((*(v39 + v42) & 1) == 0 && *(v41 + v42) == 1 && *(v36 + 152) == 1)
      {
        sub_1E468C708();
      }

      sub_1E465E050(v41, &qword_1ECF74A00, &unk_1E471D5B0);
      v43 = v39;
      v44 = &qword_1ECF74A00;
      v45 = &unk_1E471D5B0;
    }

    else
    {
      v44 = &qword_1ECF74D90;
      v45 = &unk_1E471C8F0;
      v43 = v14;
    }

    sub_1E465E050(v43, v44, v45);
    sub_1E4658550(v36 + 56, aBlock);
    v58 = v69;
    v59 = v70;
    sub_1E465057C(aBlock, v69);
    v60 = v36 + v35;
    v61 = v65;
    sub_1E4697B6C(v60, v65, type metadata accessor for ReadingHistoryModel);
    (*(v59 + 6))(v61, v58, v59);
    sub_1E4697478(v61, type metadata accessor for ReadingHistoryModel);
    sub_1E4658A0C(aBlock);
    return sub_1E465E050(v33, &qword_1ECF74A00, &unk_1E471D5B0);
  }

  v46 = v33[*(v19 + 44)];
  v47 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange;
  v48 = *(*(v36 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) + 16);

  sub_1E470B37C();

  v49 = v23[*(v19 + 44)];
  v50 = sub_1E465E050(v23, &qword_1ECF74A00, &unk_1E471D5B0);
  if (v46 == v49)
  {
    return sub_1E465E050(v33, &qword_1ECF74A00, &unk_1E471D5B0);
  }

  v52 = *(v36 + v47);
  MEMORY[0x1EEE9AC00](v50, v51);
  *(&v62 - 2) = v33;
  v53 = *(v52 + 16);
  v54 = swift_allocObject();
  v54[2] = sub_1E46981DC;
  v54[3] = &v62 - 4;
  v54[4] = v52;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1E4698428;
  *(v55 + 24) = v54;
  v70 = sub_1E467A478;
  v71 = v55;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46679F4;
  v69 = &unk_1F5E65248;
  v56 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v53, v56);
  _Block_release(v56);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if ((v53 & 1) == 0)
  {
    return sub_1E465E050(v33, &qword_1ECF74A00, &unk_1E471D5B0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E468C708()
{
  v1 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8, v3);
  v68 = &v56 - v4;
  v65 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v5 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65, v6);
  v69 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v62 = &v56 - v11;
  v12 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v58 = *(v12 - 8);
  v59 = v12;
  v13 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v56 - v15;
  v57 = type metadata accessor for ReadingHistoryModel(0);
  v17 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57, v18);
  v67 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v56 - v22;
  v24 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v26);
  v66 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v56 - v30;
  v32 = v0;
  v61 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange;
  v33 = *(*(v0 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) + 16);

  sub_1E470B37C();

  LODWORD(v33) = v31[*(v24 + 44)];
  result = sub_1E465E050(v31, &qword_1ECF74A00, &unk_1E471D5B0);
  if (v33 == 1)
  {
    if (qword_1EE2AE440 != -1)
    {
      swift_once();
    }

    *(v32 + 136) = qword_1EE2AE450;
    v35 = v32 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
    v60 = v32 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
    swift_beginAccess();
    v56 = type metadata accessor for ReadingHistoryModel;
    sub_1E4697B6C(v35, v23, type metadata accessor for ReadingHistoryModel);
    v37 = v58;
    v36 = v59;
    (*(v58 + 16))(v16, v23, v59);
    sub_1E4681564(v16, v23);
    (*(v37 + 8))(v16, v36);
    v39 = v62;
    v38 = v63;
    v40 = v64;
    (*(v63 + 16))(v62, &v23[*(v57 + 20)], v64);
    sub_1E46819C8(v39, v23);
    (*(v38 + 8))(v39, v40);
    v41 = v69;
    sub_1E4697B6C(v23, v69, type metadata accessor for ReadingHistoryModel);
    v42 = v65;
    v43 = *(v65 + 20);
    v44 = type metadata accessor for ReadingHistory.Streak(0);
    v45 = *(*(v44 - 8) + 56);
    v45(v41 + v43, 1, 1, v44);
    v46 = *(v42 + 24);
    v47 = sub_1E4709CCC();
    (*(*(v47 - 8) + 16))(v41 + v46, v60 + v46, v47);
    v45(v41 + *(v42 + 28), 1, 1, v44);
    v48 = *(*(v32 + v61) + 16);

    v49 = v66;
    sub_1E470B37C();

    v50 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
    v51 = v68;
    (*(*(v50 - 8) + 56))(v68, 1, 2, v50);
    sub_1E4697C3C(v23, v49, type metadata accessor for ReadingHistoryModel);
    sub_1E4697BD4(v51, v49 + *(v24 + 48), &unk_1ECF74C60, &qword_1E471C910);
    sub_1E4689F54(v41, v49, 0x7461447261656C63, 0xE900000000000061);
    sub_1E4658550(v32 + 56, v70);
    v52 = v71;
    v53 = v72;
    sub_1E465057C(v70, v71);
    v54 = v67;
    sub_1E4697B6C(v60, v67, v56);
    (*(v53 + 48))(v54, v52, v53);
    sub_1E4697478(v54, type metadata accessor for ReadingHistoryModel);
    sub_1E4697478(v41, type metadata accessor for ReadingHistoryDataStore.State);
    sub_1E4658A0C(v70);
    sub_1E465E050(v49, &qword_1ECF74A00, &unk_1E471D5B0);
    result = sub_1E4697478(v23, type metadata accessor for ReadingHistoryModel);
    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  *(v32 + 152) = v55;
  return result;
}

Swift::Void __swiftcall ReadingHistoryDataStore.handleSignificantDateChange()()
{
  v1 = v0;
  v49 = sub_1E4709D7C();
  isa = v49[-1].isa;
  v2 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v49, v3);
  v45 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4709CCC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v48 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v46 = v40 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v50 = v40 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v40 - v17;
  v40[3] = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    swift_once();
  }

  v41 = qword_1EE2ADC98;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E471BA00;
  v21 = *(v0 + 120);
  v20 = *(v0 + 128);
  v21();
  v22 = sub_1E4709C1C();
  v24 = v23;
  v25 = *(v6 + 8);
  v43 = v6 + 8;
  v44 = v25;
  v25(v18, v5);
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1E4663DE4();
  *(v19 + 32) = v22;
  *(v19 + 40) = v24;
  sub_1E470A0AC();

  (v21)(v26);
  v27 = v45;
  sub_1E4709CDC();
  v28 = v50;
  v42 = v18;
  sub_1E4709CEC();
  (*(isa + 1))(v27, v49);
  v49 = *(v1 + 144);
  v29 = *(v6 + 16);
  v30 = v46;
  v29(v46, v28, v5);
  v31 = v48;
  v29(v48, v18, v5);
  v32 = *(v6 + 80);
  v33 = (v32 + 24) & ~v32;
  v34 = (v7 + v32 + v33) & ~v32;
  v35 = swift_allocObject();
  *(v35 + 16) = v1;
  v36 = *(v6 + 32);
  v36(v35 + v33, v30, v5);
  v36(v35 + v34, v31, v5);
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1E46973D0;
  *(v37 + 24) = v35;
  aBlock[4] = sub_1E465DE98;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46679F4;
  aBlock[3] = &unk_1F5E646C0;
  v38 = _Block_copy(aBlock);

  dispatch_sync(v49, v38);
  _Block_release(v38);
  v39 = v44;
  v44(v28, v5);
  v39(v42, v5);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
    __break(1u);
  }
}

uint64_t sub_1E468D3CC(uint64_t a1, uint64_t a2, char *a3)
{
  v94 = a3;
  v99 = a2;
  v4 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v104 = &v90 - v7;
  v8 = type metadata accessor for ReadingHistoryModel(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v106 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v97 = &v90 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v96 = &v90 - v17;
  v107 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v18 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107, v19);
  v105 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v103 = &v90 - v23;
  v24 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v93 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v98 = &v90 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v95 = &v90 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v109 = &v90 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v90 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v90 - v43;
  v45 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45, v47);
  v108 = &v90 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v90 - v51;
  v100 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange;
  v53 = a1;
  v54 = *(*(a1 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) + 16);

  sub_1E470B37C();

  v101 = v45;
  LODWORD(v54) = v52[*(v45 + 44)];
  sub_1E465E050(v52, &qword_1ECF74A00, &unk_1E471D5B0);
  if (v54 == 1)
  {
    v92 = 0;
    v91 = v53;
    v55 = v53 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
    swift_beginAccess();
    v56 = v107;
    v57 = v55 + *(v107 + 20);
    v102 = v44;
    sub_1E465E0B0(v57, v44, &qword_1ECF74C40, &unk_1E471C980);
    v58 = type metadata accessor for ReadingHistoryDataStore(0);
    v59 = v103;
    sub_1E4697B6C(v55, v103, type metadata accessor for ReadingHistoryDataStore.State);
    v60 = v96;
    sub_1E4697B6C(v55, v96, type metadata accessor for ReadingHistoryModel);
    v61 = v99;
    v90 = v58;
    sub_1E46857BC(v59, v60, v99, v40);
    sub_1E4697478(v60, type metadata accessor for ReadingHistoryModel);
    sub_1E4697478(v59, type metadata accessor for ReadingHistoryDataStore.State);
    v62 = v97;
    sub_1E4697B6C(v55, v97, type metadata accessor for ReadingHistoryModel);
    sub_1E465E0B0(v55 + *(v56 + 28), v109, &qword_1ECF74C40, &unk_1E471C980);
    v103 = v40;
    v63 = v95;
    sub_1E465E0B0(v40, v95, &qword_1ECF74C40, &unk_1E471C980);
    v64 = type metadata accessor for ReadingHistory.Streak(0);
    v65 = *(*(v64 - 8) + 48);
    if (v65(v63, 1, v64) == 1)
    {
      sub_1E465E050(v63, &qword_1ECF74C40, &unk_1E471C980);
      v66 = 0;
    }

    else
    {
      v66 = *(v63 + *(v64 + 20));
      sub_1E4697478(v63, type metadata accessor for ReadingHistory.Streak);
    }

    v68 = v98;
    sub_1E465E0B0(v102, v98, &qword_1ECF74C40, &unk_1E471C980);
    if (v65(v68, 1, v64) == 1)
    {
      sub_1E465E050(v68, &qword_1ECF74C40, &unk_1E471C980);
      v69 = 0;
    }

    else
    {
      v69 = *(v68 + *(v64 + 20));
      sub_1E4697478(v68, type metadata accessor for ReadingHistory.Streak);
    }

    v70 = v103;
    v71 = v109;
    v72 = v61;
    v73 = sub_1E46A6620(v61, 1);
    v74 = v105;
    if (v69 < v66 || v73)
    {
      sub_1E4688298(v62, v70, v60);
      sub_1E4697478(v62, type metadata accessor for ReadingHistoryModel);
      sub_1E4697DD8(v60, v62, type metadata accessor for ReadingHistoryModel);
      v75 = v93;
      sub_1E46A38A8(v94, v93);
      sub_1E465E050(v71, &qword_1ECF74C40, &unk_1E471C980);
      sub_1E46574C0(v75, v71, &qword_1ECF74C40, &unk_1E471C980);
    }

    sub_1E4697B6C(v62, v74, type metadata accessor for ReadingHistoryModel);
    v76 = v107;
    sub_1E465E0B0(v70, v74 + *(v107 + 20), &qword_1ECF74C40, &unk_1E471C980);
    v77 = *(v76 + 24);
    v78 = sub_1E4709CCC();
    (*(*(v78 - 8) + 16))(v74 + v77, v72, v78);
    sub_1E465E0B0(v71, v74 + *(v76 + 28), &qword_1ECF74C40, &unk_1E471C980);
    v79 = v91;
    v80 = *(*(v91 + v100) + 16);

    v81 = v108;
    v82 = v101;
    v83 = v92;
    sub_1E470B37C();

    v84 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
    v85 = v104;
    (*(*(v84 - 8) + 56))(v104, 1, 2, v84);
    sub_1E4697C3C(v74, v81, type metadata accessor for ReadingHistoryModel);
    sub_1E4697BD4(v85, v81 + *(v82 + 48), &unk_1ECF74C60, &qword_1E471C910);
    sub_1E4689F54(v74, v81, 0xD00000000000001BLL, 0x80000001E4718CD0);
    sub_1E4658550(v79 + 56, v110);
    v86 = v111;
    v87 = v112;
    sub_1E465057C(v110, v111);
    v88 = v55;
    v89 = v106;
    sub_1E4697B6C(v88, v106, type metadata accessor for ReadingHistoryModel);
    (*(v87 + 48))(v89, v86, v87);
    if (v83)
    {
    }

    sub_1E4697478(v89, type metadata accessor for ReadingHistoryModel);
    sub_1E4697478(v74, type metadata accessor for ReadingHistoryDataStore.State);
    sub_1E465E050(v109, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E4697478(v62, type metadata accessor for ReadingHistoryModel);
    sub_1E465E050(v103, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E465E050(v102, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E4658A0C(v110);
    return sub_1E465E050(v108, &qword_1ECF74A00, &unk_1E471D5B0);
  }

  else
  {
    sub_1E470B2CC();
    if (qword_1EE2ADC90 != -1)
    {
      swift_once();
    }

    return sub_1E470A0AC();
  }
}

BOOL sub_1E468DDF0(__int128 *a1, uint64_t a2)
{
  v31[1] = a2;
  v3 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = v31 - v6;
  v8 = type metadata accessor for ReadingHistoryDay(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = v31 - v17;
  v19 = sub_1E4709CCC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *a1;
  sub_1E46A34A8(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v25 = &unk_1ECF74CD0;
    v26 = &qword_1E471B620;
    v27 = v18;
LABEL_5:
    sub_1E465E050(v27, v25, v26);
    return 0;
  }

  (*(v20 + 32))(v24, v18, v19);
  ReadingHistoryModel.readingHistoryDay(for:)(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v20 + 8))(v24, v19);
    v25 = &qword_1ECF74200;
    v26 = &qword_1E471AF80;
    v27 = v7;
    goto LABEL_5;
  }

  sub_1E4697DD8(v7, v13, type metadata accessor for ReadingHistoryDay);
  v29 = sub_1E470AD8C();
  v30 = *(v8 + 20);
  sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  sub_1E470A62C();
  sub_1E4697478(v13, type metadata accessor for ReadingHistoryDay);
  (*(v20 + 8))(v24, v19);
  return v29 >= v32;
}

uint64_t ReadingHistoryDataStore.deinit()
{
  sub_1E465E050(v0 + 16, &qword_1ECF74C38, &unk_1E471D580);
  sub_1E4658A0C((v0 + 56));

  v1 = *(v0 + 128);

  sub_1E4697478(v0 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state, type metadata accessor for ReadingHistoryDataStore.State);
  v2 = *(v0 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange);

  v3 = *(v0 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChangeObservableTransaction);

  v4 = *(v0 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_transactionProvider);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ReadingHistoryDataStore.__deallocating_deinit()
{
  ReadingHistoryDataStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ReadingHistoryDataStore.addObserver(_:modelChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *(v3 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange);
  v9 = *(v8 + 16);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = sub_1E466A228;
  v10[4] = v7;
  v10[5] = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1E46974F8;
  *(v11 + 24) = v10;
  v14[4] = sub_1E467A478;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1E46679F4;
  v14[3] = &unk_1F5E64760;
  v12 = _Block_copy(v14);
  swift_retain_n();

  swift_unknownObjectRetain();

  dispatch_sync(v9, v12);
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t ReadingHistoryDataStore.addObserverWithEvent(_:modelChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange);
  v8 = *(v7 + 16);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1E4698424;
  *(v10 + 24) = v9;
  v13[4] = sub_1E467A478;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E46679F4;
  v13[3] = &unk_1F5E647D8;
  v11 = _Block_copy(v13);
  swift_retain_n();

  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t ReadingHistoryDataStore.removeObserver(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange);
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E4697504;
  *(v6 + 24) = v5;
  v9[4] = sub_1E467A478;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1E46679F4;
  v9[3] = &unk_1F5E64850;
  v7 = _Block_copy(v9);
  swift_retain_n();
  swift_unknownObjectRetain();

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t ReadingHistoryDataStore.increment(date:by:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E4709CCC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v10 = *(v2 + 144);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v9);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  (*(v6 + 32))(v12 + v11, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1E469750C;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1E467A478;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46679F4;
  aBlock[3] = &unk_1F5E648C8;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E468E950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v36 = &v34 - v9;
  v10 = type metadata accessor for ReadingHistoryDay(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ReadingHistoryModel(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 136);
  v22 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  result = sub_1E4697B6C(a1 + v22, v20, type metadata accessor for ReadingHistoryModel);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v35 = v15;
  ReadingHistoryModel.incrementReadingTime(date:amount:defaultGoal:)(a2, a3, v21);
  sub_1E4650534(&qword_1ECF74C00, &unk_1E471D880);
  v24 = sub_1E4709CCC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E471BA00;
  (*(v25 + 16))(v28 + v27, a2, v24);
  sub_1E468EDE0(v28, v20, 0x6E656D6572636E69, 0xE900000000000074);
  swift_setDeallocating();
  (*(v25 + 8))(v28 + v27, v24);
  swift_deallocClassInstance();
  v29 = v36;
  ReadingHistoryModel.readingHistoryDay(for:)(v36);
  if ((*(v11 + 48))(v29, 1, v10) == 1)
  {
    sub_1E4697478(v20, type metadata accessor for ReadingHistoryModel);
    return sub_1E465E050(v29, &qword_1ECF74200, &qword_1E471AF80);
  }

  else
  {
    v30 = v29;
    v31 = v35;
    sub_1E4697DD8(v30, v35, type metadata accessor for ReadingHistoryDay);
    swift_beginAccess();
    if (*(a1 + 40))
    {
      sub_1E4658550(a1 + 16, v37);
      swift_endAccess();
      v32 = v38;
      v33 = v39;
      sub_1E465057C(v37, v38);
      (*(v33 + 8))(a2, v31, v32, v33);
      sub_1E4697478(v31, type metadata accessor for ReadingHistoryDay);
      sub_1E4697478(v20, type metadata accessor for ReadingHistoryModel);
      return sub_1E4658A0C(v37);
    }

    else
    {
      sub_1E4697478(v31, type metadata accessor for ReadingHistoryDay);
      sub_1E4697478(v20, type metadata accessor for ReadingHistoryModel);
      return swift_endAccess();
    }
  }
}

uint64_t sub_1E468EDE0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v126 = a4;
  v125 = a3;
  v137 = a2;
  v129 = a1;
  v132 = *v4;
  v6 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v123 = &v103 - v9;
  v122 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v10 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122, v11);
  v128 = &v103 - v12;
  v13 = type metadata accessor for ReadingHistoryModel(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v124 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v119 = &v103 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v117 = &v103 - v22;
  v23 = sub_1E4709D5C();
  v134 = *(v23 - 8);
  v24 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1E4709D7C();
  v130 = *(v115 - 8);
  v28 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v115, v29);
  v116 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31, v33);
  v121 = &v103 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v103 - v37;
  v39 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8, v41);
  v114 = &v103 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v103 - v45;
  v47 = sub_1E4709CCC();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47, v50);
  v52 = &v103 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v103 - v55;
  v127 = v5;
  v57 = v5 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v118 = v31;
  v58 = *(v31 + 24);
  v59 = *(v48 + 16);
  v138 = v47;
  v135 = v59;
  v136 = v48;
  v59(v56, (v57 + v58), v47);
  v133 = v57;
  sub_1E4697B6C(v57, v38, type metadata accessor for ReadingHistoryDataStore.State);
  v120 = v46;
  sub_1E46857BC(v38, v137, v56, v46);
  sub_1E4697478(v38, type metadata accessor for ReadingHistoryDataStore.State);
  v60 = *(v129 + 2);
  v131 = v48 + 16;
  if (v60 != 1)
  {
    goto LABEL_9;
  }

  v113 = v56;
  v135(v52, &v129[(*(v136 + 80) + 32) & ~*(v136 + 80)], v138);
  v61 = v116;
  sub_1E4709CDC();
  v62 = v134;
  v63 = *(v134 + 104);
  LODWORD(v111) = *MEMORY[0x1E6969A68];
  v63(v27);
  v64 = sub_1E4709D6C();
  v65 = *(v62 + 8);
  v65(v27, v23);
  v110 = *MEMORY[0x1E6969A78];
  v63(v27);
  v66 = sub_1E4709D6C();
  v112 = v23;
  v134 = v62 + 8;
  v129 = v65;
  result = (v65)(v27, v23);
  v68 = 100 * v64;
  if ((v64 * 100) >> 64 != (100 * v64) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  v69 = __OFADD__(v68, v66);
  v70 = v68 + v66;
  if (v69)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v109 = v70;
  v108 = *MEMORY[0x1E6969A48];
  v71 = v112;
  v63(v27);
  v104 = sub_1E4709D6C();
  v72 = v129;
  (v129)(v27, v71);
  v73 = *(v130 + 8);
  v130 += 8;
  v107 = v73;
  v73(v61, v115);
  v74 = *(v136 + 8);
  v75 = v138;
  v106 = v136 + 8;
  v105 = v74;
  v74(v52, v138);
  v135(v52, v113, v75);
  sub_1E4709CDC();
  (v63)(v27, v111, v71);
  v76 = v63;
  v77 = sub_1E4709D6C();
  v72(v27, v71);
  v111 = v76;
  (v76)(v27, v110, v71);
  v78 = sub_1E4709D6C();
  result = (v72)(v27, v71);
  v79 = 100 * v77;
  if ((v77 * 100) >> 64 != (100 * v77) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v80 = v79 + v78;
  if (__OFADD__(v79, v78))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v81 = v112;
  (v111)(v27, v108, v112);
  v82 = v116;
  v83 = sub_1E4709D6C();
  (v129)(v27, v81);
  v107(v82, v115);
  v105(v52, v138);
  v56 = v113;
  if (v109 != v80 || v104 != v83)
  {
LABEL_9:
    v87 = v117;
    sub_1E4697B6C(v133, v117, type metadata accessor for ReadingHistoryModel);
    v84 = v137;
    v88 = sub_1E46A48B8(v137);
    sub_1E4697478(v87, type metadata accessor for ReadingHistoryModel);
    v89 = v114;
    sub_1E46887F0(v84, v88, v114);

    sub_1E4697DD8(v84, v87, type metadata accessor for ReadingHistoryModel);
    sub_1E4688298(v87, v89, v84);
    sub_1E4697478(v87, type metadata accessor for ReadingHistoryModel);
    sub_1E465E050(v89, &qword_1ECF74C40, &unk_1E471C980);
    v86 = v120;
    goto LABEL_10;
  }

  v84 = v137;
  v85 = v117;
  sub_1E4697DD8(v137, v117, type metadata accessor for ReadingHistoryModel);
  v86 = v120;
  sub_1E4688298(v85, v120, v84);
  sub_1E4697478(v85, type metadata accessor for ReadingHistoryModel);
LABEL_10:
  v90 = v119;
  sub_1E4697DD8(v84, v119, type metadata accessor for ReadingHistoryModel);
  v91 = v127;
  v92 = v128;
  v93 = v121;
  if (*(v127 + 96) == 1)
  {
    v94 = v127[13];
    sub_1E4697B6C(v90, v84, type metadata accessor for ReadingHistoryModel);
    sub_1E46A8ACC(v94);
    sub_1E4697478(v90, type metadata accessor for ReadingHistoryModel);
  }

  else
  {
    sub_1E4697DD8(v90, v84, type metadata accessor for ReadingHistoryModel);
  }

  sub_1E4697B6C(v84, v93, type metadata accessor for ReadingHistoryModel);
  v95 = v118;
  sub_1E465E0B0(v86, v93 + *(v118 + 20), &qword_1ECF74C40, &unk_1E471C980);
  v135((v93 + *(v95 + 24)), v56, v138);
  sub_1E46A38A8(v56, (v93 + *(v95 + 28)));
  v96 = *(*(v91 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) + 16);

  v97 = v122;
  sub_1E470B37C();

  v98 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  v99 = v123;
  (*(*(v98 - 8) + 56))(v123, 1, 2, v98);
  sub_1E4697C3C(v93, v92, type metadata accessor for ReadingHistoryModel);
  sub_1E4697BD4(v99, v92 + *(v97 + 48), &unk_1ECF74C60, &qword_1E471C910);
  sub_1E4689F54(v93, v92, v125, v126);
  sub_1E4658550((v91 + 7), &v139);
  v100 = v140;
  v101 = v141;
  sub_1E465057C(&v139, v140);
  v102 = v124;
  sub_1E4697B6C(v133, v124, type metadata accessor for ReadingHistoryModel);
  (*(v101 + 48))(v102, v100, v101);
  sub_1E4697478(v102, type metadata accessor for ReadingHistoryModel);
  sub_1E4697478(v93, type metadata accessor for ReadingHistoryDataStore.State);
  sub_1E465E050(v86, &qword_1ECF74C40, &unk_1E471C980);
  (*(v136 + 8))(v56, v138);
  sub_1E4658A0C(&v139);
  return sub_1E465E050(v92, &qword_1ECF74A00, &unk_1E471D5B0);
}

uint64_t ReadingHistoryDataStore.applyUpdate(update:)(void *a1)
{
  v3 = *(v1 + 144);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E469759C;
  *(v5 + 24) = v4;
  v9[4] = sub_1E467A478;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1E46679F4;
  v9[3] = &unk_1F5E64940;
  v6 = _Block_copy(v9);

  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E468FC78(void *a1)
{
  v2 = type metadata accessor for ReadingHistoryDay(0);
  v52 = *(v2 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v51 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v50 = v46 - v8;
  v9 = sub_1E4709CCC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ReadingHistoryModel(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v53 = v19;
  sub_1E4697B6C(a1 + v20, v19, type metadata accessor for ReadingHistoryModel);
  v21 = ReadingHistoryUpdate.days.getter();
  v22 = v21;
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = sub_1E46B79B8(*(v21 + 16), 0);
    sub_1E46B87B0(v54, &v24[(*(v10 + 80) + 32) & ~*(v10 + 80)], v23, v22);
    v26 = v25;
    v47 = v54[3];
    v48 = v54[2];
    v46[1] = v54[4];
    swift_bridgeObjectRetain_n();
    sub_1E45E781C();
    if (v26 == v23)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v47 = a1;
  v54[0] = v24;
  sub_1E46938A8(v54);

  v48 = v54[0];
  v27 = v54[0][2];
  if (v27)
  {
    v30 = *(v10 + 16);
    v28 = v10 + 16;
    v29 = v30;
    v31 = &v48[(*(v28 + 64) + 32) & ~*(v28 + 64)];
    v32 = *(v28 + 56);
    v33 = (v28 - 8);
    v49 = v22;
    v30(v14, v31, v9);
    while (1)
    {
      if (*(v22 + 16))
      {
        v34 = sub_1E4655300(v14);
        if (v35)
        {
          v36 = v51;
          sub_1E4697B6C(*(v22 + 56) + *(v52 + 72) * v34, v51, type metadata accessor for ReadingHistoryDay);
          v37 = v36;
          v38 = v32;
          v39 = v29;
          v40 = v9;
          v41 = v28;
          v42 = v50;
          sub_1E4697DD8(v37, v50, type metadata accessor for ReadingHistoryDay);
          ReadingHistoryModel.mergeDay(date:day:)(v14, v42);
          v43 = v42;
          v28 = v41;
          v9 = v40;
          v29 = v39;
          v32 = v38;
          v22 = v49;
          sub_1E4697478(v43, type metadata accessor for ReadingHistoryDay);
        }
      }

      (*v33)(v14, v9);
      v31 += v32;
      if (!--v27)
      {
        break;
      }

      v29(v14, v31, v9);
    }
  }

  v44 = v53;
  sub_1E468EDE0(v48, v53, 0x647055796C707061, 0xEB00000000657461);

  return sub_1E4697478(v44, type metadata accessor for ReadingHistoryModel);
}

Swift::Void __swiftcall ReadingHistoryDataStore.clearData()()
{
  v1 = *(v0 + 144);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E46975A4;
  *(v2 + 24) = v0;
  v4[4] = sub_1E467A478;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1E46679F4;
  v4[3] = &unk_1F5E64990;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

void static ReadingHistoryDataStore.clearCachedData(in:)(void *a1)
{
  v2 = sub_1E470AF0C();
  [a1 removeObjectForKey_];

  v3 = sub_1E470AF0C();
  [a1 setInteger:0 forKey:v3];
}

uint64_t ReadingHistoryDataStore.longestStreak.getter()
{
  v1 = *(v0 + 144);
  sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  return sub_1E470B37C();
}

uint64_t sub_1E4690300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v4 = type metadata accessor for ReadingHistoryDataStore.State(0);
  return sub_1E465E0B0(v3 + *(v4 + 28), a2, &qword_1ECF74C40, &unk_1E471C980);
}

uint64_t ReadingHistoryDataStore.currentStreakLength.getter()
{
  v1 = *(v0 + 144);
  sub_1E470B37C();
  return v3;
}

uint64_t sub_1E46903E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = a1 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v10 = type metadata accessor for ReadingHistoryDataStore.State(0);
  sub_1E465E0B0(v9 + *(v10 + 20), v8, &qword_1ECF74C40, &unk_1E471C980);
  v11 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {
    result = sub_1E465E050(v8, &qword_1ECF74C40, &unk_1E471C980);
    v13 = 0;
  }

  else
  {
    v13 = *&v8[*(v11 + 20)];
    result = sub_1E4697478(v8, type metadata accessor for ReadingHistory.Streak);
  }

  *a2 = v13;
  return result;
}

uint64_t sub_1E46905A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a3;
  v59 = a2;
  v58 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  v56 = *(v58 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58, v5);
  v54 = &v51 - v6;
  v53 = sub_1E470ADBC();
  v7 = *(v53 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v53, v9);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReadingHistoryModel(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v60 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v51 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v51 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v51 - v30;
  v32 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v55 = a1;
  sub_1E4697B6C(a1 + v32, v15, type metadata accessor for ReadingHistoryModel);
  ReadingHistoryModel.readingHistoryDay(for:)(v31);
  sub_1E4697478(v15, type metadata accessor for ReadingHistoryModel);
  sub_1E465E0B0(v31, v27, &qword_1ECF74200, &qword_1E471AF80);
  v33 = type metadata accessor for ReadingHistoryDay(0);
  v34 = *(*(v33 - 8) + 48);
  if (v34(v27, 1, v33) == 1)
  {
    sub_1E465E050(v27, &qword_1ECF74200, &qword_1E471AF80);
    v35 = 0;
  }

  else
  {
    v36 = v52;
    v37 = v53;
    (*(v7 + 16))(v52, v27, v53);
    sub_1E4697478(v27, type metadata accessor for ReadingHistoryDay);
    v35 = sub_1E470AD8C();
    (*(v7 + 8))(v36, v37);
  }

  sub_1E465E0B0(v31, v23, &qword_1ECF74200, &qword_1E471AF80);
  v38 = v34(v23, 1, v33);
  v39 = v60;
  if (v38 != 1)
  {
    v43 = *(v33 + 20);
    v59 = v35;
    v44 = v56;
    v45 = v54;
    v46 = v58;
    (*(v56 + 16))(v54, &v23[v43], v58);
    sub_1E4697478(v23, type metadata accessor for ReadingHistoryDay);
    sub_1E470A62C();
    (*(v44 + 8))(v45, v46);
    v35 = v59;
    v42 = v61;
    goto LABEL_10;
  }

  result = sub_1E465E050(v23, &qword_1ECF74200, &qword_1E471AF80);
  v41 = *(v55 + 136);
  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v41 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v42 = v41;
LABEL_10:
  sub_1E465E0B0(v31, v39, &qword_1ECF74200, &qword_1E471AF80);
  if (v34(v39, 1, v33) == 1)
  {
    sub_1E465E050(v31, &qword_1ECF74200, &qword_1E471AF80);
    result = sub_1E465E050(v39, &qword_1ECF74200, &qword_1E471AF80);
    v47 = 0;
  }

  else
  {
    v48 = sub_1E470AD8C();
    v49 = v39 + *(v33 + 20);
    sub_1E470A62C();
    sub_1E465E050(v31, &qword_1ECF74200, &qword_1E471AF80);
    v47 = v48 >= v61;
    result = sub_1E4697478(v39, type metadata accessor for ReadingHistoryDay);
  }

  v50 = v57;
  *v57 = v35;
  v50[1] = v42;
  *(v50 + 16) = v47;
  return result;
}

char *ReadingHistoryDataStore.readingHistory(range:)(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = sub_1E4709CCC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v65 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v68 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v55 - v13;
  v15 = sub_1E4709D7C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v55 - v26;
  v56 = v4;
  v28 = *(v4 + 16);
  v28(&v55 - v26, a1, v3, v25);
  (v28)(&v27[*(v22 + 56)], v67, v3);
  v29 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E4709CDC();
  v30 = sub_1E4709D0C();
  v31 = *(v16 + 8);
  v31(v20, v15);
  [v29 setCalendar_];

  v32 = sub_1E470AF0C();
  [v29 setDateFormat_];

  sub_1E4709CDC();
  sub_1E4709CEC();
  v31(v20, v15);
  sub_1E4709CDC();
  v55 = v27;
  sub_1E4709CEC();
  v62 = v20;
  v63 = v16 + 8;
  v64 = v15;
  v60 = v31;
  v31(v20, v15);
  v33 = sub_1E4698194(&qword_1EE2AEBE0, MEMORY[0x1E6969530]);
  v67 = v3;
  v59 = v33;
  v34 = sub_1E470AEEC();
  if (v34)
  {

    v36 = *(v56 + 8);
    v37 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v61 = v29;
    v57 = *(v66 + 144);
    v58 = (v56 + 8);
    v56 += 32;
    v37 = MEMORY[0x1E69E7CC0];
    do
    {
      MEMORY[0x1EEE9AC00](v34, v35);
      *(&v55 - 2) = v38;
      *(&v55 - 1) = v14;
      sub_1E470B37C();
      v39 = v69;
      v40 = v70;
      v41 = v71;
      v42 = sub_1E4709C5C();
      v43 = [v61 stringFromDate_];

      v44 = sub_1E470AF1C();
      v46 = v45;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1E4693B7C(0, *(v37 + 2) + 1, 1, v37);
      }

      v48 = *(v37 + 2);
      v47 = *(v37 + 3);
      if (v48 >= v47 >> 1)
      {
        v37 = sub_1E4693B7C((v47 > 1), v48 + 1, 1, v37);
      }

      *(v37 + 2) = v48 + 1;
      v49 = &v37[40 * v48];
      *(v49 + 4) = v44;
      *(v49 + 5) = v46;
      *(v49 + 6) = v39;
      *(v49 + 7) = v40;
      v49[64] = v41;
      v50 = v62;
      sub_1E4709CDC();
      v51 = v65;
      sub_1E4709C0C();
      v60(v50, v64);
      v36 = *v58;
      v52 = v67;
      (*v58)(v14, v67);
      (*v56)(v14, v51, v52);
      v34 = sub_1E470AEEC();
    }

    while ((v34 & 1) == 0);
  }

  v53 = v67;
  v36(v68, v67);
  sub_1E465E050(v55, &unk_1ECF74C48, &qword_1E471D598);
  v36(v14, v53);
  return v37;
}

uint64_t ReadingHistoryDataStore.readingHistoryState(range:currentTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v48 = a3;
  v46 = a1;
  v47 = a2;
  v51 = a4;
  v50 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v4 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50, v5);
  v52 = &v43 - v6;
  v45 = sub_1E4709D7C();
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v45, v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4709CCC();
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v43 - v27;
  v29 = v13[2];
  v29(&v43 - v27, v46, v12, v26);
  (v29)(&v28[*(v19 + 56)], v47, v12);
  sub_1E4709CDC();
  v30 = v17;
  v44 = v17;
  sub_1E4709CEC();
  (*(v7 + 8))(v11, v45);
  v31 = v49;
  v32 = *(v49 + 144);
  sub_1E470B37C();
  v48 = v55;
  sub_1E470B37C();
  v53 = v31;
  v54 = v30;
  sub_1E470B37C();
  v50 = v55;
  v47 = v56;
  LODWORD(v46) = v57;
  sub_1E465E0B0(v28, v23, &unk_1ECF74C48, &qword_1E471D598);
  v33 = *(v19 + 56);
  v34 = ReadingHistoryDataStore.readingHistory(range:)(v23, &v23[v33]);
  sub_1E465E050(v28, &unk_1ECF74C48, &qword_1E471D598);
  v35 = v13[1];
  v35(&v23[v33], v12);
  v35(v23, v12);
  v36 = type metadata accessor for ReadingHistory.State(0);
  v37 = v36[5];
  v38 = type metadata accessor for ReadingHistory.Streak(0);
  v39 = v51;
  (*(*(v38 - 8) + 56))(v51 + v37, 1, 1, v38);
  *v39 = v48;
  sub_1E4697BD4(v52, v39 + v37, &qword_1ECF74C40, &unk_1E471C980);
  v40 = v39 + v36[6];
  v41 = v47;
  *v40 = v50;
  *(v40 + 1) = v41;
  v40[16] = v46;
  *(v39 + v36[7]) = v34;
  return (v35)(v44, v12);
}

uint64_t sub_1E4691524()
{
  v1 = *(*v0 + 144);
  sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  return sub_1E470B37C();
}

uint64_t sub_1E4691598()
{
  v1 = *(*v0 + 144);
  sub_1E470B37C();
  return v3;
}

uint64_t ReadingHistoryDataStore.readingHistoryModelSnapshot(currentTime:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v76 = a2;
  v77 = a1;
  v3 = type metadata accessor for ReadingHistoryModel(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v69 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4650534(&qword_1ECF74C58, &unk_1E471D5A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v75 = &v67 - v10;
  v11 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v67 - v14;
  v78 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  v74 = *(v78 - 8);
  v16 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v78, v17);
  v70 = (&v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v67 - v21;
  v23 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8, v25);
  v71 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v67 - v29;
  v31 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v67 - v34;
  v36 = *(*(v2 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) + 16);

  sub_1E470B37C();

  v37 = *(v31 + 48);
  v72 = v35[*(v31 + 44)];
  v73 = v30;
  sub_1E465E0B0(&v35[v37], v30, &unk_1ECF74C60, &qword_1E471C910);
  v38 = v77;
  ReadingHistoryModel.readingDay(for:)(&v79);
  v39 = v79;
  v40 = v80;
  LOBYTE(v31) = v81;
  sub_1E46A38A8(v38, v15);
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 2;
  v41 = *(v78 + 20);
  v42 = type metadata accessor for ReadingHistory.Streak(0);
  v68 = *(*(v42 - 8) + 56);
  v68(&v22[v41], 1, 1, v42);
  *v22 = v39;
  *(v22 + 1) = v40;
  v22[16] = v31;
  v43 = &v22[v41];
  v44 = v71;
  v45 = v15;
  sub_1E4697BD4(v15, v43, &qword_1ECF74C40, &unk_1E471C980);
  sub_1E465E0B0(&v35[v37], v44, &unk_1ECF74C60, &qword_1E471C910);
  v46 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  if ((*(*(v46 - 8) + 48))(v44, 2, v46))
  {
    sub_1E465E050(v35, &qword_1ECF74A00, &unk_1E471D5B0);
    v47 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
    v48 = v76;
    sub_1E4697B6C(v22, &v76[v47[6]], type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
    v49 = v75;
    v50 = *(v74 + 56);
    v51 = v78;
    v50(v75, 1, 1, v78);
    v52 = v47[7];
    v50(&v48[v52], 1, 1, v51);
    *v48 = v72;
    sub_1E46574C0(v73, &v48[v47[5]], &unk_1ECF74C60, &qword_1E471C910);
    sub_1E4697BD4(v49, &v48[v52], &qword_1ECF74C58, &unk_1E471D5A0);
  }

  else
  {
    v53 = v44;
    v54 = v69;
    sub_1E4697DD8(v53, v69, type metadata accessor for ReadingHistoryModel);
    v55 = v77;
    ReadingHistoryModel.readingDay(for:)(&v79);
    v56 = v80;
    v71 = v79;
    v57 = v81;
    sub_1E46A38A8(v55, v15);
    sub_1E4697478(v54, type metadata accessor for ReadingHistoryModel);
    sub_1E465E050(v35, &qword_1ECF74A00, &unk_1E471D5B0);
    v58 = v70;
    *v70 = 0;
    *(v58 + 8) = 0;
    *(v58 + 16) = 2;
    v59 = v78;
    v60 = *(v78 + 20);
    v68((v58 + v60), 1, 1, v42);
    *v58 = v71;
    *(v58 + 8) = v56;
    *(v58 + 16) = v57;
    sub_1E4697BD4(v45, v58 + v60, &qword_1ECF74C40, &unk_1E471C980);
    v61 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
    v62 = v76;
    sub_1E4697B6C(v22, &v76[v61[6]], type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
    v63 = v75;
    sub_1E4697B6C(v58, v75, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
    v64 = *(v74 + 56);
    v64(v63, 0, 1, v59);
    v65 = v61[7];
    v64(&v62[v65], 1, 1, v59);
    *v62 = v72;
    sub_1E46574C0(v73, &v62[v61[5]], &unk_1ECF74C60, &qword_1E471C910);
    sub_1E4697BD4(v63, &v62[v65], &qword_1ECF74C58, &unk_1E471D5A0);
    sub_1E4697478(v58, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  }

  return sub_1E4697478(v22, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
}

uint64_t sub_1E4691DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *(v7 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange);

  sub_1E4681FAC(a1, sub_1E466AFC4, v8);
}

uint64_t sub_1E4691E58(uint64_t a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange);

  sub_1E46835D4(a1);
}

uint64_t sub_1E4691EAC()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1E4698374;
  *(v3 + 24) = v1;
  v6[4] = sub_1E467A478;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1E46679F4;
  v6[3] = &unk_1F5E64BE0;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4691FE4()
{
  v1 = sub_1E4709CCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1, v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v0 + 120);
  v9 = *(*v0 + 128);
  v8(v5);
  sub_1E4692214(v7, 0x646F547261656C63, 0xEA00000000007961);
  return (*(v2 + 8))(v7, v1);
}

Swift::Void __swiftcall ReadingHistoryDataStore.clearToday()()
{
  v1 = sub_1E4709CCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x1EEE9AC00](v1, v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v8(v5);
  sub_1E4692214(v7, 0x646F547261656C63, 0xEA00000000007961);
  (*(v2 + 8))(v7, v1);
}

uint64_t sub_1E4692214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E4709CCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v3 + 144);
  (*(v8 + 16))(v12, a1, v7, v11);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v13, v12, v7);
  *(v15 + v14) = v3;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1E4697E40;
  *(v17 + 24) = v15;
  aBlock[4] = sub_1E467A478;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46679F4;
  aBlock[3] = &unk_1F5E64F00;
  v18 = _Block_copy(aBlock);

  dispatch_sync(v21, v18);
  _Block_release(v18);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4692468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = a3;
  v75 = a4;
  v65 = a2;
  v73 = a1;
  v5 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v72 = &v62 - v8;
  v69 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v9 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69, v10);
  v67 = &v62 - v11;
  v12 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v15);
  v66 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v62 - v19;
  v21 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v25 = &v62 - v24;
  v26 = type metadata accessor for ReadingHistoryModel(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v68 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v71 = &v62 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v62 - v35;
  v37 = sub_1E4709CCC();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37, v40);
  v42 = &v62 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v44 = v13[8];
  v70 = v38;
  v63 = *(v38 + 16);
  v63(v42, v43 + v44, v37);
  v64 = type metadata accessor for ReadingHistoryModel;
  sub_1E4697B6C(v43, v36, type metadata accessor for ReadingHistoryModel);
  sub_1E46A79EC(v73);
  type metadata accessor for ReadingHistoryDataStore(0);
  sub_1E4697B6C(v43, v20, type metadata accessor for ReadingHistoryDataStore.State);
  sub_1E46857BC(v20, v36, v42, v25);
  sub_1E4697478(v20, type metadata accessor for ReadingHistoryDataStore.State);
  v45 = v71;
  sub_1E4688298(v36, v25, v71);
  sub_1E4697478(v36, type metadata accessor for ReadingHistoryModel);
  sub_1E4697DD8(v45, v36, type metadata accessor for ReadingHistoryModel);
  v46 = v66;
  sub_1E4697B6C(v36, v66, type metadata accessor for ReadingHistoryModel);
  v47 = v46 + v13[7];
  v73 = v25;
  sub_1E465E0B0(v25, v47, &qword_1ECF74C40, &unk_1E471C980);
  v48 = v46 + v13[8];
  v71 = v37;
  v63(v48, v42, v37);
  v49 = v42;
  v50 = v46;
  v51 = v67;
  sub_1E46A38A8(v49, (v46 + v13[9]));
  v52 = v65;
  v53 = *(*(v65 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) + 16);

  v54 = v69;
  sub_1E470B37C();

  v55 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  v56 = v72;
  (*(*(v55 - 8) + 56))(v72, 1, 2, v55);
  sub_1E4697C3C(v50, v51, type metadata accessor for ReadingHistoryModel);
  sub_1E4697BD4(v56, v51 + *(v54 + 48), &unk_1ECF74C60, &qword_1E471C910);
  sub_1E4689F54(v50, v51, v74, v75);
  sub_1E4658550(v52 + 56, v76);
  v57 = v77;
  v58 = v78;
  sub_1E465057C(v76, v77);
  v59 = v43;
  v60 = v68;
  sub_1E4697B6C(v59, v68, v64);
  (*(v58 + 48))(v60, v57, v58);
  sub_1E4697478(v60, type metadata accessor for ReadingHistoryModel);
  sub_1E4697478(v50, type metadata accessor for ReadingHistoryDataStore.State);
  sub_1E465E050(v73, &qword_1ECF74C40, &unk_1E471C980);
  sub_1E4697478(v36, type metadata accessor for ReadingHistoryModel);
  (*(v70 + 8))(v49, v71);
  sub_1E4658A0C(v76);
  return sub_1E465E050(v51, &qword_1ECF74A00, &unk_1E471D5B0);
}

uint64_t ReadingHistoryDataStore.serializedModel(_:)(void *a1)
{
  v2 = v1;
  v12 = xmmword_1E471B810;
  v4 = *(v1 + 144);
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = v2;
  v5[4] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E4697618;
  *(v6 + 24) = v5;
  v11[4] = sub_1E467A478;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E46679F4;
  v11[3] = &unk_1F5E64A08;
  v7 = _Block_copy(v11);

  v8 = a1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;
    sub_1E465DD8C(v12, *(&v12 + 1));
    sub_1E465DDA0(v10, *(&v10 + 1));

    return v10;
  }

  return result;
}

uint64_t sub_1E4692C54(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1E470AB3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReadingHistoryModel(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  sub_1E4697B6C(a2 + v15, v14, type metadata accessor for ReadingHistoryModel);
  (*(v5 + 104))(v9, *MEMORY[0x1E6995278], v4);
  sub_1E4698194(&qword_1EE2ADA90, type metadata accessor for ReadingHistoryModel);
  v16 = sub_1E470ABAC();
  v18 = v17;
  (*(v5 + 8))(v9, v4);
  sub_1E4697478(v14, type metadata accessor for ReadingHistoryModel);
  v19 = *a1;
  v20 = a1[1];
  *a1 = v16;
  a1[1] = v18;
  return sub_1E465DDA0(v19, v20);
}

Swift::Void __swiftcall ReadingHistoryDataStore.forceSummarizeAndPrune(year:month:)(Swift::Int year, Swift::Int month)
{
  v3 = v2;
  v6 = *(v2 + 144);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = year;
  v7[4] = month;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E4697624;
  *(v8 + 24) = v7;
  v10[4] = sub_1E467A478;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1E46679F4;
  v10[3] = &unk_1F5E64A80;
  v9 = _Block_copy(v10);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

uint64_t sub_1E46930E8(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v3 = *v2;
  v69 = a2;
  v70 = v3;
  v4 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v67 = &v60 - v7;
  v65 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v8 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65, v9);
  v64 = &v60 - v10;
  v11 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v71 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v61 = &v60 - v18;
  v19 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v23 = &v60 - v22;
  v24 = type metadata accessor for ReadingHistoryModel(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8, v26);
  v63 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v60 - v30;
  v32 = sub_1E4709CCC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32, v35);
  v37 = &v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v2 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v39 = v12[8];
  v68 = v33;
  v40 = *(v33 + 16);
  v40(v37, v38 + v39, v32);
  v62 = v38;
  sub_1E4697B6C(v38, v31, type metadata accessor for ReadingHistoryModel);
  sub_1E46A8040(v66, v69);
  v41 = v38;
  v42 = v61;
  sub_1E4697B6C(v41, v61, type metadata accessor for ReadingHistoryDataStore.State);
  sub_1E46857BC(v42, v31, v37, v23);
  sub_1E4697478(v42, type metadata accessor for ReadingHistoryDataStore.State);
  v43 = v71;
  sub_1E4697B6C(v31, v71, type metadata accessor for ReadingHistoryModel);
  v44 = v43 + v12[7];
  v70 = v23;
  sub_1E465E0B0(v23, v44, &qword_1ECF74C40, &unk_1E471C980);
  v45 = v43 + v12[8];
  v69 = v32;
  v40(v45, v37, v32);
  v46 = (v43 + v12[9]);
  v66 = v37;
  sub_1E46A38A8(v37, v46);
  v47 = v60;
  v48 = *(*(v60 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) + 16);

  v50 = v64;
  v49 = v65;
  sub_1E470B37C();

  v51 = *(v49 + 48);
  v52 = v67;
  sub_1E465E0B0(v50 + v51, v67, &unk_1ECF74C60, &qword_1E471C910);
  sub_1E4697C3C(v31, v50, type metadata accessor for ReadingHistoryModel);
  v53 = v50 + v51;
  v54 = v71;
  v55 = v52;
  v56 = v63;
  sub_1E4697BD4(v55, v53, &unk_1ECF74C60, &qword_1E471C910);
  sub_1E4689F54(v54, v50, 0xD000000000000016, 0x80000001E47189C0);
  sub_1E4658550(v47 + 56, v72);
  v57 = v73;
  v58 = v74;
  sub_1E465057C(v72, v73);
  sub_1E4697B6C(v62, v56, type metadata accessor for ReadingHistoryModel);
  (*(v58 + 48))(v56, v57, v58);
  sub_1E4697478(v56, type metadata accessor for ReadingHistoryModel);
  sub_1E4697478(v54, type metadata accessor for ReadingHistoryDataStore.State);
  sub_1E465E050(v70, &qword_1ECF74C40, &unk_1E471C980);
  sub_1E4697478(v31, type metadata accessor for ReadingHistoryModel);
  (*(v68 + 8))(v66, v69);
  sub_1E4658A0C(v72);
  return sub_1E465E050(v50, &qword_1ECF74A00, &unk_1E471D5B0);
}

uint64_t ReadingHistoryDataStore.readingHistoryModelLoadedState()()
{
  v1 = *(v0 + 144);
  sub_1E4650534(&unk_1ECF74C78, &qword_1E471D5C0);
  return sub_1E470B37C();
}

uint64_t sub_1E4693730@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - v7;
  v9 = *(*(a1 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange) + 16);

  sub_1E470B37C();

  LOBYTE(v9) = v8[*(v4 + 44)];
  result = sub_1E465E050(v8, &qword_1ECF74A00, &unk_1E471D5B0);
  *a2 = v9;
  return result;
}

uint64_t sub_1E469383C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E46B864C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E46945B4(v5);
  *a1 = v2;
  return result;
}

void sub_1E46938A8(void **a1)
{
  v2 = *(sub_1E4709CCC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E46B8660(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1E46946AC(v5);
  *a1 = v3;
}

char *sub_1E4693950(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1E4650534(&qword_1ECF74CC8, &unk_1E471D818);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1E4693A78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1E4650534(&qword_1ECF74BF0, &qword_1E471D850);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}