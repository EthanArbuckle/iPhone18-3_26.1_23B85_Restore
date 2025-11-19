uint64_t sub_20E28F8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE0, &qword_20E3462F8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE0, &qword_20E3462F8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v28, v36, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v36, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E28FEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE0, &qword_20E3462F8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE0, &qword_20E3462F8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v28, v36, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v36, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E290460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE0, &qword_20E3462F8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE0, &qword_20E3462F8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E0486F4(v28, v36, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
    return sub_20E04875C(v36, &qword_27C863B18, &qword_20E323EB0);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypedValue);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypedValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E290A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D068, &qword_20E356438);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE0, &qword_20E3462F8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE0, &qword_20E3462F8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_20E04875C(v28, &qword_27C86D068, &qword_20E356438);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C368, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D068, &qword_20E356438);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D068, &qword_20E356438);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D068, &qword_20E356438);
    return sub_20E04875C(v36, &qword_27C86D068, &qword_20E356438);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D068, &qword_20E356438);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE0, &qword_20E3462F8);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C869CE0, &qword_20E3462F8);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E2915A4(v3, a1, a2, a3);
        goto LABEL_23;
      case 2u:
        sub_20E291C74(v3, a1, a2, a3);
        goto LABEL_23;
      case 3u:
        sub_20E291EAC(v3, a1, a2, a3);
        goto LABEL_23;
      case 4u:
        sub_20E2920E4(v3, a1, a2, a3);
        goto LABEL_23;
      case 5u:
        sub_20E29231C(v3, a1, a2, a3);
        goto LABEL_23;
      case 6u:
        sub_20E292554(v3, a1, a2, a3);
        goto LABEL_23;
      case 7u:
        sub_20E29278C(v3, a1, a2, a3);
        goto LABEL_23;
      case 8u:
        sub_20E2929C4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      case 9u:
        sub_20E292BFC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      case 0xAu:
        sub_20E292E34(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      case 0xBu:
        sub_20E29306C(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        }

        goto LABEL_10;
      case 0xCu:
        sub_20E2934F0(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        }

LABEL_10:
        sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        break;
      case 0xDu:
        result = sub_20E2917DC(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_20E291A28(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_20E2932A4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_20E291370(v3, a1, a2, a3);
LABEL_23:
        result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v14 = v3 + *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E291370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE0, &qword_20E3462F8);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2915A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE0, &qword_20E3462F8);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2917DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C869CE0, &qword_20E3462F8);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C869CE0, &qword_20E3462F8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E291A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C869CE0, &qword_20E3462F8);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C869CE0, &qword_20E3462F8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E291C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE0, &qword_20E3462F8);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E291EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE0, &qword_20E3462F8);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2920E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE0, &qword_20E3462F8);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29231C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE0, &qword_20E3462F8);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E292554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE0, &qword_20E3462F8);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29278C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE0, &qword_20E3462F8);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2929C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE0, &qword_20E3462F8);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E292BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE0, &qword_20E3462F8);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E292E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE0, &qword_20E3462F8);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29306C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE0, &qword_20E3462F8);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2932A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C869CE0, &qword_20E3462F8);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C869CE0, &qword_20E3462F8);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E2934F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE0, &qword_20E3462F8);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE0, &qword_20E3462F8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    sub_20E2FB9A4(&qword_27C86C368, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2937E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E293884()
{
  sub_20E2FB9A4(&qword_27C86C350, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);

  return sub_20E322470();
}

uint64_t sub_20E2938F0()
{
  sub_20E2FB9A4(&qword_27C86C350, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);

  return sub_20E322480();
}

uint64_t sub_20E293970()
{
  if (qword_27C863520 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86ADF0;
  v2 = *algn_27C86ADF8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x726961502ELL, 0xE500000000000000);

  qword_27C86AE18 = v1;
  unk_27C86AE20 = v2;
  return result;
}

uint64_t sub_20E293A38()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AE28);
  __swift_project_value_buffer(v0, qword_27C86AE28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "first";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "second";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Pair.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E293D38();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E293D38()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E293E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E294050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863B18, &qword_20E323EB0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B18, &qword_20E323EB0);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypedValue);
}

uint64_t sub_20E2942B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a2, 1, 1, v4);
  v5(a2 + *(a1 + 20), 1, 1, v4);
  v6 = a2 + *(a1 + 24);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E2943B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD18, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E294450()
{
  sub_20E2FB9A4(&qword_27C86C368, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return sub_20E322470();
}

uint64_t sub_20E2944BC()
{
  sub_20E2FB9A4(&qword_27C86C368, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair);

  return sub_20E322480();
}

uint64_t sub_20E29453C()
{
  if (qword_27C863520 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86ADF0;
  v2 = *algn_27C86ADF8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x74616C706D65542ELL, 0xE900000000000065);

  qword_27C86AE40 = v1;
  *algn_27C86AE48 = v2;
  return result;
}

uint64_t sub_20E29460C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AE50);
  __swift_project_value_buffer(v0, qword_27C86AE50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20E34A210;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "equalTo";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "notEqualTo";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "hasValue";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "hasNoValue";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "greaterThan";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "greaterThanOrEqualTo";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "lessThan";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lessThanOrEqualTo";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "contains";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "notContains";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "beginsWith";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "endsWith";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "inTheNext";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "inTheLast";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "isToday";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "isBetween";
  *(v36 + 1) = 9;
  v36[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Template.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_20E294E20(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E2953D0(v5, a1, a2, a3);
          break;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_5;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_5;
        case 5:
          sub_20E29598C(v5, a1, a2, a3);
          break;
        case 6:
          sub_20E295F48(v5, a1, a2, a3);
          break;
        case 7:
          sub_20E296504(v5, a1, a2, a3);
          break;
        case 8:
          sub_20E296AC0(v5, a1, a2, a3);
          break;
        case 9:
          sub_20E29707C(v5, a1, a2, a3);
          break;
        case 10:
          sub_20E297638(v5, a1, a2, a3);
          break;
        case 11:
          sub_20E297BF4(v5, a1, a2, a3);
          break;
        case 12:
          sub_20E2981B0(v5, a1, a2, a3);
          break;
        case 13:
          sub_20E29876C(v5, a1, a2, a3);
          break;
        case 14:
          sub_20E298D28(v5, a1, a2, a3);
          break;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
LABEL_5:
          sub_20E257248(v11, v12, v13, v14, &qword_27C869CE8, &qword_20E346300, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind, v15);
          break;
        case 16:
          sub_20E2992E4(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E294E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE8, &qword_20E346300);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
      v35 = v43;
      sub_20E2FB8D8(v20, v43, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v28, v36, &qword_27C863C48, &qword_20E323F30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v36, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v39 = v44;
    sub_20E2FB8D8(v36, v44, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2953D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE8, &qword_20E346300);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v28, v36, &qword_27C863C48, &qword_20E323F30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v36, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E29598C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE8, &qword_20E346300);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v28, v36, &qword_27C863C48, &qword_20E323F30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v36, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E295F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE8, &qword_20E346300);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v28, v36, &qword_27C863C48, &qword_20E323F30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v36, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E296504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE8, &qword_20E346300);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v28, v36, &qword_27C863C48, &qword_20E323F30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v36, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E296AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE8, &qword_20E346300);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v28, v36, &qword_27C863C48, &qword_20E323F30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v36, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E29707C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE8, &qword_20E346300);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v28, v36, &qword_27C863C48, &qword_20E323F30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v36, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E297638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE8, &qword_20E346300);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v28, v36, &qword_27C863C48, &qword_20E323F30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v36, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E297BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE8, &qword_20E346300);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v28, v36, &qword_27C863C48, &qword_20E323F30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v36, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2981B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE8, &qword_20E346300);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v28, v36, &qword_27C863C48, &qword_20E323F30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v36, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E29876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE8, &qword_20E346300);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v28, v36, &qword_27C863C48, &qword_20E323F30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v36, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E298D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE8, &qword_20E346300);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v28, v36, &qword_27C863C48, &qword_20E323F30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v36, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2992E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869CE8, &qword_20E346300);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CE8, &qword_20E346300);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypeInstance);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v28, v36, &qword_27C863C48, &qword_20E323F30);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v36, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypeInstance);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C863C48, &qword_20E323F30);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CE8, &qword_20E346300);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypeInstance);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoComparisonPredicate.Comparison.Template.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C869CE8, &qword_20E346300);
  v12 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_20E299E6C(v3, a1, a2, a3);
        goto LABEL_23;
      case 2u:
        sub_20E29A53C(v3, a1, a2, a3);
        goto LABEL_23;
      case 3u:
        sub_20E29A774(v3, a1, a2, a3);
        goto LABEL_23;
      case 4u:
        sub_20E29A9AC(v3, a1, a2, a3);
        goto LABEL_23;
      case 5u:
        sub_20E29ABE4(v3, a1, a2, a3);
        goto LABEL_23;
      case 6u:
        sub_20E29AE1C(v3, a1, a2, a3);
        goto LABEL_23;
      case 7u:
        sub_20E29B054(v3, a1, a2, a3);
        goto LABEL_23;
      case 8u:
        sub_20E29B28C(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      case 9u:
        sub_20E29B4C4(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      case 0xAu:
        sub_20E29B6FC(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
      case 0xBu:
        sub_20E29B934(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        }

        goto LABEL_10;
      case 0xCu:
        sub_20E29BDB8(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        }

LABEL_10:
        sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        break;
      case 0xDu:
        result = sub_20E29A0A4(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xEu:
        result = sub_20E29A2F0(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xFu:
        result = sub_20E29BB6C(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        sub_20E299C38(v3, a1, a2, a3);
LABEL_23:
        result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v14 = v3 + *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E299C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE8, &qword_20E346300);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E299E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE8, &qword_20E346300);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29A0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C869CE8, &qword_20E346300);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C869CE8, &qword_20E346300);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 13)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E29A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C869CE8, &qword_20E346300);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C869CE8, &qword_20E346300);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 14)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E29A53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE8, &qword_20E346300);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29A774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE8, &qword_20E346300);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29A9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE8, &qword_20E346300);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29ABE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE8, &qword_20E346300);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29AE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE8, &qword_20E346300);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29B054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE8, &qword_20E346300);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29B28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE8, &qword_20E346300);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE8, &qword_20E346300);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29B6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE8, &qword_20E346300);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29B934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE8, &qword_20E346300);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29BB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C869CE8, &qword_20E346300);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C869CE8, &qword_20E346300);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
    if (EnumCaseMultiPayload == 15)
    {
      sub_20E322100();
      sub_20E2FB9A4(&unk_280E12B20, MEMORY[0x277D21560]);
      sub_20E3224D0();
      return (*(v6 + 8))(v9, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E29BDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CE8, &qword_20E346300);
  v13 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CE8, &qword_20E346300);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E29C0AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD10, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29C14C()
{
  sub_20E2FB9A4(&qword_27C86C380, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return sub_20E322470();
}

uint64_t sub_20E29C1B8()
{
  sub_20E2FB9A4(&qword_27C86C380, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);

  return sub_20E322480();
}

uint64_t sub_20E29C260(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD00000000000001BLL;
  *a5 = 0x800000020E361630;
  return result;
}

uint64_t sub_20E29C2F4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AE78);
  __swift_project_value_buffer(v0, qword_27C86AE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparisonTemplate";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rawGroupId";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "contentItemClass";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E29C5C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v6;
  while (1)
  {
    result = sub_20E3222B0();
    if (v7 || (v16 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_20E3223E0();
      }

      else if (result == 4)
      {
        a6(a1, v11, a2, a3);
      }
    }

    else if (result == 1)
    {
      a4(a1, v11, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v11, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E29C6D0()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(0) + 20);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  return sub_20E322430();
}

uint64_t sub_20E29C784()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(0) + 24);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  sub_20E2FB9A4(&qword_27C86C380, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
  return sub_20E322430();
}

uint64_t sub_20E29C838()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Template(0) + 28);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  return sub_20E322430();
}

uint64_t sub_20E29C954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a6)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(void))
{
  result = a4(v7, a1, a2, a3);
  if (!v8)
  {
    a5(v7, a1, a2, a3);
    v16 = *v7;
    v17 = v7[1];
    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = *v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      sub_20E322540();
    }

    a6(v7, a1, a2, a3);
    v19 = v7 + *(a7(0) + 32);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E29CA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD0, &qword_20E3462E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C869CD0, &qword_20E3462E8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869CD0, &qword_20E3462E8);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
}

uint64_t sub_20E29CC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CF0, &qword_20E346308);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C869CF0, &qword_20E346308);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869CF0, &qword_20E346308);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
  sub_20E2FB9A4(&qword_27C86C380, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
}

uint64_t sub_20E29CE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC0, &qword_20E3462D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C869CC0, &qword_20E3462D8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869CC0, &qword_20E3462D8);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t sub_20E29D114@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v6 = a1[5];
  v7 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  v8 = a1[6];
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(&a3[v8], 1, 1, v9);
  v10 = a1[7];
  v11 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  (*(*(v11 - 8) + 56))(&a3[v10], 1, 1, v11);
  v12 = &a3[a1[8]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E29D280(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD08, type metadata accessor for ToolKitProtoComparisonPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29D320()
{
  sub_20E2FB9A4(&qword_27C86BA10, type metadata accessor for ToolKitProtoComparisonPredicate.Template);

  return sub_20E322470();
}

uint64_t sub_20E29D38C()
{
  sub_20E2FB9A4(&qword_27C86BA10, type metadata accessor for ToolKitProtoComparisonPredicate.Template);

  return sub_20E322480();
}

uint64_t sub_20E29D428()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AE90);
  __swift_project_value_buffer(v0, qword_27C86AE90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operator";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "operands";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoCompoundPredicate.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E24F408();
        sub_20E322310();
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoComparisonPredicate(0);
        sub_20E2FB9A4(&qword_27C86BB70, type metadata accessor for ToolKitProtoComparisonPredicate);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ToolKitProtoCompoundPredicate.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, sub_20E24F408(), result = sub_20E3224D0(), !v1))
  {
    if (!*(*(v0 + 1) + 16) || (type metadata accessor for ToolKitProtoComparisonPredicate(0), sub_20E2FB9A4(&qword_27C86BB70, type metadata accessor for ToolKitProtoComparisonPredicate), result = sub_20E322570(), !v1))
    {
      v3 = &v0[*(type metadata accessor for ToolKitProtoCompoundPredicate(0) + 24)];
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E29D8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E29D934(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD00, type metadata accessor for ToolKitProtoCompoundPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29D9D4()
{
  sub_20E2FB9A4(&qword_27C86C3A8, type metadata accessor for ToolKitProtoCompoundPredicate);

  return sub_20E322470();
}

uint64_t sub_20E29DA40()
{
  sub_20E2FB9A4(&qword_27C86C3A8, type metadata accessor for ToolKitProtoCompoundPredicate);

  return sub_20E322480();
}

uint64_t sub_20E29DABC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_20E154DAC(*(a1 + 1), *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E29DB74()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AEA8);
  __swift_project_value_buffer(v0, qword_27C86AEA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Operator_UNSPECIFIED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Operator_AND";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Operator_OR";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E29DF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCF8, type metadata accessor for ToolKitProtoStringSearchPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29DFA0()
{
  sub_20E2FB9A4(&qword_27C86C3D0, type metadata accessor for ToolKitProtoStringSearchPredicate);

  return sub_20E322470();
}

uint64_t sub_20E29E00C()
{
  sub_20E2FB9A4(&qword_27C86C3D0, type metadata accessor for ToolKitProtoStringSearchPredicate);

  return sub_20E322480();
}

uint64_t sub_20E29E088(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E29E144()
{
  result = MEMORY[0x20F32BF40](0x74616C706D65542ELL, 0xE900000000000065);
  qword_27C86AED8 = 0xD00000000000001DLL;
  unk_27C86AEE0 = 0x800000020E361670;
  return result;
}

uint64_t sub_20E29E290(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCF0, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29E330()
{
  sub_20E2FB9A4(&qword_27C86C3E8, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);

  return sub_20E322470();
}

uint64_t sub_20E29E39C()
{
  sub_20E2FB9A4(&qword_27C86C3E8, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);

  return sub_20E322480();
}

uint64_t sub_20E29E534(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCE8, type metadata accessor for ToolKitProtoIdSearchPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29E5D4()
{
  sub_20E2FB9A4(&qword_27C86C400, type metadata accessor for ToolKitProtoIdSearchPredicate);

  return sub_20E322470();
}

uint64_t sub_20E29E640()
{
  sub_20E2FB9A4(&qword_27C86C400, type metadata accessor for ToolKitProtoIdSearchPredicate);

  return sub_20E322480();
}

uint64_t sub_20E29E6BC()
{
  result = MEMORY[0x20F32BF40](0x74616C706D65542ELL, 0xE900000000000065);
  qword_27C86AF18 = 0xD000000000000019;
  unk_27C86AF20 = 0x800000020E361690;
  return result;
}

uint64_t sub_20E29E808(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCE0, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29E8A8()
{
  sub_20E2FB9A4(&qword_27C86C418, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);

  return sub_20E322470();
}

uint64_t sub_20E29E914()
{
  sub_20E2FB9A4(&qword_27C86C418, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);

  return sub_20E322480();
}

uint64_t sub_20E29EAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCD8, type metadata accessor for ToolKitProtoSearchableItemPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29EB48()
{
  sub_20E2FB9A4(&qword_27C86C430, type metadata accessor for ToolKitProtoSearchableItemPredicate);

  return sub_20E322470();
}

uint64_t sub_20E29EBB4()
{
  sub_20E2FB9A4(&qword_27C86C430, type metadata accessor for ToolKitProtoSearchableItemPredicate);

  return sub_20E322480();
}

uint64_t sub_20E29EC30()
{
  result = MEMORY[0x20F32BF40](0x74616C706D65542ELL, 0xE900000000000065);
  qword_27C86AF58 = 0xD00000000000001FLL;
  unk_27C86AF60 = 0x800000020E3616B0;
  return result;
}

uint64_t sub_20E29ED7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCD0, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29EE1C()
{
  sub_20E2FB9A4(&qword_27C86C448, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);

  return sub_20E322470();
}

uint64_t sub_20E29EE88()
{
  sub_20E2FB9A4(&qword_27C86C448, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);

  return sub_20E322480();
}

uint64_t sub_20E29EFC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCC8, type metadata accessor for ToolKitProtoAllPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29F068()
{
  sub_20E2FB9A4(&qword_27C86C460, type metadata accessor for ToolKitProtoAllPredicate);

  return sub_20E322470();
}

uint64_t sub_20E29F0D4()
{
  sub_20E2FB9A4(&qword_27C86C460, type metadata accessor for ToolKitProtoAllPredicate);

  return sub_20E322480();
}

uint64_t sub_20E29F214(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCC0, type metadata accessor for ToolKitProtoValidPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29F2B4()
{
  sub_20E2FB9A4(&qword_27C86C478, type metadata accessor for ToolKitProtoValidPredicate);

  return sub_20E322470();
}

uint64_t sub_20E29F320()
{
  sub_20E2FB9A4(&qword_27C86C478, type metadata accessor for ToolKitProtoValidPredicate);

  return sub_20E322480();
}

uint64_t sub_20E29F460(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCB8, type metadata accessor for ToolKitProtoSuggestedPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29F500()
{
  sub_20E2FB9A4(&qword_27C86C490, type metadata accessor for ToolKitProtoSuggestedPredicate);

  return sub_20E322470();
}

uint64_t sub_20E29F56C()
{
  sub_20E2FB9A4(&qword_27C86C490, type metadata accessor for ToolKitProtoSuggestedPredicate);

  return sub_20E322480();
}

uint64_t sub_20E29F60C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AFC8);
  __swift_project_value_buffer(v0, qword_27C86AFC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "predicate";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sort";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "limit";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoQuery.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          v3 = *(type metadata accessor for ToolKitProtoQuery(0) + 24);
          sub_20E322380();
          break;
        case 2:
          sub_20E24F3B4();
          sub_20E322310();
          break;
        case 1:
          sub_20E29F954();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E29F954()
{
  v0 = *(type metadata accessor for ToolKitProtoQuery(0) + 20);
  type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  sub_20E2FB9A4(&qword_27C86C4D0, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
  return sub_20E322430();
}

uint64_t ToolKitProtoQuery.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E29FAFC(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      v10 = *v3;
      sub_20E24F3B4();
      sub_20E3224D0();
    }

    sub_20E29FD18(v3, a1, a2, a3, type metadata accessor for ToolKitProtoQuery);
    v9 = &v3[*(type metadata accessor for ToolKitProtoQuery(0) + 28)];
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E29FAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CF8, &qword_20E346310);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoQuery(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C869CF8, &qword_20E346310);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869CF8, &qword_20E346310);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
  sub_20E2FB9A4(&qword_27C86C4D0, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
}

uint64_t sub_20E29FD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E29FDE0@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = &a2[a1[6]];
  *v7 = 0;
  v7[8] = 1;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E29FEC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCB0, type metadata accessor for ToolKitProtoQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E29FF64()
{
  sub_20E2FB9A4(&qword_27C86C4A8, type metadata accessor for ToolKitProtoQuery);

  return sub_20E322470();
}

uint64_t sub_20E29FFD0()
{
  sub_20E2FB9A4(&qword_27C86C4A8, type metadata accessor for ToolKitProtoQuery);

  return sub_20E322480();
}

uint64_t sub_20E2A0050()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AFE0);
  __swift_project_value_buffer(v0, qword_27C86AFE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SortOrder_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SortOrder_FORWARD";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SortOrder_REVERSE";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2A02BC()
{
  strcpy(v1, "ToolKit.Query");
  HIWORD(v1[1]) = -4864;
  result = MEMORY[0x20F32BF40](0x64657250796E412ELL, 0xED00006574616369);
  qword_27C86AFF8 = v1[0];
  unk_27C86B000 = v1[1];
  return result;
}

uint64_t sub_20E2A0364()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B008);
  __swift_project_value_buffer(v0, qword_27C86B008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20E3262B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "comparison";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "compound";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "stringSearch";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "idSearch";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "all";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "suggested";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "searchableItem";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "valid";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoQuery.AnyPredicate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_20E2A2AC4(v5, a1, a2, a3);
        }

        else if (result == 8)
        {
          sub_20E2A3080(v5, a1, a2, a3);
        }
      }

      else if (result == 5)
      {
        sub_20E2A1F4C(v5, a1, a2, a3);
      }

      else
      {
        sub_20E2A2508(v5, a1, a2, a3);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_20E2A13D4(v5, a1, a2, a3);
      }

      else
      {
        sub_20E2A1990(v5, a1, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_20E2A0868(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E2A0E18(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E2A0868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D010, &qword_20E3563E0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869D00, &qword_20E346318);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D00, &qword_20E346318);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C86D010, &qword_20E3563E0);
      v35 = v43;
      sub_20E2FB8D8(v20, v43, type metadata accessor for ToolKitProtoComparisonPredicate);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoComparisonPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86BB70, type metadata accessor for ToolKitProtoComparisonPredicate);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D010, &qword_20E3563E0);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D010, &qword_20E3563E0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D010, &qword_20E3563E0);
    return sub_20E04875C(v36, &qword_27C86D010, &qword_20E3563E0);
  }

  else
  {
    v39 = v44;
    sub_20E2FB8D8(v36, v44, type metadata accessor for ToolKitProtoComparisonPredicate);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D010, &qword_20E3563E0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoComparisonPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2A0E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D018, &qword_20E3563E8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869D00, &qword_20E346318);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D00, &qword_20E346318);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86D018, &qword_20E3563E8);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoCompoundPredicate);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoCompoundPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C3A8, type metadata accessor for ToolKitProtoCompoundPredicate);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D018, &qword_20E3563E8);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D018, &qword_20E3563E8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D018, &qword_20E3563E8);
    return sub_20E04875C(v36, &qword_27C86D018, &qword_20E3563E8);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoCompoundPredicate);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D018, &qword_20E3563E8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoCompoundPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2A13D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D020, &qword_20E3563F0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869D00, &qword_20E346318);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D00, &qword_20E346318);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C86D020, &qword_20E3563F0);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoStringSearchPredicate);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoStringSearchPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C3D0, type metadata accessor for ToolKitProtoStringSearchPredicate);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D020, &qword_20E3563F0);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D020, &qword_20E3563F0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D020, &qword_20E3563F0);
    return sub_20E04875C(v36, &qword_27C86D020, &qword_20E3563F0);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoStringSearchPredicate);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D020, &qword_20E3563F0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoStringSearchPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2A1990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D028, &qword_20E3563F8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869D00, &qword_20E346318);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D00, &qword_20E346318);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_20E04875C(v28, &qword_27C86D028, &qword_20E3563F8);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoIdSearchPredicate);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoIdSearchPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C400, type metadata accessor for ToolKitProtoIdSearchPredicate);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D028, &qword_20E3563F8);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D028, &qword_20E3563F8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D028, &qword_20E3563F8);
    return sub_20E04875C(v36, &qword_27C86D028, &qword_20E3563F8);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoIdSearchPredicate);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D028, &qword_20E3563F8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoIdSearchPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2A1F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C60, &qword_20E346268);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869D00, &qword_20E346318);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D00, &qword_20E346318);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v28, &qword_27C869C60, &qword_20E346268);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoAllPredicate);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoAllPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C460, type metadata accessor for ToolKitProtoAllPredicate);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C869C60, &qword_20E346268);
  }

  sub_20E0486F4(v28, v36, &qword_27C869C60, &qword_20E346268);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C869C60, &qword_20E346268);
    return sub_20E04875C(v36, &qword_27C869C60, &qword_20E346268);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoAllPredicate);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C869C60, &qword_20E346268);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoAllPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2A2508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C68, &qword_20E346270);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869D00, &qword_20E346318);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D00, &qword_20E346318);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_20E04875C(v28, &qword_27C869C68, &qword_20E346270);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoSuggestedPredicate);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoSuggestedPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C490, type metadata accessor for ToolKitProtoSuggestedPredicate);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C869C68, &qword_20E346270);
  }

  sub_20E0486F4(v28, v36, &qword_27C869C68, &qword_20E346270);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C869C68, &qword_20E346270);
    return sub_20E04875C(v36, &qword_27C869C68, &qword_20E346270);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoSuggestedPredicate);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C869C68, &qword_20E346270);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoSuggestedPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2A2AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D030, &qword_20E356400);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869D00, &qword_20E346318);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D00, &qword_20E346318);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_20E04875C(v28, &qword_27C86D030, &qword_20E356400);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoSearchableItemPredicate);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoSearchableItemPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C430, type metadata accessor for ToolKitProtoSearchableItemPredicate);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D030, &qword_20E356400);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D030, &qword_20E356400);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D030, &qword_20E356400);
    return sub_20E04875C(v36, &qword_27C86D030, &qword_20E356400);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D030, &qword_20E356400);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2A3080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v6 = *(valid - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](valid);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C78, &qword_20E346280);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = valid;
  v30 = valid;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869D00, &qword_20E346318);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D00, &qword_20E346318);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_20E04875C(v28, &qword_27C869C78, &qword_20E346280);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoValidPredicate);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoValidPredicate);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C478, type metadata accessor for ToolKitProtoValidPredicate);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C869C78, &qword_20E346280);
  }

  sub_20E0486F4(v28, v36, &qword_27C869C78, &qword_20E346280);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C869C78, &qword_20E346280);
    return sub_20E04875C(v36, &qword_27C869C78, &qword_20E346280);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoValidPredicate);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C869C78, &qword_20E346280);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D00, &qword_20E346318);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoValidPredicate);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoQuery.AnyPredicate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C869D00, &qword_20E346318);
  v12 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_18;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_20E2A45EC(v3, a1, a2, a3);
      }

      else
      {
        sub_20E2A4824(v3, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_20E2A417C(v3, a1, a2, a3);
    }

    else
    {
      sub_20E2A43B4(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_20E2A3D0C(v3, a1, a2, a3);
    }

    else
    {
      sub_20E2A3F44(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_20E2A3AD4(v3, a1, a2, a3);
  }

  else
  {
    sub_20E2A38A0(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  if (!v4)
  {
LABEL_18:
    v15 = v3 + *(type metadata accessor for ToolKitProtoQuery.AnyPredicate(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2A38A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D00, &qword_20E346318);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoComparisonPredicate);
    sub_20E2FB9A4(&qword_27C86BB70, type metadata accessor for ToolKitProtoComparisonPredicate);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoComparisonPredicate);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A3AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoCompoundPredicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D00, &qword_20E346318);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoCompoundPredicate);
    sub_20E2FB9A4(&qword_27C86C3A8, type metadata accessor for ToolKitProtoCompoundPredicate);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoCompoundPredicate);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A3D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoStringSearchPredicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D00, &qword_20E346318);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoStringSearchPredicate);
    sub_20E2FB9A4(&qword_27C86C3D0, type metadata accessor for ToolKitProtoStringSearchPredicate);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoStringSearchPredicate);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A3F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoIdSearchPredicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D00, &qword_20E346318);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoIdSearchPredicate);
    sub_20E2FB9A4(&qword_27C86C400, type metadata accessor for ToolKitProtoIdSearchPredicate);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoIdSearchPredicate);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A417C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D00, &qword_20E346318);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoAllPredicate);
    sub_20E2FB9A4(&qword_27C86C460, type metadata accessor for ToolKitProtoAllPredicate);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoAllPredicate);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A43B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D00, &qword_20E346318);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoSuggestedPredicate);
    sub_20E2FB9A4(&qword_27C86C490, type metadata accessor for ToolKitProtoSuggestedPredicate);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSuggestedPredicate);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A45EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoSearchableItemPredicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D00, &qword_20E346318);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    sub_20E2FB9A4(&qword_27C86C430, type metadata accessor for ToolKitProtoSearchableItemPredicate);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSearchableItemPredicate);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A4824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v10 = *(*(valid - 8) + 64);
  MEMORY[0x28223BE20](valid);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D00, &qword_20E346318);
  v13 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D00, &qword_20E346318);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoValidPredicate);
    sub_20E2FB9A4(&qword_27C86C478, type metadata accessor for ToolKitProtoValidPredicate);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoValidPredicate);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A4B18(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCA8, type metadata accessor for ToolKitProtoQuery.AnyPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2A4BB8()
{
  sub_20E2FB9A4(&qword_27C86C4D0, type metadata accessor for ToolKitProtoQuery.AnyPredicate);

  return sub_20E322470();
}

uint64_t sub_20E2A4C24()
{
  sub_20E2FB9A4(&qword_27C86C4D0, type metadata accessor for ToolKitProtoQuery.AnyPredicate);

  return sub_20E322480();
}

uint64_t sub_20E2A4CC0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B020);
  __swift_project_value_buffer(v0, qword_27C86B020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "major";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "patch";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isWildcard";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRuntimePlatformVersion.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        goto LABEL_2;
      }

      if (result == 4)
      {
        sub_20E3222F0();
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      sub_20E322370();
    }
  }
}

uint64_t ToolKitProtoRuntimePlatformVersion.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_20E322500(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_20E322500(), !v1))
    {
      if (!*(v0 + 8) || (result = sub_20E322500(), !v1))
      {
        if (*(v0 + 12) != 1 || (result = sub_20E3224C0(), !v1))
        {
          v3 = v0 + *(type metadata accessor for ToolKitProtoRuntimePlatformVersion(0) + 32);
          return sub_20E3221A0();
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E2A5130@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 32);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a2 + 5) = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_20E2A51B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CCA0, type metadata accessor for ToolKitProtoRuntimePlatformVersion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2A5250()
{
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);

  return sub_20E322470();
}

uint64_t sub_20E2A52BC()
{
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);

  return sub_20E322480();
}

uint64_t sub_20E2A5358()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B038);
  __swift_project_value_buffer(v0, qword_27C86B038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceCapability";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "featureFlag";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deviceState";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRuntimeRequirement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_20E2A6230(v5, a1, a2, a3);
      }

      else if (result == 4)
      {
        sub_20E2A67EC(a1, v5);
      }
    }

    else if (result == 1)
    {
      sub_20E2A56C4(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      sub_20E2A5C74(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E2A56C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFF0, &qword_20E3563C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C867EB0, &qword_20E346320);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867EB0, &qword_20E346320);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C86CFF0, &qword_20E3563C0);
      v35 = v43;
      sub_20E2FB8D8(v20, v43, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C520, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CFF0, &qword_20E3563C0);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CFF0, &qword_20E3563C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CFF0, &qword_20E3563C0);
    return sub_20E04875C(v36, &qword_27C86CFF0, &qword_20E3563C0);
  }

  else
  {
    v39 = v44;
    sub_20E2FB8D8(v36, v44, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CFF0, &qword_20E3563C0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867EB0, &qword_20E346320);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2A5C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFF8, &qword_20E3563C8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C867EB0, &qword_20E346320);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867EB0, &qword_20E346320);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86CFF8, &qword_20E3563C8);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C538, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CFF8, &qword_20E3563C8);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CFF8, &qword_20E3563C8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CFF8, &qword_20E3563C8);
    return sub_20E04875C(v36, &qword_27C86CFF8, &qword_20E3563C8);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CFF8, &qword_20E3563C8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867EB0, &qword_20E346320);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2A6230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D000, &qword_20E3563D0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C867EB0, &qword_20E346320);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C867EB0, &qword_20E346320);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C86D000, &qword_20E3563D0);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C568, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D000, &qword_20E3563D0);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D000, &qword_20E3563D0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D000, &qword_20E3563D0);
    return sub_20E04875C(v36, &qword_27C86D000, &qword_20E3563D0);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D000, &qword_20E3563D0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C867EB0, &qword_20E346320);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2A67EC(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v16 = 2;
  sub_20E24F360();
  result = sub_20E322300();
  if (!v2)
  {
    v9 = v16;
    if (v16 != 2)
    {
      v15 = 0;
      sub_20E0486F4(a2, v7, &qword_27C867EB0, &qword_20E346320);
      v10 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
      v11 = *(v10 - 8);
      v12 = (*(v11 + 48))(v7, 1, v10);
      sub_20E04875C(v7, &qword_27C867EB0, &qword_20E346320);
      if (v12 != 1)
      {
        v13 = v15;
        result = sub_20E3222C0();
        if (v13)
        {
          return result;
        }

        v15 = 0;
      }

      sub_20E04875C(a2, &qword_27C867EB0, &qword_20E346320);
      *a2 = v9 & 1;
      swift_storeEnumTagMultiPayload();
      return (*(v11 + 56))(a2, 0, 1, v10);
    }
  }

  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C867EB0, &qword_20E346320);
  v12 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        result = sub_20E2A724C(v3);
        if (v4)
        {
          return result;
        }

        goto LABEL_11;
      }

      sub_20E2A7014(v3, a1, a2, a3);
    }

    else if (EnumCaseMultiPayload)
    {
      sub_20E2A6DDC(v3, a1, a2, a3);
    }

    else
    {
      sub_20E2A6BA8(v3, a1, a2, a3);
    }

    result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
    if (v4)
    {
      return result;
    }
  }

LABEL_11:
  v15 = v3 + *(type metadata accessor for ToolKitProtoRuntimeRequirement(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E2A6BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867EB0, &qword_20E346320);
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867EB0, &qword_20E346320);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    sub_20E2FB9A4(&qword_27C86C520, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A6DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867EB0, &qword_20E346320);
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867EB0, &qword_20E346320);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    sub_20E2FB9A4(&qword_27C86C538, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A7014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C867EB0, &qword_20E346320);
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C867EB0, &qword_20E346320);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_20E2FB9A4(&qword_27C86C568, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A724C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8[-v4];
  sub_20E0486F4(a1, &v8[-v4], &qword_27C867EB0, &qword_20E346320);
  v6 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C867EB0, &qword_20E346320);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v8[15] = *v5;
    sub_20E24F360();
    return sub_20E3224D0();
  }

  result = sub_20E2FB878(v5, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2A747C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC98, type metadata accessor for ToolKitProtoRuntimeRequirement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2A751C()
{
  sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement);

  return sub_20E322470();
}

uint64_t sub_20E2A7588()
{
  sub_20E2FB9A4(&qword_27C86B9C0, type metadata accessor for ToolKitProtoRuntimeRequirement);

  return sub_20E322480();
}

uint64_t sub_20E2A7608()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B050);
  __swift_project_value_buffer(v0, qword_27C86B050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DeviceState_UNSPECIFIED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DeviceState_UNLOCKED";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2A782C()
{
  result = MEMORY[0x20F32BF40](0xD000000000000017, 0x800000020E3627E0);
  qword_27C86B068 = 0xD00000000000001ALL;
  unk_27C86B070 = 0x800000020E361750;
  return result;
}

uint64_t sub_20E2A78C8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B078);
  __swift_project_value_buffer(v0, qword_27C86B078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "platform";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "introducingVersion";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "deprecatingVersion";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "obsoletingVersion";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_20E2A7D14();
        }

        else if (result == 4)
        {
          sub_20E2A7DC8();
        }
      }

      else if (result == 1)
      {
        sub_20E24F7F8();
        sub_20E322310();
      }

      else if (result == 2)
      {
        sub_20E2A7C60();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2A7C60()
{
  v0 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 20);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  return sub_20E322430();
}

uint64_t sub_20E2A7D14()
{
  v0 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 24);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  return sub_20E322430();
}

uint64_t sub_20E2A7DC8()
{
  v0 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 28);
  type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  return sub_20E322430();
}

uint64_t ToolKitProtoRuntimeRequirement.AvailabilityAnnotation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, sub_20E24F7F8(), result = sub_20E3224D0(), !v4))
  {
    result = sub_20E2A7F70(v3, a1, a2, a3);
    if (!v4)
    {
      sub_20E2A818C(v3, a1, a2, a3);
      sub_20E2A83A8(v3, a1, a2, a3);
      v9 = &v3[*(type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0) + 32)];
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2A7F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D08, &qword_20E346328);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C869D08, &qword_20E346328);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D08, &qword_20E346328);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_20E2A818C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D08, &qword_20E346328);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C869D08, &qword_20E346328);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D08, &qword_20E346328);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_20E2A83A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D08, &qword_20E346328);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C869D08, &qword_20E346328);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D08, &qword_20E346328);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E2FB9A4(&qword_27C86C4E8, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
}

uint64_t sub_20E2A860C@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  v6(&a2[a1[6]], 1, 1, v5);
  v6(&a2[a1[7]], 1, 1, v5);
  v7 = &a2[a1[8]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E2A8730(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC90, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2A87D0()
{
  sub_20E2FB9A4(&qword_27C86C520, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return sub_20E322470();
}

uint64_t sub_20E2A883C()
{
  sub_20E2FB9A4(&qword_27C86C520, type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation);

  return sub_20E322480();
}

uint64_t sub_20E2A88BC()
{
  result = MEMORY[0x20F32BF40](0xD000000000000011, 0x800000020E362760);
  qword_27C86B090 = 0xD00000000000001ALL;
  *algn_27C86B098 = 0x800000020E361750;
  return result;
}

uint64_t sub_20E2A89D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_20E3222B0();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v7, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E2A8A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D10, &qword_20E346330);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFE8, &qword_20E3563B8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_20E0486F4(v49, v13, &qword_27C869D10, &qword_20E346330);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_20E04875C(v13, &qword_27C869D10, &qword_20E346330);
    v30 = v44;
  }

  else
  {
    sub_20E2FB8D8(v13, v21, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
    sub_20E2FB8D8(v21, v19, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
    sub_20E04875C(v27, &qword_27C86CFE8, &qword_20E3563B8);
    v31 = v42;
    sub_20E2FB8D8(v19, v42, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    sub_20E2FB8D8(v31, v27, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_20E2FB9A4(&qword_27C86C550, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  v32 = v45;
  sub_20E322430();
  v33 = v43;
  if (v32)
  {
    return sub_20E04875C(v27, &qword_27C86CFE8, &qword_20E3563B8);
  }

  sub_20E0486F4(v27, v43, &qword_27C86CFE8, &qword_20E3563B8);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_20E04875C(v27, &qword_27C86CFE8, &qword_20E3563B8);
    return sub_20E04875C(v33, &qword_27C86CFE8, &qword_20E3563B8);
  }

  else
  {
    v35 = v40;
    sub_20E2FB8D8(v33, v40, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    if (v29 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v27, &qword_27C86CFE8, &qword_20E3563B8);
    v36 = v49;
    sub_20E04875C(v49, &qword_27C869D10, &qword_20E346330);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_20E2A8FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D10, &qword_20E346330);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D10, &qword_20E346330);
  v13 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D10, &qword_20E346330);
  }

  sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_20E2FB9A4(&qword_27C86C550, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
  sub_20E322580();
  return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);
}

uint64_t sub_20E2A92A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC88, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2A9340()
{
  sub_20E2FB9A4(&qword_27C86C538, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return sub_20E322470();
}

uint64_t sub_20E2A93AC()
{
  sub_20E2FB9A4(&qword_27C86C538, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability);

  return sub_20E322480();
}

uint64_t sub_20E2A942C()
{
  if (qword_27C863618 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B090;
  v2 = *algn_27C86B098;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x47656C69626F4D2ELL, 0xEE00746C61747365);

  qword_27C86B0B8 = v1;
  unk_27C86B0C0 = v2;
  return result;
}

uint64_t sub_20E2A9504()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B0C8);
  __swift_project_value_buffer(v0, qword_27C86B0C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E3223E0();
    }

    else if (result == 2)
    {
      sub_20E3222F0();
    }
  }

  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_20E322540(), !v1))
  {
    if (*(v0 + 16) != 1 || (result = sub_20E3224C0(), !v1))
    {
      v6 = v0 + *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2A9894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 24);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_20E2A9924(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC80, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2A99C4()
{
  sub_20E2FB9A4(&qword_27C86C550, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return sub_20E322470();
}

uint64_t sub_20E2A9A30()
{
  sub_20E2FB9A4(&qword_27C86C550, type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt);

  return sub_20E322480();
}

uint64_t sub_20E2A9AB0()
{
  result = MEMORY[0x20F32BF40](0x657275746165462ELL, 0xEC00000067616C46);
  qword_27C86B0E0 = 0xD00000000000001ALL;
  *algn_27C86B0E8 = 0x800000020E361750;
  return result;
}

uint64_t sub_20E2A9B4C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B0F0);
  __swift_project_value_buffer(v0, qword_27C86B0F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "feature";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "value";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_20E3222F0();
    }

    else if (result == 2 || result == 1)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t ToolKitProtoRuntimeRequirement.FeatureFlag.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_20E322540(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_20E322540(), !v1))
    {
      if (*(v0 + 32) != 1 || (result = sub_20E3224C0(), !v1))
      {
        v8 = v0 + *(type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0) + 28);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E2A9F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_20E2A9FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC78, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AA09C()
{
  sub_20E2FB9A4(&qword_27C86C568, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return sub_20E322470();
}

uint64_t sub_20E2AA108()
{
  sub_20E2FB9A4(&qword_27C86C568, type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag);

  return sub_20E322480();
}

uint64_t sub_20E2AA254(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_20E2FB9A4(a5, a6);
      sub_20E322420();
    }
  }

  return result;
}

uint64_t ToolKitProtoToolSummaryString.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoToolSummaryString.Component(0), sub_20E2FB9A4(&qword_27C86BC08, type metadata accessor for ToolKitProtoToolSummaryString.Component), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ToolKitProtoToolSummaryString(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2AA4D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC70, type metadata accessor for ToolKitProtoToolSummaryString);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AA574()
{
  sub_20E2FB9A4(&qword_27C86C580, type metadata accessor for ToolKitProtoToolSummaryString);

  return sub_20E322470();
}

uint64_t sub_20E2AA5E0()
{
  sub_20E2FB9A4(&qword_27C86C580, type metadata accessor for ToolKitProtoToolSummaryString);

  return sub_20E322480();
}

uint64_t sub_20E2AA674()
{
  result = MEMORY[0x20F32BF40](0x656E6F706D6F432ELL, 0xEA0000000000746ELL);
  qword_27C86B120 = 0xD000000000000019;
  *algn_27C86B128 = 0x800000020E361770;
  return result;
}

uint64_t sub_20E2AA70C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B130);
  __swift_project_value_buffer(v0, qword_27C86B130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameter";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoToolSummaryString.Component.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_20E2AA9B0(a1, v5, a2, a3, 0);
    }

    else if (result == 2)
    {
      sub_20E2AA9B0(a1, v5, a2, a3, 1);
    }
  }

  return result;
}

uint64_t sub_20E2AA9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_20E3223D0();
  if (v5)
  {
  }

  if (v12)
  {
    if (*(a2 + 16) == 255)
    {
      v9 = -1;
    }

    else
    {
      sub_20E3222C0();
      v9 = *(a2 + 16);
    }

    v10 = *a2;
    v11 = *(a2 + 8);
    *a2 = 0;
    *(a2 + 8) = v12;
    *(a2 + 16) = a5;
    return sub_20E195924(v10, v11, v9);
  }

  return result;
}

uint64_t ToolKitProtoToolSummaryString.Component.traverse<A>(visitor:)()
{
  v2 = *(v0 + 16);
  if (v2 == 255)
  {
    goto LABEL_4;
  }

  if (v2)
  {
    result = sub_20E2AAB64(v0);
    if (v1)
    {
      return result;
    }

    goto LABEL_4;
  }

  result = sub_20E2AAB18(v0);
  if (!v1)
  {
LABEL_4:
    v4 = v0 + *(type metadata accessor for ToolKitProtoToolSummaryString.Component(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2AAB18(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    v2 = *(result + 8);
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E2AAB64(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    v2 = *(result + 8);
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E2AABFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  v2 = a2 + *(a1 + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E2AAC80(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC68, type metadata accessor for ToolKitProtoToolSummaryString.Component);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AAD20()
{
  sub_20E2FB9A4(&qword_27C86BC08, type metadata accessor for ToolKitProtoToolSummaryString.Component);

  return sub_20E322470();
}

uint64_t sub_20E2AAD8C()
{
  sub_20E2FB9A4(&qword_27C86BC08, type metadata accessor for ToolKitProtoToolSummaryString.Component);

  return sub_20E322480();
}

uint64_t sub_20E2AAE28()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B148);
  __swift_project_value_buffer(v0, qword_27C86B148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "visibleParameterKeys";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "invisibleParameterKeys";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "valueConstraints";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoToolInvocationSignature.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_20E2AB114();
    }

    else if (result == 2 || result == 1)
    {
      sub_20E3223A0();
    }
  }

  return result;
}

uint64_t sub_20E2AB114()
{
  sub_20E322170();
  type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  sub_20E2FB9A4(&qword_27C86BC20, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
  sub_20E2FB9A4(&qword_27C86BC28, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
  return sub_20E322290();
}

uint64_t ToolKitProtoToolInvocationSignature.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (result = sub_20E322520(), !v1))
  {
    if (!*(v0[1] + 16) || (result = sub_20E322520(), !v1))
    {
      if (!*(v0[2] + 16) || (sub_20E322170(), type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0), sub_20E2FB9A4(&qword_27C86BC20, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations), sub_20E2FB9A4(&qword_27C86BC28, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations), result = sub_20E322490(), !v1))
      {
        v3 = v0 + *(type metadata accessor for ToolKitProtoToolInvocationSignature(0) + 28);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

unint64_t sub_20E2AB3DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  result = sub_20E049EA4(v4);
  a2[2] = result;
  return result;
}

uint64_t sub_20E2AB468(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC60, type metadata accessor for ToolKitProtoToolInvocationSignature);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AB508()
{
  sub_20E2FB9A4(&qword_27C86C5A8, type metadata accessor for ToolKitProtoToolInvocationSignature);

  return sub_20E322470();
}

uint64_t sub_20E2AB574()
{
  sub_20E2FB9A4(&qword_27C86C5A8, type metadata accessor for ToolKitProtoToolInvocationSignature);

  return sub_20E322480();
}

uint64_t sub_20E2AB5F4()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E3626B0);
  qword_27C86B160 = 0xD00000000000001FLL;
  *algn_27C86B168 = 0x800000020E361790;
  return result;
}

uint64_t ToolKitProtoToolInvocationSignature.ListOfRelations.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0), sub_20E2FB9A4(&qword_27C86BC38, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2AB8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC58, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AB990()
{
  sub_20E2FB9A4(&qword_27C86BC20, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return sub_20E322470();
}

uint64_t sub_20E2AB9FC()
{
  sub_20E2FB9A4(&qword_27C86BC20, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);

  return sub_20E322480();
}

uint64_t sub_20E2ABAAC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B188);
  __swift_project_value_buffer(v0, qword_27C86B188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "phrases";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expectedResult";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "negativePhrases";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoSampleInvocationDefinition.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        sub_20E3223D0();
        break;
      case 1:
LABEL_8:
        sub_20E3223A0();
        break;
    }
  }
}

uint64_t ToolKitProtoSampleInvocationDefinition.traverse<A>(visitor:)()
{
  result = *v0;
  if (!*(*v0 + 16) || (result = sub_20E322520(), !v1))
  {
    if (v0[3])
    {
      v3 = v0[2];
      result = sub_20E322540();
    }

    if (!v1)
    {
      if (*(v0[1] + 16))
      {
        sub_20E322520();
      }

      v4 = v0 + *(type metadata accessor for ToolKitProtoSampleInvocationDefinition(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2ABEB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = 0;
  v3 = a2 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  v5 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v5;
  return result;
}

uint64_t sub_20E2ABF38(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC50, type metadata accessor for ToolKitProtoSampleInvocationDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2ABFD8()
{
  sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);

  return sub_20E322470();
}

uint64_t sub_20E2AC044()
{
  sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);

  return sub_20E322480();
}

uint64_t sub_20E2AC0E0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B1A0);
  __swift_project_value_buffer(v0, qword_27C86B1A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "major";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "patch";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoAssistantSchemaVersion.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_20E322410();
    }
  }

  return result;
}

uint64_t ToolKitProtoAssistantSchemaVersion.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_20E322560(), !v1))
  {
    if (!v0[1] || (result = sub_20E322560(), !v1))
    {
      if (!v0[2] || (result = sub_20E322560(), !v1))
      {
        v3 = v0 + *(type metadata accessor for ToolKitProtoAssistantSchemaVersion(0) + 28);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E2AC4C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_20E2AC548(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC48, type metadata accessor for ToolKitProtoAssistantSchemaVersion);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AC5E8()
{
  sub_20E2FB9A4(&qword_27C86C5E0, type metadata accessor for ToolKitProtoAssistantSchemaVersion);

  return sub_20E322470();
}

uint64_t sub_20E2AC654()
{
  sub_20E2FB9A4(&qword_27C86C5E0, type metadata accessor for ToolKitProtoAssistantSchemaVersion);

  return sub_20E322480();
}

uint64_t sub_20E2AC6F0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B1B8);
  __swift_project_value_buffer(v0, qword_27C86B1B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "kind";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2AC930()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0) + 20);
  type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  sub_20E2FB9A4(&qword_27C86C5E0, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
  return sub_20E322430();
}

uint64_t sub_20E2ACA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D18, &qword_20E346338);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C869D18, &qword_20E346338);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869D18, &qword_20E346338);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
  sub_20E2FB9A4(&qword_27C86C5E0, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
}

uint64_t sub_20E2ACCEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC40, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2ACD8C()
{
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);

  return sub_20E322470();
}

uint64_t sub_20E2ACDF8()
{
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);

  return sub_20E322480();
}

uint64_t sub_20E2ACE94()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B1D0);
  __swift_project_value_buffer(v0, qword_27C86B1D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameters";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "sampleInvocations";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_20E2AD318();
        }

        else if (result == 2)
        {
          sub_20E3223E0();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 32);
            sub_20E3223D0();
            goto LABEL_5;
          case 4:
            v4 = v0;
            type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
            sub_20E2FB9A4(&qword_27C86BC58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);
            break;
          case 5:
            v4 = v0;
            type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
            sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
            break;
          default:
            goto LABEL_5;
        }

        v0 = v4;
        sub_20E322420();
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2AD318()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 28);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_20E322430();
}

uint64_t ToolKitProtoAssistantToolSchemaDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E2AD58C(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = *v3;
    v7 = v3[1];
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      sub_20E322540();
    }

    sub_20E2AD7A8(v3);
    if (*(v3[2] + 16))
    {
      type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
      sub_20E2FB9A4(&qword_27C86BC58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter);
      sub_20E322570();
    }

    if (*(v3[3] + 16))
    {
      type metadata accessor for ToolKitProtoSampleInvocationDefinition(0);
      sub_20E2FB9A4(&qword_27C86B9C8, type metadata accessor for ToolKitProtoSampleInvocationDefinition);
      sub_20E322570();
    }

    v9 = v3 + *(type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0) + 36);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2AD58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C869B00, &unk_20E346240);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869B00, &unk_20E346240);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_20E2AD7A8(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v3 = (a1 + *(result + 32));
  if (v3[1])
  {
    v4 = *v3;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E2AD86C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[7];
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[9];
  v7 = &a2[a1[8]];
  *v7 = 0;
  *(v7 + 1) = 0;
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v9 = MEMORY[0x277D84F90];
  *(a2 + 2) = MEMORY[0x277D84F90];
  *(a2 + 3) = v9;
  return result;
}

uint64_t sub_20E2AD950(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC38, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AD9F0()
{
  sub_20E2FB9A4(&qword_27C86C608, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition);

  return sub_20E322470();
}

uint64_t sub_20E2ADA5C()
{
  sub_20E2FB9A4(&qword_27C86C608, type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition);

  return sub_20E322480();
}

uint64_t sub_20E2ADAF8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B1E8);
  __swift_project_value_buffer(v0, qword_27C86B1E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "entity";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enumeration";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2ADD38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_20E3222B0();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_20E2ADDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D20, &unk_20E346340);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFD0, &qword_20E3563A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869D20, &unk_20E346340);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D20, &unk_20E346340);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C86CFD0, &qword_20E3563A0);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C638, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CFD0, &qword_20E3563A0);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CFD0, &qword_20E3563A0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CFD0, &qword_20E3563A0);
    return sub_20E04875C(v36, &qword_27C86CFD0, &qword_20E3563A0);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CFD0, &qword_20E3563A0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D20, &unk_20E346340);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2AE3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D20, &unk_20E346340);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFD8, &qword_20E3563A8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C869D20, &unk_20E346340);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D20, &unk_20E346340);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86CFD8, &qword_20E3563A8);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C650, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CFD8, &qword_20E3563A8);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CFD8, &qword_20E3563A8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CFD8, &qword_20E3563A8);
    return sub_20E04875C(v36, &qword_27C86CFD8, &qword_20E3563A8);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CFD8, &qword_20E3563A8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D20, &unk_20E346340);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D20, &unk_20E346340);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C869D20, &unk_20E346340);
  v12 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2AED24(v3, a1, a2, a3);
  }

  else
  {
    sub_20E2AEAEC(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2AEAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D20, &unk_20E346340);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D20, &unk_20E346340);
  v13 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D20, &unk_20E346340);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    sub_20E2FB9A4(&qword_27C86C638, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2AED24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D20, &unk_20E346340);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D20, &unk_20E346340);
  v13 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D20, &unk_20E346340);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    sub_20E2FB9A4(&qword_27C86C650, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2AF00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC30, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AF0AC()
{
  sub_20E2FB9A4(&qword_27C86C620, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition);

  return sub_20E322470();
}

uint64_t sub_20E2AF118()
{
  sub_20E2FB9A4(&qword_27C86C620, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition);

  return sub_20E322480();
}

uint64_t sub_20E2AF1E4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B210);
  __swift_project_value_buffer(v0, qword_27C86B210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "properties";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayRepresentation";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Entity.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E2AF608();
          break;
        case 2:
          type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
          sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
          sub_20E322420();
          break;
        case 1:
          sub_20E2AF554();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2AF554()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0) + 20);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E2AF608()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0) + 24);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  return sub_20E322430();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Entity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E2AF7D4(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
      sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
      sub_20E322570();
    }

    sub_20E2AF9F0(v5, a1, a2, a3);
    v11 = v5 + *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0) + 28);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2AF7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C869B00, &unk_20E346240);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869B00, &unk_20E346240);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_20E2AF9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C868A20, &qword_20E345F10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868A20, &qword_20E345F10);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_20E2AFCAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC28, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2AFD4C()
{
  sub_20E2FB9A4(&qword_27C86C638, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return sub_20E322470();
}

uint64_t sub_20E2AFDB8()
{
  sub_20E2FB9A4(&qword_27C86C638, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Entity);

  return sub_20E322480();
}

uint64_t sub_20E2AFEA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD000000000000025;
  *a5 = 0x800000020E361860;
  return result;
}

uint64_t sub_20E2AFF38()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B238);
  __swift_project_value_buffer(v0, qword_27C86B238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cases";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayRepresentation";
  *(v11 + 8) = 21;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E2B035C();
          break;
        case 2:
          type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
          sub_20E2FB9A4(&qword_27C86B9F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
          sub_20E322420();
          break;
        case 1:
          sub_20E2B02A8();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2B02A8()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0) + 20);
  type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E2B035C()
{
  v0 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0) + 24);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  return sub_20E322430();
}

uint64_t ToolKitProtoAssistantTypeSchemaDefinition.Enumeration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E2B0528(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case(0);
      sub_20E2FB9A4(&qword_27C86B9F0, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration.Case);
      sub_20E322570();
    }

    sub_20E2B0744(v5, a1, a2, a3);
    v11 = v5 + *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0) + 28);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2B0528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C869B00, &unk_20E346240);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869B00, &unk_20E346240);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E2FB9A4(&qword_27C869AF8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
}

uint64_t sub_20E2B0744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C868A20, &qword_20E345F10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868A20, &qword_20E345F10);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_20E2B09A8@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[5];
  v5 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = &a2[a1[7]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E2B0ACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CC20, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2B0B6C()
{
  sub_20E2FB9A4(&qword_27C86C650, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return sub_20E322470();
}

uint64_t sub_20E2B0BD8()
{
  sub_20E2FB9A4(&qword_27C86C650, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition.Enumeration);

  return sub_20E322480();
}

uint64_t sub_20E2B0CB4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B250);
  __swift_project_value_buffer(v0, qword_27C86B250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_20E34A220;
  v4 = v126 + v3;
  v5 = v126 + v3 + v1[14];
  *(v126 + v3) = 1;
  *v5 = "unknown";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v126 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "undoable";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v126 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sessionStarting";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v126 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "urlRepresentable";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v126 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "conditionallyEnabled";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v126 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "foregroundContinuable";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v126 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "changeBinarySetting";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v126 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "requiresMdmChecks";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = v126 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "cut";
  *(v22 + 8) = 3;
  *(v22 + 16) = 2;
  v8();
  v23 = (v126 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "copy";
  *(v24 + 1) = 4;
  v24[16] = 2;
  v8();
  v25 = (v126 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "paste";
  *(v26 + 1) = 5;
  v26[16] = 2;
  v8();
  v27 = (v126 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "cancel";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v8();
  v29 = (v126 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "resize";
  *(v30 + 1) = 6;
  v30[16] = 2;
  v8();
  v31 = (v126 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "scroll";
  *(v32 + 1) = 6;
  v32[16] = 2;
  v8();
  v33 = (v126 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "undo";
  *(v34 + 1) = 4;
  v34[16] = 2;
  v8();
  v35 = (v126 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "zoom";
  *(v36 + 1) = 4;
  v36[16] = 2;
  v8();
  v37 = v126 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "closeEntity";
  *(v37 + 8) = 11;
  *(v37 + 16) = 2;
  v8();
  v38 = (v126 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "createEntity";
  *(v39 + 1) = 12;
  v39[16] = 2;
  v8();
  v40 = (v126 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "cutEntity";
  *(v41 + 1) = 9;
  v41[16] = 2;
  v8();
  v42 = (v126 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "deleteEntity";
  *(v43 + 1) = 12;
  v43[16] = 2;
  v8();
  v44 = (v126 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "duplicateEntity";
  *(v45 + 1) = 15;
  v45[16] = 2;
  v8();
  v46 = (v126 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "favoriteEntity";
  *(v47 + 1) = 14;
  v47[16] = 2;
  v8();
  v48 = (v126 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "openEntity";
  *(v49 + 1) = 10;
  v49[16] = 2;
  v8();
  v50 = (v126 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "previewEntity";
  *(v51 + 1) = 13;
  v51[16] = 2;
  v8();
  v52 = (v126 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "saveEntity";
  *(v53 + 1) = 10;
  v53[16] = 2;
  v8();
  v54 = (v126 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "putEntityInContainer";
  *(v55 + 1) = 20;
  v55[16] = 2;
  v8();
  v56 = (v126 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "playVideo";
  *(v57 + 1) = 9;
  v57[16] = 2;
  v8();
  v58 = (v126 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "audioStarting";
  *(v59 + 1) = 13;
  v59[16] = 2;
  v8();
  v60 = (v126 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 29;
  *v61 = "audioRecording";
  *(v61 + 1) = 14;
  v61[16] = 2;
  v8();
  v62 = (v126 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 30;
  *v63 = "pushToTalkTransmission";
  *(v63 + 1) = 22;
  v63[16] = 2;
  v8();
  v64 = (v126 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 31;
  *v65 = "startDive";
  *(v65 + 1) = 9;
  v65[16] = 2;
  v8();
  v66 = (v126 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 32;
  *v67 = "startWorkout";
  *(v67 + 1) = 12;
  v67[16] = 2;
  v8();
  v68 = v126 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 33;
  *v68 = "pauseWorkout";
  *(v68 + 8) = 12;
  *(v68 + 16) = 2;
  v8();
  v69 = (v126 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 34;
  *v70 = "resumeWorkout";
  *(v70 + 1) = 13;
  v70[16] = 2;
  v8();
  v71 = (v126 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 35;
  *v72 = "enterMarkup";
  *(v72 + 1) = 11;
  v72[16] = 2;
  v8();
  v73 = (v126 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 36;
  *v74 = "exitMarkup";
  *(v74 + 1) = 10;
  v74[16] = 2;
  v8();
  v75 = (v126 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 37;
  *v76 = "focusConfiguration";
  *(v76 + 1) = 18;
  v76[16] = 2;
  v8();
  v77 = (v126 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 38;
  *v78 = "widgetConfiguration";
  *(v78 + 1) = 19;
  v78[16] = 2;
  v8();
  v79 = (v126 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 39;
  *v80 = "search";
  *(v80 + 1) = 6;
  v80[16] = 2;
  v8();
  v81 = (v126 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 40;
  *v82 = "showSearchResultsInApp";
  *(v82 + 1) = 22;
  v82[16] = 2;
  v8();
  v83 = (v126 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 41;
  *v84 = "showStringSearchResultsInApp";
  *(v84 + 1) = 28;
  v84[16] = 2;
  v8();
  v85 = (v126 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 42;
  *v86 = "showInAppSearchResults";
  *(v86 + 1) = 22;
  v86[16] = 2;
  v8();
  v87 = (v126 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 43;
  *v88 = "showInAppStringSearchResults";
  *(v88 + 1) = 28;
  v88[16] = 2;
  v8();
  v89 = (v126 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 44;
  *v90 = "moveSpatial";
  *(v90 + 1) = 11;
  v90[16] = 2;
  v8();
  v91 = (v126 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 45;
  *v92 = "navigateSequentially";
  *(v92 + 1) = 20;
  v92[16] = 2;
  v8();
  v93 = (v126 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 46;
  *v94 = "sting";
  *(v94 + 1) = 5;
  v94[16] = 2;
  v8();
  v95 = (v126 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 47;
  *v96 = "toggle";
  *(v96 + 1) = 6;
  v96[16] = 2;
  v8();
  v97 = (v126 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 48;
  *v98 = "cameraCapture";
  *(v98 + 1) = 13;
  v98[16] = 2;
  v8();
  v99 = (v126 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 49;
  *v100 = "staccatoLongPress";
  *(v100 + 1) = 17;
  v100[16] = 2;
  v8();
  v101 = (v126 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 50;
  *v102 = "entityUpdating";
  *(v102 + 1) = 14;
  v102[16] = 2;
  v8();
  v103 = (v126 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 51;
  *v104 = "propertyUpdater";
  *(v104 + 1) = 15;
  v104[16] = 2;
  v8();
  v105 = (v126 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 52;
  *v106 = "sendMail";
  *(v106 + 1) = 8;
  v106[16] = 2;
  v8();
  v107 = (v126 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 53;
  *v108 = "setMailMessageIsRead";
  *(v108 + 1) = 20;
  v108[16] = 2;
  v8();
  v109 = (v126 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 54;
  *v110 = "siriKitIntent";
  *(v110 + 1) = 13;
  v110[16] = 2;
  v8();
  v111 = (v126 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 55;
  *v112 = "intentSideEffect";
  *(v112 + 1) = 16;
  v112[16] = 2;
  v8();
  v113 = (v126 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 56;
  *v114 = "assistantSchema";
  *(v114 + 1) = 15;
  v114[16] = 2;
  v8();
  v115 = (v126 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 57;
  *v116 = "rewriteWritingTool";
  *(v116 + 1) = 18;
  v116[16] = 2;
  v8();
  v117 = (v126 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 58;
  *v118 = "proofreadWritingTool";
  *(v118 + 1) = 20;
  v118[16] = 2;
  v8();
  v119 = (v126 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 59;
  *v120 = "assistantInvocable";
  *(v120 + 1) = 18;
  v120[16] = 2;
  v8();
  v121 = (v126 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 60;
  *v122 = "appIntent";
  *(v122 + 1) = 9;
  v122[16] = 2;
  v8();
  v123 = (v126 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 61;
  *v124 = "systemFrameworkIntent";
  *(v124 + 1) = 21;
  v124[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoSystemToolProtocol.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 9;
          goto LABEL_65;
        case 2:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 10;
          goto LABEL_65;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 11;
          goto LABEL_65;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 12;
          goto LABEL_65;
        case 5:
          sub_20E2B2A74(v5, a1, a2, a3);
          break;
        case 6:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_65;
        case 7:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_65;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
          goto LABEL_65;
        case 9:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 16;
          goto LABEL_65;
        case 10:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 17;
          goto LABEL_65;
        case 11:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 18;
          goto LABEL_65;
        case 12:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 19;
          goto LABEL_65;
        case 13:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 20;
          goto LABEL_65;
        case 14:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 21;
          goto LABEL_65;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 22;
          goto LABEL_65;
        case 16:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 23;
          goto LABEL_65;
        case 17:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 24;
          goto LABEL_65;
        case 18:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 25;
          goto LABEL_65;
        case 19:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 26;
          goto LABEL_65;
        case 20:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 27;
          goto LABEL_65;
        case 21:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 28;
          goto LABEL_65;
        case 22:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 29;
          goto LABEL_65;
        case 23:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 30;
          goto LABEL_65;
        case 24:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 31;
          goto LABEL_65;
        case 25:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 32;
          goto LABEL_65;
        case 26:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 33;
          goto LABEL_65;
        case 27:
          sub_20E2B3024(v5, a1, a2, a3);
          break;
        case 28:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 34;
          goto LABEL_65;
        case 29:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 35;
          goto LABEL_65;
        case 30:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 36;
          goto LABEL_65;
        case 31:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 37;
          goto LABEL_65;
        case 32:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 38;
          goto LABEL_65;
        case 33:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 39;
          goto LABEL_65;
        case 34:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 40;
          goto LABEL_65;
        case 35:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 41;
          goto LABEL_65;
        case 36:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 42;
          goto LABEL_65;
        case 37:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 43;
          goto LABEL_65;
        case 38:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 44;
          goto LABEL_65;
        case 39:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 45;
          goto LABEL_65;
        case 40:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 46;
          goto LABEL_65;
        case 41:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 47;
          goto LABEL_65;
        case 42:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 48;
          goto LABEL_65;
        case 43:
          sub_20E2B35E0(v5, a1, a2, a3);
          break;
        case 44:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 49;
          goto LABEL_65;
        case 45:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 50;
          goto LABEL_65;
        case 46:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 51;
          goto LABEL_65;
        case 47:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 52;
          goto LABEL_65;
        case 48:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 53;
          goto LABEL_65;
        case 49:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 54;
          goto LABEL_65;
        case 50:
          sub_20E2B3B9C(v5, a1, a2, a3);
          break;
        case 51:
          sub_20E2B4158(v5, a1, a2, a3);
          break;
        case 52:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 55;
          goto LABEL_65;
        case 53:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 56;
          goto LABEL_65;
        case 54:
          sub_20E2B4714(v5, a1, a2, a3);
          break;
        case 55:
          sub_20E2B4CD0(v5, a1, a2, a3);
          break;
        case 56:
          sub_20E2B528C(v5, a1, a2, a3);
          break;
        case 57:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 57;
          goto LABEL_65;
        case 58:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 58;
          goto LABEL_65;
        case 59:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 59;
          goto LABEL_65;
        case 60:
          sub_20E2B5848(v5, a1, a2, a3);
          break;
        case 61:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 60;
LABEL_65:
          sub_20E257248(v11, v12, v13, v14, &qword_27C8688D8, &qword_20E33B888, type metadata accessor for ToolKitProtoSystemToolProtocolKind, v15);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2B2A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF80, &qword_20E356350);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C8688D8, &qword_20E33B888);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8688D8, &qword_20E33B888);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C86CF80, &qword_20E356350);
      v35 = v43;
      sub_20E2FB8D8(v20, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C678, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CF80, &qword_20E356350);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CF80, &qword_20E356350);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CF80, &qword_20E356350);
    return sub_20E04875C(v36, &qword_27C86CF80, &qword_20E356350);
  }

  else
  {
    v39 = v44;
    sub_20E2FB8D8(v36, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CF80, &qword_20E356350);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.ConditionallyEnabled);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2B3024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF88, &qword_20E356358);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C8688D8, &qword_20E33B888);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8688D8, &qword_20E33B888);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86CF88, &qword_20E356358);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C690, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CF88, &qword_20E356358);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CF88, &qword_20E356358);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CF88, &qword_20E356358);
    return sub_20E04875C(v36, &qword_27C86CF88, &qword_20E356358);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CF88, &qword_20E356358);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.PlayVideo);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2B35E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF90, &qword_20E356360);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_20E0486F4(a1, v14, &qword_27C8688D8, &qword_20E33B888);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C8688D8, &qword_20E33B888);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C86CF90, &qword_20E356360);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C6A8, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CF90, &qword_20E356360);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CF90, &qword_20E356360);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CF90, &qword_20E356360);
    return sub_20E04875C(v36, &qword_27C86CF90, &qword_20E356360);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CF90, &qword_20E356360);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C8688D8, &qword_20E33B888);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoSystemToolProtocol.ShowInAppStringSearchResults);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}