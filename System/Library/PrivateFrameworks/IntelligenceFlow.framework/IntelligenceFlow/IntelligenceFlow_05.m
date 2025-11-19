uint64_t sub_1DD74BFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F238, &qword_1DD87DEB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1DD6FC560(v24, &qword_1ECD0F238, &qword_1DD87DEB0);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F058, type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F238, &qword_1DD87DEB0);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F238, &qword_1DD87DEB0);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F238, &qword_1DD87DEB0);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F238, &qword_1DD87DEB0);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD74C4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F240, &qword_1DD87DEB8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1DD6FC560(v24, &qword_1ECD0F240, &qword_1DD87DEB8);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F070, type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F240, &qword_1DD87DEB8);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F240, &qword_1DD87DEB8);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F240, &qword_1DD87DEB8);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F240, &qword_1DD87DEB8);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD74C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F248, &qword_1DD87DEC0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1DD6FC560(v24, &qword_1ECD0F248, &qword_1DD87DEC0);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F088, type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F248, &qword_1DD87DEC0);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F248, &qword_1DD87DEC0);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F248, &qword_1DD87DEC0);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F248, &qword_1DD87DEC0);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD74CEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F250, &qword_1DD87DEC8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1DD6FC560(v24, &qword_1ECD0F250, &qword_1DD87DEC8);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F0A0, type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F250, &qword_1DD87DEC8);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F250, &qword_1DD87DEC8);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F250, &qword_1DD87DEC8);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F250, &qword_1DD87DEC8);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD74D3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F258, &qword_1DD87DED0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1DD6FC560(v24, &qword_1ECD0F258, &qword_1DD87DED0);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F0B8, type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F258, &qword_1DD87DED0);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F258, &qword_1DD87DED0);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F258, &qword_1DD87DED0);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F258, &qword_1DD87DED0);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD74D8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F260, &qword_1DD87DED8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1DD6FC560(v24, &qword_1ECD0F260, &qword_1DD87DED8);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F0D0, type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F260, &qword_1DD87DED8);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F260, &qword_1DD87DED8);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F260, &qword_1DD87DED8);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F260, &qword_1DD87DED8);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD74DDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  found = type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(0);
  v6 = *(*(found - 8) + 64);
  MEMORY[0x1EEE9AC00](found);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F268, &qword_1DD87DEE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, found);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1DD6FC560(v24, &qword_1ECD0F268, &qword_1DD87DEE0);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, found);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F0E8, type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F268, &qword_1DD87DEE0);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, found) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F268, &qword_1DD87DEE0);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F268, &qword_1DD87DEE0);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F268, &qword_1DD87DEE0);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD74E2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F270, &qword_1DD87DEE8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1DD6FC560(v24, &qword_1ECD0F270, &qword_1DD87DEE8);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F100, type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F270, &qword_1DD87DEE8);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F270, &qword_1DD87DEE8);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F270, &qword_1DD87DEE8);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F270, &qword_1DD87DEE8);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD74E798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F278, &qword_1DD87DEF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1DD6FC560(v24, &qword_1ECD0F278, &qword_1DD87DEF0);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1EE013E60, type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F278, &qword_1DD87DEF0);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F278, &qword_1DD87DEF0);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F278, &qword_1DD87DEF0);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F278, &qword_1DD87DEF0);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t sub_1DD74EC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v5 = type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1DD710A9C(&qword_1ECD0F280, &qword_1DD87DEF8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v30 - v23;
  sub_1DD6E5E68(&v30 - v23, 1, 1, v5);
  v31 = a1;
  sub_1DD7533B8();
  v32 = sub_1DD6E5ED0(v12, 1, v13);
  v33 = v13;
  if (v32 == 1)
  {
    sub_1DD6FC560(v12, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    sub_1DD753308();
    sub_1DD753308();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1DD6FC560(v24, &qword_1ECD0F280, &qword_1DD87DEF8);
      sub_1DD753308();
      sub_1DD753308();
      sub_1DD6E5E68(v24, 0, 1, v5);
    }

    else
    {
      sub_1DD753360(v16, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
    }
  }

  sub_1DD753414(&qword_1ECD0F120, type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate);
  v25 = v35;
  sub_1DD874A20();
  if (v25)
  {
    v26 = v24;
    return sub_1DD6FC560(v26, &qword_1ECD0F280, &qword_1DD87DEF8);
  }

  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v21, 1, v5) == 1)
  {
    sub_1DD6FC560(v24, &qword_1ECD0F280, &qword_1DD87DEF8);
    v26 = v21;
    return sub_1DD6FC560(v26, &qword_1ECD0F280, &qword_1DD87DEF8);
  }

  sub_1DD753308();
  if (v32 != 1)
  {
    sub_1DD8749B0();
  }

  v28 = v33;
  sub_1DD6FC560(v24, &qword_1ECD0F280, &qword_1DD87DEF8);
  v29 = v31;
  sub_1DD6FC560(v31, &qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD753308();
  swift_storeEnumTagMultiPayload();
  return sub_1DD6E5E68(v29, 0, 1, v28);
}

uint64_t ResponseGenerationOverrides_Rule.Predicate.traverse<A>(visitor:)()
{
  sub_1DD6FAAA0();
  v2 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  sub_1DD6DEA10(v2);
  v4 = *(v3 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6E3824();
  v6 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  sub_1DD6E4068(v6);
  if (!v7)
  {
    sub_1DD6ED130();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v43 = sub_1DD6DF35C();
        sub_1DD74F548(v43, v44, v45, v46);
        goto LABEL_17;
      case 2:
        v31 = sub_1DD6DF35C();
        sub_1DD74F750(v31, v32, v33, v34);
        goto LABEL_17;
      case 3:
        v35 = sub_1DD6DF35C();
        sub_1DD74F958(v35, v36, v37, v38);
        goto LABEL_17;
      case 4:
        v19 = sub_1DD6DF35C();
        sub_1DD74FB60(v19, v20, v21, v22);
        goto LABEL_17;
      case 5:
        v47 = sub_1DD6DF35C();
        sub_1DD74FD68(v47, v48, v49, v50);
        goto LABEL_17;
      case 6:
        v55 = sub_1DD6DF35C();
        sub_1DD74FF70(v55, v56, v57, v58);
        goto LABEL_17;
      case 7:
        v39 = sub_1DD6DF35C();
        sub_1DD750178(v39, v40, v41, v42);
        goto LABEL_17;
      case 8:
        v64 = sub_1DD6DF35C();
        sub_1DD750380(v64, v65, v66, v67);
        goto LABEL_21;
      case 9:
        v27 = sub_1DD6DF35C();
        sub_1DD750588(v27, v28, v29, v30);
        goto LABEL_21;
      case 10:
        v60 = sub_1DD6DF35C();
        sub_1DD750790(v60, v61, v62, v63);
        goto LABEL_21;
      case 11:
        v15 = sub_1DD6DF35C();
        sub_1DD750998(v15, v16, v17, v18);
        goto LABEL_21;
      case 12:
        v23 = sub_1DD6DF35C();
        sub_1DD750BA0(v23, v24, v25, v26);
        goto LABEL_21;
      case 13:
        v51 = sub_1DD6DF35C();
        sub_1DD750DA8(v51, v52, v53, v54);
LABEL_21:
        if (v0)
        {
          sub_1DD6E5F80();
          return sub_1DD753360(v1, v68);
        }

        sub_1DD6E5F80();
        sub_1DD753360(v1, v69);
        break;
      default:
        v11 = sub_1DD6DF35C();
        sub_1DD74F344(v11, v12, v13, v14);
LABEL_17:
        sub_1DD6E5F80();
        result = sub_1DD753360(v1, v59);
        if (!v0)
        {
          break;
        }

        return result;
    }
  }

  v8 = *(type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(0) + 20);
  return sub_1DD6FBDBC();
}

uint64_t sub_1DD74F344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_AppPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F018, type metadata accessor for ResponseGenerationOverrides_AppPredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_AppPredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD74F548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_ToolPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1EE014958, type metadata accessor for ResponseGenerationOverrides_ToolPredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_ToolPredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD74F750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_ActionPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F038, type metadata accessor for ResponseGenerationOverrides_ActionPredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_ActionPredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD74F958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1EE014200, type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD74FB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F058, type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD74FD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F070, type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD74FF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F088, type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD750178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F0A0, type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD750380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F0B8, type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD750588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F0D0, type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD750790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  found = type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(0);
  v9 = *(*(found - 8) + 64);
  MEMORY[0x1EEE9AC00](found);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F0E8, type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD750998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F100, type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD750BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1EE013E60, type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD750DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E2B8, &qword_1DD8781D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  v12 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(0);
  if (sub_1DD6E5ED0(v7, 1, v12) == 1)
  {
    result = sub_1DD6FC560(v7, &qword_1ECD0E2B8, &qword_1DD8781D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1DD753308();
      sub_1DD753414(&qword_1ECD0F120, type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate);
      sub_1DD874AD0();
      return sub_1DD753360(v11, type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate);
    }

    result = sub_1DD753360(v7, type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD751234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD753414(&qword_1ECD0F140, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD7512B4(uint64_t a1)
{
  v2 = sub_1DD753414(&qword_1EE014E08, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD751324()
{
  sub_1DD753414(&qword_1EE014E08, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate);

  return sub_1DD874A70();
}

unint64_t sub_1DD7513A4()
{
  result = qword_1EE014B18;
  if (!qword_1EE014B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE014B18);
  }

  return result;
}

unint64_t sub_1DD75175C()
{
  result = qword_1EE014B10;
  if (!qword_1EE014B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE014B10);
  }

  return result;
}

unint64_t sub_1DD7517B4()
{
  result = qword_1EE014AF8;
  if (!qword_1EE014AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE014AF8);
  }

  return result;
}

uint64_t sub_1DD753308()
{
  v2 = sub_1DD6E0CA8();
  v4 = v3(v2);
  sub_1DD6DE1C4(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1DD753360(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD7533B8()
{
  sub_1DD6E1F34();
  v4 = sub_1DD710A9C(v2, v3);
  sub_1DD6DE1C4(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1DD753414(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD75362C()
{

  return sub_1DD8750F0();
}

uint64_t sub_1DD75364C()
{

  return sub_1DD8750F0();
}

uint64_t sub_1DD753678()
{

  return sub_1DD753414(v1, v0);
}

uint64_t sub_1DD753698()
{

  return sub_1DD8749A0();
}

uint64_t sub_1DD7536B0()
{

  return sub_1DD753360(v1, v0);
}

uint64_t sub_1DD7536CC(uint64_t a1)
{
  v2 = *(a1 + 20);

  return sub_1DD874910();
}

uint64_t sub_1DD7536E4()
{

  return sub_1DD753360(v1, v0);
}

uint64_t sub_1DD753744()
{

  return sub_1DD7533B8();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverrides.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = v0 + *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverrides(v1) + 20);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverrides.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverrides(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v1);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v3 = v2[8];
  v4 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  sub_1DD6E3850(v0 + v3, v5, v6, v4);
  v7 = v2[9];
  v8 = type metadata accessor for OverridesCommon_OverrideDialog(0);
  sub_1DD6E3850(v0 + v7, v9, v10, v8);
  v11 = (v0 + v2[10]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v0 + v2[11]);
  *v12 = 0;
  v12[1] = 0;
  v13 = v0 + v2[12];
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.unknownFields.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0) + 48);
  v2 = sub_1DD874910();
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 16);
  v5 = sub_1DD6E0838();

  return v6(v5);
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.unknownFields.setter()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0) + 48);
  v2 = sub_1DD874910();
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 40);
  v5 = sub_1DD6E26D8();

  return v6(v5);
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0) + 48);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_IntPredicate.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = v0 + *(type metadata accessor for ResponseGenerationOverrides_IntPredicate(v1) + 24);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = 0;
  *(v0 + 4) = 0;
  return result;
}

uint64_t ResponseGenerationOverrides_IntPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_IntPredicate(v0) + 24);
  return sub_1DD6DDF9C();
}

IntelligenceFlow::ResponseGenerationOverrides_IntPredicate::Operator_optional __swiftcall ResponseGenerationOverrides_IntPredicate.Operator.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t ResponseGenerationOverrides_ListPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ListPredicate(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD753BB0()
{
  v1 = sub_1DD6FC430();
  v3 = v2(v1);
  v4 = *(v3 + 24);
  v5 = type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  sub_1DD6E3850(v0 + v4, v6, v7, v5);
  v8 = v0 + *(v3 + 28);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = MEMORY[0x1E69E7CC0];
  *(v0 + 8) = 0;
  return result;
}

uint64_t sub_1DD753C50()
{
  v0 = sub_1DD6FC430();
  v2 = *(v1(v0) + 28);
  v3 = sub_1DD874910();
  sub_1DD6DE1C4(v3);
  v5 = *(v4 + 16);
  v6 = sub_1DD6E0838();

  return v7(v6);
}

uint64_t sub_1DD753CD4()
{
  v0 = sub_1DD6DE290();
  v2 = *(v1(v0) + 28);
  v3 = sub_1DD874910();
  sub_1DD6DE1C4(v3);
  v5 = *(v4 + 40);
  v6 = sub_1DD6E26D8();

  return v7(v6);
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD753E08()
{
  v0 = sub_1DD6FC430();
  v2 = *(v1(v0) + 20);
  v3 = sub_1DD874910();
  sub_1DD6DE1C4(v3);
  v5 = *(v4 + 16);
  v6 = sub_1DD6E0838();

  return v7(v6);
}

uint64_t sub_1DD753E8C()
{
  v0 = sub_1DD6DE290();
  v2 = *(v1(v0) + 20);
  v3 = sub_1DD874910();
  sub_1DD6DE1C4(v3);
  v5 = *(v4 + 40);
  v6 = sub_1DD6E26D8();

  return v7(v6);
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = v0 + *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate(v1) + 20);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  return result;
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD75405C()
{
  v2 = sub_1DD6E1118();
  v3(v2);
  v4 = sub_1DD6FF79C();
  v8 = sub_1DD6DEA4C(v4, v5, v6, v7);
  v9 = v1 + *(v0(v8) + 20);
  return _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7541E8()
{
  v0 = sub_1DD6FC430();
  v2 = *(v1(v0) + 24);
  v3 = sub_1DD874910();
  sub_1DD6DE1C4(v3);
  v5 = *(v4 + 16);
  v6 = sub_1DD6E0838();

  return v7(v6);
}

uint64_t sub_1DD75426C()
{
  v0 = sub_1DD6DE290();
  v2 = *(v1(v0) + 24);
  v3 = sub_1DD874910();
  sub_1DD6DE1C4(v3);
  v5 = *(v4 + 40);
  v6 = sub_1DD6E26D8();

  return v7(v6);
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_AppPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_AppPredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ToolPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ToolPredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ActionPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ActionPredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD754590@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  a1(0);
  v7 = sub_1DD6F3804();
  v11 = sub_1DD6DEA4C(v7, v8, v9, v10);
  v12 = a2(v11);
  v13 = *(v12 + 20);
  v14 = a3(0);
  sub_1DD6E3850(a4 + v13, v15, v16, v14);
  v17 = a4 + *(v12 + 24);
  return _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
}

uint64_t ResponseGenerationOverrides_ActionSuccessOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t _s16IntelligenceFlow45ResponseGenerationOverrides_KeyValuePredicateV0fH0V03AnygH0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0()
{
  sub_1DD6E0A5C();
  v0 = sub_1DD874910();
  sub_1DD6DE1C4(v0);
  v2 = *(v1 + 16);
  v3 = sub_1DD6DDEFC();

  return v4(v3);
}

uint64_t _s16IntelligenceFlow45ResponseGenerationOverrides_KeyValuePredicateV0fH0V03AnygH0V13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0()
{
  sub_1DD6DE290();
  v1 = sub_1DD874910();
  sub_1DD6DE1C4(v1);
  v3 = *(v2 + 40);
  v4 = sub_1DD6E492C();

  return v5(v4, v0);
}

uint64_t ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD7549B8()
{
  v2 = sub_1DD6E1118();
  v4 = v3(v2);
  *v1 = 0;
  v1[1] = 0;
  v5 = *(v4 + 20);
  v6 = v0(0);
  sub_1DD6E3850(v1 + v5, v7, v8, v6);
  v9 = v1 + *(v4 + 24);
  return _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
}

uint64_t ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD754C38()
{
  v1 = sub_1DD6FC430();
  v3 = v2(v1);
  *v0 = 0;
  v0[1] = 0;
  v4 = v0 + *(v3 + 20);
  return _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
}

uint64_t ResponseGenerationOverrides_ActionRequirementOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_FailureOutcomePredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_Rule.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = v0 + *(type metadata accessor for ResponseGenerationOverrides_Rule(v1) + 32);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  v4 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v4;
  v0[2] = v4;
  v0[3] = v4;
  return result;
}

uint64_t ResponseGenerationOverrides_Rule.unknownFields.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_Rule(v0) + 32);
  v2 = sub_1DD874910();
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 16);
  v5 = sub_1DD6E0838();

  return v6(v5);
}

uint64_t ResponseGenerationOverrides_Rule.unknownFields.setter()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_Rule(v0) + 32);
  v2 = sub_1DD874910();
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 40);
  v5 = sub_1DD6E26D8();

  return v6(v5);
}

uint64_t ResponseGenerationOverrides_Rule.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_Rule(v0) + 32);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_Rule.Predicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_Rule.Predicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverrides.overrides.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverrides.init(overrides:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverrides(0) + 20);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a2 = a1;
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1DD6DDEFC();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.id.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.rules.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1DD6DDEFC();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.name.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.context.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0) + 32);
  return sub_1DD719110();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.context.setter()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0) + 32);
  return sub_1DD73BB98();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.context.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0) + 32);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.overrideDialog.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0) + 36);
  return sub_1DD719110();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.overrideDialog.setter()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0) + 36);
  return sub_1DD73BB98();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.overrideDialog.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0) + 36);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.radarID.getter()
{
  v1 = (v0 + *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return sub_1DD6DDEFC();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.radarID.setter()
{
  sub_1DD6DE304();
  v3 = (v1 + *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0) + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.radarID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0) + 40);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.testID.getter()
{
  v1 = (v0 + *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return sub_1DD6DDEFC();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.testID.setter()
{
  sub_1DD6DE304();
  v3 = (v1 + *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0) + 44));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.testID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(v0) + 44);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_DialogGenerationOverride.init(id:name:disabled:context:rules:overrideDialog:radarID:testID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = type metadata accessor for ResponseGenerationOverrides_DialogGenerationOverride(0);
  v17 = v16[8];
  v18 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  sub_1DD6E3850(a7 + v17, v19, v20, v18);
  v21 = v16[9];
  v22 = type metadata accessor for OverridesCommon_OverrideDialog(0);
  sub_1DD6E3850(a7 + v21, v23, v24, v22);
  v25 = (a7 + v16[10]);
  v26 = (a7 + v16[11]);
  v27 = a7 + v16[12];
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 16) = a5;
  sub_1DD73BB98();
  *(a7 + 24) = a6;
  result = sub_1DD73BB98();
  *v25 = a8;
  v25[1] = a9;
  *v26 = a10;
  v26[1] = a11;
  return result;
}

uint64_t sub_1DD755784@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseGenerationOverrides_IntPredicate.Operator.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD7557B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD7513A4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t ResponseGenerationOverrides_IntPredicate.init(operator:value:)@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a3 + *(type metadata accessor for ResponseGenerationOverrides_IntPredicate(0) + 24);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a3 = v5;
  *(a3 + 4) = a2;
  return result;
}

uint64_t ResponseGenerationOverrides_ListPredicate.size.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ListPredicate(v0) + 24);
  return sub_1DD6DDF9C();
}

uint64_t sub_1DD755984()
{
  v0 = sub_1DD6FC430();
  v2 = *(v1(v0) + 24);
  return sub_1DD719110();
}

uint64_t sub_1DD7559E4()
{
  v0 = sub_1DD6DE290();
  v2 = *(v1(v0) + 24);
  return sub_1DD73BB98();
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.size.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate(v0) + 24);
  return sub_1DD6DDF9C();
}

void static ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v25 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.ExactValuePredicate(0);
  v2 = sub_1DD6DE1C4(v25);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DE4A8();
  v7 = (v6 - v5);
  v8 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate.AnyValuePredicate(0);
  v9 = sub_1DD6DEA10(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  v12 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_KeyPredicateEnum(0);
  v13 = sub_1DD6DE1C4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DF0CC();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1DD710A9C(&qword_1ECD0F2A0, &unk_1DD87DF40);
  v18 = sub_1DD6DEA10(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6E17C8();
  v22 = *(v21 + 56);
  sub_1DD7562FC();
  sub_1DD7562FC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DD6ED260();
    sub_1DD7562FC();
    if (sub_1DD6E4090() != 1)
    {
      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD874910();
      sub_1DD73C490();
      sub_1DD7598D0();
      sub_1DD755E70();
      sub_1DD755E70();
      sub_1DD6E2158();
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  sub_1DD6ED260();
  sub_1DD7562FC();
  if (sub_1DD6E4090() != 1)
  {
LABEL_10:
    sub_1DD755E70();
    sub_1DD6FC560(v0, &qword_1ECD0F2A0, &unk_1DD87DF40);
    goto LABEL_13;
  }

  sub_1DD6ED478();
  sub_1DD755EC4();
  v23 = *v1 == *v7 && v1[1] == v7[1];
  if (v23 || (sub_1DD875A30() & 1) != 0)
  {
    v24 = *(v25 + 20);
    sub_1DD874910();
    sub_1DD73C490();
    sub_1DD6FA6B0();
  }

  sub_1DD6FBDE0();
  sub_1DD755E70();
  sub_1DD6E8794();
  sub_1DD6E2158();
LABEL_13:
  sub_1DD6DFED0();
}

uint64_t sub_1DD755E70()
{
  v1 = sub_1DD6DE290();
  v3 = v2(v1);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DD755EC4()
{
  sub_1DD6E1F34();
  v2 = v1(0);
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 32);
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return v0;
}

void static ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v25 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v2 = sub_1DD6DE1C4(v25);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DD6DE4A8();
  v7 = (v6 - v5);
  v8 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate.AnyValuePredicate(0);
  v9 = sub_1DD6DEA10(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DE4A8();
  v12 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ResponseGenerationOverrides_ValuePredicateEnum(0);
  v13 = sub_1DD6DE1C4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DF0CC();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1DD710A9C(&qword_1ECD0F2A8, &unk_1DD87DF50);
  v18 = sub_1DD6DEA10(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6E17C8();
  v22 = *(v21 + 56);
  sub_1DD7562FC();
  sub_1DD7562FC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DD6ED260();
    sub_1DD7562FC();
    if (sub_1DD6E4090() != 1)
    {
      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD874910();
      sub_1DD73C490();
      sub_1DD7598D0();
      sub_1DD755E70();
      sub_1DD755E70();
      sub_1DD6E0868();
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  sub_1DD6ED260();
  sub_1DD7562FC();
  if (sub_1DD6E4090() != 1)
  {
LABEL_11:
    sub_1DD755E70();
    sub_1DD6FC560(v0, &qword_1ECD0F2A8, &unk_1DD87DF50);
    goto LABEL_14;
  }

  sub_1DD6ED478();
  sub_1DD755EC4();
  if (*v1 == *v7)
  {
    v23 = *(v1 + 1) == *(v7 + 1) && *(v1 + 2) == *(v7 + 2);
    if (v23 || (sub_1DD875A30() & 1) != 0)
    {
      v24 = *(v25 + 24);
      sub_1DD874910();
      sub_1DD73C490();
      sub_1DD6FA6B0();
    }
  }

  sub_1DD6EE21C();
  sub_1DD755E70();
  sub_1DD6E8794();
  sub_1DD6E0868();
LABEL_14:
  sub_1DD6DFED0();
}

uint64_t sub_1DD7562FC()
{
  sub_1DD6E1F34();
  v2 = v1(0);
  sub_1DD6DE1C4(v2);
  v4 = *(v3 + 16);
  v5 = sub_1DD6DDEFC();
  v6(v5);
  return v0;
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate.valuePredicate.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate.init(keyPredicate:valuePredicate:)()
{
  v1 = sub_1DD6DFF04();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.KeyPredicate(v1);
  v2 = sub_1DD6F3804();
  v6 = sub_1DD6DEA4C(v2, v3, v4, v5);
  v7 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ItemPredicate(v6);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate.ValuePredicate(0);
  sub_1DD6E3850(v0 + v8, v10, v11, v9);
  v12 = v0 + *(v7 + 24);
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  sub_1DD73BB98();
  return sub_1DD73BB98();
}

uint64_t sub_1DD756518@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v7 = a3(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  sub_1DD6E3850(a4 + v8, v10, v11, v9);
  v12 = a4 + *(v7 + 28);
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a4 = a1;
  result = sub_1DD73BB98();
  *(a4 + 8) = a2;
  return result;
}

uint64_t sub_1DD7566BC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  v8 = sub_1DD6DEA4C(a3, v6, v7, v5);
  v9 = a3 + *(a2(v8) + 20);
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  return sub_1DD73BB98();
}

uint64_t ResponseGenerationOverrides_ActionSuccessOutcomePredicate.returnedCollectionSize.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ActionSuccessOutcomePredicate.init(manifestValues:returnedCollectionSize:)()
{
  v1 = sub_1DD6DFF04();
  type metadata accessor for ResponseGenerationOverrides_KeyValuePredicate(v1);
  v2 = sub_1DD6F3804();
  v6 = sub_1DD6DEA4C(v2, v3, v4, v5);
  v7 = type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(v6);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for ResponseGenerationOverrides_IntPredicate(0);
  sub_1DD6E3850(v0 + v8, v10, v11, v9);
  v12 = v0 + *(v7 + 24);
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  sub_1DD73BB98();
  return sub_1DD73BB98();
}

uint64_t sub_1DD756AD8()
{
  v3 = sub_1DD6DFF04();
  v5 = v2 + *(v4(v3) + 20);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v2 = v1;
  v2[1] = v0;
  return result;
}

uint64_t ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate.parameterValue.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate.parameterValues.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

void sub_1DD756CF0()
{
  sub_1DD6DEB38();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  v10 = *(v9 + 20);
  v11 = v1(0);
  sub_1DD6E3850(v7 + v10, v12, v13, v11);
  v14 = v7 + *(v9 + 24);
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v7 = v5;
  v7[1] = v3;
  sub_1DD73BB98();
  sub_1DD6DFED0();
}

uint64_t ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate.parameterValue.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate.parameterValue.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t ResponseGenerationOverrides_FailureOutcomePredicate.failure.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1DD6DDEFC();
}

uint64_t ResponseGenerationOverrides_FailureOutcomePredicate.failure.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseGenerationOverrides_Rule.positiveDisjunction.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t ResponseGenerationOverrides_Rule.negativeConjunction.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void static ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DEB38();
  a19 = v21;
  a20 = v22;
  v177 = v23;
  v178 = v24;
  v154 = type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate(0);
  v25 = sub_1DD6DE1C4(v154);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6DDEE8();
  v168 = v28;
  v29 = sub_1DD6E9A9C();
  v30 = type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate(v29);
  v31 = sub_1DD6DEA10(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1DD6DDEE8();
  v166 = v34;
  v35 = sub_1DD6E9A9C();
  v153 = type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate(v35);
  v36 = sub_1DD6DE1C4(v153);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1DD6DDEE8();
  v167 = v39;
  v40 = sub_1DD6E9A9C();
  found = type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(v40);
  v42 = sub_1DD6DEA10(found);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD6DDEE8();
  v165 = v45;
  v46 = sub_1DD6E9A9C();
  v47 = type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(v46);
  v48 = sub_1DD6DEA10(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1DD6DDEE8();
  v164 = v51;
  v52 = sub_1DD6E9A9C();
  v53 = type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(v52);
  v54 = sub_1DD6DEA10(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1DD6DDEE8();
  v162 = v57;
  v58 = sub_1DD6E9A9C();
  v59 = type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(v58);
  v60 = sub_1DD6DEA10(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  sub_1DD6DDEE8();
  v161 = v63;
  v64 = sub_1DD6E9A9C();
  v152 = type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate(v64);
  v65 = sub_1DD6DE1C4(v152);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  sub_1DD6DDEE8();
  v163 = v68;
  v69 = sub_1DD6E9A9C();
  v70 = type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate(v69);
  v71 = sub_1DD6DEA10(v70);
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v71);
  sub_1DD6DDEE8();
  v160 = v74;
  v75 = sub_1DD6E9A9C();
  v76 = type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate(v75);
  v77 = sub_1DD6DEA10(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  sub_1DD6DDEE8();
  v159 = v80;
  v81 = sub_1DD6E9A9C();
  v82 = type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(v81);
  v83 = sub_1DD6DEA10(v82);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  sub_1DD6DDEE8();
  v158 = v86;
  v87 = sub_1DD6E9A9C();
  v88 = type metadata accessor for ResponseGenerationOverrides_ActionPredicate(v87);
  v89 = sub_1DD6DEA10(v88);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  sub_1DD6DDEE8();
  v157 = v92;
  v93 = sub_1DD6E9A9C();
  v94 = type metadata accessor for ResponseGenerationOverrides_ToolPredicate(v93);
  v95 = sub_1DD6DEA10(v94);
  v97 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  sub_1DD6DDEE8();
  v156 = v98;
  v99 = sub_1DD6E9A9C();
  v100 = type metadata accessor for ResponseGenerationOverrides_AppPredicate(v99);
  v101 = sub_1DD6DEA10(v100);
  v103 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v101);
  sub_1DD6DDEE8();
  v155 = v104;
  v105 = sub_1DD6E9A9C();
  v106 = type metadata accessor for ResponseGenerationOverrides_Rule.ResponseGenerationOverrides_PredicateEnum(v105);
  v107 = sub_1DD6DE1C4(v106);
  v109 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v176 = &v152 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v111);
  sub_1DD6F1780();
  v173 = v112;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v113);
  sub_1DD6F1780();
  v175 = v114;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v115);
  sub_1DD6F1780();
  v172 = v116;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v117);
  sub_1DD6F1780();
  v171 = v118;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v119);
  sub_1DD6F1780();
  v170 = v120;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v121);
  sub_1DD6F1780();
  v169 = v122;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v123);
  sub_1DD6F1780();
  v174 = v124;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v125);
  MEMORY[0x1EEE9AC00](v126);
  MEMORY[0x1EEE9AC00](v127);
  MEMORY[0x1EEE9AC00](v128);
  MEMORY[0x1EEE9AC00](v129);
  MEMORY[0x1EEE9AC00](v130);
  v131 = sub_1DD710A9C(&qword_1ECD0F2B0, &qword_1DD87DF68);
  v132 = sub_1DD6DEA10(v131);
  v134 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v132);
  sub_1DD6E17C8();
  v136 = *(v135 + 56);
  sub_1DD7562FC();
  v177 = v136;
  sub_1DD7562FC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 1)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      static ResponseGenerationOverrides_ToolPredicate.== infix(_:_:)();
      sub_1DD755E70();
      goto LABEL_52;
    case 2u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 2)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      static ResponseGenerationOverrides_ActionPredicate.== infix(_:_:)();
      sub_1DD755E70();
      goto LABEL_52;
    case 3u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 3)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0C60();
      static ResponseGenerationOverrides_ActionSuccessOutcomePredicate.== infix(_:_:)();
      goto LABEL_51;
    case 4u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 4)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD874910();
      sub_1DD73C490();
      sub_1DD6F3804();
      sub_1DD8750F0();
      sub_1DD755E70();
      goto LABEL_52;
    case 5u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_54;
      }

      sub_1DD755EC4();
      static ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate.== infix(_:_:)();
      sub_1DD755E70();
      sub_1DD755E70();
      sub_1DD6E52A4();
      goto LABEL_53;
    case 6u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 6)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0CD8();
      if (!v148)
      {
        if (v147)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }

      if (v147)
      {
        sub_1DD6E6368();
        v151 = v141 && v149 == v150;
        if (v151 || (sub_1DD875A30() & 1) != 0)
        {
LABEL_64:
          sub_1DD7029E4(&a13);
          sub_1DD73C490();
          sub_1DD6ED13C();
        }
      }

LABEL_65:
      sub_1DD755E70();
      sub_1DD755E70();
      sub_1DD6E52A4();
      sub_1DD755E70();
LABEL_55:
      sub_1DD6DFED0();
      return;
    case 7u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 7)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0C60();
      static ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate.== infix(_:_:)();
      goto LABEL_51;
    case 8u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 8)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0C60();
      static ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate.== infix(_:_:)();
      goto LABEL_51;
    case 9u:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 9)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0C60();
      static ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate.== infix(_:_:)();
      goto LABEL_51;
    case 0xAu:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 10)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0C60();
      static ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate.== infix(_:_:)();
      goto LABEL_51;
    case 0xBu:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 11)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0CD8();
      if (v138)
      {
        if (!v137)
        {
          goto LABEL_65;
        }

        sub_1DD6E6368();
        v141 = v141 && v139 == v140;
        if (!v141 && (sub_1DD875A30() & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      else if (v137)
      {
        goto LABEL_65;
      }

      sub_1DD7029E4(&a14);
      sub_1DD73C490();
      sub_1DD6ED13C();
      goto LABEL_65;
    case 0xCu:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 12)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0C60();
      static ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate.== infix(_:_:)();
LABEL_51:
      sub_1DD755E70();
      goto LABEL_52;
    case 0xDu:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938() != 13)
      {
        goto LABEL_54;
      }

      sub_1DD6ED478();
      sub_1DD755EC4();
      sub_1DD6E0CD8();
      if (v143)
      {
        if (!v142)
        {
          goto LABEL_65;
        }

        sub_1DD6E6368();
        v146 = v141 && v144 == v145;
        if (!v146 && (sub_1DD875A30() & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      else if (v142)
      {
        goto LABEL_65;
      }

      sub_1DD7029E4(&a15);
      sub_1DD73C490();
      sub_1DD6ED13C();
      goto LABEL_65;
    default:
      sub_1DD6E1460();
      sub_1DD7562FC();
      if (sub_1DD6E4938())
      {
LABEL_54:
        sub_1DD755E70();
        sub_1DD6FC560(v20, &qword_1ECD0F2B0, &qword_1DD87DF68);
      }

      else
      {
        sub_1DD6ED478();
        sub_1DD755EC4();
        static ResponseGenerationOverrides_AppPredicate.== infix(_:_:)();
        sub_1DD755E70();
LABEL_52:
        sub_1DD755E70();
        sub_1DD6E52A4();
LABEL_53:
        sub_1DD755E70();
      }

      goto LABEL_55;
  }
}

uint64_t ResponseGenerationOverrides_Rule.init(positiveConjunction:positiveDisjunction:negativeConjunction:negativeDisjunction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = a5 + *(type metadata accessor for ResponseGenerationOverrides_Rule(0) + 32);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

unint64_t sub_1DD758084()
{
  result = qword_1EE014B00;
  if (!qword_1EE014B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE014B00);
  }

  return result;
}

unint64_t sub_1DD7580DC()
{
  result = qword_1ECD0F2B8;
  if (!qword_1ECD0F2B8)
  {
    sub_1DD717E88(&qword_1ECD0F2C0, &qword_1DD87E010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F2B8);
  }

  return result;
}

uint64_t sub_1DD7581C4()
{
  sub_1DD75835C(319, &qword_1EE0139D8, type metadata accessor for ResponseGenerationOverrides_Rule, MEMORY[0x1E69E62F8]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1DD732A5C();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1DD75835C(319, &qword_1ECD0F2C8, type metadata accessor for OverridesCommon_ContextPredicate, MEMORY[0x1E69E6720]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_1DD75835C(319, &qword_1ECD0F2D0, type metadata accessor for OverridesCommon_OverrideDialog, MEMORY[0x1E69E6720]);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        v1 = sub_1DD874910();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_1DD75835C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DD7583E8()
{
  result = sub_1DD874910();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ResponseGenerationOverrides_IntPredicate.Operator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResponseGenerationOverrides_IntPredicate.Operator(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD75862C()
{
  sub_1DD6DDFA8();
  if (v3)
  {
    return sub_1DD6DDFD0(*v1);
  }

  sub_1DD7598B0();
  v5 = sub_1DD710A9C(&qword_1ECD0EE40, &unk_1DD87DF30);
  sub_1DD6E0A68(v5);
  if (*(v6 + 84) == v0)
  {
    sub_1DD6EE76C();
  }

  else
  {
    sub_1DD874910();
    v7 = *(v2 + 28);
  }

  v8 = sub_1DD6E6C88(v7);

  return sub_1DD6E5ED0(v8, v9, v10);
}

void sub_1DD7586F4()
{
  sub_1DD6E6A60();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    sub_1DD6E1C08();
    v5 = sub_1DD710A9C(&qword_1ECD0EE40, &unk_1DD87DF30);
    sub_1DD6E0A68(v5);
    if (*(v6 + 84) == v3)
    {
      sub_1DD700BF0();
    }

    else
    {
      sub_1DD874910();
      v7 = *(v2 + 28);
    }

    v8 = sub_1DD6DE524(v7);

    sub_1DD6E5E68(v8, v9, v10, v11);
  }
}

void sub_1DD7587C8()
{
  sub_1DD6DED68();
  sub_1DD75835C(319, v0, v1, MEMORY[0x1E69E62F8]);
  if (v2 <= 0x3F)
  {
    sub_1DD75835C(319, qword_1EE014AA0, type metadata accessor for ResponseGenerationOverrides_IntPredicate, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1DD874910();
      if (v4 <= 0x3F)
      {
        sub_1DD6E0DC4();
        swift_cvw_initStructMetadataWithLayoutString();
        sub_1DD6F09E0();
      }
    }
  }
}

uint64_t sub_1DD758A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = sub_1DD6F44C8();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return sub_1DD6F09E0();
    }
  }

  return result;
}

uint64_t sub_1DD758BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  sub_1DD6E1F34();
  v14 = sub_1DD710A9C(v12, v13);
  sub_1DD6E0A68(v14);
  if (*(v15 + 84) == v7)
  {
    v16 = sub_1DD6E492C();
  }

  else
  {
    v18 = sub_1DD710A9C(a6, a7);
    v19 = sub_1DD6E0A68(v18);
    if (*(v20 + 84) == v7)
    {
      v17 = v19;
      v21 = *(a3 + 20);
    }

    else
    {
      sub_1DD874910();
      sub_1DD6EE76C();
    }

    v16 = v8 + v21;
  }

  return sub_1DD6E5ED0(v16, v7, v17);
}

uint64_t sub_1DD758CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  sub_1DD6E1C08();
  sub_1DD6E1F34();
  v15 = sub_1DD710A9C(v13, v14);
  sub_1DD6E0A68(v15);
  if (*(v16 + 84) == v10)
  {
    v17 = sub_1DD6FF79C();
  }

  else
  {
    v19 = sub_1DD710A9C(a7, a8);
    sub_1DD6E0A68(v19);
    if (*(v20 + 84) == v10)
    {
      sub_1DD6FF8E8();
    }

    else
    {
      sub_1DD874910();
      sub_1DD700BF0();
    }

    v17 = v9 + v21;
  }

  return sub_1DD6E5E68(v17, v8, v8, v18);
}

void sub_1DD758DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_1DD6DED68();
  v9 = sub_1DD6E0A88();
  sub_1DD75835C(v9, v10, v11, v12);
  if (v13 <= 0x3F)
  {
    v14 = sub_1DD6E0A88();
    sub_1DD75835C(v14, a6, a7, v15);
    if (v16 <= 0x3F)
    {
      sub_1DD6EFF5C();
      if (v17 <= 0x3F)
      {
        sub_1DD6E0DC4();
        swift_cvw_initStructMetadataWithLayoutString();
        sub_1DD6F09E0();
      }
    }
  }
}

uint64_t sub_1DD758EA8()
{
  sub_1DD6F44C8();
  result = sub_1DD874910();
  if (v1 <= 0x3F)
  {
    sub_1DD6E0DC4();
    swift_cvw_initStructMetadataWithLayoutString();
    return sub_1DD6F09E0();
  }

  return result;
}

uint64_t sub_1DD759000(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    sub_1DD6E2704();
    return sub_1DD7598BC(v4);
  }

  else
  {
    sub_1DD7598B0();
    v8 = sub_1DD710A9C(v6, v7);
    sub_1DD6E0A68(v8);
    if (*(v9 + 84) == v2)
    {
      v10 = *(v3 + 20);
    }

    else
    {
      sub_1DD874910();
      sub_1DD6EE76C();
    }

    v11 = sub_1DD6E6C88(v10);

    return sub_1DD6E5ED0(v11, v12, v13);
  }
}

void sub_1DD7590C8()
{
  sub_1DD6E1F34();
  if (v3 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    sub_1DD6E1C08();
    v6 = sub_1DD710A9C(v4, v5);
    sub_1DD6E0A68(v6);
    if (*(v7 + 84) == v2)
    {
      sub_1DD6FF8E8();
    }

    else
    {
      sub_1DD874910();
      sub_1DD700BF0();
    }

    v9 = sub_1DD6DE524(v8);

    sub_1DD6E5E68(v9, v10, v11, v12);
  }
}

void sub_1DD759178(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1DD6F44C8();
  sub_1DD732A5C();
  if (v7 <= 0x3F)
  {
    v8 = sub_1DD6E0A88();
    sub_1DD75835C(v8, a4, a5, v9);
    if (v10 <= 0x3F)
    {
      sub_1DD6EFF5C();
      if (v11 <= 0x3F)
      {
        sub_1DD6E0DC4();
        swift_cvw_initStructMetadataWithLayoutString();
        sub_1DD6F09E0();
      }
    }
  }
}

uint64_t sub_1DD759278(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    sub_1DD6E2704();
    return sub_1DD7598BC(v2);
  }

  else
  {
    sub_1DD7598B0();
    sub_1DD874910();
    v4 = sub_1DD6E0890();

    return sub_1DD6E5ED0(v4, v5, v6);
  }
}

void sub_1DD7592FC()
{
  sub_1DD6E1F34();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    sub_1DD6ED7B4();
    sub_1DD6FF8E8();
    v4 = sub_1DD6DE524(v3);

    sub_1DD6E5E68(v4, v5, v6, v7);
  }
}

void sub_1DD759364()
{
  sub_1DD6F44C8();
  sub_1DD732A5C();
  if (v0 <= 0x3F)
  {
    sub_1DD6EFF5C();
    if (v1 <= 0x3F)
    {
      sub_1DD6E0DC4();
      swift_cvw_initStructMetadataWithLayoutString();
      sub_1DD6F09E0();
    }
  }
}

void sub_1DD7593F8()
{
  sub_1DD75835C(319, &qword_1EE0139E0, type metadata accessor for ResponseGenerationOverrides_Rule.Predicate, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1DD874910();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DD7594C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DD6E1F34();
  v8 = sub_1DD710A9C(v6, v7);
  sub_1DD6E0A68(v8);
  if (*(v9 + 84) == v3)
  {
    v10 = sub_1DD6E492C();
  }

  else
  {
    v11 = sub_1DD874910();
    v10 = v4 + *(a3 + 20);
  }

  return sub_1DD6E5ED0(v10, v3, v11);
}

uint64_t sub_1DD75956C()
{
  sub_1DD6E1C08();
  sub_1DD6E1F34();
  v5 = sub_1DD710A9C(v3, v4);
  sub_1DD6E0A68(v5);
  if (*(v6 + 84) == v2)
  {
    v7 = sub_1DD6FF79C();
  }

  else
  {
    sub_1DD874910();
    sub_1DD6FF8E8();
    v7 = v1 + v9;
  }

  return sub_1DD6E5E68(v7, v0, v0, v8);
}

void sub_1DD759634()
{
  sub_1DD6DED68();
  sub_1DD75835C(319, v0, v1, v2);
  if (v3 <= 0x3F)
  {
    sub_1DD6EFF5C();
    if (v4 <= 0x3F)
    {
      sub_1DD6E0DC4();
      swift_cvw_initStructMetadataWithLayoutString();
      sub_1DD6F09E0();
    }
  }
}

uint64_t sub_1DD7596A8()
{
  result = type metadata accessor for ResponseGenerationOverrides_AppPredicate(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ResponseGenerationOverrides_ToolPredicate(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ResponseGenerationOverrides_ActionPredicate(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for ResponseGenerationOverrides_ActionSuccessOutcomePredicate(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for ResponseGenerationOverrides_ActionConfirmationOutcomePredicate(319);
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for ResponseGenerationOverrides_ToolDisambiguationOutcomePredicate(319);
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for ResponseGenerationOverrides_ParameterNeedsValueOutcomePredicate(319);
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for ResponseGenerationOverrides_ParameterConfirmationOutcomePredicate(319);
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for ResponseGenerationOverrides_ParameterDisambiguationOutcomePredicate(319);
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for ResponseGenerationOverrides_ParameterNotAllowedOutcomePredicate(319);
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for ResponseGenerationOverrides_ParameterCandidatesNotFoundOutcomePredicate(319);
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for ResponseGenerationOverrides_ActionRequirementOutcomePredicate(319);
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for ResponseGenerationOverrides_ValueDisambiguationOutcomePredicate(319);
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for ResponseGenerationOverrides_FailureOutcomePredicate(319);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                              return 0;
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

  return result;
}

uint64_t sub_1DD7598BC@<X0>(int a1@<W8>)
{
  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DD7598D0()
{

  return sub_1DD8750F0();
}

uint64_t sub_1DD759978()
{
  type metadata accessor for SearchOverrides_SearchOverride(0);
  sub_1DD75E20C(&qword_1ECD0F358, type metadata accessor for SearchOverrides_SearchOverride);
  return sub_1DD874A10();
}

uint64_t SearchOverrides_SearchOverrides.traverse<A>(visitor:)()
{
  sub_1DD6DE2D4();
  if (!*(*v0 + 16) || (type metadata accessor for SearchOverrides_SearchOverride(0), sub_1DD75E20C(&qword_1ECD0F358, type metadata accessor for SearchOverrides_SearchOverride), sub_1DD6E6540(), result = sub_1DD874AC0(), !v1))
  {
    v4 = v2 + *(type metadata accessor for SearchOverrides_SearchOverrides(0) + 20);
    sub_1DD6E0D68();
    return sub_1DD8748F0();
  }

  return result;
}

uint64_t sub_1DD759C0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD75E20C(&qword_1ECD0F428, type metadata accessor for SearchOverrides_SearchOverrides);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD759C8C(uint64_t a1)
{
  v2 = sub_1DD75E20C(&qword_1ECD0F3B0, type metadata accessor for SearchOverrides_SearchOverrides);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD759CFC()
{
  sub_1DD75E20C(&qword_1ECD0F3B0, type metadata accessor for SearchOverrides_SearchOverrides);

  return sub_1DD874A70();
}

uint64_t sub_1DD759D94()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0F2F8);
  sub_1DD6E1224(v0, qword_1ECD0F2F8);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DD87E8F0;
  v4 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1DD874AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v31 + v3 + v2 + v1[14];
  *(v31 + v3 + v2) = 2;
  *v8 = "name";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v31 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "disabled";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v31 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "context";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v31 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "override_dialog";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v7();
  v16 = (v31 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "radar_id";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v7();
  v18 = (v31 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "test_id";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v7();
  v20 = (v31 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "response_predicate";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v7();
  v22 = (v31 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 10;
  *v23 = "custom_entity_description_predicate";
  *(v23 + 1) = 35;
  v23[16] = 2;
  v7();
  v24 = (v31 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "override_behavior";
  *(v25 + 1) = 17;
  v25[16] = 2;
  v7();
  v26 = (v31 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "on_screen_text_predicate";
  *(v27 + 1) = 24;
  v27[16] = 2;
  v7();
  v28 = (v31 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 13;
  *v29 = "answer_predicate";
  *(v29 + 1) = 16;
  v29[16] = 2;
  v7();
  return sub_1DD874AF0();
}

uint64_t SearchOverrides_SearchOverride.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1DD8749A0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1DD6E0D68();
        sub_1DD8749F0();
        break;
      case 2:
        sub_1DD6E0D68();
        sub_1DD8749E0();
        break;
      case 3:
        sub_1DD6E0D68();
        sub_1DD8749C0();
        break;
      case 4:
        sub_1DD6E0824();
        sub_1DD75A328();
        break;
      case 6:
        sub_1DD6E0824();
        sub_1DD75A3DC();
        break;
      case 7:
        sub_1DD6E0824();
        sub_1DD75A490();
        break;
      case 8:
        sub_1DD6E0824();
        sub_1DD75A4F4();
        break;
      case 9:
        sub_1DD6E0824();
        sub_1DD75A558();
        break;
      case 10:
        sub_1DD6E0824();
        sub_1DD75A60C();
        break;
      case 11:
        sub_1DD6E0824();
        sub_1DD75A6C0();
        break;
      case 12:
        sub_1DD6E0824();
        sub_1DD75A774();
        break;
      case 13:
        sub_1DD6E0824();
        sub_1DD75A828();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1DD75A328()
{
  v0 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 28);
  type metadata accessor for OverridesCommon_ContextPredicate(0);
  sub_1DD75E20C(&qword_1ECD0EA40, type metadata accessor for OverridesCommon_ContextPredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD75A3DC()
{
  v0 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 32);
  type metadata accessor for OverridesCommon_OverrideDialog(0);
  sub_1DD75E20C(&qword_1ECD0EA80, type metadata accessor for OverridesCommon_OverrideDialog);
  return sub_1DD874A20();
}

uint64_t sub_1DD75A558()
{
  v0 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 44);
  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD75E20C(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD75A60C()
{
  v0 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 48);
  type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate(0);
  sub_1DD75E20C(&qword_1ECD0F3D8, type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD75A6C0()
{
  v0 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 52);
  type metadata accessor for SearchOverrides_OverrideBehavior(0);
  sub_1DD75E20C(&qword_1ECD0F3F0, type metadata accessor for SearchOverrides_OverrideBehavior);
  return sub_1DD874A20();
}

uint64_t sub_1DD75A774()
{
  v0 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 56);
  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD75E20C(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  return sub_1DD874A20();
}

uint64_t sub_1DD75A828()
{
  v0 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 60);
  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD75E20C(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  return sub_1DD874A20();
}

uint64_t SearchOverrides_SearchOverride.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1DD874AA0(), !v1))
  {
    v6 = sub_1DD6ED600();
    result = sub_1DD75AA18(v6);
    if (!v1)
    {
      if (*(v0 + 16) == 1)
      {
        sub_1DD874A80();
      }

      v7 = sub_1DD6ED600();
      sub_1DD75AA54(v7, v8, v9, v10);
      v11 = sub_1DD6ED600();
      sub_1DD75AC28(v11, v12, v13, v14);
      v15 = sub_1DD6ED600();
      sub_1DD75ADFC(v15);
      v16 = sub_1DD6ED600();
      sub_1DD75AE74(v16);
      v17 = sub_1DD6ED600();
      sub_1DD75AEEC(v17, v18, v19, v20);
      v21 = sub_1DD6ED600();
      sub_1DD75B0C0(v21, v22, v23, v24);
      v25 = sub_1DD6ED600();
      sub_1DD75B294(v25, v26, v27, v28);
      v29 = sub_1DD6ED600();
      sub_1DD75B468(v29, v30, v31, v32);
      v33 = sub_1DD6ED600();
      sub_1DD75B63C(v33, v34, v35, v36);
      v37 = v0 + *(type metadata accessor for SearchOverrides_SearchOverride(0) + 64);
      return sub_1DD8748F0();
    }
  }

  return result;
}

uint64_t sub_1DD75AA18(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = *(result + 24);
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t sub_1DD75AA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EE20, &unk_1DD87DF20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 28);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0EE20, &unk_1DD87DF20);
  }

  sub_1DD75DC2C();
  sub_1DD75E20C(&qword_1ECD0EA40, type metadata accessor for OverridesCommon_ContextPredicate);
  sub_1DD874AD0();
  return sub_1DD75DBD4(v11, type metadata accessor for OverridesCommon_ContextPredicate);
}

uint64_t sub_1DD75AC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0EE10, &qword_1DD884D60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for OverridesCommon_OverrideDialog(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 32);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0EE10, &qword_1DD884D60);
  }

  sub_1DD75DC2C();
  sub_1DD75E20C(&qword_1ECD0EA80, type metadata accessor for OverridesCommon_OverrideDialog);
  sub_1DD874AD0();
  return sub_1DD75DBD4(v11, type metadata accessor for OverridesCommon_OverrideDialog);
}

uint64_t sub_1DD75ADFC(uint64_t a1)
{
  result = type metadata accessor for SearchOverrides_SearchOverride(0);
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t sub_1DD75AE74(uint64_t a1)
{
  result = type metadata accessor for SearchOverrides_SearchOverride(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1DD874AA0();
  }

  return result;
}

uint64_t sub_1DD75AEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 44);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD75DC2C();
  sub_1DD75E20C(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  sub_1DD874AD0();
  return sub_1DD75DBD4(v11, type metadata accessor for OverridesCommon_StringPredicate);
}

uint64_t sub_1DD75B0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0F378, &unk_1DD884D00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 48);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0F378, &unk_1DD884D00);
  }

  sub_1DD75DC2C();
  sub_1DD75E20C(&qword_1ECD0F3D8, type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate);
  sub_1DD874AD0();
  return sub_1DD75DBD4(v11, type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate);
}

uint64_t sub_1DD75B294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0F368, &qword_1DD87EF30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for SearchOverrides_OverrideBehavior(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 52);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0F368, &qword_1DD87EF30);
  }

  sub_1DD75DC2C();
  sub_1DD75E20C(&qword_1ECD0F3F0, type metadata accessor for SearchOverrides_OverrideBehavior);
  sub_1DD874AD0();
  return sub_1DD75DBD4(v11, type metadata accessor for SearchOverrides_OverrideBehavior);
}

uint64_t sub_1DD75B468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 56);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD75DC2C();
  sub_1DD75E20C(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  sub_1DD874AD0();
  return sub_1DD75DBD4(v11, type metadata accessor for OverridesCommon_StringPredicate);
}

uint64_t sub_1DD75B63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for SearchOverrides_SearchOverride(0) + 60);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD75DC2C();
  sub_1DD75E20C(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  sub_1DD874AD0();
  return sub_1DD75DBD4(v11, type metadata accessor for OverridesCommon_StringPredicate);
}

uint64_t static SearchOverrides_SearchOverride.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v207 = type metadata accessor for SearchOverrides_OverrideBehavior(0);
  v4 = sub_1DD6DE1C4(v207);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v200 = (v8 - v7);
  v9 = sub_1DD710A9C(&qword_1ECD0F368, &qword_1DD87EF30);
  sub_1DD6DEA10(v9);
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E0C6C();
  v204 = v13;
  v206 = sub_1DD710A9C(&qword_1ECD0F370, &qword_1DD87E900);
  sub_1DD6DE1C4(v206);
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1DD6E0C6C();
  v208 = v17;
  v212 = type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate(0);
  v18 = sub_1DD6DE1C4(v212);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DD6DE4A8();
  v205 = (v22 - v21);
  v23 = sub_1DD710A9C(&qword_1ECD0F378, &unk_1DD884D00);
  sub_1DD6DEA10(v23);
  v25 = *(v24 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1DD6E0C6C();
  v209 = v27;
  v211 = sub_1DD710A9C(&qword_1ECD0F380, &qword_1DD87E908);
  sub_1DD6DE1C4(v211);
  v29 = *(v28 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6E0C6C();
  v213 = v31;
  v217 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v32 = sub_1DD6DE1C4(v217);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6DE21C();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v199 = &v194 - v39;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v40);
  v210 = &v194 - v41;
  v42 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v43 = sub_1DD6DEA10(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1DD6DE21C();
  v198 = (v46 - v47);
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v48);
  v201 = &v194 - v49;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v50);
  v214 = &v194 - v51;
  v216 = sub_1DD710A9C(&qword_1ECD0E9E8, &qword_1DD87AC30);
  v52 = sub_1DD6DE1C4(v216);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1DD6DE21C();
  v202 = v55 - v56;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v57);
  v203 = &v194 - v58;
  sub_1DD6DE48C();
  MEMORY[0x1EEE9AC00](v59);
  v215 = &v194 - v60;
  v220 = type metadata accessor for OverridesCommon_OverrideDialog(0);
  v61 = sub_1DD6DE1C4(v220);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  sub_1DD6DE4A8();
  v218 = v65 - v64;
  v66 = sub_1DD710A9C(&qword_1ECD0EE10, &qword_1DD884D60);
  sub_1DD6DEA10(v66);
  v68 = *(v67 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1DD6E0C6C();
  v219 = v70;
  v71 = sub_1DD710A9C(&qword_1ECD0EE18, &qword_1DD87B7F0);
  sub_1DD6DE1C4(v71);
  v73 = *(v72 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v194 - v75;
  v77 = type metadata accessor for OverridesCommon_ContextPredicate(0);
  v78 = sub_1DD6DE1C4(v77);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  sub_1DD6DE4A8();
  v83 = v82 - v81;
  v84 = sub_1DD710A9C(&qword_1ECD0EE20, &unk_1DD87DF20);
  sub_1DD6DEA10(v84);
  v86 = *(v85 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v194 - v88;
  v90 = sub_1DD710A9C(&qword_1ECD0EE28, &qword_1DD87B7F8);
  sub_1DD6DE1C4(v90);
  v92 = *(v91 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v194 - v94;
  v96 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v96 && (sub_1DD875A30() & 1) == 0)
  {
    goto LABEL_37;
  }

  v97 = *(a1 + 32);
  v98 = *(a2 + 32);
  if (v97)
  {
    if (!v98)
    {
      goto LABEL_37;
    }

    v99 = *(a1 + 24) == *(a2 + 24) && v97 == v98;
    if (!v99 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v98)
  {
    goto LABEL_37;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_37;
  }

  v194 = v37;
  v100 = type metadata accessor for SearchOverrides_SearchOverride(0);
  v197 = a2;
  v195 = v100;
  v101 = *(v100 + 28);
  v102 = a1;
  v103 = *(v90 + 48);
  v196 = v102;
  sub_1DD7533B8();
  sub_1DD6E88AC();
  sub_1DD7533B8();
  sub_1DD6DE1FC(v95, 1, v77);
  if (v96)
  {
    sub_1DD6DE1FC(&v95[v103], 1, v77);
    if (v96)
    {
      sub_1DD6FC560(v95, &qword_1ECD0EE20, &unk_1DD87DF20);
      goto LABEL_26;
    }

LABEL_24:
    v105 = &qword_1ECD0EE28;
    v106 = &qword_1DD87B7F8;
    v107 = v95;
LABEL_36:
    sub_1DD6FC560(v107, v105, v106);
    goto LABEL_37;
  }

  sub_1DD7533B8();
  sub_1DD6DE1FC(&v95[v103], 1, v77);
  if (v104)
  {
    sub_1DD75DBD4(v89, type metadata accessor for OverridesCommon_ContextPredicate);
    goto LABEL_24;
  }

  sub_1DD75DC2C();
  v108 = static OverridesCommon_ContextPredicate.== infix(_:_:)();
  sub_1DD75DBD4(v83, type metadata accessor for OverridesCommon_ContextPredicate);
  sub_1DD75DBD4(v89, type metadata accessor for OverridesCommon_ContextPredicate);
  sub_1DD6FC560(v95, &qword_1ECD0EE20, &unk_1DD87DF20);
  if ((v108 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_26:
  v109 = v195;
  v110 = v195[8];
  v111 = *(v71 + 48);
  sub_1DD6E2718();
  sub_1DD6E88AC();
  sub_1DD6E2718();
  sub_1DD6DE534(v76, 1);
  if (v96)
  {
    sub_1DD6E2180();
    if (v96)
    {
      sub_1DD6FC560(v76, &qword_1ECD0EE10, &qword_1DD884D60);
      goto LABEL_40;
    }

LABEL_34:
    v105 = &qword_1ECD0EE18;
    v106 = &qword_1DD87B7F0;
LABEL_35:
    v107 = v76;
    goto LABEL_36;
  }

  v112 = v219;
  sub_1DD7533B8();
  sub_1DD6E2180();
  if (v113)
  {
    sub_1DD75DBD4(v112, type metadata accessor for OverridesCommon_OverrideDialog);
    goto LABEL_34;
  }

  v116 = v218;
  sub_1DD75DC2C();
  v117 = static OverridesCommon_OverrideDialog.== infix(_:_:)();
  sub_1DD75DBD4(v116, type metadata accessor for OverridesCommon_OverrideDialog);
  sub_1DD6EE234();
  sub_1DD6FC560(v76, &qword_1ECD0EE10, &qword_1DD884D60);
  if ((v117 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_40:
  v118 = v109[9];
  sub_1DD75E254();
  if (v119)
  {
    if (!v120)
    {
      goto LABEL_37;
    }

    v123 = *v121 == *v122 && v119 == v120;
    if (!v123 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v120)
  {
    goto LABEL_37;
  }

  v124 = v109[10];
  sub_1DD75E254();
  if (v125)
  {
    if (!v126)
    {
      goto LABEL_37;
    }

    v129 = *v127 == *v128 && v125 == v126;
    if (!v129 && (sub_1DD875A30() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v126)
  {
    goto LABEL_37;
  }

  v76 = v109[11];
  v130 = v215;
  v131 = *(v216 + 48);
  sub_1DD6E2718();
  sub_1DD6F30D0();
  v132 = v217;
  sub_1DD6DE534(v130, 1);
  if (v96)
  {
    sub_1DD6E2180();
    if (v96)
    {
      sub_1DD6FC560(v76, &qword_1ECD0E9E0, &unk_1DD87B550);
      goto LABEL_63;
    }

    goto LABEL_71;
  }

  v135 = v214;
  sub_1DD7533B8();
  sub_1DD6E2180();
  if (v136)
  {
    sub_1DD6E056C();
    sub_1DD75DBD4(v135, v137);
LABEL_71:
    v105 = &qword_1ECD0E9E8;
    v106 = &qword_1DD87AC30;
    goto LABEL_35;
  }

  sub_1DD6E52BC();
  v138 = v210;
  sub_1DD75DC2C();
  if (*v135 != *v138 || (*(v135 + 1) == *(v138 + 1) ? (v139 = *(v135 + 2) == *(v138 + 2)) : (v139 = 0), !v139 && (sub_1DD875A30() & 1) == 0))
  {
    sub_1DD6DF3B4();
    sub_1DD75DBD4(v138, v145);
    sub_1DD6EE234();
    v105 = &qword_1ECD0E9E0;
    v106 = &unk_1DD87B550;
    goto LABEL_35;
  }

  v140 = *(v132 + 24);
  v141 = sub_1DD874910();
  sub_1DD6E147C();
  sub_1DD75E20C(v142, v143);
  sub_1DD6E9AA8();
  sub_1DD6E5F98();
  sub_1DD75DBD4(v138, v144);
  sub_1DD75DBD4(v135, v141);
  sub_1DD6FC560(v76, &qword_1ECD0E9E0, &unk_1DD87B550);
  if ((v140 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_63:
  v76 = v109[12];
  v133 = *(v211 + 48);
  v134 = v213;
  sub_1DD6E2718();
  sub_1DD6F30D0();
  sub_1DD6DE534(v134, 1);
  if (v96)
  {
    sub_1DD6E2180();
    if (v96)
    {
      sub_1DD6FC560(v76, &qword_1ECD0F378, &unk_1DD884D00);
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  v146 = v209;
  sub_1DD7533B8();
  sub_1DD6E2180();
  if (v147)
  {
    sub_1DD75DBD4(v146, type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate);
LABEL_84:
    v105 = &qword_1ECD0F380;
    v106 = &qword_1DD87E908;
    goto LABEL_35;
  }

  v148 = v205;
  sub_1DD75DC2C();
  v149 = static SearchOverrides_CustomEntityDescriptionPredicate.== infix(_:_:)(v146, v148);
  sub_1DD75DBD4(v148, type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate);
  sub_1DD6EE234();
  sub_1DD6FC560(v76, &qword_1ECD0F378, &unk_1DD884D00);
  if ((v149 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_86:
  v76 = v109[13];
  v150 = *(v206 + 48);
  v151 = v208;
  sub_1DD6E2718();
  sub_1DD6F30D0();
  v152 = v207;
  sub_1DD6DE534(v151, 1);
  if (v96)
  {
    sub_1DD6E2180();
    if (v96)
    {
      sub_1DD6FC560(v76, &qword_1ECD0F368, &qword_1DD87EF30);
      goto LABEL_91;
    }

    goto LABEL_105;
  }

  v162 = v204;
  sub_1DD7533B8();
  sub_1DD6E2180();
  if (v163)
  {
    sub_1DD75DBD4(v162, type metadata accessor for SearchOverrides_OverrideBehavior);
LABEL_105:
    v105 = &qword_1ECD0F370;
    v106 = &qword_1DD87E900;
    goto LABEL_35;
  }

  v164 = v200;
  sub_1DD75DC2C();
  if (*v162 != *v164)
  {
    sub_1DD75DBD4(v164, type metadata accessor for SearchOverrides_OverrideBehavior);
    sub_1DD6EE234();
    v105 = &qword_1ECD0F368;
    v106 = &qword_1DD87EF30;
    goto LABEL_35;
  }

  v165 = *(v152 + 20);
  sub_1DD874910();
  sub_1DD6E147C();
  sub_1DD75E20C(v166, v167);
  LOBYTE(v165) = sub_1DD6E9AA8();
  sub_1DD75DBD4(v164, type metadata accessor for SearchOverrides_OverrideBehavior);
  sub_1DD75DBD4(v162, type metadata accessor for SearchOverrides_OverrideBehavior);
  sub_1DD6FC560(v76, &qword_1ECD0F368, &qword_1DD87EF30);
  if ((v165 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_91:
  v153 = v109[14];
  v154 = *(v216 + 48);
  v155 = v203;
  sub_1DD6E2718();
  sub_1DD6E2718();
  sub_1DD6DE534(v155, 1);
  if (v96)
  {
    sub_1DD6DE534(v155 + v154, 1);
    if (v96)
    {
      sub_1DD6FC560(v155, &qword_1ECD0E9E0, &unk_1DD87B550);
      goto LABEL_96;
    }

    goto LABEL_112;
  }

  v168 = v201;
  sub_1DD7533B8();
  sub_1DD6DE534(v155 + v154, 1);
  if (v169)
  {
    sub_1DD6E056C();
    sub_1DD75DBD4(v168, v170);
LABEL_112:
    v105 = &qword_1ECD0E9E8;
    v106 = &qword_1DD87AC30;
    v107 = v155;
    goto LABEL_36;
  }

  sub_1DD6E52BC();
  v171 = v199;
  sub_1DD75DC2C();
  if (*v168 != *v171 || (*(v201 + 1) == *(v199 + 8) ? (v172 = *(v201 + 2) == *(v199 + 16)) : (v172 = 0), !v172 && (sub_1DD875A30() & 1) == 0))
  {
    sub_1DD6DF3B4();
    sub_1DD75DBD4(v199, v180);
    sub_1DD75DBD4(v201, v171);
    v105 = &qword_1ECD0E9E0;
    v106 = &unk_1DD87B550;
    v107 = v203;
    goto LABEL_36;
  }

  v173 = *(v217 + 24);
  v174 = sub_1DD874910();
  sub_1DD6E147C();
  sub_1DD75E20C(v175, v176);
  v177 = v201;
  v178 = v199;
  sub_1DD8750F0();
  sub_1DD6E5F98();
  sub_1DD75DBD4(v178, v179);
  sub_1DD75DBD4(v177, v174);
  sub_1DD6FC560(v203, &qword_1ECD0E9E0, &unk_1DD87B550);
  if ((v173 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_96:
  v156 = v195[15];
  v157 = *(v216 + 48);
  v158 = v202;
  sub_1DD6E2718();
  sub_1DD6E88AC();
  sub_1DD6E2718();
  sub_1DD6DE1FC(v158, 1, v217);
  if (v96)
  {
    sub_1DD6DE1FC(v202 + v157, 1, v217);
    if (v96)
    {
      sub_1DD6FC560(v202, &qword_1ECD0E9E0, &unk_1DD87B550);
LABEL_101:
      v159 = v195[16];
      sub_1DD874910();
      sub_1DD6E147C();
      sub_1DD75E20C(v160, v161);
      sub_1DD6E88AC();
      v114 = sub_1DD8750F0();
      return v114 & 1;
    }

    goto LABEL_126;
  }

  v181 = v202;
  sub_1DD7533B8();
  sub_1DD6DE1FC(v181 + v157, 1, v217);
  if (v182)
  {
    sub_1DD6E056C();
    sub_1DD75DBD4(v198, v183);
LABEL_126:
    v105 = &qword_1ECD0E9E8;
    v106 = &qword_1DD87AC30;
LABEL_136:
    v107 = v202;
    goto LABEL_36;
  }

  sub_1DD6E52BC();
  v184 = v194;
  sub_1DD75DC2C();
  if (*v198 != *v184 || (*(v198 + 1) == *(v194 + 8) ? (v185 = *(v198 + 2) == *(v194 + 16)) : (v185 = 0), !v185 && (sub_1DD875A30() & 1) == 0))
  {
    sub_1DD6DF3B4();
    sub_1DD75DBD4(v194, v193);
    sub_1DD75DBD4(v198, v184);
    v105 = &qword_1ECD0E9E0;
    v106 = &unk_1DD87B550;
    goto LABEL_136;
  }

  v186 = *(v217 + 24);
  v187 = sub_1DD874910();
  sub_1DD6E147C();
  sub_1DD75E20C(v188, v189);
  v190 = v198;
  v191 = v194;
  sub_1DD8750F0();
  sub_1DD6E5F98();
  sub_1DD75DBD4(v191, v192);
  sub_1DD75DBD4(v190, v187);
  sub_1DD6FC560(v202, &qword_1ECD0E9E0, &unk_1DD87B550);
  if (v186)
  {
    goto LABEL_101;
  }

LABEL_37:
  v114 = 0;
  return v114 & 1;
}

uint64_t sub_1DD75C9D8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1DD875B20();
  a1(0);
  sub_1DD75E20C(a2, a3);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t (*sub_1DD75CA8C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 64);
  return result;
}

uint64_t sub_1DD75CAE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD75E20C(&qword_1ECD0F420, type metadata accessor for SearchOverrides_SearchOverride);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD75CB60(uint64_t a1)
{
  v2 = sub_1DD75E20C(&qword_1ECD0F358, type metadata accessor for SearchOverrides_SearchOverride);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD75CBD0()
{
  sub_1DD75E20C(&qword_1ECD0F358, type metadata accessor for SearchOverrides_SearchOverride);

  return sub_1DD874A70();
}

uint64_t sub_1DD75CCD8()
{
  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD75E20C(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  return sub_1DD874A20();
}

uint64_t SearchOverrides_CustomEntityDescriptionPredicate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD75CDF4(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = v3 + *(type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate(0) + 20);
    sub_1DD6E0D68();
    return sub_1DD8748F0();
  }

  return result;
}

uint64_t sub_1DD75CDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v4 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD7533B8();
  if (sub_1DD6E5ED0(v7, 1, v8) == 1)
  {
    return sub_1DD6FC560(v7, &qword_1ECD0E9E0, &unk_1DD87B550);
  }

  sub_1DD75DC2C();
  sub_1DD75E20C(&qword_1ECD0EA58, type metadata accessor for OverridesCommon_StringPredicate);
  sub_1DD874AD0();
  return sub_1DD75DBD4(v11, type metadata accessor for OverridesCommon_StringPredicate);
}

uint64_t static SearchOverrides_CustomEntityDescriptionPredicate.== infix(_:_:)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = type metadata accessor for OverridesCommon_StringPredicate(0);
  v4 = sub_1DD6DE1C4(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1DD6DE4A8();
  v9 = (v8 - v7);
  v10 = sub_1DD710A9C(&qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD6DEA10(v10);
  v12 = *(v11 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v16 = sub_1DD710A9C(&qword_1ECD0E9E8, &qword_1DD87AC30);
  sub_1DD6DEA10(v16);
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v39 - v20;
  v23 = *(v22 + 56);
  sub_1DD7533B8();
  sub_1DD7533B8();
  sub_1DD6DE1FC(v21, 1, v3);
  if (v28)
  {
    sub_1DD6DE1FC(&v21[v23], 1, v3);
    if (v28)
    {
      sub_1DD6FC560(v21, &qword_1ECD0E9E0, &unk_1DD87B550);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  sub_1DD7533B8();
  sub_1DD6DE1FC(&v21[v23], 1, v3);
  if (v28)
  {
    sub_1DD6E056C();
    sub_1DD75DBD4(v15, v29);
LABEL_10:
    v30 = &qword_1ECD0E9E8;
    v31 = &qword_1DD87AC30;
LABEL_20:
    sub_1DD6FC560(v21, v30, v31);
LABEL_21:
    v27 = 0;
    return v27 & 1;
  }

  sub_1DD6E52BC();
  sub_1DD75DC2C();
  if (*v15 != *v9 || (*(v15 + 1) == *(v9 + 1) ? (v32 = *(v15 + 2) == *(v9 + 2)) : (v32 = 0), !v32 && (sub_1DD875A30() & 1) == 0))
  {
    sub_1DD6DF3B4();
    sub_1DD75DBD4(v9, v37);
    sub_1DD75DBD4(v15, a2);
    v30 = &qword_1ECD0E9E0;
    v31 = &unk_1DD87B550;
    goto LABEL_20;
  }

  v33 = *(v3 + 24);
  sub_1DD874910();
  sub_1DD6E147C();
  sub_1DD75E20C(v34, v35);
  v36 = sub_1DD8750F0();
  sub_1DD75DBD4(v9, type metadata accessor for OverridesCommon_StringPredicate);
  sub_1DD75DBD4(v15, type metadata accessor for OverridesCommon_StringPredicate);
  sub_1DD6FC560(v21, &qword_1ECD0E9E0, &unk_1DD87B550);
  if ((v36 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_6:
  v24 = *(type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate(0) + 20);
  sub_1DD874910();
  sub_1DD6E147C();
  sub_1DD75E20C(v25, v26);
  v27 = sub_1DD8750F0();
  return v27 & 1;
}

uint64_t sub_1DD75D398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD75E20C(&qword_1ECD0F418, type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD75D418(uint64_t a1)
{
  v2 = sub_1DD75E20C(&qword_1ECD0F3D8, type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD75D488()
{
  sub_1DD75E20C(&qword_1ECD0F3D8, type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate);

  return sub_1DD874A70();
}

uint64_t sub_1DD75D590(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1DD8749A0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t SearchOverrides_OverrideBehavior.traverse<A>(visitor:)()
{
  sub_1DD6DE2D4();
  if (!*v0 || (v5 = *v0, sub_1DD75DC88(), sub_1DD6E6540(), result = sub_1DD874A90(), !v1))
  {
    v4 = v2 + *(type metadata accessor for SearchOverrides_OverrideBehavior(0) + 20);
    sub_1DD6E0D68();
    return sub_1DD8748F0();
  }

  return result;
}

uint64_t static SearchOverrides_OverrideBehavior.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1DD6E1F34();
  v2 = *(type metadata accessor for SearchOverrides_OverrideBehavior(0) + 20);
  sub_1DD874910();
  sub_1DD6E147C();
  sub_1DD75E20C(v3, v4);
  return sub_1DD6E2124() & 1;
}

uint64_t sub_1DD75D82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD75E20C(&qword_1ECD0F410, type metadata accessor for SearchOverrides_OverrideBehavior);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1DD75D8AC(uint64_t a1)
{
  v2 = sub_1DD75E20C(&qword_1ECD0F3F0, type metadata accessor for SearchOverrides_OverrideBehavior);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1DD75D91C()
{
  sub_1DD75E20C(&qword_1ECD0F3F0, type metadata accessor for SearchOverrides_OverrideBehavior);

  return sub_1DD874A70();
}

uint64_t sub_1DD75D99C()
{
  v0 = sub_1DD874B10();
  sub_1DD732C90(v0, qword_1ECD0F340);
  sub_1DD6E1224(v0, qword_1ECD0F340);
  sub_1DD710A9C(&qword_1ECD0EB08, &qword_1DD87B528);
  v1 = (sub_1DD710A9C(&qword_1ECD0EB10, &qword_1DD87B530) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DD87AC20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1DD874AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BLOCK_ALL";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "BLOCK_MATCHING";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1DD874AF0();
}

uint64_t sub_1DD75DBD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1DD6DE1C4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD75DC2C()
{
  sub_1DD6E1F34();
  v3 = v2(0);
  sub_1DD6DE1C4(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

unint64_t sub_1DD75DC88()
{
  result = qword_1ECD0F398;
  if (!qword_1ECD0F398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F398);
  }

  return result;
}

unint64_t sub_1DD75E160()
{
  result = qword_1ECD0F400;
  if (!qword_1ECD0F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F400);
  }

  return result;
}

unint64_t sub_1DD75E1B8()
{
  result = qword_1ECD0F408;
  if (!qword_1ECD0F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F408);
  }

  return result;
}

uint64_t sub_1DD75E20C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SearchOverrides_SearchOverrides.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for SearchOverrides_SearchOverrides(v1);
  result = sub_1DD6FC440(v2);
  *v0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t SearchOverrides_SearchOverrides.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SearchOverrides_SearchOverrides(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t SearchOverrides_SearchOverride.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for SearchOverrides_SearchOverride(v1);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v3 = v2[7];
  type metadata accessor for OverridesCommon_ContextPredicate(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v4, v5, v6, v7);
  v8 = v2[8];
  type metadata accessor for OverridesCommon_OverrideDialog(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v9, v10, v11, v12);
  v13 = (v0 + v2[9]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v0 + v2[10]);
  *v14 = 0;
  v14[1] = 0;
  v15 = v2[11];
  v16 = type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v17, v18, v19, v16);
  v20 = v2[12];
  type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v21, v22, v23, v24);
  v25 = v2[13];
  type metadata accessor for SearchOverrides_OverrideBehavior(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v26, v27, v28, v29);
  v30 = v2[14];
  sub_1DD6E0C90();
  sub_1DD6E5E68(v31, v32, v33, v16);
  v34 = v2[15];
  sub_1DD6E0C90();
  sub_1DD6E5E68(v35, v36, v37, v16);
  v38 = v0 + v2[16];
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  return result;
}

uint64_t SearchOverrides_SearchOverride.unknownFields.getter()
{
  v2 = sub_1DD6E0A5C();
  v3 = *(type metadata accessor for SearchOverrides_SearchOverride(v2) + 64);
  v4 = sub_1DD874910();
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 16);

  return v7(v0, v1 + v3, v5);
}

uint64_t SearchOverrides_SearchOverride.unknownFields.setter()
{
  v2 = sub_1DD6DE290();
  v3 = *(type metadata accessor for SearchOverrides_SearchOverride(v2) + 64);
  v4 = sub_1DD874910();
  sub_1DD6DE1C4(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t SearchOverrides_SearchOverride.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SearchOverrides_SearchOverride(v0) + 64);
  return sub_1DD6DDF9C();
}

uint64_t SearchOverrides_CustomEntityDescriptionPredicate.init()()
{
  v0 = sub_1DD6E0A5C();
  type metadata accessor for OverridesCommon_StringPredicate(v0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v1, v2, v3, v4);
  v5 = type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate(0);
  return sub_1DD6FC440(v5);
}

uint64_t sub_1DD75E620()
{
  v2 = sub_1DD6E0A5C();
  v4 = *(v3(v2) + 20);
  v5 = sub_1DD874910();
  v6 = sub_1DD6DE1C4(v5);
  v8 = *(v7 + 16);

  return v8(v0, v1 + v4, v6);
}

uint64_t sub_1DD75E6B0()
{
  v2 = sub_1DD6DE290();
  v4 = *(v3(v2) + 20);
  v5 = sub_1DD874910();
  sub_1DD6DE1C4(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t SearchOverrides_CustomEntityDescriptionPredicate.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate(v0) + 20);
  return sub_1DD6DDF9C();
}

uint64_t SearchOverrides_OverrideBehavior.init()()
{
  v1 = sub_1DD6E0A5C();
  v2 = type metadata accessor for SearchOverrides_OverrideBehavior(v1);
  result = sub_1DD6FC440(v2);
  *v0 = 0;
  return result;
}

uint64_t SearchOverrides_OverrideBehavior.unknownFields.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SearchOverrides_OverrideBehavior(v0) + 20);
  return sub_1DD6DDF9C();
}

IntelligenceFlow::SearchOverrides_OverrideBehavior::CustomEntityBlockingBehavior_optional __swiftcall SearchOverrides_OverrideBehavior.CustomEntityBlockingBehavior.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SearchOverrides_SearchOverrides.overrides.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SearchOverrides_SearchOverrides.init(overrides:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for SearchOverrides_SearchOverrides(0) + 20);
  result = _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a2 = a1;
  return result;
}

uint64_t SearchOverrides_SearchOverride.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_1DD6DDEFC();
}

uint64_t SearchOverrides_SearchOverride.id.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SearchOverrides_SearchOverride.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_1DD6DDEFC();
}

uint64_t SearchOverrides_SearchOverride.name.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t SearchOverrides_SearchOverride.context.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for SearchOverrides_SearchOverride(v0);
  return sub_1DD6E6A74(&qword_1ECD0EE20, &unk_1DD87DF20, *(v1 + 28));
}

uint64_t SearchOverrides_SearchOverride.context.setter()
{
  v0 = sub_1DD6DE290();
  v1 = type metadata accessor for SearchOverrides_SearchOverride(v0);
  return sub_1DD6DE550(&qword_1ECD0EE20, &unk_1DD87DF20, *(v1 + 28));
}

uint64_t SearchOverrides_SearchOverride.context.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SearchOverrides_SearchOverride(v0) + 28);
  return sub_1DD6DDF9C();
}

uint64_t SearchOverrides_SearchOverride.overrideDialog.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for SearchOverrides_SearchOverride(v0);
  return sub_1DD6E6A74(&qword_1ECD0EE10, &qword_1DD884D60, *(v1 + 32));
}

uint64_t SearchOverrides_SearchOverride.overrideDialog.setter()
{
  v0 = sub_1DD6DE290();
  v1 = type metadata accessor for SearchOverrides_SearchOverride(v0);
  return sub_1DD6DE550(&qword_1ECD0EE10, &qword_1DD884D60, *(v1 + 32));
}

uint64_t SearchOverrides_SearchOverride.overrideDialog.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SearchOverrides_SearchOverride(v0) + 32);
  return sub_1DD6DDF9C();
}

uint64_t SearchOverrides_SearchOverride.radarID.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchOverrides_SearchOverride(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return sub_1DD6DDEFC();
}

uint64_t SearchOverrides_SearchOverride.radarID.setter()
{
  sub_1DD6DE304();
  v3 = (v1 + *(type metadata accessor for SearchOverrides_SearchOverride(0) + 36));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SearchOverrides_SearchOverride.radarID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SearchOverrides_SearchOverride(v0) + 36);
  return sub_1DD6DDF9C();
}

uint64_t SearchOverrides_SearchOverride.testID.getter()
{
  v1 = (v0 + *(type metadata accessor for SearchOverrides_SearchOverride(0) + 40));
  v2 = *v1;
  v3 = v1[1];

  return sub_1DD6DDEFC();
}

uint64_t SearchOverrides_SearchOverride.testID.setter()
{
  sub_1DD6DE304();
  v3 = (v1 + *(type metadata accessor for SearchOverrides_SearchOverride(0) + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SearchOverrides_SearchOverride.testID.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SearchOverrides_SearchOverride(v0) + 40);
  return sub_1DD6DDF9C();
}

uint64_t SearchOverrides_SearchOverride.responsePredicate.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for SearchOverrides_SearchOverride(v0);
  return sub_1DD6E6A74(&qword_1ECD0E9E0, &unk_1DD87B550, *(v1 + 44));
}

uint64_t SearchOverrides_SearchOverride.responsePredicate.setter()
{
  v0 = sub_1DD6DE290();
  v1 = type metadata accessor for SearchOverrides_SearchOverride(v0);
  return sub_1DD6DE550(&qword_1ECD0E9E0, &unk_1DD87B550, *(v1 + 44));
}

uint64_t SearchOverrides_SearchOverride.responsePredicate.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SearchOverrides_SearchOverride(v0) + 44);
  return sub_1DD6DDF9C();
}

uint64_t SearchOverrides_SearchOverride.customEntityDescriptionPredicate.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for SearchOverrides_SearchOverride(v0);
  return sub_1DD6E6A74(&qword_1ECD0F378, &unk_1DD884D00, *(v1 + 48));
}

uint64_t SearchOverrides_SearchOverride.customEntityDescriptionPredicate.setter()
{
  v0 = sub_1DD6DE290();
  v1 = type metadata accessor for SearchOverrides_SearchOverride(v0);
  return sub_1DD6DE550(&qword_1ECD0F378, &unk_1DD884D00, *(v1 + 48));
}

uint64_t SearchOverrides_SearchOverride.customEntityDescriptionPredicate.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SearchOverrides_SearchOverride(v0) + 48);
  return sub_1DD6DDF9C();
}

uint64_t SearchOverrides_SearchOverride.overrideBehavior.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for SearchOverrides_SearchOverride(v0);
  return sub_1DD6E6A74(&qword_1ECD0F368, &qword_1DD87EF30, *(v1 + 52));
}

uint64_t sub_1DD75EE80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1DD6F30F4(a1, a2, a3, a4);
  sub_1DD6DE1C4(v5);
  v7 = *(v6 + 16);
  v8 = sub_1DD6DDEFC();
  v9(v8);
  return v4;
}

uint64_t SearchOverrides_SearchOverride.overrideBehavior.setter()
{
  v0 = sub_1DD6DE290();
  v1 = type metadata accessor for SearchOverrides_SearchOverride(v0);
  return sub_1DD6DE550(&qword_1ECD0F368, &qword_1DD87EF30, *(v1 + 52));
}

uint64_t sub_1DD75EF08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1DD6F30F4(a1, a2, a3, a4);
  sub_1DD6DE1C4(v5);
  v7 = *(v6 + 40);
  v8 = sub_1DD6DDEFC();
  v9(v8);
  return v4;
}

uint64_t SearchOverrides_SearchOverride.overrideBehavior.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SearchOverrides_SearchOverride(v0) + 52);
  return sub_1DD6DDF9C();
}

uint64_t SearchOverrides_SearchOverride.onScreenTextPredicate.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for SearchOverrides_SearchOverride(v0);
  return sub_1DD6E6A74(&qword_1ECD0E9E0, &unk_1DD87B550, *(v1 + 56));
}

uint64_t SearchOverrides_SearchOverride.onScreenTextPredicate.setter()
{
  v0 = sub_1DD6DE290();
  v1 = type metadata accessor for SearchOverrides_SearchOverride(v0);
  return sub_1DD6DE550(&qword_1ECD0E9E0, &unk_1DD87B550, *(v1 + 56));
}

uint64_t SearchOverrides_SearchOverride.onScreenTextPredicate.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SearchOverrides_SearchOverride(v0) + 56);
  return sub_1DD6DDF9C();
}

uint64_t SearchOverrides_SearchOverride.answerPredicate.getter()
{
  v0 = sub_1DD6E0A5C();
  v1 = type metadata accessor for SearchOverrides_SearchOverride(v0);
  return sub_1DD6E6A74(&qword_1ECD0E9E0, &unk_1DD87B550, *(v1 + 60));
}

uint64_t SearchOverrides_SearchOverride.answerPredicate.setter()
{
  v0 = sub_1DD6DE290();
  v1 = type metadata accessor for SearchOverrides_SearchOverride(v0);
  return sub_1DD6DE550(&qword_1ECD0E9E0, &unk_1DD87B550, *(v1 + 60));
}

uint64_t SearchOverrides_SearchOverride.answerPredicate.modify()
{
  v0 = sub_1DD6DE290();
  v1 = *(type metadata accessor for SearchOverrides_SearchOverride(v0) + 60);
  return sub_1DD6DDF9C();
}

uint64_t SearchOverrides_SearchOverride.init(id:name:disabled:context:overrideDialog:radarID:testID:responsePredicate:customEntityDescriptionPredicate:overrideBehavior:onScreenTextPredicate:answerPredicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = type metadata accessor for SearchOverrides_SearchOverride(0);
  v55 = v18[7];
  type metadata accessor for OverridesCommon_ContextPredicate(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v19, v20, v21, v22);
  v54 = v18[8];
  type metadata accessor for OverridesCommon_OverrideDialog(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v23, v24, v25, v26);
  v27 = (a9 + v18[9]);
  v28 = (a9 + v18[10]);
  v29 = v18[11];
  v30 = type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v31, v32, v33, v30);
  v34 = v18[12];
  type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v35, v36, v37, v38);
  v39 = v18[13];
  type metadata accessor for SearchOverrides_OverrideBehavior(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v40, v41, v42, v43);
  v44 = v18[14];
  sub_1DD6E0C90();
  sub_1DD6E5E68(v45, v46, v47, v30);
  v48 = v18[15];
  sub_1DD6E0C90();
  sub_1DD6E5E68(v49, v50, v51, v30);
  v52 = a9 + v18[16];
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 16) = a5;
  sub_1DD75EF08(a6, a9 + v55, &qword_1ECD0EE20, &unk_1DD87DF20);
  sub_1DD75EF08(a7, a9 + v54, &qword_1ECD0EE10, &qword_1DD884D60);
  *v27 = a8;
  v27[1] = a10;
  *v28 = a11;
  v28[1] = a12;
  sub_1DD75EF08(a13, a9 + v29, &qword_1ECD0E9E0, &unk_1DD87B550);
  sub_1DD75EF08(a14, a9 + v34, &qword_1ECD0F378, &unk_1DD884D00);
  sub_1DD75EF08(a15, a9 + v39, &qword_1ECD0F368, &qword_1DD87EF30);
  sub_1DD75EF08(a16, a9 + v44, &qword_1ECD0E9E0, &unk_1DD87B550);
  return sub_1DD75EF08(a17, a9 + v48, &qword_1ECD0E9E0, &unk_1DD87B550);
}

uint64_t SearchOverrides_CustomEntityDescriptionPredicate.init(stringPredicate:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for OverridesCommon_StringPredicate(0);
  sub_1DD6E0C90();
  sub_1DD6E5E68(v2, v3, v4, v5);
  v6 = a1 + *(type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate(0) + 20);
  _s16IntelligenceFlow30OverridesCommon_OverrideDialogV08FallbackF0VAEycfC_0();
  v7 = sub_1DD6DDEFC();
  return sub_1DD75EF08(v7, v8, v9, v10);
}

uint64_t sub_1DD75F498@<X0>(uint64_t *a1@<X8>)
{
  result = SearchOverrides_OverrideBehavior.CustomEntityBlockingBehavior.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1DD75F4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD75DC88();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t SearchOverrides_OverrideBehavior.init(customEntityBlockingBehavior:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for SearchOverrides_OverrideBehavior(0);
  result = sub_1DD6FC440(v4);
  *a2 = v3;
  return result;
}

unint64_t sub_1DD75F564()
{
  result = qword_1ECD0F430;
  if (!qword_1ECD0F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F430);
  }

  return result;
}

unint64_t sub_1DD75F5BC()
{
  result = qword_1ECD0F438;
  if (!qword_1ECD0F438)
  {
    sub_1DD717E88(&qword_1ECD0F440, &qword_1DD87EFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECD0F438);
  }

  return result;
}

uint64_t sub_1DD75F6A4()
{
  sub_1DD732A5C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1DD75F8D4(319, &qword_1ECD0F2C8, type metadata accessor for OverridesCommon_ContextPredicate, MEMORY[0x1E69E6720]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1DD75F8D4(319, &qword_1ECD0F2D0, type metadata accessor for OverridesCommon_OverrideDialog, MEMORY[0x1E69E6720]);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1DD75F8D4(319, &qword_1ECD0EB60, type metadata accessor for OverridesCommon_StringPredicate, MEMORY[0x1E69E6720]);
    v1 = v6;
    if (v7 > 0x3F)
    {
      return v1;
    }

    sub_1DD75F8D4(319, &qword_1ECD0F470, type metadata accessor for SearchOverrides_CustomEntityDescriptionPredicate, MEMORY[0x1E69E6720]);
    if (v8 > 0x3F)
    {
      return v3;
    }

    sub_1DD75F8D4(319, &qword_1ECD0F478, type metadata accessor for SearchOverrides_OverrideBehavior, MEMORY[0x1E69E6720]);
    if (v9 > 0x3F)
    {
      return v3;
    }

    else
    {
      v1 = sub_1DD874910();
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_1DD75F8D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DD75F994(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_1DD75F8D4(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_1DD874910();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DD75FA4C()
{
  result = sub_1DD874910();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchOverrides_OverrideBehavior.CustomEntityBlockingBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD75FBA4()
{
  sub_1DD6DE290();
  sub_1DD874820();
  sub_1DD6DF0E8();
  sub_1DD76D388(v0, v1);

  return sub_1DD8750C0();
}

uint64_t sub_1DD75FC14()
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1DD75FC84()
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1DD75FD54()
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1DD75FDC8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      sub_1DD705570();
      break;
    case 4:
    case 5:
      sub_1DD6FF988();
      break;
    case 6:
      sub_1DD6FF988();
      sub_1DD6E58F8();
      break;
    default:
      break;
  }

  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1DD75FEC8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
    case 5:
      sub_1DD6E0480();
      break;
    case 4:
      break;
    default:
      sub_1DD6FF988();
      break;
  }

  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1DD75FFB8()
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1DD760060()
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1DD760138()
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1DD7601A0()
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1DD760228()
{
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1DD76033C()
{
  sub_1DD875B20();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();

  return sub_1DD875B60();
}

uint64_t sub_1DD7603D8()
{
  sub_1DD875B20();
  sub_1DD8754B0();
  return sub_1DD875B60();
}

uint64_t sub_1DD76043C()
{
  sub_1DD770DC4();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();

  return sub_1DD875B60();
}

uint64_t sub_1DD7604AC()
{
  sub_1DD770DC4();
  sub_1DD875B50();
  return sub_1DD875B60();
}

uint64_t sub_1DD760530(uint64_t a1, unsigned __int8 a2)
{
  sub_1DD875B20();
  MEMORY[0x1E12B5570](a2);
  return sub_1DD875B60();
}

uint64_t sub_1DD760574()
{
  sub_1DD770DC4();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();

  return sub_1DD875B60();
}

uint64_t sub_1DD76060C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1DD875B20();
  a3(v6, a2);
  return sub_1DD875B60();
}

uint64_t sub_1DD760658()
{
  sub_1DD770DC4();
  _s16IntelligenceFlow19ClientApplicationIDV4hash4intoys6HasherVz_tF_0();

  return sub_1DD875B60();
}

uint64_t sub_1DD7606D4()
{
  sub_1DD875B20();
  sub_1DD874820();
  sub_1DD6DF0E8();
  sub_1DD76D388(v0, v1);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

uint64_t sub_1DD7607A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1DD875B20();
  a3(v4);
  sub_1DD8750C0();
  return sub_1DD875B60();
}

void ResponseParameter.init(key:value:type:required:format:profanityFilter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_1DD6DEB38();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  *v34 = v36;
  v34[1] = v37;
  sub_1DD70104C(0, 0xF000000000000000);
  v35[2] = v33;
  v35[3] = v31;
  v35[4] = v29;
  v35[5] = v27;
  *(v35 + 48) = v25;
  v35[7] = v23;
  v35[8] = a21;
  *(v35 + 72) = a22;
  sub_1DD6DFED0();
}

void ResponseParameter.init(title:nlgParam:)()
{
  sub_1DD6DEB38();
  v2 = v1;
  v38 = v3;
  v39 = v4;
  sub_1DD6E0A5C();
  v37 = sub_1DD874ED0();
  v5 = sub_1DD6DDEAC(v37);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1DD6DE4A8();
  v12 = v11 - v10;
  v13 = sub_1DD875170();
  v14 = sub_1DD6DDEAC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DE4A8();
  sub_1DD76D6E4(v2, &selRef_value);
  if (!v19 || (sub_1DD875160(), v20 = sub_1DD875150(), v22 = v21, , v23 = *(v16 + 8), v24 = sub_1DD6E6378(), v25(v24), v22 >> 60 == 15))
  {
    sub_1DD874BE0();
    v26 = sub_1DD874EC0();
    v27 = sub_1DD8754E0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1DD6DC000, v26, v27, "Failed to create data representation of NLG parameter value", v28, 2u);
      sub_1DD6DE474();
    }

    (*(v7 + 8))(v12, v37);
    v20 = 0;
    v22 = 0xF000000000000000;
  }

  sub_1DD70104C(0, 0xF000000000000000);
  v29 = sub_1DD76D6E4(v2, &selRef_type);
  v31 = v30;
  v32 = [v2 format];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1DD875140();
    v36 = v35;
  }

  else
  {

    v34 = 0;
    v36 = 0;
  }

  *v0 = v38;
  *(v0 + 8) = v39;
  *(v0 + 16) = v20;
  *(v0 + 24) = v22;
  *(v0 + 32) = v29;
  *(v0 + 40) = v31;
  *(v0 + 48) = 1;
  *(v0 + 56) = v34;
  *(v0 + 64) = v36;
  *(v0 + 72) = 1;
  sub_1DD6DFED0();
}

uint64_t ResponseParameter.key.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseParameter.value.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1DD6DDEFC();
  sub_1DD76D0F4(v3, v4);
  return sub_1DD6DDEFC();
}

uint64_t ResponseParameter.value.setter()
{
  sub_1DD6DE304();
  result = sub_1DD70104C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ResponseParameter.type.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1DD6DDEFC();
}

uint64_t ResponseParameter.type.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ResponseParameter.format.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return sub_1DD6DDEFC();
}

uint64_t ResponseParameter.format.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

double ResponseParameter.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_1DD878A20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  return result;
}

uint64_t static ResponseParameter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v32 = *(a1 + 56);
  v6 = *(a1 + 72);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v35 = *(a2 + 48);
  v36 = *(a1 + 48);
  v31 = *(a2 + 56);
  v33 = *(a2 + 64);
  v34 = *(a1 + 64);
  v11 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v12 = *(a2 + 72);
  if (!v11 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  if (v4 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      v30 = v12;
      v13 = v6;
      v14 = sub_1DD6FAAB8();
      sub_1DD70104C(v14, v15);
      goto LABEL_14;
    }

LABEL_10:
    v16 = sub_1DD6FAAB8();
    sub_1DD70104C(v16, v17);
    v18 = sub_1DD6DEA04();
    sub_1DD70104C(v18, v19);
    return 0;
  }

  if (v7 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v30 = v12;
  v13 = v6;
  v21 = sub_1DD6FAAB8();
  v22 = MEMORY[0x1E12B41A0](v21);
  v23 = sub_1DD6DEA04();
  sub_1DD70104C(v23, v24);
  v25 = sub_1DD6E6378();
  sub_1DD70104C(v25, v26);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    if (v3 != v10 || v5 != v9)
    {
      sub_1DD6EFF74();
      sub_1DD7051CC();
      if ((sub_1DD875A30() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v36 == 2)
  {
    v28 = v30;
    if (v35 != 2)
    {
      return 0;
    }

    goto LABEL_28;
  }

  result = 0;
  v28 = v30;
  if (v35 != 2 && ((v35 ^ v36) & 1) == 0)
  {
LABEL_28:
    if (v34)
    {
      if (v33)
      {
        v29 = v32 == v31 && v34 == v33;
        if (v29 || (sub_1DD875A30() & 1) != 0)
        {
LABEL_37:
          if (v13 == 2)
          {
            if (v28 == 2)
            {
              return 1;
            }
          }

          else if (v28 != 2 && ((v28 ^ v13) & 1) == 0)
          {
            return 1;
          }
        }
      }
    }

    else if (!v33)
    {
      goto LABEL_37;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1DD760F5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701869940 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465726975716572 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x74696E61666F7270 && a2 == 0xEF7265746C694679)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD875A30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD761144(char a1)
{
  result = 7955819;
  switch(a1)
  {
    case 1:
      result = 0x65756C6176;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x6465726975716572;
      break;
    case 4:
      result = 0x74616D726F66;
      break;
    case 5:
      result = 0x74696E61666F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7611F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD760F5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD76121C(uint64_t a1)
{
  v2 = sub_1DD76D108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD761258(uint64_t a1)
{
  v2 = sub_1DD76D108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseParameter.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD0F4A0, &qword_1DD87F190);
  sub_1DD6DDEAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DEA6C();
  v10 = *v0;
  v11 = v0[1];
  sub_1DD6EDF7C();
  v23[0] = *(v0 + 48);
  v19 = v0[8];
  v20 = v0[7];
  v18 = *(v0 + 72);
  v12 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD76D108();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD770D98();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD6FF8F4();
    sub_1DD76D0F4(v13, v14);
    sub_1DD712070();
    sub_1DD6DE334();
    sub_1DD875960();
    sub_1DD70104C(v22, v21);
    sub_1DD6FAC6C(2);
    sub_1DD770D98();
    sub_1DD6DE334();
    sub_1DD875920();
    sub_1DD6DE334();
    sub_1DD875930();
    sub_1DD6FAC6C(4);
    sub_1DD6DE334();
    sub_1DD875920();
    sub_1DD6DE334();
    sub_1DD875930();
  }

  v15 = *(v6 + 8);
  v16 = sub_1DD6DEA04();
  v17(v16);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ResponseParameter.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1DD6DED2C();
  a19 = v24;
  a20 = v25;
  sub_1DD6E6390();
  v27 = v26;
  v28 = sub_1DD710A9C(&qword_1ECD0F4B8, &qword_1DD87F198);
  sub_1DD6DDEAC(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6DDFE4();
  v34 = v20[4];
  sub_1DD6DEA7C(v20, v20[3]);
  sub_1DD76D108();
  sub_1DD702A00();
  sub_1DD875B90();
  if (v21)
  {
    sub_1DD6ED26C(&a18);
    sub_1DD6E1EC8(v20);
    v50 = 0;
    v51 = 0xE000000000000000;
    v52 = 0;
    v53 = 0xF000000000000000;
    v54 = 0;
    v55 = v20;
    v56 = 2;
    *v57 = *v61;
    *&v57[3] = *&v61[3];
    v58 = v22;
    v59 = v46;
    v60 = 2;
  }

  else
  {
    LOBYTE(v50) = 0;
    sub_1DD6EE778();
    sub_1DD875870();
    v48[0] = 1;
    sub_1DD717D38();
    sub_1DD6E710C();
    sub_1DD875860();
    v35 = v27;
    v36 = v51;
    sub_1DD70104C(0, 0xF000000000000000);
    sub_1DD6F44D4(2);
    v37 = sub_1DD875820();
    v45 = v38;
    sub_1DD6F44D4(3);
    v44 = sub_1DD875830();
    sub_1DD6F44D4(4);
    v39 = sub_1DD875820();
    v47 = v40;
    v49 = 5;
    sub_1DD6EE778();
    v41 = sub_1DD875830();
    v42 = sub_1DD6ED484();
    v43(v42);
    sub_1DD6E0DD4();
    *v48 = v28;
    *&v48[8] = v23;
    sub_1DD6ED3AC();
    *&v48[16] = v30;
    *&v48[24] = v51;
    *&v48[32] = v37;
    *&v48[40] = v45;
    v48[48] = v44;
    *&v48[56] = v39;
    *&v48[64] = v47;
    v48[72] = v41;
    memcpy(v35, v48, 0x49uLL);
    sub_1DD719018(v48, &v50);
    sub_1DD6E1EC8(0);
    v50 = v28;
    v51 = v23;
    v52 = v30;
    v53 = v36;
    v54 = v37;
    v55 = v45;
    v56 = v44;
    v58 = v39;
    v59 = v47;
    v60 = v41;
  }

  sub_1DD719074(&v50);
  sub_1DD6E0C78();
}

void __swiftcall ResponseDialog.init(fullPrint:fullSpeak:supportingPrint:supportingSpeak:)(IntelligenceFlow::ResponseDialog *__return_ptr retstr, Swift::String fullPrint, Swift::String_optional fullSpeak, Swift::String_optional supportingPrint, Swift::String_optional supportingSpeak)
{
  retstr->fullPrint = fullPrint;
  retstr->fullSpeak = fullSpeak;
  retstr->supportingPrint = supportingPrint;
  retstr->supportingSpeak = supportingSpeak;
  retstr->catId = 0u;
  retstr->catDialogId = 0u;
}

uint64_t ResponseDialog.fullPrint.setter()
{
  sub_1DD6DE304();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ResponseDialog.fullSpeak.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1DD6DDEFC();
}

uint64_t ResponseDialog.fullSpeak.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t ResponseDialog.supportingPrint.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1DD6DDEFC();
}

uint64_t ResponseDialog.supportingPrint.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t ResponseDialog.supportingSpeak.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return sub_1DD6DDEFC();
}

uint64_t ResponseDialog.supportingSpeak.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t ResponseDialog.catId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return sub_1DD6DDEFC();
}

uint64_t ResponseDialog.catId.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t ResponseDialog.catDialogId.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return sub_1DD6DDEFC();
}

uint64_t ResponseDialog.catDialogId.setter()
{
  sub_1DD6DE304();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

void __swiftcall ResponseDialog.init()(IntelligenceFlow::ResponseDialog *__return_ptr retstr)
{
  retstr->fullPrint._countAndFlagsBits = 0;
  retstr->fullPrint._object = 0xE000000000000000;
  retstr->fullSpeak = 0u;
  retstr->supportingPrint = 0u;
  retstr->supportingSpeak = 0u;
  retstr->catId = 0u;
  retstr->catDialogId = 0u;
}

uint64_t static ResponseDialog.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v24 = a1[8];
  v31 = a1[9];
  v30 = a1[11];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v25 = a2[6];
  v26 = a1[6];
  v22 = a1[10];
  v23 = a2[8];
  v27 = a2[9];
  v12 = *a1 == *a2 && a1[1] == a2[1];
  v28 = a2[10];
  v29 = a2[11];
  if (!v12 && (sub_1DD875A30() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v8)
    {
      return 0;
    }

    if (v2 != v7 || v4 != v8)
    {
      sub_1DD6E6384();
      if ((sub_1DD875A30() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    v14 = v3 == v10 && v5 == v9;
    if (!v14 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    v15 = v26 == v25 && v6 == v11;
    if (!v15 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v31)
  {
    v17 = v29;
    v16 = v30;
    v18 = v28;
    if (!v27)
    {
      return 0;
    }

    v19 = v24 == v23 && v31 == v27;
    if (!v19 && (sub_1DD875A30() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v17 = v29;
    v16 = v30;
    v18 = v28;
    if (v27)
    {
      return 0;
    }
  }

  if (v16)
  {
    if (v17)
    {
      v20 = v22 == v18 && v16 == v17;
      if (v20 || (sub_1DD875A30() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v17)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DD761DAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6972506C6C7566 && a2 == 0xE900000000000074;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616570536C6C7566 && a2 == 0xE90000000000006BLL;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974726F70707573 && a2 == 0xEF746E697250676ELL;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974726F70707573 && a2 == 0xEF6B61657053676ELL;
        if (v8 || (sub_1DD875A30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6449746163 && a2 == 0xE500000000000000;
          if (v9 || (sub_1DD875A30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6F6C616944746163 && a2 == 0xEB00000000644967)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DD875A30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD761FA8(char a1)
{
  result = 0x6E6972506C6C7566;
  switch(a1)
  {
    case 1:
      result = 0x616570536C6C7566;
      break;
    case 2:
    case 3:
      result = 0x6974726F70707573;
      break;
    case 4:
      result = 0x6449746163;
      break;
    case 5:
      result = 0x6F6C616944746163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD76207C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD761DAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7620A4(uint64_t a1)
{
  v2 = sub_1DD76D15C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7620E0(uint64_t a1)
{
  v2 = sub_1DD76D15C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseDialog.encode(to:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0F4C8, &qword_1DD87F1A0);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEA6C();
  v11 = *v0;
  v12 = v0[1];
  v22 = v0[3];
  v23 = v0[2];
  v20 = v0[5];
  v21 = v0[4];
  v18 = v0[7];
  v19 = v0[6];
  v16 = v0[8];
  v17 = v0[9];
  v14 = v0[10];
  v15 = v0[11];
  v13 = v4[4];
  sub_1DD6DEA7C(v4, v4[3]);
  sub_1DD76D15C();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD770D70();
    sub_1DD6DE334();
    sub_1DD875920();
    sub_1DD770D98();
    sub_1DD6DE334();
    sub_1DD875920();
    sub_1DD6DE334();
    sub_1DD875920();
    sub_1DD6DE334();
    sub_1DD875920();
    sub_1DD6DE334();
    sub_1DD875920();
  }

  (*(v7 + 8))(v2, v5);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ResponseDialog.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD0F4D8, &qword_1DD87F1A8);
  sub_1DD6DDEAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = v0[3];
  v13 = v0[4];
  v46 = v0;
  sub_1DD6DEA7C(v0, v12);
  sub_1DD76D15C();
  sub_1DD875B90();
  if (v1)
  {
    v45 = v1;
    sub_1DD6FC458();
    sub_1DD6FE884();
    sub_1DD6E1EC8(v46);
    v48 = 0;
    v49 = 0xE000000000000000;
    v50 = v11;
    v51 = v4;
    v52 = v13;
    v53 = v12;
    v54 = v3;
    v55 = v0;
    v56 = v1;
    v57 = v44;
    v58 = 0;
    v59 = 0;
  }

  else
  {
    LOBYTE(v48) = 0;
    sub_1DD770C28();
    v14 = sub_1DD875870();
    v42 = v15;
    v43 = v14;
    LOBYTE(v48) = 1;
    sub_1DD770C28();
    v41 = sub_1DD875820();
    v40 = v16;
    LOBYTE(v48) = 2;
    sub_1DD770C28();
    v17 = sub_1DD875820();
    v18 = v3;
    v39 = v19;
    LOBYTE(v48) = 3;
    sub_1DD770C28();
    v20 = sub_1DD875820();
    v38 = v21;
    LOBYTE(v48) = 4;
    sub_1DD770C28();
    v22 = sub_1DD875820();
    v44 = v23;
    v24 = sub_1DD875820();
    v45 = 0;
    v25 = v24;
    v27 = v26;
    (*(v6 + 8))(v11, v4);
    v28 = v43;
    v47[0] = v43;
    v29 = v42;
    v47[1] = v42;
    v47[2] = v41;
    v30 = v40;
    v47[3] = v40;
    v47[4] = v17;
    v37 = v17;
    v31 = v39;
    v47[5] = v39;
    v47[6] = v20;
    v36 = v20;
    v32 = v38;
    v47[7] = v38;
    v47[8] = v22;
    v35 = v22;
    v33 = v44;
    v47[9] = v44;
    v47[10] = v25;
    v47[11] = v27;
    memcpy(v18, v47, 0x60uLL);
    sub_1DD76D1E0(v47, &v48);
    sub_1DD6E1EC8(v46);
    v48 = v28;
    v49 = v29;
    v50 = v41;
    v51 = v30;
    v52 = v37;
    v53 = v31;
    v54 = v36;
    v55 = v32;
    v56 = v35;
    v57 = v33;
    v58 = v25;
    v59 = v27;
  }

  sub_1DD76D1B0(&v48);
  sub_1DD6E0C78();
}

uint64_t ResponseVisual.views.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ResponseVisual.labels.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

IntelligenceFlow::ResponseVisual __swiftcall ResponseVisual.init(views:)(Swift::OpaquePointer views)
{
  v2 = MEMORY[0x1E69E7CC0];
  v1->_rawValue = views._rawValue;
  v1[1]._rawValue = v2;
  sub_1DD6E70D0(v1);
  result.labels._rawValue = v4;
  result.views._rawValue = v3;
  result.options.canReplacePrintableText = v5;
  return result;
}

IntelligenceFlow::ResponseVisual __swiftcall ResponseVisual.init(views:labels:)(Swift::OpaquePointer views, Swift::OpaquePointer labels)
{
  v2->_rawValue = views._rawValue;
  v2[1]._rawValue = labels._rawValue;
  sub_1DD6E70D0(v2);
  result.labels._rawValue = v4;
  result.views._rawValue = v3;
  result.options.canReplacePrintableText = v5;
  return result;
}

IntelligenceFlow::ResponseVisual __swiftcall ResponseVisual.init()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v1;
  sub_1DD6E70D0(v0);
  result.labels._rawValue = v3;
  result.views._rawValue = v2;
  result.options.canReplacePrintableText = v4;
  return result;
}

uint64_t ResponseVisual.UIType.ArchivedViewPayload.viewData.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1DD6DDEFC();
  sub_1DD710E74(v3, v4);
  return sub_1DD6DDEFC();
}

uint64_t ResponseVisual.UIType.ArchivedViewPayload.containerBundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1DD6DDEFC();
}

uint64_t ResponseVisual.UIType.ArchivedViewPayload.targetBundleId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_1DD6DDEFC();
}

uint64_t ResponseVisual.UIType.ArchivedViewPayload.init(viewData:containerBundleId:targetBundleId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t static ResponseVisual.UIType.ArchivedViewPayload.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((MEMORY[0x1E12B41A0](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    if (v2 != v7 || v3 != v6)
    {
      sub_1DD6EFF74();
      sub_1DD7051CC();
      if ((sub_1DD875A30() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      if (v4 == v9 && v5 == v8)
      {
        return 1;
      }

      sub_1DD6DDEFC();
      if (sub_1DD875A30())
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DD762990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6174614477656976 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001DD8B5C80 == a2;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7542746567726174 && a2 == 0xEE006449656C646ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD762AB0(char a1)
{
  if (!a1)
  {
    return 0x6174614477656976;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x7542746567726174;
}

uint64_t sub_1DD762B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD762990(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD762B48(uint64_t a1)
{
  v2 = sub_1DD76D218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD762B84(uint64_t a1)
{
  v2 = sub_1DD76D218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseVisual.UIType.ArchivedViewPayload.encode(to:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0F4E0, &qword_1DD87F1B0);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEA6C();
  v11 = *v0;
  v12 = v0[1];
  sub_1DD6EDF7C();
  v13 = v4[3];
  v14 = v4[4];
  sub_1DD6E6C94(v4);
  v15 = sub_1DD6EFF74();
  sub_1DD710E74(v15, v16);
  sub_1DD76D218();
  sub_1DD6E17D8();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD712070();
  sub_1DD8759D0();
  sub_1DD6E6658(v11, v12);
  if (!v1)
  {
    sub_1DD6FAC6C(1);
    sub_1DD875920();
    sub_1DD6FAC6C(2);
    sub_1DD875920();
  }

  (*(v7 + 8))(v2, v5);
  sub_1DD6E0C78();
}

void ResponseVisual.UIType.ArchivedViewPayload.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0F4F0, &qword_1DD87F1B8);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD76D218();
  sub_1DD702A00();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD717D38();
    sub_1DD6E710C();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    sub_1DD6FABF0();
    sub_1DD6EE778();
    v19 = sub_1DD875820();
    v20 = v11;
    sub_1DD6EE778();
    v12 = sub_1DD875820();
    v14 = v13;
    v15 = *(v7 + 8);
    v16 = v12;
    v17 = sub_1DD6E0F98();
    v18(v17);
    *v4 = v2;
    v4[1] = v21;
    v4[2] = v19;
    v4[3] = v20;
    v4[4] = v16;
    v4[5] = v14;
    sub_1DD710E74(v2, v21);

    sub_1DD6E1EC8(v0);
    sub_1DD6E6658(v2, v21);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t static ResponseVisual.UIType.LiveActivityPayload.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DD875A30();
  }
}

uint64_t sub_1DD763000(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7630A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD763000(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7630CC(uint64_t a1)
{
  v2 = sub_1DD76D26C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD763108(uint64_t a1)
{
  v2 = sub_1DD76D26C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseVisual.UIType.LiveActivityPayload.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD0F4F8, &qword_1DD87F1C0);
  sub_1DD6DDEAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEBA0();
  v9 = *v0;
  v10 = v0[1];
  v11 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD76D26C();
  sub_1DD6E4218();
  sub_1DD875BB0();
  sub_1DD875970();
  v12 = *(v5 + 8);
  v13 = sub_1DD6DDEDC();
  v14(v13);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void ResponseVisual.UIType.LiveActivityPayload.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0F508, &qword_1DD87F1C8);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DEBA0();
  sub_1DD6DE568();
  sub_1DD76D26C();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v0)
  {
    v11 = sub_1DD875870();
    v13 = v12;
    v14 = *(v7 + 8);
    v15 = sub_1DD6DDEDC();
    v16(v15);
    *v4 = v11;
    v4[1] = v13;
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6E0C78();
}

uint64_t ResponseVisual.UIType.PluginSnippetPayload.pluginModelData.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_1DD6DDEFC();
  sub_1DD710E74(v3, v4);
  return sub_1DD6DDEFC();
}

uint64_t ResponseVisual.UIType.PluginSnippetPayload.bundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1DD6DDEFC();
}

uint64_t static ResponseVisual.UIType.PluginSnippetPayload.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((MEMORY[0x1E12B41A0](*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  sub_1DD6DDEFC();
  sub_1DD770C90();

  return sub_1DD875A30();
}

uint64_t sub_1DD763488(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4D6E6967756C70 && a2 == 0xEF617461446C6564;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD763558(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 0x6F4D6E6967756C70;
  }
}

uint64_t sub_1DD7635A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD763488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD7635CC(uint64_t a1)
{
  v2 = sub_1DD76D2C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD763608(uint64_t a1)
{
  v2 = sub_1DD76D2C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseVisual.UIType.PluginSnippetPayload.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD0F510, &qword_1DD87F1D0);
  sub_1DD6DDEAC(v4);
  v19 = v5;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEA6C();
  v9 = *v0;
  v10 = v0[1];
  v17 = v0[3];
  v18 = v0[2];
  v11 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  v12 = sub_1DD6F9BF8();
  sub_1DD710E74(v12, v13);
  sub_1DD76D2C0();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD712070();
  sub_1DD6DE334();
  sub_1DD8759D0();
  sub_1DD6E6658(v9, v10);
  if (!v1)
  {
    sub_1DD6FAC6C(1);
    sub_1DD6DE334();
    sub_1DD875970();
  }

  v14 = *(v19 + 8);
  v15 = sub_1DD6DEA04();
  v16(v15);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ResponseVisual.UIType.PluginSnippetPayload.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0F520, &qword_1DD87F1D8);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD76D2C0();
  sub_1DD702A00();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD717D38();
    sub_1DD6FF7A8();
    sub_1DD6FAE18();
    sub_1DD8758D0();
    sub_1DD6FABF0();
    sub_1DD6FAE18();
    v11 = sub_1DD875870();
    v13 = v12;
    v14 = *(v7 + 8);
    v15 = sub_1DD6E5DB0();
    v16(v15);
    *v4 = v2;
    v4[1] = v17;
    v4[2] = v11;
    v4[3] = v13;
    sub_1DD710E74(v2, v17);

    sub_1DD6E1EC8(v0);
    sub_1DD6E6658(v2, v17);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

uint64_t ResponseVisual.UIType.ControlPayload.controlMetadata.getter()
{
  sub_1DD6E0A5C();
  v0 = sub_1DD875020();
  sub_1DD6DE1C4(v0);
  v2 = *(v1 + 16);
  v3 = sub_1DD6DDEFC();

  return v4(v3);
}

uint64_t ResponseVisual.UIType.ControlPayload.init(controlMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD875020();
  v5 = sub_1DD6DE1C4(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t static ResponseVisual.UIType.ControlPayload.== infix(_:_:)()
{
  ConfirmationView.ControlMetadata.data.getter();
  v1 = v0;
  ConfirmationView.ControlMetadata.data.getter();
  if (v1 >> 60 == 15)
  {
    if (v2 >> 60 == 15)
    {
      v3 = sub_1DD6ED118();
      sub_1DD70104C(v3, v4);
      return 1;
    }

    goto LABEL_5;
  }

  if (v2 >> 60 == 15)
  {
LABEL_5:
    v6 = sub_1DD6ED118();
    sub_1DD70104C(v6, v7);
    v8 = sub_1DD770D4C();
    sub_1DD70104C(v8, v9);
    return 0;
  }

  v10 = sub_1DD6ED118();
  sub_1DD76D0F4(v10, v11);
  v12 = sub_1DD770D4C();
  sub_1DD76D0F4(v12, v13);
  sub_1DD6ED118();
  sub_1DD770CC0();
  v14 = MEMORY[0x1E12B41A0]();
  v15 = sub_1DD770D4C();
  sub_1DD70104C(v15, v16);
  v17 = sub_1DD770D4C();
  sub_1DD70104C(v17, v18);
  v19 = sub_1DD6ED118();
  sub_1DD70104C(v19, v20);
  v21 = sub_1DD6ED118();
  sub_1DD70104C(v21, v22);
  return v14 & 1;
}

uint64_t ConfirmationView.ControlMetadata.data.getter()
{
  v0 = sub_1DD874ED0();
  v1 = sub_1DD6DDEAC(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1DD6DE4A8();
  v4 = sub_1DD874610();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1DD874600();
  sub_1DD6E0D28();
  sub_1DD875020();
  sub_1DD6E08AC();
  sub_1DD76D388(v7, v8);
  sub_1DD6FF97C();
  sub_1DD8745F0();

  return sub_1DD6EFF74();
}

uint64_t sub_1DD763D4C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4D6C6F72746E6F63 && a2 == 0xEF61746164617465)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD763DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD763D4C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD763E20(uint64_t a1)
{
  v2 = sub_1DD76D314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD763E5C(uint64_t a1)
{
  v2 = sub_1DD76D314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResponseVisual.UIType.ControlPayload.encode(to:)(void *a1)
{
  v2 = sub_1DD710A9C(&qword_1ECD0F538, &qword_1DD87F1E8);
  sub_1DD6DDEAC(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DEBA0();
  v8 = a1[4];
  sub_1DD6DEA7C(a1, a1[3]);
  sub_1DD76D314();
  sub_1DD6E4218();
  sub_1DD875BB0();
  sub_1DD875020();
  sub_1DD6E08AC();
  sub_1DD76D388(v9, v10);
  sub_1DD770CC0();
  sub_1DD8759D0();
  v11 = *(v4 + 8);
  v12 = sub_1DD6E60FC();
  return v13(v12);
}

void ResponseVisual.UIType.ControlPayload.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v30 = v4;
  v5 = sub_1DD875020();
  v6 = sub_1DD6DDEAC(v5);
  v28 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE4A8();
  v31 = v11 - v10;
  v12 = sub_1DD710A9C(&qword_1ECD0F548, &qword_1DD87F1F0);
  sub_1DD6DDEAC(v12);
  v29 = v13;
  v15 = *(v14 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1DD700B88();
  v18 = type metadata accessor for ResponseVisual.UIType.ControlPayload(v17);
  v19 = sub_1DD6DEA10(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DE4A8();
  v24 = v23 - v22;
  v25 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD76D314();
  sub_1DD875B90();
  if (!v0)
  {
    sub_1DD6E08AC();
    sub_1DD76D388(v26, v27);
    sub_1DD8758D0();
    (*(v29 + 8))(v1, v12);
    (*(v28 + 32))(v24, v31, v5);
    sub_1DD6ED15C();
    sub_1DD76D794(v24, v30);
  }

  sub_1DD6E1EC8(v3);
  sub_1DD6E0C78();
}

void static ResponseVisual.UIType.== infix(_:_:)()
{
  sub_1DD6DEB38();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for ResponseVisual.UIType.ControlPayload(0);
  v7 = sub_1DD6DEA10(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6DE4A8();
  *&v68 = v11 - v10;
  v12 = type metadata accessor for ResponseVisual.UIType(0);
  v13 = sub_1DD6DE1C4(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DE21C();
  v18 = (v16 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v67 - v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1DD6F8C34();
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v67 - v24);
  v26 = sub_1DD710A9C(&qword_1ECD0F558, &qword_1DD87F1F8);
  sub_1DD6DEA10(v26);
  v28 = *(v27 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1DD6E17C8();
  v31 = (v0 + *(v30 + 56));
  sub_1DD76E6B0(v5, v0);
  sub_1DD76E6B0(v3, v31);
  sub_1DD6DDEFC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1DD6DF3CC();
      sub_1DD76E6B0(v0, v1);
      v52 = *v1;
      v51 = v1[1];
      if (sub_1DD770DF4() != 1)
      {
        goto LABEL_23;
      }

      if (v52 != *v31 || v51 != v31[1])
      {
        v54 = v31[1];
        sub_1DD875A30();
      }

      goto LABEL_29;
    case 2u:
      sub_1DD6DF3CC();
      sub_1DD76E6B0(v0, v21);
      if (sub_1DD770DF4() == 2)
      {
        sub_1DD6ED15C();
        sub_1DD76D794(v31, v68);
        static ResponseVisual.UIType.ControlPayload.== infix(_:_:)();
        sub_1DD76D3F0();
        sub_1DD76D3F0();
        goto LABEL_30;
      }

      sub_1DD6F0A24();
      sub_1DD76D3F0();
      goto LABEL_24;
    case 3u:
      sub_1DD6DF3CC();
      sub_1DD76E6B0(v0, v18);
      v39 = *v18;
      v38 = v18[1];
      v41 = v18[2];
      v40 = v18[3];
      if (sub_1DD770DF4() != 3)
      {
        v55 = sub_1DD6DDEDC();
        sub_1DD6E6658(v55, v56);
        goto LABEL_23;
      }

      v43 = *v31;
      v42 = v31[1];
      v45 = v31[2];
      v44 = v31[3];
      sub_1DD6DDEDC();
      sub_1DD7051CC();
      if (MEMORY[0x1E12B41A0]())
      {
        if (v41 != v45 || v40 != v44)
        {
          sub_1DD875A30();
        }

        v47 = sub_1DD6E6384();
        sub_1DD6E6658(v47, v48);

        v49 = sub_1DD6DDEDC();
        sub_1DD6E6658(v49, v50);
LABEL_29:
      }

      else
      {
        v63 = sub_1DD6E6384();
        sub_1DD6E6658(v63, v64);

        v65 = sub_1DD6DDEDC();
        sub_1DD6E6658(v65, v66);
      }

      goto LABEL_30;
    default:
      sub_1DD6DF3CC();
      sub_1DD76E6B0(v0, v25);
      v33 = *v25;
      v32 = v25[1];
      v34 = v25[3];
      v35 = v25[5];
      if (sub_1DD770DF4())
      {
        v36 = sub_1DD6E5DB0();
        sub_1DD6E6658(v36, v37);

LABEL_23:

LABEL_24:
        sub_1DD6FC560(v0, &qword_1ECD0F558, &qword_1DD87F1F8);
      }

      else
      {
        v57 = v25[4];
        v58 = v25[2];
        v59 = *v31;
        v60 = v31[5];
        v73[0] = v33;
        v73[1] = v32;
        v73[2] = v58;
        v73[3] = v34;
        v73[4] = v57;
        v73[5] = v35;
        v69 = v59;
        v67 = *(v31 + 1);
        v70 = v67;
        v68 = *(v31 + 3);
        v71 = v68;
        v72 = v60;
        static ResponseVisual.UIType.ArchivedViewPayload.== infix(_:_:)(v73, &v69);
        sub_1DD6E6658(v59, v67);

        v61 = sub_1DD6E5DB0();
        sub_1DD6E6658(v61, v62);

LABEL_30:
        sub_1DD6E0AA4();
        sub_1DD76D3F0();
      }

      sub_1DD6DFED0();
      return;
  }
}

uint64_t sub_1DD7646C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465766968637261 && a2 == 0xEC00000077656956;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x697463416576696CLL && a2 == 0xEC00000079746976;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000;
      if (v7 || (sub_1DD875A30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E536E6967756C70 && a2 == 0xED00007465707069)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD875A30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DD764830(char a1)
{
  result = 0x6465766968637261;
  switch(a1)
  {
    case 1:
      result = 0x697463416576696CLL;
      break;
    case 2:
      result = 0x6C6F72746E6F63;
      break;
    case 3:
      result = 0x6E536E6967756C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7648D0(uint64_t a1)
{
  v2 = sub_1DD76D63C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD76490C(uint64_t a1)
{
  v2 = sub_1DD76D63C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD764950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7646C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD764978@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD764828();
  *a1 = result;
  return result;
}

uint64_t sub_1DD7649A0(uint64_t a1)
{
  v2 = sub_1DD76D444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7649DC(uint64_t a1)
{
  v2 = sub_1DD76D444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD764A18(uint64_t a1)
{
  v2 = sub_1DD76D540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD764A54(uint64_t a1)
{
  v2 = sub_1DD76D540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD764A90(uint64_t a1)
{
  v2 = sub_1DD76D594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD764ACC(uint64_t a1)
{
  v2 = sub_1DD76D594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD764B08(uint64_t a1)
{
  v2 = sub_1DD76D498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD764B44(uint64_t a1)
{
  v2 = sub_1DD76D498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseVisual.UIType.encode(to:)()
{
  sub_1DD6DED2C();
  v77 = v0;
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD0F560, &qword_1DD87F200);
  v75 = sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E0C6C();
  v8 = sub_1DD710A9C(&qword_1ECD0F568, &qword_1DD87F208);
  sub_1DD6DDEAC(v8);
  v73 = v9;
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6E0C6C();
  v71 = type metadata accessor for ResponseVisual.UIType.ControlPayload(0);
  v13 = sub_1DD6DE1C4(v71);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1DD6DE4A8();
  v72 = v17 - v16;
  v18 = sub_1DD710A9C(&qword_1ECD0F570, &qword_1DD87F210);
  v19 = sub_1DD6DDEAC(v18);
  v69 = v20;
  v70 = v19;
  v22 = *(v21 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1DD6E7258();
  v24 = sub_1DD710A9C(&qword_1ECD0F578, &qword_1DD87F218);
  sub_1DD6DDEAC(v24);
  v68 = v25;
  v27 = *(v26 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1DD6DDFE4();
  v29 = type metadata accessor for ResponseVisual.UIType(0);
  v30 = sub_1DD6DE1C4(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1DD6DE4A8();
  v35 = (v34 - v33);
  v36 = sub_1DD710A9C(&qword_1ECD0F580, &qword_1DD87F220);
  v79 = sub_1DD6DDEAC(v36);
  v38 = *(v37 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1DD6DE340();
  v40 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD76D444();
  sub_1DD875BB0();
  sub_1DD6DF3CC();
  sub_1DD76E6B0(v77, v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v65 = *v35;
      v64 = v35[1];
      sub_1DD76D594();
      sub_1DD6FF7A8();
      sub_1DD875910();
      sub_1DD76D5E8();
      sub_1DD8759D0();
      (*(v69 + 8))(v1, v70);
      v66 = sub_1DD6E60EC();
      v67(v66, v79);
      goto LABEL_6;
    case 2u:
      sub_1DD76D794(v35, v72);
      sub_1DD76D540();
      sub_1DD875910();
      sub_1DD6EED5C();
      sub_1DD76D388(v49, v50);
      sub_1DD8759D0();
      v51 = *(v73 + 8);
      v52 = sub_1DD6E60FC();
      v53(v52);
      sub_1DD6F0A24();
      sub_1DD76D3F0();
      v54 = sub_1DD6E60EC();
      v55(v54, v79);
      goto LABEL_7;
    case 3u:
      v56 = *v35;
      v57 = v35[1];
      v59 = v35[2];
      v58 = v35[3];
      sub_1DD76D498();
      sub_1DD875910();
      sub_1DD76D4EC();
      sub_1DD8759D0();
      v60 = sub_1DD6E4290();
      v61(v60, v75);
      v62 = sub_1DD6E60EC();
      v63(v62, v79);
      sub_1DD6E6658(v56, v57);
      goto LABEL_6;
    default:
      v41 = v35[1];
      v42 = v35[3];
      v76 = v35[2];
      v78 = *v35;
      v43 = v35[5];
      v74 = v35[4];
      sub_1DD76D63C();
      sub_1DD875910();
      sub_1DD76D690();
      sub_1DD8759D0();
      v44 = *(v68 + 8);
      v45 = sub_1DD6E5DB0();
      v46(v45);
      v47 = sub_1DD6E60EC();
      v48(v47, v79);
      sub_1DD6E6658(v78, v41);

LABEL_6:

LABEL_7:
      sub_1DD6E0C78();
      return;
  }
}

void ResponseVisual.UIType.init(from:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v116 = v4;
  v110 = sub_1DD710A9C(&qword_1ECD0F5D0, &qword_1DD87F228);
  sub_1DD6DDEAC(v110);
  v113 = v5;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6E0C6C();
  v115 = v9;
  v10 = sub_1DD710A9C(&qword_1ECD0F5D8, &qword_1DD87F230);
  v11 = sub_1DD6DDEAC(v10);
  v111 = v12;
  v112 = v11;
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E0C6C();
  v120 = v16;
  v108 = sub_1DD710A9C(&qword_1ECD0F5E0, &qword_1DD87F238);
  sub_1DD6DDEAC(v108);
  v109 = v17;
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6E0C6C();
  v119 = v21;
  v107 = sub_1DD710A9C(&qword_1ECD0F5E8, &qword_1DD87F240);
  sub_1DD6DDEAC(v107);
  v106 = v22;
  v24 = *(v23 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1DD6E0C6C();
  v114 = v26;
  v27 = sub_1DD710A9C(&unk_1ECD0F5F0, &unk_1DD87F248);
  v28 = sub_1DD6DDEAC(v27);
  v117 = v29;
  v118 = v28;
  v31 = *(v30 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1DD6DEA6C();
  v121 = type metadata accessor for ResponseVisual.UIType(0);
  v33 = sub_1DD6DE1C4(v121);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1DD6DE21C();
  v38 = (v36 - v37);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v101 - v40;
  MEMORY[0x1EEE9AC00](v42);
  sub_1DD6F8C34();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v101 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v101 - v47;
  v49 = v3[3];
  v50 = v3[4];
  v122 = v3;
  sub_1DD6DEA7C(v3, v49);
  sub_1DD76D444();
  sub_1DD6E17D8();
  sub_1DD875B90();
  if (v0)
  {
    goto LABEL_10;
  }

  v102 = v45;
  v103 = v1;
  v104 = v38;
  v105 = v41;
  v126 = v48;
  v51 = v121;
  v52 = v118;
  v53 = sub_1DD875900();
  sub_1DD6ED750(v53, 0);
  if (v55 == v56 >> 1)
  {
    v57 = v51;
LABEL_9:
    v65 = sub_1DD875740();
    swift_allocError();
    v67 = v66;
    v68 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v67 = v57;
    sub_1DD875810();
    sub_1DD6DF100();
    (*(*(v65 - 8) + 104))(v67, *MEMORY[0x1E69E6AF8], v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    v69 = sub_1DD6DEBBC();
    v70(v69, v52);
LABEL_10:
    sub_1DD6E1EC8(v122);
LABEL_11:
    sub_1DD7536FC();
    sub_1DD6E0C78();
    return;
  }

  v101 = 0;
  if (v55 < (v56 >> 1))
  {
    v58 = *(v54 + v55);
    sub_1DD6ED830(v55 + 1);
    v60 = v59;
    v62 = v61;
    swift_unknownObjectRelease();
    if (v60 == v62 >> 1)
    {
      v63 = v116;
      switch(v58)
      {
        case 1:
          LOBYTE(v123) = 1;
          sub_1DD76D594();
          sub_1DD6DED78();
          sub_1DD76D7EC();
          v76 = v108;
          sub_1DD6FF7A8();
          sub_1DD8758D0();
          sub_1DD770CB0();
          swift_unknownObjectRelease();
          v96 = sub_1DD6E4290();
          v97(v96, v76);
          v98 = sub_1DD770C38();
          v99(v98);
          v100 = *(&v123 + 1);
          v86 = v103;
          *v103 = v123;
          *(v86 + 8) = v100;
          goto LABEL_16;
        case 2:
          LOBYTE(v123) = 2;
          sub_1DD76D540();
          sub_1DD6DED78();
          type metadata accessor for ResponseVisual.UIType.ControlPayload(0);
          sub_1DD6EED5C();
          sub_1DD76D388(v71, v72);
          v73 = v105;
          v74 = v112;
          sub_1DD8758D0();
          swift_unknownObjectRelease();
          v77 = sub_1DD6DEBBC();
          v78(v77, v74);
          v79 = sub_1DD6DED98();
          v80(v79, v52);
          swift_storeEnumTagMultiPayload();
          sub_1DD6E52D4();
          v93 = v73;
          goto LABEL_15;
        case 3:
          LOBYTE(v123) = 3;
          sub_1DD76D498();
          sub_1DD6DED78();
          sub_1DD76D740();
          v75 = v110;
          sub_1DD6FF7A8();
          sub_1DD8758D0();
          sub_1DD770CB0();
          swift_unknownObjectRelease();
          v81 = sub_1DD6E61C4();
          v82(v81, v75);
          v83 = sub_1DD770C38();
          v84(v83);
          v85 = v124;
          v86 = v104;
          *v104 = v123;
          *(v86 + 16) = v85;
LABEL_16:
          swift_storeEnumTagMultiPayload();
          sub_1DD6E52D4();
          v94 = v126;
          sub_1DD76D794(v86, v126);
          v95 = v122;
          v63 = v116;
          goto LABEL_17;
        default:
          LOBYTE(v123) = 0;
          sub_1DD76D63C();
          sub_1DD6DED78();
          sub_1DD76D840();
          v64 = v107;
          sub_1DD6FF7A8();
          sub_1DD8758D0();
          sub_1DD770CB0();
          swift_unknownObjectRelease();
          v87 = sub_1DD6E4290();
          v88(v87, v64);
          v89 = sub_1DD770C38();
          v90(v89);
          v91 = v124;
          v92 = v102;
          *v102 = v123;
          v92[1] = v91;
          v92[2] = v125;
          swift_storeEnumTagMultiPayload();
          sub_1DD6E52D4();
          v93 = v92;
LABEL_15:
          v94 = v126;
          sub_1DD76D794(v93, v126);
          v95 = v122;
LABEL_17:
          sub_1DD6E52D4();
          sub_1DD76D794(v94, v63);
          sub_1DD6E1EC8(v95);
          break;
      }

      goto LABEL_11;
    }

    v57 = v121;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t static ResponseVisual.UILabel.UIConfirmationPayload.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1DD6ED63C(a1, a2);
  v8 = v8 && v6 == v7;
  if (v8 || (v9 = sub_1DD875A30(), result = 0, (v9 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      sub_1DD6DDEFC();
      sub_1DD770C90();

      return sub_1DD875A30();
    }
  }

  return result;
}

uint64_t sub_1DD765B9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74616D7269666661 && a2 == 0xEB00000000657669;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657669746167656ELL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD765C68(char a1)
{
  if (a1)
  {
    return 0x657669746167656ELL;
  }

  else
  {
    return 0x74616D7269666661;
  }
}

uint64_t sub_1DD765CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD765B9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD765CD8(uint64_t a1)
{
  v2 = sub_1DD76D894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD765D14(uint64_t a1)
{
  v2 = sub_1DD76D894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseVisual.UILabel.UIConfirmationPayload.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD0F620, &qword_1DD87F258);
  sub_1DD6DDEAC(v4);
  v17 = v5;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEA6C();
  v9 = *v0;
  v10 = v0[1];
  v15 = v0[3];
  v16 = v0[2];
  v11 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD76D894();
  sub_1DD6E17D8();
  sub_1DD875BB0();
  sub_1DD6F9BF8();
  sub_1DD6DE334();
  sub_1DD875970();
  if (!v1)
  {
    sub_1DD770D70();
    sub_1DD6DE334();
    sub_1DD875970();
  }

  v12 = *(v17 + 8);
  v13 = sub_1DD6DEA04();
  v14(v13);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ResponseVisual.UILabel.UIConfirmationPayload.init(from:)()
{
  sub_1DD6DED2C();
  sub_1DD6E6390();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD0F630, &qword_1DD87F260);
  sub_1DD6DDEAC(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD76D894();
  sub_1DD702A00();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (v1)
  {
    sub_1DD6E1EC8(v0);
  }

  else
  {
    sub_1DD6FAE18();
    v10 = sub_1DD875870();
    v12 = v11;
    sub_1DD6FAE18();
    v13 = sub_1DD875870();
    v15 = v14;
    v16 = *(v6 + 8);
    v19 = v13;
    v17 = sub_1DD6E5DB0();
    v18(v17);
    *v3 = v10;
    v3[1] = v12;
    v3[2] = v19;
    v3[3] = v15;

    sub_1DD6E1EC8(v0);
  }

  sub_1DD6DF120();
  sub_1DD6E0C78();
}

BOOL static ResponseVisual.UILabel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1DD6ED63C(a1, a2);
  v8 = v8 && v6 == v7;
  result = 0;
  if (v8 || (sub_1DD875A30() & 1) != 0)
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    sub_1DD6DDEFC();
    sub_1DD770C90();
    if (sub_1DD875A30())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1DD7660B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD766150(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD7661C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7660B4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD7661F0(uint64_t a1)
{
  v2 = sub_1DD76D8E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD76622C(uint64_t a1)
{
  v2 = sub_1DD76D8E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD766268(uint64_t a1)
{
  v2 = sub_1DD76D93C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7662A4(uint64_t a1)
{
  v2 = sub_1DD76D93C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseVisual.UILabel.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD0F638, &qword_1DD87F268);
  v22 = sub_1DD6DDEAC(v3);
  v5 = *(v4 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DD6DE340();
  v7 = sub_1DD710A9C(&qword_1ECD0F640, &qword_1DD87F270);
  sub_1DD6DDEAC(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1DD6DDFE4();
  v21 = *v0;
  v13 = *(v0 + 2);
  v20 = *(v0 + 3);
  v14 = v2[4];
  sub_1DD6DEA7C(v2, v2[3]);
  sub_1DD76D8E8();
  sub_1DD875BB0();
  sub_1DD76D93C();
  sub_1DD6FF7A8();
  sub_1DD875910();
  sub_1DD76D990();
  sub_1DD8759D0();
  v15 = sub_1DD6E61C4();
  v16(v15, v22);
  v17 = *(v9 + 8);
  v18 = sub_1DD6E5DB0();
  v19(v18);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void ResponseVisual.UILabel.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v35 = v5;
  v6 = sub_1DD710A9C(&qword_1ECD0F660, &qword_1DD87F278);
  sub_1DD6DDEAC(v6);
  v31 = v7;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6E7258();
  v11 = sub_1DD710A9C(&qword_1ECD0F668, &qword_1DD87F280);
  sub_1DD6DDEAC(v11);
  v30 = v12;
  v14 = *(v13 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1DD6E17C8();
  v16 = v4[4];
  sub_1DD6DEA7C(v4, v4[3]);
  sub_1DD76D8E8();
  sub_1DD875B90();
  if (v1)
  {
    goto LABEL_8;
  }

  v17 = sub_1DD875900();
  sub_1DD6ED750(v17, 0);
  v20 = v11;
  if (v18 == v19 >> 1)
  {
LABEL_7:
    v25 = sub_1DD875740();
    swift_allocError();
    v27 = v26;
    v28 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v27 = &type metadata for ResponseVisual.UILabel;
    sub_1DD875810();
    sub_1DD6DF100();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v30 + 8))(v0, v20);
LABEL_8:
    v29 = v4;
    goto LABEL_9;
  }

  if (v18 < (v19 >> 1))
  {
    sub_1DD6ED830(v18 + 1);
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    if (v22 == v24 >> 1)
    {
      sub_1DD76D93C();
      sub_1DD875800();
      sub_1DD76D9E4();
      sub_1DD8758D0();
      swift_unknownObjectRelease();
      (*(v31 + 8))(v2, v6);
      (*(v30 + 8))(v0, v11);
      *v35 = v32;
      *(v35 + 16) = v33;
      *(v35 + 24) = v34;
      v29 = v4;
LABEL_9:
      sub_1DD6E1EC8(v29);
      sub_1DD6E0C78();
      return;
    }

    v20 = v11;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DD7668F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001DD8B5CA0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DD875A30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DD766978()
{
  sub_1DD6DEDA4();
  MEMORY[0x1E12B5570](0);
  return sub_1DD875B60();
}

uint64_t sub_1DD7669D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7668F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DD766A00(uint64_t a1)
{
  v2 = sub_1DD76DA38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD766A3C(uint64_t a1)
{
  v2 = sub_1DD76DA38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseVisual.ResponseVisualOptions.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD0F678, &qword_1DD87F288);
  sub_1DD6DDEAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEBA0();
  v9 = *v0;
  v10 = v2[3];
  v11 = v2[4];
  sub_1DD6E6C94(v2);
  sub_1DD76DA38();
  sub_1DD6E4218();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD875980();
  v12 = *(v5 + 8);
  v13 = sub_1DD6DDEDC();
  v14(v13);
  sub_1DD7536FC();
  sub_1DD6E0C78();
}

void ResponseVisual.ResponseVisualOptions.init(from:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD710A9C(&qword_1ECD0F688, &qword_1DD87F290);
  sub_1DD6DDEAC(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD76DA38();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (!v0)
  {
    sub_1DD6EE778();
    v11 = sub_1DD875880();
    v12 = *(v7 + 8);
    v13 = sub_1DD6E0F98();
    v14(v13);
    *v4 = v11 & 1;
  }

  sub_1DD6E1EC8(v2);
  sub_1DD6E0C78();
}

uint64_t sub_1DD766D18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7377656976 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736C6562616CLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD875A30() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD875A30();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD766E20(unsigned __int8 a1)
{
  sub_1DD6DEDA4();
  MEMORY[0x1E12B5570](a1);
  return sub_1DD875B60();
}

uint64_t sub_1DD766E60(char a1)
{
  if (!a1)
  {
    return 0x7377656976;
  }

  if (a1 == 1)
  {
    return 0x736C6562616CLL;
  }

  return 0x736E6F6974706FLL;
}

uint64_t sub_1DD766EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD766D18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD766EE0(uint64_t a1)
{
  v2 = sub_1DD76DA8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD766F1C(uint64_t a1)
{
  v2 = sub_1DD76DA8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseVisual.encode(to:)()
{
  sub_1DD6DED2C();
  v2 = v1;
  v3 = sub_1DD710A9C(&qword_1ECD0F690, &qword_1DD87F298);
  sub_1DD6DDEAC(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1DD6DEA6C();
  v9 = *v0;
  v17 = v0[1];
  v16 = *(v0 + 16);
  v10 = v2[3];
  v11 = v2[4];
  sub_1DD6E6C94(v2);
  v12 = sub_1DD76DA8C();

  sub_1DD6E17D8();
  sub_1DD6DFF18();
  sub_1DD875BB0();
  sub_1DD710A9C(&qword_1ECD0F6A0, &qword_1DD87F2A0);
  sub_1DD76DC0C(&qword_1ECD0F6A8, &qword_1ECD0F6B0);
  sub_1DD6DEA94();
  sub_1DD6DE334();
  sub_1DD8759D0();

  if (!v12)
  {
    sub_1DD710A9C(&qword_1ECD0F6B8, &qword_1DD87F2A8);
    sub_1DD76DAE0();
    sub_1DD6DEA94();
    sub_1DD6DE334();
    sub_1DD8759D0();
    sub_1DD76DBB8();
    sub_1DD6DEA94();
    sub_1DD6DE334();
    sub_1DD8759D0();
  }

  v13 = *(v5 + 8);
  v14 = sub_1DD6DEA04();
  v15(v14);
  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

void ResponseVisual.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DD6DED2C();
  v12 = v11;
  v14 = v13;
  v15 = sub_1DD710A9C(&qword_1ECD0F6D8, &qword_1DD87F2B0);
  sub_1DD6DDEAC(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1DD6DDFE4();
  sub_1DD6DE568();
  sub_1DD76DA8C();
  sub_1DD6DFF18();
  sub_1DD875B90();
  if (v10)
  {
    sub_1DD6E1EC8(v12);
  }

  else
  {
    sub_1DD710A9C(&qword_1ECD0F6A0, &qword_1DD87F2A0);
    sub_1DD76DC0C(&qword_1ECD0F6E0, &qword_1ECD0F6E8);
    sub_1DD6E40A8();
    sub_1DD710A9C(&qword_1ECD0F6B8, &qword_1DD87F2A8);
    sub_1DD76DCA8();
    sub_1DD6E40A8();
    sub_1DD76DD80();
    sub_1DD6FF7A8();
    sub_1DD8758D0();
    v21 = *(v17 + 8);
    v22 = sub_1DD6E5DB0();
    v23(v22);
    *v14 = a10;
    *(v14 + 8) = a10;
    *(v14 + 16) = a10;

    sub_1DD6E1EC8(v12);
  }

  sub_1DD6E0CE8();
  sub_1DD6E0C78();
}

IntelligenceFlow::ResponseManifest::CodingKeys_optional __swiftcall ResponseManifest.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD8757F0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

IntelligenceFlow::ResponseManifest::CodingKeys_optional __swiftcall ResponseManifest.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = ResponseManifest.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_1DD767498()
{
  result = 0x6574656D61726170;
  switch(*v0)
  {
    case 1:
      result = 0x676F6C616964;
      break;
    case 2:
      result = 0x6C6175736976;
      break;
    case 3:
      result = 0x6574616C706D6574;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      sub_1DD6E58F8();
      result = v2 | 6;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD7675E0@<X0>(uint64_t *a1@<X8>)
{
  result = ResponseManifest.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD767624(uint64_t a1)
{
  v2 = sub_1DD76E03C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD767660(uint64_t a1)
{
  v2 = sub_1DD76E03C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7676A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD875A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7373657270707573 && a2 == 0xED0000746E697250)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD875A30();

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

uint64_t sub_1DD767774(char a1)
{
  sub_1DD6DEDA4();
  MEMORY[0x1E12B5570](a1 & 1);
  return sub_1DD875B60();
}

uint64_t sub_1DD7677B4(char a1)
{
  if (a1)
  {
    return 0x7373657270707573;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1DD767804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD7676A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD76782C(uint64_t a1)
{
  v2 = sub_1DD76DDD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD767868(uint64_t a1)
{
  v2 = sub_1DD76DDD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD7678A8(uint64_t a1)
{
  v2 = sub_1DD76DE7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD7678E4(uint64_t a1)
{
  v2 = sub_1DD76DE7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD767920(uint64_t a1)
{
  v2 = sub_1DD76DE28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD76795C(uint64_t a1)
{
  v2 = sub_1DD76DE28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ResponseManifest.ResponseDialogPresentationHint.encode(to:)()
{
  sub_1DD6DED2C();
  v3 = v2;
  v4 = sub_1DD710A9C(&qword_1ECD0F708, &qword_1DD87F2B8);
  sub_1DD6DDEAC(v4);
  v6 = *(v5 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1DD6E0C6C();
  v8 = sub_1DD710A9C(&qword_1ECD0F710, &qword_1DD87F2C0);
  sub_1DD6DDEAC(v8);
  v10 = *(v9 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1DD710A9C(&qword_1ECD0F718, &qword_1DD87F2C8);
  sub_1DD6DDEAC(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1DD6E7258();
  v18 = *v0;
  v19 = v3[4];
  sub_1DD6DEA7C(v3, v3[3]);
  sub_1DD76DDD4();
  sub_1DD875BB0();
  v20 = (v14 + 8);
  if (v18)
  {
    sub_1DD6FF8F4();
    sub_1DD76DE28();
    sub_1DD6E710C();
    sub_1DD875910();
    v21 = sub_1DD6DED98();
  }

  else
  {
    sub_1DD76DE7C();
    sub_1DD6E710C();
    sub_1DD875910();
    v21 = sub_1DD6E4290();
  }

  v22(v21);
  (*v20)(v1, v12);
  sub_1DD6E0C78();
}

uint64_t ResponseManifest.ResponseDialogPresentationHint.hashValue.getter()
{
  v1 = *v0;
  sub_1DD6DEDA4();
  MEMORY[0x1E12B5570](v1);
  return sub_1DD875B60();
}

void ResponseManifest.ResponseDialogPresentationHint.init(from:)()
{
  sub_1DD6DED2C();
  v4 = v3;
  v46 = v5;
  v48 = sub_1DD710A9C(&qword_1ECD0F738, &qword_1DD87F2D0);
  sub_1DD6DDEAC(v48);
  v45 = v6;
  v8 = *(v7 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1DD6E17C8();
  v10 = sub_1DD710A9C(&qword_1ECD0F740, &qword_1DD87F2D8);
  sub_1DD6DDEAC(v10);
  v44 = v11;
  v13 = *(v12 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1DD6DDFE4();
  v15 = sub_1DD710A9C(&qword_1ECD0F748, &qword_1DD87F2E0);
  sub_1DD6DDEAC(v15);
  v47 = v16;
  v18 = *(v17 + 64);
  sub_1DD6DDED0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1DD6DEBA0();
  v21 = v4[3];
  v20 = v4[4];
  sub_1DD6E6C94(v4);
  sub_1DD76DDD4();
  sub_1DD6E4218();
  sub_1DD875B90();
  if (v1)
  {
    goto LABEL_8;
  }

  v49 = v4;
  v22 = sub_1DD875900();
  sub_1DD6ED750(v22, 0);
  if (v24 == v25 >> 1)
  {
LABEL_7:
    v34 = sub_1DD875740();
    swift_allocError();
    v36 = v35;
    v37 = *(sub_1DD710A9C(&qword_1ECD0E158, &qword_1DD876EC0) + 48);
    *v36 = &type metadata for ResponseManifest.ResponseDialogPresentationHint;
    sub_1DD875810();
    sub_1DD6DF100();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    v38 = *(v47 + 8);
    v39 = sub_1DD770D98();
    v40(v39);
    v4 = v49;
LABEL_8:
    sub_1DD6E1EC8(v4);
LABEL_9:
    sub_1DD6DF120();
    sub_1DD6E0C78();
    return;
  }

  if (v24 < (v25 >> 1))
  {
    v26 = *(v23 + v24);
    sub_1DD6ED830(v24 + 1);
    v28 = v27;
    v30 = v29;
    swift_unknownObjectRelease();
    if (v28 == v30 >> 1)
    {
      if (v26)
      {
        sub_1DD6FF8F4();
        sub_1DD76DE28();
        v31 = v0;
        sub_1DD6ED7E8();
        v32 = v46;
        v33 = v47;
        swift_unknownObjectRelease();
        (*(v45 + 8))(v31, v48);
      }

      else
      {
        sub_1DD76DE7C();
        sub_1DD6ED7E8();
        v32 = v46;
        v33 = v47;
        swift_unknownObjectRelease();
        (*(v44 + 8))(v2, v10);
      }

      v41 = *(v33 + 8);
      v42 = sub_1DD6E60FC();
      v43(v42);
      *v32 = v26;
      sub_1DD6E1EC8(v49);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t ResponseManifest.init(parameters:dialog:visual:attribution:templateId:templateLocation:useTemplateAsFallback:dialogPresentationHint:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char *a11)
{
  v14 = a3[1];
  v29 = *a3;
  v15 = *(a3 + 16);
  v30 = *a11;
  v16 = type metadata accessor for ResponseManifest(0);
  bzero((a9 + 8), 0xD1uLL);
  v17 = v16[8];
  sub_1DD6ED7CC();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v18, v19, v20, v21);
  v22 = (a9 + v16[9]);
  v23 = (a9 + v16[10]);
  v24 = v16[11];
  v25 = v16[12];
  *(a9 + v25) = 2;
  *a9 = a1;
  memcpy(__dst, (a9 + 8), 0x60uLL);
  sub_1DD6FC560(__dst, &qword_1ECD0F750, &qword_1DD87F2E8);
  memcpy((a9 + 8), a2, 0x60uLL);
  v26 = *(a9 + 208);
  v27 = *(a9 + 216);
  sub_1DD76DEF0(*(a9 + 200));
  *(a9 + 200) = v29;
  *(a9 + 208) = v14;
  *(a9 + 216) = v15;
  result = sub_1DD76DF30(a4, a9 + v17);
  *v22 = a5;
  v22[1] = a6;
  *v23 = a7;
  v23[1] = a8;
  *(a9 + v24) = a10;
  *(a9 + v25) = v30;
  return result;
}

uint64_t ResponseManifest.init(dialog:visual:)@<X0>(const void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = type metadata accessor for ResponseManifest(0);
  bzero((a3 + 8), 0xD1uLL);
  v9 = v8[8];
  sub_1DD6ED7CC();
  sub_1DD6E0C90();
  sub_1DD6E5E68(v10, v11, v12, v13);
  v14 = (a3 + v8[9]);
  v15 = (a3 + v8[10]);
  v16 = v8[11];
  *(a3 + v8[12]) = 2;
  *a3 = 0;
  memcpy(v20, (a3 + 8), sizeof(v20));
  sub_1DD6FC560(v20, &qword_1ECD0F750, &qword_1DD87F2E8);
  memcpy((a3 + 8), a1, 0x60uLL);
  v17 = *(a3 + 208);
  v18 = *(a3 + 216);
  result = sub_1DD76DEF0(*(a3 + 200));
  *(a3 + 200) = v5;
  *(a3 + 208) = v6;
  *(a3 + 216) = v7;
  *v14 = 0;
  v14[1] = 0;
  *v15 = 0;
  v15[1] = 0;
  *(a3 + v16) = 2;
  return result;
}

uint64_t ResponseManifest.parameters.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ResponseManifest.dialog.getter@<X0>(void *a1@<X8>)
{
  sub_1DD6E72B4();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 8), 0x60uLL);
  return sub_1DD76DFE0(v8, &v7, &qword_1ECD0F750, &qword_1DD87F2E8);
}

void *ResponseManifest.dialog.setter(const void *a1)
{
  sub_1DD6E72B4();
  memcpy(v3, v4, v5);
  sub_1DD6FC560(&v7, &qword_1ECD0F750, &qword_1DD87F2E8);
  return memcpy((v1 + 8), a1, 0x60uLL);
}

uint64_t ResponseManifest.fallbackDialog.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 104), sizeof(__dst));
  memcpy(a1, (v1 + 104), 0x60uLL);
  return sub_1DD76DFE0(__dst, &v4, &qword_1ECD0F750, &qword_1DD87F2E8);
}

void *ResponseManifest.fallbackDialog.setter(const void *a1)
{
  memcpy(v4, (v1 + 104), sizeof(v4));
  sub_1DD6FC560(v4, &qword_1ECD0F750, &qword_1DD87F2E8);
  return memcpy((v1 + 104), a1, 0x60uLL);
}