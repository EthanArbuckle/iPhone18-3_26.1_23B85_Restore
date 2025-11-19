uint64_t sub_1E46DB6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v62 = a2;
  v63 = a3;
  v5 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v57 = &v52 - v12;
  v13 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v52 - v16;
  v18 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v52 - v26;
  v28 = sub_1E4650534(&qword_1ECF757C8, &qword_1E471FB60);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v59 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v52 - v35;
  v58 = v6;
  v37 = *(v6 + 56);
  v61 = v5;
  v38 = v5;
  v39 = v37;
  (v37)(&v52 - v35, 1, 1, v38, v34);
  v40 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v55 = a1;
  v53 = v40;
  sub_1E465E0B0(a1 + v40, v17, &qword_1ECF74A30, &unk_1E471EB10);
  v54 = v19;
  v41 = (*(v19 + 48))(v17, 1, v18);
  if (v41 == 1)
  {
    sub_1E465E050(v17, &qword_1ECF74A30, &unk_1E471EB10);
    v42 = v18;
  }

  else
  {
    sub_1E46D48B4(v17, v27, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_1E46D48B4(v27, v23, type metadata accessor for PBPropertyValue.OneOf_Params);
    v42 = v18;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1E465E050(v36, &qword_1ECF757C8, &qword_1E471FB60);
      v43 = v23;
      v44 = v57;
      sub_1E46D48B4(v43, v57, type metadata accessor for PBPropertyMarkedAsFinishedParam);
      sub_1E46D48B4(v44, v36, type metadata accessor for PBPropertyMarkedAsFinishedParam);
      v45 = v61;
      v39(v36, 0, 1, v61);
      goto LABEL_7;
    }

    sub_1E46D4D18(v23, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v45 = v61;
LABEL_7:
  v46 = v59;
  sub_1E46E0828(&qword_1ECF75700, type metadata accessor for PBPropertyMarkedAsFinishedParam);
  v47 = v60;
  sub_1E4709F9C();
  if (v47)
  {
    return sub_1E465E050(v36, &qword_1ECF757C8, &qword_1E471FB60);
  }

  sub_1E465E0B0(v36, v46, &qword_1ECF757C8, &qword_1E471FB60);
  if ((*(v58 + 48))(v46, 1, v45) == 1)
  {
    sub_1E465E050(v36, &qword_1ECF757C8, &qword_1E471FB60);
    return sub_1E465E050(v46, &qword_1ECF757C8, &qword_1E471FB60);
  }

  else
  {
    v49 = v56;
    sub_1E46D48B4(v46, v56, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    if (v41 != 1)
    {
      sub_1E4709F1C();
    }

    sub_1E465E050(v36, &qword_1ECF757C8, &qword_1E471FB60);
    v50 = v55;
    v51 = v53;
    sub_1E465E050(v55 + v53, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E46D48B4(v49, v50 + v51, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    swift_storeEnumTagMultiPayload();
    return (*(v54 + 56))(v50 + v51, 0, 1, v42);
  }
}

uint64_t sub_1E46DBCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v62 = a2;
  v63 = a3;
  v5 = type metadata accessor for PBPropertyBookImpressionParam(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v57 = &v52 - v12;
  v13 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v17 = &v52 - v16;
  v18 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v52 - v26;
  v28 = sub_1E4650534(&qword_1ECF757D0, &qword_1E471FB68);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8, v30);
  v59 = &v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v52 - v35;
  v58 = v6;
  v37 = *(v6 + 56);
  v61 = v5;
  v38 = v5;
  v39 = v37;
  (v37)(&v52 - v35, 1, 1, v38, v34);
  v40 = *(type metadata accessor for PBPropertyValue(0) + 20);
  v55 = a1;
  v53 = v40;
  sub_1E465E0B0(a1 + v40, v17, &qword_1ECF74A30, &unk_1E471EB10);
  v54 = v19;
  v41 = (*(v19 + 48))(v17, 1, v18);
  if (v41 == 1)
  {
    sub_1E465E050(v17, &qword_1ECF74A30, &unk_1E471EB10);
    v42 = v18;
  }

  else
  {
    sub_1E46D48B4(v17, v27, type metadata accessor for PBPropertyValue.OneOf_Params);
    sub_1E46D48B4(v27, v23, type metadata accessor for PBPropertyValue.OneOf_Params);
    v42 = v18;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1E465E050(v36, &qword_1ECF757D0, &qword_1E471FB68);
      v43 = v23;
      v44 = v57;
      sub_1E46D48B4(v43, v57, type metadata accessor for PBPropertyBookImpressionParam);
      sub_1E46D48B4(v44, v36, type metadata accessor for PBPropertyBookImpressionParam);
      v45 = v61;
      v39(v36, 0, 1, v61);
      goto LABEL_7;
    }

    sub_1E46D4D18(v23, type metadata accessor for PBPropertyValue.OneOf_Params);
  }

  v45 = v61;
LABEL_7:
  v46 = v59;
  sub_1E46E0828(&qword_1ECF756E8, type metadata accessor for PBPropertyBookImpressionParam);
  v47 = v60;
  sub_1E4709F9C();
  if (v47)
  {
    return sub_1E465E050(v36, &qword_1ECF757D0, &qword_1E471FB68);
  }

  sub_1E465E0B0(v36, v46, &qword_1ECF757D0, &qword_1E471FB68);
  if ((*(v58 + 48))(v46, 1, v45) == 1)
  {
    sub_1E465E050(v36, &qword_1ECF757D0, &qword_1E471FB68);
    return sub_1E465E050(v46, &qword_1ECF757D0, &qword_1E471FB68);
  }

  else
  {
    v49 = v56;
    sub_1E46D48B4(v46, v56, type metadata accessor for PBPropertyBookImpressionParam);
    if (v41 != 1)
    {
      sub_1E4709F1C();
    }

    sub_1E465E050(v36, &qword_1ECF757D0, &qword_1E471FB68);
    v50 = v55;
    v51 = v53;
    sub_1E465E050(v55 + v53, &qword_1ECF74A30, &unk_1E471EB10);
    sub_1E46D48B4(v49, v50 + v51, type metadata accessor for PBPropertyBookImpressionParam);
    swift_storeEnumTagMultiPayload();
    return (*(v54 + 56))(v50 + v51, 0, 1, v42);
  }
}

uint64_t PBPropertyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v19 - v12;
  result = sub_1E46DC4CC(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1E46DC6E8(v3);
    if (*v3)
    {
      sub_1E470A02C();
    }

    v15 = type metadata accessor for PBPropertyValue(0);
    sub_1E465E0B0(v5 + *(v15 + 20), v13, &qword_1ECF74A30, &unk_1E471EB10);
    v16 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
    if ((*(*(v16 - 8) + 48))(v13, 1, v16) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_1E46DC9A0(v5, a1, a2, a3);
        }

        else
        {
          sub_1E46DC760(v5, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_1E46DCBE4(v5, a1, a2, a3);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        sub_1E46DCE28(v5, a1, a2, a3);
      }

      else
      {
        sub_1E46DD06C(v5, a1, a2, a3);
      }

      sub_1E46D4D18(v13, type metadata accessor for PBPropertyValue.OneOf_Params);
    }

    v18 = v5 + *(v15 + 24);
    return sub_1E4709E8C();
  }

  return result;
}

uint64_t sub_1E46DC4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = sub_1E4709E7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v16 + 28), v9, &qword_1ECF74A38, &unk_1E471EB00);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E465E050(v9, &qword_1ECF74A38, &unk_1E471EB00);
  }

  (*(v11 + 32))(v15, v9, v10);
  sub_1E46E0828(&qword_1ECF75638, MEMORY[0x1E69AA900]);
  sub_1E470A05C();
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1E46DC6E8(uint64_t a1)
{
  result = type metadata accessor for PBPropertyValue(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1E470A03C();
  }

  return result;
}

uint64_t sub_1E46DC760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v5 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for PBPropertyNoParams(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v15 + 20), v9, &qword_1ECF74A30, &unk_1E471EB10);
  v16 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v16 - 8) + 48))(v9, 1, v16) == 1)
  {
    sub_1E465E050(v9, &qword_1ECF74A30, &unk_1E471EB10);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1E46D48B4(v9, v14, type metadata accessor for PBPropertyNoParams);
    sub_1E46E0828(&qword_1ECF756A0, type metadata accessor for PBPropertyNoParams);
    sub_1E470A05C();
    return sub_1E46D4D18(v14, type metadata accessor for PBPropertyNoParams);
  }

  result = sub_1E46D4D18(v9, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_1E46DC9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v5 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for PBPropertySingleFloatParam(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v15 + 20), v9, &qword_1ECF74A30, &unk_1E471EB10);
  v16 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v16 - 8) + 48))(v9, 1, v16) == 1)
  {
    sub_1E465E050(v9, &qword_1ECF74A30, &unk_1E471EB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E46D48B4(v9, v14, type metadata accessor for PBPropertySingleFloatParam);
    sub_1E46E0828(&qword_1ECF756B8, type metadata accessor for PBPropertySingleFloatParam);
    sub_1E470A05C();
    return sub_1E46D4D18(v14, type metadata accessor for PBPropertySingleFloatParam);
  }

  result = sub_1E46D4D18(v9, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_1E46DCBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v5 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  v11 = *(*(Params - 8) + 64);
  MEMORY[0x1EEE9AC00](Params, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v15 + 20), v9, &qword_1ECF74A30, &unk_1E471EB10);
  v16 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v16 - 8) + 48))(v9, 1, v16) == 1)
  {
    sub_1E465E050(v9, &qword_1ECF74A30, &unk_1E471EB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1E46D48B4(v9, v14, type metadata accessor for PBPropertyBookReadParams);
    sub_1E46E0828(&qword_1ECF756D0, type metadata accessor for PBPropertyBookReadParams);
    sub_1E470A05C();
    return sub_1E46D4D18(v14, type metadata accessor for PBPropertyBookReadParams);
  }

  result = sub_1E46D4D18(v9, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_1E46DCE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v5 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v15 + 20), v9, &qword_1ECF74A30, &unk_1E471EB10);
  v16 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v16 - 8) + 48))(v9, 1, v16) == 1)
  {
    sub_1E465E050(v9, &qword_1ECF74A30, &unk_1E471EB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1E46D48B4(v9, v14, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    sub_1E46E0828(&qword_1ECF75700, type metadata accessor for PBPropertyMarkedAsFinishedParam);
    sub_1E470A05C();
    return sub_1E46D4D18(v14, type metadata accessor for PBPropertyMarkedAsFinishedParam);
  }

  result = sub_1E46D4D18(v9, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_1E46DD06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a4;
  v5 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for PBPropertyBookImpressionParam(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PBPropertyValue(0);
  sub_1E465E0B0(a1 + *(v15 + 20), v9, &qword_1ECF74A30, &unk_1E471EB10);
  v16 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v16 - 8) + 48))(v9, 1, v16) == 1)
  {
    sub_1E465E050(v9, &qword_1ECF74A30, &unk_1E471EB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1E46D48B4(v9, v14, type metadata accessor for PBPropertyBookImpressionParam);
    sub_1E46E0828(&qword_1ECF756E8, type metadata accessor for PBPropertyBookImpressionParam);
    sub_1E470A05C();
    return sub_1E46D4D18(v14, type metadata accessor for PBPropertyBookImpressionParam);
  }

  result = sub_1E46D4D18(v9, type metadata accessor for PBPropertyValue.OneOf_Params);
  __break(1u);
  return result;
}

uint64_t sub_1E46DD2FC@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = a1[5];
  v5 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[a1[6]];
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  v7 = a1[7];
  v8 = sub_1E4709E7C();
  result = (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v10 = &a2[a1[8]];
  *v10 = 0;
  *(v10 + 1) = 0;
  return result;
}

uint64_t sub_1E46DD420(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75750, type metadata accessor for PBPropertyValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46DD4C0(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF75630, type metadata accessor for PBPropertyValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46DD52C()
{
  sub_1E46E0828(&qword_1ECF75630, type metadata accessor for PBPropertyValue);

  return sub_1E4709FEC();
}

uint64_t sub_1E46DD5C8()
{
  v0 = sub_1E470A09C();
  sub_1E4665F64(v0, qword_1ECF755B8);
  sub_1E4665EC4(v0, qword_1ECF755B8);
  sub_1E4650534(&qword_1ECF757A0, &qword_1E471FB38);
  v1 = (sub_1E4650534(&qword_1ECF757A8, &qword_1E471FB40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E471EAE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "configuration";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1E470A06C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyValues";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "deletedPropertyValueTimestamps";
  *(v11 + 8) = 30;
  *(v11 + 16) = 2;
  v9();
  return sub_1E470A07C();
}

uint64_t PBPropertyBundle.decodeMessage<A>(decoder:)()
{
  result = sub_1E4709F0C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for PBPropertyValue(0);
        sub_1E46E0828(&qword_1ECF75630, type metadata accessor for PBPropertyValue);
LABEL_12:
        sub_1E4709F8C();
        goto LABEL_4;
      }

      if (result == 1)
      {
        sub_1E46DD964();
      }

LABEL_4:
      result = sub_1E4709F0C();
    }

    sub_1E4709E7C();
    sub_1E46E0828(&qword_1ECF75638, MEMORY[0x1E69AA900]);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1E46DD964()
{
  v0 = *(type metadata accessor for PBPropertyBundle(0) + 28);
  type metadata accessor for PBPropertyConfiguration(0);
  sub_1E46E0828(&qword_1ECF75688, type metadata accessor for PBPropertyConfiguration);
  return sub_1E4709F9C();
}

uint64_t PBPropertyBundle.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1E46DDB90(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for PBPropertyValue(0);
      sub_1E46E0828(&qword_1ECF75630, type metadata accessor for PBPropertyValue);
      sub_1E470A04C();
    }

    if (*(v5[1] + 16))
    {
      sub_1E4709E7C();
      sub_1E46E0828(&qword_1ECF75638, MEMORY[0x1E69AA900]);
      sub_1E470A04C();
    }

    v8 = v5 + *(type metadata accessor for PBPropertyBundle(0) + 24);
    return sub_1E4709E8C();
  }

  return result;
}

uint64_t sub_1E46DDB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for PBPropertyConfiguration(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PBPropertyBundle(0);
  sub_1E465E0B0(a1 + *(v16 + 28), v9, &qword_1ECF74A28, &unk_1E471E790);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E465E050(v9, &qword_1ECF74A28, &unk_1E471E790);
  }

  sub_1E46D48B4(v9, v15, type metadata accessor for PBPropertyConfiguration);
  sub_1E46E0828(&qword_1ECF75688, type metadata accessor for PBPropertyConfiguration);
  sub_1E470A05C();
  return sub_1E46D4D18(v15, type metadata accessor for PBPropertyConfiguration);
}

uint64_t sub_1E46DDDF8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v4;
  v5 = &a2[*(a1 + 24)];
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  v6 = *(a1 + 28);
  v7 = type metadata accessor for PBPropertyConfiguration(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_1E46DDEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E46DDF14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1E46DDFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75748, type metadata accessor for PBPropertyBundle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46DE058(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF75648, type metadata accessor for PBPropertyBundle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46DE0C4()
{
  sub_1E46E0828(&qword_1ECF75648, type metadata accessor for PBPropertyBundle);

  return sub_1E4709FEC();
}

uint64_t sub_1E46DE160()
{
  v0 = sub_1E470A09C();
  sub_1E4665F64(v0, qword_1ECF755D0);
  sub_1E4665EC4(v0, qword_1ECF755D0);
  sub_1E4650534(&qword_1ECF757A0, &qword_1E471FB38);
  v1 = (sub_1E4650534(&qword_1ECF757A8, &qword_1E471FB40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E471B800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startOfTimeSlice";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1E470A06C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyBundles";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1E470A07C();
}

uint64_t sub_1E46DE34C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1E470A09C();
  v6 = sub_1E4665EC4(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t PBPropertyTimeSlice.decodeMessage<A>(decoder:)()
{
  result = sub_1E4709F0C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1E46DE4E4();
      }

      else if (result == 2)
      {
        type metadata accessor for PBPropertyBundle(0);
        sub_1E46E0828(&qword_1ECF75648, type metadata accessor for PBPropertyBundle);
        sub_1E4709F8C();
      }

      result = sub_1E4709F0C();
    }
  }

  return result;
}

uint64_t sub_1E46DE4E4()
{
  v0 = *(type metadata accessor for PBPropertyTimeSlice(0) + 24);
  sub_1E4709E7C();
  sub_1E46E0828(&qword_1ECF75638, MEMORY[0x1E69AA900]);
  return sub_1E4709F9C();
}

uint64_t PBPropertyTimeSlice.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1E46DE694(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for PBPropertyBundle(0);
      sub_1E46E0828(&qword_1ECF75648, type metadata accessor for PBPropertyBundle);
      sub_1E470A04C();
    }

    v8 = v5 + *(type metadata accessor for PBPropertyTimeSlice(0) + 20);
    return sub_1E4709E8C();
  }

  return result;
}

uint64_t sub_1E46DE694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  v5 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = sub_1E4709E7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PBPropertyTimeSlice(0);
  sub_1E465E0B0(a1 + *(v16 + 24), v9, &qword_1ECF74A38, &unk_1E471EB00);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1E465E050(v9, &qword_1ECF74A38, &unk_1E471EB00);
  }

  (*(v11 + 32))(v15, v9, v10);
  sub_1E46E0828(&qword_1ECF75638, MEMORY[0x1E69AA900]);
  sub_1E470A05C();
  return (*(v11 + 8))(v15, v10);
}

uint64_t sub_1E46DE8FC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1E470B8FC();
  a1(0);
  sub_1E46E0828(a2, a3);
  sub_1E470AECC();
  return sub_1E470B91C();
}

uint64_t sub_1E46DE984@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v4 = &a2[*(a1 + 20)];
  _s13BookDataStore18PBPropertyNoParamsVACycfC_0();
  v5 = *(a1 + 24);
  v6 = sub_1E4709E7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1E46DEA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E46DEAA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1E4709EAC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1E46DEB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E46E0828(&qword_1ECF75740, type metadata accessor for PBPropertyTimeSlice);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1E46DEBE4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1E470A09C();
  v6 = sub_1E4665EC4(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1E46DEC80(uint64_t a1)
{
  v2 = sub_1E46E0828(&qword_1ECF75068, type metadata accessor for PBPropertyTimeSlice);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1E46DECEC()
{
  sub_1E470B8FC();
  sub_1E470AECC();
  return sub_1E470B91C();
}

uint64_t sub_1E46DED44()
{
  sub_1E46E0828(&qword_1ECF75068, type metadata accessor for PBPropertyTimeSlice);

  return sub_1E4709FEC();
}

uint64_t sub_1E46DEDC0()
{
  sub_1E470B8FC();
  sub_1E470AECC();
  return sub_1E470B91C();
}

uint64_t _s13BookDataStore31PBPropertyMarkedAsFinishedParamV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }

LABEL_7:
      v4 = *(type metadata accessor for PBPropertyMarkedAsFinishedParam(0) + 20);
      sub_1E4709EAC();
      sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
      return sub_1E470AEFC() & 1;
    }

    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t _s13BookDataStore19PBPropertyTimeSliceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1E4709E7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v29 - v12;
  v14 = sub_1E4650534(&qword_1ECF75788, &qword_1E471FB20);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v29 - v18;
  v29 = type metadata accessor for PBPropertyTimeSlice(0);
  v20 = *(v29 + 24);
  v21 = *(v15 + 56);
  v31 = a1;
  sub_1E465E0B0(a1 + v20, v19, &qword_1ECF74A38, &unk_1E471EB00);
  v32 = a2;
  sub_1E465E0B0(a2 + v20, &v19[v21], &qword_1ECF74A38, &unk_1E471EB00);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_1E465E050(v19, &qword_1ECF74A38, &unk_1E471EB00);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1E465E0B0(v19, v13, &qword_1ECF74A38, &unk_1E471EB00);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
LABEL_6:
    sub_1E465E050(v19, &qword_1ECF75788, &qword_1E471FB20);
LABEL_10:
    v27 = 0;
    return v27 & 1;
  }

  v23 = v30;
  (*(v5 + 32))(v30, &v19[v21], v4);
  sub_1E46E0828(&qword_1ECF75070, MEMORY[0x1E69AA900]);
  v24 = sub_1E470AEFC();
  v25 = *(v5 + 8);
  v25(v23, v4);
  v25(v13, v4);
  sub_1E465E050(v19, &qword_1ECF74A38, &unk_1E471EB00);
  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_1E46D17E4(*v31, *v32) & 1) == 0)
  {
    goto LABEL_10;
  }

  v26 = *(v29 + 20);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
  v27 = sub_1E470AEFC();
  return v27 & 1;
}

uint64_t _s13BookDataStore23PBPropertyConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] != a2[2] || a1[3] != a2[3])
  {
    v3 = a1;
    v4 = a1[2];
    v5 = a2;
    v6 = sub_1E470B84C();
    a2 = v5;
    v7 = v6;
    a1 = v3;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[4] != a2[4])
  {
    return 0;
  }

  v8 = *(type metadata accessor for PBPropertyConfiguration(0) + 32);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
  return sub_1E470AEFC() & 1;
}

uint64_t _s13BookDataStore16PBPropertyBundleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for PBPropertyConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v31 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1E4650534(&qword_1ECF74A28, &unk_1E471E790);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = (&v29 - v12);
  v14 = sub_1E4650534(&qword_1ECF75798, &qword_1E471FB30);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v29 - v18;
  v30 = type metadata accessor for PBPropertyBundle(0);
  v20 = *(v30 + 28);
  v21 = *(v15 + 56);
  v32 = a1;
  sub_1E465E0B0(a1 + v20, v19, &qword_1ECF74A28, &unk_1E471E790);
  sub_1E465E0B0(a2 + v20, &v19[v21], &qword_1ECF74A28, &unk_1E471E790);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_1E465E0B0(v19, v13, &qword_1ECF74A28, &unk_1E471E790);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v23 = v31;
      sub_1E46D48B4(&v19[v21], v31, type metadata accessor for PBPropertyConfiguration);
      v24 = _s13BookDataStore23PBPropertyConfigurationV2eeoiySbAC_ACtFZ_0(v13, v23);
      sub_1E46D4D18(v23, type metadata accessor for PBPropertyConfiguration);
      sub_1E46D4D18(v13, type metadata accessor for PBPropertyConfiguration);
      sub_1E465E050(v19, &qword_1ECF74A28, &unk_1E471E790);
      if (v24)
      {
        goto LABEL_8;
      }

LABEL_11:
      v27 = 0;
      return v27 & 1;
    }

    sub_1E46D4D18(v13, type metadata accessor for PBPropertyConfiguration);
LABEL_6:
    sub_1E465E050(v19, &qword_1ECF75798, &qword_1E471FB30);
    goto LABEL_11;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1E465E050(v19, &qword_1ECF74A28, &unk_1E471E790);
LABEL_8:
  v25 = v32;
  if ((sub_1E46D28B4(*v32, *a2) & 1) == 0 || (sub_1E46D2A6C(v25[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v26 = *(v30 + 24);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
  v27 = sub_1E470AEFC();
  return v27 & 1;
}

uint64_t _s13BookDataStore15PBPropertyValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v61 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4650534(&qword_1ECF74A30, &unk_1E471EB10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v62 = &v60 - v11;
  v63 = sub_1E4650534(&qword_1ECF75790, &qword_1E471FB28);
  v12 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63, v13);
  v66 = &v60 - v14;
  v15 = sub_1E4709E7C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  v67 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E4650534(&qword_1ECF74A38, &unk_1E471EB00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v24 = &v60 - v23;
  v25 = sub_1E4650534(&qword_1ECF75788, &qword_1E471FB20);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v60 - v29;
  v68 = type metadata accessor for PBPropertyValue(0);
  v69 = a1;
  v31 = *(v68 + 28);
  v32 = *(v26 + 56);
  sub_1E465E0B0(a1 + v31, v30, &qword_1ECF74A38, &unk_1E471EB00);
  sub_1E465E0B0(a2 + v31, &v30[v32], &qword_1ECF74A38, &unk_1E471EB00);
  v33 = *(v16 + 48);
  if (v33(v30, 1, v15) == 1)
  {
    if (v33(&v30[v32], 1, v15) == 1)
    {
      sub_1E465E050(v30, &qword_1ECF74A38, &unk_1E471EB00);
      goto LABEL_11;
    }

LABEL_6:
    v34 = &qword_1ECF75788;
    v35 = &qword_1E471FB20;
LABEL_7:
    sub_1E465E050(v30, v34, v35);
    goto LABEL_8;
  }

  sub_1E465E0B0(v30, v24, &qword_1ECF74A38, &unk_1E471EB00);
  if (v33(&v30[v32], 1, v15) == 1)
  {
    (*(v16 + 8))(v24, v15);
    goto LABEL_6;
  }

  v38 = &v30[v32];
  v39 = v67;
  (*(v16 + 32))(v67, v38, v15);
  sub_1E46E0828(&qword_1ECF75070, MEMORY[0x1E69AA900]);
  v40 = sub_1E470AEFC();
  v41 = *(v16 + 8);
  v41(v39, v15);
  v41(v24, v15);
  sub_1E465E050(v30, &qword_1ECF74A38, &unk_1E471EB00);
  if ((v40 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v43 = v68;
  v42 = v69;
  v44 = *(v68 + 32);
  v45 = (v69 + v44);
  v46 = *(v69 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (!v48 || (*v45 != *v47 || v46 != v48) && (sub_1E470B84C() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v48)
  {
    goto LABEL_8;
  }

  if (*v42 != *a2)
  {
    goto LABEL_8;
  }

  v49 = *(v43 + 20);
  v50 = *(v63 + 48);
  v51 = v66;
  sub_1E465E0B0(v42 + v49, v66, &qword_1ECF74A30, &unk_1E471EB10);
  v52 = a2 + v49;
  v30 = v51;
  sub_1E465E0B0(v52, v51 + v50, &qword_1ECF74A30, &unk_1E471EB10);
  v53 = v65;
  v54 = *(v64 + 48);
  if (v54(v51, 1, v65) == 1)
  {
    if (v54(v51 + v50, 1, v53) == 1)
    {
      sub_1E465E050(v51, &qword_1ECF74A30, &unk_1E471EB10);
LABEL_26:
      v59 = *(v43 + 24);
      sub_1E4709EAC();
      sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
      v36 = sub_1E470AEFC();
      return v36 & 1;
    }

    goto LABEL_24;
  }

  v55 = v62;
  sub_1E465E0B0(v30, v62, &qword_1ECF74A30, &unk_1E471EB10);
  if (v54(&v30[v50], 1, v53) == 1)
  {
    sub_1E46D4D18(v55, type metadata accessor for PBPropertyValue.OneOf_Params);
LABEL_24:
    v34 = &qword_1ECF75790;
    v35 = &qword_1E471FB28;
    goto LABEL_7;
  }

  v56 = &v30[v50];
  v57 = v61;
  sub_1E46D48B4(v56, v61, type metadata accessor for PBPropertyValue.OneOf_Params);
  v58 = _s13BookDataStore15PBPropertyValueV12OneOf_ParamsO2eeoiySbAE_AEtFZ_0(v55, v57);
  sub_1E46D4D18(v57, type metadata accessor for PBPropertyValue.OneOf_Params);
  sub_1E46D4D18(v55, type metadata accessor for PBPropertyValue.OneOf_Params);
  sub_1E465E050(v30, &qword_1ECF74A30, &unk_1E471EB10);
  if (v58)
  {
    goto LABEL_26;
  }

LABEL_8:
  v36 = 0;
  return v36 & 1;
}

uint64_t _s13BookDataStore15PBPropertyValueV12OneOf_ParamsO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v80 = a1;
  v81 = a2;
  v74 = type metadata accessor for PBPropertyBookImpressionParam(0);
  v2 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74, v3);
  v76 = &Params - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  v5 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73, v6);
  v77 = &Params - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  v8 = *(*(Params - 8) + 64);
  MEMORY[0x1EEE9AC00](Params, v9);
  v75 = (&Params - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PBPropertySingleFloatParam(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&Params - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for PBPropertyNoParams(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &Params - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v78 = (&Params - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25, v26);
  v79 = (&Params - v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = (&Params - v30);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = (&Params - v34);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &Params - v38;
  v40 = sub_1E4650534(&qword_1ECF757D8, &unk_1E471FB70);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8, v42);
  v44 = &Params - v43;
  v46 = *(v45 + 56);
  sub_1E46D52FC(v80, &Params - v43, type metadata accessor for PBPropertyValue.OneOf_Params);
  sub_1E46D52FC(v81, &v44[v46], type metadata accessor for PBPropertyValue.OneOf_Params);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1E46D52FC(v44, v31, type metadata accessor for PBPropertyValue.OneOf_Params);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v53 = v75;
        sub_1E46D48B4(&v44[v46], v75, type metadata accessor for PBPropertyBookReadParams);
        if (*v31 == *v53 && v31[1] == v53[1])
        {
          v54 = *(Params + 24);
          sub_1E4709EAC();
          sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
          v55 = sub_1E470AEFC();
          sub_1E46D4D18(v53, type metadata accessor for PBPropertyBookReadParams);
          if (v55)
          {
            v56 = type metadata accessor for PBPropertyBookReadParams;
            goto LABEL_39;
          }
        }

        else
        {
          sub_1E46D4D18(v53, type metadata accessor for PBPropertyBookReadParams);
        }

        v64 = type metadata accessor for PBPropertyBookReadParams;
LABEL_47:
        v69 = v64;
        v70 = v31;
        goto LABEL_48;
      }

      v62 = type metadata accessor for PBPropertyBookReadParams;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v31 = v79;
        sub_1E46D52FC(v44, v79, type metadata accessor for PBPropertyValue.OneOf_Params);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v48 = v77;
          sub_1E46D48B4(&v44[v46], v77, type metadata accessor for PBPropertyMarkedAsFinishedParam);
          v49 = *v31;
          v50 = *v48;
          if (*(v48 + 8) == 1)
          {
            if (v50)
            {
              if (v50 == 1)
              {
                if (v49 != 1)
                {
                  goto LABEL_45;
                }
              }

              else if (v49 != 2)
              {
                goto LABEL_45;
              }

              goto LABEL_35;
            }

            if (v49)
            {
LABEL_45:
              sub_1E46D4D18(v48, type metadata accessor for PBPropertyMarkedAsFinishedParam);
              goto LABEL_46;
            }
          }

          else if (v49 != v50)
          {
            goto LABEL_45;
          }

LABEL_35:
          v65 = *(v73 + 20);
          sub_1E4709EAC();
          sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
          v66 = sub_1E470AEFC();
          sub_1E46D4D18(v48, type metadata accessor for PBPropertyMarkedAsFinishedParam);
          if ((v66 & 1) == 0)
          {
LABEL_46:
            v64 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
            goto LABEL_47;
          }

          v56 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
          goto LABEL_39;
        }

        v62 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
        goto LABEL_28;
      }

      v31 = v78;
      sub_1E46D52FC(v44, v78, type metadata accessor for PBPropertyValue.OneOf_Params);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v57 = v76;
        sub_1E46D48B4(&v44[v46], v76, type metadata accessor for PBPropertyBookImpressionParam);
        if (*v31 != *v57)
        {
          sub_1E46D4D18(v57, type metadata accessor for PBPropertyBookImpressionParam);
LABEL_41:
          v64 = type metadata accessor for PBPropertyBookImpressionParam;
          goto LABEL_47;
        }

        v67 = *(v74 + 20);
        sub_1E4709EAC();
        sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
        v68 = sub_1E470AEFC();
        sub_1E46D4D18(v57, type metadata accessor for PBPropertyBookImpressionParam);
        if ((v68 & 1) == 0)
        {
          goto LABEL_41;
        }

        v56 = type metadata accessor for PBPropertyBookImpressionParam;
LABEL_39:
        v60 = v56;
        v61 = v31;
        goto LABEL_40;
      }

      v62 = type metadata accessor for PBPropertyBookImpressionParam;
    }

LABEL_28:
    v51 = v62;
    v52 = v31;
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1E46D52FC(v44, v35, type metadata accessor for PBPropertyValue.OneOf_Params);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E46D48B4(&v44[v46], v15, type metadata accessor for PBPropertySingleFloatParam);
      if (*v35 == *v15)
      {
        v58 = *(v11 + 20);
        sub_1E4709EAC();
        sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
        v59 = sub_1E470AEFC();
        sub_1E46D4D18(v15, type metadata accessor for PBPropertySingleFloatParam);
        if (v59)
        {
          v60 = type metadata accessor for PBPropertySingleFloatParam;
          v61 = v35;
LABEL_40:
          sub_1E46D4D18(v61, v60);
          sub_1E46D4D18(v44, type metadata accessor for PBPropertyValue.OneOf_Params);
          v63 = 1;
          return v63 & 1;
        }
      }

      else
      {
        sub_1E46D4D18(v15, type metadata accessor for PBPropertySingleFloatParam);
      }

      v69 = type metadata accessor for PBPropertySingleFloatParam;
      v70 = v35;
LABEL_48:
      sub_1E46D4D18(v70, v69);
      sub_1E46D4D18(v44, type metadata accessor for PBPropertyValue.OneOf_Params);
      goto LABEL_49;
    }

    v51 = type metadata accessor for PBPropertySingleFloatParam;
    v52 = v35;
LABEL_30:
    sub_1E46D4D18(v52, v51);
    sub_1E465E050(v44, &qword_1ECF757D8, &unk_1E471FB70);
LABEL_49:
    v63 = 0;
    return v63 & 1;
  }

  sub_1E46D52FC(v44, v39, type metadata accessor for PBPropertyValue.OneOf_Params);
  if (swift_getEnumCaseMultiPayload())
  {
    v51 = type metadata accessor for PBPropertyNoParams;
    v52 = v39;
    goto LABEL_30;
  }

  sub_1E46D48B4(&v44[v46], v20, type metadata accessor for PBPropertyNoParams);
  sub_1E4709EAC();
  sub_1E46E0828(&qword_1ECF755E8, MEMORY[0x1E69AAC08]);
  v63 = sub_1E470AEFC();
  sub_1E46D4D18(v20, type metadata accessor for PBPropertyNoParams);
  sub_1E46D4D18(v39, type metadata accessor for PBPropertyNoParams);
  sub_1E46D4D18(v44, type metadata accessor for PBPropertyValue.OneOf_Params);
  return v63 & 1;
}

uint64_t sub_1E46E0828(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E46E0870()
{
  result = qword_1ECF75618;
  if (!qword_1ECF75618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75618);
  }

  return result;
}

unint64_t sub_1E46E08C8()
{
  result = qword_1ECF75658;
  if (!qword_1ECF75658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75658);
  }

  return result;
}

unint64_t sub_1E46E0920()
{
  result = qword_1ECF75660;
  if (!qword_1ECF75660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75660);
  }

  return result;
}

unint64_t sub_1E46E0978()
{
  result = qword_1ECF75668;
  if (!qword_1ECF75668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75668);
  }

  return result;
}

unint64_t sub_1E46E09D0()
{
  result = qword_1ECF75670;
  if (!qword_1ECF75670)
  {
    sub_1E46506D0(&qword_1ECF75678, &qword_1E471ED00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75670);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MarkedAsFinishedMechanism(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MarkedAsFinishedMechanism(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MarkedAsFinishedMechanism(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1E46E14B8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E46E14D4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1E46E152C()
{
  result = sub_1E4709EAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E46E15DC()
{
  result = sub_1E4709EAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E46E16A4()
{
  result = sub_1E4709EAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E46E1770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1E4709EAC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1E46E17FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1E4709EAC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1E46E1884()
{
  result = sub_1E4709EAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E46E1920()
{
  sub_1E46E1A44(319, qword_1EE2AE050, type metadata accessor for PBPropertyValue.OneOf_Params, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1E4709EAC();
    if (v1 <= 0x3F)
    {
      sub_1E46E1A44(319, &unk_1EE2ACDE8, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E465F064();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E46E1A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E46E1AF8()
{
  result = type metadata accessor for PBPropertyNoParams(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PBPropertySingleFloatParam(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PBPropertyBookReadParams(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PBPropertyMarkedAsFinishedParam(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for PBPropertyBookImpressionParam(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1E46E1BD0()
{
  sub_1E46E1A44(319, &qword_1EE2ACD30, type metadata accessor for PBPropertyValue, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1E46E1A44(319, &qword_1EE2ACD20, MEMORY[0x1E69AA900], MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1E4709EAC();
      if (v2 <= 0x3F)
      {
        sub_1E46E1A44(319, qword_1EE2AD540, type metadata accessor for PBPropertyConfiguration, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E46E1D3C()
{
  sub_1E46E1A44(319, &qword_1EE2ACD28, type metadata accessor for PBPropertyBundle, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1E4709EAC();
    if (v1 <= 0x3F)
    {
      sub_1E46E1A44(319, &unk_1EE2ACDE8, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for CRDTModelSyncVersion()
{
  result = qword_1EE2AD910;
  if (!qword_1EE2AD910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CRDTModelSyncVersion.serializedData()()
{
  v1 = sub_1E470AB3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for CRDTModelSyncVersion() + 20);
  v8 = *v0;
  (*(v2 + 104))(v6, *MEMORY[0x1E6995288], v1);
  sub_1E470ADFC();
  v9 = sub_1E470AC4C();
  (*(v2 + 8))(v6, v1);
  return v9;
}

uint64_t static CRDTModelSyncVersion.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1E46E20EC();
  v4 = *a1;
  v5 = *a2;
  if ((sub_1E470B42C() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for CRDTModelSyncVersion() + 20);

  return sub_1E470ADDC();
}

unint64_t sub_1E46E20EC()
{
  result = qword_1EE2ACCC0;
  if (!qword_1EE2ACCC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2ACCC0);
  }

  return result;
}

uint64_t sub_1E46E2138(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_1E46E20EC();
  v6 = *a1;
  v7 = *a2;
  if ((sub_1E470B42C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);

  return sub_1E470ADDC();
}

uint64_t sub_1E46E2204()
{
  result = sub_1E470AD7C();
  if (v1 <= 0x3F)
  {
    result = sub_1E470ADFC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E46E22D0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E466A228;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E45EA6A0(v4);
}

uint64_t sub_1E46E2364(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E46E6038;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 96);
  v9 = *(v7 + 104);
  *(v7 + 96) = v6;
  *(v7 + 104) = v5;
  sub_1E45EA6A0(v3);
  return sub_1E45EB5D8(v8);
}

uint64_t ReadingGoalsDataStore.onRemoteChange.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_1E45EA6A0(v1);
  return v1;
}

uint64_t ReadingGoalsDataStore.onRemoteChange.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return sub_1E45EB5D8(v5);
}

uint64_t ReadingGoalsDataStore.__allocating_init(localStore:syncStore:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  ReadingGoalsDataStore.init(localStore:syncStore:)(a1, a2);
  return v4;
}

uint64_t ReadingGoalsDataStore.init(localStore:syncStore:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  sub_1E4658550(a1, v2 + 16);
  sub_1E4658550(a2, v2 + 56);
  sub_1E465057C(a2, a2[3]);
  DynamicType = swift_getDynamicType();
  v7 = a2[4];
  v8 = [objc_opt_self() defaultCenter];
  v9 = *(v7 + 16);

  v10 = v9(DynamicType, v7);
  v11 = a2[3];
  v12 = sub_1E465057C(a2, v11);
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12, v12);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v15);
  v18 = sub_1E470B83C();
  (*(v13 + 8))(v17, v11);
  [v8 addObserver:v3 selector:sel_handleCloudChangeNotification_ name:v10 object:v18];

  swift_unknownObjectRelease();
  v19 = a2[3];
  v20 = a2[4];
  sub_1E465057C(a2, v19);
  if ((*(v20 + 24))(v19, v20))
  {
    v23 = byte_1F5E62458;
    sub_1E46E2834(&v23, a2, a1);
    v23 = byte_1F5E62459;
    sub_1E46E2834(&v23, a2, a1);
  }

  else
  {
    sub_1E470B2AC();
    if (qword_1EE2ADC90 != -1)
    {
      swift_once();
    }

    sub_1E470A0AC();
  }

  sub_1E4658A0C(a2);
  sub_1E4658A0C(a1);
  return v3;
}

uint64_t sub_1E46E2834(unsigned __int8 *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2[3];
  v6 = a2[4];
  sub_1E465057C(a2, v5);
  v7 = v4 == 0;
  if (v4)
  {
    v8 = 0xD000000000000016;
  }

  else
  {
    v8 = 0xD00000000000001ALL;
  }

  if (v7)
  {
    v9 = "ReadingGoals.StreakDay";
  }

  else
  {
    v9 = "Goals init: Synchronize failed";
  }

  v10 = v9 | 0x8000000000000000;
  v11 = (*(*(v6 + 8) + 8))(v8, v9 | 0x8000000000000000, v5);

  v12 = a3[3];
  v13 = a3[4];
  sub_1E465057C(a3, v12);
  (*(v13 + 16))(v11, v8, v10, v12, v13);

  sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    swift_once();
  }

  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1E471B800;
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1E4663DE4();
  *(v14 + 64) = v16;
  *(v14 + 32) = v8;
  *(v14 + 40) = v10;
  if (v11)
  {
    v19 = sub_1E4650534(&qword_1ECF757F0, &qword_1E471FC10);
    v20 = sub_1E46E5E14();
    *&v18 = v11;
    sub_1E46585B4(&v18, v14 + 72);
  }

  else
  {
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 72) = 7104878;
    *(v14 + 80) = 0xE300000000000000;
  }

  sub_1E470A0AC();
}

uint64_t sub_1E46E2A40()
{
  v1 = v0;
  v2 = sub_1E47099AC();
  if (!v2)
  {
LABEL_25:
    sub_1E470B2AC();
    if (qword_1EE2ADC90 != -1)
    {
      swift_once();
    }

    return sub_1E470A0AC();
  }

  v3 = v2;
  v4 = *MEMORY[0x1E696A9D8];
  v44 = sub_1E470AF1C();
  sub_1E470B56C();
  if (!*(v3 + 16) || (v5 = sub_1E4655398(v46), (v6 & 1) == 0))
  {

    sub_1E4658910(v46);
    goto LABEL_25;
  }

  sub_1E4658ABC(*(v3 + 56) + 32 * v5, v47);
  sub_1E4658910(v46);
  v7 = MEMORY[0x1E69E6530];
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_25;
  }

  v8 = v44;
  sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
LABEL_52:
    swift_once();
  }

  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E471BA00;
  v10 = MEMORY[0x1E69E65A8];
  *(v9 + 56) = v7;
  *(v9 + 64) = v10;
  *(v9 + 32) = v8;
  sub_1E470A0AC();

  if (v8 > 1)
  {

    if (v8 == 3)
    {
      sub_1E470B29C();
      sub_1E470A0AC();
      v30 = byte_1F5E62480;
      v31 = v1[5];
      v32 = v1[6];
      sub_1E465057C(v1 + 2, v31);
      if (v30)
      {
        v33 = 0xD000000000000016;
      }

      else
      {
        v33 = 0xD00000000000001ALL;
      }

      if (v30)
      {
        v34 = "Goals init: Synchronize failed";
      }

      else
      {
        v34 = "ReadingGoals.StreakDay";
      }

      (*(v32 + 16))(0, v33, v34 | 0x8000000000000000, v31, v32);

      v35 = byte_1F5E62481;
      v36 = v1[5];
      v37 = v1[6];
      sub_1E465057C(v1 + 2, v36);
      if (v35)
      {
        v38 = 0xD000000000000016;
      }

      else
      {
        v38 = 0xD00000000000001ALL;
      }

      if (v35)
      {
        v39 = "Goals init: Synchronize failed";
      }

      else
      {
        v39 = "ReadingGoals.StreakDay";
      }

      (*(v37 + 16))(0, v38, v39 | 0x8000000000000000, v36, v37);
    }

    if (v8 != 2)
    {
      return result;
    }

    goto LABEL_32;
  }

  v11 = *MEMORY[0x1E696A9E0];
  v45 = sub_1E470AF1C();
  sub_1E470B56C();
  if (!*(v3 + 16) || (v12 = sub_1E4655398(v46), (v13 & 1) == 0))
  {

    sub_1E4658910(v46);
    goto LABEL_32;
  }

  sub_1E4658ABC(*(v3 + 56) + 32 * v12, v47);
  sub_1E4658910(v46);

  sub_1E4650534(&qword_1ECF74AA0, &qword_1E471C990);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    sub_1E470B2AC();
    return sub_1E470A0AC();
  }

  v46[0] = MEMORY[0x1E69E7CC0];
  sub_1E467F200(0, 2, 0);
  v14 = v46[0];
  v16 = *(v46[0] + 16);
  v15 = *(v46[0] + 24);
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    sub_1E467F200((v15 > 1), v16 + 1, 1);
    v18 = v16 + 1;
    v14 = v46[0];
    v15 = *(v46[0] + 24);
    v17 = v15 >> 1;
  }

  *(v14 + 16) = v18;
  v19 = v14 + 16 * v16;
  *(v19 + 32) = 0xD00000000000001ALL;
  *(v19 + 40) = 0x80000001E471A110;
  v20 = v16 + 2;
  if (v17 <= v18)
  {
    v43 = v18;
    sub_1E467F200((v15 > 1), v20, 1);
    v18 = v43;
    v14 = v46[0];
  }

  *(v14 + 16) = v20;
  v21 = v14 + 16 * v18;
  *(v21 + 32) = 0xD000000000000016;
  *(v21 + 40) = 0x80000001E471A0F0;
  v7 = sub_1E46E5F38(v14);

  v22 = sub_1E46E5F38(v45);

  v3 = sub_1E46E5500(v22, v7);

  v47[0] = 0;
  v23 = 1 << *(v3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v8 = v24 & *(v3 + 56);
  v25 = (v23 + 63) >> 6;

  v26 = 0;
  if (v8)
  {
    while (1)
    {
      v27 = v26;
LABEL_22:
      v28 = (*(v3 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v8)))));
      v7 = v28[1];
      v8 &= v8 - 1;
      v46[0] = *v28;
      v46[1] = v7;

      sub_1E46E30AC(v46, v1, v47);

      if (!v8)
      {
        goto LABEL_18;
      }
    }
  }

  while (1)
  {
LABEL_18:
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v27 >= v25)
    {
      break;
    }

    v8 = *(v3 + 56 + 8 * v27);
    ++v26;
    if (v8)
    {
      v26 = v27;
      goto LABEL_22;
    }
  }

  if (v47[0] == 1)
  {
    result = swift_beginAccess();
    v40 = v1[12];
    if (v40)
    {
      v41 = v1[13];

      v40(v42);
      return sub_1E45EB5D8(v40);
    }
  }

  return result;
}

uint64_t sub_1E46E30AC(uint64_t *a1, void *a2, _BYTE *a3)
{
  v6 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v66 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v58 - v12;
  v14 = sub_1E4709CCC();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v65 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v67 = &v58 - v20;
  v22 = *a1;
  v21 = a1[1];
  v23 = a2[5];
  v24 = a2[6];
  sub_1E465057C(a2 + 2, v23);
  v25 = (*(v24 + 8))(v22, v21, v23, v24);
  v26 = a2[10];
  v27 = a2[11];
  sub_1E465057C(a2 + 7, v26);
  v28 = (*(*(v27 + 8) + 8))(v22, v21, v26);
  v29 = v28;
  if (!v25)
  {
LABEL_11:
    v36 = a2[5];
    v37 = a2[6];
    sub_1E465057C(a2 + 2, v36);
    (*(v37 + 16))(v29, v22, v21, v36, v37);

LABEL_13:
    *a3 = 1;
    return result;
  }

  if (!v28)
  {

    v39 = a2[5];
    v40 = a2[6];
    sub_1E465057C(a2 + 2, v39);
    result = (*(v40 + 16))(0, v22, v21, v39, v40);
    goto LABEL_13;
  }

  if (!*(v25 + 16) || (v30 = sub_1E46553DC(1702125924, 0xE400000000000000), (v31 & 1) == 0))
  {

    (*(v68 + 56))(v13, 1, 1, v69);
    goto LABEL_8;
  }

  sub_1E4658ABC(*(v25 + 56) + 32 * v30, v70);
  v32 = v69;
  v33 = swift_dynamicCast();
  v34 = v68;
  v63 = *(v68 + 56);
  v64 = v68 + 56;
  v63(v13, v33 ^ 1u, 1, v32);
  v61 = *(v34 + 48);
  v62 = v34 + 48;
  if (v61(v13, 1, v32) == 1)
  {

LABEL_8:
    sub_1E46E5FD0(v13);
    sub_1E470B2AC();
    if (qword_1EE2ADC90 != -1)
    {
      swift_once();
    }

    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1E471BA00;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 64) = sub_1E4663DE4();
    *(v35 + 32) = v22;
    *(v35 + 40) = v21;

    sub_1E470A0AC();

    goto LABEL_11;
  }

  v59 = *(v34 + 32);
  v60 = v34 + 32;
  v59(v67, v13, v32);
  if (!*(v29 + 16) || (v41 = sub_1E46553DC(1702125924, 0xE400000000000000), (v42 & 1) == 0))
  {

    v43 = v66;
    v63(v66, 1, 1, v32);
    goto LABEL_19;
  }

  sub_1E4658ABC(*(v29 + 56) + 32 * v41, v70);
  v43 = v66;
  v44 = swift_dynamicCast();
  v63(v43, v44 ^ 1u, 1, v32);
  if (v61(v43, 1, v32) == 1)
  {

LABEL_19:
    v45 = v67;
    sub_1E46E5FD0(v43);
    sub_1E470B2AC();
    if (qword_1EE2ADC90 != -1)
    {
      swift_once();
    }

    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1E471BA00;
    *(v46 + 56) = MEMORY[0x1E69E6158];
    *(v46 + 64) = sub_1E4663DE4();
    *(v46 + 32) = v22;
    *(v46 + 40) = v21;

    sub_1E470A0AC();

    v47 = a2[10];
    v48 = a2[11];
    sub_1E465057C(a2 + 7, v47);
    (*(*(v48 + 8) + 16))(v25, v22, v21, v47);

    return (*(v68 + 8))(v45, v69);
  }

  v59(v65, v43, v32);
  v49 = v67;
  if ((sub_1E4709C6C() & 1) == 0)
  {

    v55 = a2[5];
    v54 = a2[6];
    sub_1E465057C(a2 + 2, v55);
    (*(v54 + 16))(v29, v22, v21, v55, v54);

    v56 = v69;
    v57 = *(v68 + 8);
    v57(v65, v69);
    result = (v57)(v49, v56);
    goto LABEL_13;
  }

  v50 = a2[10];
  v51 = a2[11];
  sub_1E465057C(a2 + 7, v50);
  (*(*(v51 + 8) + 16))(v25, v22, v21, v50);

  v52 = v69;
  v53 = *(v68 + 8);
  v53(v65, v69);
  return (v53)(v49, v52);
}

uint64_t *ReadingGoalsDataStore.deinit()
{
  sub_1E4658A0C(v0 + 2);
  sub_1E4658A0C(v0 + 7);
  v1 = v0[13];
  sub_1E45EB5D8(v0[12]);
  return v0;
}

uint64_t ReadingGoalsDataStore.__deallocating_deinit()
{
  sub_1E4658A0C(v0 + 2);
  sub_1E4658A0C(v0 + 7);
  v1 = v0[13];
  sub_1E45EB5D8(v0[12]);

  return swift_deallocClassInstance();
}

uint64_t sub_1E46E3990(char a1)
{
  v3 = v1[5];
  v4 = v1[6];
  sub_1E465057C(v1 + 2, v3);
  if (a1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v6 = "Goals init: Synchronize failed";
  }

  else
  {
    v6 = "ReadingGoals.StreakDay";
  }

  v7 = (*(v4 + 8))(v5, v6 | 0x8000000000000000, v3, v4);

  if (v7)
  {
    if (*(v7 + 16))
    {
      v8 = sub_1E46553DC(1818324839, 0xE400000000000000);
      if (v9)
      {
        sub_1E4658ABC(*(v7 + 56) + 32 * v8, v13);

        goto LABEL_13;
      }
    }
  }

  memset(v13, 0, sizeof(v13));
LABEL_13:
  sub_1E4650534(&unk_1ECF74DD0, &qword_1E471D8C0);
  v10 = swift_dynamicCast();
  v11 = v14;
  if (!v10)
  {
    return 0;
  }

  return v11;
}

uint64_t ReadingGoalsDataStore.value<A>(for:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[5];
  v8 = v3[6];
  sub_1E465057C(v3 + 2, v7);
  if (a1)
  {
    v9 = 0xD000000000000016;
  }

  else
  {
    v9 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v10 = "Goals init: Synchronize failed";
  }

  else
  {
    v10 = "ReadingGoals.StreakDay";
  }

  v11 = (*(v8 + 8))(v9, v10 | 0x8000000000000000, v7, v8);

  if (!v11)
  {
    goto LABEL_12;
  }

  if (!*(v11 + 16) || (v12 = sub_1E46553DC(1818324839, 0xE400000000000000), (v13 & 1) == 0))
  {

LABEL_12:
    memset(v16, 0, sizeof(v16));
    goto LABEL_13;
  }

  sub_1E4658ABC(*(v11 + 56) + 32 * v12, v16);

LABEL_13:
  sub_1E4650534(&unk_1ECF74DD0, &qword_1E471D8C0);
  v14 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v14 ^ 1u, 1, a2);
}

uint64_t sub_1E46E3C28(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1E4709CCC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - v14;
  sub_1E4650534(&qword_1ECF757E0, &qword_1E471FBF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E471B800;
  *(inited + 32) = 1818324839;
  *(inited + 40) = 0xE400000000000000;
  v27 = a1;
  sub_1E470B56C();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  sub_1E4709CBC();
  (*(v7 + 16))(v11, v15, v6);
  sub_1E46E4DDC();
  sub_1E470B56C();
  (*(v7 + 8))(v15, v6);
  v17 = sub_1E46E5CDC(inited);
  swift_setDeallocating();
  sub_1E4650534(&qword_1ECF757E8, &unk_1E471FC00);
  swift_arrayDestroy();
  v18 = v3[5];
  v19 = v3[6];
  sub_1E465057C(v3 + 2, v18);
  v20 = sub_1E46B96A0(v17);
  if (a2)
  {
    v21 = 0xD000000000000016;
  }

  else
  {
    v21 = 0xD00000000000001ALL;
  }

  if (a2)
  {
    v22 = "Goals init: Synchronize failed";
  }

  else
  {
    v22 = "ReadingGoals.StreakDay";
  }

  (*(v19 + 16))(v20, v21, v22 | 0x8000000000000000, v18, v19);

  v23 = v3[10];
  v24 = v3[11];
  sub_1E465057C(v3 + 7, v23);
  v25 = sub_1E46B96A0(v17);

  (*(*(v24 + 8) + 16))(v25, v21, v22 | 0x8000000000000000, v23);
}

uint64_t sub_1E46E3EF8(char a1, double a2)
{
  v3 = v2;
  v6 = sub_1E4709CCC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v27 - v14;
  sub_1E4650534(&qword_1ECF757E0, &qword_1E471FBF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E471B800;
  *(inited + 32) = 1818324839;
  *(inited + 40) = 0xE400000000000000;
  *&v27[1] = a2;
  sub_1E470B56C();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  sub_1E4709CBC();
  (*(v7 + 16))(v11, v15, v6);
  sub_1E46E4DDC();
  sub_1E470B56C();
  (*(v7 + 8))(v15, v6);
  v17 = sub_1E46E5CDC(inited);
  swift_setDeallocating();
  sub_1E4650534(&qword_1ECF757E8, &unk_1E471FC00);
  swift_arrayDestroy();
  v18 = v3[5];
  v19 = v3[6];
  sub_1E465057C(v3 + 2, v18);
  v20 = sub_1E46B96A0(v17);
  if (a1)
  {
    v21 = 0xD000000000000016;
  }

  else
  {
    v21 = 0xD00000000000001ALL;
  }

  if (a1)
  {
    v22 = "Goals init: Synchronize failed";
  }

  else
  {
    v22 = "ReadingGoals.StreakDay";
  }

  (*(v19 + 16))(v20, v21, v22 | 0x8000000000000000, v18, v19);

  v23 = v3[10];
  v24 = v3[11];
  sub_1E465057C(v3 + 7, v23);
  v25 = sub_1E46B96A0(v17);

  (*(*(v24 + 8) + 16))(v25, v21, v22 | 0x8000000000000000, v23);
}

uint64_t ReadingGoalsDataStore.set<A>(value:forGoal:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27[1] = a4;
  v28 = a2;
  v6 = sub_1E4709CCC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v27 - v14;
  sub_1E4650534(&qword_1ECF757E0, &qword_1E471FBF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E471B800;
  *(inited + 32) = 1818324839;
  *(inited + 40) = 0xE400000000000000;
  sub_1E470B71C();
  *(inited + 88) = 1702125924;
  *(inited + 96) = 0xE400000000000000;
  sub_1E4709CBC();
  (*(v7 + 16))(v11, v15, v6);
  sub_1E46E4DDC();
  sub_1E470B56C();
  (*(v7 + 8))(v15, v6);
  v17 = sub_1E46E5CDC(inited);
  swift_setDeallocating();
  sub_1E4650534(&qword_1ECF757E8, &unk_1E471FC00);
  swift_arrayDestroy();
  v18 = v5[5];
  v19 = v5[6];
  sub_1E465057C(v5 + 2, v18);
  v20 = sub_1E46B96A0(v17);
  if (v28)
  {
    v21 = 0xD000000000000016;
  }

  else
  {
    v21 = 0xD00000000000001ALL;
  }

  if (v28)
  {
    v22 = "Goals init: Synchronize failed";
  }

  else
  {
    v22 = "ReadingGoals.StreakDay";
  }

  (*(v19 + 16))(v20, v21, v22 | 0x8000000000000000, v18, v19);

  v23 = v5[10];
  v24 = v5[11];
  sub_1E465057C(v5 + 7, v23);
  v25 = sub_1E46B96A0(v17);

  (*(*(v24 + 8) + 16))(v25, v21, v22 | 0x8000000000000000, v23);
}

Swift::Void __swiftcall ReadingGoalsDataStore.clearData()()
{
  v1 = byte_1F5E623E0;
  v2 = v0[5];
  v3 = v0[6];
  sub_1E465057C(v0 + 2, v2);
  v4 = v1 == 0;
  if (v1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v4)
  {
    v6 = "ReadingGoals.StreakDay";
  }

  else
  {
    v6 = "Goals init: Synchronize failed";
  }

  (*(v3 + 16))(0, v5, v6 | 0x8000000000000000, v2, v3);

  v7 = v0[10];
  v8 = v0[11];
  sub_1E465057C(v0 + 7, v7);
  (*(*(v8 + 8) + 16))(0, v5, v6 | 0x8000000000000000, v7);

  v9 = byte_1F5E623E1;
  v10 = v0[5];
  v11 = v0[6];
  sub_1E465057C(v0 + 2, v10);
  v12 = v9 == 0;
  if (v9)
  {
    v13 = 0xD000000000000016;
  }

  else
  {
    v13 = 0xD00000000000001ALL;
  }

  if (v12)
  {
    v14 = "ReadingGoals.StreakDay";
  }

  else
  {
    v14 = "Goals init: Synchronize failed";
  }

  (*(v11 + 16))(0, v13, v14 | 0x8000000000000000, v10, v11);

  v15 = v0[10];
  v16 = v0[11];
  sub_1E465057C(v0 + 7, v15);
  (*(*(v16 + 8) + 16))(0, v13, v14 | 0x8000000000000000, v15);
}

uint64_t static ReadingGoalsDataStore.clearCachedData(in:)(void *a1)
{
  v2 = byte_1F5E624A8;
  v3 = a1[3];
  v4 = a1[4];
  sub_1E465057C(a1, v3);
  if (v2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v6 = "Goals init: Synchronize failed";
  }

  else
  {
    v6 = "ReadingGoals.StreakDay";
  }

  (*(v4 + 16))(0, v5, v6 | 0x8000000000000000, v3, v4);

  v7 = byte_1F5E624A9;
  v8 = a1[3];
  v9 = a1[4];
  sub_1E465057C(a1, v8);
  if (v7)
  {
    v10 = 0xD000000000000016;
  }

  else
  {
    v10 = 0xD00000000000001ALL;
  }

  if (v7)
  {
    v11 = "Goals init: Synchronize failed";
  }

  else
  {
    v11 = "ReadingGoals.StreakDay";
  }

  (*(v9 + 16))(0, v10, v11 | 0x8000000000000000, v8, v9);
}

uint64_t ReadingGoalsDataStore.state.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E46E3990(0);
  if (v3)
  {
    if (qword_1EE2AE440 != -1)
    {
      swift_once();
    }

    v4 = qword_1EE2AE448;
  }

  else
  {
    v4 = v2;
  }

  result = sub_1E46E3990(1);
  if (v6)
  {
    if (qword_1EE2AE440 != -1)
    {
      swift_once();
    }

    result = qword_1EE2AE450;
  }

  *a1 = v4;
  a1[1] = result;
  return result;
}

uint64_t sub_1E46E4860()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  sub_1E45EA6A0(v2);
  return v2;
}

uint64_t sub_1E46E48B4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 96);
  v7 = *(v5 + 104);
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  return sub_1E45EB5D8(v6);
}

uint64_t (*sub_1E46E490C())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

unint64_t sub_1E46E4DDC()
{
  result = qword_1ECF75D50;
  if (!qword_1ECF75D50)
  {
    sub_1E4709CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75D50);
  }

  return result;
}

void *sub_1E46E4E34(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1E46E56C4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E46E4EC4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1E4650534(&qword_1ECF754E8, &qword_1E471EAB8);
  result = sub_1E470B5AC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1E470B8FC();
    MEMORY[0x1E6916620](v17);
    MEMORY[0x1E6916620](v18);
    result = sub_1E470B91C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E46E50E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1E4650534(&unk_1ECF75490, &unk_1E471FCF0);
  result = sub_1E470B5AC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1E470B41C();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E46E52DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1E4650534(&unk_1ECF75478, &qword_1E471FCE0);
  result = sub_1E470B5AC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1E470B8FC();

    sub_1E470AFCC();
    result = sub_1E470B91C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E46E5500(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v9);
    bzero(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v10 = sub_1E46E56C4(v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v13 = swift_slowAlloc();

    v10 = sub_1E46E4E34(v13, v6, a2, a1);

    MEMORY[0x1E6917530](v13, -1, -1);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1E46E56C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_1E470B8FC();

      sub_1E470AFCC();
      v27 = sub_1E470B91C();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_1E470B84C() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1E46E52DC(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_1E470B8FC();

      sub_1E470AFCC();
      v41 = sub_1E470B91C();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_1E470B84C() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E46E5AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1E4650534(&qword_1ECF75800, &qword_1E471FCD0);
    v3 = sub_1E470B70C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E465E0B0(v4, v13, &qword_1ECF75808, &qword_1E471FCD8);
      result = sub_1E4655398(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1E46E5BC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1E4650534(&qword_1ECF75818, &qword_1E471FD00);
    v3 = sub_1E470B70C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1E46553DC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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

unint64_t sub_1E46E5CDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1E4650534(&qword_1ECF75810, &qword_1E471FCE8);
    v3 = sub_1E470B70C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E465E0B0(v4, &v16, &qword_1ECF757E8, &unk_1E471FC00);
      v5 = v16;
      v6 = v17;
      result = sub_1E46553DC(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_1E46E5E14()
{
  result = qword_1ECF757F8;
  if (!qword_1ECF757F8)
  {
    sub_1E46506D0(&qword_1ECF757F0, &qword_1E471FC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF757F8);
  }

  return result;
}

uint64_t sub_1E46E5F38(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E6915E90](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1E46C8108(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1E46E5FD0(uint64_t a1)
{
  v2 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E46E6038()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E46E6060()
{
  v1 = v0;
  v2 = type metadata accessor for ReadingHistoryModel(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = v17 - v10;
  sub_1E465E0B0(v1, v17 - v10, &unk_1ECF74C60, &qword_1E471C910);
  v12 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  v13 = (*(*(v12 - 8) + 48))(v11, 2, v12);
  if (v13)
  {
    if (v13 == 1)
    {
      return 0x6C61636F6CLL;
    }

    else
    {
      return 0x6465726F7473;
    }
  }

  else
  {
    sub_1E46E7C20(v11, v6, type metadata accessor for ReadingHistoryModel);
    v17[0] = 0x2865746F6D6572;
    v17[1] = 0xE700000000000000;
    v15 = ReadingHistoryModel.description.getter();
    MEMORY[0x1E6915D10](v15);

    MEMORY[0x1E6915D10](41, 0xE100000000000000);
    v16 = v17[0];
    sub_1E46E7188(v6, type metadata accessor for ReadingHistoryModel);
    return v16;
  }
}

uint64_t ReadingHistory.ModelSnapshot.ModelValues.init(readingDay:longestStreak:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 2;
  v8 = *(type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0) + 20);
  v9 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v9 - 8) + 56))(a3 + v8, 1, 1, v9);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  return sub_1E4697BD4(a2, a3 + v8, &qword_1ECF74C40, &unk_1E471C980);
}

uint64_t ReadingHistory.ModelSnapshot.init(loaded:lastSource:modelValues:remoteModelValues:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *a1;
  v10 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
  v11 = v10[7];
  v12 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  (*(*(v12 - 8) + 56))(&a5[v11], 1, 1, v12);
  *a5 = v9;
  sub_1E46E642C(a2, &a5[v10[5]]);
  sub_1E46E7C20(a3, &a5[v10[6]], type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  return sub_1E4697BD4(a4, &a5[v11], &qword_1ECF74C58, &unk_1E471D5A0);
}

uint64_t sub_1E46E642C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 ReadingHistory.ModelSnapshot.ModelValues.readingDay.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ReadingHistory.ModelSnapshot.ModelValues.readingDay.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

uint64_t ReadingHistory.ModelSnapshot.ModelValues.description.getter()
{
  v1 = v0;
  v2 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v23 - v5;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E471B800;
  v8 = *(v0 + 16);
  if (v8 == 2)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v23 = *v0;
    v24 = v8 & 1;
    v9 = ReadingHistory.Day.description.getter();
    v10 = v11;
  }

  v12 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1E4663DE4();
  *(v7 + 64) = v13;
  if (v10)
  {
    v14 = v9;
  }

  else
  {
    v14 = 7104878;
  }

  v15 = 0xE300000000000000;
  if (v10)
  {
    v15 = v10;
  }

  *(v7 + 32) = v14;
  *(v7 + 40) = v15;
  v16 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  sub_1E465E0B0(v1 + *(v16 + 20), v6, &qword_1ECF74C40, &unk_1E471C980);
  v17 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v17 - 8) + 48))(v6, 1, v17) == 1)
  {
    sub_1E465E050(v6, &qword_1ECF74C40, &unk_1E471C980);
    v18 = (v7 + 72);
    *(v7 + 96) = v12;
    *(v7 + 104) = v13;
LABEL_13:
    *v18 = 7104878;
    v21 = 0xE300000000000000;
    goto LABEL_14;
  }

  v19 = ReadingHistory.Streak.description.getter();
  v21 = v20;
  sub_1E46E7188(v6, type metadata accessor for ReadingHistory.Streak);
  v18 = (v7 + 72);
  *(v7 + 96) = v12;
  *(v7 + 104) = v13;
  if (!v21)
  {
    goto LABEL_13;
  }

  *v18 = v19;
LABEL_14:
  *(v7 + 80) = v21;
  return sub_1E470AF3C();
}

uint64_t ReadingHistory.ModelSnapshot.modelValues.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.ModelSnapshot(0) + 24);

  return sub_1E46E70C0(v3, a1);
}

uint64_t ReadingHistory.ModelSnapshot.modelValues.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.ModelSnapshot(0) + 24);

  return sub_1E46E7124(a1, v3);
}

uint64_t ReadingHistory.ModelSnapshot.description.getter()
{
  v1 = v0;
  v2 = sub_1E4650534(&qword_1ECF74C58, &unk_1E471D5A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v27 - v5;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = xmmword_1E471C940;
  v9 = *v0 == 0;
  if (*v0)
  {
    v10 = 0x7964616572;
  }

  else
  {
    v10 = 0x676E6964616F6CLL;
  }

  if (v9)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1E4663DE4();
  v8[8] = v13;
  v8[4] = v10;
  v8[5] = v11;
  v14 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
  v15 = &v1[v14[5]];
  v16 = sub_1E46E6060();
  v8[12] = v12;
  v8[13] = v13;
  v8[9] = v16;
  v8[10] = v17;
  v18 = &v1[v14[6]];
  v19 = ReadingHistory.ModelSnapshot.ModelValues.description.getter();
  v8[17] = v12;
  v8[18] = v13;
  v8[14] = v19;
  v8[15] = v20;
  sub_1E465E0B0(&v1[v14[7]], v6, &qword_1ECF74C58, &unk_1E471D5A0);
  v21 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  if ((*(*(v21 - 8) + 48))(v6, 1, v21) == 1)
  {
    sub_1E465E050(v6, &qword_1ECF74C58, &unk_1E471D5A0);
    v22 = v8 + 19;
    v8[22] = v12;
    v8[23] = v13;
LABEL_11:
    *v22 = 7104878;
    v25 = 0xE300000000000000;
    goto LABEL_12;
  }

  v23 = ReadingHistory.ModelSnapshot.ModelValues.description.getter();
  v25 = v24;
  sub_1E46E7188(v6, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  v22 = v8 + 19;
  v8[22] = v12;
  v8[23] = v13;
  if (!v25)
  {
    goto LABEL_11;
  }

  *v22 = v23;
LABEL_12:
  v8[20] = v25;
  return sub_1E470AF3C();
}

BOOL _s13BookDataStore14ReadingHistoryO13ModelSnapshotV0F6ValuesV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
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
  v20 = &v35 - v19;
  v21 = *(a1 + 16);
  v22 = *(a2 + 16);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if (v22 == 2)
  {
    return 0;
  }

  v27 = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if ((v22 ^ v21))
    {
      return 0;
    }

LABEL_3:
    v36 = v9;
    v23 = v18;
    v24 = *(type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0) + 20);
    v25 = *(v23 + 48);
    sub_1E465E0B0(a1 + v24, v20, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E465E0B0(a2 + v24, &v20[v25], &qword_1ECF74C40, &unk_1E471C980);
    v26 = *(v5 + 48);
    if (v26(v20, 1, v4) == 1)
    {
      if (v26(&v20[v25], 1, v4) == 1)
      {
        sub_1E465E050(v20, &qword_1ECF74C40, &unk_1E471C980);
        return 1;
      }

      goto LABEL_14;
    }

    sub_1E465E0B0(v20, v14, &qword_1ECF74C40, &unk_1E471C980);
    if (v26(&v20[v25], 1, v4) == 1)
    {
      sub_1E46E7188(v14, type metadata accessor for ReadingHistory.Streak);
LABEL_14:
      v28 = &unk_1ECF74C20;
      v29 = &qword_1E471D578;
LABEL_15:
      sub_1E465E050(v20, v28, v29);
      return 0;
    }

    v31 = v36;
    sub_1E46E7C20(&v20[v25], v36, type metadata accessor for ReadingHistory.Streak);
    if ((sub_1E4709C8C() & 1) == 0)
    {
      sub_1E46E7188(v31, type metadata accessor for ReadingHistory.Streak);
      sub_1E46E7188(v14, type metadata accessor for ReadingHistory.Streak);
      v28 = &qword_1ECF74C40;
      v29 = &unk_1E471C980;
      goto LABEL_15;
    }

    v32 = *(v4 + 20);
    v33 = *&v14[v32];
    v34 = *(v31 + v32);
    sub_1E46E7188(v31, type metadata accessor for ReadingHistory.Streak);
    sub_1E46E7188(v14, type metadata accessor for ReadingHistory.Streak);
    sub_1E465E050(v20, &qword_1ECF74C40, &unk_1E471C980);
    return v33 == v34;
  }

  return v27;
}

uint64_t sub_1E46E70C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46E7124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46E7188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s13BookDataStore14ReadingHistoryO13ModelSnapshotV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  v67 = *(v4 - 8);
  v5 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4650534(&qword_1ECF74C58, &unk_1E471D5A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v64 = &v58 - v12;
  v66 = sub_1E4650534(&unk_1ECF75820, &unk_1E471FDA0);
  v13 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66, v14);
  v16 = &v58 - v15;
  v65 = type metadata accessor for ReadingHistoryModel(0);
  v17 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65, v18);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v58 - v23;
  v25 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8, v27);
  v29 = &v58 - v28;
  v30 = sub_1E4650534(&qword_1ECF74A10, &qword_1E471C918);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v58 - v33;
  if (*a1 != *a2)
  {
    return 0;
  }

  v59 = v4;
  v60 = v16;
  v58 = v8;
  v61 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
  v62 = a1;
  v35 = *(v61 + 20);
  v36 = *(v30 + 48);
  sub_1E465E0B0(&a1[v35], v34, &unk_1ECF74C60, &qword_1E471C910);
  v63 = a2;
  sub_1E465E0B0(&a2[v35], &v34[v36], &unk_1ECF74C60, &qword_1E471C910);
  v37 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  v38 = *(*(v37 - 8) + 48);
  v39 = v38(v34, 2, v37);
  if (v39)
  {
    if (v39 == 1)
    {
      if (v38(&v34[v36], 2, v37) != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (v38(&v34[v36], 2, v37) == 2)
    {
LABEL_9:
      sub_1E465E050(v34, &unk_1ECF74C60, &qword_1E471C910);
      goto LABEL_10;
    }

LABEL_14:
    v50 = &qword_1ECF74A10;
    v51 = &qword_1E471C918;
LABEL_15:
    v52 = v34;
LABEL_16:
    sub_1E465E050(v52, v50, v51);
    return 0;
  }

  sub_1E465E0B0(v34, v29, &unk_1ECF74C60, &qword_1E471C910);
  if (v38(&v34[v36], 2, v37))
  {
    sub_1E46E7188(v29, type metadata accessor for ReadingHistoryModel);
    goto LABEL_14;
  }

  sub_1E46E7C20(v29, v24, type metadata accessor for ReadingHistoryModel);
  sub_1E46E7C20(&v34[v36], v20, type metadata accessor for ReadingHistoryModel);
  sub_1E46E7C88(&qword_1EE2ADA90);
  if (sub_1E470AB9C())
  {
    sub_1E46E7188(v20, type metadata accessor for ReadingHistoryModel);
    sub_1E46E7188(v24, type metadata accessor for ReadingHistoryModel);
    v50 = &unk_1ECF74C60;
    v51 = &qword_1E471C910;
    goto LABEL_15;
  }

  v54 = sub_1E470AB9C();
  sub_1E46E7188(v20, type metadata accessor for ReadingHistoryModel);
  sub_1E46E7188(v24, type metadata accessor for ReadingHistoryModel);
  sub_1E465E050(v34, &unk_1ECF74C60, &qword_1E471C910);
  if (v54)
  {
    return 0;
  }

LABEL_10:
  v40 = v61;
  v41 = v62;
  v42 = v63;
  if (!_s13BookDataStore14ReadingHistoryO13ModelSnapshotV0F6ValuesV2eeoiySbAG_AGtFZ_0(&v62[*(v61 + 24)], &v63[*(v61 + 24)]))
  {
    return 0;
  }

  v43 = *(v40 + 28);
  v44 = *(v66 + 48);
  v45 = &v41[v43];
  v46 = v60;
  sub_1E465E0B0(v45, v60, &qword_1ECF74C58, &unk_1E471D5A0);
  sub_1E465E0B0(&v42[v43], v46 + v44, &qword_1ECF74C58, &unk_1E471D5A0);
  v47 = *(v67 + 48);
  v48 = v59;
  if (v47(v46, 1, v59) == 1)
  {
    if (v47(v46 + v44, 1, v48) == 1)
    {
      sub_1E465E050(v46, &qword_1ECF74C58, &unk_1E471D5A0);
      return 1;
    }

    goto LABEL_22;
  }

  v53 = v64;
  sub_1E465E0B0(v46, v64, &qword_1ECF74C58, &unk_1E471D5A0);
  if (v47(v46 + v44, 1, v48) == 1)
  {
    sub_1E46E7188(v53, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
LABEL_22:
    v50 = &unk_1ECF75820;
    v51 = &unk_1E471FDA0;
    v52 = v46;
    goto LABEL_16;
  }

  v55 = v46 + v44;
  v56 = v58;
  sub_1E46E7C20(v55, v58, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  v57 = _s13BookDataStore14ReadingHistoryO13ModelSnapshotV0F6ValuesV2eeoiySbAG_AGtFZ_0(v53, v56);
  sub_1E46E7188(v56, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  sub_1E46E7188(v53, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  sub_1E465E050(v46, &qword_1ECF74C58, &unk_1E471D5A0);
  return v57;
}

void sub_1E46E78F4()
{
  sub_1E46E79FC(319, qword_1EE2AE560, type metadata accessor for ModelState.LoadedState);
  if (v0 <= 0x3F)
  {
    sub_1E46E79FC(319, qword_1EE2AE4D8, type metadata accessor for ModelState.Source);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(319);
      if (v2 <= 0x3F)
      {
        sub_1E46E7BCC(319, qword_1EE2AE2C0, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E46E79FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ReadingHistoryModel(255);
    v7 = sub_1E46E7C88(&qword_1EE2ADAA0);
    v8 = sub_1E46E7C88(&qword_1EE2ADA70);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1E46E7ADC()
{
  sub_1E46E7B7C();
  if (v0 <= 0x3F)
  {
    sub_1E46E7BCC(319, &qword_1EE2AE0F0, type metadata accessor for ReadingHistory.Streak);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E46E7B7C()
{
  if (!qword_1EE2AE1C8[0])
  {
    v0 = sub_1E470B47C();
    if (!v1)
    {
      atomic_store(v0, qword_1EE2AE1C8);
    }
  }
}

void sub_1E46E7BCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E470B47C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E46E7C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E46E7C88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReadingHistoryModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _ReadingHistoryServiceStatus.description.getter()
{
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E6915D10](v1, v2);

  MEMORY[0x1E6915D10](125, 0xE100000000000000);
  return 0x6564616F4C73697BLL;
}

uint64_t sub_1E46E7D70()
{
  sub_1E470B8FC();
  MEMORY[0x1E6916620](0);
  return sub_1E470B91C();
}

uint64_t sub_1E46E7DDC()
{
  sub_1E470B8FC();
  MEMORY[0x1E6916620](0);
  return sub_1E470B91C();
}

uint64_t sub_1E46E7E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646564616F4C7369 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E470B84C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E46E7EBC(uint64_t a1)
{
  v2 = sub_1E46E806C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E46E7EF8(uint64_t a1)
{
  v2 = sub_1E46E806C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _ReadingHistoryServiceStatus.encode(to:)(void *a1)
{
  v3 = sub_1E4650534(&qword_1ECF75830, &qword_1E471FDB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E46E806C();
  sub_1E470B93C();
  sub_1E470B7CC();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_1E46E806C()
{
  result = qword_1ECF75838;
  if (!qword_1ECF75838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75838);
  }

  return result;
}

uint64_t _ReadingHistoryServiceStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1E4650534(&qword_1ECF75840, &qword_1E471FDB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E46E806C();
  sub_1E470B92C();
  if (!v2)
  {
    v12 = sub_1E470B75C();
    (*(v6 + 8))(v10, v5);
    *a2 = v12 & 1;
  }

  return sub_1E4658A0C(a1);
}

uint64_t sub_1E46E8230(void *a1)
{
  v3 = sub_1E4650534(&qword_1ECF75830, &qword_1E471FDB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  sub_1E465057C(a1, a1[3]);
  sub_1E46E806C();
  sub_1E470B93C();
  sub_1E470B7CC();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_1E46E8368()
{
  if (*v0)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E6915D10](v1, v2);

  MEMORY[0x1E6915D10](125, 0xE100000000000000);
  return 0x6564616F4C73697BLL;
}

id ReadingHistoryServiceStatus.__allocating_init(value:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ReadingHistoryServiceStatus.init(value:)(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ReadingHistoryServiceStatus.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1E46586E0(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id ReadingHistoryServiceStatus.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1E46586E0(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id ReadingHistoryServiceStatus.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReadingHistoryServiceStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E46E8728@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = v4;
  v7.receiver = v5;
  v7.super_class = v2;
  result = objc_msgSendSuper2(&v7, sel_init);
  *a2 = result;
  return result;
}

id ReadingHistoryServiceStatus.__allocating_init(isLoaded:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithIsLoaded_];
}

id ReadingHistoryServiceStatus.init(isLoaded:)(char a1)
{
  ObjectType = swift_getObjectType();
  v3 = objc_allocWithZone(ObjectType);
  v3[OBJC_IVAR___BDSReadingHistoryServiceStatus_value] = a1;
  v6.receiver = v3;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t ReadingHistoryServiceStatus.description.getter()
{
  if (*(v0 + OBJC_IVAR___BDSReadingHistoryServiceStatus_value))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___BDSReadingHistoryServiceStatus_value))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E6915D10](v1, v2);

  MEMORY[0x1E6915D10](125, 0xE100000000000000);
  return 0x6564616F4C73697BLL;
}

uint64_t getEnumTagSinglePayload for _ReadingHistoryServiceStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1E46E8B80()
{
  result = qword_1ECF75858;
  if (!qword_1ECF75858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75858);
  }

  return result;
}

unint64_t sub_1E46E8BD8()
{
  result = qword_1ECF75860;
  if (!qword_1ECF75860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75860);
  }

  return result;
}

unint64_t sub_1E46E8C30()
{
  result = qword_1ECF75868;
  if (!qword_1ECF75868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF75868);
  }

  return result;
}

uint64_t sub_1E46E8C84()
{
  result = sub_1E470A0DC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1E46E8D54()
{
  sub_1E46E93E8();
  v1 = v0;
  sub_1E46E9314();
  v2 = objc_allocWithZone(BCCloudDataSource);
  v3 = sub_1E470AF0C();

  v4 = [v2 initWithManagedObjectModel:v1 nameOnDisk:v3];

  return v4;
}

void sub_1E46E8E38(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40] & *v2;
  v8 = *(v2 + qword_1ECF75880);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = *(v7 + 80);
  *(v10 + 32) = *((v6 & v5) + 0x60);
  *(v10 + 40) = v9;
  *(v10 + 48) = a1;
  *(v10 + 56) = a2;
  v12[4] = sub_1E46EEFFC;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1E46EC4FC;
  v12[3] = &unk_1F5E66800;
  v11 = _Block_copy(v12);

  [v8 cloudDataWithPredicate:0 sortDescriptors:0 completion:v11];
  _Block_release(v11);
}

void sub_1E46E8FBC(char a1)
{
  v2 = *(v1 + qword_1ECF7B638);
  *(v1 + qword_1ECF7B638) = a1;
  v3 = *(v1 + qword_1ECF7B638);
  if (v2 != v3)
  {
    sub_1E46EB990(v3);
  }
}

void sub_1E46E8FE4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = [*&v4[qword_1ECF758B0] createTransactionWithName_];
  aBlock[0] = *(ObjectType + 80);
  swift_getMetatypeMetadata();
  v9 = sub_1E470AF6C();
  v11 = v10;
  v12 = type metadata accessor for CRDTModelSync();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  *&v13[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData] = xmmword_1E471B810;
  sub_1E46552AC(a1, a2);
  v32.receiver = v13;
  v32.super_class = v12;
  v15 = objc_msgSendSuper2(&v32, sel_init);
  v16 = &v15[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type];
  v17 = *&v15[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_type + 8];
  *v16 = v9;
  v16[1] = v11;
  v18 = v15;

  v19 = &v18[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
  v20 = *&v18[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData];
  v21 = *&v18[OBJC_IVAR____TtC13BookDataStore13CRDTModelSync_protoData + 8];
  *v19 = a1;
  v19[1] = a2;
  sub_1E465DDA0(v20, v21);

  v22 = *&v4[qword_1ECF75880];
  v23 = v18;
  sub_1E46E9574();
  sub_1E4650534(&unk_1ECF747B0, &unk_1E471B820);
  v24 = sub_1E470AE2C();

  v25 = swift_allocObject();
  v25[2] = v4;
  v25[3] = a3;
  v25[4] = a4;
  v25[5] = v8;
  aBlock[4] = sub_1E46EEFA0;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46EC754;
  aBlock[3] = &unk_1F5E667B0;
  v26 = _Block_copy(aBlock);
  v27 = v4;

  v28 = v8;

  [v22 setCloudData:v23 predicate:0 mergers:v24 completion:v26];
  _Block_release(v26);
}

void sub_1E46E925C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1E4709AFC();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1E46E92CC()
{
  type metadata accessor for CRDTModelSyncEntity();
  sub_1E4650534(qword_1ECF75960, &qword_1E4720100);
  return sub_1E470AF6C();
}

uint64_t sub_1E46E9314()
{
  v4 = sub_1E470B5DC();
  MEMORY[0x1E6915D10](45, 0xE100000000000000);
  v3 = *(v0 + 80);
  swift_getMetatypeMetadata();
  v1 = sub_1E470AF6C();
  MEMORY[0x1E6915D10](v1);

  return v4;
}

uint64_t sub_1E46E9394()
{
  v3 = *(v0 + 80);
  swift_getMetatypeMetadata();
  sub_1E470AF6C();
  v1 = sub_1E470AF0C();

  return v1;
}

void sub_1E46E93E8()
{
  v0 = sub_1E4709B9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_1E470B40C();

  sub_1E4709B2C();
  v8 = objc_allocWithZone(MEMORY[0x1E695D638]);
  v9 = sub_1E4709B4C();
  v10 = [v8 initWithContentsOfURL_];

  if (v10)
  {
    (*(v1 + 8))(v5, v0);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1E46E9574()
{
  v1 = qword_1ECF758A8;
  if (*(v0 + qword_1ECF758A8))
  {
    v2 = *(v0 + qword_1ECF758A8);
  }

  else
  {
    v2 = sub_1E46E95DC(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_1E46E95DC(uint64_t *a1)
{
  swift_getObjectType();
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *a1;
  v5 = sub_1E4658E2C();
  v7 = v6;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v4 + 80);
  *(v9 + 32) = *((v3 & v2) + 0x60);
  *(v9 + 40) = v8;
  *(v9 + 48) = v5;
  *(v9 + 56) = v7;
  v18 = sub_1E46EEE70;
  v19 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1E46EB778;
  v17 = &unk_1F5E66558;
  v10 = _Block_copy(&aBlock);

  sub_1E4650534(&qword_1ECF75940, &qword_1E47200F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E471BA00;
  aBlock = v5;
  v15 = v7;
  sub_1E470B56C();
  *(inited + 72) = v10;
  v12 = sub_1E46E5AA0(inited);
  swift_setDeallocating();
  sub_1E465E050(inited + 32, &qword_1ECF75808, &qword_1E471FCD8);
  return v12;
}

void sub_1E46E97BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v300 = a7;
  v301 = a4;
  v298 = a3;
  v297 = a2;
  v299 = a9;
  v13 = sub_1E470A0DC();
  v302 = *(v13 - 8);
  v14 = v302[8];
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v270 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = sub_1E470AB3C();
  v283 = *(v288 - 8);
  v18 = *(v283 + 64);
  v20 = MEMORY[0x1EEE9AC00](v288, v19);
  v287 = &v270 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = *(a6 - 8);
  v22 = *(v294 + 64);
  v24 = MEMORY[0x1EEE9AC00](v20, v23);
  v286 = (&v270 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v285 = (&v270 - v28);
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v284 = &v270 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v280 = &v270 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v282 = &v270 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v289 = &v270 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v281 = &v270 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v279 = &v270 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v278 = &v270 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  v291 = &v270 - v52;
  MEMORY[0x1EEE9AC00](v51, v53);
  v292 = &v270 - v54;
  v55 = sub_1E470B47C();
  v293 = *(v55 - 8);
  v56 = *(v293 + 64);
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v290 = &v270 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v58, v60);
  v63 = &v270 - v62;
  v65 = MEMORY[0x1EEE9AC00](v61, v64);
  v295 = &v270 - v66;
  MEMORY[0x1EEE9AC00](v65, v67);
  v296 = &v270 - v68;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_7:
    swift_beginAccess();
    v71 = swift_unknownObjectWeakLoadStrong();
    if (v71)
    {
      v72 = v302;
      v73 = v71;
      (v302[2])(v17, v71 + qword_1ECF7B628, v13);

      sub_1E4658ABC(a1, v307);

      v74 = v13;
      v75 = a5;

      v76 = sub_1E470A0BC();
      v77 = sub_1E470B2CC();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v304 = v79;
        *v78 = 136315650;
        swift_beginAccess();
        v310[0] = swift_unknownObjectWeakLoadStrong();
        type metadata accessor for CRDTModelCloudDataManager();
        sub_1E470B47C();
        v80 = sub_1E470AF6C();
        v82 = sub_1E4654D04(v80, v81, &v304);

        *(v78 + 4) = v82;
        v300 = v74;
        *(v78 + 12) = 2080;
        sub_1E4658ABC(v307, v310);
        v83 = sub_1E470AF6C();
        v85 = v84;
        sub_1E4658A0C(v307);
        v86 = sub_1E4654D04(v83, v85, &v304);

        *(v78 + 14) = v86;
        *(v78 + 22) = 2080;
        *(v78 + 24) = sub_1E4654D04(v301, v75, &v304);
        _os_log_impl(&dword_1E45E0000, v76, v77, "CloudSyncConflictResolver: self=%s key=%s is not equal to recordType=%s", v78, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E6917530](v79, -1, -1);
        MEMORY[0x1E6917530](v78, -1, -1);

        (v302[1])(v17, v300);
      }

      else
      {

        sub_1E4658A0C(v307);
        (v72[1])(v17, v74);
      }
    }

    goto LABEL_33;
  }

  v70 = Strong;
  sub_1E4658ABC(a1, v307);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v276 = v55;
  v277 = a6;
  if (v310[0] == v301 && v310[1] == a5)
  {

    goto LABEL_12;
  }

  v87 = sub_1E470B84C();

  if ((v87 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

LABEL_12:
  v302 = v70;
  sub_1E46EEEA0(v297, v307);
  sub_1E46EEEA0(v298, v308);
  if (!v307[3])
  {
    if (v309)
    {
      v101 = a8;
      sub_1E46EEEA0(v308, v310);
      v102 = MEMORY[0x1E6969080];
      if (swift_dynamicCast())
      {
        v103 = v306[0];
        v104 = v306[1];
        v105 = sub_1E470A0BC();
        v106 = sub_1E470B2CC();
        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&dword_1E45E0000, v105, v106, "CloudSyncConflictResolver: no existing data", v107, 2u);
          MEMORY[0x1E6917530](v107, -1, -1);
        }

        sub_1E4658A0C(v310);
        sub_1E465E050(v308, &unk_1ECF74DD0, &qword_1E471D8C0);
        sub_1E465E050(v307, &unk_1ECF74DD0, &qword_1E471D8C0);
        v101[3] = v102;

        *v101 = v103;
        v101[1] = v104;
        return;
      }

      sub_1E4658A0C(v310);
      a8 = v101;
    }

    goto LABEL_32;
  }

  v301 = a8;
  sub_1E46EEEA0(v307, v310);
  v88 = MEMORY[0x1E6969080];
  if (!swift_dynamicCast())
  {
LABEL_31:
    sub_1E4658A0C(v310);
    a8 = v301;
LABEL_32:
    sub_1E465E050(v307, &unk_1ECF75948, &qword_1E47200F8);

LABEL_33:
    *a8 = 0u;
    *(a8 + 1) = 0u;
    return;
  }

  v89 = v310[4];
  v90 = v310[5];
  v91 = v277;
  if (!v309)
  {
    v108 = sub_1E470A0BC();
    v109 = sub_1E470B2CC();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = v89;
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_1E45E0000, v108, v109, "CloudSyncConflictResolver: no incoming data", v111, 2u);
      v112 = v111;
      v89 = v110;
      MEMORY[0x1E6917530](v112, -1, -1);
    }

    sub_1E4658A0C(v310);
    sub_1E465E050(v308, &unk_1ECF74DD0, &qword_1E471D8C0);
    sub_1E465E050(v307, &unk_1ECF74DD0, &qword_1E471D8C0);
    v113 = v301;
    v301[3] = v88;

    *v113 = v89;
    v113[1] = v90;
    return;
  }

  sub_1E46EEEA0(v308, v306);
  v92 = MEMORY[0x1E6969080];
  if (!swift_dynamicCast())
  {
    sub_1E465746C(v89, v90);
    sub_1E4658A0C(v306);
    goto LABEL_31;
  }

  v93 = v305;
  v298 = v304;
  if (sub_1E4663C7C(v89, v90, v304, v305))
  {
    v94 = v93;
    v95 = sub_1E470A0BC();
    v96 = sub_1E470B2CC();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = v92;
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_1E45E0000, v95, v96, "CloudSyncConflictResolver: incoming data and existing data are identical", v98, 2u);
      v99 = v98;
      v92 = v97;
      MEMORY[0x1E6917530](v99, -1, -1);
    }

    v100 = v301;
    v301[3] = v92;
    sub_1E465746C(v298, v94);

    *v100 = v89;
    v100[1] = v90;
LABEL_38:
    sub_1E4658A0C(v306);
    sub_1E4658A0C(v310);
LABEL_39:
    sub_1E465E050(v308, &unk_1ECF74DD0, &qword_1E471D8C0);
    sub_1E465E050(v307, &unk_1ECF74DD0, &qword_1E471D8C0);
    return;
  }

  v275 = qword_1ECF758A0;
  v114 = *(v302 + qword_1ECF758A0);
  sub_1E46552AC(v89, v90);
  v297 = *(v300 + 8);
  sub_1E470ABEC();
  v300 = v90;
  v274 = v89;
  v115 = v276;
  v116 = *(v294 + 56);
  v116(v296, 0, 1, v91);
  v117 = *(v302 + v275);
  sub_1E46552AC(v298, v93);
  sub_1E470ABEC();
  v273 = v93;
  v272 = 0;
  v118 = v293;
  v116(v295, 0, 1, v91);
  v119 = *(v118 + 16);
  v119(v63, v296, v115);
  v120 = v294;
  v121 = *(v294 + 48);
  if (v121(v63, 1, v91) == 1)
  {
    v122 = *(v118 + 8);
    v122(v63, v115);
    v123 = v274;
    v124 = v300;
    sub_1E46552AC(v274, v300);
    v125 = sub_1E470A0BC();
    v126 = sub_1E470B2CC();
    sub_1E465746C(v123, v124);
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v303 = v128;
      *v127 = 136315138;
      sub_1E46552AC(v123, v124);
      v129 = sub_1E4709BBC();
      v131 = v130;
      sub_1E465746C(v123, v300);
      v132 = sub_1E4654D04(v129, v131, &v303);
      v124 = v300;

      *(v127 + 4) = v132;
      _os_log_impl(&dword_1E45E0000, v125, v126, "CloudSyncConflictResolver: failed to deserialize either existingModel from %s", v127, 0xCu);
      sub_1E4658A0C(v128);
      MEMORY[0x1E6917530](v128, -1, -1);
      MEMORY[0x1E6917530](v127, -1, -1);
    }

    v133 = v295;
    v134 = v301;
    v301[3] = MEMORY[0x1E6969080];

    sub_1E465746C(v298, v273);
    *v134 = v123;
    v134[1] = v124;
    v135 = v133;
    v136 = v276;
    v122(v135, v276);
    v122(v296, v136);
    goto LABEL_38;
  }

  v137 = *(v120 + 32);
  v138 = v292;
  v271 = v137;
  (v137)(v292, v63, v91);
  v139 = v290;
  v140 = v295;
  v119(v290, v295, v115);
  v141 = v139;
  v142 = v121(v139, 1, v91);
  v143 = v140;
  if (v142 == 1)
  {
    v144 = *(v293 + 8);
    v144(v141, v115);
    v145 = v298;
    v146 = v273;
    sub_1E46552AC(v298, v273);
    v147 = v302;
    v148 = sub_1E470A0BC();
    v149 = sub_1E470B2CC();
    sub_1E465746C(v145, v146);
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v303 = v151;
      *v150 = 136315138;
      sub_1E46552AC(v145, v146);
      v152 = sub_1E4709BBC();
      v154 = v153;
      sub_1E465746C(v298, v146);
      v155 = sub_1E4654D04(v152, v154, &v303);
      v145 = v298;

      *(v150 + 4) = v155;
      v143 = v295;
      _os_log_impl(&dword_1E45E0000, v148, v149, "CloudSyncConflictResolver: failed to deserialize either incomingModel from %s", v150, 0xCu);
      sub_1E4658A0C(v151);
      MEMORY[0x1E6917530](v151, -1, -1);
      MEMORY[0x1E6917530](v150, -1, -1);
    }

    v156 = v300;
    v157 = v274;
    v158 = v146;
    v159 = v301;
    v301[3] = MEMORY[0x1E6969080];

    sub_1E465746C(v145, v158);
    *v159 = v157;
    v159[1] = v156;
    (*(v294 + 8))(v292, v277);
    v160 = v276;
    v144(v143, v276);
    v144(v296, v160);
    sub_1E4658A0C(v306);
    sub_1E4658A0C(v310);
    goto LABEL_39;
  }

  v161 = v291;
  (v271)(v291, v141, v91);
  v162 = v297;
  v163 = v138;
  if ((sub_1E470AB9C() & 1) == 0)
  {
    v188 = v294;
    v189 = *(v294 + 16);
    v190 = v285;
    v189(v285, v161, v91);
    v191 = v286;
    v189(v286, v163, v91);
    v192 = sub_1E470A0BC();
    v193 = sub_1E470B2CC();
    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      v297 = swift_slowAlloc();
      v303 = v297;
      *v194 = 136315394;
      LODWORD(v290) = v193;
      v195 = sub_1E470B81C();
      v196 = v191;
      v198 = v197;
      v199 = *(v188 + 8);
      v199(v190, v91);
      v200 = sub_1E4654D04(v195, v198, &v303);

      *(v194 + 4) = v200;
      *(v194 + 12) = 2080;
      v201 = sub_1E470B81C();
      v203 = v202;
      v199(v196, v91);
      v204 = sub_1E4654D04(v201, v203, &v303);

      *(v194 + 14) = v204;
      _os_log_impl(&dword_1E45E0000, v192, v290, "CloudSyncConflictResolver: no delta on incoming=%s from existing=%s", v194, 0x16u);
      v205 = v297;
      swift_arrayDestroy();
      v143 = v295;
      MEMORY[0x1E6917530](v205, -1, -1);
      MEMORY[0x1E6917530](v194, -1, -1);
    }

    else
    {

      v199 = *(v188 + 8);
      v199(v191, v91);
      v199(v190, v91);
    }

    v223 = v293;
    v224 = v300;
    v225 = v298;
    v226 = v301;
    v301[3] = MEMORY[0x1E6969080];

    sub_1E465746C(v225, v273);
    *v226 = v274;
    v226[1] = v224;
    v199(v291, v91);
    v199(v292, v91);
    v227 = *(v223 + 8);
    v228 = v276;
    v227(v143, v276);
    v227(v296, v228);
    sub_1E4658A0C(v306);
    sub_1E4658A0C(v310);
    goto LABEL_39;
  }

  v164 = sub_1E470AB9C();
  v165 = qword_1ECF7B628;
  v166 = v294;
  v167 = *(v294 + 16);
  if ((v164 & 1) == 0)
  {
    v206 = v280;
    v167(v280, v163, v91);
    v207 = v284;
    v167(v284, v161, v91);
    v208 = sub_1E470A0BC();
    v209 = sub_1E470B2CC();
    if (os_log_type_enabled(v208, v209))
    {
      v210 = v166;
      v211 = swift_slowAlloc();
      v297 = swift_slowAlloc();
      v303 = v297;
      *v211 = 136315394;
      LODWORD(v290) = v209;
      v212 = sub_1E470B81C();
      v214 = v213;
      v215 = *(v210 + 8);
      v215(v206, v91);
      v216 = sub_1E4654D04(v212, v214, &v303);

      *(v211 + 4) = v216;
      *(v211 + 12) = 2080;
      v217 = v284;
      v218 = sub_1E470B81C();
      v220 = v219;
      v215(v217, v91);
      v221 = sub_1E4654D04(v218, v220, &v303);

      *(v211 + 14) = v221;
      _os_log_impl(&dword_1E45E0000, v208, v290, "CloudSyncConflictResolver: no delta on existing=%s from incoming=%s", v211, 0x16u);
      v222 = v297;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v222, -1, -1);
      MEMORY[0x1E6917530](v211, -1, -1);
    }

    else
    {

      v215 = *(v166 + 8);
      v215(v207, v91);
      v215(v206, v91);
    }

    v244 = v293;
    v245 = v295;
    v246 = v300;
    v247 = v298;
    v248 = v301;
    v301[3] = MEMORY[0x1E6969080];

    sub_1E465746C(v274, v246);
    v249 = v273;
    *v248 = v247;
    v248[1] = v249;
    v215(v291, v91);
    v215(v292, v91);
    v250 = *(v244 + 8);
    v251 = v245;
    v252 = v276;
    v250(v251, v276);
    v250(v296, v252);
    sub_1E4658A0C(v306);
    sub_1E4658A0C(v310);
    goto LABEL_39;
  }

  v168 = v278;
  v167(v278, v163, v91);
  v169 = v279;
  v167(v279, v161, v91);
  v286 = v165;
  v170 = sub_1E470A0BC();
  LODWORD(v284) = sub_1E470B2CC();
  v285 = v170;
  if (os_log_type_enabled(v170, v284))
  {
    v171 = swift_slowAlloc();
    v280 = v171;
    v271 = swift_slowAlloc();
    v303 = v271;
    *v171 = 136315394;
    v172 = v281;
    v167(v281, v168, v91);
    v173 = *(v166 + 8);
    v173(v168, v91);
    v174 = v169;
    v175 = sub_1E470B81C();
    v177 = v176;
    v173(v172, v277);
    v178 = sub_1E4654D04(v175, v177, &v303);

    v179 = v280;
    *(v280 + 4) = v178;
    *(v179 + 6) = 2080;
    v167(v172, v174, v277);
    v180 = v174;
    v162 = v297;
    v173(v180, v277);
    v181 = sub_1E470B81C();
    v183 = v182;
    v290 = v173;
    v173(v172, v277);
    v184 = sub_1E4654D04(v181, v183, &v303);
    v91 = v277;

    v185 = v280;
    *(v280 + 14) = v184;
    v186 = v285;
    _os_log_impl(&dword_1E45E0000, v285, v284, "CloudSyncConflictResolver: merging existing=%s with incoming=%s", v185, 0x16u);
    v187 = v271;
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v187, -1, -1);
    MEMORY[0x1E6917530](v185, -1, -1);
  }

  else
  {
    v284 = v167;
    v229 = *(v166 + 8);
    v229(v169, v91);
    v290 = v229;
    v229(v168, v91);
    v167 = v284;
  }

  v230 = v289;
  sub_1E470ABDC();
  v231 = v282;
  v167(v282, v230, v91);
  v232 = sub_1E470A0BC();
  v233 = sub_1E470B2CC();
  if (os_log_type_enabled(v232, v233))
  {
    v234 = swift_slowAlloc();
    v286 = swift_slowAlloc();
    v303 = v286;
    *v234 = 136315138;
    v235 = v281;
    v167(v281, v231, v91);
    v236 = v231;
    v237 = v290;
    (v290)(v236, v91);
    v238 = sub_1E470B81C();
    v240 = v239;
    v237(v235, v277);
    v241 = sub_1E4654D04(v238, v240, &v303);
    v91 = v277;

    *(v234 + 4) = v241;
    _os_log_impl(&dword_1E45E0000, v232, v233, "CloudSyncConflictResolver: merged=%s", v234, 0xCu);
    v242 = v286;
    sub_1E4658A0C(v286);
    MEMORY[0x1E6917530](v242, -1, -1);
    v243 = v234;
    v162 = v297;
    MEMORY[0x1E6917530](v243, -1, -1);
  }

  else
  {
    (v290)(v231, v91);
  }

  v253 = v295;
  v254 = v300;
  v255 = v298;
  v256 = *(v302 + v275);
  v257 = v283;
  (*(v283 + 104))(v287, *MEMORY[0x1E6995278], v288);
  v258 = *(v162 + 8);
  v259 = v272;
  v260 = sub_1E470A9FC();
  if (v259)
  {

    v262 = 0;
    v263 = 0xF000000000000000;
  }

  else
  {
    v262 = v260;
    v263 = v261;
  }

  sub_1E465746C(v255, v273);
  sub_1E465746C(v274, v254);
  (*(v257 + 8))(v287, v288);
  v264 = v290;
  (v290)(v289, v91);
  v264(v291, v91);
  v264(v163, v91);
  v265 = *(v293 + 8);
  v266 = v253;
  v267 = v276;
  v265(v266, v276);
  v265(v296, v267);
  sub_1E4658A0C(v306);
  sub_1E4658A0C(v310);
  sub_1E465E050(v308, &unk_1ECF74DD0, &qword_1E471D8C0);
  sub_1E465E050(v307, &unk_1ECF74DD0, &qword_1E471D8C0);
  if (v263 >> 60 == 15)
  {

    v268 = v301;
    *v301 = 0u;
    *(v268 + 16) = 0u;
  }

  else
  {
    v269 = v301;
    v301[3] = MEMORY[0x1E6969080];

    *v269 = v262;
    v269[1] = v263;
  }
}

id sub_1E46EB778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v22[3] = swift_getObjectType();
  v22[0] = a2;
  if (a3)
  {
    *(&v20 + 1) = swift_getObjectType();
    *&v19 = a3;
    sub_1E46BAC64(&v19, v21);
    if (a4)
    {
LABEL_3:
      ObjectType = swift_getObjectType();
      v17[0] = a4;
      sub_1E46BAC64(v17, &v19);
      goto LABEL_6;
    }
  }

  else
  {
    memset(v21, 0, sizeof(v21));
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v19 = 0u;
  v20 = 0u;
LABEL_6:

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8(v17, v22, v21, &v19);

  sub_1E465E050(&v19, &unk_1ECF74DD0, &qword_1E471D8C0);
  sub_1E465E050(v21, &unk_1ECF74DD0, &qword_1E471D8C0);
  v9 = ObjectType;
  if (ObjectType)
  {
    v10 = sub_1E465057C(v17, ObjectType);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64);
    MEMORY[0x1EEE9AC00](v10, v10);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14);
    v15 = sub_1E470B83C();
    (*(v11 + 8))(v14, v9);
    sub_1E4658A0C(v17);
  }

  else
  {
    v15 = 0;
  }

  sub_1E4658A0C(v22);

  return v15;
}

void sub_1E46EB990(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  [*(v1 + qword_1ECF75888) setEnableCloudSync_];
  v5 = *(v1 + qword_1ECF75890);
  v19 = [v5 privateCloudDatabaseController];
  v6 = sub_1E470A0BC();
  v7 = sub_1E470B2CC();
  v8 = os_log_type_enabled(v6, v7);
  if (a1)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1E45E0000, v6, v7, "CRDTModelCloudDataManager updateWithSyncEnabled: enabled sync to CK", v9, 2u);
      MEMORY[0x1E6917530](v9, -1, -1);
    }

    v10 = *(v2 + qword_1ECF75878);
    sub_1E4658E2C();
    v11 = sub_1E470AF0C();

    [v19 addObserver:v10 recordType:v11];

    v12 = [v5 transactionManager];
    v13 = v4[10];
    v14 = v4[11];
    v15 = v4[12];
    type metadata accessor for CRDTModelCloudDataManager();
    sub_1E4658E2C();
    v16 = sub_1E470AF0C();

    [v12 signalSyncToCKTransactionForEntityName:v16 syncManager:v10];
  }

  else
  {
    if (v8)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1E45E0000, v6, v7, "CRDTModelCloudDataManager updateWithSyncEnabled: disabled sync to CK", v17, 2u);
      MEMORY[0x1E6917530](v17, -1, -1);
    }

    v18 = *(v2 + qword_1ECF75878);
    sub_1E4658E2C();
    v16 = sub_1E470AF0C();

    [v19 removeObserver:v18 recordType:v16];
  }
}

char *sub_1E46EBC2C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  sub_1E470B5CC();

  strcpy(v40, "CRDTModelSync.");
  v40[15] = -18;
  v10 = sub_1E4658E2C();
  MEMORY[0x1E6915D10](v10);

  sub_1E470A0CC();
  *&v4[qword_1ECF75898] = 0;
  *&v4[qword_1ECF758A8] = 0;
  *&v4[qword_1ECF7B630 + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[qword_1ECF7B638] = 0;
  *&v4[qword_1ECF758A0] = a2;
  *&v4[qword_1ECF758B0] = a4;
  v37 = a2;
  swift_unknownObjectRetain();
  v11 = [a3 managedObjectContext];
  *&v4[qword_1ECF75870] = a3;
  *&v4[qword_1ECF75890] = a1;
  type metadata accessor for CRDTModelSyncMapper();
  swift_allocObject();
  v12 = a3;
  v13 = a1;
  v35 = CRDTModelSyncMapper.init()();
  v14 = [objc_allocWithZone(BCCloudDataSyncManager) initWithCloudKitController:v13 dataMapper:v35];
  *&v4[qword_1ECF75878] = v14;
  v15 = v14;
  v36 = v11;
  v16 = sub_1E46E9394();
  v17 = [objc_allocWithZone(BCCloudChangeTokenController) initWithMOC:v36 zoneName:v16 cloudKitController:v13];

  *&v4[qword_1ECF75888] = v17;
  v18 = v12;
  sub_1E46E92CC();
  type metadata accessor for CRDTModelSyncEntity();
  type metadata accessor for CRDTModelSync();
  v19 = objc_allocWithZone(BCCloudDataManager);
  v20 = v13;
  v21 = v15;

  v22 = sub_1E470AF0C();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [v19 initWithCloudDataSource:v18 entityName:v22 notificationName:0 immutableClass:ObjCClassFromMetadata mutableClass:swift_getObjCClassFromMetadata() syncManager:v21 cloudKitController:v20 dataMapper:v35];

  *&v5[qword_1ECF75880] = v24;
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v39, sel_init);
  sub_1E45E2DE8(0, &qword_1ECF75958, off_1E8758D38);
  v26 = *&v25[qword_1ECF75888];
  v27 = *&v25[qword_1ECF75890];
  v28 = v25;
  v29 = v26;
  v30 = [v27 privateCloudDatabaseController];
  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithZoneDataManager:v28 tokenController:v29 databaseController:v30];

  v32 = *&v28[qword_1ECF75898];
  *&v28[qword_1ECF75898] = v31;

  v33 = *&v28[qword_1ECF75878];
  [v33 setDelegate_];

  swift_unknownObjectRelease();

  return v28;
}

id sub_1E46EC078()
{
  ObjectType = swift_getObjectType();
  v2 = [*&v0[qword_1ECF75890] privateCloudDatabaseController];
  v3 = qword_1ECF75878;
  [v2 removeObserver_];

  [*&v0[v3] setDelegate_];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1E46EC140(uint64_t a1)
{
  v2 = qword_1ECF7B628;
  v3 = sub_1E470A0DC();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_1ECF758A8);

  sub_1E466A310(a1 + qword_1ECF7B630);
  v5 = *(a1 + qword_1ECF758B0);

  return swift_unknownObjectRelease();
}

void sub_1E46EC24C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a4();
    return;
  }

  v8 = Strong;
  if (a2)
  {
    v9 = a2;
    v10 = sub_1E470A0BC();
    v11 = sub_1E470B2AC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = sub_1E470B89C();
      v16 = sub_1E4654D04(v14, v15, &v23);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1E45E0000, v10, v11, "CRDTModelCloudDataManager cloudData: couldn't load existing data: %s", v12, 0xCu);
      sub_1E4658A0C(v13);
      MEMORY[0x1E6917530](v13, -1, -1);
      MEMORY[0x1E6917530](v12, -1, -1);
    }

    goto LABEL_16;
  }

  if (a1)
  {
    type metadata accessor for CRDTModelSync();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;
      swift_unknownObjectRetain();
      (a4)(v18);

      swift_unknownObjectRelease();
      return;
    }

    v19 = sub_1E470A0BC();
    LOBYTE(v20) = sub_1E470B2AC();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_15;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "CRDTModelCloudDataManager cloudData: loaded existing data with the wrong type";
    goto LABEL_14;
  }

  v19 = sub_1E470A0BC();
  v20 = sub_1E470B2CC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "CRDTModelCloudDataManager cloudData: no existing data";
LABEL_14:
    _os_log_impl(&dword_1E45E0000, v19, v20, v22, v21, 2u);
    MEMORY[0x1E6917530](v21, -1, -1);
  }

LABEL_15:

LABEL_16:
  (a4)(0);
}

uint64_t sub_1E46EC4FC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_1E46EC57C(char a1, char a2, id a3, uint64_t a4, void (*a5)(void), uint64_t a6, void *a7)
{
  v12 = a3;
  v13 = sub_1E470A0BC();
  v14 = sub_1E470B2CC();

  if (os_log_type_enabled(v13, v14))
  {
    v21 = a7;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 134218498;
    *(v15 + 4) = a1 & 1;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a2 & 1;
    *(v15 + 22) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      sub_1E470B89C();
    }

    sub_1E4650534(&qword_1ECF75938, &qword_1E47200E0);
    v17 = sub_1E470AF6C();
    v19 = sub_1E4654D04(v17, v18, &v22);

    *(v15 + 24) = v19;
    _os_log_impl(&dword_1E45E0000, v13, v14, "CRDTModelCloudDataManager q_sync: BCCloudDataManager is done: success=%ld hasChanges=%ld error=%s", v15, 0x20u);
    sub_1E4658A0C(v16);
    MEMORY[0x1E6917530](v16, -1, -1);
    MEMORY[0x1E6917530](v15, -1, -1);

    a7 = v21;
  }

  else
  {
  }

  a5(a1 & 1);
  return [a7 endTransaction];
}

void sub_1E46EC754(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, a4);
}

void sub_1E46EC7DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_1ECF75880);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_1E46EF030;
  v8[5] = v6;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E46EC8C8;
  v8[3] = &unk_1F5E66760;
  v7 = _Block_copy(v8);

  [v5 hasSaltChangedWithCompletion_];
  _Block_release(v7);
}

void sub_1E46EC8C8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, v7);
}

uint64_t sub_1E46EC940(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  sub_1E46EC7DC(sub_1E46EF034, v5);
}

void sub_1E46EC9CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_1E470A0BC();
  v7 = sub_1E470B2CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315138;
    v10 = sub_1E4658E2C();
    v12 = sub_1E4654D04(v10, v11, v17);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1E45E0000, v6, v7, "CRDTModelCloudDataManager dissociateCloudDataFromSyncWithCompletion for: %s", v8, 0xCu);
    sub_1E4658A0C(v9);
    MEMORY[0x1E6917530](v9, -1, -1);
    MEMORY[0x1E6917530](v8, -1, -1);
  }

  v13 = *&v2[qword_1ECF75880];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v17[4] = sub_1E46EEF40;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1E46BA7E4;
  v17[3] = &unk_1F5E66698;
  v15 = _Block_copy(v17);
  v16 = v3;
  sub_1E45EA6A0(a1);

  [v13 dissociateCloudDataFromSyncWithCompletion_];
  _Block_release(v15);
}

void sub_1E46ECBBC(char a1, id a2, void *a3, void (*a4)(void, id), uint64_t a5)
{
  if (a1)
  {
    v8 = *(a3 + qword_1ECF75888);
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a5;
    v27[4] = sub_1E46EEF94;
    v27[5] = v9;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 1107296256;
    v27[2] = sub_1E46BA7E4;
    v27[3] = &unk_1F5E666E8;
    v10 = _Block_copy(v27);
    v11 = a3;
    sub_1E45EA6A0(a4);

    [v8 dissociateCloudDataFromSyncWithCompletion_];
    _Block_release(v10);
  }

  else
  {
    v13 = (*MEMORY[0x1E69E7D40] & *a3);
    v14 = a2;
    v15 = sub_1E470A0BC();
    v16 = sub_1E470B2AC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27[0] = v19;
      *v17 = 136315394;
      v20 = v13[10];
      v21 = v13[11];
      v22 = v13[12];
      type metadata accessor for CRDTModelCloudDataManager();
      v23 = sub_1E4658E2C();
      v25 = sub_1E4654D04(v23, v24, v27);

      *(v17 + 4) = v25;
      *(v17 + 12) = 2112;
      if (a2)
      {
        v26 = sub_1E4709AFC();
      }

      else
      {
        sub_1E45E2DE8(0, &qword_1ECF742B0, 0x1E696AEC0);
        v26 = sub_1E470B44C();
      }

      *(v17 + 14) = v26;
      *v18 = v26;
      _os_log_impl(&dword_1E45E0000, v15, v16, "CRDTModelCloudDataManager failed to dissociate data for: %s %@", v17, 0x16u);
      sub_1E465E050(v18, &qword_1ECF75100, qword_1E471E820);
      MEMORY[0x1E6917530](v18, -1, -1);
      sub_1E4658A0C(v19);
      MEMORY[0x1E6917530](v19, -1, -1);
      MEMORY[0x1E6917530](v17, -1, -1);
    }

    if (a4)
    {
      a4(0, a2);
    }
  }
}

void sub_1E46ECEA4(char a1, id a2, void *a3, void (*a4)(void, id))
{
  v7 = (*MEMORY[0x1E69E7D40] & *a3);
  v8 = a2;
  v9 = sub_1E470A0BC();
  v10 = sub_1E470B2CC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315650;
    v14 = v7[10];
    v15 = v7[11];
    v16 = v7[12];
    type metadata accessor for CRDTModelCloudDataManager();
    v17 = sub_1E4658E2C();
    v19 = sub_1E4654D04(v17, v18, &v21);

    *(v11 + 4) = v19;
    *(v11 + 12) = 1024;
    *(v11 + 14) = a1 & 1;
    *(v11 + 18) = 2112;
    if (a2)
    {
      v20 = sub_1E4709AFC();
    }

    else
    {
      sub_1E45E2DE8(0, &qword_1ECF742B0, 0x1E696AEC0);
      v20 = sub_1E470B44C();
    }

    *(v11 + 20) = v20;
    *v12 = v20;
    _os_log_impl(&dword_1E45E0000, v9, v10, "CRDTModelCloudDataManager dissociateCloudDataFromSyncWithCompletion for: %s finish with success:%{BOOL}d error: %@", v11, 0x1Cu);
    sub_1E465E050(v12, &qword_1ECF75100, qword_1E471E820);
    MEMORY[0x1E6917530](v12, -1, -1);
    sub_1E4658A0C(v13);
    MEMORY[0x1E6917530](v13, -1, -1);
    MEMORY[0x1E6917530](v11, -1, -1);

    if (a4)
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (a4)
    {
LABEL_8:
      a4(a1 & 1, a2);
    }
  }
}

void sub_1E46ED0E8(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1E46EF034;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = a1;
  sub_1E46EC9CC(v7, v6);
  sub_1E45EB5D8(v7);
}

void sub_1E46ED1A0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  if (*(v3 + qword_1ECF7B638) == 1)
  {
    v6 = v3;
    v8 = sub_1E470A0BC();
    v9 = sub_1E470B2CC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1E45E0000, v8, v9, "CRDTModelCloudDataManager startSyncToCKWithCompletion: starting syncing to CK", v10, 2u);
      MEMORY[0x1E6917530](v10, -1, -1);
    }

    v11 = *(v6 + qword_1ECF75880);
    v13[4] = a2;
    v13[5] = a3;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1E46C4624;
    v13[3] = &unk_1F5E66620;
    v12 = _Block_copy(v13);

    [v11 startSyncToCKWithSyncManager:a1 completion:v12];
    _Block_release(v12);
  }

  else
  {
    a2();
  }
}

uint64_t sub_1E46ED31C(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = a1;
  sub_1E46ED1A0(v8, sub_1E46EEF38, v7);
}

void sub_1E46ED3BC(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = [*(v1 + qword_1ECF75890) transactionManager];
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  v8 = *((v4 & v3) + 0x60);
  type metadata accessor for CRDTModelCloudDataManager();
  sub_1E4658E2C();
  v9 = sub_1E470AF0C();

  [v5 signalSyncToCKTransactionForEntityName:v9 syncManager:a1];
}

void sub_1E46ED4B8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1E46ED3BC(v4);
}

uint64_t sub_1E46ED520(void *a1, int a2, void *a3, int a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
  v8 = sub_1E470B0BC();
  v9 = a3;
  v10 = a1;
  sub_1E46EDE50(v8);
  _Block_release(v7);
}

uint64_t sub_1E46ED5C8(void *a1, int a2, void *a3, int a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_1E4650534(&qword_1ECF75D40, &qword_1E47200E8);
  v8 = sub_1E470B0BC();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = a1;
  sub_1E46EDF90(v8, sub_1E46EF034, v9);
}

uint64_t sub_1E46ED6A0(char a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a4(a1 & 1, a3);
  }

  v9 = Strong;
  if (a2 >> 62)
  {
    result = sub_1E470B50C();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1E6916300](0, a2);
    goto LABEL_7;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(a2 + 32);
    swift_unknownObjectRetain();
LABEL_7:
    v12 = [objc_allocWithZone(type metadata accessor for CRDTModelSync()) initWithCloudData_];
    if (v12)
    {
      v13 = v12;
      v14 = &v9[qword_1ECF7B630];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 1);
        ObjectType = swift_getObjectType();
        (*(v15 + 8))(v13, ObjectType, v15);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = sub_1E470A0BC();
        v21 = sub_1E470B2AC();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_1E45E0000, v20, v21, "CRDTModelCloudDataManager resolveConflictsFor: delegate is nil", v22, 2u);
          MEMORY[0x1E6917530](v22, -1, -1);
        }

        swift_unknownObjectRelease();
      }

      return a4(a1 & 1, a3);
    }

    swift_unknownObjectRelease();
LABEL_11:
    v17 = sub_1E470A0BC();
    v18 = sub_1E470B2AC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1E45E0000, v17, v18, "CRDTModelCloudDataManager resolveConflictsFor: couldn't obtain cloudData", v19, 2u);
      MEMORY[0x1E6917530](v19, -1, -1);
    }

    return a4(a1 & 1, a3);
  }

  __break(1u);
  return result;
}

void sub_1E46ED92C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  sub_1E4650534(&qword_1ECF75D40, &qword_1E47200E8);
  v8 = sub_1E470B0BC();

  v9 = a4;
  v7(a2, v8, a4);
}

uint64_t sub_1E46ED9E0(void *a1, int a2, void *a3, int a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
  v8 = sub_1E470B0BC();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = a1;
  sub_1E46EE464(v8, sub_1E46EF034, v9);
}

uint64_t sub_1E46EDABC(void *a1, int a2, void *a3, int a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
  v8 = sub_1E470B0BC();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a3;
  v11 = a1;
  sub_1E46EEBC0(v8, sub_1E46BAC5C, v9);
}

id sub_1E46EDB98(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  sub_1E46EDC9C();
  v4 = sub_1E470AF0C();

  return v4;
}

void sub_1E46EDC30(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  sub_1E46EEDF8();
}

uint64_t sub_1E46EDCD4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v11 = sub_1E46553DC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1E4656840(v16, a4 & 1);
      v20 = *a5;
      v11 = sub_1E46553DC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1E470B86C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1E465827C();
      v11 = v19;
    }
  }

  v22 = *a5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void sub_1E46EDE50(uint64_t a1)
{

  oslog = sub_1E470A0BC();
  v2 = sub_1E470B2AC();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    v5 = sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
    v6 = MEMORY[0x1E6915DE0](a1, v5);
    v8 = sub_1E4654D04(v6, v7, &v10);

    *(v3 + 4) = v8;
    _os_log_impl(&dword_1E45E0000, oslog, v2, "CRDTModelCloudDataManager removeCloudDataFor: asked to remove cloud data: %s", v3, 0xCu);
    sub_1E4658A0C(v4);
    MEMORY[0x1E6917530](v4, -1, -1);
    MEMORY[0x1E6917530](v3, -1, -1);
  }
}

void sub_1E46EDF90(unint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = a2;
  if (*(v3 + qword_1ECF7B638) == 1)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_33:
      v41 = a3;
      v42 = sub_1E470B50C();
      a3 = v41;
      v7 = v42;
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = a3;
    v45 = v3;
    v43 = v4;
    if (v7)
    {
      v4 = 0;
      v8 = MEMORY[0x1E69E7CC0];
      do
      {
        v9 = v4;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1E6916300](v9, a1);
            v4 = (v9 + 1);
            if (__OFADD__(v9, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v9 >= *(v6 + 16))
            {
              goto LABEL_32;
            }

            v10 = *(a1 + 8 * v9 + 32);
            swift_unknownObjectRetain();
            v4 = (v9 + 1);
            if (__OFADD__(v9, 1))
            {
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }
          }

          swift_getObjectType();
          v11 = swift_conformsToProtocol2();
          if (v11)
          {
            if (v10)
            {
              break;
            }
          }

          swift_unknownObjectRelease();
          ++v9;
          if (v4 == v7)
          {
            goto LABEL_25;
          }
        }

        v3 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_1E4693FF8(0, v8[2] + 1, 1, v8);
        }

        v14 = v8[2];
        v13 = v8[3];
        if (v14 >= v13 >> 1)
        {
          v8 = sub_1E4693FF8((v13 > 1), v14 + 1, 1, v8);
        }

        v8[2] = v14 + 1;
        v15 = &v8[2 * v14];
        v15[4] = v10;
        v15[5] = v3;
      }

      while (v4 != v7);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

LABEL_25:
    v16 = v8[2];
    if (v16)
    {
      v17 = v8 + 5;
      v18 = MEMORY[0x1E69E7CC8];
      do
      {
        v19 = *(v17 - 1);
        v20 = *v17;
        ObjectType = swift_getObjectType();
        v22 = *(v20 + 8);
        swift_unknownObjectRetain();
        v23 = v22(ObjectType, v20);
        v25 = v24;
        swift_unknownObjectRetain();
        v26 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v18;
        sub_1E46EDCD4(v19, v23, v25, v26, aBlock);
        swift_unknownObjectRelease();

        v18 = aBlock[0];
        v17 += 2;
        --v16;
      }

      while (v16);
    }

    v27 = v45;
    v28 = sub_1E470A0BC();
    v29 = sub_1E470B2CC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;

      sub_1E4650534(&qword_1ECF75D40, &qword_1E47200E8);
      v32 = sub_1E470AE4C();
      v34 = v33;

      v35 = sub_1E4654D04(v32, v34, aBlock);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1E45E0000, v28, v29, "CRDTModelCloudDataManager updateSyncGenerationFromCloudData: updating sync generation for %s", v30, 0xCu);
      sub_1E4658A0C(v31);
      MEMORY[0x1E6917530](v31, -1, -1);
      v27 = v45;
      MEMORY[0x1E6917530](v30, -1, -1);
    }

    v36 = *(v27 + qword_1ECF75880);

    sub_1E4650534(&qword_1ECF75D40, &qword_1E47200E8);
    v37 = sub_1E470AE2C();

    v38 = sub_1E470AF0C();
    v39 = swift_allocObject();
    *(v39 + 16) = v43;
    *(v39 + 24) = v44;
    aBlock[4] = sub_1E46EEF10;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E46EC8C8;
    aBlock[3] = &unk_1F5E665D0;
    v40 = _Block_copy(aBlock);

    [v36 updateSyncGenerationFromCloudData:v37 predicate:0 propertyIDKey:v38 completion:v40];
    _Block_release(v40);
  }

  else
  {
    a2(0, 0);
  }
}

void sub_1E46EE464(unint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v8 = *MEMORY[0x1E69E7D40] & *v3;
  v9 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v68 - v16;
  if (a1 >> 62)
  {
    if (sub_1E470B50C() < 2)
    {
      goto LABEL_6;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
    goto LABEL_6;
  }

  v18 = sub_1E470A0BC();
  v19 = sub_1E470B2AC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v74 = a2;
    v21 = v8;
    v22 = v20;
    *v20 = 0;
    _os_log_impl(&dword_1E45E0000, v18, v19, "CRDTModelCloudDataManager resolveConflictsFor: received changes for more than 1 record. This shouldn't be possible", v20, 2u);
    v23 = v22;
    v8 = v21;
    a2 = v74;
    MEMORY[0x1E6917530](v23, -1, -1);
  }

LABEL_6:
  if (*(v4 + qword_1ECF7B638) != 1)
  {
    a2(0, 0);
    return;
  }

  v73 = a3;
  v71 = v17;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x1E6916300](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v24 = *(a1 + 32);
  }

  v72 = v8;
  v74 = a2;
  v25 = v24;
  v26 = sub_1E470A0BC();
  v27 = sub_1E470B2CC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v75 = v70;
    *v28 = 138544387;
    *(v28 + 4) = v25;
    *v29 = v25;
    *(v28 + 12) = 2114;
    v30 = v25;
    v31 = [v30 recordID];
    *(v28 + 14) = v31;
    v68 = v29;
    v29[1] = v31;
    *(v28 + 22) = 2082;
    v32 = [v30 creationDate];
    v69 = v27;
    if (v32)
    {
      v33 = v32;
      v34 = v71;
      sub_1E4709C9C();

      v35 = sub_1E4709CCC();
      (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    }

    else
    {
      v36 = sub_1E4709CCC();
      (*(*(v36 - 8) + 56))(v71, 1, 1, v36);
    }

    v37 = sub_1E470AF6C();
    v39 = sub_1E4654D04(v37, v38, &v75);

    *(v28 + 24) = v39;
    *(v28 + 32) = 2082;
    v40 = [v30 modificationDate];
    if (v40)
    {
      v41 = v40;
      sub_1E4709C9C();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = sub_1E4709CCC();
    (*(*(v43 - 8) + 56))(v13, v42, 1, v43);
    v44 = sub_1E470AF6C();
    v46 = sub_1E4654D04(v44, v45, &v75);

    *(v28 + 34) = v46;
    *(v28 + 42) = 2081;
    v47 = [v30 modifiedByDevice];
    if (v47)
    {
      v48 = v47;
      v49 = sub_1E470AF1C();
      v51 = v50;
    }

    else
    {
      v49 = 0;
      v51 = 0;
    }

    aBlock = v49;
    v77 = v51;
    sub_1E4650534(&qword_1ECF75938, &qword_1E47200E0);
    v52 = sub_1E470AF6C();
    v54 = sub_1E4654D04(v52, v53, &v75);

    *(v28 + 44) = v54;
    _os_log_impl(&dword_1E45E0000, v26, v69, "CRDTModelCloudDataManager resolveConflictsFor: resolving conflicts for record: %{public}@ id: %{public}@ created: %{public}s modified: %{public}s modifiedByDevice:%{private}s", v28, 0x34u);
    sub_1E4650534(&qword_1ECF75100, qword_1E471E820);
    v55 = v68;
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v55, -1, -1);
    v56 = v70;
    swift_arrayDestroy();
    MEMORY[0x1E6917530](v56, -1, -1);
    MEMORY[0x1E6917530](v28, -1, -1);
  }

  v57 = *(v4 + qword_1ECF75880);
  sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
  v58 = sub_1E470B0AC();
  sub_1E46E9574();
  sub_1E4650534(&unk_1ECF747B0, &unk_1E471B820);
  v59 = sub_1E470AE2C();

  sub_1E46E9574();
  v60 = sub_1E470AE2C();

  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  v63 = v72;
  v64 = v73;
  *(v62 + 16) = *(v72 + 80);
  v65 = *(v63 + 96);
  v66 = v74;
  *(v62 + 32) = v65;
  *(v62 + 40) = v66;
  *(v62 + 48) = v64;
  *(v62 + 56) = v61;
  v80 = sub_1E46EEE40;
  v81 = v62;
  aBlock = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = sub_1E46ED92C;
  v79 = &unk_1F5E66508;
  v67 = _Block_copy(&aBlock);

  [v57 resolveConflictsForRecords:v58 withResolvers:v59 mergers:v60 completion:v67];
  _Block_release(v67);
}

void sub_1E46EEBC0(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  if (*(v3 + qword_1ECF7B638) == 1)
  {
    v6 = v3;

    v8 = sub_1E470A0BC();
    v9 = sub_1E470B2CC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v10 = 136315138;
      v12 = sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
      v13 = MEMORY[0x1E6915DE0](a1, v12);
      v15 = sub_1E4654D04(v13, v14, v19);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1E45E0000, v8, v9, "CRDTModelCloudDataManager failedRecordIDs: failed records %s", v10, 0xCu);
      sub_1E4658A0C(v11);
      MEMORY[0x1E6917530](v11, -1, -1);
      MEMORY[0x1E6917530](v10, -1, -1);
    }

    v16 = *(v6 + qword_1ECF75880);
    sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
    v17 = sub_1E470B0AC();
    v19[4] = a2;
    v19[5] = a3;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1E46BA7E4;
    v19[3] = &unk_1F5E66468;
    v18 = _Block_copy(v19);

    [v16 failedRecordIDs:v17 completion:v18];
    _Block_release(v18);
  }

  else
  {
    a2(0, 0);
  }
}

uint64_t sub_1E46EEE28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E46EEE40(char a1, unint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 48);
  v7 = *(v3 + 56);
  v9 = *(v3 + 32);
  return sub_1E46ED6A0(a1, a2, a3, *(v3 + 40));
}

uint64_t sub_1E46EEEA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&unk_1ECF74DD0, &qword_1E471D8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E46EEF10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E46EEF4C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E46EEFAC(void (*a1)(void))
{
  v3 = *(v1 + 40);

  a1(*(v1 + 56));

  return MEMORY[0x1EEE6BDD0](v1, 64, 7);
}

void sub_1E46EEFFC(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 56);
  sub_1E46EC24C(a1, a2, *(v2 + 40), *(v2 + 48));
}

uint64_t sub_1E46EF0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1E46984F4();
  result = sub_1E470B46C();
  *a4 = result;
  return result;
}

id sub_1E46EF164(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

id CRDTModelLocalFileManager.DefaultConfig.crdtContext.getter()
{
  v0 = sub_1E4670614();

  return v0;
}

uint64_t CRDTModelLocalFileManager.DefaultConfig.storeDirectory.getter()
{
  v0 = sub_1E4709B9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() books];
  v7 = [v6 containerURL];

  sub_1E4709B7C();
  sub_1E4709B6C();

  return (*(v1 + 8))(v5, v0);
}

uint64_t CRDTModelLocalFileManager.SyncError.hashValue.getter()
{
  v1 = *v0;
  sub_1E470B8FC();
  MEMORY[0x1E6916620](v1);
  return sub_1E470B91C();
}

uint64_t sub_1E46EF434()
{
  sub_1E470B8FC();
  CRDTModelLocalFileManager.SyncError.hash(into:)();
  return sub_1E470B91C();
}

uint64_t CRDTModelLocalFileManager.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t CRDTModelLocalFileManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CRDTModelLocalFileManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E466C098;
}

uint64_t sub_1E46EF5A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 104);
  v6 = type metadata accessor for ModelState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14 - v10;
  v12 = v1[4];

  MutableObservableContainer.value.getter();

  (*(*(v3 - 8) + 16))(a1, v11, v3);
  return (*(v7 + 8))(v11, v6);
}

BOOL sub_1E46EF6F4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 104);
  v4 = type metadata accessor for ModelState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  v10 = v0[4];

  MutableObservableContainer.value.getter();

  LOBYTE(v10) = v9[*(v4 + 44)];
  (*(v5 + 8))(v9, v4);
  v14 = v10;
  v13 = 1;
  return static ModelState.LoadedState.== infix(_:_:)(&v14, &v13);
}

uint64_t CRDTModelLocalFileManager.observable.getter()
{
  v1 = *v0;
  v2 = *(v0 + qword_1EE2AD350);
  v3 = v1[10];
  v4 = v1[12];
  v5 = v1[13];
  type metadata accessor for ModelState();
  swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer();
  sub_1E470B37C();
  return v7;
}

uint64_t CRDTModelLocalFileManager.model.getter()
{
  v1 = *v0;
  v2 = *(v0 + qword_1EE2AD350);
  v3 = *(v1 + 80);
  return sub_1E470B37C();
}

uint64_t sub_1E46EF9A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 96);
  v6 = *(*a1 + 104);
  v7 = type metadata accessor for ModelState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15 - v11;
  v13 = a1[4];

  MutableObservableContainer.value.getter();

  (*(*(v4 - 8) + 16))(a2, v12, v4);
  return (*(v8 + 8))(v12, v7);
}

uint64_t CRDTModelLocalFileManager.enableCloudSync.getter()
{
  v1 = qword_1EE2B0590;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRDTModelLocalFileManager.enableCloudSync.setter(char a1)
{
  v3 = qword_1EE2B0590;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t CRDTModelLocalFileManager.__allocating_init(clientName:delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 80);
  v7 = *(v3 + 88);
  v8 = *(v3 + 96);
  v9 = *(v3 + 104);
  type metadata accessor for CRDTModelLocalFileContextStore();
  v10 = static CRDTModelLocalFileContextStore.persistentContext(_:)(a1, a2);

  v15[1] = v7;
  v15[2] = v8;
  v15[3] = type metadata accessor for CRDTModelLocalFileManager.DefaultConfig();
  v15[4] = &protocol witness table for CRDTModelLocalFileManager<A>.DefaultConfig;
  v15[0] = v10;
  v11 = *(v3 + 48);
  v12 = *(v3 + 52);
  v13 = swift_allocObject();
  CRDTModelLocalFileManager.init(config:delegate:)(v15, 0, 0);
  swift_unknownObjectRelease();
  return v13;
}

uint64_t CRDTModelLocalFileManager.__allocating_init(config:delegate:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  CRDTModelLocalFileManager.init(config:delegate:)(a1, a2, a3);
  return v9;
}

void *CRDTModelLocalFileManager.init(config:delegate:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v116 = a3;
  v131 = a2;
  v133 = a1;
  v141 = *MEMORY[0x1E69E9840];
  v5 = *v3;
  v123 = sub_1E470A5DC();
  v122 = *(v123 - 8);
  v6 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123, v7);
  v121 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1E4709B9C();
  v130 = *(v124 - 8);
  v9 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v124, v10);
  v112 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v132 = &v105 - v14;
  v15 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v115 = &v105 - v18;
  v109 = v5;
  v19 = v5[10];
  v20 = v5[13];
  v110 = v5[12];
  v114 = v20;
  v21 = type metadata accessor for ModelState.Source();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8, v23);
  v113 = &v105 - v24;
  v129 = v19;
  v128 = type metadata accessor for ModelState();
  v120 = *(v128 - 8);
  v25 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v128, v26);
  v126 = &v105 - v27;
  v127 = *(v19 - 8);
  v28 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v29, v30);
  v111 = &v105 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v125 = &v105 - v34;
  v35 = sub_1E470B35C();
  v108 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v105 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1E470B33C();
  v41 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117, v42);
  v119 = sub_1E470A61C();
  v118 = *(v119 - 8);
  v43 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v119, v44);
  v46 = &v105 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v47 = qword_1EE2AD350;
  v107 = sub_1E465E1DC();
  sub_1E470A60C();
  sub_1E470B32C();
  v48 = *(v36 + 104);
  v48(v40, *MEMORY[0x1E69E8098], v35);
  *(v4 + v47) = sub_1E470B39C();
  v106 = qword_1EE2AD298;
  v105 = "ileManager.model";
  sub_1E470A5FC();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1E45E2E78(&unk_1EE2ACCE0, MEMORY[0x1E69E8030]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2EC0(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  v48(v40, *MEMORY[0x1E69E8090], v108);
  v117 = v46;
  *(v4 + v106) = sub_1E470B39C();
  v49 = qword_1EE2AD2A8;
  v50 = [objc_allocWithZone(BDSOSTransactionProvider) init];
  v51 = type metadata accessor for ObservableTransaction();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  *(v4 + v49) = sub_1E46F3D10(0xD000000000000035, 0x80000001E471A710, v50, v54);
  *(v4 + qword_1EE2B0590) = 0;
  aBlock = 0;
  v136 = 0xE000000000000000;
  sub_1E470B5CC();

  aBlock = 0xD000000000000013;
  v136 = 0x80000001E471A750;
  v109 = v109[11];
  v108 = v109[1];
  v55 = v129;
  v56 = (v108)(v129);
  MEMORY[0x1E6915D10](v56);

  v57 = v112;
  sub_1E470A0CC();
  v58 = v125;
  sub_1E470AA9C();
  v59 = v133[3];
  v60 = v133[4];
  sub_1E465057C(v133, v59);
  *(v4 + qword_1EE2AD340) = (*(v60 + 8))(v59, v60);
  swift_beginAccess();
  v4[3] = v116;
  swift_unknownObjectWeakAssign();
  v61 = v127;
  v62 = v111;
  (*(v127 + 16))(v111, v58, v55);
  LOBYTE(aBlock) = 0;
  v63 = v113;
  (*(v61 + 56))(v113, 1, 2, v55);
  v64 = type metadata accessor for CRDTModelRevisionInfo();
  v65 = v115;
  (*(*(v64 - 8) + 56))(v115, 1, 1, v64);
  v66 = v126;
  ModelState.init(model:loaded:source:revisionInfo:)(v62, &aBlock, v63, v65, v55, v126);
  swift_getWitnessTable();
  type metadata accessor for MutableObservableContainer();
  v4[4] = sub_1E466A1E0(v66);
  v67 = v133[3];
  v68 = v133[4];
  sub_1E465057C(v133, v67);
  (*(v68 + 16))(v67, v68);
  v69 = v130;
  v108();
  sub_1E4709B6C();

  v70 = v57;
  v71 = v124;
  (*(v69 + 32))(v4 + qword_1EE2AD358, v57);

  v72 = sub_1E470A0BC();
  v73 = sub_1E470B29C();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    aBlock = v75;
    *v74 = 136315138;
    (*(v69 + 16))(v70, v4 + qword_1EE2AD358, v71);
    sub_1E45E2E78(&qword_1ECF754D0, MEMORY[0x1E6968FB0]);
    v76 = sub_1E470B81C();
    v78 = v77;

    (*(v69 + 8))(v70, v71);
    v79 = sub_1E4654D04(v76, v78, &aBlock);

    *(v74 + 4) = v79;
    _os_log_impl(&dword_1E45E0000, v72, v73, "CRDTModelLocalFileManager Init: modelFileURL: %s", v74, 0xCu);
    sub_1E4658A0C(v75);
    MEMORY[0x1E6917530](v75, -1, -1);
    MEMORY[0x1E6917530](v74, -1, -1);
  }

  else
  {
  }

  v80 = [objc_opt_self() defaultManager];
  v81 = sub_1E4709B4C();
  aBlock = 0;
  v82 = [v80 createDirectoryAtURL:v81 withIntermediateDirectories:1 attributes:0 error:&aBlock];

  if (v82)
  {
    v83 = aBlock;
  }

  else
  {
    v84 = aBlock;
    v85 = sub_1E4709B0C();

    swift_willThrow();
    sub_1E470B2AC();
    if (qword_1EE2ADDE8 != -1)
    {
      swift_once();
    }

    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_1E471B800;
    v87 = sub_1E4709B1C();
    v89 = v88;
    v90 = MEMORY[0x1E69E6158];
    *(v86 + 56) = MEMORY[0x1E69E6158];
    v91 = sub_1E4663DE4();
    *(v86 + 64) = v91;
    *(v86 + 32) = v87;
    *(v86 + 40) = v89;
    swift_getErrorValue();
    v92 = sub_1E470B89C();
    *(v86 + 96) = v90;
    *(v86 + 104) = v91;
    *(v86 + 72) = v92;
    *(v86 + 80) = v93;
    sub_1E470A0AC();
  }

  v94 = v130;
  v95 = v4[4];
  sub_1E466A268(*(v4 + qword_1EE2AD2A8), &protocol witness table for ObservableTransaction);
  v96 = MEMORY[0x1E69E7CC0];
  *(v4 + qword_1EE2AD2B0) = MEMORY[0x1E69E7CC0];
  v97 = os_transaction_create();
  v130 = *(v4 + qword_1EE2AD298);
  v98 = swift_allocObject();
  *(v98 + 16) = v4;
  *(v98 + 24) = v97;
  v139 = sub_1E46F3FEC;
  v140 = v98;
  aBlock = MEMORY[0x1E69E9820];
  v136 = 1107296256;
  v137 = sub_1E46C4624;
  v138 = &unk_1F5E66850;
  v99 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();
  v100 = v117;
  sub_1E470A5FC();
  v134 = v96;
  sub_1E45E2E78(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2EC0(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
  v101 = v121;
  v102 = v123;
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v100, v101, v99);
  _Block_release(v99);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v122 + 8))(v101, v102);
  (*(v118 + 8))(v100, v119);
  (*(v94 + 8))(v132, v124);
  (*(v120 + 8))(v126, v128);
  (*(v127 + 8))(v125, v129);

  sub_1E4658A0C(v133);
  v103 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1E46F0D30()
{
  v0 = sub_1E470A0BC();
  v1 = sub_1E470B2CC();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1E45E0000, v0, v1, "CRDTModelLocalFileManager Init: About to load data", v2, 2u);
    MEMORY[0x1E6917530](v2, -1, -1);
  }

  v3 = sub_1E4709BAC();
  v5 = v4;
  sub_1E46552AC(v3, v4);
  sub_1E46F0E84(v3, v5, 0);
  sub_1E465746C(v3, v5);

  return sub_1E465746C(v3, v5);
}

uint64_t sub_1E46F0E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E470A5DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v3 + qword_1EE2AD350);
  sub_1E470A5CC();
  v16 = v3;
  v17 = a1;
  v18 = a2;
  v19 = a3;
  sub_1E470B36C();
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1E46F0FAC(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  v108 = a1;
  v110 = *v3;
  v111 = a2;
  v6 = sub_1E470AA2C();
  v106 = *(v6 - 8);
  v107 = v6;
  v7 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v110 + 80);
  v12 = sub_1E470B47C();
  v109 = *(v12 - 8);
  v13 = v109[8];
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v99 - v15;
  v114 = v11;
  v113 = *(v11 - 8);
  v17 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v99 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v99 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v99 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v112 = &v99 - v36;
  sub_1E46EF5A0(&v99 - v36);
  if (a3)
  {
    v37 = a3;
    v38 = sub_1E470A0BC();
    v39 = sub_1E470B2AC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v115[0] = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v42 = sub_1E470B89C();
      v44 = sub_1E4654D04(v42, v43, v115);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1E45E0000, v38, v39, "CRDTModelLocalFileManager Init: couldn't load existing data: %s", v40, 0xCu);
      sub_1E4658A0C(v41);
      MEMORY[0x1E6917530](v41, -1, -1);
      MEMORY[0x1E6917530](v40, -1, -1);
    }
  }

  else
  {
    v103 = v29;
    v104 = v12;
    v100 = v25;
    v101 = v21;
    v102 = v10;
    v105 = v4;
    v45 = sub_1E470A0BC();
    v46 = sub_1E470B2CC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1E45E0000, v45, v46, "CRDTModelLocalFileManager Init: About to deserialize existing data", v47, 2u);
      MEMORY[0x1E6917530](v47, -1, -1);
    }

    v49 = v110;
    v48 = v111;
    if (v111 >> 60 == 15)
    {
      v4 = v105;
      v53 = sub_1E470A0BC();
      v54 = sub_1E470B2AC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1E45E0000, v53, v54, "CRDTModelLocalFileManager Init: couldn't deserialize existing data", v55, 2u);
        MEMORY[0x1E6917530](v55, -1, -1);
      }
    }

    else
    {
      v99 = v33;
      v50 = v108;
      sub_1E465DD8C(v108, v111);
      sub_1E46552AC(v50, v48);
      v51 = v114;
      v52 = *(*(*(v49 + 96) + 8) + 8);
      sub_1E470AA0C();
      v109 = v52;
      v59 = v113;
      (*(v113 + 56))(v16, 0, 1, v51);
      v60 = v99;
      (*(v59 + 32))(v99, v16, v51);
      v61 = v103;
      v4 = v105;
      sub_1E46EF5A0(v103);
      v62 = sub_1E470AB9C();
      v63 = *(v59 + 8);
      v63(v61, v51);
      v64 = *(v59 + 16);
      if (v62)
      {
        v65 = v100;
        v64(v100, v60, v114);
        v66 = sub_1E470A0BC();
        v67 = sub_1E470B2CC();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = v63;
          v104 = v59 + 8;
          v70 = v68;
          v71 = swift_slowAlloc();
          v115[0] = v71;
          *v70 = 136315394;
          v72 = v114;
          v73 = *(v110 + 104);
          v74 = sub_1E470B81C();
          v75 = v65;
          v77 = v76;
          v69(v75, v72);
          v78 = sub_1E4654D04(v74, v77, v115);

          *(v70 + 4) = v78;
          *(v70 + 12) = 2080;
          swift_beginAccess();
          v79 = sub_1E470B81C();
          v81 = sub_1E4654D04(v79, v80, v115);

          *(v70 + 14) = v81;
          _os_log_impl(&dword_1E45E0000, v66, v67, "CRDTModelLocalFileManager Init: loaded stored model=%s, merging into existing=%s", v70, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E6917530](v71, -1, -1);
          MEMORY[0x1E6917530](v70, -1, -1);

          v83 = v107;
          v82 = v108;
          v84 = v106;
          v85 = v102;
        }

        else
        {

          v63(v65, v114);
          v83 = v107;
          v82 = v108;
          v84 = v106;
          v85 = v102;
          v69 = v63;
        }

        swift_beginAccess();
        v96 = v99;
        v97 = v114;
        sub_1E470AA1C();
        swift_endAccess();
        sub_1E465DDA0(v82, v111);
        (*(v84 + 8))(v85, v83);
        v69(v96, v97);
      }

      else
      {
        v86 = v101;
        v64(v101, v60, v114);
        v87 = sub_1E470A0BC();
        v88 = sub_1E470B2CC();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v115[0] = v109;
          *v89 = 136315138;
          v90 = *(v110 + 104);
          v91 = sub_1E470B81C();
          v93 = v92;
          v63(v86, v114);
          v94 = sub_1E4654D04(v91, v93, v115);

          *(v89 + 4) = v94;
          _os_log_impl(&dword_1E45E0000, v87, v88, "CRDTModelLocalFileManager Init: loaded stored model=%s, no delta", v89, 0xCu);
          v95 = v109;
          sub_1E4658A0C(v109);
          MEMORY[0x1E6917530](v95, -1, -1);
          MEMORY[0x1E6917530](v89, -1, -1);

          sub_1E465DDA0(v108, v111);
          v63(v60, v114);
        }

        else
        {

          sub_1E465DDA0(v108, v111);
          v98 = v114;
          v63(v86, v114);
          v63(v60, v98);
        }
      }
    }
  }

  v56 = v4;
  v57 = v112;
  sub_1E46F1C6C(v56, v112);
  return (*(v113 + 8))(v57, v114);
}

uint64_t sub_1E46F19A0()
{
  v25 = sub_1E470A61C();
  v1 = *(v25 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v25, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E470A5DC();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v24, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_1EE2AD2B0;
  swift_beginAccess();
  v12 = *(v0 + v11);
  *(v0 + v11) = MEMORY[0x1E69E7CC0];
  v23 = v12;
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = *(v0 + qword_1EE2AD350);
    v15 = (v23 + 32);
    v16 = (v1 + 8);
    v17 = (v6 + 8);
    do
    {
      v18 = swift_allocObject();
      v19 = *v15++;
      *(v18 + 16) = v19;

      sub_1E470A5CC();
      v20 = swift_allocObject();
      *(v20 + 16) = sub_1E467248C;
      *(v20 + 24) = v18;
      aBlock[4] = sub_1E466A228;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E46C4624;
      aBlock[3] = &unk_1F5E66AD8;
      v21 = _Block_copy(aBlock);

      sub_1E470A5FC();
      MEMORY[0x1E69160A0](0, v5, v10, v21);
      _Block_release(v21);

      (*v16)(v5, v25);
      (*v17)(v10, v24);

      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1E46F1C6C(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = *(*a1 + 96);
  v5[1] = *(*a1 + 80);
  v5[2] = v3;
  v6 = a2;

  MutableObservableContainer.mutate(_:)(sub_1E46F4350, v5);
}

uint64_t sub_1E46F1CF0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v38 = *v3;
  v7 = v38[10];
  v8 = v38[13];
  v36 = v38[12];
  v37 = v7;
  v35 = v8;
  v9 = type metadata accessor for ModelState();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v32 - v14;
  (*(v10 + 16))(&v32 - v14, a1, v9, v13);

  v16 = sub_1E470A0BC();
  v17 = sub_1E470B2CC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = a1;
    v20 = v19;
    v39 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_1E4654D04(v34, a3, &v39);
    *(v18 + 12) = 2080;
    v21 = ModelState.description.getter(v9);
    v23 = v22;
    (*(v10 + 8))(v15, v9);
    v24 = sub_1E4654D04(v21, v23, &v39);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_1E45E0000, v16, v17, "CRDTModelLocalFileManager q_updateState (%s) -- newState=%s", v18, 0x16u);
    swift_arrayDestroy();
    v25 = v20;
    a1 = v33;
    MEMORY[0x1E6917530](v25, -1, -1);
    MEMORY[0x1E6917530](v18, -1, -1);
  }

  else
  {

    v26 = (*(v10 + 8))(v15, v9);
  }

  v28 = v4[4];
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v38[11];
  *(&v32 - 6) = v37;
  *(&v32 - 5) = v29;
  v30 = v35;
  *(&v32 - 4) = v36;
  *(&v32 - 3) = v30;
  *(&v32 - 2) = a1;

  MutableObservableContainer.mutate(_:)(sub_1E4672268, (&v32 - 8));
}

uint64_t CRDTModelLocalFileManager.sync(_:isRemote:)(uint64_t a1, char a2)
{
  v5 = sub_1E470A5DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v2 + qword_1EE2AD350);
  sub_1E470A5CC();
  v14 = v2;
  v15 = a1;
  v16 = a2;
  sub_1E470B36C();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E46F2160(_BYTE *a1, int a2)
{
  v3 = v2;
  v151 = a2;
  v5 = *v2;
  v153 = v5;
  v140 = sub_1E470A5DC();
  v139 = *(v140 - 8);
  v6 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v140, v7);
  v137 = &v125[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v138 = sub_1E470A61C();
  v136 = *(v138 - 8);
  v9 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v138, v10);
  v135 = &v125[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = v5[10];
  v13 = v5[12];
  v14 = v5[13];
  v144 = type metadata accessor for ModelState();
  v134 = *(v144 - 8);
  v15 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v144, v16);
  v143 = &v125[-v17];
  v155 = v14;
  v133 = type metadata accessor for ModelState.Source();
  v132 = *(v133 - 8);
  v18 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133, v19);
  v142 = &v125[-v20];
  v21 = sub_1E470AB3C();
  v148 = *(v21 - 8);
  v149 = v21;
  v22 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v147 = &v125[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = *(v12 - 1);
  v26 = v25[8];
  MEMORY[0x1EEE9AC00](v27, v28);
  v145 = &v125[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30, v31);
  v141 = &v125[-v32];
  MEMORY[0x1EEE9AC00](v33, v34);
  v156 = &v125[-v35];
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v125[-v38];
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v125[-v42];
  v157 = os_transaction_create();
  sub_1E46EF5A0(v43);
  v152 = v13;
  v44 = a1;
  v146 = *(v13 + 1);
  LOBYTE(v14) = sub_1E470AB9C();
  v45 = v25 + 1;
  v158 = v25[1];
  v158(v43, v12);
  v46 = qword_1EE2B0588;
  v131 = v25;
  v49 = v25[2];
  v48 = v25 + 2;
  v47 = v49;
  if (v14)
  {
    v145 = v44;
    v130 = v47;
    v129 = v48;
    v47(v39, v44, v12);

    v50 = sub_1E470A0BC();
    v51 = sub_1E470B2CC();

    v52 = os_log_type_enabled(v50, v51);
    v154 = v45;
    v128 = v46;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      aBlock = v127;
      *v53 = 67109634;
      *(v53 + 4) = v151 & 1;
      *(v53 + 8) = 2080;
      v126 = v51;
      v54 = sub_1E470B81C();
      v56 = v55;
      v158(v39, v12);
      v57 = sub_1E4654D04(v54, v56, &aBlock);

      *(v53 + 10) = v57;
      *(v53 + 18) = 2080;
      sub_1E46EF5A0(v43);
      v58 = sub_1E470B81C();
      v60 = v59;
      v61 = v158;
      v158(v43, v12);
      v62 = sub_1E4654D04(v58, v60, &aBlock);

      *(v53 + 20) = v62;
      _os_log_impl(&dword_1E45E0000, v50, v126, "CRDTModelLocalFileManager q_sync: isRemote=%{BOOL}d, incoming=%s and existing=%s", v53, 0x1Cu);
      v63 = v127;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v63, -1, -1);
      MEMORY[0x1E6917530](v53, -1, -1);
    }

    else
    {

      v61 = v158;
      v158(v39, v12);
    }

    v82 = v12;
    sub_1E46EF5A0(v43);
    v83 = v156;
    v84 = v146;
    sub_1E470ABDC();
    v61(v43, v12);
    v85 = *(v3 + qword_1EE2AD340);
    v87 = v147;
    v86 = v148;
    v88 = v149;
    (*(v148 + 104))(v147, *MEMORY[0x1E6995288], v149);
    v89 = *(v84 + 8);
    v90 = v82;
    v91 = v150;
    v92 = sub_1E470A9FC();
    if (v91)
    {

      (*(v86 + 8))(v87, v88);
      v94 = v141;
      v130(v141, v83, v82);
      v95 = sub_1E470A0BC();
      v96 = sub_1E470B2AC();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        aBlock = v98;
        *v97 = 136315138;
        v99 = v94;
        v100 = v155;
        v101 = sub_1E470B81C();
        v103 = v102;
        v158(v99, v90);
        v104 = sub_1E4654D04(v101, v103, &aBlock);

        *(v97 + 4) = v104;
        _os_log_impl(&dword_1E45E0000, v95, v96, "CRDTModelLocalFileManager q_sync: couldn't serialize model to sync: %s", v97, 0xCu);
        sub_1E4658A0C(v98);
        MEMORY[0x1E6917530](v98, -1, -1);
        v105 = v97;
        v106 = v158;
        MEMORY[0x1E6917530](v105, -1, -1);
      }

      else
      {

        v106 = v158;
        v158(v94, v82);
        v100 = v155;
      }

      v114 = v153[11];
      aBlock = v90;
      v160 = v114;
      v161 = v152;
      v162 = v100;
      type metadata accessor for CRDTModelLocalFileManager.SyncError();
      swift_getWitnessTable();
      swift_allocError();
      *v115 = 1;
      swift_willThrow();
      swift_unknownObjectRelease();
      return v106(v156, v90);
    }

    else
    {
      v110 = v145;
      v155 = v93;
      v111 = v92;
      (*(v86 + 8))(v87, v88);
      if (v151)
      {
        v112 = v142;
        v130(v142, v110, v90);
        v113 = 0;
      }

      else
      {
        v113 = 1;
        v112 = v142;
      }

      (v131[7])(v112, v113, 2, v90);
      v116 = v3[4];
      v117 = v155;
      sub_1E46552AC(v111, v155);

      v118 = v143;
      MutableObservableContainer.value.getter();

      ModelState.updating(model:source:)(v156, v112, v144);
      sub_1E46F1CF0(v118, 0x636E79735F71, 0xE600000000000000);
      v153 = *(v3 + qword_1EE2AD298);
      v119 = swift_allocObject();
      v119[2] = v3;
      v119[3] = v111;
      v120 = v157;
      v119[4] = v117;
      v119[5] = v120;
      v163 = sub_1E46F4274;
      v164 = v119;
      aBlock = MEMORY[0x1E69E9820];
      v160 = 1107296256;
      v161 = sub_1E46C4624;
      v162 = &unk_1F5E66A38;
      v152 = _Block_copy(&aBlock);

      sub_1E46552AC(v111, v117);
      swift_unknownObjectRetain();
      v121 = v135;
      sub_1E470A5FC();
      v165 = MEMORY[0x1E69E7CC0];
      sub_1E45E2E78(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60]);
      sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
      sub_1E45E2EC0(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0);
      v122 = v137;
      v123 = v140;
      sub_1E470B4CC();
      v124 = v152;
      MEMORY[0x1E69160A0](0, v121, v122, v152);
      _Block_release(v124);
      swift_unknownObjectRelease();
      sub_1E465746C(v111, v117);
      sub_1E465746C(v111, v117);
      (*(v139 + 8))(v122, v123);
      (*(v136 + 8))(v121, v138);
      (*(v134 + 8))(v143, v144);
      (*(v132 + 8))(v142, v133);
      v158(v156, v90);
    }
  }

  else
  {
    v64 = v145;
    v47(v145, v44, v12);

    v65 = sub_1E470A0BC();
    v66 = sub_1E470B2CC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v154 = v45;
      v68 = v67;
      v156 = swift_slowAlloc();
      aBlock = v156;
      *v68 = 67109634;
      *(v68 + 4) = v151 & 1;
      *(v68 + 8) = 2080;
      v151 = v66;
      v69 = v155;
      v70 = sub_1E470B81C();
      v150 = v65;
      v72 = v71;
      v73 = v64;
      v74 = v158;
      v158(v73, v12);
      v75 = sub_1E4654D04(v70, v72, &aBlock);

      *(v68 + 10) = v75;
      *(v68 + 18) = 2080;
      sub_1E46EF5A0(v43);
      v76 = sub_1E470B81C();
      v78 = v77;
      v74(v43, v12);
      v79 = sub_1E4654D04(v76, v78, &aBlock);

      *(v68 + 20) = v79;
      v80 = v150;
      _os_log_impl(&dword_1E45E0000, v150, v151, "CRDTModelLocalFileManager q_sync -- no delta: isRemote=%{BOOL}d, incoming=%s and existing=%s", v68, 0x1Cu);
      v81 = v156;
      swift_arrayDestroy();
      MEMORY[0x1E6917530](v81, -1, -1);
      MEMORY[0x1E6917530](v68, -1, -1);
    }

    else
    {

      v158(v64, v12);
      v69 = v155;
    }

    v107 = v153[11];
    aBlock = v12;
    v160 = v107;
    v161 = v152;
    v162 = v69;
    type metadata accessor for CRDTModelLocalFileManager.SyncError();
    swift_getWitnessTable();
    swift_allocError();
    *v108 = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }
}

uint64_t CRDTModelLocalFileManager.syncAfterLoaded(_:isRemote:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1E470A5DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v17[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v4 + qword_1EE2AD350);
  sub_1E470A5CC();
  v18 = v4;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  sub_1E470B36C();
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_1E46F31E4(uint64_t a1, _BYTE *a2, char a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = sub_1E46EF6F4();
  v11 = a3 & 1;
  if (!v10)
  {
    return sub_1E46F3278(a2, v11, a4, a5);
  }

  v12 = sub_1E46F2160(a2, v11);
  if (v5)
  {
  }

  return a4(v12);
}

uint64_t sub_1E46F3278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a3;
  v29 = a4;
  HIDWORD(v27) = a2;
  v7 = *v4;
  v8 = *(*v4 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v27 - v11;
  v13 = sub_1E470A0BC();
  v14 = sub_1E470B2CC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1E45E0000, v13, v14, "CRDTModelLocalFileManager q_enqueuePendingSync", v15, 2u);
    MEMORY[0x1E6917530](v15, -1, -1);
  }

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = *(v7 + 88);
  *(v17 + 40) = *(v7 + 104);
  *(v17 + 48) = v5;
  (*(v9 + 32))(v17 + v16, v12, v8);
  *(v17 + v16 + v10) = BYTE4(v27) & 1;
  v18 = v17 + ((v16 + v10) & 0xFFFFFFFFFFFFFFF8);
  v19 = v29;
  *(v18 + 8) = v28;
  *(v18 + 16) = v19;
  v20 = qword_1EE2AD2B0;
  swift_beginAccess();
  v21 = *(v5 + v20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + v20) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1E4693A54(0, v21[2] + 1, 1, v21);
    *(v5 + v20) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_1E4693A54((v23 > 1), v24 + 1, 1, v21);
  }

  v21[2] = v24 + 1;
  v25 = &v21[2 * v24];
  v25[4] = sub_1E46F42A0;
  v25[5] = v17;
  *(v5 + v20) = v21;
  return swift_endAccess();
}

uint64_t sub_1E46F3540(uint64_t a1, _BYTE *a2, char a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_1E470A0BC();
  v8 = sub_1E470B2CC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1E45E0000, v7, v8, "CRDTModelLocalFileManager q_enqueuePendingSync -- about to run", v9, 2u);
    MEMORY[0x1E6917530](v9, -1, -1);
  }

  v10 = sub_1E46F2160(a2, a3 & 1);
  return a4(v10);
}

uint64_t sub_1E46F3634()
{
  sub_1E4709BEC();

  return sub_1E46F37C0();
}

uint64_t sub_1E46F37C0()
{
  v1 = *v0;
  v2 = sub_1E470A0BC();
  v3 = sub_1E470B2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = *(v1 + 80);
    v7 = (*(*(v1 + 88) + 8))();
    v9 = sub_1E4654D04(v7, v8, &v13);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1E45E0000, v2, v3, "CRDTModelLocalFileManager: Model did save %s", v4, 0xCu);
    sub_1E4658A0C(v5);
    MEMORY[0x1E6917530](v5, -1, -1);
    MEMORY[0x1E6917530](v4, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = v0[3];
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CRDTModelLocalFileManager.deinit()
{
  sub_1E466A310(v0 + 16);
  v1 = *(v0 + 32);

  v2 = qword_1EE2AD358;
  v3 = sub_1E4709B9C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(v0 + qword_1EE2AD2A8);

  v5 = *(v0 + qword_1EE2AD2B0);

  v6 = qword_1EE2B0588;
  v7 = sub_1E470A0DC();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t CRDTModelLocalFileManager.__deallocating_deinit()
{
  CRDTModelLocalFileManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E46F3AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4650534(&qword_1ECF74770, &unk_1E471C900);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v25[-v9];
  v11 = type metadata accessor for ModelState.Source();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v15 = &v25[-v14];
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v25[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for ModelState();
  (*(*(v22 - 8) + 8))(a1, v22);
  swift_beginAccess();
  (*(v16 + 16))(v21, a2, a3);
  v26 = 1;
  (*(v16 + 56))(v15, 2, 2, a3);
  v23 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  return ModelState.init(model:loaded:source:revisionInfo:)(v21, &v26, v15, v10, a3, a1);
}

void *sub_1E46F3D10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = a2;
  v22 = a3;
  v20 = a1;
  v5 = sub_1E470B33C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_1E470A61C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v11 = sub_1E470B35C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4[4] = 0;
  v19[1] = sub_1E465E1DC();
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8098], v11);
  sub_1E470A5FC();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1E45E2E78(&unk_1EE2ACCE0, MEMORY[0x1E69E8030]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2EC0(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  a4[5] = sub_1E470B39C();
  sub_1E470A0CC();
  v17 = v21;
  a4[2] = v20;
  a4[3] = v17;
  a4[6] = v22;
  return a4;
}

uint64_t sub_1E46F4010(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E46F4028()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  return sub_1E46F2160(v1, v2);
}

uint64_t sub_1E46F40D0()
{
  result = sub_1E4709B9C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1E470A0DC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1E46F4220()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E46F4274()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1E46F3634();
}

uint64_t sub_1E46F42A0()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = v1 + *(*(*(v0 + 16) - 8) + 64);
  v3 = *(v0 + v2);
  v4 = v0 + (v2 & 0xFFFFFFFFFFFFFFF8);
  v5 = *(v4 + 16);
  return sub_1E46F3540(*(v0 + 48), (v0 + v1), v3, *(v4 + 8));
}

uint64_t sub_1E46F4310()
{
  v1 = *(v0 + 16);
  sub_1E46F0FAC(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  return sub_1E46F19A0();
}

uint64_t sub_1E46F4350(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  return sub_1E46F3AB0(a1, v1[6], v1[2]);
}

void *sub_1E46F4384(void *a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v6 = a1;
    v7 = sub_1E470B69C();

    if (v7)
    {
      sub_1E45E2DE8(0, a3, a4);
      swift_dynamicCast();
      return v14;
    }
  }

  else if (*(a2 + 16))
  {
    v10 = sub_1E46554E8(a1);
    if (v11)
    {
      v12 = *(*(a2 + 56) + 8 * v10);
      v13 = v12;
      return v12;
    }
  }

  return 0;
}

uint64_t sub_1E46F4454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1E470B8FC();
  MEMORY[0x1E6916620](a1);
  MEMORY[0x1E6916620](a2);
  v7 = sub_1E470B91C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  do
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v13 = *v11;
    v12 = v11[1];
    v14 = v13 == a1 && v12 == a2;
    result = v14;
    if (v14)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
  }

  while (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  return result;
}

uint64_t sub_1E46F4538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1E470B8FC();
  sub_1E470AFCC();
  v7 = sub_1E470B91C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1E470B84C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1E46F4630(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1E470B53C();
  }

  else if (*(a2 + 16) && (sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90), v5 = *(a2 + 40), v6 = sub_1E470B41C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v4 = sub_1E470B42C();

      if (v4)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

Swift::String __swiftcall CKRecordID.bds_recordType()()
{
  v1 = [v0 recordName];
  v2 = sub_1E470AF1C();
  v4 = v3;

  v16[0] = 46;
  v16[1] = 0xE100000000000000;
  v15[2] = v16;
  v5 = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E4700498, v15, v2, v4, v16);
  if (v5[2])
  {
    v7 = v5[4];
    v8 = v5[5];
    v9 = v5[6];
    v10 = v5[7];

    v11 = MEMORY[0x1E6915CC0](v7, v8, v9, v10);
    v13 = v12;

    v5 = v11;
    v6 = v13;
  }

  else
  {
    __break(1u);
  }

  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

char *sub_1E46F48C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v175 = a5;
  v176 = a6;
  v174 = a4;
  v173 = a3;
  v178 = a1;
  v179 = a2;
  v169 = sub_1E4650534(&qword_1ECF75C58, &qword_1E4720488);
  v168 = *(v169 - 8);
  v7 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169, v8);
  v167 = &v145 - v9;
  v166 = sub_1E4650534(&qword_1ECF75C60, &qword_1E4720490);
  v165 = *(v166 - 8);
  v10 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v166, v11);
  v164 = &v145 - v12;
  v160 = sub_1E4650534(&qword_1ECF75C68, &qword_1E4720498);
  v159 = *(v160 - 8);
  v13 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v160, v14);
  v158 = &v145 - v15;
  v163 = sub_1E4650534(&qword_1ECF75C70, &qword_1E47204A0);
  v162 = *(v163 - 8);
  v16 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v163, v17);
  v161 = &v145 - v18;
  v154 = sub_1E4650534(&qword_1ECF75C78, &qword_1E47204A8);
  v153 = *(v154 - 8);
  v19 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v154, v20);
  v152 = &v145 - v21;
  v157 = sub_1E4650534(&qword_1ECF75C80, &qword_1E47204B0);
  v156 = *(v157 - 8);
  v22 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v157, v23);
  v155 = &v145 - v24;
  v25 = sub_1E4650534(&qword_1ECF75C88, &qword_1E47204B8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8, v27);
  v151 = &v145 - v28;
  v147 = sub_1E4650534(&qword_1ECF75C90, &qword_1E47204C0);
  v146 = *(v147 - 8);
  v29 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v147, v30);
  v145 = &v145 - v31;
  v150 = sub_1E4650534(&unk_1ECF75C98, &qword_1E47204C8);
  v149 = *(v150 - 8);
  v32 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v150, v33);
  v148 = &v145 - v34;
  v184 = sub_1E470B35C();
  v182 = *(v184 - 1);
  v35 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v184, v36);
  v38 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1E470B33C();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39, v41);
  v42 = sub_1E470A61C();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8, v44);
  *&v6[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_kChangedRecordsBatchSize] = 32;
  v45 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_subscribers] = MEMORY[0x1E69E7CC0];
  v183 = v6;
  sub_1E470A0CC();
  v181 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue;
  v186 = sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  v180 = "neChangeBatch(cloudData:)";
  if (qword_1EE2AE3E8 != -1)
  {
    swift_once();
  }

  v185 = qword_1EE2AE3F0;
  v46 = *(qword_1EE2AE3F0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_queue);
  sub_1E470A5FC();
  aBlock[0] = v45;
  sub_1E4701460(&unk_1EE2ACCE0, MEMORY[0x1E69E8030]);
  sub_1E4650534(&unk_1ECF74940, &qword_1E471BAE0);
  sub_1E45E2F14(&unk_1EE2ACCF0, &unk_1ECF74940, &qword_1E471BAE0);
  sub_1E470B4CC();
  v47 = *MEMORY[0x1E69E8090];
  v48 = *(v182 + 104);
  v49 = v184;
  v48(v38, v47, v184);
  v50 = sub_1E470B39C();
  v51 = v183;
  *&v183[v181] = v50;
  v182 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_stateQueue;
  sub_1E470B32C();
  sub_1E470A5FC();
  v48(v38, v47, v49);
  *&v51[v182] = sub_1E470B39C();
  v51[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline__hasPendingModifications] = 0;
  v52 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_currentModifyBatchResponse;
  type metadata accessor for _BDSSyncEngineModifyBatchResponse();
  v53 = swift_allocObject();
  v54 = MEMORY[0x1E69E7CC0];
  v53[2] = MEMORY[0x1E69E7CC0];
  v53[3] = v54;
  v53[4] = v54;
  v53[5] = v54;
  *&v51[v52] = v53;
  *&v51[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_scheduleSyncBlock] = 0;
  v53[6] = MEMORY[0x1E69E7CC8];
  v55 = &v51[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_recordType];
  v56 = v178;
  v57 = v179;
  *v55 = v178;
  v55[1] = v57;
  v58 = v56;
  sub_1E45E2DE8(0, &unk_1ECF75C30, 0x1E695BA90);
  v59 = *MEMORY[0x1E695B728];
  sub_1E470AF1C();

  *&v51[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_zoneID] = sub_1E470B2EC();
  v60 = v175;
  *&v51[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_dataMapper] = v176;
  *&v51[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_delegate] = v60;
  *&v51[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_observer] = v60;
  v61 = type metadata accessor for BDSSyncEnginePipeline();
  v189.receiver = v51;
  v189.super_class = v61;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v62 = objc_msgSendSuper2(&v189, sel_init);
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1E47014A8;
  *(v64 + 24) = v63;
  v65 = objc_allocWithZone(MEMORY[0x1E698F548]);
  aBlock[4] = sub_1E47014B0;
  aBlock[5] = v64;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E469C1B8;
  aBlock[3] = &unk_1F5E66D90;
  v66 = _Block_copy(aBlock);
  v67 = v62;
  swift_retain_n();
  v68 = sub_1E470AF0C();
  v69 = [v65 initWithNotifyBlock:v66 blockDescription:v68];

  _Block_release(v66);

  [v69 setCoalescingDelay_];
  [v69 setMaximumDelay_];

  v70 = v185;
  v71 = *&v67[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_scheduleSyncBlock];
  *&v67[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_scheduleSyncBlock] = v69;

  v72 = swift_allocObject();
  v73 = MEMORY[0x1E69E7CC0];
  *(v72 + 16) = MEMORY[0x1E69E7CC0];
  v74 = v72;
  v75 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = swift_allocObject();
  *(v76 + 2) = v74;
  *(v76 + 3) = v75;
  v172 = v74;
  *(v76 + 4) = v58;
  *(v76 + 5) = v57;
  v77 = swift_allocObject();
  *(v77 + 16) = v73;
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79 = swift_allocObject();
  v79[2] = v77;
  v79[3] = v78;
  v79[4] = v58;
  v79[5] = v57;
  v170 = v79;
  swift_bridgeObjectRetain_n();
  v80 = v67;

  v171 = v77;

  sub_1E47004E4(v80, v58, v57, v70);

  v81 = v80;
  sub_1E47006AC(v81, v70);

  aBlock[0] = *&v70[OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_recordChangePublisher];
  v177 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue;
  v187 = *&v81[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_workQueue];
  v82 = v187;
  v83 = sub_1E470B34C();
  v84 = *(v83 - 8);
  v85 = *(v84 + 56);
  v86 = v151;
  v181 = v83;
  v183 = (v84 + 56);
  v184 = v85;
  (v85)(v151, 1, 1);

  v87 = v82;
  sub_1E4650534(&qword_1ECF75340, &qword_1E471E978);
  sub_1E45E2F14(&qword_1ECF75CA8, &qword_1ECF75340, &qword_1E471E978);
  v88 = sub_1E470141C(&qword_1ECF75CB0, &qword_1EE2ACCD0, 0x1E69E9610);
  v89 = v145;
  v182 = v88;
  sub_1E470A15C();
  v90 = v86;
  sub_1E465E050(v86, &qword_1ECF75C88, &qword_1E47204B8);

  v91 = swift_allocObject();
  v92 = v179;
  *(v91 + 16) = v178;
  *(v91 + 24) = v92;
  sub_1E45E2F14(&qword_1ECF75CB8, &qword_1ECF75C90, &qword_1E47204C0);

  v93 = v148;
  v94 = v147;
  sub_1E470A14C();

  (*(v146 + 8))(v89, v94);
  v95 = swift_allocObject();
  v95[2] = v172;
  v95[3] = 32;
  v95[4] = sub_1E47014F4;
  v95[5] = v76;
  sub_1E45E2F14(&unk_1ECF75CC0, &unk_1ECF75C98, &qword_1E47204C8);

  v180 = v76;

  v96 = v150;
  sub_1E470A13C();

  (*(v149 + 8))(v93, v96);
  v97 = OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_subscribers;
  v98 = swift_beginAccess();
  MEMORY[0x1E6915DB0](v98);
  if (*((*&v81[v97] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v81[v97] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v141 = *((*&v81[v97] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E470B0DC();
  }

  sub_1E470B0FC();
  swift_endAccess();
  aBlock[0] = *(v185 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_recordDeletionPublisher);
  v187 = *&v81[v177];
  v99 = v187;
  (v184)(v90, 1, 1, v181);

  v100 = v99;
  sub_1E4650534(&qword_1ECF75350, &unk_1E47204D0);
  sub_1E45E2F14(&qword_1ECF75CD0, &qword_1ECF75350, &unk_1E47204D0);
  v101 = v152;
  sub_1E470A15C();
  sub_1E465E050(v90, &qword_1ECF75C88, &qword_1E47204B8);

  v102 = swift_allocObject();
  v103 = v179;
  *(v102 + 16) = v178;
  *(v102 + 24) = v103;
  sub_1E45E2F14(&qword_1ECF75CD8, &qword_1ECF75C78, &qword_1E47204A8);
  v104 = v155;
  v105 = v154;
  sub_1E470A14C();

  (*(v153 + 8))(v101, v105);
  v106 = swift_allocObject();
  v106[2] = v171;
  v106[3] = 32;
  v107 = v170;
  v106[4] = sub_1E4701548;
  v106[5] = v107;
  sub_1E45E2F14(&unk_1ECF75CE0, &qword_1ECF75C80, &qword_1E47204B0);

  v108 = v157;
  sub_1E470A13C();

  (*(v156 + 8))(v104, v108);
  v109 = swift_beginAccess();
  MEMORY[0x1E6915DB0](v109);
  if (*((*&v81[v97] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v81[v97] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v142 = *((*&v81[v97] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E470B0DC();
  }

  sub_1E470B0FC();
  swift_endAccess();
  aBlock[0] = *(v185 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_endFetchingChangesPublisher);
  v187 = *&v81[v177];
  v110 = v187;
  (v184)(v90, 1, 1, v181);

  v111 = v110;
  sub_1E4650534(&qword_1ECF75370, qword_1E471E988);
  sub_1E45E2F14(&qword_1ECF75CF0, &qword_1ECF75370, qword_1E471E988);
  v112 = v158;
  sub_1E470A15C();
  sub_1E465E050(v90, &qword_1ECF75C88, &qword_1E47204B8);

  v113 = swift_allocObject();
  v114 = v174;
  *(v113 + 16) = v173;
  *(v113 + 24) = v114;
  sub_1E45E2F14(&qword_1ECF75CF8, &qword_1ECF75C68, &qword_1E4720498);
  v115 = v161;
  v116 = v160;
  sub_1E470A14C();

  (*(v159 + 8))(v112, v116);
  v117 = swift_allocObject();
  v117[2] = sub_1E4701548;
  v117[3] = v107;
  v118 = v180;
  v117[4] = sub_1E47014F4;
  v117[5] = v118;
  sub_1E45E2F14(&unk_1ECF75D00, &qword_1ECF75C70, &qword_1E47204A0);

  v119 = v163;
  sub_1E470A13C();

  (*(v162 + 8))(v115, v119);
  v120 = swift_beginAccess();
  MEMORY[0x1E6915DB0](v120);
  v121 = v97;
  v122 = *((*&v81[v97] & 0xFFFFFFFFFFFFFF8) + 0x10);
  v123 = *((*&v81[v97] & 0xFFFFFFFFFFFFFF8) + 0x18);
  v124 = v177;
  v125 = v107;
  v126 = v181;
  if (v122 >= v123 >> 1)
  {
    sub_1E470B0DC();
  }

  v150 = v121;
  sub_1E470B0FC();
  swift_endAccess();
  aBlock[0] = *(v185 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_updateMetadataPublisher);
  v187 = *&v81[v124];
  v127 = v187;
  (v184)(v90, 1, 1, v126);

  v128 = v127;
  sub_1E4650534(&qword_1ECF75380, qword_1E47204E0);
  sub_1E45E2F14(&qword_1ECF75D10, &qword_1ECF75380, qword_1E47204E0);
  v129 = v164;
  sub_1E470A15C();
  sub_1E465E050(v90, &qword_1ECF75C88, &qword_1E47204B8);

  v130 = swift_allocObject();
  v130[2] = sub_1E4701548;
  v130[3] = v125;
  v131 = v180;
  v130[4] = sub_1E47014F4;
  v130[5] = v131;
  sub_1E45E2F14(&unk_1ECF75D18, &qword_1ECF75C60, &qword_1E4720490);

  v132 = v150;

  v133 = v166;
  sub_1E470A13C();

  (*(v165 + 8))(v129, v133);
  v134 = swift_beginAccess();
  MEMORY[0x1E6915DB0](v134);
  if (*((*&v81[v132] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v81[v132] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v143 = *((*&v81[v132] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E470B0DC();
  }

  sub_1E470B0FC();
  swift_endAccess();
  aBlock[0] = *(v185 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_accountChangedPublisher);
  v187 = *&v81[v124];
  v135 = v187;
  (v184)(v90, 1, 1, v181);

  v136 = v135;
  sub_1E4650534(&qword_1ECF75360, &qword_1E471E980);
  sub_1E45E2F14(&qword_1ECF75D28, &qword_1ECF75360, &qword_1E471E980);
  v137 = v167;
  sub_1E470A15C();
  sub_1E465E050(v90, &qword_1ECF75C88, &qword_1E47204B8);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E45E2F14(&unk_1ECF75D30, &qword_1ECF75C58, &qword_1E4720488);
  v138 = v169;
  sub_1E470A13C();

  (*(v168 + 8))(v137, v138);
  v139 = swift_beginAccess();
  MEMORY[0x1E6915DB0](v139);
  if (*((*&v81[v132] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v81[v132] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v144 = *((*&v81[v132] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E470B0DC();
  }

  sub_1E470B0FC();
  swift_endAccess();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v81;
}

void sub_1E46F63E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_1EE2AE3E8 != -1)
    {
      swift_once();
    }

    BDSSyncEngine.scheduleSync()();
  }
}

uint64_t sub_1E46F646C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1E470A0DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v47 - v13;
  swift_beginAccess();
  v15 = *(a1 + 16);
  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v15 < 0)
  {
    v46 = *(a1 + 16);
  }

  result = sub_1E470B50C();
  if (result)
  {
LABEL_3:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v56 = a3;
      v19 = *(Strong + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_observer);
      swift_beginAccess();
      v20 = *(a1 + 16);
      v21 = qword_1EE2AE3E8;
      v52 = v19;
      swift_unknownObjectRetain();

      if (v21 != -1)
      {
        swift_once();
      }

      v22 = *(qword_1EE2AE3F0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_persistFetchCoordinatorGroup);
      v55 = v8;
      v23 = *(v8 + 16);
      v53 = v18;
      v49 = v23;
      v23(v14, &v18[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_logger], v7);
      v50 = v22;
      dispatch_group_enter(v50);

      v24 = v14;
      v25 = sub_1E470A0BC();
      v26 = sub_1E470B29C();

      v27 = os_log_type_enabled(v25, v26);
      v54 = a4;
      if (v27)
      {
        v47 = v7;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        aBlock[0] = v29;
        *v28 = 136315394;
        *(v28 + 4) = sub_1E4654D04(v56, a4, aBlock);
        *(v28 + 12) = 2048;
        if (v20 >> 62)
        {
          v30 = sub_1E470B50C();
        }

        else
        {
          v30 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v28 + 14) = v30;

        _os_log_impl(&dword_1E45E0000, v25, v26, "BDSSyncEnginePipeline - processIncomingRecordChanges: [%s] Begin processing %ld updates", v28, 0x16u);
        sub_1E4658A0C(v29);
        MEMORY[0x1E6917530](v29, -1, -1);
        MEMORY[0x1E6917530](v28, -1, -1);

        v7 = v47;
      }

      else
      {
      }

      sub_1E45E2DE8(0, &qword_1ECF75290, 0x1E695BA60);
      v47 = sub_1E470B0AC();
      v31 = v51;
      v48 = v24;
      v49(v51, v24, v7);
      v32 = v55;
      v33 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v34 = (v9 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = v7;
      v36 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
      v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
      v38 = swift_allocObject();
      (*(v32 + 32))(v38 + v33, v31, v35);
      v39 = (v38 + v34);
      v40 = v54;
      *v39 = v56;
      v39[1] = v40;
      *(v38 + v36) = v20;
      v41 = v50;
      *(v38 + v37) = v50;
      aBlock[4] = sub_1E470171C;
      aBlock[5] = v38;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E46C4624;
      aBlock[3] = &unk_1F5E670D8;
      v42 = _Block_copy(aBlock);
      v43 = v41;

      v44 = v47;
      [v52 updatedCloudRecords:v47 completion:v42];
      _Block_release(v42);

      swift_unknownObjectRelease();
      (*(v32 + 8))(v48, v35);
    }

    swift_beginAccess();
    v45 = *(a1 + 16);
    *(a1 + 16) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1E46F69A4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, NSObject *a5)
{

  v9 = sub_1E470A0BC();
  v10 = sub_1E470B29C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1E4654D04(a2, a3, &v14);
    *(v11 + 12) = 2048;
    if (a4 >> 62)
    {
      v13 = sub_1E470B50C();
    }

    else
    {
      v13 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 14) = v13;

    _os_log_impl(&dword_1E45E0000, v9, v10, "BDSSyncEnginePipeline - processIncomingRecordChanges: [%s] Done processing %ld updates", v11, 0x16u);
    sub_1E4658A0C(v12);
    MEMORY[0x1E6917530](v12, -1, -1);
    MEMORY[0x1E6917530](v11, -1, -1);
  }

  else
  {
  }

  dispatch_group_leave(a5);
}

uint64_t sub_1E46F6B1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1E470A0DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v11 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v46 - v14;
  swift_beginAccess();
  v16 = *(a1 + 16);
  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v16 < 0)
  {
    v45 = *(a1 + 16);
  }

  result = sub_1E470B50C();
  if (result)
  {
LABEL_3:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = Strong;
      v54 = a3;
      v55 = v7;
      v20 = *(Strong + OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_observer);
      swift_beginAccess();
      v21 = *(a1 + 16);
      v22 = qword_1EE2AE3E8;
      v51 = v20;
      swift_unknownObjectRetain();
      v49 = v21;

      if (v22 != -1)
      {
        swift_once();
      }

      v23 = *(qword_1EE2AE3F0 + OBJC_IVAR____TtC13BookDataStore13BDSSyncEngine_persistFetchCoordinatorGroup);
      v24 = *(v8 + 16);
      v52 = v19;
      v48 = v24;
      v24(v15, &v19[OBJC_IVAR____TtC13BookDataStore21BDSSyncEnginePipeline_logger], v55);
      v50 = v23;
      dispatch_group_enter(v50);

      v25 = a4;
      v26 = sub_1E470A0BC();
      v27 = sub_1E470B29C();
      v53 = v25;

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v47 = v8;
        v30 = v29;
        aBlock[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_1E4654D04(v54, v53, aBlock);
        _os_log_impl(&dword_1E45E0000, v26, v27, "BDSSyncEnginePipeline - processIncomingRecordDeletions: [%s] Begin processing deletes", v28, 0xCu);
        sub_1E4658A0C(v30);
        v31 = v30;
        v8 = v47;
        MEMORY[0x1E6917530](v31, -1, -1);
        MEMORY[0x1E6917530](v28, -1, -1);
      }

      sub_1E45E2DE8(0, &qword_1ECF742F0, 0x1E695BA70);
      v32 = sub_1E470B0AC();

      v33 = v55;
      v48(v11, v15, v55);
      v34 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v35 = v8;
      v36 = (v9 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
      v38 = swift_allocObject();
      (*(v35 + 32))(v38 + v34, v11, v33);
      v39 = (v38 + v36);
      v40 = v53;
      *v39 = v54;
      v39[1] = v40;
      v41 = v50;
      *(v38 + v37) = v50;
      aBlock[4] = sub_1E4701680;
      aBlock[5] = v38;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E46C4624;
      aBlock[3] = &unk_1F5E67088;
      v42 = _Block_copy(aBlock);
      v43 = v41;

      [v51 removedCloudRecordsWithIDs:v32 completion:v42];
      _Block_release(v42);

      swift_unknownObjectRelease();
      (*(v35 + 8))(v15, v33);
    }

    swift_beginAccess();
    v44 = *(a1 + 16);
    *(a1 + 16) = MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1E46F6FDC(uint64_t a1, uint64_t a2, unint64_t a3, NSObject *a4)
{

  v7 = sub_1E470A0BC();
  v8 = sub_1E470B29C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1E4654D04(a2, a3, &v11);
    _os_log_impl(&dword_1E45E0000, v7, v8, "BDSSyncEnginePipeline - processIncomingRecordDeletions: [%s] Done processing deletes", v9, 0xCu);
    sub_1E4658A0C(v10);
    MEMORY[0x1E6917530](v10, -1, -1);
    MEMORY[0x1E6917530](v9, -1, -1);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1E46F7100(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (sub_1E470B3DC() == a2 && v5 == a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E470B84C();
  }

  return v7 & 1;
}

void *sub_1E46F7170(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = [*a1 recordName];
  v6 = sub_1E470AF1C();
  v8 = v7;

  v20[0] = 46;
  v20[1] = 0xE100000000000000;
  v19[2] = v20;
  result = sub_1E46FF390(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E4701C10, v19, v6, v8, v20);
  if (result[2])
  {
    v10 = result[4];
    v11 = result[5];
    v12 = result[6];
    v13 = result[7];

    v14 = MEMORY[0x1E6915CC0](v10, v11, v12, v13);
    v16 = v15;

    if (v14 == a2 && v16 == a3)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_1E470B84C();
    }

    return (v18 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E46F72AC(void **a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *a1;
  swift_beginAccess();
  v8 = v7;
  MEMORY[0x1E6915DB0]();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v11 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1E470B0DC();
  }

  sub_1E470B0FC();
  v9 = *(a2 + 16);
  swift_endAccess();
  if (v9 >> 62)
  {
    result = sub_1E470B50C();
    if (result < a3)
    {
      return result;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < a3)
    {
      return result;
    }
  }

  return a4();
}