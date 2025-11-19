uint64_t sub_20E26A52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D108, &qword_20E3564D0);
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
  sub_20E0486F4(a1, v14, &qword_27C869C80, &qword_20E346288);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869C80, &qword_20E346288);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_20E04875C(v28, &qword_27C86D108, &qword_20E3564D0);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86BFF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D108, &qword_20E3564D0);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D108, &qword_20E3564D0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D108, &qword_20E3564D0);
    return sub_20E04875C(v36, &qword_27C86D108, &qword_20E3564D0);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D108, &qword_20E3564D0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E26AAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D110, &qword_20E3564D8);
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
  sub_20E0486F4(a1, v14, &qword_27C869C80, &qword_20E346288);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869C80, &qword_20E346288);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_20E04875C(v28, &qword_27C86D110, &qword_20E3564D8);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C020, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D110, &qword_20E3564D8);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D110, &qword_20E3564D8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D110, &qword_20E3564D8);
    return sub_20E04875C(v36, &qword_27C86D110, &qword_20E3564D8);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D110, &qword_20E3564D8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E26B0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D118, &qword_20E3564E0);
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
  sub_20E0486F4(a1, v14, &qword_27C869C80, &qword_20E346288);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869C80, &qword_20E346288);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_20E04875C(v28, &qword_27C86D118, &qword_20E3564E0);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C038, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D118, &qword_20E3564E0);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D118, &qword_20E3564E0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D118, &qword_20E3564E0);
    return sub_20E04875C(v36, &qword_27C86D118, &qword_20E3564E0);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D118, &qword_20E3564E0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E26B660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D120, &qword_20E3564E8);
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
  sub_20E0486F4(a1, v14, &qword_27C869C80, &qword_20E346288);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869C80, &qword_20E346288);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_20E04875C(v28, &qword_27C86D120, &qword_20E3564E8);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C050, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D120, &qword_20E3564E8);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D120, &qword_20E3564E8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D120, &qword_20E3564E8);
    return sub_20E04875C(v36, &qword_27C86D120, &qword_20E3564E8);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D120, &qword_20E3564E8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E26BC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D128, &qword_20E3564F0);
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
  sub_20E0486F4(a1, v14, &qword_27C869C80, &qword_20E346288);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869C80, &qword_20E346288);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_20E04875C(v28, &qword_27C86D128, &qword_20E3564F0);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C068, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D128, &qword_20E3564F0);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D128, &qword_20E3564F0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D128, &qword_20E3564F0);
    return sub_20E04875C(v36, &qword_27C86D128, &qword_20E3564F0);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D128, &qword_20E3564F0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E26C1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D130, &qword_20E3564F8);
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
  sub_20E0486F4(a1, v14, &qword_27C869C80, &qword_20E346288);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869C80, &qword_20E346288);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_20E04875C(v28, &qword_27C86D130, &qword_20E3564F8);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C080, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D130, &qword_20E3564F8);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D130, &qword_20E3564F8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D130, &qword_20E3564F8);
    return sub_20E04875C(v36, &qword_27C86D130, &qword_20E3564F8);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D130, &qword_20E3564F8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869C80, &qword_20E346288);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C869C80, &qword_20E346288);
  v12 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        result = sub_20E26CFD4(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 2u:
        result = sub_20E26D138(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 3u:
        sub_20E26D29C(v3, a1, a2, a3);
        goto LABEL_35;
      case 4u:
        sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_20E26D4D4(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 5u:
        sub_20E26D64C(v3, a1, a2, a3);
        goto LABEL_35;
      case 6u:
        sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_20E26D8B0(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 7u:
        sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_20E26DA30(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 8u:
        sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_20E26DBA8(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 9u:
        sub_20E26DD28(v3, a1, a2, a3);
        goto LABEL_35;
      case 0xAu:
        sub_20E26DF60(v3, a1, a2, a3);
LABEL_35:
        result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        if (!v4)
        {
          break;
        }

        return result;
      case 0xBu:
        sub_20E26E198(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0xCu:
        sub_20E26E3D0(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0xDu:
        sub_20E26E608(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0xEu:
        sub_20E26E840(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        }

        goto LABEL_10;
      case 0xFu:
        sub_20E26EA78(v3, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_10;
        }

        return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
      case 0x10u:
        sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        result = sub_20E26ECB0(v3);
        if (!v4)
        {
          break;
        }

        return result;
      case 0x11u:
        sub_20E26EE30(v3, a1, a2, a3);
        if (v4)
        {
          return sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        }

LABEL_10:
        sub_20E2FB878(v11, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
        break;
      case 0x12u:
        result = sub_20E26CC28(v3, a1, a2, a3);
        if (!v4)
        {
          break;
        }

        return result;
      default:
        result = sub_20E26CE74(v3);
        if (!v4)
        {
          break;
        }

        return result;
    }
  }

  v14 = v3 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E26CC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v5 = sub_20E322110();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v17 - v12;
  sub_20E0486F4(a1, v17 - v12, &qword_27C869C80, &qword_20E346288);
  v14 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    result = sub_20E04875C(v13, &qword_27C869C80, &qword_20E346288);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
    if (EnumCaseMultiPayload == 18)
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

uint64_t sub_20E26CE74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  sub_20E0486F4(a1, &v9 - v4, &qword_27C869C80, &qword_20E346288);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v7 = *v5;
    return sub_20E3224C0();
  }

  result = sub_20E2FB878(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26CFD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v9 - v4);
  sub_20E0486F4(a1, &v9 - v4, &qword_27C869C80, &qword_20E346288);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v5;
    return sub_20E322510();
  }

  result = sub_20E2FB878(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26D138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v9 - v4);
  sub_20E0486F4(a1, &v9 - v4, &qword_27C869C80, &qword_20E346288);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v5;
    return sub_20E322530();
  }

  result = sub_20E2FB878(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26D29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869C80, &qword_20E346288);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    sub_20E2FB9A4(&qword_27C86BFA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26D4D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_20E0486F4(a1, &v10 - v4, &qword_27C869C80, &qword_20E346288);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    v7 = *v5;
    v8 = v5[1];
    sub_20E322540();
  }

  result = sub_20E2FB878(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26D64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = sub_20E322150();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869C80, &qword_20E346288);
  v14 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_20E04875C(v8, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_20E2FB9A4(&qword_280E12B18, MEMORY[0x277D21570]);
    sub_20E322580();
    return (*(v10 + 8))(v13, v9);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26D8B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_20E0486F4(a1, &v10 - v4, &qword_27C869C80, &qword_20E346288);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    v8 = *v5;
    v7 = v5[1];
    sub_20E3224E0();
    return sub_20E05E888(v8, v7);
  }

  result = sub_20E2FB878(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26DA30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_20E0486F4(a1, &v10 - v4, &qword_27C869C80, &qword_20E346288);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    v7 = *v5;
    v8 = v5[1];
    sub_20E322540();
  }

  result = sub_20E2FB878(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26DBA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_20E0486F4(a1, &v10 - v4, &qword_27C869C80, &qword_20E346288);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    v8 = *v5;
    v7 = v5[1];
    sub_20E3224E0();
    return sub_20E05E888(v8, v7);
  }

  result = sub_20E2FB878(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26DD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869C80, &qword_20E346288);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    sub_20E2FB9A4(&qword_27C86BFC8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26DF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869C80, &qword_20E346288);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    sub_20E2FB9A4(&qword_27C86BFE0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26E198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869C80, &qword_20E346288);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    sub_20E2FB9A4(&qword_27C86BFF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26E3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869C80, &qword_20E346288);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    sub_20E2FB9A4(&qword_27C86C020, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26E608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869C80, &qword_20E346288);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 13)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    sub_20E2FB9A4(&qword_27C86C038, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869C80, &qword_20E346288);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 14)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    sub_20E2FB9A4(&qword_27C86C050, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26EA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869C80, &qword_20E346288);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 15)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    sub_20E2FB9A4(&qword_27C86C068, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26ECB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_20E0486F4(a1, &v10 - v4, &qword_27C869C80, &qword_20E346288);
  v6 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 16)
  {
    v8 = *v5;
    v7 = v5[1];
    sub_20E3224E0();
    return sub_20E05E888(v8, v7);
  }

  result = sub_20E2FB878(v5, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26EE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869C80, &qword_20E346288);
  v13 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869C80, &qword_20E346288);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 17)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    sub_20E2FB9A4(&qword_27C86C080, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  __break(1u);
  return result;
}

uint64_t sub_20E26F120(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE40, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E26F1C0()
{
  sub_20E2FB9A4(qword_280E0F378, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);

  return sub_20E322470();
}

uint64_t sub_20E26F22C()
{
  sub_20E2FB9A4(qword_280E0F378, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue);

  return sub_20E322480();
}

uint64_t sub_20E26F2AC()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6C616D696365442ELL, 0xE800000000000000);

  qword_27C86A7F8 = v1;
  unk_27C86A800 = v2;
  return result;
}

uint64_t sub_20E26F378()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A808);
  __swift_project_value_buffer(v0, qword_27C86A808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sign";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "exponent";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "significand";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E26F6A4();
          break;
        case 2:
          sub_20E322390();
          break;
        case 1:
          sub_20E24F6A8();
          sub_20E322310();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E26F6A4()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0) + 24);
  sub_20E322160();
  sub_20E2FB9A4(&qword_27C86D0F0, MEMORY[0x277D215C8]);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Decimal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, sub_20E24F6A8(), result = sub_20E3224D0(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_20E322510(), !v4))
    {
      result = sub_20E26F83C(v3, a1, a2, a3);
      if (!v4)
      {
        v9 = v3 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0) + 28);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E26F83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C88, &qword_20E346290);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = sub_20E322160();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C869C88, &qword_20E346290);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869C88, &qword_20E346290);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_20E2FB9A4(&qword_27C86D0F0, MEMORY[0x277D215C8]);
  sub_20E322580();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_20E26FAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_20E322160();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_20E26FB7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE38, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E26FC1C()
{
  sub_20E2FB9A4(&qword_27C86BFA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return sub_20E322470();
}

uint64_t sub_20E26FC88()
{
  sub_20E2FB9A4(&qword_27C86BFA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);

  return sub_20E322480();
}

uint64_t sub_20E26FD08()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A820);
  __swift_project_value_buffer(v0, qword_27C86A820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Sign_UNSPECIFIED";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Sign_MINUS";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Sign_PLUS";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E26FF78()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6572757361654D2ELL, 0xEC000000746E656DLL);

  qword_27C86A838 = v1;
  unk_27C86A840 = v2;
  return result;
}

uint64_t sub_20E27004C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A848);
  __swift_project_value_buffer(v0, qword_27C86A848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unit";
  *(v6 + 8) = 4;
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
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "unitType";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E24F7A4();
          sub_20E322310();
          break;
        case 2:
          sub_20E3223C0();
          break;
        case 1:
          sub_20E3223E0();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.Measurement.traverse<A>(visitor:)()
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
    if (*(v0 + 2) == 0.0 || (result = sub_20E322530(), !v1))
    {
      if (!*(v0 + 24) || (v7 = *(v0 + 24), sub_20E24F7A4(), result = sub_20E3224D0(), !v1))
      {
        v6 = v0 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0) + 28);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E2704C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_20E270554(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE30, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2705F4()
{
  sub_20E2FB9A4(&qword_27C86BFC8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return sub_20E322470();
}

uint64_t sub_20E270660()
{
  sub_20E2FB9A4(&qword_27C86BFC8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement);

  return sub_20E322480();
}

uint64_t sub_20E2706E0()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x636E65727275432ELL, 0xEF746E756F6D4179);

  qword_27C86A860 = v1;
  *algn_27C86A868 = v2;
  return result;
}

uint64_t sub_20E2707B8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A870);
  __swift_project_value_buffer(v0, qword_27C86A870);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "amount";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currencyIdentifier";
  *(v10 + 1) = 18;
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

uint64_t sub_20E270A44()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  sub_20E2FB9A4(&qword_27C86BFA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  return sub_20E322430();
}

uint64_t sub_20E270AF8()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E270C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C90, &qword_20E346298);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C869C90, &qword_20E346298);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869C90, &qword_20E346298);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  sub_20E2FB9A4(&qword_27C86BFA0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
}

uint64_t sub_20E270E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E2710F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE28, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E271190()
{
  sub_20E2FB9A4(&qword_27C86BFE0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return sub_20E322470();
}

uint64_t sub_20E2711FC()
{
  sub_20E2FB9A4(&qword_27C86BFE0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount);

  return sub_20E322480();
}

uint64_t sub_20E27127C()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x746E656D7961502ELL, 0xEE00646F6874654DLL);

  qword_27C86A888 = v1;
  unk_27C86A890 = v2;
  return result;
}

uint64_t sub_20E271354()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A898);
  __swift_project_value_buffer(v0, qword_27C86A898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identificationHint";
  *(v10 + 1) = 18;
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

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E271680();
          break;
        case 2:
          sub_20E3223D0();
          break;
        case 1:
          sub_20E24F654();
          sub_20E322310();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E271680()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = result;
  if (!*v3 || (v10 = *v3, sub_20E24F654(), result = sub_20E3224D0(), !v4))
  {
    if (*(v3 + 16))
    {
      v8 = *(v3 + 8);
      result = sub_20E322540();
    }

    if (!v4)
    {
      sub_20E27181C(v3, v7, a2, a3);
      v9 = v3 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E27181C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E271A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E271B5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE20, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E271BFC()
{
  sub_20E2FB9A4(&qword_27C86BFF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return sub_20E322470();
}

uint64_t sub_20E271C68()
{
  sub_20E2FB9A4(&qword_27C86BFF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod);

  return sub_20E322480();
}

uint64_t sub_20E271CE8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A8B0);
  __swift_project_value_buffer(v0, qword_27C86A8B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20E342190;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "Type_UNSPECIFIED";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "Type_CHECKING";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "Type_SAVINGS";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "Type_BROKERAGE";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "Type_DEBIT";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "Type_CREDIT";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "Type_PREPAID";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "Type_STORE";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "Type_APPLE_PAY";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E2720C8()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x616D6563616C502ELL, 0xEA00000000006B72);

  qword_27C86A8C8 = v1;
  unk_27C86A8D0 = v2;
  return result;
}

uint64_t sub_20E272198()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A8D8);
  __swift_project_value_buffer(v0, qword_27C86A8D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "placemark";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2723D8()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0) + 20);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E2724CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v12 = *v5;
  v13 = v5[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
LABEL_8:
    if (v15 == v16)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_20E3224E0();
    if (v6)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v12;
    v16 = v12 >> 32;
    goto LABEL_8;
  }

  if ((v13 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v18 = v5 + *(a5(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2725BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E272878(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE18, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E272918()
{
  sub_20E2FB9A4(&qword_27C86C020, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return sub_20E322470();
}

uint64_t sub_20E272984()
{
  sub_20E2FB9A4(&qword_27C86C020, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Placemark);

  return sub_20E322480();
}

uint64_t sub_20E272A30()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6E6F737265502ELL, 0xE700000000000000);

  qword_27C86A8F0 = v1;
  *algn_27C86A8F8 = v2;
  return result;
}

uint64_t sub_20E272AFC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A900);
  __swift_project_value_buffer(v0, qword_27C86A900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "person";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E272D3C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0) + 20);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E272E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E2730EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE10, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27318C()
{
  sub_20E2FB9A4(&qword_27C86C038, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return sub_20E322470();
}

uint64_t sub_20E2731F8()
{
  sub_20E2FB9A4(&qword_27C86C038, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Person);

  return sub_20E322480();
}

uint64_t sub_20E2732A4()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x656C69462ELL, 0xE500000000000000);

  qword_27C86A918 = v1;
  unk_27C86A920 = v2;
  return result;
}

uint64_t sub_20E27336C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A928);
  __swift_project_value_buffer(v0, qword_27C86A928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "file";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2735AC()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0) + 20);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E2736A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

double sub_20E273904@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v5 = *(a1 + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = &a3[*(a1 + 24)];
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  result = 0.0;
  *a3 = xmmword_20E326350;
  return result;
}

uint64_t sub_20E2739E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE08, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E273A88()
{
  sub_20E2FB9A4(&qword_27C86C050, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return sub_20E322470();
}

uint64_t sub_20E273AF4()
{
  sub_20E2FB9A4(&qword_27C86C050, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.File);

  return sub_20E322480();
}

uint64_t sub_20E273BA0()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](1886404910, 0xE400000000000000);

  qword_27C86A940 = v1;
  *algn_27C86A948 = v2;
  return result;
}

uint64_t sub_20E273C64()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A950);
  __swift_project_value_buffer(v0, qword_27C86A950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E273EA4()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0) + 20);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E273F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v12 = *v5;
  v13 = v5[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = sub_20E322540(), !v6))
  {
    result = a4(v5, a1, a2, a3);
    if (!v6)
    {
      v16 = v5 + *(a5(0) + 24);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E27405C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E274318(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CE00, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2743B8()
{
  sub_20E2FB9A4(&qword_27C86C068, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return sub_20E322470();
}

uint64_t sub_20E274424()
{
  sub_20E2FB9A4(&qword_27C86C068, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.App);

  return sub_20E322480();
}

uint64_t sub_20E2744D0()
{
  if (qword_27C8632C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A7D0;
  v2 = *algn_27C86A7D8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6D6F43657461442ELL, 0xEF73746E656E6F70);

  qword_27C86A968 = v1;
  unk_27C86A970 = v2;
  return result;
}

uint64_t sub_20E2745A8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A978);
  __swift_project_value_buffer(v0, qword_27C86A978);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20E34A210;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "calendar";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "timeZoneIdentifier";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "era";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "year";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "month";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "day";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "hour";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "minute";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "second";
  *(v22 + 8) = 6;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "nanosecond";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "weekday";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "weekdayOrdinal";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "quarter";
  *(v30 + 1) = 7;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "weekOfMonth";
  *(v32 + 1) = 11;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "weekOfYear";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "yearForWeekOfYear";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
          sub_20E2FB9A4(&qword_27C86C0A8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
          sub_20E322430();
          break;
        case 2:
          v12 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 20);
          sub_20E3223D0();
          break;
        case 3:
          v8 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 24);
          goto LABEL_5;
        case 4:
          v10 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 28);
          goto LABEL_5;
        case 5:
          v5 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 32);
          goto LABEL_5;
        case 6:
          v13 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 36);
          goto LABEL_5;
        case 7:
          v15 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 40);
          goto LABEL_5;
        case 8:
          v11 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 44);
          goto LABEL_5;
        case 9:
          v17 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 48);
          goto LABEL_5;
        case 10:
          v7 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 52);
          goto LABEL_5;
        case 11:
          v16 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 56);
          goto LABEL_5;
        case 12:
          v4 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 60);
          goto LABEL_5;
        case 13:
          v6 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 64);
          goto LABEL_5;
        case 14:
          v14 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 68);
          goto LABEL_5;
        case 15:
          v3 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 72);
          goto LABEL_5;
        case 16:
          v9 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 76);
LABEL_5:
          sub_20E322380();
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E274F34(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E28524C(v3, a1, a2, a3, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    sub_20E29FD18(v3, a1, a2, a3, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);
    sub_20E275144(v3);
    sub_20E2751BC(v3);
    sub_20E275234(v3);
    sub_20E2752AC(v3);
    sub_20E275324(v3);
    sub_20E27539C(v3);
    sub_20E275414(v3);
    sub_20E27548C(v3);
    sub_20E275504(v3);
    sub_20E27557C(v3);
    sub_20E2755F4(v3);
    sub_20E27566C(v3);
    sub_20E2756E4(v3);
    v9 = v3 + *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0) + 80);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E274F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C98, &unk_20E3462A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869C98, &unk_20E3462A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869C98, &unk_20E3462A0);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
  sub_20E2FB9A4(&qword_27C86C0A8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
}

uint64_t sub_20E275144(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 28));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E2751BC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 32));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E275234(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 36));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E2752AC(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E275324(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 44));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E27539C(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 48));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E275414(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 52));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E27548C(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 56));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E275504(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 60));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E27557C(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 64));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E2755F4(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 68));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E27566C(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 72));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E2756E4(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v3 = (a1 + *(result + 76));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_20E322510();
  }

  return result;
}

uint64_t sub_20E2757D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E275844(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v5 = sub_20E3221C0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_20E2758B8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 80);
  return result;
}

uint64_t sub_20E27590C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDF8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2759AC()
{
  sub_20E2FB9A4(&qword_27C86C080, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return sub_20E322470();
}

uint64_t sub_20E275A18()
{
  sub_20E2FB9A4(&qword_27C86C080, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents);

  return sub_20E322480();
}

uint64_t sub_20E275A98()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A990);
  __swift_project_value_buffer(v0, qword_27C86A990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_20E3421A0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 0;
  *v5 = "UNSPECIFIED";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "GREGORIAN";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "BUDDHIST";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "CHINESE";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "COPTIC";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ETHIOPIC_AMETE_MIHRET";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ETHIOPIC_AMETE_ALEM";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "HEBREW";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ISO8601";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "INDIAN";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ISLAMIC";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ISLAMIC_CIVIL";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "JAPANESE";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "PERSIAN";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "REPUBLIC_OF_CHINA";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ISLAMIC_TABULAR";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "ISLAMIC_UMM_AL_QURA";
  *(v37 + 8) = 19;
  *(v37 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E27605C()
{
  if (qword_27C863360 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86A968;
  v2 = qword_27C86A970;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x61646E656C61432ELL, 0xE900000000000072);

  qword_27C86A9A8 = v1;
  unk_27C86A9B0 = v2;
  return result;
}

uint64_t sub_20E27612C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A9B8);
  __swift_project_value_buffer(v0, qword_27C86A9B8);
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
  *v10 = "timeZoneIdentifier";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localeIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "firstWeekday";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "minimumDaysInFirstWeek";
  *(v15 + 8) = 22;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_20E24F600();
          sub_20E322310();
        }

        else if (result == 2)
        {
          sub_20E3223E0();
        }
      }

      else if (result == 3)
      {
        sub_20E3223D0();
      }

      else if (result == 4 || result == 5)
      {
        sub_20E322390();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar.traverse<A>(visitor:)()
{
  if (!*v0 || (v7 = *v0, sub_20E24F600(), result = sub_20E3224D0(), !v1))
  {
    result = *(v0 + 1);
    v3 = *(v0 + 2);
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_20E322540(), !v1))
    {
      if (*(v0 + 6))
      {
        v5 = *(v0 + 5);
        result = sub_20E322540();
      }

      if (!v1)
      {
        if (*(v0 + 3))
        {
          sub_20E322510();
        }

        if (*(v0 + 4))
        {
          sub_20E322510();
        }

        v6 = &v0[*(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0) + 36)];
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E27669C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v3 = a2 + *(a1 + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_20E276734(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDF0, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2767D4()
{
  sub_20E2FB9A4(&qword_27C86C0A8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return sub_20E322470();
}

uint64_t sub_20E276840()
{
  sub_20E2FB9A4(&qword_27C86C0A8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);

  return sub_20E322480();
}

uint64_t sub_20E2768C0()
{
  result = MEMORY[0x20F32BF40](0xD000000000000011, 0x800000020E363260);
  qword_27C86A9D0 = 0xD000000000000012;
  *algn_27C86A9D8 = 0x800000020E3615A0;
  return result;
}

uint64_t sub_20E27695C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86A9E0);
  __swift_project_value_buffer(v0, qword_27C86A9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "caseValue";
  *(v10 + 1) = 9;
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

uint64_t sub_20E276BE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_20E3222B0();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        a5(a1, v9, a2, a3);
        break;
      case 2:
        sub_20E3223E0();
        break;
      case 1:
        a4(a1, v9, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_20E276CB4()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E276D68()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E276E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  result = a4(v6, a1, a2, a3);
  if (!v7)
  {
    v14 = *v6;
    v15 = v6[1];
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = *v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      sub_20E322540();
    }

    a5(v6, a1, a2, a3);
    v17 = v6 + *(a6(0) + 28);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E276F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863B60, &qword_20E323F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E277174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E277430(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDE8, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2774D0()
{
  sub_20E2FB9A4(&qword_27C86C0C0, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);

  return sub_20E322470();
}

uint64_t sub_20E27753C()
{
  sub_20E2FB9A4(&qword_27C86C0C0, type metadata accessor for ToolKitProtoTypedValue.EnumerationValue);

  return sub_20E322480();
}

uint64_t sub_20E277610()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AA08);
  __swift_project_value_buffer(v0, qword_27C86AA08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E326320;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "identifier";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "properties";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "displayRepresentation";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "hydratedAppEntity";
  *(v14 + 8) = 17;
  *(v14 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.EntityValue.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_20E2779F0();
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
          sub_20E277AA4();
          break;
        case 4:
          sub_20E277B9C();
          break;
        case 5:
          v3 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 32);
          sub_20E322320();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E2779F0()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 24);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E277AA4()
{
  sub_20E322170();
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E2FB9A4(&qword_27C865AF0, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322290();
}

uint64_t sub_20E277B9C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 28);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypedValue.EntityValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E277E08(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = *v3;
    v10 = v3[1];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_20E322540();
    }

    if (*(v3[2] + 16))
    {
      sub_20E322170();
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB9A4(&qword_27C865AF0, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E322490();
    }

    sub_20E278024(v3, a1, a2, a3);
    sub_20E278240(v3);
    v12 = v3 + *(type metadata accessor for ToolKitProtoTypedValue.EntityValue(0) + 36);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E277E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863B60, &qword_20E323F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E278024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  sub_20E0486F4(a1 + *(v14 + 28), v8, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E278240(uint64_t a1)
{
  result = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v3 = a1 + *(result + 32);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_20E05E834(*v3, *(v3 + 8));
    sub_20E3224E0();
    return sub_20E047D10(v5, v4);
  }

  return result;
}

unint64_t sub_20E278328@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = a1[6];
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[9];
  *&a2[a1[8]] = xmmword_20E323EA0;
  _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  result = sub_20E04916C(MEMORY[0x277D84F90]);
  *(a2 + 2) = result;
  return result;
}

uint64_t sub_20E278464(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDE0, type metadata accessor for ToolKitProtoTypedValue.EntityValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E278504()
{
  sub_20E2FB9A4(&qword_27C86C0D8, type metadata accessor for ToolKitProtoTypedValue.EntityValue);

  return sub_20E322470();
}

uint64_t sub_20E278570()
{
  sub_20E2FB9A4(&qword_27C86C0D8, type metadata accessor for ToolKitProtoTypedValue.EntityValue);

  return sub_20E322480();
}

uint64_t sub_20E2785F0()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E363220);
  qword_27C86AA20 = 0xD000000000000012;
  *algn_27C86AA28 = 0x800000020E3615A0;
  return result;
}

uint64_t sub_20E27868C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AA30);
  __swift_project_value_buffer(v0, qword_27C86AA30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.CollectionValue.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E27898C();
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoTypedValue(0);
        sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E27898C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypedValue.CollectionValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E278B3C(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ToolKitProtoTypedValue(0);
      sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E322570();
    }

    v8 = v5 + *(type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E278B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863B60, &qword_20E323F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E278DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDD8, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E278E98()
{
  sub_20E2FB9A4(&qword_27C86C0F0, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);

  return sub_20E322470();
}

uint64_t sub_20E278F04()
{
  sub_20E2FB9A4(&qword_27C86C0F0, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);

  return sub_20E322480();
}

uint64_t sub_20E279018()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AA58);
  __swift_project_value_buffer(v0, qword_27C86AA58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E279244(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  result = sub_20E3222B0();
  if (!v5)
  {
    while ((v12 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypeIdentifier(0);
        sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
        sub_20E322430();
      }

      else if (result == 2)
      {
        a4(a1, v7, a2, a3);
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E27934C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.QueryValue(0) + 20);
  type metadata accessor for ToolKitProtoQuery(0);
  sub_20E2FB9A4(&qword_27C86C4A8, type metadata accessor for ToolKitProtoQuery);
  return sub_20E322430();
}

uint64_t sub_20E279454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  result = a4(v6, a1, a2, a3);
  if (!v7)
  {
    a5(v6, a1, a2, a3);
    v14 = v6 + *(a6(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2794FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F28, &qword_20E325D30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoQuery(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  sub_20E0486F4(a1 + *(Value + 20), v8, &qword_27C863F28, &qword_20E325D30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863F28, &qword_20E325D30);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoQuery);
  sub_20E2FB9A4(&qword_27C86C4A8, type metadata accessor for ToolKitProtoQuery);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoQuery);
}

uint64_t sub_20E2797E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDD0, type metadata accessor for ToolKitProtoTypedValue.QueryValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E279884()
{
  sub_20E2FB9A4(&qword_27C86C108, type metadata accessor for ToolKitProtoTypedValue.QueryValue);

  return sub_20E322470();
}

uint64_t sub_20E2798F0()
{
  sub_20E2FB9A4(&qword_27C86C108, type metadata accessor for ToolKitProtoTypedValue.QueryValue);

  return sub_20E322480();
}

uint64_t sub_20E279970()
{
  result = MEMORY[0x20F32BF40](0xD000000000000016, 0x800000020E363200);
  qword_27C86AA70 = 0xD000000000000012;
  *algn_27C86AA78 = 0x800000020E3615A0;
  return result;
}

uint64_t sub_20E279A04()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AA80);
  __swift_project_value_buffer(v0, qword_27C86AA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
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

uint64_t sub_20E279C90()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t sub_20E279D44()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0) + 24);
  type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  return sub_20E322430();
}

uint64_t sub_20E279E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863B60, &qword_20E323F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E27A068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863EB8, &qword_20E325D08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863EB8, &qword_20E325D08);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB9A4(&qword_27C86C9A8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoDisplayRepresentation);
}

uint64_t sub_20E27A2CC@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v5 = a1[5];
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = a1[6];
  v8 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v9 = &a3[a1[7]];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = 0;
  *(a3 + 1) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E27A3F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDC8, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27A490()
{
  sub_20E2FB9A4(&qword_27C86C120, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return sub_20E322470();
}

uint64_t sub_20E27A4FC()
{
  sub_20E2FB9A4(&qword_27C86C120, type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue);

  return sub_20E322480();
}

uint64_t sub_20E27A5AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD000000000000012;
  *a5 = 0x800000020E3615A0;
  return result;
}

uint64_t sub_20E27A640()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AAA8);
  __swift_project_value_buffer(v0, qword_27C86AAA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expectedTypeInstance";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "storage";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E27AA64();
          break;
        case 2:
          sub_20E27A9B0();
          break;
        case 1:
          type metadata accessor for ToolKitProtoTypeIdentifier(0);
          sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
          sub_20E322430();
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E27A9B0()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0) + 20);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t sub_20E27AA64()
{
  v0 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0) + 24);
  type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  sub_20E2FB9A4(&qword_27C86C150, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypedValue.DeferredValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E045C58(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E27ABC0(v3, a1, a2, a3);
    sub_20E27ADDC(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0) + 28);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E27ABC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863C48, &qword_20E323F30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeInstance);
}

uint64_t sub_20E27ADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CA0, &qword_20E3462B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C869CA0, &qword_20E3462B0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869CA0, &qword_20E3462B0);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_20E2FB9A4(&qword_27C86C150, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
}

uint64_t sub_20E27B040@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[6];
  v8 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a2 + a1[7];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E27B198(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDC0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27B238()
{
  sub_20E2FB9A4(&qword_27C86C138, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);

  return sub_20E322470();
}

uint64_t sub_20E27B2A4()
{
  sub_20E2FB9A4(&qword_27C86C138, type metadata accessor for ToolKitProtoTypedValue.DeferredValue);

  return sub_20E322480();
}

uint64_t sub_20E27B324()
{
  if (qword_27C8633D8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86AA98;
  v2 = qword_27C86AAA0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x656761726F74532ELL, 0xE800000000000000);

  qword_27C86AAC0 = v1;
  *algn_27C86AAC8 = v2;
  return result;
}

uint64_t sub_20E27B470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CA8, &unk_20E3462B8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0E8, &qword_20E3564B8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_20E0486F4(v49, v13, &qword_27C869CA8, &unk_20E3462B8);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_20E04875C(v13, &qword_27C869CA8, &unk_20E3462B8);
    v30 = v44;
  }

  else
  {
    sub_20E2FB8D8(v13, v21, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
    sub_20E2FB8D8(v21, v19, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
    sub_20E04875C(v27, &qword_27C86D0E8, &qword_20E3564B8);
    v31 = v42;
    sub_20E2FB8D8(v19, v42, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    sub_20E2FB8D8(v31, v27, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_20E2FB9A4(&qword_27C86C168, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  v32 = v45;
  sub_20E322430();
  v33 = v43;
  if (v32)
  {
    return sub_20E04875C(v27, &qword_27C86D0E8, &qword_20E3564B8);
  }

  sub_20E0486F4(v27, v43, &qword_27C86D0E8, &qword_20E3564B8);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_20E04875C(v27, &qword_27C86D0E8, &qword_20E3564B8);
    return sub_20E04875C(v33, &qword_27C86D0E8, &qword_20E3564B8);
  }

  else
  {
    v35 = v40;
    sub_20E2FB8D8(v33, v40, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    if (v29 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v27, &qword_27C86D0E8, &qword_20E3564B8);
    v36 = v49;
    sub_20E04875C(v49, &qword_27C869CA8, &unk_20E3462B8);
    sub_20E2FB8D8(v35, v36, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_20E27B9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  result = a4(v5, a1, a2, a3);
  if (!v6)
  {
    v9 = v5 + *(a5(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E27BA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CA8, &unk_20E3462B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CA8, &unk_20E3462B8);
  v13 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869CA8, &unk_20E3462B8);
  }

  sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_20E2FB9A4(&qword_27C86C168, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_20E322580();
  return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
}

uint64_t sub_20E27BD40(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDB8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27BDE0()
{
  sub_20E2FB9A4(&qword_27C86C150, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return sub_20E322470();
}

uint64_t sub_20E27BE4C()
{
  sub_20E2FB9A4(&qword_27C86C150, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);

  return sub_20E322480();
}

uint64_t sub_20E27BECC()
{
  if (qword_27C8633E8 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86AAC0;
  v2 = *algn_27C86AAC8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0xD00000000000001BLL, 0x800000020E3631A0);

  qword_27C86AAE8 = v1;
  unk_27C86AAF0 = v2;
  return result;
}

uint64_t sub_20E27BF9C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AAF8);
  __swift_project_value_buffer(v0, qword_27C86AAF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyKey";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E27C250(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDB0, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27C2F0()
{
  sub_20E2FB9A4(&qword_27C86C168, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return sub_20E322470();
}

uint64_t sub_20E27C35C()
{
  sub_20E2FB9A4(&qword_27C86C168, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return sub_20E322480();
}

uint64_t sub_20E27C424()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AB10);
  __swift_project_value_buffer(v0, qword_27C86AB10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20E3262C0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "collection";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "optionalVariant";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "union";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "restricted";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "deferred";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeInstance.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_20E27D3F8(v5, a1, a2, a3);
          break;
        case 5:
          sub_20E27D7E0(v5, a1, a2, a3);
          break;
        case 6:
          sub_20E27DBC8(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_20E27C848(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E27CC28(v5, a1, a2, a3);
          break;
        case 3:
          sub_20E27D010(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E27C848(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v31 = v20 & 0xF000000000000007;
  if (!(v20 >> 61) && v31 != 0xF000000000000007)
  {

    sub_20E04875C(v18, &qword_27C863B60, &qword_20E323F50);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypeIdentifier);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E0486F4(v18, v16, &qword_27C863B60, &qword_20E323F50);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C863B60, &qword_20E323F50);
    return sub_20E04875C(v16, &qword_27C863B60, &qword_20E323F50);
  }

  else
  {
    v24 = v30;
    sub_20E2FB8D8(v16, v30, type metadata accessor for ToolKitProtoTypeIdentifier);
    if (v31 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C863B60, &qword_20E323F50);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoTypeIdentifier);
    v27 = *v29;
    *v29 = v25;
    return sub_20E047CA8(v27);
  }
}

uint64_t sub_20E27CC28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x2000000000000000)
  {

    sub_20E04875C(v18, &qword_27C863C48, &qword_20E323F30);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypeInstance);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C863C48, &qword_20E323F30);
  }

  sub_20E0486F4(v18, v16, &qword_27C863C48, &qword_20E323F30);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C863C48, &qword_20E323F30);
    return sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
  }

  else
  {
    v24 = v31;
    sub_20E2FB8D8(v16, v31, type metadata accessor for ToolKitProtoTypeInstance);
    if (v30 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C863C48, &qword_20E323F30);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoTypeInstance);
    v27 = *v29;
    *v29 = v25 | 0x2000000000000000;
    return sub_20E047CA8(v27);
  }
}

uint64_t sub_20E27D010(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0C0, &qword_20E356490);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x4000000000000000)
  {

    sub_20E04875C(v18, &qword_27C86D0C0, &qword_20E356490);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C190, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C86D0C0, &qword_20E356490);
  }

  sub_20E0486F4(v18, v16, &qword_27C86D0C0, &qword_20E356490);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C86D0C0, &qword_20E356490);
    return sub_20E04875C(v16, &qword_27C86D0C0, &qword_20E356490);
  }

  else
  {
    v24 = v31;
    sub_20E2FB8D8(v16, v31, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    if (v30 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C86D0C0, &qword_20E356490);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    v27 = *v29;
    *v29 = v25 | 0x4000000000000000;
    return sub_20E047CA8(v27);
  }
}

uint64_t sub_20E27D3F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0C8, &qword_20E356498);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x6000000000000000)
  {

    sub_20E04875C(v18, &qword_27C86D0C8, &qword_20E356498);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoTypeInstance.Union);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypeInstance.Union);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C1A8, type metadata accessor for ToolKitProtoTypeInstance.Union);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C86D0C8, &qword_20E356498);
  }

  sub_20E0486F4(v18, v16, &qword_27C86D0C8, &qword_20E356498);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C86D0C8, &qword_20E356498);
    return sub_20E04875C(v16, &qword_27C86D0C8, &qword_20E356498);
  }

  else
  {
    v24 = v31;
    sub_20E2FB8D8(v16, v31, type metadata accessor for ToolKitProtoTypeInstance.Union);
    if (v30 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C86D0C8, &qword_20E356498);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoTypeInstance.Union);
    v27 = *v29;
    *v29 = v25 | 0x6000000000000000;
    return sub_20E047CA8(v27);
  }
}

uint64_t sub_20E27D7E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0D0, &qword_20E3564A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_20E04875C(v18, &qword_27C86D0D0, &qword_20E3564A0);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C1C0, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C86D0D0, &qword_20E3564A0);
  }

  sub_20E0486F4(v18, v16, &qword_27C86D0D0, &qword_20E3564A0);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C86D0D0, &qword_20E3564A0);
    return sub_20E04875C(v16, &qword_27C86D0D0, &qword_20E3564A0);
  }

  else
  {
    v24 = v31;
    sub_20E2FB8D8(v16, v31, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    if (v30 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C86D0D0, &qword_20E3564A0);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    v27 = *v29;
    *v29 = v25 | 0x8000000000000000;
    return sub_20E047CA8(v27);
  }
}

uint64_t sub_20E27DBC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0D8, &qword_20E3564A8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0xA000000000000000)
  {

    sub_20E04875C(v18, &qword_27C86D0D8, &qword_20E3564A8);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C1D8, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C86D0D8, &qword_20E3564A8);
  }

  sub_20E0486F4(v18, v16, &qword_27C86D0D8, &qword_20E3564A8);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C86D0D8, &qword_20E3564A8);
    return sub_20E04875C(v16, &qword_27C86D0D8, &qword_20E3564A8);
  }

  else
  {
    v24 = v31;
    sub_20E2FB8D8(v16, v31, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    if (v30 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C86D0D8, &qword_20E3564A8);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    v27 = *v29;
    *v29 = v25 | 0xA000000000000000;
    return sub_20E047CA8(v27);
  }
}

uint64_t ToolKitProtoTypeInstance.traverse<A>(visitor:)()
{
  if ((~*v0 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v4 = *v0 >> 61;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      result = sub_20E27E4A4(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else if (v4 == 4)
    {
      result = sub_20E27E5FC(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_20E27E754(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v4)
  {
    if (v4 == 1)
    {
      result = sub_20E27E1F4(v0);
      if (!v1)
      {
LABEL_2:
        v2 = v0 + *(type metadata accessor for ToolKitProtoTypeInstance(0) + 20);
        return sub_20E3221A0();
      }
    }

    else
    {
      result = sub_20E27E34C(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
    result = sub_20E27E0A4(v0);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_20E27E0A4(uint64_t *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v5, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
    sub_20E322580();
    return sub_20E2FB878(v5, type metadata accessor for ToolKitProtoTypeIdentifier);
  }

  return result;
}

uint64_t sub_20E27E1F4(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v6, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E322580();
    return sub_20E2FB878(v6, type metadata accessor for ToolKitProtoTypeInstance);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E27E34C(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x4000000000000000)
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v6, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    sub_20E2FB9A4(&qword_27C86C190, type metadata accessor for ToolKitProtoTypeInstance.Optional);
    sub_20E322580();
    return sub_20E2FB878(v6, type metadata accessor for ToolKitProtoTypeInstance.Optional);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E27E4A4(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance.Union(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x6000000000000000)
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v6, type metadata accessor for ToolKitProtoTypeInstance.Union);
    sub_20E2FB9A4(&qword_27C86C1A8, type metadata accessor for ToolKitProtoTypeInstance.Union);
    sub_20E322580();
    return sub_20E2FB878(v6, type metadata accessor for ToolKitProtoTypeInstance.Union);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E27E5FC(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v6, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    sub_20E2FB9A4(&qword_27C86C1C0, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
    sub_20E322580();
    return sub_20E2FB878(v6, type metadata accessor for ToolKitProtoTypeInstance.Restricted);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E27E754(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypeInstance.Deferred(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0xA000000000000000)
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v6, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    sub_20E2FB9A4(&qword_27C86C1D8, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
    sub_20E322580();
    return sub_20E2FB878(v6, type metadata accessor for ToolKitProtoTypeInstance.Deferred);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E27E940(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDA8, type metadata accessor for ToolKitProtoTypeInstance);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27E9E0()
{
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);

  return sub_20E322470();
}

uint64_t sub_20E27EA4C()
{
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);

  return sub_20E322480();
}

uint64_t sub_20E27EB1C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AB38);
  __swift_project_value_buffer(v0, qword_27C86AB38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "defaultValue";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeInstance.Optional.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoTypeInstance(0);
        sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E27EE1C();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E27EE1C()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeInstance.Optional(0) + 20);
  type metadata accessor for ToolKitProtoTypedValue(0);
  sub_20E2FB9A4(qword_280E0F228, type metadata accessor for ToolKitProtoTypedValue);
  return sub_20E322430();
}

uint64_t sub_20E27EF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
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

uint64_t sub_20E27F20C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CDA0, type metadata accessor for ToolKitProtoTypeInstance.Optional);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27F2AC()
{
  sub_20E2FB9A4(&qword_27C86C190, type metadata accessor for ToolKitProtoTypeInstance.Optional);

  return sub_20E322470();
}

uint64_t sub_20E27F318()
{
  sub_20E2FB9A4(&qword_27C86C190, type metadata accessor for ToolKitProtoTypeInstance.Optional);

  return sub_20E322480();
}

uint64_t ToolKitProtoTypeInstance.Union.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for ToolKitProtoTypeInstance(0), sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance), result = sub_20E322570(), !v1))
  {
    v3 = v0 + *(type metadata accessor for ToolKitProtoTypeInstance.Union(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E27F614(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD98, type metadata accessor for ToolKitProtoTypeInstance.Union);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E27F6B4()
{
  sub_20E2FB9A4(&qword_27C86C1A8, type metadata accessor for ToolKitProtoTypeInstance.Union);

  return sub_20E322470();
}

uint64_t sub_20E27F720()
{
  sub_20E2FB9A4(&qword_27C86C1A8, type metadata accessor for ToolKitProtoTypeInstance.Union);

  return sub_20E322480();
}

uint64_t sub_20E27F7B4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E27F8B4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AB88);
  __swift_project_value_buffer(v0, qword_27C86AB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
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
  *v10 = "context";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoTypeInstance.Restricted.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E27FBB4();
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoRestrictionContext(0);
        sub_20E2FB9A4(&qword_27C86BAD8, type metadata accessor for ToolKitProtoRestrictionContext);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E27FBB4()
{
  v0 = *(type metadata accessor for ToolKitProtoTypeInstance.Restricted(0) + 20);
  type metadata accessor for ToolKitProtoTypeIdentifier(0);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  return sub_20E322430();
}

uint64_t ToolKitProtoTypeInstance.Restricted.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E27FD64(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ToolKitProtoRestrictionContext(0);
      sub_20E2FB9A4(&qword_27C86BAD8, type metadata accessor for ToolKitProtoRestrictionContext);
      sub_20E322570();
    }

    v8 = v5 + *(type metadata accessor for ToolKitProtoTypeInstance.Restricted(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E27FD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoTypeInstance.Restricted(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863B60, &qword_20E323F50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B60, &qword_20E323F50);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB9A4(&qword_27C8683C8, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeIdentifier);
}

uint64_t sub_20E280020(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD90, type metadata accessor for ToolKitProtoTypeInstance.Restricted);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2800C0()
{
  sub_20E2FB9A4(&qword_27C86C1C0, type metadata accessor for ToolKitProtoTypeInstance.Restricted);

  return sub_20E322470();
}

uint64_t sub_20E28012C()
{
  sub_20E2FB9A4(&qword_27C86C1C0, type metadata accessor for ToolKitProtoTypeInstance.Restricted);

  return sub_20E322480();
}

uint64_t sub_20E280214(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD000000000000014;
  *a5 = 0x800000020E3615C0;
  return result;
}

uint64_t sub_20E280358(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
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
      sub_20E322430();
    }
  }

  return result;
}

uint64_t sub_20E28052C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD88, type metadata accessor for ToolKitProtoTypeInstance.Deferred);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2805CC()
{
  sub_20E2FB9A4(&qword_27C86C1D8, type metadata accessor for ToolKitProtoTypeInstance.Deferred);

  return sub_20E322470();
}

uint64_t sub_20E280638()
{
  sub_20E2FB9A4(&qword_27C86C1D8, type metadata accessor for ToolKitProtoTypeInstance.Deferred);

  return sub_20E322480();
}

uint64_t sub_20E2806D4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86ABC8);
  __swift_project_value_buffer(v0, qword_27C86ABC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E326320;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "inSet";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "representableAs";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "personReachableAs";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "dateExpressibleAs";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "textTypedWith";
  *(v14 + 8) = 13;
  *(v14 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRestrictionContext.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_20E280AA0(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        sub_20E280E80(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_20E281268();
          break;
        case 4:
          sub_20E281334();
          break;
        case 5:
          sub_20E281400(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E280AA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0A8, &qword_20E356478);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v31 = v20 & 0xF000000000000007;
  if (!(v20 >> 61) && v31 != 0xF000000000000007)
  {

    sub_20E04875C(v18, &qword_27C86D0A8, &qword_20E356478);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C220, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C86D0A8, &qword_20E356478);
  }

  sub_20E0486F4(v18, v16, &qword_27C86D0A8, &qword_20E356478);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C86D0A8, &qword_20E356478);
    return sub_20E04875C(v16, &qword_27C86D0A8, &qword_20E356478);
  }

  else
  {
    v24 = v30;
    sub_20E2FB8D8(v16, v30, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    if (v31 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C86D0A8, &qword_20E356478);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    v27 = *v29;
    *v29 = v25;
    return sub_20E047CA8(v27);
  }
}

uint64_t sub_20E280E80(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0B0, &qword_20E356480);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x2000000000000000)
  {

    sub_20E04875C(v18, &qword_27C86D0B0, &qword_20E356480);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C298, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C86D0B0, &qword_20E356480);
  }

  sub_20E0486F4(v18, v16, &qword_27C86D0B0, &qword_20E356480);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C86D0B0, &qword_20E356480);
    return sub_20E04875C(v16, &qword_27C86D0B0, &qword_20E356480);
  }

  else
  {
    v24 = v31;
    sub_20E2FB8D8(v16, v31, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    if (v30 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C86D0B0, &qword_20E356480);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    v27 = *v29;
    *v29 = v25 | 0x2000000000000000;
    return sub_20E047CA8(v27);
  }
}

uint64_t sub_20E281400(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0B8, &qword_20E356488);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(v6 + 56);
  v19(&v28 - v17, 1, 1, v5);
  v29 = a1;
  v20 = *a1;
  v30 = v20 & 0xF000000000000007;
  if ((v20 & 0xF000000000000007) != 0xF000000000000007 && (v20 & 0xE000000000000000) == 0x8000000000000000)
  {

    sub_20E04875C(v18, &qword_27C86D0B8, &qword_20E356488);
    v21 = swift_projectBox();
    sub_20E2FB810(v21, v11, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    sub_20E047CA8(v20);
    sub_20E2FB8D8(v11, v18, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    v19(v18, 0, 1, v5);
  }

  sub_20E2FB9A4(&qword_27C86C2B0, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
  v22 = v32;
  sub_20E322430();
  if (v22)
  {
    return sub_20E04875C(v18, &qword_27C86D0B8, &qword_20E356488);
  }

  sub_20E0486F4(v18, v16, &qword_27C86D0B8, &qword_20E356488);
  if ((*(v6 + 48))(v16, 1, v5) == 1)
  {
    sub_20E04875C(v18, &qword_27C86D0B8, &qword_20E356488);
    return sub_20E04875C(v16, &qword_27C86D0B8, &qword_20E356488);
  }

  else
  {
    v24 = v31;
    sub_20E2FB8D8(v16, v31, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    if (v30 != 0xF000000000000007)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v18, &qword_27C86D0B8, &qword_20E356488);
    v25 = swift_allocBox();
    sub_20E2FB8D8(v24, v26, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    v27 = *v29;
    *v29 = v25 | 0x8000000000000000;
    return sub_20E047CA8(v27);
  }
}

uint64_t ToolKitProtoRestrictionContext.traverse<A>(visitor:)()
{
  if ((~*v0 & 0xF000000000000007) == 0)
  {
    goto LABEL_2;
  }

  v4 = *v0 >> 61;
  if (v4 <= 1)
  {
    if (v4)
    {
      result = sub_20E281A14(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = sub_20E2818C4(v0);
      if (!v1)
      {
        goto LABEL_2;
      }
    }
  }

  else if (v4 == 2)
  {
    result = sub_20E281B6C(v0);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  else if (v4 == 3)
  {
    result = sub_20E281C00(v0);
    if (!v1)
    {
LABEL_2:
      v2 = v0 + *(type metadata accessor for ToolKitProtoRestrictionContext(0) + 20);
      return sub_20E3221A0();
    }
  }

  else
  {
    result = sub_20E281C94(v0);
    if (!v1)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t sub_20E2818C4(uint64_t *a1)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *a1;
  if (*a1 >> 61)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*a1 & 0xF000000000000007) == 0xF000000000000007;
  }

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v5, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    sub_20E2FB9A4(&qword_27C86C220, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
    sub_20E322580();
    return sub_20E2FB878(v5, type metadata accessor for ToolKitProtoRestrictionContext.InSet);
  }

  return result;
}

uint64_t sub_20E281A14(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x2000000000000000)
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v6, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    sub_20E2FB9A4(&qword_27C86C298, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
    sub_20E322580();
    return sub_20E2FB878(v6, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_20E281B6C(void *result)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xE000000000000000) == 0x4000000000000000)
  {
    v2 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_20E24F5AC();
    return sub_20E3224D0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_20E281C00(void *result)
{
  if ((~*result & 0xF000000000000007) != 0 && (*result & 0xE000000000000000) == 0x6000000000000000)
  {
    v2 = *((*result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_20E24F558();
    return sub_20E3224D0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E281C94(void *a1)
{
  v2 = type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((~*a1 & 0xF000000000000007) != 0 && (*a1 & 0xE000000000000000) == 0x8000000000000000)
  {
    v8 = swift_projectBox();
    sub_20E2FB810(v8, v6, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    sub_20E2FB9A4(&qword_27C86C2B0, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
    sub_20E322580();
    return sub_20E2FB878(v6, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20E281EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD80, type metadata accessor for ToolKitProtoRestrictionContext);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E281F8C()
{
  sub_20E2FB9A4(&qword_27C86BAD8, type metadata accessor for ToolKitProtoRestrictionContext);

  return sub_20E322470();
}

uint64_t sub_20E281FF8()
{
  sub_20E2FB9A4(&qword_27C86BAD8, type metadata accessor for ToolKitProtoRestrictionContext);

  return sub_20E322480();
}

uint64_t sub_20E2820E0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86ABE0);
  __swift_project_value_buffer(v0, qword_27C86ABE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20E326320;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "PersonReachableAs_UNSPECIFIED";
  *(v5 + 8) = 29;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PersonReachableAs_CONTACT";
  *(v9 + 8) = 25;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "PersonReachableAs_PHONE";
  *(v11 + 1) = 23;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "PersonReachableAs_EMAIL";
  *(v13 + 1) = 23;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "PersonReachableAs_EMAILORPHONE";
  *(v14 + 8) = 30;
  *(v14 + 16) = 2;
  v8();
  return sub_20E3225A0();
}

uint64_t sub_20E2823C8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86ABF8);
  __swift_project_value_buffer(v0, qword_27C86ABF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DateExpressibleAs_UNSPECIFIED";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DateExpressibleAs_DATE";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DateExpressibleAs_TIME";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DateExpressibleAs_DATE_AND_TIME";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2826B8()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AC20);
  __swift_project_value_buffer(v0, qword_27C86AC20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "definition";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "templates";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRestrictionContext.InSet.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
        sub_20E2FB9A4(&qword_27C86C238, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
        sub_20E322430();
      }

      else if (result == 2)
      {
        sub_20E2829B8();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2829B8()
{
  v0 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet(0) + 20);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_20E2FB9A4(&qword_27C86BF60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  return sub_20E322430();
}

uint64_t sub_20E282AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB0, &qword_20E3462C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CB0, &qword_20E3462C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869CB0, &qword_20E3462C8);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
  sub_20E2FB9A4(&qword_27C86C238, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
}

uint64_t sub_20E282CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C48, &qword_20E346250);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C869C48, &qword_20E346250);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869C48, &qword_20E346250);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E2FB9A4(&qword_27C86BF60, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
}

uint64_t sub_20E282F60@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v7 = a2(0);
  (*(*(v7 - 8) + 56))(a4, 1, 1, v7);
  v8 = *(a1 + 20);
  v9 = a3(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = a4 + *(a1 + 24);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E283080(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD78, type metadata accessor for ToolKitProtoRestrictionContext.InSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E283120()
{
  sub_20E2FB9A4(&qword_27C86C220, type metadata accessor for ToolKitProtoRestrictionContext.InSet);

  return sub_20E322470();
}

uint64_t sub_20E28318C()
{
  sub_20E2FB9A4(&qword_27C86C220, type metadata accessor for ToolKitProtoRestrictionContext.InSet);

  return sub_20E322480();
}

uint64_t sub_20E28320C()
{
  if (qword_27C863468 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86AC10;
  v2 = *algn_27C86AC18;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x655365756C61562ELL, 0xE900000000000074);

  qword_27C86AC38 = v1;
  unk_27C86AC40 = v2;
  return result;
}

uint64_t sub_20E2832DC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AC48);
  __swift_project_value_buffer(v0, qword_27C86AC48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dynamicEnumeration";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "contentPropertyPossibleValues";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "linkQuery";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "standaloneLinkQuery";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "linkQueryOnParameter";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_20E3222B0();
    if (v4 || (v11 & 1) != 0)
    {
      break;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_20E284290(v5, a1, a2, a3);
          break;
        case 5:
          sub_20E28484C(a1, v5);
          break;
        case 6:
          sub_20E284A40(v5, a1, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v9 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0) + 20);
          sub_20E3223D0();
          break;
        case 2:
          sub_20E283724(v5, a1, a2, a3);
          break;
        case 3:
          sub_20E283CD4(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_20E283724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D090, &qword_20E356460);
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
  sub_20E0486F4(a1, v14, &qword_27C869CB8, &qword_20E3462D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CB8, &qword_20E3462D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C86D090, &qword_20E356460);
      v35 = v43;
      sub_20E2FB8D8(v20, v43, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C250, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D090, &qword_20E356460);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D090, &qword_20E356460);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D090, &qword_20E356460);
    return sub_20E04875C(v36, &qword_27C86D090, &qword_20E356460);
  }

  else
  {
    v39 = v44;
    sub_20E2FB8D8(v36, v44, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D090, &qword_20E356460);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CB8, &qword_20E3462D0);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E283CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D098, &qword_20E356468);
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
  sub_20E0486F4(a1, v14, &qword_27C869CB8, &qword_20E3462D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CB8, &qword_20E3462D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86D098, &qword_20E356468);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C268, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D098, &qword_20E356468);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D098, &qword_20E356468);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D098, &qword_20E356468);
    return sub_20E04875C(v36, &qword_27C86D098, &qword_20E356468);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D098, &qword_20E356468);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CB8, &qword_20E3462D0);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E284290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0A0, &qword_20E356470);
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
  sub_20E0486F4(a1, v14, &qword_27C869CB8, &qword_20E3462D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CB8, &qword_20E3462D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C86D0A0, &qword_20E356470);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C280, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D0A0, &qword_20E356470);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D0A0, &qword_20E356470);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D0A0, &qword_20E356470);
    return sub_20E04875C(v36, &qword_27C86D0A0, &qword_20E356470);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D0A0, &qword_20E356470);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CB8, &qword_20E3462D0);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E28484C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 0;
  result = sub_20E3223D0();
  if (v2)
  {
  }

  if (v16)
  {
    v17 = v16;
    v14 = v15;
    sub_20E0486F4(a2, v7, &qword_27C869CB8, &qword_20E3462D0);
    v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    sub_20E04875C(v7, &qword_27C869CB8, &qword_20E3462D0);
    if (v11 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(a2, &qword_27C869CB8, &qword_20E3462D0);
    v12 = v17;
    *a2 = v14;
    a2[1] = v12;
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_20E284A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0A0, &qword_20E356470);
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
  sub_20E0486F4(a1, v14, &qword_27C869CB8, &qword_20E3462D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CB8, &qword_20E3462D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_20E04875C(v28, &qword_27C86D0A0, &qword_20E356470);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C280, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D0A0, &qword_20E356470);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D0A0, &qword_20E356470);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D0A0, &qword_20E356470);
    return sub_20E04875C(v36, &qword_27C86D0A0, &qword_20E356470);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D0A0, &qword_20E356470);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CB8, &qword_20E3462D0);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  result = sub_20E28524C(v3, a1, a2, a3, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
  if (!v4)
  {
    sub_20E0486F4(v3, v11, &qword_27C869CB8, &qword_20E3462D0);
    v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_20E285504(v3, a1, a2, a3);
        }

        else
        {
          sub_20E2852D0(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        sub_20E28573C(v3, a1, a2, a3);
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_20E2FB878(v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
          sub_20E285974(v3);
          goto LABEL_13;
        }

        sub_20E285AEC(v3, a1, a2, a3);
      }

      sub_20E2FB878(v11, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
    }

LABEL_13:
    v15 = v3 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E28524C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_20E322540();
  }

  return result;
}

uint64_t sub_20E2852D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CB8, &qword_20E3462D0);
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CB8, &qword_20E3462D0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    sub_20E2FB9A4(&qword_27C86C250, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_20E285504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CB8, &qword_20E3462D0);
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CB8, &qword_20E3462D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    sub_20E2FB9A4(&qword_27C86C268, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_20E28573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CB8, &qword_20E3462D0);
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CB8, &qword_20E3462D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_20E2FB9A4(&qword_27C86C280, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_20E285974(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_20E0486F4(a1, &v10 - v4, &qword_27C869CB8, &qword_20E3462D0);
  v6 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C869CB8, &qword_20E3462D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v7 = *v5;
    v8 = v5[1];
    sub_20E322540();
  }

  result = sub_20E2FB878(v5, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_20E285AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CB8, &qword_20E3462D0);
  v13 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CB8, &qword_20E3462D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_20E2FB9A4(&qword_27C86C280, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  __break(1u);
  return result;
}

uint64_t sub_20E285D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E285E40(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD70, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E285EE0()
{
  sub_20E2FB9A4(&qword_27C86C238, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return sub_20E322470();
}

uint64_t sub_20E285F4C()
{
  sub_20E2FB9A4(&qword_27C86C238, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);

  return sub_20E322480();
}

uint64_t sub_20E285FCC()
{
  if (qword_27C863478 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86AC38;
  v2 = qword_27C86AC40;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0xD000000000000013, 0x800000020E362EF0);

  qword_27C86AC60 = v1;
  *algn_27C86AC68 = v2;
  return result;
}

uint64_t sub_20E28609C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AC70);
  __swift_project_value_buffer(v0, qword_27C86AC70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolIdentifier";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterKey";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E286358(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD68, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2863F8()
{
  sub_20E2FB9A4(&qword_27C86C250, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return sub_20E322470();
}

uint64_t sub_20E286464()
{
  sub_20E2FB9A4(&qword_27C86C250, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return sub_20E322480();
}

uint64_t sub_20E2864E0(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E2865BC()
{
  if (qword_27C863478 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86AC38;
  v2 = qword_27C86AC40;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0xD00000000000001ELL, 0x800000020E362EC0);

  qword_27C86AC88 = v1;
  unk_27C86AC90 = v2;
  return result;
}

uint64_t sub_20E28668C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AC98);
  __swift_project_value_buffer(v0, qword_27C86AC98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contentItemClass";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyName";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.decodeMessage<A>(decoder:)()
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
      sub_20E28691C();
    }

    else if (result == 2)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t sub_20E28691C()
{
  v0 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0) + 20);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  return sub_20E322430();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E286A7C(v3, a1, a2, a3);
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

    v9 = v3 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E286A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C869CC0, &qword_20E3462D8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869CC0, &qword_20E3462D8);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
}

uint64_t sub_20E286D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD60, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E286DF0()
{
  sub_20E2FB9A4(&qword_27C86C268, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return sub_20E322470();
}

uint64_t sub_20E286E5C()
{
  sub_20E2FB9A4(&qword_27C86C268, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return sub_20E322480();
}

uint64_t sub_20E286EDC()
{
  if (qword_27C863478 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86AC38;
  v2 = qword_27C86AC40;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6575516B6E694C2ELL, 0xEA00000000007972);

  qword_27C86ACB0 = v1;
  *algn_27C86ACB8 = v2;
  return result;
}

uint64_t sub_20E286FAC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86ACC0);
  __swift_project_value_buffer(v0, qword_27C86ACC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "parameterKey";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "queryIdentifier";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 6;
  *v11 = "actionIdentifier";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 6 || result == 5 || result == 4)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery.traverse<A>(visitor:)()
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
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_20E322540(), !v1))
      {
        v10 = v0 + *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0) + 28);
        return sub_20E3221A0();
      }
    }
  }

  return result;
}

uint64_t sub_20E28741C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD58, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2874BC()
{
  sub_20E2FB9A4(&qword_27C86C280, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return sub_20E322470();
}

uint64_t sub_20E287528()
{
  sub_20E2FB9A4(&qword_27C86C280, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery);

  return sub_20E322480();
}

uint64_t sub_20E2875A8()
{
  result = MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E362E70);
  qword_27C86ACD8 = 0xD00000000000001ALL;
  unk_27C86ACE0 = 0x800000020E3615E0;
  return result;
}

uint64_t sub_20E287750(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD50, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2877F0()
{
  sub_20E2FB9A4(&qword_27C86C298, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);

  return sub_20E322470();
}

uint64_t sub_20E28785C()
{
  sub_20E2FB9A4(&qword_27C86C298, type metadata accessor for ToolKitProtoRestrictionContext.RepresentableAs);

  return sub_20E322480();
}

uint64_t sub_20E287908(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x20F32BF40](a2, a3);
  *a4 = 0xD00000000000001ALL;
  *a5 = 0x800000020E3615E0;
  return result;
}

uint64_t sub_20E28799C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AD10);
  __swift_project_value_buffer(v0, qword_27C86AD10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20E3262C0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "multiline_allowed";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_20E322590();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "smart_quotes_enabled";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "smart_dashes_enabled";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "keyboard_type";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "autocorrection_type";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "capitalization_type";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v7();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.decodeMessage<A>(decoder:)()
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

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            v3 = v0;
            sub_20E24F4B0();
            break;
          case 5:
            v3 = v0;
            sub_20E24F504();
            break;
          case 6:
            v3 = v0;
            sub_20E24F45C();
            break;
          default:
            goto LABEL_5;
        }

        v0 = v3;
        sub_20E322310();
      }

      else if (result == 1 || result == 2 || result == 3)
      {
        sub_20E3222F0();
      }

LABEL_5:
      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ToolKitProtoRestrictionContext.TextTypedWith.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_20E3224C0(), !v1))
  {
    if (v0[1] != 1 || (result = sub_20E3224C0(), !v1))
    {
      if (v0[2] != 1 || (result = sub_20E3224C0(), !v1))
      {
        v3 = v1;
        if (v0[3])
        {
          v7 = v0[3];
          sub_20E24F4B0();
          result = sub_20E3224D0();
          if (v1)
          {
            return result;
          }

          v3 = 0;
        }

        if (v0[4])
        {
          v6 = v0[4];
          sub_20E24F504();
          v4 = v3;
          result = sub_20E3224D0();
          if (v3)
          {
            return result;
          }

          if (!v0[5])
          {
            goto LABEL_16;
          }
        }

        else
        {
          v4 = v3;
          if (!v0[5])
          {
LABEL_16:
            v5 = &v0[*(type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0) + 40)];
            return sub_20E3221A0();
          }
        }

        sub_20E24F45C();
        result = sub_20E3224D0();
        if (v4)
        {
          return result;
        }

        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t sub_20E287FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 40);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *(a2 + 4) = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_20E288058(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD48, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2880F8()
{
  sub_20E2FB9A4(&qword_27C86C2B0, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);

  return sub_20E322470();
}

uint64_t sub_20E288164()
{
  sub_20E2FB9A4(&qword_27C86C2B0, type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith);

  return sub_20E322480();
}

uint64_t sub_20E2881E4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AD28);
  __swift_project_value_buffer(v0, qword_27C86AD28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AutocorrectionType_DEFAULT";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AutocorrectionType_ON";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "AutocorrectionType_OFF";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E288454()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AD40);
  __swift_project_value_buffer(v0, qword_27C86AD40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326300;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "KeyboardType_DEFAULT";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "KeyboardType_ASCII_CAPABLE";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "KeyboardType_NUMBERS_AND_PUNCTUATION";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "KeyboardType_URL";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "KeyboardType_NUMBER_PAD";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "KeyboardType_PHONE_PAD";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "KeyboardType_NAME_PHONE_PAD";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "KeyboardType_EMAIL_ADDRESS";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v2 + v1[14];
  *(v5 + 8 * v2) = 8;
  *v23 = "KeyboardType_DECIMAL_PAD";
  *(v23 + 8) = 24;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 9;
  *v25 = "KeyboardType_TWITTER";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 10;
  *v27 = "KeyboardType_WEB_SEARCH";
  *(v27 + 1) = 23;
  v27[16] = 2;
  v9();
  v28 = (v5 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 11;
  *v29 = "KeyboardType_ASCII_CAPABLE_NUMBER_PAD";
  *(v29 + 1) = 37;
  v29[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2888F0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AD58);
  __swift_project_value_buffer(v0, qword_27C86AD58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CapitalizationType_NONE";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CapitalizationType_WORDS";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CapitalizationType_SENTENCES";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CapitalizationType_ALL_CHARACTERS";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E288BB0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AD70);
  __swift_project_value_buffer(v0, qword_27C86AD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "regularContentItemClass";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "linkEntityContentItemClass";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "linkEnumContentItemClass";
  *(v11 + 8) = 24;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoContentItemClassDescriptor.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E3222B0();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_20E2894B4(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E288EF8(v5, a1, a2, a3);
          break;
        case 1:
          sub_20E269590(a1, v5, a2, a3, &qword_27C869CC8, &qword_20E3462E0, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind, 0);
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E288EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC8, &qword_20E3462E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D078, &qword_20E356448);
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
  sub_20E0486F4(a1, v14, &qword_27C869CC8, &qword_20E3462E0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CC8, &qword_20E3462E0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86D078, &qword_20E356448);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C310, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D078, &qword_20E356448);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D078, &qword_20E356448);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D078, &qword_20E356448);
    return sub_20E04875C(v36, &qword_27C86D078, &qword_20E356448);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D078, &qword_20E356448);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CC8, &qword_20E3462E0);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_20E2894B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC8, &qword_20E3462E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D080, &qword_20E356450);
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
  sub_20E0486F4(a1, v14, &qword_27C869CC8, &qword_20E3462E0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869CC8, &qword_20E3462E0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_20E04875C(v28, &qword_27C86D080, &qword_20E356450);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86C328, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86D080, &qword_20E356450);
  }

  sub_20E0486F4(v28, v36, &qword_27C86D080, &qword_20E356450);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86D080, &qword_20E356450);
    return sub_20E04875C(v36, &qword_27C86D080, &qword_20E356450);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86D080, &qword_20E356450);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869CC8, &qword_20E3462E0);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoContentItemClassDescriptor.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC8, &qword_20E3462E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C869CC8, &qword_20E3462E0);
  v12 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_9;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_20E2FB878(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
    result = sub_20E289C40(v3);
    if (v4)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_20E289DB4(v3, a1, a2, a3);
  }

  else
  {
    sub_20E289FEC(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  if (!v4)
  {
LABEL_9:
    v15 = v3 + *(type metadata accessor for ToolKitProtoContentItemClassDescriptor(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E289C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC8, &qword_20E3462E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_20E0486F4(a1, &v10 - v4, &qword_27C869CC8, &qword_20E3462E0);
  v6 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C869CC8, &qword_20E3462E0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v7 = *v5;
    v8 = v5[1];
    sub_20E322540();
  }

  result = sub_20E2FB878(v5, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  __break(1u);
  return result;
}

uint64_t sub_20E289DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC8, &qword_20E3462E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CC8, &qword_20E3462E0);
  v13 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CC8, &qword_20E3462E0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    sub_20E2FB9A4(&qword_27C86C310, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  __break(1u);
  return result;
}

uint64_t sub_20E289FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC8, &qword_20E3462E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869CC8, &qword_20E3462E0);
  v13 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869CC8, &qword_20E3462E0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    sub_20E2FB9A4(&qword_27C86C328, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  __break(1u);
  return result;
}

uint64_t sub_20E28A2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD40, type metadata accessor for ToolKitProtoContentItemClassDescriptor);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E28A374()
{
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor);

  return sub_20E322470();
}

uint64_t sub_20E28A3E0()
{
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor);

  return sub_20E322480();
}

uint64_t sub_20E28A460()
{
  result = MEMORY[0x20F32BF40](0xD00000000000001BLL, 0x800000020E362AA0);
  qword_27C86AD88 = 0xD000000000000022;
  unk_27C86AD90 = 0x800000020E361600;
  return result;
}

uint64_t sub_20E28A4FC()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AD98);
  __swift_project_value_buffer(v0, qword_27C86AD98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E28A7D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD38, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E28A870()
{
  sub_20E2FB9A4(&qword_27C86C310, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return sub_20E322470();
}

uint64_t sub_20E28A8DC()
{
  sub_20E2FB9A4(&qword_27C86C310, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEntityContentItemClass);

  return sub_20E322480();
}

uint64_t sub_20E28A988()
{
  result = MEMORY[0x20F32BF40](0xD000000000000019, 0x800000020E362A80);
  qword_27C86ADB0 = 0xD000000000000022;
  *algn_27C86ADB8 = 0x800000020E361600;
  return result;
}

uint64_t sub_20E28AA24()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86ADC0);
  __swift_project_value_buffer(v0, qword_27C86ADC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E28AC24()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 3)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t sub_20E28AD60(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD30, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E28AE00()
{
  sub_20E2FB9A4(&qword_27C86C328, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return sub_20E322470();
}

uint64_t sub_20E28AE6C()
{
  sub_20E2FB9A4(&qword_27C86C328, type metadata accessor for ToolKitProtoContentItemClassDescriptor.LinkEnumContentItemClass);

  return sub_20E322480();
}

uint64_t sub_20E28AF04()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86ADD8);
  __swift_project_value_buffer(v0, qword_27C86ADD8);
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
  *v10 = "comparison";
  *(v10 + 8) = 10;
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

uint64_t sub_20E28B1E0()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate(0) + 20);
  type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  sub_20E2FB9A4(&qword_27C86B9B8, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  return sub_20E322430();
}

uint64_t sub_20E28B294()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate(0) + 24);
  type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  sub_20E2FB9A4(&qword_27C86C350, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
  return sub_20E322430();
}

uint64_t sub_20E28B348()
{
  v0 = *(type metadata accessor for ToolKitProtoComparisonPredicate(0) + 28);
  type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  sub_20E2FB9A4(&qword_27C86C2F8, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  return sub_20E322430();
}

uint64_t sub_20E28B464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
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

uint64_t sub_20E28B680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD8, &qword_20E3462F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C869CD8, &qword_20E3462F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C869CD8, &qword_20E3462F0);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
  sub_20E2FB9A4(&qword_27C86C350, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
}

uint64_t sub_20E28B89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
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

uint64_t sub_20E28BB64(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CD28, type metadata accessor for ToolKitProtoComparisonPredicate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E28BC04()
{
  sub_20E2FB9A4(&qword_27C86BB70, type metadata accessor for ToolKitProtoComparisonPredicate);

  return sub_20E322470();
}

uint64_t sub_20E28BC70()
{
  sub_20E2FB9A4(&qword_27C86BB70, type metadata accessor for ToolKitProtoComparisonPredicate);

  return sub_20E322480();
}

uint64_t sub_20E28BD44()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86AE00);
  __swift_project_value_buffer(v0, qword_27C86AE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20E34A210;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "notEqualTo";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_20E322590();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "equalTo";
  *(v9 + 8) = 7;
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

uint64_t ToolKitProtoComparisonPredicate.Comparison.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E28C558(v5, a1, a2, a3);
          break;
        case 2:
          sub_20E28CB08(v5, a1, a2, a3);
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
          sub_20E28D0C4(v5, a1, a2, a3);
          break;
        case 6:
          sub_20E28D680(v5, a1, a2, a3);
          break;
        case 7:
          sub_20E28DC3C(v5, a1, a2, a3);
          break;
        case 8:
          sub_20E28E1F8(v5, a1, a2, a3);
          break;
        case 9:
          sub_20E28E7B4(v5, a1, a2, a3);
          break;
        case 10:
          sub_20E28ED70(v5, a1, a2, a3);
          break;
        case 11:
          sub_20E28F32C(v5, a1, a2, a3);
          break;
        case 12:
          sub_20E28F8E8(v5, a1, a2, a3);
          break;
        case 13:
          sub_20E28FEA4(v5, a1, a2, a3);
          break;
        case 14:
          sub_20E290460(v5, a1, a2, a3);
          break;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
LABEL_5:
          sub_20E257248(v11, v12, v13, v14, &qword_27C869CE0, &qword_20E3462F8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind, v15);
          break;
        case 16:
          sub_20E290A1C(v5, a1, a2, a3);
          break;
        default:
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E28C558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoTypedValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
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
    if (swift_getEnumCaseMultiPayload())
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
      v33 = v48;
    }

    else
    {
      sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
      v35 = v43;
      sub_20E2FB8D8(v20, v43, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoTypedValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
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
    v39 = v44;
    sub_20E2FB8D8(v36, v44, type metadata accessor for ToolKitProtoTypedValue);
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

uint64_t sub_20E28CB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    if (swift_getEnumCaseMultiPayload() == 1)
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

uint64_t sub_20E28D0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    if (swift_getEnumCaseMultiPayload() == 2)
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

uint64_t sub_20E28D680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    if (swift_getEnumCaseMultiPayload() == 3)
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

uint64_t sub_20E28DC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    if (swift_getEnumCaseMultiPayload() == 4)
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

uint64_t sub_20E28E1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    if (swift_getEnumCaseMultiPayload() == 5)
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

uint64_t sub_20E28E7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    if (swift_getEnumCaseMultiPayload() == 6)
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

uint64_t sub_20E28ED70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    if (swift_getEnumCaseMultiPayload() == 7)
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

uint64_t sub_20E28F32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    if (swift_getEnumCaseMultiPayload() == 8)
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