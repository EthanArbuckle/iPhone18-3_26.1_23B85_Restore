uint64_t FormatTagBinding.Bool.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v23;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5117B80;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C78E74();
    v24 = 0;
    v25 = 0;
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *v13 = byte_1D72E0C20[v26];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C78E74()
{
  result = qword_1EDF2FC30;
  if (!qword_1EDF2FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FC30);
  }

  return result;
}

unint64_t sub_1D5C78F28()
{
  result = qword_1EDF2FC38;
  if (!qword_1EDF2FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FC38);
  }

  return result;
}

uint64_t sub_1D5C78F7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C78FAC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C78FAC()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C79000()
{
  result = qword_1EDF2C300;
  if (!qword_1EDF2C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C300);
  }

  return result;
}

void sub_1D5C79054()
{
  if (!qword_1EDF254B0)
  {
    sub_1D5C790F0();
    sub_1D5C996D4();
    sub_1D5C99780();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF254B0);
    }
  }
}

unint64_t sub_1D5C790F0()
{
  result = qword_1EDF2C318;
  if (!qword_1EDF2C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C318);
  }

  return result;
}

unint64_t sub_1D5C79148()
{
  result = qword_1EDF2C308;
  if (!qword_1EDF2C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C308);
  }

  return result;
}

uint64_t sub_1D5C791A0()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x6973736572707865;
  }
}

unint64_t sub_1D5C791D8()
{
  result = qword_1EDF315C8;
  if (!qword_1EDF315C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF315C8);
  }

  return result;
}

uint64_t sub_1D5C7922C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1023;
    if (a3 >= 0x3FF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FF | ((-a2 & 0x3FF) << 9);
      *result = (v3 | (v3 << 57)) & 0x3000000000000007;
      *(result + 8) = 0;
      *(result + 16) = ((v3 >> 5) | (v3 << 52)) & 0x3000000000000007;
    }
  }

  return result;
}

void sub_1D5C79298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v14 = v13;
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v15 = *(a5 + 16);
  v16 = *(a6 + 16);
  if (v16)
  {
    v24 = v13;
    v17 = sub_1D5B9A6D8(v16, 0);
    v18 = sub_1D5B9A6EC(aBlock, v17 + 4, v16, a6);

    sub_1D5B87E38();
    if (v18 != v16)
    {
      __break(1u);
      goto LABEL_8;
    }

    v14 = v24;
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5B7E810(v17);

  v19 = sub_1D726265C();

  v20 = [v15 fetchOperationForTagsWithIDs_];

  if (v20)
  {
    [v20 setQualityOfService_];
    [v20 setRelativePriority_];
    v21 = v20;
    [v21 setShouldFailOnMissingObjects_];
    [v21 setCachePolicy_];
    [v21 setMaximumCachedAge_];
    [v21 setCanSendFetchCompletionSynchronously_];
    v22 = swift_allocObject();
    v22[2] = a3;
    v22[3] = a4;
    v22[4] = a6;
    v22[5] = sub_1D5B7E910;
    v22[6] = v14;
    aBlock[4] = sub_1D5C44E08;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5C38428;
    aBlock[3] = &block_descriptor_53;
    v23 = _Block_copy(aBlock);

    [v21 setFetchCompletionBlock_];
    _Block_release(v23);

    [v21 start];
    return;
  }

LABEL_8:
  __break(1u);
}

uint64_t sub_1D5C79578()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C795B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C795F8(uint64_t *a1)
{
  v3 = v1;
  v2[6] = v3;
  v2[7] = *v3;
  v5 = sub_1D725C34C();
  v2[8] = v5;
  v2[9] = *(v5 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v6 = sub_1D725C37C();
  v2[12] = v6;
  v2[13] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a1;
  v2[14] = v7;
  v2[15] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D5C87184, 0, 0);
}

uint64_t sub_1D5C79750(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D5B64684;

  return FeedCursorFactory.createCursor(from:state:cursorModifier:)(a1, a2, a3, a4, a5);
}

unint64_t sub_1D5C7983C()
{
  result = qword_1EDF2B280;
  if (!qword_1EDF2B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B280);
  }

  return result;
}

unint64_t sub_1D5C79890()
{
  result = qword_1EDF2ED00;
  if (!qword_1EDF2ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED00);
  }

  return result;
}

unint64_t sub_1D5C798E4()
{
  result = qword_1EDF309E8[0];
  if (!qword_1EDF309E8[0])
  {
    sub_1D5C30060(255, &qword_1EDF309E0, sub_1D5C48F64, &type metadata for FormatSystemColor, type metadata accessor for FormatAlphaColor);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF309E8);
  }

  return result;
}

void sub_1D5C79974(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
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

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

uint64_t FormatAlphaColor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v51 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v53 = &v45 - v8;
  v54 = v7;
  v56 = v9;
  v10 = _s10CodingKeysOMa_227();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  *&v59 = v10;
  *(&v59 + 1) = WitnessTable;
  v52 = WitnessTable;
  v50 = v12;
  v60 = v12;
  v61 = v13;
  v14 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v15 = sub_1D726435C();
  v55 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v45 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v62;
  sub_1D7264B0C();
  v20 = v19;
  if (v19)
  {
    v21 = a1;
    goto LABEL_14;
  }

  v45 = v13;
  v46 = 0;
  v47 = v18;
  v62 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_1D7264AFC();
  v23 = Dictionary<>.errorOnUnknownKeys.getter(v22);

  v21 = a1;
  if ((v23 & 1) == 0)
  {
LABEL_11:
    v59 = 0uLL;
    LOBYTE(v60) = 0;
    v37 = v53;
    v38 = v54;
    v39 = v62;
    v41 = v46;
    v40 = v47;
    sub_1D726431C();
    if (!v41)
    {
      v59 = xmmword_1D728CF30;
      LOBYTE(v60) = 0;
      sub_1D5B57870();
      sub_1D726427C();
      (*(v55 + 8))(v40, v39);
      v42 = v57;
      v43 = v58;
      v44 = v48;
      (*(v51 + 32))(v48, v37, v38);
      sub_1D5C7A0B0(v44, v42, v43, v38, v49);
      return __swift_destroy_boxed_opaque_existential_1(v21);
    }

    (*(v55 + 8))(v40, v39);
    v20 = v41;
LABEL_14:
    sub_1D61E4FBC(v21, v20);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v24 = 0;
  v25 = (sub_1D726433C() + 48);
  v26 = v52;
  while (1)
  {
    if (v24 == sub_1D726279C())
    {

      goto LABEL_11;
    }

    v27 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v27 & 1) == 0)
    {
      break;
    }

    v29 = *v25;
    v59 = *(v25 - 1);
    LOBYTE(v60) = v29;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_17;
    }

    v30 = sub_1D6AFC82C(v14);
    ++v24;
    v25 += 24;
    if (v31)
    {
      v32 = v30;
      v33 = v31;

      v34 = sub_1D6AFC690(v10, v26, v50, v45);
      sub_1D5E2D970();
      v35 = swift_allocError();
      *v36 = v32;
      *(v36 + 8) = v33;
      *(v36 + 16) = v34;
      v20 = v35;
      *(v36 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v55 + 8))(v47, v62);
      goto LABEL_14;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_1D5C7A05C()
{
  result = qword_1EDF2ECF8;
  if (!qword_1EDF2ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ECF8);
  }

  return result;
}

uint64_t sub_1D5C7A0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for FormatAlphaColor();
  v9 = a5 + *(result + 36);
  *v9 = a2;
  *(v9 + 8) = a3 & 1;
  return result;
}

uint64_t sub_1D5C7A148@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27[0] = a5;
  v27[1] = a4;
  v29 = a3;
  v7 = v5;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v28 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v27 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v5)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v7);
    swift_willThrow();
  }

  else
  {
    v14 = v29;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v18 = v28;
    if (v16)
    {
      v19 = sub_1D726433C();
      v20 = (v19 + 40);
      v21 = *(v19 + 16) + 1;
      while (--v21)
      {
        v22 = v20 + 2;
        v23 = *v20;
        v20 += 2;
        if (v23 >= 4)
        {
          v24 = *(v22 - 3);

          sub_1D5E2D970();
          v7 = swift_allocError();
          *v25 = v24;
          *(v25 + 8) = v23;
          *(v25 + 16) = a2;
          *(v25 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v18 + 8))(v13, v10);
          goto LABEL_9;
        }
      }
    }

    v14(v17);
    v30 = 0;
    v31 = 0;
    sub_1D726431C();
    (*(v18 + 8))(v13, v10);
    *v27[0] = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C7A45C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C495B8();
  *a1 = result;
  return result;
}

unint64_t sub_1D5C7A48C()
{
  result = qword_1EDF30760;
  if (!qword_1EDF30760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30760);
  }

  return result;
}

unint64_t sub_1D5C7A4E0()
{
  result = qword_1EDF11508;
  if (!qword_1EDF11508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11508);
  }

  return result;
}

unint64_t sub_1D5C7A538(uint64_t a1)
{
  sub_1D5C2BB98(0, &unk_1EDF05478, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v23 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D6060300();
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v23 = *(v4 + 72);
    v24 = v10;

    while (1)
    {
      sub_1D606076C(v11, v7, &unk_1EDF05478, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType);
      v12 = *v7;
      v13 = v7[1];
      result = sub_1D5B69D90(*v7, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v9[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v9[7];
      sub_1D5C2BC18(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
      result = sub_1D5C5E244(v7 + v24, v18 + *(*(v19 - 8) + 72) * v16, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v23;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1D5C7A794()
{
  result = qword_1EDF23408;
  if (!qword_1EDF23408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23408);
  }

  return result;
}

unint64_t sub_1D5C7A7EC()
{
  result = qword_1EDF0B710;
  if (!qword_1EDF0B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B710);
  }

  return result;
}

unint64_t sub_1D5C7A840()
{
  result = qword_1EDF0B718;
  if (!qword_1EDF0B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B718);
  }

  return result;
}

uint64_t sub_1D5C7A894(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C8CBC8(255, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FormatDecoration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v66 = a2;
  sub_1D5C8CD38();
  v70 = v3;
  v65 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v69 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E528();
  v7 = v6;
  *&v67 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C7B2C4();
  v12 = v11;
  v68 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C4C63C();
  sub_1D5B58B84(&qword_1EDF256D8, sub_1D5C4C63C);
  v16 = v71;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    v34 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v63 = v7;
  v64 = v10;
  v18 = a1[3];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v19 = sub_1D7264AFC();
  LOBYTE(v18) = Dictionary<>.errorOnUnknownKeys.getter(v19);

  v20 = v12;
  v21 = v68;
  v22 = v69;
  v23 = v70;
  if (v18)
  {
    v24 = sub_1D726433C();
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = (v24 + 48);
      while (*v26 != 1)
      {
        v26 += 24;
        if (!--v25)
        {
          goto LABEL_7;
        }
      }

      v31 = *(v26 - 2);
      v30 = *(v26 - 1);

      v32 = sub_1D661A3D8();
      sub_1D5E2D970();
      v17 = swift_allocError();
      *v33 = v31;
      *(v33 + 8) = v30;
      *(v33 + 16) = v32;
      *(v33 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v21 + 8))(v15, v20);
      a1 = v71;
      goto LABEL_10;
    }

LABEL_7:
  }

  v27 = sub_1D5C31D18(v15, 0, 0, 0, sub_1D5C7B2C4);
  v29 = v28;
  v75 = xmmword_1D728CF30;
  v76 = 0;
  v61 = sub_1D726422C();
  v62 = v36;
  v75 = xmmword_1D7297410;
  v76 = 0;
  v59 = sub_1D726422C();
  v60 = v37;
  v75 = xmmword_1D72BAA60;
  v76 = 0;
  sub_1D5C4C8EC();
  sub_1D726431C();
  v57 = v27;
  v38 = v73;
  v58 = xmmword_1D72BAA70;
  v75 = xmmword_1D72BAA70;
  v76 = 0;
  if (sub_1D726434C())
  {
    v73 = v58;
    v74 = 0;
    sub_1D5C34074(0, &qword_1EDF1AD10, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E64E8]);
    sub_1D6685F50();
    sub_1D726431C();
    *&v58 = v72;
  }

  else
  {
    *&v58 = sub_1D5C8DCC0(&unk_1F5114B08);
  }

  v75 = xmmword_1D72BAA80;
  v76 = 0;
  v39 = sub_1D726425C();
  v78 = v40;
  v55 = v39;
  v56 = xmmword_1D72BAA90;
  v75 = xmmword_1D72BAA90;
  v76 = 0;
  if (sub_1D726434C())
  {
    v54 = v38;
    v73 = v56;
    v74 = 0;
    sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528);
    v41 = v63;
    sub_1D726431C();
    v42 = v64;
    *&v56 = sub_1D725A74C();
    (*(v67 + 8))(v42, v41);
    v38 = v54;
  }

  else
  {
    *&v56 = MEMORY[0x1E69E7CC0];
  }

  v67 = xmmword_1D72BAAA0;
  v75 = xmmword_1D72BAAA0;
  v76 = 0;
  if (sub_1D726434C())
  {
    v73 = v67;
    v74 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    sub_1D726431C();
    v43 = sub_1D725A74C();
    v44 = v22;
    v45 = v43;
    (*(v65 + 8))(v44, v23);
  }

  else
  {
    v45 = MEMORY[0x1E69E7CD0];
  }

  v75 = xmmword_1D72BAAB0;
  v76 = 0;
  sub_1D5C4D6F4();
  sub_1D726427C();
  (*(v21 + 8))(v15, v20);
  v46 = v73;
  v47 = WORD4(v73);
  v48 = BYTE10(v73);
  swift_bridgeObjectRelease_n();
  v49 = v78 & 1;
  v77 = v78 & 1;
  v50 = v66;
  *v66 = v57;
  v50[1] = v29;
  v51 = v62;
  v50[2] = v61;
  v50[3] = v51;
  v52 = v60;
  v50[4] = v59;
  v50[5] = v52;
  v53 = v58;
  v50[6] = v38;
  v50[7] = v53;
  v50[8] = v55;
  *(v50 + 72) = v49;
  *(v50 + 73) = v72;
  *(v50 + 19) = *(&v72 + 3);
  v50[10] = v56;
  v50[11] = v45;
  v50[12] = v46;
  *(v50 + 106) = v48;
  *(v50 + 52) = v47;
  v34 = v71;
  return __swift_destroy_boxed_opaque_existential_1(v34);
}

void sub_1D5C7B2C4()
{
  if (!qword_1EDF1A278)
  {
    sub_1D5C4C63C();
    sub_1D5B58B84(&qword_1EDF256D8, sub_1D5C4C63C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A278);
    }
  }
}

unint64_t sub_1D5C7B358()
{
  result = qword_1EDF30540;
  if (!qword_1EDF30540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30540);
  }

  return result;
}

uint64_t FormatGradient.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  sub_1D5C8D8C0();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C4CA84();
  sub_1D5B58B84(&qword_1EDF24C58, sub_1D5C4CA84);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v33;
  v14 = v7;
  v15 = v10;
  if (v12)
  {
    v16 = sub_1D726433C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v17)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v18 - 2);
      v20 = *(v18 - 1);

      v22 = sub_1D661B838();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v15, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C34D84(0, &qword_1EDF1B418, &type metadata for FormatColor, MEMORY[0x1E69E62F8]);
  sub_1D5C4CBCC();
  v31 = 0uLL;
  LOBYTE(v32) = 0;
  sub_1D726431C();
  v19 = v29;
  sub_1D5C34D84(0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v31 = xmmword_1D728CF30;
  LOBYTE(v32) = 0;
  sub_1D5C4CCF8();
  sub_1D726427C();
  v25 = v29;
  v29 = xmmword_1D7297410;
  v30 = 0;
  sub_1D5C4CD8C();
  sub_1D726431C();
  v27 = v32;
  v28 = v31;
  v31 = xmmword_1D72BAA60;
  LOBYTE(v32) = 0;
  sub_1D5C8DC6C();
  sub_1D726427C();
  (*(v14 + 8))(v10, v6);
  *v13 = v19;
  *(v13 + 8) = v25;
  v26 = v27;
  *(v13 + 16) = v28;
  *(v13 + 32) = v26;
  *(v13 + 48) = v29;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C7B81C()
{
  result = qword_1EDF32808;
  if (!qword_1EDF32808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32808);
  }

  return result;
}

unint64_t sub_1D5C7B870()
{
  result = qword_1EDF34120;
  if (!qword_1EDF34120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34120);
  }

  return result;
}

unint64_t sub_1D5C7B8C4()
{
  result = qword_1EDF34138;
  if (!qword_1EDF34138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34138);
  }

  return result;
}

uint64_t sub_1D5C7B92C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D5B558C4(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t FormatOptionValue.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v65 = a2;
  sub_1D5C4E168();
  *&v64 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v62 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8E028();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v12 = v11;
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v61 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v16 = v66;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
    v18 = a1;
LABEL_24:
    sub_1D61E4FBC(v18, v17);
    swift_willThrow();
  }

  else
  {
    *&v66 = v10;
    v61[1] = v7;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v19 = sub_1D7264AFC();
    v20 = Dictionary<>.errorOnUnknownKeys.getter(v19);

    v18 = a1;
    v21 = v65;
    v22 = v63;
    v23 = v15;
    if (v20)
    {
      v24 = v12;
      v25 = sub_1D726433C();
      v26 = (v25 + 40);
      v27 = *(v25 + 16) + 1;
      while (--v27)
      {
        v28 = v26 + 2;
        v29 = *v26;
        v26 += 2;
        if (v29 >= 4)
        {
          v30 = *(v28 - 3);

          sub_1D5E2D970();
          v17 = swift_allocError();
          *v31 = v30;
          *(v31 + 8) = v29;
          *(v31 + 16) = &unk_1F5111428;
          *(v31 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v22 + 8))(v23, v24);
          goto LABEL_24;
        }
      }

      v12 = v24;
    }

    sub_1D5C4E254();
    *v67 = 0uLL;
    sub_1D726431C();
    v32 = v62;
    switch(v69)
    {
      case 1:
        v69 = xmmword_1D7279980;
        sub_1D5CC6C48();
        sub_1D726431C();
        v33 = v21;
        (*(v22 + 8))(v23, v12);
        v66 = *v67;
        v51 = *&v67[16];
        v64 = v68;
        v52 = swift_allocObject();
        *(v52 + 16) = v66;
        *(v52 + 32) = v51;
        *(v52 + 40) = v64;
        v36 = v52 | 0x1000000000000000;
        break;
      case 2:
        *v67 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC886300, sub_1D5C8E028);
        sub_1D726431C();
        v33 = v21;
        (*(v22 + 8))(v23, v12);
        v45 = swift_allocBox();
        sub_1D5C8F76C(v66, v46, sub_1D5C8E028);
        v36 = v45 | 0x2000000000000000;
        break;
      case 3:
        v33 = v21;
        sub_1D5C30060(0, &qword_1EDF40020, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatSelectorValue);
        v69 = xmmword_1D7279980;
        sub_1D5C5FCF4();
        sub_1D726431C();
        (*(v22 + 8))(v23, v12);
        v47 = *v67;
        v48 = swift_allocObject();
        *(v48 + 16) = v47;
        v36 = v48 | 0x3000000000000000;
        break;
      case 4:
        v33 = v21;
        sub_1D5C34074(0, &qword_1EDF2C0C0, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatSelectorValue);
        v69 = xmmword_1D7279980;
        sub_1D5CA07C8();
        sub_1D726431C();
        (*(v22 + 8))(v23, v12);
        v40 = *v67;
        v41 = swift_allocObject();
        *(v41 + 16) = v40;
        v36 = v41 | 0x4000000000000000;
        break;
      case 5:
        v33 = v21;
        sub_1D5C34074(0, &qword_1EDF40010, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatSelectorValue);
        v69 = xmmword_1D7279980;
        sub_1D5C88B68();
        sub_1D726431C();
        (*(v22 + 8))(v23, v12);
        v53 = *v67;
        v66 = *&v67[8];
        v38 = swift_allocObject();
        *(v38 + 16) = v53;
        *(v38 + 24) = v66;
        v39 = 0x5000000000000000;
        goto LABEL_26;
      case 6:
        *v67 = xmmword_1D7279980;
        sub_1D5B58B84(qword_1EDF40048, sub_1D5C4E168);
        sub_1D726431C();
        v33 = v21;
        (*(v22 + 8))(v23, v12);
        v55 = swift_allocBox();
        sub_1D5C8F76C(v32, v56, sub_1D5C4E168);
        v36 = v55 | 0x6000000000000000;
        break;
      case 7:
        *v67 = xmmword_1D7279980;
        sub_1D5B570F8();
        sub_1D726431C();
        v33 = v21;
        (*(v22 + 8))(v23, v12);
        v49 = v69;
        v50 = swift_allocObject();
        *(v50 + 16) = v49;
        v36 = v50 | 0x7000000000000000;
        break;
      case 8:
        v33 = v21;
        sub_1D666651C();
        v69 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC8862F8, sub_1D666651C);
        sub_1D726431C();
        (*(v22 + 8))(v23, v12);
        v59 = *v67;
        v60 = swift_allocObject();
        *(v60 + 16) = v59;
        v36 = v60 | 0x8000000000000000;
        break;
      case 9:
        *v67 = xmmword_1D7279980;
        sub_1D5B57A54();
        sub_1D726431C();
        v33 = v21;
        (*(v22 + 8))(v23, v12);
        v44 = v69;
        v38 = swift_allocObject();
        *(v38 + 16) = v44;
        v39 = 0x9000000000000000;
        goto LABEL_26;
      case 10:
        *v67 = xmmword_1D7279980;
        sub_1D5B57AFC();
        sub_1D726431C();
        v33 = v21;
        (*(v22 + 8))(v23, v12);
        v58 = v69;
        v38 = swift_allocObject();
        *(v38 + 16) = v58;
        v39 = 0xA000000000000000;
        goto LABEL_26;
      case 11:
        v33 = v21;
        sub_1D5C30060(0, &qword_1EC8862D0, sub_1D6666438, &type metadata for FormatOptionType, type metadata accessor for FormatValue);
        *v67 = xmmword_1D7279980;
        sub_1D666648C();
        sub_1D726431C();
        (*(v22 + 8))(v23, v12);
        v37 = v69;
        v38 = swift_allocObject();
        *(v38 + 16) = v37;
        v39 = 0xB000000000000000;
        goto LABEL_26;
      case 12:
        *v67 = xmmword_1D7279980;
        sub_1D5B556F4();
        sub_1D726431C();
        v33 = v21;
        (*(v22 + 8))(v23, v12);
        v42 = v69;
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        v36 = v43 | 0xC000000000000000;
        break;
      case 13:
        *v67 = xmmword_1D7279980;
        sub_1D5B55FD0();
        sub_1D726431C();
        v33 = v21;
        (*(v22 + 8))(v23, v12);
        v54 = v69;
        v38 = swift_allocObject();
        *(v38 + 16) = v54;
        v39 = 0xD000000000000000;
LABEL_26:
        v36 = v38 | v39;
        break;
      default:
        v33 = v21;
        sub_1D5C34074(0, &qword_1EDF40000, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatSelectorValue);
        v69 = xmmword_1D7279980;
        sub_1D5C4E3C0();
        sub_1D726431C();
        (*(v22 + 8))(v23, v12);
        v34 = v67[0];
        v35 = *&v67[8];
        v36 = swift_allocObject();
        *(v36 + 16) = v34;
        *(v36 + 24) = v35;
        break;
    }

    *v33 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1D5C7C738()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C7C770()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C7C7E4()
{

  return swift_deallocObject();
}

unint64_t sub_1D5C7C840()
{
  result = qword_1EDF45B80;
  if (!qword_1EDF45B80)
  {
    sub_1D72585BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF45B80);
  }

  return result;
}

unint64_t sub_1D5C7C898()
{
  result = qword_1EDF405F0;
  if (!qword_1EDF405F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF405F0);
  }

  return result;
}

uint64_t sub_1D5C7C8EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C7C91C();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C7C91C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for FormatGlassEffectVariant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D5C7C9F8(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x726F7463656C6573;
  }

  return 1885433183;
}

void sub_1D5C7CA48()
{
  if (!qword_1EDF3BBC8)
  {
    type metadata accessor for FormatCompilerSlotDefinition(255);
    sub_1D5B58B84(&qword_1EDF44520, type metadata accessor for FormatCompilerSlotDefinition);
    sub_1D5B58B84(&qword_1EDF44528, type metadata accessor for FormatCompilerSlotDefinition);
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BBC8);
    }
  }
}

unint64_t sub_1D5C7CB14()
{
  result = qword_1EDF29C88;
  if (!qword_1EDF29C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C88);
  }

  return result;
}

void sub_1D5C7CB68()
{
  if (!qword_1EDF25310)
  {
    sub_1D5C86A88();
    sub_1D5C8F138();
    sub_1D5C8F194();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25310);
    }
  }
}

unint64_t sub_1D5C7CBEC()
{
  result = qword_1EDF29C48;
  if (!qword_1EDF29C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C48);
  }

  return result;
}

unint64_t sub_1D5C7CC44()
{
  result = qword_1EDF29C20;
  if (!qword_1EDF29C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C20);
  }

  return result;
}

unint64_t sub_1D5C7CC9C()
{
  result = qword_1EDF29C28;
  if (!qword_1EDF29C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C28);
  }

  return result;
}

uint64_t FormatFileReference.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v204 = a1;
  v189 = a4;
  v178 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v202 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1D5B5C040(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v180 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v181 = &v165 - v13;
  v192 = type metadata accessor for FormatMetadata();
  v179 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192, v14);
  v177 = (&v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v176 = (&v165 - v18);
  sub_1D5C5039C();
  v182 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v183 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v197 = v22;
  v196 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v201 = &v165 - v24;
  sub_1D5B5C040(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], v7);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v173 = &v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v169 = &v165 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v172 = &v165 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v168 = &v165 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v185 = &v165 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v199 = &v165 - v42;
  v186 = sub_1D725BD1C();
  v191 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186, v43);
  v171 = &v165 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v175 = &v165 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v170 = &v165 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v174 = &v165 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v198 = &v165 - v56;
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v165 - v59;
  v61 = sub_1D7258D1C();
  MEMORY[0x1EEE9AC00](v61 - 8, v62);
  v63 = sub_1D7258D3C();
  v184 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v165 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C040(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], v7);
  MEMORY[0x1EEE9AC00](v67 - 8, v68);
  v70 = &v165 - v69;
  v194 = sub_1D72585BC();
  v190 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194, v71);
  v73 = &v165 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = a2;
  v200 = a3;
  v188 = type metadata accessor for FormatFileReference();
  v187 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188, v74);
  v193 = &v165 - v75;
  __swift_project_boxed_opaque_existential_1(v204, v204[3]);
  v76 = v203;
  sub_1D7264AEC();
  if (v76)
  {
    v77 = v76;
  }

  else
  {
    v165 = v66;
    v167 = v73;
    v166 = v63;
    v78 = v199;
    v203 = v60;
    v79 = v198;
    __swift_project_boxed_opaque_existential_1(&v205, v206);
    v93 = sub_1D72646FC();
    v95 = v94;
    __swift_destroy_boxed_opaque_existential_1(&v205);
    sub_1D725855C();
    v96 = v190;
    v97 = v194;
    if ((*(v190 + 48))(v70, 1, v194) != 1)
    {

      v106 = v167;
      (*(v96 + 32))(v167, v70, v97);
      (*(v96 + 16))(v193, v106, v97);
      v107 = v78;
      sub_1D725BD3C();
      v108 = v191;
      v109 = *(v191 + 48);
      v110 = v78;
      v111 = v186;
      if (v109(v110, 1, v186) == 1)
      {
        sub_1D725BCDC();
        if (v109(v107, 1, v111) != 1)
        {
          sub_1D5BFC734(v107, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        (*(v108 + 32))(v203, v107, v111);
      }

      v200 = 0;
      v112 = v185;
      sub_1D725BD3C();
      if (v109(v112, 1, v111) == 1)
      {
        sub_1D725BCCC();
        v113 = v109(v112, 1, v111) == 1;
        v114 = v112;
        v80 = v204;
        v115 = v111;
        v116 = v167;
        if (!v113)
        {
          sub_1D5BFC734(v114, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        (*(v108 + 32))(v79, v112, v111);
        v80 = v204;
        v115 = v111;
        v116 = v167;
      }

      sub_1D5B55504();
      v118 = v193;
      v119 = &v193[*(v117 + 48)];
      v120 = v192;
      sub_1D725BD3C();
      (*(v96 + 8))(v116, v194);
      *v119 = 0;
      *(v119 + 1) = 0;
      v121 = *(v191 + 32);
      v121(&v119[v120[5]], v203, v115);
      v121(&v119[v120[6]], v79, v115);
      v125 = v118;
      v122 = MEMORY[0x1E69E7CD0];
      *&v119[v120[8]] = MEMORY[0x1E69E7CD0];
      *&v119[v120[9]] = v122;
      *&v119[v120[10]] = v122;
      *&v119[v120[11]] = v122;
      v126 = v188;
      swift_storeEnumTagMultiPayload();
      goto LABEL_29;
    }

    sub_1D5BFC734(v70, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D7258D0C();
    sub_1D5B5C040(0, &qword_1EDF19560, sub_1D5BE1388, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(inited + 32) = 7107189;
    v99 = inited + 32;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = v93;
    *(inited + 56) = v95;
    sub_1D5BE1168(inited);
    swift_setDeallocating();
    sub_1D5D23EE8(v99, sub_1D5BE1388);
    sub_1D5B4CE34(&qword_1EC8901E8, MEMORY[0x1E6969C20]);
    v100 = v165;
    v101 = v166;
    sub_1D725826C();
    v102 = sub_1D7258D2C();
    (*(v184 + 8))(v100, v101);
    v77 = v102;
    swift_willThrow();
  }

  v80 = v204;
  __swift_project_boxed_opaque_existential_1(v204, v204[3]);
  sub_1D5C30408();
  v81 = v201;
  sub_1D7264B0C();
  v82 = v202;
  __swift_project_boxed_opaque_existential_1(v80, v80[3]);
  v83 = sub_1D7264AFC();
  v84 = Dictionary<>.errorOnUnknownKeys.getter(v83);

  v85 = v197;
  if (v84)
  {
    v86 = sub_1D726433C();
    v87 = (v86 + 40);
    v88 = *(v86 + 16) + 1;
    while (--v88)
    {
      v89 = v87 + 2;
      v90 = *v87;
      v87 += 2;
      if (v90 >= 4)
      {
        v91 = *(v89 - 3);

        sub_1D5E2D970();
        swift_allocError();
        *v92 = v91;
        *(v92 + 8) = v90;
        *(v92 + 16) = &unk_1F51188C0;
        *(v92 + 24) = xmmword_1D72874E0;
        swift_willThrow();

        (*(v196 + 8))(v81, v85);
        return __swift_destroy_boxed_opaque_existential_1(v80);
      }
    }
  }

  type metadata accessor for FormatFileReference.CodingType();
  v205 = 0uLL;
  swift_getWitnessTable();
  sub_1D726431C();
  if (v207)
  {
    v104 = v192;
    if (v207 == 1)
    {
      v205 = xmmword_1D7279980;
      sub_1D726431C();
      v205 = xmmword_1D72830B0;
      sub_1D5B4CE34(&qword_1EDF415C0, type metadata accessor for FormatMetadata);
      v105 = v180;
      sub_1D726427C();
      v127 = v104;
      v129 = v179 + 48;
      v128 = *(v179 + 48);
      if (v128(v105, 1, v127) == 1)
      {
        v200 = 0;
        v179 = v129;
        v130 = v169;
        sub_1D725BD3C();
        v131 = v191;
        v132 = *(v191 + 48);
        v133 = v186;
        if (v132(v130, 1, v186) == 1)
        {
          sub_1D725BCDC();
          v113 = v132(v130, 1, v133) == 1;
          v134 = v130;
          v135 = v171;
          if (!v113)
          {
            sub_1D5BFC734(v134, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
          }
        }

        else
        {
          (*(v131 + 32))(v175, v130, v133);
          v135 = v171;
        }

        v145 = v173;
        sub_1D725BD3C();
        if (v132(v145, 1, v133) == 1)
        {
          sub_1D725BCCC();
          if (v132(v145, 1, v133) != 1)
          {
            sub_1D5BFC734(v145, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
          }
        }

        else
        {
          (*(v191 + 32))(v135, v145, v133);
        }

        v146 = v192;
        v147 = v177;
        sub_1D725BD3C();

        v148 = v81;
        v142 = v147;
        (*(v196 + 8))(v148, v197);
        *v147 = 0;
        v147[1] = 0;
        v149 = *(v191 + 32);
        v149(v142 + v146[5], v175, v133);
        v149(v142 + v146[6], v135, v133);
        v150 = MEMORY[0x1E69E7CD0];
        *(v142 + v146[8]) = MEMORY[0x1E69E7CD0];
        *(v142 + v146[9]) = v150;
        *(v142 + v146[10]) = v150;
        *(v142 + v146[11]) = v150;
        v151 = v180;
        v152 = v128(v180, 1, v146);
        v143 = v195;
        v82 = v202;
        if (v152 != 1)
        {
          sub_1D5BFC734(v151, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
        }
      }

      else
      {
        (*(v196 + 8))(v81, v85);

        v142 = v177;
        sub_1D5C35728(v105, v177);
        v143 = v195;
      }

      v153 = *(swift_getTupleTypeMetadata2() + 48);
      v154 = v143;
      v125 = v193;
      (*(v178 + 32))(v193, v82, v154);
      sub_1D5C35728(v142, &v125[v153]);
      v126 = v188;
    }

    else
    {
      (*(v196 + 8))(v81, v85);

      v125 = v193;
      v126 = v188;
    }
  }

  else
  {
    v205 = xmmword_1D7279980;
    sub_1D5B4CE34(qword_1EDF419B8, sub_1D5C5039C);
    sub_1D726431C();
    v123 = v192;
    v205 = xmmword_1D72830B0;
    sub_1D5B4CE34(&qword_1EDF415C0, type metadata accessor for FormatMetadata);
    v124 = v181;
    sub_1D726427C();
    v136 = v123;
    v137 = *(v179 + 48);
    if (v137(v124, 1, v136) == 1)
    {
      v203 = v137;
      v200 = 0;
      v138 = v168;
      sub_1D725BD3C();
      v139 = v191;
      v140 = *(v191 + 48);
      v141 = v186;
      if (v140(v138, 1, v186) == 1)
      {
        sub_1D725BCDC();
        if (v140(v138, 1, v141) != 1)
        {
          sub_1D5BFC734(v138, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        (*(v139 + 32))(v174, v138, v141);
      }

      v155 = v172;
      sub_1D725BD3C();
      if (v140(v155, 1, v141) == 1)
      {
        v156 = v170;
        sub_1D725BCCC();
        if (v140(v155, 1, v141) != 1)
        {
          sub_1D5BFC734(v155, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
        }
      }

      else
      {
        v156 = v170;
        (*(v191 + 32))(v170, v155, v141);
      }

      v157 = v192;
      v158 = v176;
      sub_1D725BD3C();

      v159 = v81;
      v144 = v158;
      (*(v196 + 8))(v159, v197);
      *v158 = 0;
      v158[1] = 0;
      v160 = *(v191 + 32);
      v160(v144 + v157[5], v174, v141);
      v160(v144 + v157[6], v156, v141);
      v161 = MEMORY[0x1E69E7CD0];
      *(v144 + v157[8]) = MEMORY[0x1E69E7CD0];
      *(v144 + v157[9]) = v161;
      *(v144 + v157[10]) = v161;
      *(v144 + v157[11]) = v161;
      v162 = v181;
      if (v203(v181, 1, v157) != 1)
      {
        sub_1D5BFC734(v162, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
      }
    }

    else
    {
      (*(v196 + 8))(v81, v85);

      v144 = v176;
      sub_1D5C35728(v124, v176);
    }

    sub_1D5B55504();
    v164 = *(v163 + 48);
    v125 = v193;
    (*(v190 + 32))(v193, v183, v194);
    sub_1D5C35728(v144, &v125[v164]);
    v126 = v188;
  }

  swift_storeEnumTagMultiPayload();
LABEL_29:
  (*(v187 + 32))(v189, v125, v126);
  return __swift_destroy_boxed_opaque_existential_1(v80);
}

uint64_t FormatMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v85 = a2;
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v84 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v80 = &v65 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v83 = &v65 - v11;
  v12 = sub_1D725BD1C();
  v81 = *(v12 - 8);
  v82 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v65 - v18;
  sub_1D5B59B80(0, &qword_1EDF3C660, sub_1D5C50508, &type metadata for FormatMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v65 - v24;
  v26 = a1[3];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D5C50508();
  v27 = v87;
  sub_1D7264B0C();
  if (v27)
  {
    v87 = v27;
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  v78 = v15;
  v79 = v19;
  v28 = v22;
  v29 = v82;
  v30 = v83;
  v32 = v84;
  v31 = v85;
  LOBYTE(v92) = 0;
  v33 = v25;
  v77 = sub_1D726422C();
  v35 = v34;
  LOBYTE(v92) = 2;
  v75 = sub_1D726422C();
  v76 = v36;
  LOBYTE(v92) = 3;
  v73 = sub_1D726422C();
  v74 = v37;
  LOBYTE(v92) = 1;
  v38 = sub_1D726422C();
  v87 = 0;
  v68 = v38;
  v71 = v39;
  sub_1D5B59B28();
  v70 = v40;
  LOBYTE(v91) = 4;
  v41 = sub_1D5C7F090(&qword_1EDF3C7C8);
  v72 = v21;
  v69 = v41;
  v42 = v87;
  sub_1D726427C();
  if (v42)
  {
    v87 = v42;
    (*(v28 + 8))(v33, v72);

LABEL_8:

    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  v67 = v92;
  LOBYTE(v90) = 5;
  sub_1D726427C();
  v87 = 0;
  v70 = v91;
  sub_1D5B59B80(0, &qword_1EDF43B98, sub_1D5B5C29C, &type metadata for FeedPlatform, MEMORY[0x1E69E64E8]);
  LOBYTE(v89) = 6;
  v69 = sub_1D5C50624(&qword_1EDF3C7E0, sub_1D5C7F0F0);
  v43 = v87;
  sub_1D726427C();
  if (v43)
  {
    v87 = v43;
    (*(v28 + 8))(v33, v72);

    goto LABEL_8;
  }

  v66 = v90;
  v88 = 7;
  sub_1D726427C();
  v87 = 0;
  v69 = v33;
  v65 = v89;
  sub_1D725BD3C();
  v45 = v29;
  v46 = *(v81 + 48);
  v47 = v46(v30, 1, v45);
  v76 = v46;
  if (v47 == 1)
  {
    sub_1D725BCDC();
    v48 = v46(v30, 1, v45);
    v49 = v31;
    if (v48 != 1)
    {
      sub_1D5BFC674(v30, sub_1D5B5C268);
    }
  }

  else
  {
    (*(v81 + 32))(v79, v30, v45);
    v49 = v31;
  }

  v50 = v80;
  sub_1D725BD3C();
  v51 = v76;
  v52 = v32;
  if (v76(v50, 1, v45) == 1)
  {
    sub_1D725BCCC();
    v53 = v51(v50, 1, v45);
    v54 = v45;
    v55 = v70;
    v56 = v66;
    if (v53 != 1)
    {
      sub_1D5BFC674(v80, sub_1D5B5C268);
    }
  }

  else
  {
    (*(v81 + 32))(v78, v50, v45);
    v54 = v45;
    v55 = v70;
    v56 = v66;
  }

  sub_1D725BD3C();
  v57 = MEMORY[0x1E69E7CD0];
  v58 = v67;
  if (!v67)
  {
    v58 = MEMORY[0x1E69E7CD0];
  }

  v85 = v58;
  if (v55)
  {
    v59 = v55;
  }

  else
  {
    v59 = MEMORY[0x1E69E7CD0];
  }

  if (v56)
  {
    v60 = v56;
  }

  else
  {
    v60 = MEMORY[0x1E69E7CD0];
  }

  v82 = v60;
  v83 = v59;
  (*(v28 + 8))(v69, v72);
  if (v65)
  {
    v61 = v65;
  }

  else
  {
    v61 = v57;
  }

  *v49 = v77;
  v49[1] = v35;
  v62 = type metadata accessor for FormatMetadata();
  v63 = *(v81 + 32);
  v63(v49 + v62[5], v79, v54);
  v63(v49 + v62[6], v78, v54);
  sub_1D5C7F144(v52, v49 + v62[7]);
  *(v49 + v62[8]) = v85;
  v64 = v82;
  *(v49 + v62[9]) = v83;
  *(v49 + v62[10]) = v64;
  *(v49 + v62[11]) = v61;
  return __swift_destroy_boxed_opaque_existential_1(v86);
}

unint64_t sub_1D5C7EEB0()
{
  result = qword_1EDF415D8;
  if (!qword_1EDF415D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF415D8);
  }

  return result;
}

unint64_t sub_1D5C7EF04()
{
  if (*v0 > 3u)
  {
    if (*v0 <= 5u)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x567377654E6E696DLL;
    if (*v0 != 2)
    {
      v2 = 0x567377654E78616DLL;
    }

    if (*v0)
    {
      v1 = 0x655674616D726F66;
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
}

uint64_t sub_1D5C7F02C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5C7F090(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B59B28();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5C7F0F0()
{
  result = qword_1EDF41FB8;
  if (!qword_1EDF41FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF41FB8);
  }

  return result;
}

uint64_t sub_1D5C7F144(uint64_t a1, uint64_t a2)
{
  sub_1D5B5D8D0(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5C7F1C4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5A7F0(255, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FormatContentSubgroup.ResolvedContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C7F4D4(0, &qword_1EDF03A20, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C7F538();
  sub_1D7264B0C();
  if (!v2)
  {
    v25 = 0;
    sub_1D5C8F8BC();
    sub_1D726431C();
    v24 = 1;
    if (v26)
    {
      sub_1D5C50788();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v12 = v18;
      v13 = v19;
      v14 = v21;
      v15 = v22;
      v16 = v23;
      v17 = v20 & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
    }

    else
    {
      sub_1D5C50788();
      sub_1D726431C();
      (*(v7 + 8))(v10, v6);
      v12 = v18;
      v13 = v19;
      v14 = v21;
      v15 = v22;
      v16 = v23;
      v17 = v20 & 0xFFFFFFFFFFFFFF8;
    }

    *a2 = v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = v17;
    *(a2 + 40) = v14;
    *(a2 + 56) = v15;
    *(a2 + 72) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C7F4D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5C7F538();
    v7 = a3(a1, &_s17ResolvedContainerO10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5C7F538()
{
  result = qword_1EDF0E398;
  if (!qword_1EDF0E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E398);
  }

  return result;
}

unint64_t sub_1D5C7F58C()
{
  result = qword_1EDF0E368;
  if (!qword_1EDF0E368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E368);
  }

  return result;
}

uint64_t sub_1D5C7F5E0@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D5C7F63C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FormatContentSubgroup.Resolved.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D5B56870(0, &qword_1EDF03A18, sub_1D5C7FDF4, &_s8ResolvedV10CodingKeysON_1, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v34 - v9;
  v11 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D5C7FDF4();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v12 = v7;
  LOBYTE(v49[0]) = 0;
  v13 = v6;
  v14 = sub_1D72642BC();
  v17 = v16;
  v41 = v14;
  LOBYTE(v49[0]) = 1;
  v18 = sub_1D72642BC();
  v42 = v19;
  v40 = v18;
  type metadata accessor for FormatPackageInventory();
  LOBYTE(v44) = 2;
  sub_1D5B4CE7C(&unk_1EDF0DA40, type metadata accessor for FormatPackageInventory);
  sub_1D726431C();
  v39 = v49[0];
  sub_1D5B5AB88(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
  LOBYTE(v44) = 3;
  sub_1D5CB5A24(&qword_1EDF1B350, &unk_1EDF45930);
  sub_1D726431C();
  v20 = v49[0];
  sub_1D5B567C8(0, &qword_1EDF43B90, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
  LOBYTE(v44) = 4;
  sub_1D5CB5E94(&qword_1EDF3C7D0);
  sub_1D726431C();
  v21 = v49[0];
  sub_1D5B49714(0, &qword_1EDF1B2A0);
  LOBYTE(v44) = 5;
  sub_1D5CB5F20();
  sub_1D726431C();
  v38 = 0;
  v37 = v49[0];
  sub_1D5B49714(0, &qword_1EDF04BB8);
  LOBYTE(v44) = 6;
  sub_1D5CB7008();
  v22 = v38;
  sub_1D726431C();
  v38 = v22;
  if (v22)
  {
    (*(v12 + 8))(v10, v13);
    v23 = 0;
  }

  else
  {
    v36 = v49[0];
    sub_1D5B49714(0, &qword_1EDF3C880);
    v50 = 7;
    sub_1D5CB70E4();
    v24 = v38;
    sub_1D726431C();
    v38 = v24;
    if (!v24)
    {
      (*(v12 + 8))(v10, v13);
      v34 = v51;
      v25 = v41;
      *&v44 = v41;
      *(&v44 + 1) = v17;
      v26 = v21;
      v35 = v21;
      v27 = v40;
      v28 = v42;
      *&v45 = v40;
      *(&v45 + 1) = v42;
      v29 = v39;
      *&v46 = v39;
      *(&v46 + 1) = v20;
      *&v47 = v26;
      v30 = v37;
      v31 = v36;
      *(&v47 + 1) = v37;
      *&v48 = v36;
      *(&v48 + 1) = v51;
      v32 = v47;
      a2[2] = v46;
      a2[3] = v32;
      v33 = v45;
      *a2 = v44;
      a2[1] = v33;
      a2[4] = v48;
      sub_1D5CB7180(&v44, v49);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v49[0] = v25;
      v49[1] = v17;
      v49[2] = v27;
      v49[3] = v28;
      v49[4] = v29;
      v49[5] = v20;
      v49[6] = v35;
      v49[7] = v30;
      v49[8] = v31;
      v49[9] = v34;
      return sub_1D5CB71DC(v49);
    }

    (*(v12 + 8))(v10, v13);
    v23 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v43);

  if (v23)
  {
  }

  return result;
}

unint64_t sub_1D5C7FDF4()
{
  result = qword_1EDF0E338;
  if (!qword_1EDF0E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E338);
  }

  return result;
}

uint64_t FormatGroupCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_1D5C509A4(0, &qword_1EDF1B380, MEMORY[0x1E69E62F8]);
    sub_1D5C8FA3C(&qword_1EDF050D8, &qword_1EDF12408);
    sub_1D726472C();
    sub_1D5C5D464(v10[6], &v8);
    v6 = v9;
    v7 = v8;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v7;
    *(a2 + 16) = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C7FFAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5C8000C()
{
  result = qword_1EDF3BCB8;
  if (!qword_1EDF3BCB8)
  {
    sub_1D5C2E60C(255, &qword_1EDF43AC8, sub_1D5C6838C, sub_1D5C683E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BCB8);
  }

  return result;
}

uint64_t sub_1D5C8009C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1D5C800EC()
{
  result = qword_1EDF23710;
  if (!qword_1EDF23710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23710);
  }

  return result;
}

void sub_1D5C80140(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for FormatCommandValue();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D5C801A8()
{
  result = qword_1EDF23708;
  if (!qword_1EDF23708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23708);
  }

  return result;
}

unint64_t sub_1D5C801FC()
{
  result = qword_1EDF23700;
  if (!qword_1EDF23700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23700);
  }

  return result;
}

uint64_t FormatCommandState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v28;
    v14 = v10;
    if (v12)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51147E8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v14, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C91BF0();
    v27 = 0uLL;
    sub_1D726431C();
    v23 = v26;
    if (v26)
    {
      if (v26 == 1)
      {
        sub_1D5C34074(0, &qword_1EDF33EF8, MEMORY[0x1E69E6370], &protocol witness table for Bool, type metadata accessor for FormatValue);
        v27 = xmmword_1D7279980;
        sub_1D5CCED6C();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v24 = 0;
        v25 = v26;
      }

      else
      {
        sub_1D5C34074(0, &qword_1EDF33EE8, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatValue);
        v27 = xmmword_1D7279980;
        sub_1D5C609C4();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v24 = 0;
        v25 = v26;
      }
    }

    else
    {
      sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
      v26 = xmmword_1D7279980;
      sub_1D5C34150();
      sub_1D726431C();
      (*(v7 + 8))(v14, v6);
      v24 = *(&v27 + 1);
      v25 = v27;
    }

    *v13 = v25;
    *(v13 + 8) = v24;
    *(v13 + 16) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C80748()
{
  result = qword_1EDF2E538;
  if (!qword_1EDF2E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E538);
  }

  return result;
}

uint64_t sub_1D5C8079C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5C80840(void *a1, uint64_t (*a2)(void, __n128), void (*a3)(void), unint64_t *a4, uint64_t a5, void (*a6)(void, __n128), uint64_t (*a7)(uint64_t), void (*a8)(void))
{
  v79 = a8;
  v85 = a7;
  v86 = a6;
  *&v88 = a5;
  v87 = a4;
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  *&v82 = v11;
  v81 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v83 = &v71 - v13;
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v15 = v14;
  v80 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v71 - v18;
  v20 = a2(0, v17);
  *&v84 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3(0);
  sub_1D5B58B84(v87, v88);
  v24 = v98;
  sub_1D7264B0C();
  v25 = v24;
  if (v24)
  {
LABEL_17:
    sub_1D61E4FBC(a1, v25);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v20;
  }

  v26 = v85;
  *&v88 = v19;
  v98 = v15;
  v27 = v84;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = sub_1D7264AFC();
  v29 = Dictionary<>.errorOnUnknownKeys.getter(v28);

  v30 = v20;
  v31 = v86;
  if (v29)
  {
    v32 = sub_1D726433C();
    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = (v32 + 48);
      while (*v34 != 1)
      {
        v34 += 24;
        if (!--v33)
        {
          goto LABEL_7;
        }
      }

      v20 = v30;
      v40 = *(v34 - 2);
      v39 = *(v34 - 1);

      v42 = v26(v41);
      sub_1D5E2D970();
      v25 = swift_allocError();
      *v43 = v40;
      *(v43 + 8) = v39;
      *(v43 + 16) = v42;
      *(v43 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v27 + 8))(v23, v20);
      goto LABEL_17;
    }

LABEL_7:
  }

  v35 = v30;
  v36 = sub_1D5C31D18(v23, 0, 0, 0, v31);
  v87 = v37;
  v94 = xmmword_1D728CF30;
  LOBYTE(v95) = 0;
  v38 = v27;
  v44 = sub_1D726422C();
  v86 = v45;
  v94 = xmmword_1D7297410;
  LOBYTE(v95) = 0;
  v46 = sub_1D726422C();
  v85 = v47;
  v78 = xmmword_1D72BAA60;
  v94 = xmmword_1D72BAA60;
  LOBYTE(v95) = 0;
  v48 = sub_1D726434C();
  if (v48)
  {
    v92 = v78;
    v93 = 0;
    sub_1D5C62940();
    sub_1D726431C();
    v77 = v46;
    *&v78 = v44;
    v49 = v89;
    sub_1D5C82CD8(v89);
    sub_1D5C92A8C(v49);
  }

  else
  {
    v77 = v46;
    *&v78 = v44;
    v49 = 0xB000000000000008;
  }

  v94 = xmmword_1D72BAA70;
  LOBYTE(v95) = 0;
  sub_1D5C73B78();
  sub_1D726427C();
  v50 = v83;
  v73 = v36;
  v76 = *(&v92 + 1);
  v51 = v92;
  v75 = xmmword_1D72BAA80;
  v94 = xmmword_1D72BAA80;
  LOBYTE(v95) = 0;
  v52 = sub_1D726434C();
  v72 = v51;
  if (v52)
  {
    v74 = v49;
    v92 = v75;
    v93 = 0;
    sub_1D5C9EEC4();
    v53 = v88;
    v54 = v98;
    sub_1D726431C();
    *&v75 = sub_1D725A74C();
    (*(v80 + 8))(v53, v54);
    v49 = v74;
  }

  else
  {
    *&v75 = MEMORY[0x1E69E7CC0];
  }

  v94 = xmmword_1D72BAA90;
  LOBYTE(v95) = 0;
  sub_1D5C51470();
  v55 = v50;
  v56 = v82;
  sub_1D726431C();
  v98 = sub_1D725A74C();
  (*(v81 + 8))(v55, v56);
  v88 = xmmword_1D72BAAA0;
  v94 = xmmword_1D72BAAA0;
  LOBYTE(v95) = 0;
  if (sub_1D726434C())
  {
    v92 = v88;
    v93 = 0;
    sub_1D726431C();
    v58 = v89;
  }

  else
  {
    v58 = 0;
  }

  v88 = xmmword_1D72BAAB0;
  v94 = xmmword_1D72BAAB0;
  LOBYTE(v95) = 0;
  if (sub_1D726434C())
  {
    v92 = v88;
    v93 = 0;
    sub_1D5CDCE98();
    sub_1D726431C();
    v74 = v49;
    v59 = v23;
    v60 = v35;
    v61 = v89;
    v62 = v90;
    v63 = v91;
    sub_1D5C75A4C(v89, v90, v91);
    *&v88 = v61;
    v83 = v62;
    v64 = v62;
    v65 = v63;
    sub_1D5D2F2C8(v61, v64, v63);
  }

  else
  {
    v74 = v49;
    v59 = v23;
    v60 = v35;
    *&v88 = 0;
    v83 = 0;
    v65 = 0;
  }

  v92 = xmmword_1D72BAAC0;
  v93 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  (*(v38 + 8))(v59, v60);
  v66 = v96;
  v67 = v97;
  v79(0);
  v84 = v94;
  v82 = v95;
  v20 = swift_allocObject();
  *(v20 + 48) = 0u;
  *(v20 + 32) = 0u;
  swift_beginAccess();
  v68 = v87;
  *(v20 + 16) = v73;
  *(v20 + 24) = v68;
  swift_beginAccess();
  *(v20 + 32) = v78;
  *(v20 + 40) = v86;

  swift_beginAccess();
  *(v20 + 48) = v77;
  *(v20 + 56) = v85;

  swift_beginAccess();
  v69 = v72;
  *(v20 + 64) = v74;
  *(v20 + 72) = v69;
  *(v20 + 80) = v76;
  swift_beginAccess();
  *(v20 + 88) = v75;
  swift_beginAccess();
  *(v20 + 96) = v98;
  swift_beginAccess();
  *(v20 + 104) = v58;
  swift_beginAccess();
  v70 = v83;
  *(v20 + 112) = v88;
  *(v20 + 120) = v70;
  *(v20 + 128) = v65;
  *(v20 + 152) = v82;
  *(v20 + 136) = v84;
  *(v20 + 168) = v66;
  *(v20 + 176) = v67;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

unint64_t sub_1D5C815C4()
{
  result = qword_1EDF32070;
  if (!qword_1EDF32070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32070);
  }

  return result;
}

uint64_t sub_1D5C81618(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x696669746E656469;
    v7 = 0x7470697263736564;
    v8 = 1702521203;
    if (a1 != 3)
    {
      v8 = 0x657A69736572;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x65737265766572;
    v2 = 2019912806;
    if (a1 != 9)
    {
      v2 = 1885433183;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x656D7473756A6461;
    v4 = 0x6E6572646C696863;
    if (a1 != 6)
    {
      v4 = 0x6465737265766572;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1D5C81764()
{
  result = qword_1EDF29918;
  if (!qword_1EDF29918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29918);
  }

  return result;
}

uint64_t FormatDimensionSizingValue.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v45 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v42 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    v23 = a1;
  }

  else
  {
    v11 = v6;
    v12 = v45;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F5112550;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C71D44();
    v44 = 0uLL;
    sub_1D726431C();
    if (v42 > 4u)
    {
      v25 = v12;
      if (v42 <= 6u)
      {
        if (v42 == 5)
        {
          v26 = a1;
          (*(v11 + 8))(v15, v5);
          v27 = 0xE000000000000010;
        }

        else
        {
          v44 = xmmword_1D7279980;
          sub_1D5C71CA0();
          sub_1D726431C();
          v26 = a1;
          (*(v11 + 8))(v15, v5);
          v38 = v42;
          v39 = swift_allocObject();
          *(v39 + 16) = v38;
          v27 = v39 | 0x6000000000000000;
        }
      }

      else if (v42 == 7)
      {
        v44 = xmmword_1D7279980;
        sub_1D666D900();
        sub_1D726431C();
        v26 = a1;
        (*(v11 + 8))(v15, v5);
        v33 = v42;
        v34 = v43;
        v35 = swift_allocObject();
        *(v35 + 16) = v33;
        *(v35 + 24) = v34;
        v27 = v35 | 0x8000000000000000;
      }

      else if (v42 == 8)
      {
        sub_1D5C71DC8();
        v44 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        v26 = a1;
        (*(v11 + 8))(v15, v5);
        v28 = v42;
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        v27 = v29 | 0xA000000000000000;
      }

      else
      {
        sub_1D5C71DC8();
        v44 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        v26 = a1;
        (*(v11 + 8))(v15, v5);
        v40 = v42;
        v41 = swift_allocObject();
        *(v41 + 16) = v40;
        v27 = v41 | 0xC000000000000000;
      }
    }

    else
    {
      v25 = v12;
      if (v42 <= 1u)
      {
        if (v42)
        {
          sub_1D5C71DC8();
          v44 = xmmword_1D7279980;
          sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
          sub_1D726431C();
          v26 = a1;
          (*(v11 + 8))(v15, v5);
          v36 = v42;
          v37 = swift_allocObject();
          *(v37 + 16) = v36;
          v27 = v37 | 0x2000000000000000;
        }

        else
        {
          sub_1D5C71DC8();
          v44 = xmmword_1D7279980;
          sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
          sub_1D726431C();
          v26 = a1;
          (*(v11 + 8))(v15, v5);
          v30 = v42;
          v27 = swift_allocObject();
          *(v27 + 16) = v30;
        }
      }

      else if (v42 == 2)
      {
        sub_1D5C34074(0, &qword_1EDF33EE8, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatValue);
        v44 = xmmword_1D7279980;
        sub_1D5C609C4();
        sub_1D726431C();
        v26 = a1;
        (*(v11 + 8))(v15, v5);
        v31 = v42;
        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        v27 = v32 | 0x4000000000000000;
      }

      else
      {
        v26 = a1;
        if (v42 == 3)
        {
          (*(v11 + 8))(v15, v5);
          v27 = 0xE000000000000000;
        }

        else
        {
          v27 = 0xE000000000000008;
          (*(v11 + 8))(v15, v5);
        }
      }
    }

    *v25 = v27;
    v23 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1D5C81FE8()
{
  sub_1D5D09FB0(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5C82020()
{

  return swift_deallocObject();
}

unint64_t sub_1D5C820BC()
{
  result = qword_1EDF23400;
  if (!qword_1EDF23400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23400);
  }

  return result;
}

void sub_1D5C82110(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

BOOL sub_1D5C82160(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1D7263D0C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

void sub_1D5C82258()
{
  sub_1D5C736F0(319, &qword_1EDF32690, type metadata accessor for FormatItemNode);
  if (v0 <= 0x3F)
  {
    sub_1D5C736F0(319, &qword_1EDF28818, type metadata accessor for FormatItemBindingsNode);
    if (v1 <= 0x3F)
    {
      sub_1D5C736F0(319, &qword_1EDF2F208, type metadata accessor for FormatSnippetNode);
      if (v2 <= 0x3F)
      {
        sub_1D5C829EC(319, &qword_1EDF1B748);
        if (v3 <= 0x3F)
        {
          sub_1D5C736F0(319, &qword_1EDF27000, type metadata accessor for FormatSupplementaryNode);
          if (v4 <= 0x3F)
          {
            sub_1D5C9263C(319, &qword_1EDF1B750);
            if (v5 <= 0x3F)
            {
              sub_1D5C92690();
              if (v6 <= 0x3F)
              {
                sub_1D5C737E0();
                if (v7 <= 0x3F)
                {
                  sub_1D5C92728();
                  if (v8 <= 0x3F)
                  {
                    sub_1D5C736F0(319, &qword_1EDF2FDB0, type metadata accessor for FormatSwitchNode);
                    if (v9 <= 0x3F)
                    {
                      sub_1D5C927C0();
                      if (v10 <= 0x3F)
                      {
                        sub_1D5C73938(319, &qword_1EDF1B6A8, &qword_1EDF331B0);
                        if (v11 <= 0x3F)
                        {
                          sub_1D5C829EC(319, &qword_1EDF1B708);
                          if (v12 <= 0x3F)
                          {
                            sub_1D5C9286C(319, &qword_1EDF1B6F8, type metadata accessor for FormatCompilerProperty);
                            if (v13 <= 0x3F)
                            {
                              sub_1D5C829EC(319, &qword_1EDF343E8);
                              if (v14 <= 0x3F)
                              {
                                sub_1D5C829EC(319, &qword_1EDF343F8);
                                if (v15 <= 0x3F)
                                {
                                  sub_1D5C829EC(319, &qword_1EDF1B6D0);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1D5C9286C(319, &qword_1EDF1B6C8, type metadata accessor for FormatEnumPropertyDefinition);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1D5C829EC(319, &qword_1EDF1B700);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1D5C928DC();
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1D5C829EC(319, &qword_1EDF1B6F0);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1D5C829EC(319, qword_1EDF2F328);
                                            if (v21 <= 0x3F)
                                            {
                                              sub_1D5C9290C();
                                              if (v22 <= 0x3F)
                                              {
                                                sub_1D5C9263C(319, &qword_1EDF1B770);
                                                if (v23 <= 0x3F)
                                                {
                                                  sub_1D5C9263C(319, &qword_1EDF1B768);
                                                  if (v24 <= 0x3F)
                                                  {
                                                    sub_1D5C9263C(319, &qword_1EDF1B758);
                                                    if (v25 <= 0x3F)
                                                    {
                                                      sub_1D5C829EC(319, &qword_1EDF1B738);
                                                      if (v26 <= 0x3F)
                                                      {
                                                        type metadata accessor for FormatOption();
                                                        if (v27 <= 0x3F)
                                                        {
                                                          sub_1D5C829EC(319, &qword_1EDF1B730);
                                                          if (v28 <= 0x3F)
                                                          {
                                                            sub_1D5C739AC();
                                                            if (v29 <= 0x3F)
                                                            {
                                                              sub_1D5C82BA0(319, &qword_1EDF1B6C0);
                                                              if (v30 <= 0x3F)
                                                              {
                                                                sub_1D5C82BA0(319, &qword_1EDF1B628);
                                                                if (v31 <= 0x3F)
                                                                {
                                                                  sub_1D5C829EC(319, &qword_1EDF1B6E8);
                                                                  if (v32 <= 0x3F)
                                                                  {
                                                                    sub_1D5C829EC(319, &qword_1EDF1B760);
                                                                    if (v33 <= 0x3F)
                                                                    {
                                                                      sub_1D5C739DC();
                                                                      if (v34 <= 0x3F)
                                                                      {
                                                                        sub_1D5C73A50();
                                                                        if (v35 <= 0x3F)
                                                                        {
                                                                          sub_1D5C829EC(319, &qword_1EDF1AD00);
                                                                          if (v36 <= 0x3F)
                                                                          {
                                                                            sub_1D5C73A80();
                                                                            if (v37 <= 0x3F)
                                                                            {
                                                                              sub_1D5C9293C();
                                                                              if (v38 <= 0x3F)
                                                                              {
                                                                                sub_1D5C73938(319, &unk_1EDF1B600, &qword_1EDF3C5D0);
                                                                                if (v39 <= 0x3F)
                                                                                {
                                                                                  sub_1D5C82C30();
                                                                                  if (v40 <= 0x3F)
                                                                                  {
                                                                                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_1D5C82990(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5C829EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5C82A44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D5C82A94()
{
  result = type metadata accessor for GroupLayoutBindingContext();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for FormatNodeBinderContext()
{
  result = qword_1EDF27238;
  if (!qword_1EDF27238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5C82BA0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1D5B49E98(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5C82C30()
{
  if (!qword_1EDF1B2D0)
  {
    sub_1D5B49E98(255, &qword_1EDF1B2E0, &type metadata for FormatSourceMap, MEMORY[0x1E69E62F8]);
    sub_1D5B49474(255, &qword_1EDF3C5D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B2D0);
    }
  }
}

unint64_t sub_1D5C82CD8(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5C82D98(void *a1)
{
  sub_1D5C8CD38();
  v75 = v2;
  v73 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v74 = &v60[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v6 = v5;
  v76 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v60[-v8];
  sub_1D5C73BF8();
  v11 = v10;
  *&v77 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C92B28();
  sub_1D5B58B84(&qword_1EDF24B98, sub_1D5C92B28);
  v16 = v85;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
    goto LABEL_10;
  }

  v85 = v9;
  v18 = v77;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_1D7264AFC();
  v20 = Dictionary<>.errorOnUnknownKeys.getter(v19);

  v21 = v14;
  if (v20)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while (*v24 != 1)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v27 = *(v24 - 2);
      v15 = *(v24 - 1);

      v28 = sub_1D661CB58();
      sub_1D5E2D970();
      v29 = swift_allocError();
      *v30 = v27;
      *(v30 + 8) = v15;
      v17 = v29;
      *(v30 + 16) = v28;
      *(v30 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v18 + 8))(v14, v11);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25 = sub_1D5C31D18(v14, 0, 0, 0, sub_1D5C73BF8);
  v72 = v26;
  v81 = xmmword_1D728CF30;
  LOBYTE(v82) = 0;
  sub_1D5C62940();
  sub_1D726431C();
  v31 = v79;
  v81 = xmmword_1D7297410;
  LOBYTE(v82) = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  v71 = 0;
  v70 = v79;
  v69 = xmmword_1D72BAA60;
  v81 = xmmword_1D72BAA60;
  LOBYTE(v82) = 0;
  if (sub_1D726434C())
  {
    v79 = v69;
    v80 = 0;
    sub_1D5C9EEC4();
    v33 = v85;
    v15 = v21;
    v34 = v71;
    sub_1D726431C();
    v71 = v34;
    if (v34)
    {
      (*(v18 + 8))(v21, v11);
      sub_1D5C92A8C(v31);

LABEL_15:
      v17 = v71;
LABEL_10:
      sub_1D61E4FBC(a1, v17);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(a1);
      return v15;
    }

    v68 = v31;
    *&v69 = sub_1D725A74C();
    (*(v76 + 8))(v33, v6);
  }

  else
  {
    v68 = v31;
    *&v69 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FormatImageNodeStyle();
  v81 = xmmword_1D72BAA70;
  LOBYTE(v82) = 0;
  sub_1D5B58B84(&unk_1EDF2B0D8, type metadata accessor for FormatImageNodeStyle);
  v15 = v21;
  v35 = v71;
  sub_1D726427C();
  v17 = v35;
  if (v35)
  {
    (*(v18 + 8))(v21, v11);
    sub_1D5C92A8C(v68);

    goto LABEL_10;
  }

  v85 = v25;
  v36 = v79;
  type metadata accessor for FormatAnimationNodeStyle();
  v81 = xmmword_1D72BAA80;
  LOBYTE(v82) = 0;
  sub_1D5B58B84(&qword_1EDF26768, type metadata accessor for FormatAnimationNodeStyle);
  sub_1D726427C();
  v76 = v36;
  v37 = v79;
  v81 = xmmword_1D72BAA90;
  LOBYTE(v82) = 0;
  sub_1D5B57A54();
  sub_1D726431C();
  v71 = 0;
  v38 = v37;
  v39 = v79;
  v67 = xmmword_1D72BAAA0;
  v81 = xmmword_1D72BAAA0;
  LOBYTE(v82) = 0;
  if (sub_1D726434C())
  {
    v79 = v67;
    v80 = 0;
    v15 = v21;
    v40 = v71;
    sub_1D726431C();
    v71 = v40;
    if (v40)
    {
      (*(v18 + 8))(v21, v11);

LABEL_38:

      sub_1D5C92A8C(v68);

      goto LABEL_15;
    }

    v65 = v78;
  }

  else
  {
    v65 = 0;
  }

  v67 = xmmword_1D72BAAB0;
  v81 = xmmword_1D72BAAB0;
  LOBYTE(v82) = 0;
  if (sub_1D726434C())
  {
    v79 = v67;
    v80 = 0;
    sub_1D5DF6A0C();
    v15 = v21;
    v41 = v71;
    sub_1D726431C();
    v71 = v41;
    if (v41)
    {

      sub_1D5C92A8C(v68);

      (*(v18 + 8))(v21, v11);
      goto LABEL_15;
    }

    v42 = v78;
    sub_1D5EB1500(v78);
    *&v67 = v42;
    sub_1D5EB15C4(v42);
  }

  else
  {
    *&v67 = 0x8000000000000000;
  }

  v66 = xmmword_1D72BAAC0;
  v81 = xmmword_1D72BAAC0;
  LOBYTE(v82) = 0;
  if (sub_1D726434C())
  {
    v79 = v66;
    v80 = 0;
    v15 = v21;
    v43 = v71;
    sub_1D726431C();
    v71 = v43;
    if (v43)
    {
      goto LABEL_37;
    }

    v44 = v78;
  }

  else
  {
    v44 = 1;
  }

  v64 = v44;
  v66 = xmmword_1D72BAAD0;
  v81 = xmmword_1D72BAAD0;
  LOBYTE(v82) = 0;
  if (sub_1D726434C())
  {
    v79 = v66;
    v80 = 0;
    v15 = v21;
    v45 = v71;
    sub_1D726431C();
    v71 = v45;
    if (v45)
    {
LABEL_37:
      (*(v18 + 8))(v21, v11);

      sub_1D5EB15C4(v67);
      goto LABEL_38;
    }

    v46 = v78;
  }

  else
  {
    v46 = 0;
  }

  LODWORD(v66) = v46;
  v81 = xmmword_1D72BAAE0;
  LOBYTE(v82) = 0;
  sub_1D5C6F27C();
  v15 = v21;
  v47 = v71;
  sub_1D726427C();
  if (v47)
  {
    (*(v18 + 8))(v21, v11);
    sub_1D5C92A8C(v68);

    sub_1D5EB15C4(v67);

    v17 = v47;
    goto LABEL_10;
  }

  v71 = v39;
  v62 = v79;
  v61 = BYTE8(v79);
  v63 = xmmword_1D72BAAF0;
  v81 = xmmword_1D72BAAF0;
  LOBYTE(v82) = 0;
  v48 = v11;
  if (sub_1D726434C())
  {
    v79 = v63;
    v80 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    sub_1D726431C();
    v49 = v75;
    v50 = v74;
    v51 = sub_1D725A74C();
    (*(v73 + 8))(v50, v49);
  }

  else
  {
    v51 = MEMORY[0x1E69E7CD0];
  }

  v81 = xmmword_1D7282A80;
  LOBYTE(v82) = 0;
  v74 = sub_1D726422C();
  v75 = v52;
  v79 = xmmword_1D72BAB00;
  v80 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  v73 = 0;
  (*(v18 + 8))(v21, v48);
  v53 = v83;
  v54 = v84;
  type metadata accessor for FormatImageNode();
  v77 = v81;
  v63 = v82;
  v15 = swift_allocObject();
  *(v15 + 136) = 0;
  *(v15 + 128) = 0;
  swift_beginAccess();
  v55 = v72;
  *(v15 + 16) = v85;
  *(v15 + 24) = v55;
  v56 = v70;
  *(v15 + 32) = v68;
  *(v15 + 40) = v56;
  swift_beginAccess();
  v57 = v76;
  *(v15 + 48) = v69;
  *(v15 + 56) = v57;
  v58 = v71;
  *(v15 + 64) = v38;
  *(v15 + 72) = v58;
  swift_beginAccess();
  *(v15 + 80) = v65;
  swift_beginAccess();
  *(v15 + 88) = v67;
  swift_beginAccess();
  *(v15 + 96) = v64;
  swift_beginAccess();
  *(v15 + 97) = v66;
  *(v15 + 104) = v62;
  *(v15 + 112) = v61;
  swift_beginAccess();
  *(v15 + 120) = v51;
  swift_beginAccess();
  *(v15 + 128) = v74;
  *(v15 + 136) = v75;

  v59 = v63;
  *(v15 + 144) = v77;
  *(v15 + 160) = v59;
  *(v15 + 176) = v53;
  *(v15 + 184) = v54;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

unint64_t sub_1D5C83F08()
{
  result = qword_1EDF31758;
  if (!qword_1EDF31758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31758);
  }

  return result;
}

unint64_t sub_1D5C83F5C()
{
  result = qword_1EDF31748;
  if (!qword_1EDF31748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31748);
  }

  return result;
}

unint64_t sub_1D5C83FB0(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x657A69736572;
      break;
    case 3:
      result = 0x656D7473756A6461;
      break;
    case 4:
      result = 0x656C797473;
      break;
    case 5:
      result = 0x6F6974616D696E61;
      break;
    case 6:
      result = 0x746E65746E6F63;
      break;
    case 7:
      result = 0x7865646E497ALL;
      break;
    case 8:
      result = 0x696C696269736976;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x726F7463656C6573;
      break;
    case 13:
      result = 1701667182;
      break;
    case 14:
      result = 2019912806;
      break;
    case 15:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t type metadata accessor for FormatImageNodeStyle()
{
  result = qword_1EDF2B0C8;
  if (!qword_1EDF2B0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5C841E0()
{
  result = qword_1EDF2B0F8;
  if (!qword_1EDF2B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B0F8);
  }

  return result;
}

void sub_1D5C84234()
{
  if (!qword_1EDF253D0)
  {
    sub_1D5C73D68();
    sub_1D5C93ED4();
    sub_1D5C93F2C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF253D0);
    }
  }
}

unint64_t sub_1D5C842BC()
{
  result = qword_1EDF2B128;
  if (!qword_1EDF2B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B128);
  }

  return result;
}

uint64_t FormatImageNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  sub_1D5C74154();
  v6 = v5;
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C86B30();
  sub_1D5B58B84(&qword_1EDF253C8, sub_1D5C86B30);
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v53;
    v10 = a1;
    v14 = v9;
    if (v12)
    {
      v15 = sub_1D726433C();
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = (v15 + 48);
        while (*v17 != 1)
        {
          v17 += 24;
          if (!--v16)
          {
            goto LABEL_8;
          }
        }

        v19 = v6;
        v20 = v13;
        v22 = *(v17 - 2);
        v21 = *(v17 - 1);

        v23 = sub_1D661D26C();
        sub_1D5E2D970();
        v3 = swift_allocError();
        *v24 = v22;
        *(v24 + 8) = v21;
        *(v24 + 16) = v23;
        *(v24 + 24) = xmmword_1D72874E0;
        swift_willThrow();
        (*(v20 + 8))(v14, v19);
        goto LABEL_11;
      }

LABEL_8:
    }

    sub_1D5C36978();
    v68 = 0uLL;
    LOBYTE(v69) = 0;
    sub_1D726431C();
    v51 = a1;
    v18 = v60;
    v68 = xmmword_1D728CF30;
    LOBYTE(v69) = 0;
    sub_1D5C4A954();
    sub_1D726427C();
    v25 = v60;
    sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
    v68 = xmmword_1D7297410;
    LOBYTE(v69) = 0;
    sub_1D5C34DD4();
    sub_1D726427C();
    v50 = v25;
    v26 = v60;
    v60 = xmmword_1D72BAA60;
    LOBYTE(v61) = 0;
    sub_1D5C8C780();
    sub_1D726427C();
    v48 = v68;
    v49 = v26;
    v27 = *(&v68 + 1);
    LODWORD(v25) = v69;
    v66 = xmmword_1D72BAA70;
    v67 = 0;
    sub_1D5C34EC4();
    sub_1D726427C();
    v47 = v27;
    v46 = v25;
    v62 = v70;
    v63 = v71;
    v64 = v72;
    v65 = v73;
    v60 = v68;
    v61 = v69;
    v58 = xmmword_1D72BAA80;
    v59 = 0;
    sub_1D5B570F8();
    sub_1D726427C();
    v28 = v57;
    v58 = xmmword_1D72BAA90;
    v59 = 0;
    v45 = sub_1D726423C();
    v58 = xmmword_1D72BAAA0;
    v59 = 0;
    sub_1D5C93FDC();
    sub_1D726427C();
    v44 = v28;
    v43 = v57;
    sub_1D5C34D84(0, &qword_1EDF1B110, &type metadata for FormatImageTransform, MEMORY[0x1E69E62F8]);
    v58 = xmmword_1D72BAAB0;
    v59 = 0;
    sub_1D5C744F4();
    sub_1D726427C();
    v29 = v57;
    v58 = xmmword_1D72BAAC0;
    v59 = 0;
    sub_1D5C745E4();
    sub_1D726427C();
    v30 = v57;
    v58 = xmmword_1D72BAAD0;
    v59 = 0;
    sub_1D5C86C08();
    sub_1D726427C();
    v42 = v57;
    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v58 = xmmword_1D72BAAE0;
    v59 = 0;
    sub_1D5C35368();
    sub_1D726427C();
    v41 = v57;
    sub_1D5C34D84(0, &unk_1EDF1B0B0, &type metadata for FormatImageAdjustment, MEMORY[0x1E69E62F8]);
    v58 = xmmword_1D72BAAF0;
    v59 = 0;
    sub_1D5C74688();
    sub_1D726427C();
    v40 = v57;
    v58 = xmmword_1D7282A80;
    v59 = 0;
    sub_1D5C94030();
    sub_1D726427C();
    (*(v53 + 8))(v14, v6);
    *&v54[23] = v61;
    *&v54[7] = v60;
    *&v54[55] = v63;
    *&v54[39] = v62;
    *&v54[71] = v64;
    v54[87] = v65;
    v31 = v52;
    *v52 = v18;
    v32 = v49;
    *(v31 + 2) = v50;
    *(v31 + 3) = v32;
    v33 = v47;
    *(v31 + 4) = v48;
    *(v31 + 5) = v33;
    *(v31 + 48) = v46;
    v34 = *v54;
    *(v31 + 65) = *&v54[16];
    *(v31 + 49) = v34;
    v35 = *&v54[32];
    v36 = *&v54[48];
    v37 = *&v54[64];
    *(v31 + 129) = *&v54[80];
    *(v31 + 113) = v37;
    *(v31 + 97) = v36;
    *(v31 + 81) = v35;
    LODWORD(v33) = *v74;
    *(v31 + 35) = *&v74[3];
    *(v31 + 137) = v33;
    *(v31 + 18) = v44;
    *(v31 + 152) = v45;
    *(v31 + 153) = v43;
    LODWORD(v33) = *&v55[7];
    *(v31 + 79) = v56;
    *(v31 + 154) = v33;
    *(v31 + 20) = v29;
    *(v31 + 168) = v30;
    LODWORD(v33) = *v55;
    *(v31 + 43) = *&v55[3];
    *(v31 + 169) = v33;
    v38 = v41;
    *(v31 + 22) = v42;
    *(v31 + 23) = v38;
    *(v31 + 24) = v40;
    *(v31 + 200) = v57;
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v10 = a1;
LABEL_11:
  sub_1D61E4FBC(v10, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_1D5C84FF4(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1D5C8500C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_1D5C85028()
{
  result = qword_1EDF296C0;
  if (!qword_1EDF296C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF296C0);
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1D5C850C0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5C8510C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 104))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

unint64_t sub_1D5C85154()
{
  result = qword_1EDF2ED40;
  if (!qword_1EDF2ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WebEmbedCacheSize(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

unint64_t sub_1D5C851F4()
{
  result = qword_1EDF2FCA8;
  if (!qword_1EDF2FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FCA8);
  }

  return result;
}

uint64_t sub_1D5C85250(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49760(255, &qword_1EDF1B2F8, &type metadata for FormatMenuItem, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FormatBindingExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v36 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51143B0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D5C8700C();
    v48 = 0;
    v49 = 0;
    sub_1D726431C();
    if (v51 <= 3u)
    {
      v23 = v37;
      a1 = v12;
      if (v51 > 1u)
      {
        if (v51 == 2)
        {
          *v38 = xmmword_1D7279980;
          sub_1D5C97E4C();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v29 = 0;
          v32 = v47;
          v30 = v47 >> 8;
          v31 = v47 & 0xFFFFFFFFFFFF0000;
          v24 = 0x10000;
          if (!BYTE10(v47))
          {
            v24 = 0;
          }

          *&v33 = v24 | WORD4(v47);
          v34 = 0x4000;
        }

        else
        {
          *v38 = xmmword_1D7279980;
          sub_1D6677D94();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v29 = 0;
          v31 = 0;
          v32 = v47;
          LOBYTE(v30) = BYTE1(v47);
          v50 = v47;
          v34 = 24576;
        }
      }

      else if (v51)
      {
        v47 = xmmword_1D7279980;
        sub_1D5C76FDC();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v32 = v38[0];
        v33 = *&v38[8];
        v25 = v39;
        v24 = v40;
        v26 = v42;
        v27 = v43;
        v29 = v41 & 0x7FF;
        v28 = v44;
        v34 = (v45 | (v46 << 16)) & 0xFFEF07FF | 0x2000;
        v30 = *v38 >> 8;
        v31 = *v38 & 0xFFFFFFFFFFFF0000;
      }

      else
      {
        v47 = xmmword_1D7279980;
        sub_1D5CBD498();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v29 = 0;
        v34 = 0;
        v32 = v38[0];
        v33 = *&v38[8];
        v25 = v39;
        v30 = *v38 >> 8;
        v35 = 256;
        if (!BYTE1(v40))
        {
          v35 = 0;
        }

        v24 = v35 | v40;
        v31 = *v38 & 0xFFFFFFFFFFFF0000;
      }
    }

    else
    {
      v23 = v37;
      a1 = v12;
      if (v51 <= 5u)
      {
        if (v51 == 4)
        {
          *v38 = xmmword_1D7279980;
          sub_1D6677D40();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v29 = 0;
          LOBYTE(v30) = 0;
          v31 = 0;
          v32 = v47;
          v34 = 0x8000;
        }

        else
        {
          v47 = xmmword_1D7279980;
          sub_1D6677CEC();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v29 = 0;
          v32 = v38[0];
          v33 = *&v38[8];
          v30 = *v38 >> 8;
          v31 = *v38 & 0xFFFFFFFFFFFF0000;
          *&v25 = v39;
          v34 = 40960;
        }
      }

      else if (v51 == 6)
      {
        v47 = xmmword_1D7279980;
        sub_1D6677C98();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v29 = 0;
        v32 = v38[0];
        v33 = *&v38[8];
        v30 = *v38 >> 8;
        v31 = *v38 & 0xFFFFFFFFFFFF0000;
        v34 = 49152;
      }

      else if (v51 == 7)
      {
        v47 = xmmword_1D7279980;
        sub_1D6677C44();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v29 = 0;
        LOBYTE(v30) = 0;
        v31 = 0;
        v32 = v38[0];
        v33 = *&v38[8];
        v34 = 57344;
      }

      else
      {
        *v38 = xmmword_1D7279980;
        sub_1D5F94D98();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v29 = 0;
        LOBYTE(v30) = 0;
        v31 = 0;
        v32 = v47;
        v34 = 0x100000;
      }
    }

    *v23 = v31 | v32 | (v30 << 8);
    *(v23 + 8) = v33;
    *(v23 + 24) = v25;
    *(v23 + 40) = v24;
    *(v23 + 48) = v29;
    *(v23 + 56) = v26;
    *(v23 + 72) = v27;
    *(v23 + 88) = v28;
    *(v23 + 104) = v34;
    *(v23 + 106) = BYTE2(v34);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C85B10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C96A4C();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C85B40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1F9)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 106) = 0;
    *(result + 104) = 0;
    *result = a2 - 506;
    if (a3 >= 0x1FA)
    {
      *(result + 107) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FA)
    {
      *(result + 107) = 0;
    }

    if (a2)
    {
      *(result + 88) = 0u;
      *(result + 72) = 0u;
      *(result + 56) = 0u;
      *(result + 104) = (-256 * a2) & 0xF800;
      *(result + 106) = (((-a2 & 0x100) << 12) - (a2 << 21)) >> 16;
    }
  }

  return result;
}

uint64_t sub_1D5C85BD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F2 && *(a1 + 50))
  {
    return (*a1 + 498);
  }

  v3 = ((*(a1 + 48) >> 3) & 1 | (2 * *(a1 + 49))) ^ 0x1FF;
  if (v3 >= 0x1F1)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5C85C40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C976EC();
  *a1 = result;
  return result;
}

void sub_1D5C85C70()
{
  if (!qword_1EDF24B30)
  {
    sub_1D5C7820C();
    sub_1D5C9778C();
    sub_1D5C782B8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24B30);
    }
  }
}

uint64_t sub_1D5C85CF4(uint64_t result, int a2, int a3)
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

uint64_t sub_1D5C85D3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

void sub_1D5C85D84()
{
  if (!qword_1EDF19CA0)
  {
    sub_1D5C78414();
    sub_1D5B58B84(&qword_1EDF24B28, sub_1D5C78414);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19CA0);
    }
  }
}

unint64_t sub_1D5C85E18()
{
  result = qword_1EDF3A710;
  if (!qword_1EDF3A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A710);
  }

  return result;
}

BOOL FeedServiceContextType.shouldRefreshRootCursor(createdDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D725891C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedServiceOptions(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(a2, a3);
  v15 = &v14[*(v11 + 32)];
  v16 = *v15;
  v17 = v15[8];
  sub_1D5C3BC7C(v14, type metadata accessor for FeedServiceOptions);
  if (v17)
  {
    return 0;
  }

  sub_1D725890C();
  sub_1D72587FC();
  v20 = v19;
  (*(v6 + 8))(v9, v5);
  return v16 < v20;
}

uint64_t sub_1D5C86010(void *a1)
{
  v2 = sub_1D725ABEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C44A68(0, &qword_1EDF177B0, sub_1D5B65AF4, MEMORY[0x1E69D6C08]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v14[1] = *a1;
  v9 = qword_1EDF17D78;
  swift_unknownObjectRetain();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EDF17D80);
  v11 = (*(v3 + 16))(v6, v10, v2);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14[-2] = sub_1D5B65AF4();
  swift_getKeyPath();
  sub_1D725BF6C();
  return sub_1D725A9AC();
}

unint64_t sub_1D5C86238()
{
  result = qword_1EDF319B0;
  if (!qword_1EDF319B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF319B0);
  }

  return result;
}

unint64_t sub_1D5C86298()
{
  result = qword_1EDF32810;
  if (!qword_1EDF32810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32810);
  }

  return result;
}

void sub_1D5C862EC()
{
  if (!qword_1EDF19FF8)
  {
    sub_1D5C4CDE0();
    sub_1D5B58B84(&qword_1EDF251D8, sub_1D5C4CDE0);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19FF8);
    }
  }
}

uint64_t sub_1D5C86384()
{
  v1 = 121;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 120;
  }
}

__n128 __swift_memcpy107_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 91) = *(a2 + 91);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D5C86420(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D5C28D7C(255, a2, &qword_1EDF04500, &protocolRef_FCSportsProviding, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5C86478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5C864C0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D70C5B04(255, a2, &qword_1EDF04500, &protocolRef_FCSportsProviding, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5C8652C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5B558C4(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

unint64_t sub_1D5C86600()
{
  result = qword_1EDF337F8;
  if (!qword_1EDF337F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF337F8);
  }

  return result;
}

uint64_t sub_1D5C86654()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D5C86700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5BBDECC(0, &qword_1EDF1A410, &type metadata for FormatLocalizationString, MEMORY[0x1E69E6EC8]);
    v3 = sub_1D726412C();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 6);
      v6 = *(i - 5);
      v8 = *(i - 4);
      v7 = *(i - 3);
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11 = *i;

      result = sub_1D5B69D90(v5, v6);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 16 * result);
      *v14 = v5;
      v14[1] = v6;
      v15 = (v3[7] + 40 * result);
      *v15 = v8;
      v15[1] = v7;
      v15[2] = v10;
      v15[3] = v9;
      v15[4] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
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

unint64_t sub_1D5C8685C()
{
  result = qword_1EDF29C78;
  if (!qword_1EDF29C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C78);
  }

  return result;
}

unint64_t sub_1D5C868B0()
{
  result = qword_1EDF29C90;
  if (!qword_1EDF29C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C90);
  }

  return result;
}

uint64_t sub_1D5C86918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    sub_1D5B4BDE4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

void sub_1D5C869F4()
{
  if (!qword_1EDF1A098)
  {
    sub_1D5C7CB68();
    sub_1D5B58B84(&qword_1EDF25318, sub_1D5C7CB68);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A098);
    }
  }
}

unint64_t sub_1D5C86A88()
{
  result = qword_1EDF29C58;
  if (!qword_1EDF29C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C58);
  }

  return result;
}

unint64_t sub_1D5C86ADC()
{
  result = qword_1EDF2B130;
  if (!qword_1EDF2B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B130);
  }

  return result;
}

void sub_1D5C86B30()
{
  if (!qword_1EDF253C0)
  {
    sub_1D5C74200();
    sub_1D5C74254();
    sub_1D5C742AC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF253C0);
    }
  }
}

unint64_t sub_1D5C86BB4()
{
  result = qword_1EDF2B108;
  if (!qword_1EDF2B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B108);
  }

  return result;
}

unint64_t sub_1D5C86C08()
{
  result = qword_1EDF25EC0;
  if (!qword_1EDF25EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25EC0);
  }

  return result;
}

unint64_t sub_1D5C86C74()
{
  result = qword_1EDF3F6B8;
  if (!qword_1EDF3F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3F6B8);
  }

  return result;
}

unint64_t sub_1D5C86CC8()
{
  result = qword_1EDF2ED60;
  if (!qword_1EDF2ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED60);
  }

  return result;
}

uint64_t sub_1D5C86D1C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49760(255, &qword_1EDF1B148, &type metadata for FormatMenuGroupable, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5C86DAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 1023;
    if (a3 >= 0x3FF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FF | ((-a2 & 0x3FF) << 9);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
      *(result + 24) = (v3 >> 7) & 7;
    }
  }

  return result;
}

unint64_t sub_1D5C86E18()
{
  result = qword_1EDF315B0;
  if (!qword_1EDF315B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF315B0);
  }

  return result;
}

uint64_t sub_1D5C86E6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 1023;
    *(result + 8) = 0;
    if (a3 >= 0x3FF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FF | ((-a2 & 0x3FF) << 9);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
      *(result + 24) = (v3 >> 7) & 7;
    }
  }

  return result;
}

unint64_t sub_1D5C86EC8()
{
  result = qword_1EDF315C0;
  if (!qword_1EDF315C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF315C0);
  }

  return result;
}

void sub_1D5C86F28()
{
  if (!qword_1EDF2ED68)
  {
    sub_1D5C80140(255, &qword_1EDF2E218, sub_1D5C96858);
    sub_1D5C76E90();
    v0 = type metadata accessor for FormatSwitchValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2ED68);
    }
  }
}

unint64_t sub_1D5C86FB8()
{
  result = qword_1EDF2EC98;
  if (!qword_1EDF2EC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2EC98);
  }

  return result;
}

unint64_t sub_1D5C8700C()
{
  result = qword_1EDF27748;
  if (!qword_1EDF27748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27748);
  }

  return result;
}

uint64_t sub_1D5C87060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1F1)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 498;
    if (a3 >= 0x1F2)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F2)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 8 * (-a2 & 1);
      *(result + 49) = -a2 >> 1;
    }
  }

  return result;
}

uint64_t sub_1D5C870CC()
{
  v1 = 0x736E656B6F74;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74616D726F66;
  }
}

unint64_t sub_1D5C8711C()
{
  result = qword_1EDF3A700;
  if (!qword_1EDF3A700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A700);
  }

  return result;
}

uint64_t sub_1D5C87184()
{
  v1 = *(v0 + 48);
  *(v0 + 128) = CACurrentMediaTime();
  v2 = *(v1 + 48);
  sub_1D725C35C();
  sub_1D725C36C();
  sub_1D725C32C();
  v3 = sub_1D725C36C();
  v4 = sub_1D726315C();
  if (sub_1D72638EC())
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = sub_1D725C33C();
    _os_signpost_emit_with_name_impl(&dword_1D5B42000, v3, v4, v6, "News.FeedService.EmitGroup", "", v5, 2u);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  v7 = *(v0 + 120);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 48);
  v13 = *(v0 + 56);

  (*(v11 + 16))(v8, v9, v10);
  sub_1D725C3BC();
  swift_allocObject();
  *(v0 + 136) = sub_1D725C3AC();
  (*(v11 + 8))(v9, v10);
  v14 = sub_1D6160B78(v7, v12);
  *(v0 + 144) = v14;
  *(v0 + 152) = *(v12 + 112);
  *(v0 + 32) = v7;
  v15 = swift_allocObject();
  *(v0 + 160) = v15;
  v16 = *(v13 + 80);
  *(v0 + 168) = v16;
  *(v15 + 16) = v16;
  v17 = *(v13 + 88);
  *(v0 + 176) = v17;
  *(v15 + 24) = v17;
  v20 = (*(v17 + 40) + **(v17 + 40));
  v18 = swift_task_alloc();
  *(v0 + 184) = v18;
  *v18 = v0;
  v18[1] = sub_1D5D0DE68;

  return v20(v0 + 16, v0 + 32, v14, sub_1D617CBE4, v15, v16, v17);
}

unint64_t sub_1D5C87460()
{
  result = qword_1EDF2FC80;
  if (!qword_1EDF2FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FC80);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_8NewsFeed23FormatDecorationContentO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 60;
  }

  else
  {
    return (*a1 >> 3) + 8;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed31FormatSupplementaryNodePinTraitOSg(uint64_t a1)
{
  v1 = *(a1 + 10);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5C874F8()
{
  v1 = *v0;
  v2 = 1702521203;
  v3 = 0x737469617274;
  v4 = 0x7475626972747461;
  if (v1 != 4)
  {
    v4 = 1885433183;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x676E696C616373;
  if (v1 != 1)
  {
    v5 = 0x746867696577;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t FormatBindingTextExpression.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v34 = a2;
  sub_1D5C96AF8();
  v5 = v4;
  v54 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C77030();
  sub_1D5B58B84(&qword_1EDF24F68, sub_1D5C77030);
  sub_1D7264B0C();
  v9 = v2;
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v9);
    swift_willThrow();

    v21 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v10 = v54;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v8;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v18 = *(v16 - 2);
      v17 = *(v16 - 1);

      v19 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x6369676F6CLL, 0xE500000000000000);
      sub_1D5E2D970();
      v9 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v10 + 8))(v13, v5);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D5C77160();
  v47 = 0;
  v48 = 0;
  v49 = 0;
  sub_1D726431C();
  v43 = v50;
  v44 = v51;
  v45 = v52;
  v46 = v53;
  v33 = xmmword_1D728CF30;
  v41 = xmmword_1D728CF30;
  v42 = 0;
  if (sub_1D726434C())
  {
    v35 = v33;
    v36 = 0;
    sub_1D5CA7AC0();
    sub_1D726431C();
    *&v33 = a1;
    (*(v10 + 8))(v8, v5);
    v23 = *(&v37 + 1);
    v24 = v37;
    v26 = *(&v38 + 1);
    v25 = v38;
    v27 = *(&v39 + 1);
    v28 = v39;
    v29 = v40 | (BYTE2(v40) << 16);
    sub_1D5CA8444(v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), v29);
    sub_1D5CA8488(v24, v23, v25, v26, v28, v27, v29);
  }

  else
  {
    *&v33 = a1;
    (*(v10 + 8))(v8, v5);
    v23 = 0;
    v25 = 0;
    v26 = 0;
    v28 = 0;
    v27 = 0;
    v29 = 12582912;
    v24 = 1;
  }

  LOWORD(v40) = v46;
  v30 = v44;
  v37 = v43;
  v38 = v44;
  v31 = v45;
  v39 = v45;
  v32 = v34;
  *v34 = v43;
  v32[1] = v30;
  v32[2] = v31;
  *(v32 + 6) = v40;
  *(v32 + 7) = v24;
  *(v32 + 8) = v23;
  *(v32 + 9) = v25;
  *(v32 + 10) = v26;
  *(v32 + 11) = v28;
  *(v32 + 12) = v27;
  *(v32 + 52) = v29;
  *(v32 + 106) = BYTE2(v29);
  v21 = v33;
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

unint64_t sub_1D5C879FC()
{
  result = qword_1EDF22950;
  if (!qword_1EDF22950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22950);
  }

  return result;
}

unint64_t sub_1D5C87A50()
{
  result = qword_1EDF22960;
  if (!qword_1EDF22960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22960);
  }

  return result;
}

uint64_t sub_1D5C87AA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v5 = a1 & 0x7FFFFFFFFFFFFFFFLL;
  if (a1 >= 0)
  {
    a3 = a2;
  }

  v7 = *a3;
  v8 = sub_1D725891C();
  v9 = *(*(v8 - 8) + 16);

  return v9(a4, v5 + v7, v8);
}

uint64_t FormatMenuImage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v10;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F5115FA8;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C9B730();
    v27 = 0uLL;
    sub_1D726431C();
    if (v26)
    {
      v27 = xmmword_1D7279980;
      sub_1D5C87F74();
      sub_1D726431C();
      v22 = v29;
      (*(v7 + 8))(v13, v6);
      v23 = 0;
      v24 = v26;
      v25 = 0x2000000000000000;
    }

    else
    {
      sub_1D5C9B7F0();
      v26 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EDF2E210, sub_1D5C9B7F0);
      sub_1D726431C();
      v22 = v29;
      (*(v7 + 8))(v13, v6);
      v23 = *(&v27 + 1);
      v24 = v27;
      v25 = v28;
    }

    *v22 = v24;
    v22[1] = v23;
    v22[2] = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C87EE8()
{
  result = qword_1EDF315D8;
  if (!qword_1EDF315D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF315D8);
  }

  return result;
}

unint64_t sub_1D5C87F3C(void *a1)
{
  a1[1] = sub_1D5C87F74();
  a1[2] = sub_1D5C87FC8();
  result = sub_1D5C9B8C0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5C87F74()
{
  result = qword_1EDF27E48;
  if (!qword_1EDF27E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27E48);
  }

  return result;
}

unint64_t sub_1D5C87FC8()
{
  result = qword_1EDF27E58;
  if (!qword_1EDF27E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27E58);
  }

  return result;
}

unint64_t sub_1D5C88034()
{
  result = qword_1EDF27E60;
  if (!qword_1EDF27E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27E60);
  }

  return result;
}

uint64_t sub_1D5C880E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C9BF48();
  *a1 = result;
  return result;
}

unint64_t sub_1D5C88118()
{
  result = qword_1EDF2ADE0;
  if (!qword_1EDF2ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ADE0);
  }

  return result;
}

uint64_t sub_1D5C8816C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

unint64_t sub_1D5C881C8(void *a1)
{
  v2 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v12 = v36;
  sub_1D7264B0C();
  v13 = v12;
  if (v12)
  {
LABEL_15:
    sub_1D61E4FBC(a1, v13);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v36 = v5;
    v14 = v33;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v11 = v10;
    if (v16)
    {
      v17 = sub_1D726433C();
      v18 = (v17 + 40);
      v19 = *(v17 + 16) + 1;
      while (--v19)
      {
        v20 = v18 + 2;
        v21 = *v18;
        v18 += 2;
        if (v21 >= 4)
        {
          v22 = *(v20 - 3);

          sub_1D5E2D970();
          v13 = swift_allocError();
          *v23 = v22;
          *(v23 + 8) = v21;
          *(v23 + 16) = &unk_1F5115FF8;
          *(v23 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v11, v7);
          goto LABEL_15;
        }
      }
    }

    sub_1D5C9BF94();
    v35 = 0uLL;
    sub_1D726431C();
    if (v34 > 1u)
    {
      if (v34 == 2)
      {
        v35 = xmmword_1D7279980;
        sub_1D5C6C910();
        sub_1D726431C();
        (*(v14 + 8))(v11, v7);
        v24 = v34;
        v25 = swift_allocObject();
        *(v25 + 16) = v24;
        v11 = v25 | 0x4000000000000000;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EDF2EDD8, sub_1D5C888A0, &type metadata for FormatMenuItemAction, type metadata accessor for FormatSwitchValue);
        v34 = xmmword_1D7279980;
        sub_1D5C889D4();
        sub_1D726431C();
        (*(v14 + 8))(v11, v7);
        v30 = *(&v35 + 1);
        v29 = v35;
        v31 = swift_allocObject();
        *(v31 + 16) = v29;
        *(v31 + 24) = v30;
        v11 = v31 | 0x8000000000000000;
      }
    }

    else if (v34)
    {
      v35 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EDF2B450, type metadata accessor for FormatCommandOpenURL);
      v26 = v36;
      sub_1D726431C();
      (*(v14 + 8))(v11, v7);
      v11 = swift_allocBox();
      sub_1D5C8F76C(v26, v27, type metadata accessor for FormatCommandOpenURL);
    }

    else
    {
      (*(v14 + 8))(v11, v7);
      v11 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

uint64_t sub_1D5C88700()
{

  return swift_deallocObject();
}

unint64_t sub_1D5C88744@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1D5C881C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5C887D0()
{
  result = qword_1EDF2AE00;
  if (!qword_1EDF2AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AE00);
  }

  return result;
}

uint64_t sub_1D5C88824@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C88854();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C88854()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C888A0()
{
  result = qword_1EDF2ADD8;
  if (!qword_1EDF2ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ADD8);
  }

  return result;
}

unint64_t sub_1D5C888F4(void *a1)
{
  a1[1] = sub_1D5C88118();
  a1[2] = sub_1D5C8892C();
  result = sub_1D5C88980();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5C8892C()
{
  result = qword_1EDF2ADF0;
  if (!qword_1EDF2ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ADF0);
  }

  return result;
}

unint64_t sub_1D5C88980()
{
  result = qword_1EDF2ADE8;
  if (!qword_1EDF2ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ADE8);
  }

  return result;
}

unint64_t sub_1D5C889D4()
{
  result = qword_1EDF2EDE0;
  if (!qword_1EDF2EDE0)
  {
    sub_1D5C30060(255, &qword_1EDF2EDD8, sub_1D5C888A0, &type metadata for FormatMenuItemAction, type metadata accessor for FormatSwitchValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2EDE0);
  }

  return result;
}

unint64_t sub_1D5C88A64()
{
  result = qword_1EDF1F348[0];
  if (!qword_1EDF1F348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF1F348);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatLayeredMediaNodeBinding(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5C88B68()
{
  result = qword_1EDF40018;
  if (!qword_1EDF40018)
  {
    sub_1D5C34074(255, &qword_1EDF40010, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatSelectorValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF40018);
  }

  return result;
}

uint64_t sub_1D5C88C10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C9BFE8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1D5C88C3C()
{
  if (!qword_1EDF19D08)
  {
    sub_1D5C88CD0();
    sub_1D5B58B84(&qword_1EDF24BF8, sub_1D5C88CD0);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D08);
    }
  }
}

void sub_1D5C88CD0()
{
  if (!qword_1EDF24BF0)
  {
    sub_1D5C9D600();
    sub_1D5C88D54();
    sub_1D5C88E00();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24BF0);
    }
  }
}

unint64_t sub_1D5C88D54()
{
  result = qword_1EDF321E8;
  if (!qword_1EDF321E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF321E8);
  }

  return result;
}

unint64_t sub_1D5C88DAC()
{
  result = qword_1EDF321D8;
  if (!qword_1EDF321D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF321D8);
  }

  return result;
}

unint64_t sub_1D5C88E00()
{
  result = qword_1EDF321F0;
  if (!qword_1EDF321F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF321F0);
  }

  return result;
}

unint64_t sub_1D5C88E5C()
{
  result = qword_1EDF32080;
  if (!qword_1EDF32080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32080);
  }

  return result;
}

unint64_t sub_1D5C88EB0()
{
  result = qword_1EDF320A0;
  if (!qword_1EDF320A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF320A0);
  }

  return result;
}

uint64_t sub_1D5C88F04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C88F34();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C88F34()
{
  v0 = sub_1D72641CC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C88FA8()
{
  result = qword_1EDF31208;
  if (!qword_1EDF31208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31208);
  }

  return result;
}

uint64_t sub_1D5C89000()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x656D7473756A6461;
  v4 = 2019912806;
  if (v1 != 3)
  {
    v4 = 1885433183;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1702521203;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D5C89128@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C89090(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5C89154()
{
  result = qword_1EDF327E0;
  if (!qword_1EDF327E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF327E0);
  }

  return result;
}

uint64_t sub_1D5C891B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 *a13, uint64_t a14, uint64_t a15)
{
  v18 = *a5;
  v29 = *(a13 + 2);
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v19 = qword_1EDFFC670;
  v20 = sub_1D725891C();
  v21 = *(*(v20 - 8) + 32);
  v25 = *a13;
  v21(v15 + v19, a3, v20);
  v21(v15 + qword_1EDFFC688, a4, v20);
  *(v15 + qword_1EDFFC640) = v18;
  *(v15 + qword_1EDFFC668) = a6;
  *(v15 + qword_1EDFFC658) = a7;
  *(v15 + qword_1EDFFC660) = a8;
  *(v15 + qword_1EDFFC638) = a9;
  sub_1D5C25D20(a10, v15 + qword_1EDFFC680);
  *(v15 + qword_1EDFFC650) = a11;
  *(v15 + qword_1EDFFC648) = a12;
  v22 = v15 + qword_1EDFFC678;
  *v22 = v25;
  *(v22 + 16) = v29;
  v23 = (v15 + qword_1EDF14B30);
  *v23 = a14;
  v23[1] = a15;
  return v15;
}

void sub_1D5C8935C(void *a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void (*)(void)))
{
  v9 = [a1 error];
  if (!v9)
  {
    v10 = [a1 fetchedObject];
    if (!v10)
    {
      goto LABEL_11;
    }

    v30 = v10;
    sub_1D5C44E18();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    v12 = sub_1D5C44E90(v11);
    if ((sub_1D5BFC390(v12, a4) & 1) == 0)
    {

      v22 = sub_1D725B50C();
      sub_1D5C44FC8(&qword_1EDF17B48, MEMORY[0x1E69D68A0]);
      v23 = swift_allocError();
      v25 = v24;
      if (qword_1EDF17D78 != -1)
      {
        swift_once();
      }

      v26 = sub_1D725ABEC();
      v27 = __swift_project_value_buffer(v26, qword_1EDF17D80);
      (*(*(v26 - 8) + 16))(v25, v27, v26);
      if (*(v12 + 16) <= *(a4 + 16) >> 3)
      {
        v30 = a4;

        sub_1D6836478(v12);
      }

      else
      {

        a4 = sub_1D6E14F70(v12, a4);
      }

      sub_1D691F858();
      *(v25 + *(v28 + 48)) = a4;
      (*(*(v22 - 8) + 104))(v25, *MEMORY[0x1E69D6898], v22);
      (a2)(v23);
      v21 = v23;
      goto LABEL_14;
    }

    v13 = *(v31 + 16);
    if (v13)
    {
      a2 = sub_1D5C38490(*(v31 + 16), 0);
      v14 = sub_1D5C38498(&v30, a2 + 32, v13, v31);
      sub_1D5B87E38();
      if (v14 != v13)
      {
        __break(1u);
LABEL_11:
        v15 = sub_1D725B50C();
        sub_1D5C44FC8(&qword_1EDF17B48, MEMORY[0x1E69D68A0]);
        v16 = swift_allocError();
        v18 = v17;
        if (qword_1EDF17D78 != -1)
        {
          swift_once();
        }

        v19 = sub_1D725ABEC();
        v20 = __swift_project_value_buffer(v19, qword_1EDF17D80);
        (*(*(v19 - 8) + 16))(v18, v20, v19);
        (*(*(v15 - 8) + 104))(v18, *MEMORY[0x1E69D6890], v15);
        (a2)(v16);
        v21 = v16;
LABEL_14:

        return;
      }
    }

    else
    {

      a2 = MEMORY[0x1E69E7CC0];
    }

    a5(a2);

    return;
  }

  v29 = v9;
  a2();
}

uint64_t sub_1D5C897BC(uint64_t a1)
{
  result = MEMORY[0x1DA6FA1E0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1D5B860D0(&v13, v11, v12);
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

      return v14;
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

uint64_t sub_1D5C898FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64684;

  return sub_1D5C899A8(a1, v5, v4);
}

uint64_t sub_1D5C899A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[2] = a3;
  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_1D5D107A0;

  return sub_1D5C795F8(v3 + 2);
}

uint64_t sub_1D5C89A48()
{
  type metadata accessor for FeedDeferredCursorGroup();
  result = sub_1D726279C();
  v2 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = *(v0 + qword_1EDFFC650);
  result = v2 + v3;
  if (__OFADD__(v2, v3))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D5C89AD4()
{
  sub_1D725B77C();
  v1 = v0[2];
  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1D5BA6EF4();
  *v2 = v0;
  v2[1] = sub_1D5D0CE5C;
  v5 = v0[3];
  v6 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v5, v1, AssociatedTypeWitness, v4, v6);
}

uint64_t sub_1D5C89C2C(void *a1)
{
  v2 = sub_1D725ABEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B9F0F8(0, &qword_1EDF43A20, sub_1D5B5D6A0, MEMORY[0x1E69D6C08]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v14[1] = *a1;
  v9 = qword_1EDF17C98;
  swift_unknownObjectRetain();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EDF17CA0);
  v11 = (*(v3 + 16))(v6, v10, v2);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14[-2] = sub_1D5B5D6A0();
  swift_getKeyPath();
  sub_1D725BF6C();
  return sub_1D725A9AC();
}

id sub_1D5C89E74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_1D5C8A440(0, &unk_1EDF17678, &qword_1EDF04410);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  sub_1D5C25D84(0, &unk_1EDF176C0, sub_1D5C483D4, MEMORY[0x1E69D6C08]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = sub_1D725ABEC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8A440(0, &qword_1EDF17688, &unk_1EDF1A820);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);

  v14 = sub_1D72641CC();

  if (v14 == 2)
  {
    v23 = [objc_msgSend(*(a1 + 16) appConfigurationManager)];
    swift_unknownObjectRelease();
    if ([v23 respondsToSelector_])
    {
      v24 = [v23 paidBundleConfig];
      swift_unknownObjectRelease();
      v31 = v24;
      v25 = qword_1EDF17DE8;
      v26 = v24;
      if (v25 != -1)
      {
        swift_once();
      }

      v27 = __swift_project_value_buffer(v7, qword_1EDF17DF0);
      (*(v8 + 16))(v11, v27, v7);
      sub_1D5B5A498(0, &qword_1EDF04410);
      sub_1D725BF4C();
      v19 = v30;
      sub_1D725A9AC();

      goto LABEL_16;
    }

    swift_unknownObjectRelease();
LABEL_18:
    v29 = sub_1D725A9BC();
    return (*(*(v29 - 8) + 56))(v30, 1, 1, v29);
  }

  if (v14 == 1)
  {
    v20 = [objc_msgSend(*(a1 + 16) appConfigurationManager)];
    swift_unknownObjectRelease();
    v31 = v20;
    v21 = qword_1EDF17DE8;
    swift_unknownObjectRetain();
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v7, qword_1EDF17DF0);
    (*(v8 + 16))(v11, v22, v7);
    sub_1D5C483D4();
    sub_1D725BF4C();
    swift_unknownObjectRelease();
    v19 = v30;
    goto LABEL_11;
  }

  if (v14)
  {
    goto LABEL_18;
  }

  result = [*(a1 + 16) subscriptionController];
  if (result)
  {
    v31 = result;
    v16 = qword_1EDF17DE8;
    v17 = result;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v7, qword_1EDF17DF0);
    (*(v8 + 16))(v11, v18, v7);
    sub_1D5B5A498(0, &unk_1EDF1A820);
    sub_1D725BF4C();

    v19 = v30;
LABEL_11:
    sub_1D725A9AC();
LABEL_16:
    v28 = sub_1D725A9BC();
    return (*(*(v28 - 8) + 56))(v19, 0, 1, v28);
  }

  __break(1u);
  return result;
}

void sub_1D5C8A440(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D5B5A498(255, a3);
    v4 = sub_1D725BFAC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5C8A498(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5C8A4FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5C8A560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5C8A5C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

size_t sub_1D5C8A65C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D5BFBCE4(a1, a2, a3, *v3, &qword_1EDF023E0, MEMORY[0x1E69D6430], MEMORY[0x1E69D6430]);
  *v3 = result;
  return result;
}

uint64_t sub_1D5C8A6AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FormatSystemFont.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  sub_1D5C48998();
  v50 = v5;
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5C8AD30();
  v10 = v9;
  v49 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C48AEC();
  sub_1D5B58B84(&qword_1EDF25668, sub_1D5C48AEC);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_19:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v37 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v14 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v15 = sub_1D7264AFC();
  LOBYTE(v14) = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v17 = v49;
  v16 = v50;
  v18 = v13;
  v19 = v8;
  if (v14)
  {
    v20 = sub_1D726433C();
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = (v20 + 48);
      while (*v22 != 1)
      {
        v22 += 24;
        if (!--v21)
        {
          goto LABEL_7;
        }
      }

      v34 = *(v22 - 2);
      v33 = *(v22 - 1);

      v35 = sub_1D6624D18();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v36 = v34;
      *(v36 + 8) = v33;
      *(v36 + 16) = v35;
      *(v36 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v17 + 8))(v18, v10);
      a1 = v46;
      goto LABEL_19;
    }

LABEL_7:
  }

  v55 = 0uLL;
  LOBYTE(v56) = 0;
  v23 = 16.0;
  if (sub_1D726434C())
  {
    v53 = 0uLL;
    v54 = 0;
    sub_1D5B57870();
    sub_1D726431C();
    v23 = v51;
  }

  v45 = xmmword_1D728CF30;
  v55 = xmmword_1D728CF30;
  LOBYTE(v56) = 0;
  if (sub_1D726434C())
  {
    v53 = v45;
    v54 = 0;
    sub_1D5CA8B24();
    sub_1D726431C();
    v24 = v51;
    v25 = v52;
  }

  else
  {
    v24 = 0.0;
    v25 = 3072;
  }

  v44 = v25;
  v45 = xmmword_1D7297410;
  v55 = xmmword_1D7297410;
  LOBYTE(v56) = 0;
  if (sub_1D726434C())
  {
    v53 = v45;
    v54 = 0;
    sub_1D5C48CC0();
    sub_1D726431C();
    v26 = LOBYTE(v51);
  }

  else
  {
    v26 = 5;
  }

  v45 = xmmword_1D72BAA60;
  v55 = xmmword_1D72BAA60;
  LOBYTE(v56) = 0;
  if (sub_1D726434C())
  {
    v53 = v45;
    v54 = 0;
    sub_1D5B58B84(&qword_1EDF3BE70, sub_1D5C48998);
    sub_1D726431C();
    *&v45 = v24;
    v27 = v19;
    v28 = v18;
    v29 = v10;
    v30 = v17;
    v31 = sub_1D725A74C();
    v32 = v27;
    v24 = *&v45;
    (*(v47 + 8))(v32, v16);
  }

  else
  {
    v28 = v18;
    v29 = v10;
    v30 = v17;
    v31 = MEMORY[0x1E69E7CD0];
  }

  v53 = xmmword_1D72BAA70;
  v54 = 0;
  sub_1D5C7983C();
  sub_1D726427C();
  (*(v30 + 8))(v28, v29);
  v39 = v57;
  v40 = v24;
  v41 = v48;
  *v48 = v23;
  v41[1] = v40;
  *(v41 + 8) = v44;
  *(v41 + 18) = v26;
  *(v41 + 19) = LODWORD(v51);
  *(v41 + 23) = BYTE4(v51);
  *(v41 + 3) = v31;
  v42 = v56;
  *(v41 + 2) = v55;
  *(v41 + 3) = v42;
  *(v41 + 32) = v39;
  v37 = v46;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1D5C8ACDC()
{
  result = qword_1EDF319A8;
  if (!qword_1EDF319A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF319A8);
  }

  return result;
}

void sub_1D5C8AD30()
{
  if (!qword_1EDF1A240)
  {
    sub_1D5C48AEC();
    sub_1D5B58B84(&qword_1EDF25668, sub_1D5C48AEC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A240);
    }
  }
}

uint64_t sub_1D5C8ADC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_1D5C8AE10(void *a1)
{
  a1[1] = sub_1D5C8AE48();
  a1[2] = sub_1D5C48FB8();
  result = sub_1D5C79890();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5C8AE48()
{
  result = qword_1EDF2ECF0;
  if (!qword_1EDF2ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ECF0);
  }

  return result;
}

void sub_1D5C8AEB4()
{
  if (!qword_1EDF3BEB0)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BEB0);
    }
  }
}

uint64_t storeEnumTagSinglePayload for FormatSystemColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 40 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 40) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD8)
  {
    v4 = 0;
  }

  if (a2 > 0xD7)
  {
    v5 = ((a2 - 216) >> 8) + 1;
    *result = a2 + 40;
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
    *result = a2 + 40;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5C8AFD4()
{
  result = qword_1EDF11510;
  if (!qword_1EDF11510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11510);
  }

  return result;
}

unint64_t sub_1D5C8B028()
{
  result = qword_1EDF11528;
  if (!qword_1EDF11528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11528);
  }

  return result;
}

uint64_t sub_1D5C8B07C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 3)
  {
    *result = a2 - 4;
    if (a3 >= 4)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 4)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = -a2 & 7;
    }
  }

  return result;
}

uint64_t sub_1D5C8B0C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 4 && *(a1 + 8))
  {
    return (*a1 + 4);
  }

  v3 = ~*a1 & 7;
  if (v3 >= 3)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t FormatShine.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v25 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51171A8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D5C8B5D8();
    v27 = 0uLL;
    sub_1D726431C();
    if (v28 <= 1u)
    {
      v23 = v26;
      a1 = v12;
      v27 = xmmword_1D7279980;
      if (v28)
      {
        sub_1D5B570F8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28 | 1;
      }

      else
      {
        sub_1D5B570F8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28;
      }
    }

    else
    {
      v23 = v26;
      a1 = v12;
      if (v28 == 2)
      {
        v27 = xmmword_1D7279980;
        sub_1D5B570F8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v28 | 2;
      }

      else
      {
        v27 = xmmword_1D7279980;
        if (v28 == 3)
        {
          sub_1D5B570F8();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v28 | 3;
        }

        else
        {
          sub_1D5B570F8();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v28 | 4;
        }
      }
    }

    *v23 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C8B5D8()
{
  result = qword_1EDF127E8;
  if (!qword_1EDF127E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF127E8);
  }

  return result;
}

unint64_t sub_1D5C8B68C()
{
  result = qword_1EDF127F0;
  if (!qword_1EDF127F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF127F0);
  }

  return result;
}

uint64_t sub_1D5C8B6E0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5C8B750(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BCD8, sub_1D5C8C100, sub_1D5C8C154);
  v3 = v2;
  v52 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v43[-v5];
  sub_1D5C49D8C();
  v8 = *(v7 - 8);
  v53 = v7;
  v54 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C8C1A8();
  sub_1D5B58B84(&qword_1EDF25438, sub_1D5C8C1A8);
  v12 = v71;
  sub_1D7264B0C();
  v13 = v12;
  if (v12)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v13);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v3;
  }

  v14 = v6;
  v71 = v3;
  v3 = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7264AFC();
  v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v17 = v53;
  if (v16)
  {
    v18 = sub_1D726433C();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 48);
      while (*v20 != 1)
      {
        v20 += 24;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v20 - 2);
      v22 = *(v20 - 1);

      v24 = sub_1D662763C();
      sub_1D5E2D970();
      v25 = swift_allocError();
      *v26 = v23;
      *(v26 + 8) = v22;
      v13 = v25;
      *(v26 + 16) = v24;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v54 + 8))(v11, v17);
      goto LABEL_10;
    }

LABEL_7:
  }

  v50 = sub_1D5C31D18(v11, 0, 0, 0, sub_1D5C49D8C);
  v51 = v21;
  v65 = xmmword_1D728CF30;
  LOBYTE(v66) = 0;
  v47 = sub_1D72642BC();
  v49 = v28;
  v48 = xmmword_1D7297410;
  v65 = xmmword_1D7297410;
  LOBYTE(v66) = 0;
  v29 = sub_1D726434C();
  if (v29)
  {
    v57 = v48;
    LOBYTE(v58) = 0;
    sub_1D5C8C4C0();
    v30 = v71;
    sub_1D726431C();
    *&v48 = sub_1D725A74C();
    (*(v52 + 8))(v14, v30);
  }

  else
  {
    *&v48 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v65 = xmmword_1D72BAA60;
  LOBYTE(v66) = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v31 = v11;
  v32 = v57;
  v65 = xmmword_1D72BAA70;
  LOBYTE(v66) = 0;
  sub_1D5C4A954();
  sub_1D726427C();
  v71 = v32;
  v33 = v57;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v65 = xmmword_1D72BAA80;
  LOBYTE(v66) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v52 = v57;
  v57 = xmmword_1D72BAA90;
  LOBYTE(v58) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v46 = v65;
  v34 = v66;
  v63 = xmmword_1D72BAAA0;
  v64 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v44 = v34;
  v45 = v33;
  v59 = v67;
  v60 = v68;
  v61 = v69;
  v62 = v70;
  v57 = v65;
  v58 = v66;
  v55 = xmmword_1D72BAAB0;
  v56 = 0;
  v35 = sub_1D726423C();
  (*(v54 + 8))(v31, v17);
  type metadata accessor for FormatViewNodeStyle();
  v3 = swift_allocObject();
  swift_beginAccess();
  v36 = v51;
  *(v3 + 16) = v50;
  *(v3 + 24) = v36;
  v37 = v49;
  *(v3 + 32) = v47;
  *(v3 + 40) = v37;
  swift_beginAccess();
  v38 = v60;
  *(v3 + 136) = v59;
  *(v3 + 152) = v38;
  *(v3 + 168) = v61;
  v39 = v58;
  *(v3 + 104) = v57;
  v40 = v71;
  *(v3 + 48) = v48;
  *(v3 + 56) = v40;
  v41 = v52;
  *(v3 + 64) = v45;
  *(v3 + 72) = v41;
  v42 = *(&v46 + 1);
  *(v3 + 80) = v46;
  *(v3 + 88) = v42;
  *(v3 + 96) = v44;
  *(v3 + 184) = v62;
  *(v3 + 120) = v39;
  *(v3 + 185) = v35;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_1D5C8C0D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C8B750(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5C8C100()
{
  result = qword_1EDF2BAA8;
  if (!qword_1EDF2BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BAA8);
  }

  return result;
}

unint64_t sub_1D5C8C154()
{
  result = qword_1EDF2BAB0;
  if (!qword_1EDF2BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BAB0);
  }

  return result;
}

void sub_1D5C8C1A8()
{
  if (!qword_1EDF25430)
  {
    sub_1D5C8C22C();
    sub_1D5C8C280();
    sub_1D5C8C328();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25430);
    }
  }
}

unint64_t sub_1D5C8C22C()
{
  result = qword_1EDF2BAF0;
  if (!qword_1EDF2BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BAF0);
  }

  return result;
}

unint64_t sub_1D5C8C280()
{
  result = qword_1EDF2BAF8;
  if (!qword_1EDF2BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BAF8);
  }

  return result;
}

unint64_t sub_1D5C8C2D4()
{
  result = qword_1EDF2BAE0;
  if (!qword_1EDF2BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BAE0);
  }

  return result;
}

unint64_t sub_1D5C8C328()
{
  result = qword_1EDF2BB00[0];
  if (!qword_1EDF2BB00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2BB00);
  }

  return result;
}

uint64_t sub_1D5C8C384(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x776F64616873;
    v6 = 0xD000000000000018;
    if (a1 != 8)
    {
      v6 = 1885433183;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x73726564726F62;
    if (a1 != 5)
    {
      v7 = 0x615272656E726F63;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x726F7463656C6573;
    v3 = 0x6168706C61;
    if (a1 != 3)
    {
      v3 = 0x756F72676B636162;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7373616C63;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1D5C8C4C0()
{
  result = qword_1EDF3BCE0;
  if (!qword_1EDF3BCE0)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BCD8, sub_1D5C8C100, sub_1D5C8C154);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BCE0);
  }

  return result;
}

uint64_t sub_1D5C8C550(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
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

unint64_t sub_1D5C8C5B0()
{
  result = qword_1EDF2BAD0;
  if (!qword_1EDF2BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BAD0);
  }

  return result;
}

unint64_t sub_1D5C8C604()
{
  result = qword_1EDF2BAB8;
  if (!qword_1EDF2BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BAB8);
  }

  return result;
}

uint64_t sub_1D5C8C65C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D5C8C734()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C8C780()
{
  result = qword_1EDF2E160;
  if (!qword_1EDF2E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E160);
  }

  return result;
}

__n128 __swift_memcpy153_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1D5C8C808(uint64_t a1, uint64_t a2)
{
  sub_1D5C2CBA8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5C8C86C(uint64_t a1)
{
  sub_1D5C4BC40(0, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FormatDecorationCollection.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  sub_1D5C8CBC8(0, &qword_1EDF039B0, sub_1D5C4C500, &type metadata for FormatDecorationCollection.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C4C500();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v13;
    sub_1D5C8CC30();
    sub_1D5C4C558(&qword_1EDF05128, &qword_1EDF12458);
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
    *v10 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C8CBC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D5C8CC30()
{
  if (!qword_1EDF1B3B0)
  {
    sub_1D5C2CA80(255, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B3B0);
    }
  }
}

uint64_t sub_1D5C8CCC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 106) = 0;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 107) = 1;
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

    *(result + 107) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D5C8CD38()
{
  if (!qword_1EDF43AE8)
  {
    v0 = sub_1D725A75C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF43AE8);
    }
  }
}

unint64_t sub_1D5C8CDB8()
{
  result = qword_1EDF30550;
  if (!qword_1EDF30550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30550);
  }

  return result;
}

uint64_t sub_1D5C8CE14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D5C8CE64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x78 && *(a1 + 8))
  {
    return (*a1 + 120);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x77)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t FormatDecorationContent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v50 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v61;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v9;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F5114B48;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C8D78C();
    *&v52[8] = 0;
    *v52 = 0;
    sub_1D726431C();
    if (v60 <= 3u)
    {
      v24 = v12;
      if (v60 > 1u)
      {
        if (v60 == 2)
        {
          v60 = xmmword_1D7279980;
          sub_1D5C4C9E8();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v29 = swift_allocObject();
          v30 = *&v52[16];
          *(v29 + 16) = *v52;
          *(v29 + 32) = v30;
          v31 = v53;
          *(v29 + 48) = *&v52[32];
          *(v29 + 64) = v31;
          v28 = v29 | 0x1000000000000000;
        }

        else
        {
          v60 = xmmword_1D7279980;
          sub_1D6676230();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v38 = swift_allocObject();
          v39 = v55;
          *(v38 + 80) = v54;
          *(v38 + 96) = v39;
          v40 = v57;
          *(v38 + 112) = v56;
          *(v38 + 128) = v40;
          v41 = *&v52[16];
          *(v38 + 16) = *v52;
          *(v38 + 32) = v41;
          v42 = v53;
          *(v38 + 48) = *&v52[32];
          *(v38 + 64) = v42;
          v28 = v38 | 0x2000000000000000;
        }
      }

      else if (v60)
      {
        *v52 = xmmword_1D7279980;
        sub_1D5B570F8();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v37 = v60;
        v28 = swift_allocObject();
        *(v28 + 16) = v37;
      }

      else
      {
        (*(v11 + 8))(v15, v5);
        v28 = 0x8000000000000000;
      }
    }

    else
    {
      v24 = v12;
      if (v60 <= 5u)
      {
        if (v60 == 4)
        {
          v60 = xmmword_1D7279980;
          sub_1D6686394();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v32 = v52[0];
          v33 = v52[40];
          v51 = *&v52[8];
          v50 = *&v52[24];
          v34 = swift_allocObject();
          *(v34 + 16) = v32;
          *(v34 + 40) = v50;
          *(v34 + 24) = v51;
          *(v34 + 56) = v33;
          v28 = v34 | 0x3000000000000000;
        }

        else
        {
          v60 = xmmword_1D7279980;
          sub_1D6676114();
          sub_1D726431C();
          (*(v11 + 8))(v15, v5);
          v45 = swift_allocObject();
          v46 = v57;
          *(v45 + 112) = v56;
          *(v45 + 128) = v46;
          *(v45 + 144) = v58;
          *(v45 + 160) = v59;
          v47 = v53;
          *(v45 + 48) = *&v52[32];
          *(v45 + 64) = v47;
          v48 = v55;
          *(v45 + 80) = v54;
          *(v45 + 96) = v48;
          v49 = *&v52[16];
          v28 = v45 | 0x4000000000000000;
          *(v45 + 16) = *v52;
          *(v45 + 32) = v49;
        }
      }

      else if (v60 == 6)
      {
        *v52 = xmmword_1D7279980;
        sub_1D5C49CDC();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v35 = v60;
        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        v28 = v36 | 0x5000000000000000;
      }

      else if (v60 == 7)
      {
        sub_1D5C30060(0, &qword_1EDF2C100, sub_1D6686220, &type metadata for FormatDecorationContent, type metadata accessor for FormatSelectorValue);
        v60 = xmmword_1D7279980;
        sub_1D6686304();
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v25 = *v52;
        v26 = *&v52[8];
        v27 = swift_allocObject();
        *(v27 + 16) = v25;
        *(v27 + 24) = v26;
        v28 = v27 | 0x6000000000000000;
      }

      else
      {
        sub_1D6686164();
        v60 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC886AA0, sub_1D6686164);
        sub_1D726431C();
        (*(v11 + 8))(v15, v5);
        v51 = *v52;
        v43 = *&v52[16];
        v44 = swift_allocObject();
        *(v44 + 16) = v51;
        *(v44 + 32) = v43;
        v28 = v44 | 0x7000000000000000;
      }
    }

    *v24 = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C8D730()
{

  return swift_deallocObject();
}

unint64_t sub_1D5C8D78C()
{
  result = qword_1EDF27660;
  if (!qword_1EDF27660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27660);
  }

  return result;
}

uint64_t sub_1D5C8D840@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C4C99C();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C8D870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D5C8D8C0()
{
  if (!qword_1EDF19D38)
  {
    sub_1D5C4CA84();
    sub_1D5B58B84(&qword_1EDF24C58, sub_1D5C4CA84);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D38);
    }
  }
}

unint64_t sub_1D5C8D954()
{
  result = qword_1EDF32800;
  if (!qword_1EDF32800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32800);
  }

  return result;
}

unint64_t sub_1D5C8D9C4()
{
  result = qword_1EDF27450;
  if (!qword_1EDF27450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27450);
  }

  return result;
}

void sub_1D5C8DA18()
{
  if (!qword_1EDF24CD0)
  {
    sub_1D5C7B8C4();
    sub_1D5C8DB48();
    sub_1D5C4D6A0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24CD0);
    }
  }
}

void sub_1D5C8DA9C()
{
  if (!qword_1EDF19D78)
  {
    sub_1D5C8DA18();
    sub_1D5B58B84(&qword_1EDF24CD8, sub_1D5C8DA18);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D78);
    }
  }
}

unint64_t sub_1D5C8DB48()
{
  result = qword_1EDF34140;
  if (!qword_1EDF34140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34140);
  }

  return result;
}

unint64_t sub_1D5C8DBA0()
{
  result = qword_1EDF34128;
  if (!qword_1EDF34128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34128);
  }

  return result;
}

unint64_t sub_1D5C8DBF8()
{
  result = qword_1EDF34130;
  if (!qword_1EDF34130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34130);
  }

  return result;
}

unint64_t sub_1D5C8DC6C()
{
  result = qword_1EDF2C1D8;
  if (!qword_1EDF2C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C1D8);
  }

  return result;
}

uint64_t sub_1D5C8DCC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D5B5BC8C(0, &qword_1EDF1A588, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540], MEMORY[0x1E69E6A10]);
    v3 = sub_1D7263CDC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_1D72649FC();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1D5C8DE10()
{
  result = qword_1EDF33810;
  if (!qword_1EDF33810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33810);
  }

  return result;
}

unint64_t sub_1D5C8DE68()
{
  result = qword_1EDF2F320;
  if (!qword_1EDF2F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F320);
  }

  return result;
}

uint64_t sub_1D5C8DEBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x73 && *(a1 + 8))
  {
    return (*a1 + 115);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x72)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5C8DF0C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FormatSelectorValueSelector();
    swift_getWitnessTable();
    swift_getWitnessTable();
    type metadata accessor for FormatCodingEmptyArrayStrategy();
    swift_getWitnessTable();
    result = type metadata accessor for FormatCodingDefault();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D5C8E028()
{
  if (!qword_1EDF40030)
  {
    sub_1D725891C();
    sub_1D5C4E1FC();
    v0 = type metadata accessor for FormatSelectorValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF40030);
    }
  }
}

uint64_t sub_1D5C8E094(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t FormatSelectorValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v52 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v54 = &v45 - v7;
  v56 = v9;
  v57 = v8;
  v10 = _s10CodingKeysOMa_250();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  *&v59 = v10;
  *(&v59 + 1) = WitnessTable;
  v53 = WitnessTable;
  v51 = v12;
  v60 = v12;
  v61 = v13;
  v14 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v15 = sub_1D726435C();
  v55 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v45 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v58;
  sub_1D7264B0C();
  v20 = v19;
  if (v19)
  {
    goto LABEL_12;
  }

  v46 = v13;
  v47 = 0;
  v48 = v18;
  v58 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_1D7264AFC();
  v22 = Dictionary<>.errorOnUnknownKeys.getter(v21);

  if ((v22 & 1) == 0)
  {
LABEL_10:
    v59 = 0uLL;
    LOBYTE(v60) = 0;
    v36 = v54;
    v37 = v58;
    v39 = v47;
    v38 = v48;
    sub_1D726431C();
    v20 = v39;
    if (!v39)
    {
      type metadata accessor for FormatSelectorValueSelector();
      sub_1D72627FC();
      swift_getWitnessTable();
      swift_getWitnessTable();
      v40 = type metadata accessor for FormatCodingEmptyArrayStrategy();
      v59 = xmmword_1D728CF30;
      LOBYTE(v60) = 0;
      v41 = swift_getWitnessTable();
      sub_1D5C4E620(v40, v41, &v62);
      (*(v55 + 8))(v38, v37);
      v42 = v62;
      v43 = v49;
      v44 = v57;
      (*(v52 + 32))(v49, v36, v57);
      FormatSelectorValue.init(value:selectors:)(v43, v42, v44, v50);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v55 + 8))(v38, v37);
LABEL_12:
    sub_1D61E4FBC(a1, v20);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v24 = (sub_1D726433C() + 48);
  v25 = v53;
  while (1)
  {
    if (v23 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v26 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v26 & 1) == 0)
    {
      break;
    }

    v28 = *v24;
    v59 = *(v24 - 1);
    LOBYTE(v60) = v28;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_16;
    }

    v29 = sub_1D6AFC82C(v14);
    ++v23;
    v24 += 24;
    if (v30)
    {
      v31 = v29;
      v32 = v30;

      v33 = sub_1D6AFC690(v10, v25, v51, v46);
      sub_1D5E2D970();
      v34 = swift_allocError();
      *v35 = v31;
      *(v35 + 8) = v32;
      v20 = v34;
      *(v35 + 16) = v33;
      *(v35 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v55 + 8))(v48, v58);
      goto LABEL_12;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t static FormatCodingDefaultStrategy.decodeOrDefault<A>(from:forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  sub_1D726435C();
  v6 = sub_1D726434C();
  v7 = *(a2 + 8);
  if (v6)
  {
    return static FormatCodingStrategy.decode<A>(from:forKey:)(a1, v7, a3);
  }

  else
  {
    return (*(v7 + 64))(a1, *(a2 + 8));
  }
}

uint64_t sub_1D5C8E8A8@<X0>(uint64_t *a1@<X8>)
{
  result = static FormatCodingEmptyArrayStrategy.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C8E8D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

unint64_t sub_1D5C8E928()
{
  result = qword_1EDF218C0;
  if (!qword_1EDF218C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF218C0);
  }

  return result;
}

uint64_t sub_1D5C8E990(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5B592C0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1D5B4BDE4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void sub_1D5C8EAD0()
{
  if (!qword_1EDF3BC90)
  {
    type metadata accessor for FormatCompilerProperty(255);
    sub_1D5B58B84(&qword_1EDF44BF0, type metadata accessor for FormatCompilerProperty);
    sub_1D5B58B84(&qword_1EDF44BF8, type metadata accessor for FormatCompilerProperty);
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BC90);
    }
  }
}

void sub_1D5C8EB9C()
{
  if (!qword_1EDF1A0A0)
  {
    sub_1D5C4F794();
    sub_1D5B58B84(&qword_1EDF25328, sub_1D5C4F794);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A0A0);
    }
  }
}

uint64_t sub_1D5C8EC44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 8) = (a2 + 1);
  }

  else
  {
    sub_1D5B4BDE4(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t FormatCompilerOptions.Newsroom.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v42 = a2;
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v36 - v7;
  sub_1D5C869F4();
  v10 = v9;
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C7CB68();
  sub_1D5B58B84(&qword_1EDF25318, sub_1D5C7CB68);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v41 = v8;
  v14 = v51;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_1D7264AFC();
  v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

  v17 = v13;
  if (v16)
  {
    v18 = sub_1D726433C();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 48);
      while (*v20 != 1)
      {
        v20 += 24;
        if (!--v19)
        {
          goto LABEL_7;
        }
      }

      v25 = *(v20 - 2);
      v24 = *(v20 - 1);

      v26 = sub_1D66141D0();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v27 = v25;
      *(v27 + 8) = v24;
      *(v27 + 16) = v26;
      *(v27 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v14 + 8))(v17, v10);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C8F1E8();
  v43 = 0;
  v44 = 0;
  v45 = 0;
  sub_1D726427C();
  v37 = *(&v46 + 1);
  v21 = v46;
  v38 = v47;
  v22 = v50;
  v39 = v48;
  v40 = v49;
  sub_1D725B76C();
  v46 = xmmword_1D728CF30;
  LOBYTE(v47) = 0;
  sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
  v23 = v41;
  sub_1D726427C();
  (*(v14 + 8))(v17, v10);
  v29 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  v30 = v22;
  v31 = v42;
  sub_1D5C4E944(v23, v42 + *(v29 + 20), &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  v32 = v37;
  v33 = v38;
  *v31 = v21;
  v31[1] = v32;
  v35 = v39;
  v34 = v40;
  v31[2] = v33;
  v31[3] = v35;
  v31[4] = v34;
  v31[5] = v30;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C8F138()
{
  result = qword_1EDF29C60;
  if (!qword_1EDF29C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C60);
  }

  return result;
}

unint64_t sub_1D5C8F194()
{
  result = qword_1EDF29C68;
  if (!qword_1EDF29C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C68);
  }

  return result;
}

unint64_t sub_1D5C8F1E8()
{
  result = qword_1EDF29BE8;
  if (!qword_1EDF29BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29BE8);
  }

  return result;
}

uint64_t sub_1D5C8F23C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}