uint64_t sub_20E2D8510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D90, &qword_20E3463C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CEE8, &qword_20E3562B8);
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
  sub_20E0486F4(a1, v14, &qword_27C869D90, &qword_20E3463C8);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D90, &qword_20E3463C8);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86CEE8, &qword_20E3562B8);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86CA50, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CEE8, &qword_20E3562B8);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CEE8, &qword_20E3562B8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CEE8, &qword_20E3562B8);
    return sub_20E04875C(v36, &qword_27C86CEE8, &qword_20E3562B8);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CEE8, &qword_20E3562B8);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D90, &qword_20E3463C8);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.Image.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D90, &qword_20E3463C8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_20E0486F4(v3, &v15 - v10, &qword_27C869D90, &qword_20E3463C8);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2D8E94(v3, a1, a2, a3);
  }

  else
  {
    sub_20E2D8C5C(v3, a1, a2, a3);
  }

  result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0) + 20);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2D8C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D90, &qword_20E3463C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D90, &qword_20E3463C8);
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D90, &qword_20E3463C8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_20E2FB9A4(&qword_27C86C9C0, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Storage);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2D8E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D90, &qword_20E3463C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D90, &qword_20E3463C8);
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D90, &qword_20E3463C8);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    sub_20E2FB9A4(&qword_27C86CA50, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2D9188(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CAF0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2D9228()
{
  sub_20E2FB9A4(&qword_27C86CA38, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);

  return sub_20E322470();
}

uint64_t sub_20E2D9294()
{
  sub_20E2FB9A4(&qword_27C86CA38, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);

  return sub_20E322480();
}

uint64_t sub_20E2D9314()
{
  if (qword_27C863920 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B880;
  v2 = *algn_27C86B888;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6369746174532ELL, 0xE700000000000000);

  qword_27C86B8A8 = v1;
  unk_27C86B8B0 = v2;
  return result;
}

uint64_t sub_20E2D93E0()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B8B8);
  __swift_project_value_buffer(v0, qword_27C86B8B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
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
  *v10 = "symbol";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "file";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
          sub_20E269590(a1, v5, a2, a3, &qword_27C869D98, &unk_20E3463D0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind, 2);
          break;
        case 2:
          sub_20E2D9748(v5, a1, a2, a3);
          break;
        case 1:
          sub_20E26978C(a1, v5, a2, a3, &qword_27C869D98, &unk_20E3463D0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind, 0);
          break;
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2D9748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D98, &unk_20E3463D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CED0, &qword_20E3562A0);
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
  sub_20E0486F4(a1, v14, &qword_27C869D98, &unk_20E3463D0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_20E04875C(v14, &qword_27C869D98, &unk_20E3463D0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_20E2FB8D8(v14, v22, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    sub_20E2FB8D8(v22, v20, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20E04875C(v28, &qword_27C86CED0, &qword_20E3562A0);
      v35 = v44;
      sub_20E2FB8D8(v20, v44, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      sub_20E2FB8D8(v35, v28, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_20E2FB9A4(&qword_27C86CA68, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
  v37 = v47;
  sub_20E322430();
  if (v37)
  {
    return sub_20E04875C(v28, &qword_27C86CED0, &qword_20E3562A0);
  }

  sub_20E0486F4(v28, v36, &qword_27C86CED0, &qword_20E3562A0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_20E04875C(v28, &qword_27C86CED0, &qword_20E3562A0);
    return sub_20E04875C(v36, &qword_27C86CED0, &qword_20E3562A0);
  }

  else
  {
    v39 = v43;
    sub_20E2FB8D8(v36, v43, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    if (v32 != 1)
    {
      sub_20E3222C0();
    }

    sub_20E04875C(v28, &qword_27C86CED0, &qword_20E3562A0);
    v40 = v42;
    sub_20E04875C(v42, &qword_27C869D98, &unk_20E3463D0);
    sub_20E2FB8D8(v39, v40, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D98, &unk_20E3463D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_20E0486F4(v3, &v16 - v10, &qword_27C869D98, &unk_20E3463D0);
  v12 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_20E2DA070(v3, a1, a2, a3);
        result = sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
        if (v4)
        {
          return result;
        }
      }

      else
      {
        sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
        result = sub_20E2DA2A8(v3);
        if (v4)
        {
          return result;
        }
      }
    }

    else
    {
      sub_20E2FB878(v11, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
      result = sub_20E2D9EF4(v3);
      if (v4)
      {
        return result;
      }
    }
  }

  v15 = v3 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0) + 20);
  return sub_20E3221A0();
}

uint64_t sub_20E2D9EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D98, &unk_20E3463D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_20E0486F4(a1, &v10 - v4, &qword_27C869D98, &unk_20E3463D0);
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C869D98, &unk_20E3463D0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v8 = *v5;
    v7 = v5[1];
    sub_20E3224E0();
    return sub_20E05E888(v8, v7);
  }

  result = sub_20E2FB878(v5, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2DA070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D98, &unk_20E3463D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C869D98, &unk_20E3463D0);
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_20E04875C(v8, &qword_27C869D98, &unk_20E3463D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20E2FB8D8(v8, v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    sub_20E2FB9A4(&qword_27C86CA68, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
    sub_20E322580();
    return sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);
  }

  result = sub_20E2FB878(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2DA2A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D98, &unk_20E3463D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v10 - v4);
  sub_20E0486F4(a1, &v10 - v4, &qword_27C869D98, &unk_20E3463D0);
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_20E04875C(v5, &qword_27C869D98, &unk_20E3463D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v5;
    v8 = v5[1];
    sub_20E322540();
  }

  result = sub_20E2FB878(v5, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  __break(1u);
  return result;
}

uint64_t sub_20E2DA480@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = a2(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  v6 = a3 + *(a1 + 20);
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E2DA54C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CAE8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2DA5EC()
{
  sub_20E2FB9A4(&qword_27C86CA50, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);

  return sub_20E322470();
}

uint64_t sub_20E2DA658()
{
  sub_20E2FB9A4(&qword_27C86CA50, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static);

  return sub_20E322480();
}

uint64_t sub_20E2DA6D8()
{
  if (qword_27C863930 != -1)
  {
    swift_once();
  }

  v1 = qword_27C86B8A8;
  v2 = qword_27C86B8B0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x20F32BF40](0x6C6F626D79532ELL, 0xE700000000000000);

  qword_27C86B8D0 = v1;
  *algn_27C86B8D8 = v2;
  return result;
}

uint64_t sub_20E2DA7A4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B8E0);
  __swift_project_value_buffer(v0, qword_27C86B8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326010;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tintColorData";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "configurationData";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_20E3222B0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_20E322320();
    }

    else if (result == 1)
    {
      sub_20E3223E0();
    }
  }

  return result;
}

uint64_t ToolKitProtoDisplayRepresentation.Image.Static.Symbol.traverse<A>(visitor:)()
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
    result = sub_20E0EC648(v0);
    if (!v1)
    {
      sub_20E2DAB54(v0);
      v6 = v0 + *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0) + 28);
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2DAB54(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 >> 60 != 15)
  {
    v2 = *(result + 32);
    sub_20E05E834(v2, v1);
    sub_20E3224E0();
    return sub_20E047D10(v2, v1);
  }

  return result;
}

uint64_t sub_20E2DAC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = xmmword_20E323EA0;
  *(a2 + 32) = xmmword_20E323EA0;
  v3 = a2 + *(a1 + 28);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_20E2DACC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CAE0, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2DAD60()
{
  sub_20E2FB9A4(&qword_27C86CA68, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return sub_20E322470();
}

uint64_t sub_20E2DADCC()
{
  sub_20E2FB9A4(&qword_27C86CA68, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol);

  return sub_20E322480();
}

uint64_t sub_20E2DAE68()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B8F8);
  __swift_project_value_buffer(v0, qword_27C86B8F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "direction";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeInstance";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ToolKitProtoCoercionDefinition.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E24F018();
        sub_20E322310();
      }

      else if (result == 2)
      {
        sub_20E2DB128();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2DB128()
{
  v0 = *(type metadata accessor for ToolKitProtoCoercionDefinition(0) + 20);
  type metadata accessor for ToolKitProtoTypeInstance(0);
  sub_20E2FB9A4(&qword_27C867FC0, type metadata accessor for ToolKitProtoTypeInstance);
  return sub_20E322430();
}

uint64_t ToolKitProtoCoercionDefinition.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (sub_20E24F018(), result = sub_20E3224D0(), !v4))
  {
    result = sub_20E2DB2AC(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = &v3[*(type metadata accessor for ToolKitProtoCoercionDefinition(0) + 24)];
      return sub_20E3221A0();
    }
  }

  return result;
}

uint64_t sub_20E2DB2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
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

uint64_t sub_20E2DB514@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for ToolKitProtoTypeInstance(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 24)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  return result;
}

uint64_t sub_20E2DB5E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CAD8, type metadata accessor for ToolKitProtoCoercionDefinition);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2DB680()
{
  sub_20E2FB9A4(&qword_27C86B9D8, type metadata accessor for ToolKitProtoCoercionDefinition);

  return sub_20E322470();
}

uint64_t sub_20E2DB6EC()
{
  sub_20E2FB9A4(&qword_27C86B9D8, type metadata accessor for ToolKitProtoCoercionDefinition);

  return sub_20E322480();
}

uint64_t sub_20E2DB76C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B910);
  __swift_project_value_buffer(v0, qword_27C86B910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CoercionDirection_IMPORT";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CoercionDirection_EXPORT";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2DBA54(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CAD0, type metadata accessor for ToolKitProtoToolDefinitionClosure);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2DBAF4()
{
  sub_20E2FB9A4(&qword_27C86CAA0, type metadata accessor for ToolKitProtoToolDefinitionClosure);

  return sub_20E322470();
}

uint64_t sub_20E2DBB60()
{
  sub_20E2FB9A4(&qword_27C86CAA0, type metadata accessor for ToolKitProtoToolDefinitionClosure);

  return sub_20E322480();
}

uint64_t sub_20E2DBBDC()
{
  result = MEMORY[0x20F32BF40](0x6E6F69737265562ELL, 0xE900000000000031);
  qword_27C86B940 = 0xD00000000000001DLL;
  *algn_27C86B948 = 0x800000020E3619A0;
  return result;
}

uint64_t sub_20E2DBC74()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C86B950);
  __swift_project_value_buffer(v0, qword_27C86B950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolDefinition";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "typeDefinitions";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E2DBE74@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t ToolKitProtoToolDefinitionClosure.Version1.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_20E2DC018();
      }

      else if (result == 2)
      {
        type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
        sub_20E2FB9A4(&qword_27C869AF0, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
        sub_20E322420();
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E2DC018()
{
  v0 = *(type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0) + 20);
  type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  sub_20E2FB9A4(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  return sub_20E322430();
}

uint64_t ToolKitProtoToolDefinitionClosure.Version1.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_20E2DC1C8(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for ToolKitProtoTypeDefinition.Version1(0);
      sub_20E2FB9A4(&qword_27C869AF0, type metadata accessor for ToolKitProtoTypeDefinition.Version1);
      sub_20E322570();
    }

    v8 = v5 + *(type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0) + 24);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E2DC1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C863B90, &unk_20E345EF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B90, &unk_20E345EF0);
  }

  sub_20E2FB8D8(v8, v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E2FB9A4(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E322580();
  return sub_20E2FB878(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

uint64_t sub_20E2DC448@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v5 = *(a1 + 20);
  v6 = a2(0);
  (*(*(v6 - 8) + 56))(&a3[v5], 1, 1, v6);
  v7 = &a3[*(a1 + 24)];
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a3 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E2DC52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E2FB9A4(&qword_27C86CAC8, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E2DC5CC()
{
  sub_20E2FB9A4(&qword_27C86CAB8, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1);

  return sub_20E322470();
}

uint64_t sub_20E2DC638()
{
  sub_20E2FB9A4(&qword_27C86CAB8, type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1);

  return sub_20E322480();
}

uint64_t _s23LighthouseDataProcessor41ToolKitProtoAssistantTypeSchemaDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D20, &unk_20E346340);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFC8, &qword_20E356398);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869D20, &unk_20E346340);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869D20, &unk_20E346340);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869D20, &unk_20E346340);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinition(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869D20, &unk_20E346340);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86CFC8, &qword_20E356398);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  v21 = _s23LighthouseDataProcessor45ToolKitProtoAssistantTypeSchemaDefinitionKindO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoAssistantTypeSchemaDefinitionKind);
  sub_20E04875C(v17, &qword_27C869D20, &unk_20E346340);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_20E2DC9FC(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v57 = a4;
  v59 = a2;
  v6 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = (&v50 - v11);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A28, &qword_20E33BE88);
  v12 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v56 = &v50 - v13;
  v14 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v50 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFE0, &qword_20E3563B0);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v50 - v26;
  v53 = a3(0);
  v28 = *(v53 + 20);
  v29 = *(v24 + 56);
  v58 = a1;
  sub_20E0486F4(a1 + v28, v27, &qword_27C869B00, &unk_20E346240);
  v30 = v59;
  sub_20E0486F4(v59 + v28, &v27[v29], &qword_27C869B00, &unk_20E346240);
  v31 = *(v15 + 48);
  if (v31(v27, 1, v14) == 1)
  {
    if (v31(&v27[v29], 1, v14) == 1)
    {
      sub_20E04875C(v27, &qword_27C869B00, &unk_20E346240);
      goto LABEL_9;
    }

LABEL_6:
    v32 = &qword_27C86CFE0;
    v33 = &qword_20E3563B0;
    v34 = v27;
LABEL_7:
    sub_20E04875C(v34, v32, v33);
    goto LABEL_18;
  }

  sub_20E0486F4(v27, v22, &qword_27C869B00, &unk_20E346240);
  if (v31(&v27[v29], 1, v14) == 1)
  {
    sub_20E2FB878(v22, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
    goto LABEL_6;
  }

  sub_20E2FB8D8(&v27[v29], v18, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  v35 = _s23LighthouseDataProcessor37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v22, v18);
  sub_20E2FB878(v18, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E2FB878(v22, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E04875C(v27, &qword_27C869B00, &unk_20E346240);
  if ((v35 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v36 = v58;
  if ((v57(*v58, *v30) & 1) == 0)
  {
    goto LABEL_18;
  }

  v37 = v53;
  v38 = *(v53 + 24);
  v39 = *(v52 + 48);
  v40 = v56;
  sub_20E0486F4(v36 + v38, v56, &qword_27C868A20, &qword_20E345F10);
  sub_20E0486F4(v30 + v38, v40 + v39, &qword_27C868A20, &qword_20E345F10);
  v41 = v55;
  v42 = *(v54 + 48);
  if (v42(v40, 1, v55) != 1)
  {
    v43 = v51;
    sub_20E0486F4(v40, v51, &qword_27C868A20, &qword_20E345F10);
    if (v42(v40 + v39, 1, v41) != 1)
    {
      v44 = v40 + v39;
      v45 = v50;
      sub_20E2FB8D8(v44, v50, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      v46 = _s23LighthouseDataProcessor37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v43, v45);
      sub_20E2FB878(v45, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_20E2FB878(v43, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_20E04875C(v40, &qword_27C868A20, &qword_20E345F10);
      if (v46)
      {
        goto LABEL_17;
      }

LABEL_18:
      v48 = 0;
      return v48 & 1;
    }

    sub_20E2FB878(v43, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
    goto LABEL_15;
  }

  if (v42(v40 + v39, 1, v41) != 1)
  {
LABEL_15:
    v32 = &qword_27C868A28;
    v33 = &qword_20E33BE88;
    v34 = v40;
    goto LABEL_7;
  }

  sub_20E04875C(v40, &qword_27C868A20, &qword_20E345F10);
LABEL_17:
  v47 = *(v37 + 28);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  v48 = sub_20E322850();
  return v48 & 1;
}

uint64_t _s23LighthouseDataProcessor38ToolKitProtoSampleInvocationDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_20E1494E0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a2[3];
  if (v4)
  {
    if (!v5 || (a1[2] != a2[2] || v4 != v5) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_20E1494E0(a1[1], a2[1]))
  {
    v6 = *(type metadata accessor for ToolKitProtoSampleInvocationDefinition(0) + 28);
    sub_20E3221C0();
    sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4];
  v6 = a2[4];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[3] == a2[3] && v5 == v6;
    if (!v7 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (sub_20E1494E0(a1[2], a2[2]))
  {
    v8 = *(type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0) + 28);
    sub_20E3221C0();
    sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor34ToolKitProtoAssistantSchemaVersionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v2 = *(type metadata accessor for ToolKitProtoAssistantSchemaVersion(0) + 28);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV7AltTextV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D88, &qword_20E3463C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CEF0, &qword_20E3562C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869D88, &qword_20E3463C0);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869D88, &qword_20E3463C0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869D88, &qword_20E3463C0);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869D88, &qword_20E3463C0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86CEF0, &qword_20E3562C0);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  v21 = static ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind.== infix(_:_:)(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoAltTextKind);
  sub_20E04875C(v17, &qword_27C869D88, &qword_20E3463C0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV5ImageV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D90, &qword_20E3463C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CED8, &qword_20E3562A8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869D90, &qword_20E3463C8);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869D90, &qword_20E3463C8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869D90, &qword_20E3463C8);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869D90, &qword_20E3463C8);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86CED8, &qword_20E3562A8);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  v21 = static ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind.== infix(_:_:)(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoImageKind);
  sub_20E04875C(v17, &qword_27C869D90, &qword_20E3463C8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV5ImageV6StaticV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D98, &unk_20E3463D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1F0, &qword_20E3565B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869D98, &unk_20E3463D0);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869D98, &unk_20E3463D0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869D98, &unk_20E3463D0);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869D98, &unk_20E3463D0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86D1F0, &qword_20E3565B0);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  v21 = static ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind.== infix(_:_:)(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.Image.ToolKitProtoStaticKind);
  sub_20E04875C(v17, &qword_27C869D98, &unk_20E3463D0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV5ImageV6StaticV6SymbolV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2];
  v5 = a1[3];
  v8 = a2[2];
  v7 = a2[3];
  if (v5 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      sub_20E047C8C(a1[2], a1[3]);
      sub_20E047C8C(v8, v7);
      sub_20E047D10(v6, v5);
      goto LABEL_11;
    }

LABEL_15:
    sub_20E047C8C(v6, v5);
    sub_20E047C8C(v8, v7);
    sub_20E047D10(v6, v5);
    sub_20E047D10(v8, v7);
    return 0;
  }

  if (v7 >> 60 == 15)
  {
    goto LABEL_15;
  }

  sub_20E047C8C(a1[2], a1[3]);
  sub_20E047C8C(v8, v7);
  v9 = sub_20E15F7B0(v6, v5, v8, v7);
  sub_20E047D10(v8, v7);
  sub_20E047D10(v6, v5);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v6 = a1[4];
  v5 = a1[5];
  v8 = a2[4];
  v7 = a2[5];
  if (v5 >> 60 != 15)
  {
    if (v7 >> 60 == 15)
    {
      goto LABEL_15;
    }

    sub_20E047C8C(a1[4], a1[5]);
    sub_20E047C8C(v8, v7);
    v11 = sub_20E15F7B0(v6, v5, v8, v7);
    sub_20E047D10(v8, v7);
    sub_20E047D10(v6, v5);
    if (v11)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_15;
  }

  sub_20E047C8C(a1[4], a1[5]);
  sub_20E047C8C(v8, v7);
  sub_20E047D10(v6, v5);
LABEL_18:
  v12 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Image.Static.Symbol(0) + 28);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoContainerDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoContainerDefinition.Device(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D58, &qword_20E346390);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v30 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF30, &qword_20E356300);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_20E322D60() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_31;
  }

  v17 = *(a1 + 48);
  v18 = *(a2 + 48);
  if (v17)
  {
    if (!v18 || (*(a1 + 40) != *(a2 + 40) || v17 != v18) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v18)
  {
    goto LABEL_31;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_31;
  }

  v19 = *(a1 + 64);
  v20 = *(a2 + 64);
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_22;
    }

LABEL_31:
    v28 = 0;
    return v28 & 1;
  }

  if (!v20 || (*(a1 + 56) != *(a2 + 56) || v19 != v20) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_22:
  v31 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v21 = *(v31 + 40);
  v22 = *(v13 + 48);
  sub_20E0486F4(a1 + v21, v16, &qword_27C869D58, &qword_20E346390);
  v23 = a2 + v21;
  v24 = v22;
  sub_20E0486F4(v23, &v16[v22], &qword_27C869D58, &qword_20E346390);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v24], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C869D58, &qword_20E346390);
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  sub_20E0486F4(v16, v12, &qword_27C869D58, &qword_20E346390);
  if (v25(&v16[v24], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoContainerDefinition.Device);
LABEL_27:
    sub_20E04875C(v16, &qword_27C86CF30, &qword_20E356300);
    goto LABEL_31;
  }

  sub_20E2FB8D8(&v16[v24], v8, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  v26 = sub_20E2EDF6C(v12, v8, sub_20E24FBD4, sub_20E24FBD8, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoContainerDefinition.Device);
  sub_20E04875C(v16, &qword_27C869D58, &qword_20E346390);
  if ((v26 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (*(a1 + 33) != *(a2 + 33))
  {
    goto LABEL_31;
  }

  v27 = *(v31 + 44);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  v28 = sub_20E322850();
  return v28 & 1;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0G0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE0, &qword_20E3462F8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D060, &qword_20E356430);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869CE0, &qword_20E3462F8);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869CE0, &qword_20E3462F8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869CE0, &qword_20E3462F8);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869CE0, &qword_20E3462F8);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86D060, &qword_20E356430);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  v21 = _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0defG4KindO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoComparisonPredicate.ToolKitProtoComparisonKind);
  sub_20E04875C(v17, &qword_27C869CE0, &qword_20E3462F8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0G0V4PairV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v38 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = (&v37 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v40 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = *(v18 + 48);
  v41 = a1;
  sub_20E0486F4(a1, &v37 - v19, &qword_27C863B18, &qword_20E323EB0);
  v42 = a2;
  sub_20E0486F4(a2, &v20[v21], &qword_27C863B18, &qword_20E323EB0);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_20E0486F4(v20, v13, &qword_27C863B18, &qword_20E323EB0);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      v24 = &v20[v21];
      v25 = v39;
      sub_20E2FB8D8(v24, v39, type metadata accessor for ToolKitProtoTypedValue);
      v26 = sub_20E2EC518(v13, v25, sub_20E047CF8, static ToolKitProtoTypedValueKind.== infix(_:_:), sub_20E047CA8, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB878(v25, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E04875C(v20, &qword_27C863B18, &qword_20E323EB0);
      if ((v26 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v13, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    v23 = v20;
LABEL_14:
    sub_20E04875C(v23, &qword_27C867ED8, &qword_20E33AFA8);
    goto LABEL_15;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v20, &qword_27C863B18, &qword_20E323EB0);
LABEL_8:
  v27 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Pair(0);
  v28 = *(v27 + 20);
  v29 = *(v14 + 48);
  v30 = v40;
  sub_20E0486F4(v41 + v28, v40, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(v42 + v28, v30 + v29, &qword_27C863B18, &qword_20E323EB0);
  if (v22(v30, 1, v4) == 1)
  {
    if (v22((v30 + v29), 1, v4) == 1)
    {
      sub_20E04875C(v30, &qword_27C863B18, &qword_20E323EB0);
LABEL_18:
      v36 = *(v27 + 24);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_20E0486F4(v30, v38, &qword_27C863B18, &qword_20E323EB0);
  if (v22((v30 + v29), 1, v4) == 1)
  {
    sub_20E2FB878(v31, type metadata accessor for ToolKitProtoTypedValue);
LABEL_13:
    v23 = v30;
    goto LABEL_14;
  }

  v34 = v39;
  sub_20E2FB8D8(v30 + v29, v39, type metadata accessor for ToolKitProtoTypedValue);
  v35 = sub_20E2EC518(v31, v34, sub_20E047CF8, static ToolKitProtoTypedValueKind.== infix(_:_:), sub_20E047CA8, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E2FB878(v34, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E2FB878(v31, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v30, &qword_27C863B18, &qword_20E323EB0);
  if (v35)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoSystemTypeProtocolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemTypeProtocolKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA0, &qword_20E33AF78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EA8, &qword_20E33AF80);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C867EA0, &qword_20E33AF78);
  sub_20E0486F4(a2, &v17[v18], &qword_27C867EA0, &qword_20E33AF78);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C867EA0, &qword_20E33AF78);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoSystemTypeProtocol(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C867EA0, &qword_20E33AF78);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C867EA8, &qword_20E33AF80);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  v21 = _s23LighthouseDataProcessor34ToolKitProtoSystemTypeProtocolKindO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemTypeProtocolKind);
  sub_20E04875C(v17, &qword_27C867EA0, &qword_20E33AF78);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoSystemTypeProtocolV15AssistantSchemaV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFE0, &qword_20E3563B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869B00, &unk_20E346240);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869B00, &unk_20E346240);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869B00, &unk_20E346240);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoSystemTypeProtocol.AssistantSchema(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869B00, &unk_20E346240);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86CFE0, &qword_20E3563B0);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  v21 = _s23LighthouseDataProcessor37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E04875C(v17, &qword_27C869B00, &unk_20E346240);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRuntimeRequirementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirementKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB0, &qword_20E346320);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EB8, &qword_20E33AF88);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C867EB0, &qword_20E346320);
  sub_20E0486F4(a2, &v17[v18], &qword_27C867EB0, &qword_20E346320);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C867EB0, &qword_20E346320);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoRuntimeRequirement(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C867EB0, &qword_20E346320);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C867EB8, &qword_20E33AF88);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  v21 = _s23LighthouseDataProcessor34ToolKitProtoRuntimeRequirementKindO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRuntimeRequirementKind);
  sub_20E04875C(v17, &qword_27C867EB0, &qword_20E346320);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v3 = *(type metadata accessor for ToolKitProtoRuntimePlatformVersion(0) + 32);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRuntimeRequirementV22AvailabilityAnnotationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimePlatformVersion(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D08, &qword_20E346328);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v59 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D200, &qword_20E3565C0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v28 = &v59 - v27;
  if (*a1 != *a2)
  {
    goto LABEL_23;
  }

  v61 = v26;
  v62 = v16;
  v60 = v13;
  v64 = v8;
  v29 = v25;
  v30 = type metadata accessor for ToolKitProtoRuntimeRequirement.AvailabilityAnnotation(0);
  v65 = v29;
  v66 = v30;
  v31 = *(v30 + 20);
  v32 = *(v29 + 48);
  v63 = a1;
  sub_20E0486F4(&a1[v31], v28, &qword_27C869D08, &qword_20E346328);
  v33 = &a2[v31];
  v34 = a2;
  sub_20E0486F4(v33, &v28[v32], &qword_27C869D08, &qword_20E346328);
  v37 = *(v5 + 48);
  v36 = v5 + 48;
  v35 = v37;
  if (v37(v28, 1, v4) == 1)
  {
    if (v35(&v28[v32], 1, v4) == 1)
    {
      sub_20E04875C(v28, &qword_27C869D08, &qword_20E346328);
      goto LABEL_9;
    }

LABEL_7:
    v38 = v28;
LABEL_22:
    sub_20E04875C(v38, &qword_27C86D200, &qword_20E3565C0);
    goto LABEL_23;
  }

  sub_20E0486F4(v28, v18, &qword_27C869D08, &qword_20E346328);
  if (v35(&v28[v32], 1, v4) == 1)
  {
    sub_20E2FB878(v18, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
    goto LABEL_7;
  }

  v39 = &v28[v32];
  v40 = v64;
  sub_20E2FB8D8(v39, v64, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  v41 = _s23LighthouseDataProcessor34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(v18, v40);
  sub_20E2FB878(v40, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E2FB878(v18, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E04875C(v28, &qword_27C869D08, &qword_20E346328);
  if ((v41 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v42 = v66[6];
  v43 = *(v65 + 48);
  v44 = v63;
  sub_20E0486F4(&v63[v42], v24, &qword_27C869D08, &qword_20E346328);
  sub_20E0486F4(&v34[v42], &v24[v43], &qword_27C869D08, &qword_20E346328);
  if (v35(v24, 1, v4) != 1)
  {
    v45 = v62;
    sub_20E0486F4(v24, v62, &qword_27C869D08, &qword_20E346328);
    if (v35(&v24[v43], 1, v4) != 1)
    {
      v59 = v36;
      v46 = &v24[v43];
      v47 = v64;
      sub_20E2FB8D8(v46, v64, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
      v48 = _s23LighthouseDataProcessor34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(v45, v47);
      sub_20E2FB878(v47, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
      sub_20E2FB878(v45, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
      sub_20E04875C(v24, &qword_27C869D08, &qword_20E346328);
      if ((v48 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_16;
    }

    sub_20E2FB878(v45, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
    goto LABEL_14;
  }

  if (v35(&v24[v43], 1, v4) != 1)
  {
LABEL_14:
    v38 = v24;
    goto LABEL_22;
  }

  v59 = v36;
  sub_20E04875C(v24, &qword_27C869D08, &qword_20E346328);
LABEL_16:
  v49 = v66[7];
  v50 = *(v65 + 48);
  v51 = v61;
  sub_20E0486F4(&v44[v49], v61, &qword_27C869D08, &qword_20E346328);
  sub_20E0486F4(&v34[v49], v51 + v50, &qword_27C869D08, &qword_20E346328);
  if (v35(v51, 1, v4) == 1)
  {
    if (v35((v51 + v50), 1, v4) == 1)
    {
      sub_20E04875C(v51, &qword_27C869D08, &qword_20E346328);
LABEL_26:
      v58 = v66[8];
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v53 = sub_20E322850();
      return v53 & 1;
    }

    goto LABEL_21;
  }

  v52 = v60;
  sub_20E0486F4(v51, v60, &qword_27C869D08, &qword_20E346328);
  if (v35((v51 + v50), 1, v4) == 1)
  {
    sub_20E2FB878(v52, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
LABEL_21:
    v38 = v51;
    goto LABEL_22;
  }

  v55 = v51 + v50;
  v56 = v64;
  sub_20E2FB8D8(v55, v64, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  v57 = _s23LighthouseDataProcessor34ToolKitProtoRuntimePlatformVersionV2eeoiySbAC_ACtFZ_0(v52, v56);
  sub_20E2FB878(v56, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E2FB878(v52, type metadata accessor for ToolKitProtoRuntimePlatformVersion);
  sub_20E04875C(v51, &qword_27C869D08, &qword_20E346328);
  if (v57)
  {
    goto LABEL_26;
  }

LABEL_23:
  v53 = 0;
  return v53 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRuntimeRequirementV16DeviceCapabilityV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D10, &qword_20E346330);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D1F8, &qword_20E3565B8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869D10, &qword_20E346330);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869D10, &qword_20E346330);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869D10, &qword_20E346330);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869D10, &qword_20E346330);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86D1F8, &qword_20E3565B8);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  v21 = static ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind.== infix(_:_:)(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRuntimeRequirement.ToolKitProtoDeviceCapabilityKind);
  sub_20E04875C(v17, &qword_27C869D10, &qword_20E346330);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRuntimeRequirementV16DeviceCapabilityV13MobileGestaltV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.DeviceCapability.MobileGestalt(0) + 24);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRuntimeRequirementV11FeatureFlagV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_20E322D60() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v7 = *(type metadata accessor for ToolKitProtoRuntimeRequirement.FeatureFlag(0) + 28);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV05ValueJ0V9LinkQueryV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_20E322D60() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.LinkQuery(0) + 28);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoContentItemClassDescriptorKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC8, &qword_20E3462E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D070, &qword_20E356440);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869CC8, &qword_20E3462E0);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869CC8, &qword_20E3462E0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869CC8, &qword_20E3462E0);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoContentItemClassDescriptor(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869CC8, &qword_20E3462E0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86D070, &qword_20E356440);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  v21 = _s23LighthouseDataProcessor42ToolKitProtoContentItemClassDescriptorKindO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoContentItemClassDescriptorKind);
  sub_20E04875C(v17, &qword_27C869CC8, &qword_20E3462E0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV05ValueJ0V29ContentPropertyPossibleValuesV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC0, &qword_20E3462D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D040, &qword_20E356410);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v27 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v28 = a1;
  v17 = *(v27 + 20);
  v18 = *(v13 + 56);
  sub_20E0486F4(a1 + v17, v16, &qword_27C869CC0, &qword_20E3462D8);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C869CC0, &qword_20E3462D8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v11, &qword_27C869CC0, &qword_20E3462D8);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v26;
      sub_20E2FB8D8(&v16[v18], v26, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
      v22 = _s23LighthouseDataProcessor38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(v11, v21);
      sub_20E2FB878(v21, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
      sub_20E2FB878(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
      sub_20E04875C(v16, &qword_27C869CC0, &qword_20E3462D8);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_20E2FB878(v11, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
LABEL_6:
    sub_20E04875C(v16, &qword_27C86D040, &qword_20E356410);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v16, &qword_27C869CC0, &qword_20E3462D8);
LABEL_9:
  if (*v28 == *a2 && v28[1] == a2[1] || (sub_20E322D60() & 1) != 0)
  {
    v23 = *(v27 + 24);
    sub_20E3221C0();
    sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
    v20 = sub_20E322850();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV13TextTypedWithV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3] || a1[4] != a2[4] || a1[5] != a2[5])
  {
    return 0;
  }

  v2 = *(type metadata accessor for ToolKitProtoRestrictionContext.TextTypedWith(0) + 40);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoCoercionDefinitionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for ToolKitProtoCoercionDefinition(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_20E0486F4(&v18[v20], v16, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(&v19[v20], &v16[v21], &qword_27C863C48, &qword_20E323F30);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
LABEL_11:
      v26 = *(v27[0] + 24);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v23 = sub_20E322850();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v16, v12, &qword_27C863C48, &qword_20E323F30);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_7:
    sub_20E04875C(v16, &qword_27C867E98, &qword_20E33AF70);
    goto LABEL_8;
  }

  sub_20E2FB8D8(&v16[v21], v8, type metadata accessor for ToolKitProtoTypeInstance);
  v25 = sub_20E2EC518(v12, v8, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E50, &qword_20E33AF30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E58, &qword_20E33AF38);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C867E50, &qword_20E33AF30);
  sub_20E0486F4(a2, &v17[v18], &qword_27C867E50, &qword_20E33AF30);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C867E50, &qword_20E33AF30);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoTypeDefinition.Version1(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C867E50, &qword_20E33AF30);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C867E58, &qword_20E33AF38);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  v21 = static ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind.== infix(_:_:)(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeDefinition.ToolKitProtoVersion1Kind);
  sub_20E04875C(v17, &qword_27C867E50, &qword_20E33AF30);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V5QueryV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C48, &qword_20E346250);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = (&v45 - v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D210, &qword_20E3565D0);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_20E0486F4(a1, &v45 - v24, &qword_27C863B60, &qword_20E323F50);
  v52 = a2;
  sub_20E0486F4(a2, &v25[v26], &qword_27C863B60, &qword_20E323F50);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_20E0486F4(v25, v20, &qword_27C863B60, &qword_20E323F50);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_20E2FB8D8(&v25[v26], v16, type metadata accessor for ToolKitProtoTypeIdentifier);
      v31 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_20E2FB878(v16, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E04875C(v25, &qword_27C863B60, &qword_20E323F50);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v28 = &qword_27C867ED0;
    v29 = &qword_20E33AFA0;
    v30 = v25;
LABEL_14:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v25, &qword_27C863B60, &qword_20E323F50);
LABEL_8:
  v32 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_20E0486F4(v51 + v33, v50, &qword_27C869C48, &qword_20E346250);
  sub_20E0486F4(v52 + v33, v35 + v34, &qword_27C869C48, &qword_20E346250);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_20E04875C(v35, &qword_27C869C48, &qword_20E346250);
LABEL_18:
      v44 = *(v32 + 24);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v39 = sub_20E322850();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_20E0486F4(v35, v46, &qword_27C869C48, &qword_20E346250);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_20E2FB878(v38, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
LABEL_13:
    v28 = &qword_27C86D210;
    v29 = &qword_20E3565D0;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_20E2FB8D8(v41, v45, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  V18PredicateTemplatesV2eeoiySbAI_AItFZ_0 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V5QueryV18PredicateTemplatesV2eeoiySbAI_AItFZ_0(v38, v42);
  sub_20E2FB878(v42, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E2FB878(v38, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E04875C(v35, &qword_27C869C48, &qword_20E346250);
  if (V18PredicateTemplatesV2eeoiySbAI_AItFZ_0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0G0V8TemplateV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CE8, &qword_20E346300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D058, &qword_20E356428);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869CE8, &qword_20E346300);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869CE8, &qword_20E346300);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869CE8, &qword_20E346300);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869CE8, &qword_20E346300);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86D058, &qword_20E356428);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  v21 = _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0G0V0defG12TemplateKindO2eeoiySbAG_AGtFZ_0(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.ToolKitProtoComparisonTemplateKind);
  sub_20E04875C(v17, &qword_27C869CE8, &qword_20E346300);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV8TemplateV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v82 = a2;
  v3 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC0, &qword_20E3462D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v67 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D040, &qword_20E356410);
  v9 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v74 = &v67 - v10;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template(0);
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v11);
  v70 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CF0, &qword_20E346308);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v75 = &v67 - v16;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D048, &qword_20E356418);
  v17 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v79 = &v67 - v18;
  v19 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD0, &qword_20E3462E8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v67 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D050, &qword_20E356420);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v67 - v31;
  v80 = type metadata accessor for ToolKitProtoComparisonPredicate.Template(0);
  v81 = a1;
  v33 = *(v80 + 20);
  v34 = *(v29 + 56);
  sub_20E0486F4(a1 + v33, v32, &qword_27C869CD0, &qword_20E3462E8);
  v35 = v82 + v33;
  v36 = v82;
  sub_20E0486F4(v35, &v32[v34], &qword_27C869CD0, &qword_20E3462E8);
  v37 = *(v20 + 48);
  if (v37(v32, 1, v19) == 1)
  {
    if (v37(&v32[v34], 1, v19) == 1)
    {
      sub_20E04875C(v32, &qword_27C869CD0, &qword_20E3462E8);
      goto LABEL_8;
    }

LABEL_6:
    v38 = &qword_27C86D050;
    v39 = &qword_20E356420;
    v40 = v32;
LABEL_24:
    sub_20E04875C(v40, v38, v39);
    goto LABEL_25;
  }

  sub_20E0486F4(v32, v27, &qword_27C869CD0, &qword_20E3462E8);
  if (v37(&v32[v34], 1, v19) == 1)
  {
    sub_20E2FB878(v27, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    goto LABEL_6;
  }

  sub_20E2FB8D8(&v32[v34], v23, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  v41 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V6EntityV8PropertyV2eeoiySbAI_AItFZ_0(v27, v23);
  sub_20E2FB878(v23, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_20E2FB878(v27, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_20E04875C(v32, &qword_27C869CD0, &qword_20E3462E8);
  if ((v41 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  v43 = v80;
  v42 = v81;
  v44 = *(v80 + 24);
  v45 = *(v76 + 48);
  v46 = v79;
  sub_20E0486F4(v81 + v44, v79, &qword_27C869CF0, &qword_20E346308);
  sub_20E0486F4(v36 + v44, v46 + v45, &qword_27C869CF0, &qword_20E346308);
  v47 = v78;
  v48 = *(v77 + 48);
  if (v48(v46, 1, v78) != 1)
  {
    v49 = v75;
    sub_20E0486F4(v46, v75, &qword_27C869CF0, &qword_20E346308);
    if (v48(v46 + v45, 1, v47) != 1)
    {
      v50 = v46 + v45;
      v51 = v70;
      sub_20E2FB8D8(v50, v70, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
      v52 = _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0G0V8TemplateV2eeoiySbAG_AGtFZ_0(v49, v51);
      sub_20E2FB878(v51, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
      sub_20E2FB878(v49, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
      sub_20E04875C(v46, &qword_27C869CF0, &qword_20E346308);
      if ((v52 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    sub_20E2FB878(v49, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison.Template);
    goto LABEL_13;
  }

  if (v48(v46 + v45, 1, v47) != 1)
  {
LABEL_13:
    v38 = &qword_27C86D048;
    v39 = &qword_20E356418;
    v40 = v46;
    goto LABEL_24;
  }

  sub_20E04875C(v46, &qword_27C869CF0, &qword_20E346308);
LABEL_15:
  if ((*v42 != *v36 || v42[1] != v36[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_25;
  }

  v53 = *(v43 + 28);
  v54 = *(v71 + 48);
  v55 = v74;
  sub_20E0486F4(v42 + v53, v74, &qword_27C869CC0, &qword_20E3462D8);
  v56 = v36 + v53;
  v57 = v55;
  sub_20E0486F4(v56, v55 + v54, &qword_27C869CC0, &qword_20E3462D8);
  v58 = v73;
  v59 = *(v72 + 48);
  if (v59(v55, 1, v73) == 1)
  {
    if (v59(v55 + v54, 1, v58) == 1)
    {
      sub_20E04875C(v55, &qword_27C869CC0, &qword_20E3462D8);
LABEL_28:
      v66 = *(v43 + 32);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v61 = sub_20E322850();
      return v61 & 1;
    }

    goto LABEL_23;
  }

  v60 = v69;
  sub_20E0486F4(v57, v69, &qword_27C869CC0, &qword_20E3462D8);
  if (v59(v57 + v54, 1, v58) == 1)
  {
    sub_20E2FB878(v60, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
LABEL_23:
    v38 = &qword_27C86D040;
    v39 = &qword_20E356410;
    v40 = v57;
    goto LABEL_24;
  }

  v63 = v57 + v54;
  v64 = v68;
  sub_20E2FB8D8(v63, v68, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  v65 = _s23LighthouseDataProcessor38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(v60, v64);
  sub_20E2FB878(v64, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E2FB878(v60, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E04875C(v57, &qword_27C869CC0, &qword_20E3462D8);
  if (v65)
  {
    goto LABEL_28;
  }

LABEL_25:
  v61 = 0;
  return v61 & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V5QueryV18PredicateTemplatesV2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t *a2)
{
  valid = type metadata accessor for ToolKitProtoValidPredicate(0);
  v158 = *(valid - 8);
  v4 = *(v158 + 64);
  MEMORY[0x28223BE20](valid);
  v6 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C78, &qword_20E346280);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v131 = &v127 - v9;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D168, &qword_20E356530);
  v10 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v135 = &v127 - v11;
  v139 = type metadata accessor for ToolKitProtoSearchableItemPredicate.Template(0);
  v138 = *(v139 - 8);
  v12 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v132 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C70, &qword_20E346278);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v136 = &v127 - v16;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D170, &qword_20E356538);
  v17 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v140 = &v127 - v18;
  v145 = type metadata accessor for ToolKitProtoSuggestedPredicate(0);
  v157 = *(v145 - 8);
  v19 = *(v157 + 64);
  MEMORY[0x28223BE20](v145);
  v141 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C68, &qword_20E346270);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v142 = &v127 - v23;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D178, &qword_20E356540);
  v24 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v146 = &v127 - v25;
  v26 = type metadata accessor for ToolKitProtoAllPredicate(0);
  v150 = *(v26 - 8);
  v151 = v26;
  v27 = *(v150 + 64);
  MEMORY[0x28223BE20](v26);
  v143 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C60, &qword_20E346268);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v147 = &v127 - v31;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D180, &qword_20E356548);
  v32 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v152 = &v127 - v33;
  v34 = type metadata accessor for ToolKitProtoIdSearchPredicate.Template(0);
  v154 = *(v34 - 8);
  v155 = v34;
  v35 = *(v154 + 64);
  MEMORY[0x28223BE20](v34);
  v148 = &v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C58, &qword_20E346260);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v153 = &v127 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D188, &qword_20E356550);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v156 = &v127 - v42;
  v43 = type metadata accessor for ToolKitProtoStringSearchPredicate.Template(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = &v127 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C50, &qword_20E346258);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v51 = &v127 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D190, &qword_20E356558);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v127 - v54;
  if ((sub_20E155988(*a1, *a2) & 1) == 0)
  {
    goto LABEL_32;
  }

  v129 = v6;
  v56 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v159 = a2;
  v128 = v56;
  v57 = *(v56 + 24);
  v58 = *(v52 + 48);
  v130 = a1;
  sub_20E0486F4(a1 + v57, v55, &qword_27C869C50, &qword_20E346258);
  sub_20E0486F4(v159 + v57, &v55[v58], &qword_27C869C50, &qword_20E346258);
  v59 = *(v44 + 48);
  if (v59(v55, 1, v43) == 1)
  {
    if (v59(&v55[v58], 1, v43) == 1)
    {
      sub_20E04875C(v55, &qword_27C869C50, &qword_20E346258);
      goto LABEL_9;
    }

LABEL_7:
    v60 = &qword_27C86D190;
    v61 = &qword_20E356558;
    v62 = v55;
LABEL_31:
    sub_20E04875C(v62, v60, v61);
    goto LABEL_32;
  }

  sub_20E0486F4(v55, v51, &qword_27C869C50, &qword_20E346258);
  if (v59(&v55[v58], 1, v43) == 1)
  {
    sub_20E2FB878(v51, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v55[v58], v47, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  v63 = sub_20E322850();
  sub_20E2FB878(v47, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_20E2FB878(v51, type metadata accessor for ToolKitProtoStringSearchPredicate.Template);
  sub_20E04875C(v55, &qword_27C869C50, &qword_20E346258);
  if ((v63 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_9:
  v64 = v128;
  v65 = v128[7];
  v66 = *(v40 + 48);
  v67 = v130;
  v68 = v156;
  sub_20E0486F4(v130 + v65, v156, &qword_27C869C58, &qword_20E346260);
  sub_20E0486F4(v159 + v65, v68 + v66, &qword_27C869C58, &qword_20E346260);
  v69 = v155;
  v70 = *(v154 + 48);
  if (v70(v68, 1, v155) == 1)
  {
    v71 = v70(v68 + v66, 1, v69);
    v72 = v129;
    v73 = v157;
    v74 = v158;
    if (v71 == 1)
    {
      sub_20E04875C(v68, &qword_27C869C58, &qword_20E346260);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v75 = v153;
  sub_20E0486F4(v68, v153, &qword_27C869C58, &qword_20E346260);
  v76 = v70(v68 + v66, 1, v69);
  v72 = v129;
  v73 = v157;
  v74 = v158;
  if (v76 == 1)
  {
    sub_20E2FB878(v75, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
LABEL_14:
    v60 = &qword_27C86D188;
    v61 = &qword_20E356550;
    v62 = v68;
    goto LABEL_31;
  }

  v77 = v68 + v66;
  v78 = v148;
  sub_20E2FB8D8(v77, v148, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  v79 = sub_20E322850();
  sub_20E2FB878(v78, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_20E2FB878(v75, type metadata accessor for ToolKitProtoIdSearchPredicate.Template);
  sub_20E04875C(v68, &qword_27C869C58, &qword_20E346260);
  if ((v79 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  v80 = v64[8];
  v81 = *(v149 + 48);
  v82 = v152;
  sub_20E0486F4(v67 + v80, v152, &qword_27C869C60, &qword_20E346268);
  v83 = v159 + v80;
  v84 = v82;
  sub_20E0486F4(v83, v82 + v81, &qword_27C869C60, &qword_20E346268);
  v85 = v151;
  v86 = *(v150 + 48);
  if (v86(v82, 1, v151) == 1)
  {
    if (v86(v82 + v81, 1, v85) == 1)
    {
      sub_20E04875C(v82, &qword_27C869C60, &qword_20E346268);
      goto LABEL_24;
    }

LABEL_21:
    v60 = &qword_27C86D180;
    v61 = &qword_20E356548;
LABEL_22:
    v62 = v84;
    goto LABEL_31;
  }

  v87 = v72;
  v88 = v147;
  sub_20E0486F4(v82, v147, &qword_27C869C60, &qword_20E346268);
  if (v86(v82 + v81, 1, v85) == 1)
  {
    sub_20E2FB878(v88, type metadata accessor for ToolKitProtoAllPredicate);
    goto LABEL_21;
  }

  v89 = v82 + v81;
  v90 = v143;
  sub_20E2FB8D8(v89, v143, type metadata accessor for ToolKitProtoAllPredicate);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  v91 = sub_20E322850();
  sub_20E2FB878(v90, type metadata accessor for ToolKitProtoAllPredicate);
  sub_20E2FB878(v88, type metadata accessor for ToolKitProtoAllPredicate);
  sub_20E04875C(v82, &qword_27C869C60, &qword_20E346268);
  v72 = v87;
  v74 = v158;
  if ((v91 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_24:
  v92 = v64[9];
  v93 = *(v144 + 48);
  v94 = v146;
  sub_20E0486F4(v67 + v92, v146, &qword_27C869C68, &qword_20E346270);
  v95 = v159 + v92;
  v96 = v159;
  v97 = v94;
  sub_20E0486F4(v95, v94 + v93, &qword_27C869C68, &qword_20E346270);
  v98 = *(v73 + 48);
  v99 = v94;
  v100 = v145;
  if (v98(v99, 1, v145) == 1)
  {
    if (v98(v97 + v93, 1, v100) == 1)
    {
      sub_20E04875C(v97, &qword_27C869C68, &qword_20E346270);
      goto LABEL_35;
    }

LABEL_29:
    v60 = &qword_27C86D178;
    v61 = &qword_20E356540;
LABEL_30:
    v62 = v97;
    goto LABEL_31;
  }

  v101 = v100;
  v102 = v142;
  sub_20E0486F4(v97, v142, &qword_27C869C68, &qword_20E346270);
  if (v98(v97 + v93, 1, v101) == 1)
  {
    sub_20E2FB878(v102, type metadata accessor for ToolKitProtoSuggestedPredicate);
    goto LABEL_29;
  }

  v105 = v97 + v93;
  v106 = v141;
  sub_20E2FB8D8(v105, v141, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  v107 = sub_20E322850();
  sub_20E2FB878(v106, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_20E2FB878(v102, type metadata accessor for ToolKitProtoSuggestedPredicate);
  sub_20E04875C(v97, &qword_27C869C68, &qword_20E346270);
  v96 = v159;
  if ((v107 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  if ((sub_20E1559DC(v67[1], v96[1]) & 1) == 0)
  {
    goto LABEL_32;
  }

  v108 = v64[10];
  v109 = *(v137 + 48);
  v110 = v140;
  sub_20E0486F4(v67 + v108, v140, &qword_27C869C70, &qword_20E346278);
  v111 = v159 + v108;
  v84 = v110;
  sub_20E0486F4(v111, v110 + v109, &qword_27C869C70, &qword_20E346278);
  v112 = *(v138 + 48);
  v113 = v139;
  if (v112(v110, 1, v139) != 1)
  {
    v114 = v136;
    sub_20E0486F4(v84, v136, &qword_27C869C70, &qword_20E346278);
    if (v112(v84 + v109, 1, v113) != 1)
    {
      v115 = v84 + v109;
      v116 = v132;
      sub_20E2FB8D8(v115, v132, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v117 = sub_20E322850();
      sub_20E2FB878(v116, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
      sub_20E2FB878(v114, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
      sub_20E04875C(v84, &qword_27C869C70, &qword_20E346278);
      if ((v117 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_43;
    }

    sub_20E2FB878(v114, type metadata accessor for ToolKitProtoSearchableItemPredicate.Template);
    goto LABEL_41;
  }

  if (v112(v110 + v109, 1, v113) != 1)
  {
LABEL_41:
    v60 = &qword_27C86D170;
    v61 = &qword_20E356538;
    goto LABEL_22;
  }

  sub_20E04875C(v110, &qword_27C869C70, &qword_20E346278);
LABEL_43:
  v118 = v64[11];
  v119 = *(v133 + 48);
  v120 = v135;
  sub_20E0486F4(v67 + v118, v135, &qword_27C869C78, &qword_20E346280);
  v97 = v120;
  sub_20E0486F4(v159 + v118, v120 + v119, &qword_27C869C78, &qword_20E346280);
  v121 = *(v74 + 48);
  v122 = valid;
  if (v121(v120, 1, valid) == 1)
  {
    if (v121(v120 + v119, 1, v122) == 1)
    {
      sub_20E04875C(v120, &qword_27C869C78, &qword_20E346280);
LABEL_50:
      v126 = v64[12];
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v103 = sub_20E322850();
      return v103 & 1;
    }

    goto LABEL_48;
  }

  v123 = v120;
  v124 = v131;
  sub_20E0486F4(v123, v131, &qword_27C869C78, &qword_20E346280);
  if (v121(v97 + v119, 1, v122) == 1)
  {
    sub_20E2FB878(v124, type metadata accessor for ToolKitProtoValidPredicate);
LABEL_48:
    v60 = &qword_27C86D168;
    v61 = &qword_20E356530;
    goto LABEL_30;
  }

  sub_20E2FB8D8(v97 + v119, v72, type metadata accessor for ToolKitProtoValidPredicate);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  v125 = sub_20E322850();
  sub_20E2FB878(v72, type metadata accessor for ToolKitProtoValidPredicate);
  sub_20E2FB878(v124, type metadata accessor for ToolKitProtoValidPredicate);
  sub_20E04875C(v97, &qword_27C869C78, &qword_20E346280);
  if (v125)
  {
    goto LABEL_50;
  }

LABEL_32:
  v103 = 0;
  return v103 & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V11EnumerationV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v56 = a2;
  v3 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v47 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A28, &qword_20E33BE88);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Enumeration(0);
  v25 = *(v51 + 32);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_20E0486F4(a1 + v25, v24, &qword_27C863B60, &qword_20E323F50);
  v27 = v56;
  sub_20E0486F4(v56 + v25, &v24[v26], &qword_27C863B60, &qword_20E323F50);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      sub_20E04875C(v24, &qword_27C863B60, &qword_20E323F50);
      goto LABEL_9;
    }

LABEL_6:
    v29 = &qword_27C867ED0;
    v30 = &qword_20E33AFA0;
    v31 = v24;
LABEL_7:
    sub_20E04875C(v31, v29, v30);
    goto LABEL_21;
  }

  sub_20E0486F4(v24, v19, &qword_27C863B60, &qword_20E323F50);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_20E2FB8D8(&v24[v26], v15, type metadata accessor for ToolKitProtoTypeIdentifier);
  v32 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v19, v15);
  sub_20E2FB878(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E04875C(v24, &qword_27C863B60, &qword_20E323F50);
  if ((v32 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_9:
  v33 = v55;
  if ((sub_20E14BF4C(*v55, *v27) & 1) == 0 || (sub_20E155D3C(v33[1], *(v27 + 8)) & 1) == 0)
  {
    goto LABEL_21;
  }

  v34 = v51;
  v35 = *(v51 + 36);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_20E0486F4(v33 + v35, v54, &qword_27C868A20, &qword_20E345F10);
  sub_20E0486F4(v27 + v35, v37 + v36, &qword_27C868A20, &qword_20E345F10);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) != 1)
  {
    v40 = v49;
    sub_20E0486F4(v37, v49, &qword_27C868A20, &qword_20E345F10);
    if (v39(v37 + v36, 1, v38) != 1)
    {
      v41 = v37 + v36;
      v42 = v48;
      sub_20E2FB8D8(v41, v48, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      v43 = _s23LighthouseDataProcessor37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v40, v42);
      sub_20E2FB878(v42, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_20E2FB878(v40, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_20E04875C(v37, &qword_27C868A20, &qword_20E345F10);
      if (v43)
      {
        goto LABEL_18;
      }

LABEL_21:
      v45 = 0;
      return v45 & 1;
    }

    sub_20E2FB878(v40, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
    goto LABEL_16;
  }

  if (v39(v37 + v36, 1, v38) != 1)
  {
LABEL_16:
    v29 = &qword_27C868A28;
    v30 = &qword_20E33BE88;
    v31 = v37;
    goto LABEL_7;
  }

  sub_20E04875C(v37, &qword_27C868A20, &qword_20E345F10);
LABEL_18:
  if (*(v33 + 16) != *(v27 + 16) || (sub_20E1562C0(v33[3], *(v27 + 24)) & 1) == 0)
  {
    goto LABEL_21;
  }

  v44 = *(v34 + 40);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  v45 = sub_20E322850();
  return v45 & 1;
}

uint64_t _s23LighthouseDataProcessor24ToolKitProtoTypeInstanceV8OptionalV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = (&v45 - v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v45 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_20E0486F4(a1, &v45 - v24, &qword_27C863C48, &qword_20E323F30);
  v52 = a2;
  sub_20E0486F4(a2, &v25[v26], &qword_27C863C48, &qword_20E323F30);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_20E0486F4(v25, v20, &qword_27C863C48, &qword_20E323F30);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_20E2FB8D8(&v25[v26], v16, type metadata accessor for ToolKitProtoTypeInstance);
      v31 = sub_20E2EC518(v20, v16, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB878(v16, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E04875C(v25, &qword_27C863C48, &qword_20E323F30);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_6:
    v28 = &qword_27C867E98;
    v29 = &qword_20E33AF70;
    v30 = v25;
LABEL_14:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v25, &qword_27C863C48, &qword_20E323F30);
LABEL_8:
  v32 = type metadata accessor for ToolKitProtoTypeInstance.Optional(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_20E0486F4(v51 + v33, v50, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(v52 + v33, v35 + v34, &qword_27C863B18, &qword_20E323EB0);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_20E04875C(v35, &qword_27C863B18, &qword_20E323EB0);
LABEL_18:
      v44 = *(v32 + 24);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v39 = sub_20E322850();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_20E0486F4(v35, v46, &qword_27C863B18, &qword_20E323EB0);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_20E2FB878(v38, type metadata accessor for ToolKitProtoTypedValue);
LABEL_13:
    v28 = &qword_27C867ED8;
    v29 = &qword_20E33AFA8;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_20E2FB8D8(v41, v45, type metadata accessor for ToolKitProtoTypedValue);
  v43 = sub_20E2EC518(v38, v42, sub_20E047CF8, static ToolKitProtoTypedValueKind.== infix(_:_:), sub_20E047CA8, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E2FB878(v42, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E2FB878(v38, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v35, &qword_27C863B18, &qword_20E323EB0);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s23LighthouseDataProcessor24ToolKitProtoTypeInstanceV8DeferredV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863C48, &qword_20E323F30);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863C48, &qword_20E323F30);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoTypeInstance.Deferred(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863C48, &qword_20E323F30);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_6:
    sub_20E04875C(v17, &qword_27C867E98, &qword_20E33AF70);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoTypeInstance);
  v21 = sub_20E2EC518(v12, v8, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E04875C(v17, &qword_27C863C48, &qword_20E323F30);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV05ValueJ0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB8, &qword_20E3462D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D088, &qword_20E356458);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v18 = *(v17 + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_16;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v22)
  {
    goto LABEL_16;
  }

  v24 = a1;
  v25 = *(v13 + 48);
  v31[0] = v24;
  sub_20E0486F4(v24, v16, &qword_27C869CB8, &qword_20E3462D0);
  v31[1] = a2;
  sub_20E0486F4(a2, &v16[v25], &qword_27C869CB8, &qword_20E3462D0);
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) == 1)
  {
    if (v26(&v16[v25], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C869CB8, &qword_20E3462D0);
LABEL_19:
      v30 = *(v17 + 24);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v27 = sub_20E322850();
      return v27 & 1;
    }

    goto LABEL_15;
  }

  sub_20E0486F4(v16, v12, &qword_27C869CB8, &qword_20E3462D0);
  if (v26(&v16[v25], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
LABEL_15:
    sub_20E04875C(v16, &qword_27C86D088, &qword_20E356458);
    goto LABEL_16;
  }

  sub_20E2FB8D8(&v16[v25], v8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  v29 = _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV0def5ValueJ4KindO2eeoiySbAG_AGtFZ_0(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ToolKitProtoValueSetKind);
  sub_20E04875C(v16, &qword_27C869CB8, &qword_20E3462D0);
  if (v29)
  {
    goto LABEL_19;
  }

LABEL_16:
  v27 = 0;
  return v27 & 1;
}

uint64_t _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C48, &qword_20E346250);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = (&v45 - v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D210, &qword_20E3565D0);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CB0, &qword_20E3462C8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D218, &qword_20E3565D8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_20E0486F4(a1, &v45 - v24, &qword_27C869CB0, &qword_20E3462C8);
  v52 = a2;
  sub_20E0486F4(a2, &v25[v26], &qword_27C869CB0, &qword_20E3462C8);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_20E0486F4(v25, v20, &qword_27C869CB0, &qword_20E3462C8);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_20E2FB8D8(&v25[v26], v16, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
      v31 = _s23LighthouseDataProcessor30ToolKitProtoRestrictionContextV5InSetV05ValueJ0V2eeoiySbAG_AGtFZ_0(v20, v16);
      sub_20E2FB878(v16, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
      sub_20E04875C(v25, &qword_27C869CB0, &qword_20E3462C8);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v20, type metadata accessor for ToolKitProtoRestrictionContext.InSet.ValueSet);
LABEL_6:
    v28 = &qword_27C86D218;
    v29 = &qword_20E3565D8;
    v30 = v25;
LABEL_14:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v25, &qword_27C869CB0, &qword_20E3462C8);
LABEL_8:
  v32 = type metadata accessor for ToolKitProtoRestrictionContext.InSet(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_20E0486F4(v51 + v33, v50, &qword_27C869C48, &qword_20E346250);
  sub_20E0486F4(v52 + v33, v35 + v34, &qword_27C869C48, &qword_20E346250);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_20E04875C(v35, &qword_27C869C48, &qword_20E346250);
LABEL_18:
      v44 = *(v32 + 24);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v39 = sub_20E322850();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_20E0486F4(v35, v46, &qword_27C869C48, &qword_20E346250);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_20E2FB878(v38, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
LABEL_13:
    v28 = &qword_27C86D210;
    v29 = &qword_20E3565D0;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_20E2FB8D8(v41, v45, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  V18PredicateTemplatesV2eeoiySbAI_AItFZ_0 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V5QueryV18PredicateTemplatesV2eeoiySbAI_AItFZ_0(v38, v42);
  sub_20E2FB878(v42, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E2FB878(v38, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Query.PredicateTemplates);
  sub_20E04875C(v35, &qword_27C869C48, &qword_20E346250);
  if (V18PredicateTemplatesV2eeoiySbAI_AItFZ_0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV2IDV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((sub_20E15F7B0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v25 = v8;
  v26 = type metadata accessor for ToolKitProtoTypedValue.ID(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C863C48, &qword_20E323F30);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
LABEL_11:
      v24 = *(v26 + 24);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v16, v12, &qword_27C863C48, &qword_20E323F30);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_7:
    sub_20E04875C(v16, &qword_27C867E98, &qword_20E33AF70);
    goto LABEL_8;
  }

  v22 = v25;
  sub_20E2FB8D8(&v16[v18], v25, type metadata accessor for ToolKitProtoTypeInstance);
  v23 = sub_20E2EC518(v12, v22, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v22, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_20E2E5848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v27 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  if ((sub_20E15F7B0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v27 = v10;
  v28 = a3(0);
  v19 = *(v28 + 20);
  v20 = *(v15 + 48);
  sub_20E0486F4(a1 + v19, v18, &qword_27C863EB8, &qword_20E325D08);
  sub_20E0486F4(a2 + v19, &v18[v20], &qword_27C863EB8, &qword_20E325D08);
  v21 = *(v7 + 48);
  if (v21(v18, 1, v6) == 1)
  {
    if (v21(&v18[v20], 1, v6) == 1)
    {
      sub_20E04875C(v18, &qword_27C863EB8, &qword_20E325D08);
LABEL_11:
      v26 = *(v28 + 24);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v22 = sub_20E322850();
      return v22 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v18, v14, &qword_27C863EB8, &qword_20E325D08);
  if (v21(&v18[v20], 1, v6) == 1)
  {
    sub_20E2FB878(v14, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_7:
    sub_20E04875C(v18, &qword_27C867E90, &qword_20E33AF68);
    goto LABEL_8;
  }

  v24 = v27;
  sub_20E2FB8D8(&v18[v20], v27, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v25 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v14, v24);
  sub_20E2FB878(v24, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB878(v14, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E04875C(v18, &qword_27C863EB8, &qword_20E325D08);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_20E2E5BE4(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v27 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = v10;
  v28 = a3(0);
  v19 = *(v28 + 20);
  v20 = *(v15 + 48);
  sub_20E0486F4(a1 + v19, v18, &qword_27C863EB8, &qword_20E325D08);
  sub_20E0486F4(a2 + v19, &v18[v20], &qword_27C863EB8, &qword_20E325D08);
  v21 = *(v7 + 48);
  if (v21(v18, 1, v6) == 1)
  {
    if (v21(&v18[v20], 1, v6) == 1)
    {
      sub_20E04875C(v18, &qword_27C863EB8, &qword_20E325D08);
LABEL_12:
      v25 = *(v28 + 24);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v22 = sub_20E322850();
      return v22 & 1;
    }

    goto LABEL_9;
  }

  sub_20E0486F4(v18, v14, &qword_27C863EB8, &qword_20E325D08);
  if (v21(&v18[v20], 1, v6) == 1)
  {
    sub_20E2FB878(v14, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_9:
    sub_20E04875C(v18, &qword_27C867E90, &qword_20E33AF68);
    goto LABEL_10;
  }

  v23 = v27;
  sub_20E2FB8D8(&v18[v20], v27, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v24 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v14, v23);
  sub_20E2FB878(v23, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB878(v14, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E04875C(v18, &qword_27C863EB8, &qword_20E325D08);
  if (v24)
  {
    goto LABEL_12;
  }

LABEL_10:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V14DateComponentsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C98, &unk_20E3462A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v102 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D238, &qword_20E3565F8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v102 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v102 - v16, &qword_27C869C98, &unk_20E3462A0);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869C98, &unk_20E3462A0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_20E0486F4(v17, v12, &qword_27C869C98, &unk_20E3462A0);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
      v22 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V14DateComponentsV8CalendarV2eeoiySbAI_AItFZ_0(v12, v8);
      sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
      sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
      sub_20E04875C(v17, &qword_27C869C98, &unk_20E3462A0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86D238, &qword_20E3565F8);
    goto LABEL_7;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v17, &qword_27C869C98, &unk_20E3462A0);
LABEL_10:
  v23 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents(0);
  v24 = v23[5];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_7;
    }

    if (*v25 != *v27 || v26 != v28)
    {
      v29 = v23;
      v30 = sub_20E322D60();
      v23 = v29;
      if ((v30 & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else if (v28)
  {
    goto LABEL_7;
  }

  v31 = v23[6];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_7;
    }
  }

  v36 = v23[7];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_7;
    }
  }

  v41 = v23[8];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 8);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_7;
    }
  }

  v46 = v23[9];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 8);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if (v50)
    {
      goto LABEL_7;
    }
  }

  v51 = v23[10];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 8);
  v54 = (a2 + v51);
  v55 = *(a2 + v51 + 8);
  if (v53)
  {
    if (!v55)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v52 != *v54)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      goto LABEL_7;
    }
  }

  v56 = v23[11];
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 8);
  v59 = (a2 + v56);
  v60 = *(a2 + v56 + 8);
  if (v58)
  {
    if (!v60)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v57 != *v59)
    {
      LOBYTE(v60) = 1;
    }

    if (v60)
    {
      goto LABEL_7;
    }
  }

  v61 = v23[12];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 8);
  if (v63)
  {
    if (!v65)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      goto LABEL_7;
    }
  }

  v66 = v23[13];
  v67 = (a1 + v66);
  v68 = *(a1 + v66 + 8);
  v69 = (a2 + v66);
  v70 = *(a2 + v66 + 8);
  if (v68)
  {
    if (!v70)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      goto LABEL_7;
    }
  }

  v71 = v23[14];
  v72 = (a1 + v71);
  v73 = *(a1 + v71 + 8);
  v74 = (a2 + v71);
  v75 = *(a2 + v71 + 8);
  if (v73)
  {
    if (!v75)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v72 != *v74)
    {
      LOBYTE(v75) = 1;
    }

    if (v75)
    {
      goto LABEL_7;
    }
  }

  v76 = v23[15];
  v77 = (a1 + v76);
  v78 = *(a1 + v76 + 8);
  v79 = (a2 + v76);
  v80 = *(a2 + v76 + 8);
  if (v78)
  {
    if (!v80)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v77 != *v79)
    {
      LOBYTE(v80) = 1;
    }

    if (v80)
    {
      goto LABEL_7;
    }
  }

  v81 = v23[16];
  v82 = (a1 + v81);
  v83 = *(a1 + v81 + 8);
  v84 = (a2 + v81);
  v85 = *(a2 + v81 + 8);
  if (v83)
  {
    if (!v85)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v82 != *v84)
    {
      LOBYTE(v85) = 1;
    }

    if (v85)
    {
      goto LABEL_7;
    }
  }

  v86 = v23[17];
  v87 = (a1 + v86);
  v88 = *(a1 + v86 + 8);
  v89 = (a2 + v86);
  v90 = *(a2 + v86 + 8);
  if (v88)
  {
    if (!v90)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v87 != *v89)
    {
      LOBYTE(v90) = 1;
    }

    if (v90)
    {
      goto LABEL_7;
    }
  }

  v91 = v23[18];
  v92 = (a1 + v91);
  v93 = *(a1 + v91 + 8);
  v94 = (a2 + v91);
  v95 = *(a2 + v91 + 8);
  if (v93)
  {
    if (!v95)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (*v92 != *v94)
    {
      LOBYTE(v95) = 1;
    }

    if (v95)
    {
      goto LABEL_7;
    }
  }

  v96 = v23[19];
  v97 = (a1 + v96);
  v98 = *(a1 + v96 + 8);
  v99 = (a2 + v96);
  v100 = *(a2 + v96 + 8);
  if (v98)
  {
    if (v100)
    {
LABEL_101:
      v101 = v23[20];
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }
  }

  else
  {
    if (*v97 != *v99)
    {
      LOBYTE(v100) = 1;
    }

    if ((v100 & 1) == 0)
    {
      goto LABEL_101;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V14DateComponentsV8CalendarV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[2] != a2[2])
  {
    v3 = a1;
    v4 = a1[1];
    v5 = a2;
    v6 = sub_20E322D60();
    a2 = v5;
    v7 = v6;
    a1 = v3;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = a1[6];
  v9 = a2[6];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    if (a1[5] != a2[5] || v8 != v9)
    {
      v10 = a1;
      v11 = a1[5];
      v12 = a2;
      v13 = sub_20E322D60();
      a2 = v12;
      v14 = v13;
      a1 = v10;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    v15 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.DateComponents.Calendar(0) + 36);
    sub_20E3221C0();
    sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V14CurrencyAmountV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v56 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v47 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C90, &qword_20E346298);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D240, &qword_20E356600);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.CurrencyAmount(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_20E0486F4(a1 + v25, v24, &qword_27C869C90, &qword_20E346298);
  v27 = v56;
  sub_20E0486F4(v56 + v25, &v24[v26], &qword_27C869C90, &qword_20E346298);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) != 1)
  {
    sub_20E0486F4(v24, v19, &qword_27C869C90, &qword_20E346298);
    if (v28(&v24[v26], 1, v11) != 1)
    {
      sub_20E2FB8D8(&v24[v26], v15, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      v32 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V7DecimalV2eeoiySbAG_AGtFZ_0(v19, v15);
      sub_20E2FB878(v15, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
      sub_20E04875C(v24, &qword_27C869C90, &qword_20E346298);
      if ((v32 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal);
LABEL_6:
    v29 = &qword_27C86D240;
    v30 = &qword_20E356600;
    v31 = v24;
LABEL_17:
    sub_20E04875C(v31, v29, v30);
    goto LABEL_18;
  }

  if (v28(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v24, &qword_27C869C90, &qword_20E346298);
LABEL_8:
  v33 = v55;
  if ((*v55 != *v27 || v55[1] != v27[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = v51;
  v35 = *(v51 + 24);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_20E0486F4(v33 + v35, v54, &qword_27C863EB8, &qword_20E325D08);
  sub_20E0486F4(v27 + v35, v37 + v36, &qword_27C863EB8, &qword_20E325D08);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      sub_20E04875C(v37, &qword_27C863EB8, &qword_20E325D08);
LABEL_21:
      v46 = *(v34 + 28);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v41 = sub_20E322850();
      return v41 & 1;
    }

    goto LABEL_16;
  }

  v40 = v49;
  sub_20E0486F4(v37, v49, &qword_27C863EB8, &qword_20E325D08);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    sub_20E2FB878(v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_16:
    v29 = &qword_27C867E90;
    v30 = &qword_20E33AF68;
    v31 = v37;
    goto LABEL_17;
  }

  v43 = v37 + v36;
  v44 = v48;
  sub_20E2FB8D8(v43, v48, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v45 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v40, v44);
  sub_20E2FB878(v44, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB878(v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E04875C(v37, &qword_27C863EB8, &qword_20E325D08);
  if (v45)
  {
    goto LABEL_21;
  }

LABEL_18:
  v41 = 0;
  return v41 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V13PaymentMethodV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v29 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  if (*a1 != *a2)
  {
    goto LABEL_15;
  }

  v18 = *(a1 + 2);
  v19 = *(a2 + 2);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_15;
    }

    v20 = v15;
    if ((*(a1 + 1) != *(a2 + 1) || v18 != v19) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v20 = v15;
    if (v19)
    {
      goto LABEL_15;
    }
  }

  v29 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.PaymentMethod(0);
  v21 = *(v29 + 24);
  v22 = *(v20 + 48);
  sub_20E0486F4(&a1[v21], v17, &qword_27C863EB8, &qword_20E325D08);
  v30 = v22;
  sub_20E0486F4(&a2[v21], &v17[v22], &qword_27C863EB8, &qword_20E325D08);
  v23 = *(v5 + 48);
  if (v23(v17, 1, v4) == 1)
  {
    if (v23(&v17[v30], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863EB8, &qword_20E325D08);
LABEL_18:
      v28 = *(v29 + 28);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v25 = sub_20E322850();
      return v25 & 1;
    }

    goto LABEL_14;
  }

  sub_20E0486F4(v17, v12, &qword_27C863EB8, &qword_20E325D08);
  v24 = v30;
  if (v23(&v17[v30], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_14:
    sub_20E04875C(v17, &qword_27C867E90, &qword_20E33AF68);
    goto LABEL_15;
  }

  sub_20E2FB8D8(&v17[v24], v8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v27 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E04875C(v17, &qword_27C863EB8, &qword_20E325D08);
  if (v27)
  {
    goto LABEL_18;
  }

LABEL_15:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V11MeasurementV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Measurement(0) + 28);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV08DeferredH0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0);
  v69 = *(v4 - 8);
  v70 = v4;
  v5 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v65 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CA0, &qword_20E3462B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v65 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D220, &qword_20E3565E0);
  v10 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v71 = &v65 - v11;
  v12 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v74 = *(v12 - 8);
  v75 = v12;
  v13 = *(v74 + 64);
  MEMORY[0x28223BE20](v12);
  v67 = (&v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v72 = (&v65 - v17);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v18 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v76 = &v65 - v19;
  v20 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v65 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v65 - v32;
  v34 = *(v31 + 56);
  v77 = a1;
  sub_20E0486F4(a1, &v65 - v32, &qword_27C863B60, &qword_20E323F50);
  v78 = a2;
  sub_20E0486F4(a2, &v33[v34], &qword_27C863B60, &qword_20E323F50);
  v35 = *(v21 + 48);
  if (v35(v33, 1, v20) == 1)
  {
    if (v35(&v33[v34], 1, v20) == 1)
    {
      sub_20E04875C(v33, &qword_27C863B60, &qword_20E323F50);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &qword_27C867ED0;
    v37 = &qword_20E33AFA0;
    v38 = v33;
LABEL_21:
    sub_20E04875C(v38, v36, v37);
    goto LABEL_22;
  }

  sub_20E0486F4(v33, v28, &qword_27C863B60, &qword_20E323F50);
  if (v35(&v33[v34], 1, v20) == 1)
  {
    sub_20E2FB878(v28, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_20E2FB8D8(&v33[v34], v24, type metadata accessor for ToolKitProtoTypeIdentifier);
  v39 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v28, v24);
  sub_20E2FB878(v24, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB878(v28, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E04875C(v33, &qword_27C863B60, &qword_20E323F50);
  if ((v39 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v40 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue(0);
  v41 = v40[5];
  v42 = *(v73 + 48);
  v44 = v76;
  v43 = v77;
  sub_20E0486F4(v77 + v41, v76, &qword_27C863C48, &qword_20E323F30);
  v45 = v78;
  sub_20E0486F4(v78 + v41, v44 + v42, &qword_27C863C48, &qword_20E323F30);
  v46 = v75;
  v47 = *(v74 + 48);
  if (v47(v44, 1, v75) != 1)
  {
    v48 = v72;
    sub_20E0486F4(v44, v72, &qword_27C863C48, &qword_20E323F30);
    if (v47(v44 + v42, 1, v46) != 1)
    {
      v49 = v67;
      sub_20E2FB8D8(v44 + v42, v67, type metadata accessor for ToolKitProtoTypeInstance);
      v50 = sub_20E2EC518(v48, v49, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB878(v49, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E2FB878(v48, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E04875C(v44, &qword_27C863C48, &qword_20E323F30);
      if ((v50 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_20E2FB878(v48, type metadata accessor for ToolKitProtoTypeInstance);
    goto LABEL_13;
  }

  if (v47(v44 + v42, 1, v46) != 1)
  {
LABEL_13:
    v36 = &qword_27C867E98;
    v37 = &qword_20E33AF70;
    v38 = v44;
    goto LABEL_21;
  }

  sub_20E04875C(v44, &qword_27C863C48, &qword_20E323F30);
LABEL_15:
  v51 = v40[6];
  v52 = *(v68 + 48);
  v53 = v71;
  sub_20E0486F4(v43 + v51, v71, &qword_27C869CA0, &qword_20E3462B0);
  v54 = v45 + v51;
  v55 = v53;
  sub_20E0486F4(v54, v53 + v52, &qword_27C869CA0, &qword_20E3462B0);
  v56 = v70;
  v57 = *(v69 + 48);
  if (v57(v53, 1, v70) == 1)
  {
    if (v57(v53 + v52, 1, v56) == 1)
    {
      sub_20E04875C(v53, &qword_27C869CA0, &qword_20E3462B0);
LABEL_25:
      v64 = v40[7];
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v59 = sub_20E322850();
      return v59 & 1;
    }

    goto LABEL_20;
  }

  v58 = v66;
  sub_20E0486F4(v55, v66, &qword_27C869CA0, &qword_20E3462B0);
  if (v57(v55 + v52, 1, v56) == 1)
  {
    sub_20E2FB878(v58, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
LABEL_20:
    v36 = &qword_27C86D220;
    v37 = &qword_20E3565E0;
    v38 = v55;
    goto LABEL_21;
  }

  v61 = v55 + v52;
  v62 = v65;
  sub_20E2FB8D8(v61, v65, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  v63 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV08DeferredH0V7StorageV2eeoiySbAG_AGtFZ_0(v58, v62);
  sub_20E2FB878(v62, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_20E2FB878(v58, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage);
  sub_20E04875C(v55, &qword_27C869CA0, &qword_20E3462B0);
  if (v63)
  {
    goto LABEL_25;
  }

LABEL_22:
  v59 = 0;
  return v59 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV08DeferredH0V7StorageV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CA8, &unk_20E3462B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D0E0, &qword_20E3564B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869CA8, &unk_20E3462B8);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869CA8, &unk_20E3462B8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869CA8, &unk_20E3462B8);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoTypedValue.DeferredValue.Storage(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869CA8, &unk_20E3462B8);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86D0E0, &qword_20E3564B0);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  v21 = static ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind.== infix(_:_:)(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.DeferredValue.ToolKitProtoStorageKind);
  sub_20E04875C(v17, &qword_27C869CA8, &unk_20E3462B8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_20E2E7E94(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  if ((sub_20E15F7B0(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3(0) + 24);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV06EntityH0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v63 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = (&v54 - v8);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  v9 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v61 = &v54 - v10;
  v11 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  v60 = type metadata accessor for ToolKitProtoTypedValue.EntityValue(0);
  v25 = *(v60 + 24);
  v26 = *(v21 + 56);
  v62 = a1;
  sub_20E0486F4(a1 + v25, v24, &qword_27C863B60, &qword_20E323F50);
  sub_20E0486F4(v63 + v25, &v24[v26], &qword_27C863B60, &qword_20E323F50);
  v27 = *(v12 + 48);
  if (v27(v24, 1, v11) == 1)
  {
    if (v27(&v24[v26], 1, v11) == 1)
    {
      sub_20E04875C(v24, &qword_27C863B60, &qword_20E323F50);
      goto LABEL_11;
    }

LABEL_6:
    v28 = &qword_27C867ED0;
    v29 = &qword_20E33AFA0;
    v30 = v24;
LABEL_7:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_8;
  }

  sub_20E0486F4(v24, v19, &qword_27C863B60, &qword_20E323F50);
  if (v27(&v24[v26], 1, v11) == 1)
  {
    sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_20E2FB8D8(&v24[v26], v15, type metadata accessor for ToolKitProtoTypeIdentifier);
  v33 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v19, v15);
  sub_20E2FB878(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E04875C(v24, &qword_27C863B60, &qword_20E323F50);
  if ((v33 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v35 = v62;
  v34 = v63;
  if ((*v62 != *v63 || v62[1] != v63[1]) && (sub_20E322D60() & 1) == 0 || (sub_20E15D148(v35[2], v34[2]) & 1) == 0)
  {
    goto LABEL_8;
  }

  v37 = v60;
  v36 = v61;
  v38 = *(v60 + 28);
  v39 = *(v57 + 48);
  sub_20E0486F4(v35 + v38, v61, &qword_27C863EB8, &qword_20E325D08);
  sub_20E0486F4(v34 + v38, v36 + v39, &qword_27C863EB8, &qword_20E325D08);
  v40 = v59;
  v41 = *(v58 + 48);
  if (v41(v36, 1, v59) != 1)
  {
    v42 = v56;
    sub_20E0486F4(v36, v56, &qword_27C863EB8, &qword_20E325D08);
    if (v41(v36 + v39, 1, v40) != 1)
    {
      v43 = v36 + v39;
      v44 = v55;
      sub_20E2FB8D8(v43, v55, type metadata accessor for ToolKitProtoDisplayRepresentation);
      v45 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v42, v44);
      sub_20E2FB878(v44, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_20E2FB878(v42, type metadata accessor for ToolKitProtoDisplayRepresentation);
      sub_20E04875C(v36, &qword_27C863EB8, &qword_20E325D08);
      if ((v45 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

    sub_20E2FB878(v42, type metadata accessor for ToolKitProtoDisplayRepresentation);
    goto LABEL_20;
  }

  if (v41(v36 + v39, 1, v40) != 1)
  {
LABEL_20:
    v28 = &qword_27C867E90;
    v29 = &qword_20E33AF68;
    v30 = v36;
    goto LABEL_7;
  }

  sub_20E04875C(v36, &qword_27C863EB8, &qword_20E325D08);
LABEL_22:
  v46 = *(v37 + 32);
  v48 = *(v35 + v46);
  v47 = *(v35 + v46 + 8);
  v49 = (v34 + v46);
  v51 = *v49;
  v50 = v49[1];
  if (v47 >> 60 == 15)
  {
    if (v50 >> 60 == 15)
    {
      sub_20E047C8C(v48, v47);
      sub_20E047C8C(v51, v50);
      sub_20E047D10(v48, v47);
LABEL_28:
      v53 = *(v37 + 36);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v31 = sub_20E322850();
      return v31 & 1;
    }

    goto LABEL_26;
  }

  if (v50 >> 60 == 15)
  {
LABEL_26:
    sub_20E047C8C(v48, v47);
    sub_20E047C8C(v51, v50);
    sub_20E047D10(v48, v47);
    sub_20E047D10(v51, v50);
    goto LABEL_8;
  }

  sub_20E047C8C(v48, v47);
  sub_20E047C8C(v51, v50);
  v52 = sub_20E15F7B0(v48, v47, v51, v50);
  sub_20E047D10(v51, v50);
  sub_20E047D10(v48, v47);
  if (v52)
  {
    goto LABEL_28;
  }

LABEL_8:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV05QueryH0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoQuery(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F28, &qword_20E325D30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D228, &qword_20E3565E8);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_20E0486F4(a1, &v45 - v24, &qword_27C863B60, &qword_20E323F50);
  v52 = a2;
  sub_20E0486F4(a2, &v25[v26], &qword_27C863B60, &qword_20E323F50);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_20E0486F4(v25, v20, &qword_27C863B60, &qword_20E323F50);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_20E2FB8D8(&v25[v26], v16, type metadata accessor for ToolKitProtoTypeIdentifier);
      v31 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_20E2FB878(v16, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E04875C(v25, &qword_27C863B60, &qword_20E323F50);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v28 = &qword_27C867ED0;
    v29 = &qword_20E33AFA0;
    v30 = v25;
LABEL_14:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v25, &qword_27C863B60, &qword_20E323F50);
LABEL_8:
  Value = type metadata accessor for ToolKitProtoTypedValue.QueryValue(0);
  v33 = *(Value + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_20E0486F4(v51 + v33, v50, &qword_27C863F28, &qword_20E325D30);
  sub_20E0486F4(v52 + v33, v35 + v34, &qword_27C863F28, &qword_20E325D30);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_20E04875C(v35, &qword_27C863F28, &qword_20E325D30);
LABEL_18:
      v44 = *(Value + 24);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v39 = sub_20E322850();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_20E0486F4(v35, v46, &qword_27C863F28, &qword_20E325D30);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_20E2FB878(v38, type metadata accessor for ToolKitProtoQuery);
LABEL_13:
    v28 = &qword_27C86D228;
    v29 = &qword_20E3565E8;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_20E2FB8D8(v41, v45, type metadata accessor for ToolKitProtoQuery);
  V2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor17ToolKitProtoQueryV2eeoiySbAC_ACtFZ_0(v38, v42);
  sub_20E2FB878(v42, type metadata accessor for ToolKitProtoQuery);
  sub_20E2FB878(v38, type metadata accessor for ToolKitProtoQuery);
  sub_20E04875C(v35, &qword_27C863F28, &qword_20E325D30);
  if (V2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV016EntityIdentifierH0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v56 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v47 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for ToolKitProtoTypedValue.EntityIdentifierValue(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_20E0486F4(a1 + v25, v24, &qword_27C863B60, &qword_20E323F50);
  v27 = v56;
  sub_20E0486F4(v56 + v25, &v24[v26], &qword_27C863B60, &qword_20E323F50);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) != 1)
  {
    sub_20E0486F4(v24, v19, &qword_27C863B60, &qword_20E323F50);
    if (v28(&v24[v26], 1, v11) != 1)
    {
      sub_20E2FB8D8(&v24[v26], v15, type metadata accessor for ToolKitProtoTypeIdentifier);
      v32 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v19, v15);
      sub_20E2FB878(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E04875C(v24, &qword_27C863B60, &qword_20E323F50);
      if ((v32 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v29 = &qword_27C867ED0;
    v30 = &qword_20E33AFA0;
    v31 = v24;
LABEL_17:
    sub_20E04875C(v31, v29, v30);
    goto LABEL_18;
  }

  if (v28(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v24, &qword_27C863B60, &qword_20E323F50);
LABEL_8:
  v33 = v55;
  if ((*v55 != *v27 || v55[1] != v27[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = v51;
  v35 = *(v51 + 24);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_20E0486F4(v33 + v35, v54, &qword_27C863EB8, &qword_20E325D08);
  sub_20E0486F4(v27 + v35, v37 + v36, &qword_27C863EB8, &qword_20E325D08);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      sub_20E04875C(v37, &qword_27C863EB8, &qword_20E325D08);
LABEL_21:
      v46 = *(v34 + 28);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v41 = sub_20E322850();
      return v41 & 1;
    }

    goto LABEL_16;
  }

  v40 = v49;
  sub_20E0486F4(v37, v49, &qword_27C863EB8, &qword_20E325D08);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    sub_20E2FB878(v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_16:
    v29 = &qword_27C867E90;
    v30 = &qword_20E33AF68;
    v31 = v37;
    goto LABEL_17;
  }

  v43 = v37 + v36;
  v44 = v48;
  sub_20E2FB8D8(v43, v48, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v45 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v40, v44);
  sub_20E2FB878(v44, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB878(v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E04875C(v37, &qword_27C863EB8, &qword_20E325D08);
  if (v45)
  {
    goto LABEL_21;
  }

LABEL_18:
  v41 = 0;
  return v41 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV8SubtitleV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D80, &qword_20E3463B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF00, &qword_20E3562D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869D80, &qword_20E3463B8);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869D80, &qword_20E3463B8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869D80, &qword_20E3463B8);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869D80, &qword_20E3463B8);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86CF00, &qword_20E3562D0);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  v21 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV0deF12SubtitleKindO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoDisplayRepresentation.ToolKitProtoSubtitleKind);
  sub_20E04875C(v17, &qword_27C869D80, &qword_20E3463B8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v95 = type metadata accessor for ToolKitProtoPluginModelData(0);
  v4 = *(v95 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v95);
  v92 = (&v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D78, &qword_20E3463B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = (&v90 - v9);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF10, &qword_20E3562E0);
  v10 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v12 = &v90 - v11;
  v13 = type metadata accessor for ToolKitProtoDisplayRepresentation.Image(0);
  v103 = *(v13 - 8);
  v104 = v13;
  v14 = *(v103 + 64);
  MEMORY[0x28223BE20](v13);
  v96 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D70, &qword_20E3463A8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v100 = &v90 - v18;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF18, &qword_20E3562E8);
  v19 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v105 = &v90 - v20;
  v21 = type metadata accessor for ToolKitProtoDisplayRepresentation.AltText(0);
  v108 = *(v21 - 8);
  v109 = v21;
  v22 = *(v108 + 64);
  MEMORY[0x28223BE20](v21);
  v101 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D68, &qword_20E3463A0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v106 = &v90 - v26;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF20, &qword_20E3562F0);
  v27 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v110 = &v90 - v28;
  v29 = type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D60, &qword_20E346398);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v90 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF28, &qword_20E3562F8);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v90 - v40;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_26;
  }

  v98 = v4;
  v91 = v12;
  v97 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v42 = *(v97 + 24);
  v43 = *(v38 + 48);
  v99 = a1;
  sub_20E0486F4(a1 + v42, v41, &qword_27C869D60, &qword_20E346398);
  v44 = a2 + v42;
  v45 = a2;
  sub_20E0486F4(v44, &v41[v43], &qword_27C869D60, &qword_20E346398);
  v46 = *(v30 + 48);
  if (v46(v41, 1, v29) == 1)
  {
    if (v46(&v41[v43], 1, v29) == 1)
    {
      sub_20E04875C(v41, &qword_27C869D60, &qword_20E346398);
      goto LABEL_11;
    }

LABEL_9:
    v47 = &qword_27C86CF28;
    v48 = &qword_20E3562F8;
    v49 = v41;
LABEL_25:
    sub_20E04875C(v49, v47, v48);
    goto LABEL_26;
  }

  sub_20E0486F4(v41, v37, &qword_27C869D60, &qword_20E346398);
  if (v46(&v41[v43], 1, v29) == 1)
  {
    sub_20E2FB878(v37, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
    goto LABEL_9;
  }

  sub_20E2FB8D8(&v41[v43], v33, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  v50 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV8SubtitleV2eeoiySbAE_AEtFZ_0(v37, v33);
  sub_20E2FB878(v33, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_20E2FB878(v37, type metadata accessor for ToolKitProtoDisplayRepresentation.Subtitle);
  sub_20E04875C(v41, &qword_27C869D60, &qword_20E346398);
  if ((v50 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  v51 = v97;
  v52 = *(v97 + 28);
  v53 = *(v107 + 48);
  v54 = v99;
  v55 = v110;
  sub_20E0486F4(v99 + v52, v110, &qword_27C869D68, &qword_20E3463A0);
  v56 = v45 + v52;
  v57 = v55;
  sub_20E0486F4(v56, v55 + v53, &qword_27C869D68, &qword_20E3463A0);
  v58 = v109;
  v59 = *(v108 + 48);
  if (v59(v55, 1, v109) == 1)
  {
    v60 = v59(v55 + v53, 1, v58);
    v61 = v98;
    if (v60 == 1)
    {
      sub_20E04875C(v55, &qword_27C869D68, &qword_20E3463A0);
      goto LABEL_18;
    }

LABEL_16:
    v47 = &qword_27C86CF20;
    v48 = &qword_20E3562F0;
LABEL_24:
    v49 = v57;
    goto LABEL_25;
  }

  v62 = v55;
  v63 = v106;
  sub_20E0486F4(v62, v106, &qword_27C869D68, &qword_20E3463A0);
  v64 = v59(v57 + v53, 1, v58);
  v61 = v98;
  if (v64 == 1)
  {
    sub_20E2FB878(v63, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
    goto LABEL_16;
  }

  v65 = v57 + v53;
  v66 = v101;
  sub_20E2FB8D8(v65, v101, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  v67 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV7AltTextV2eeoiySbAE_AEtFZ_0(v63, v66);
  sub_20E2FB878(v66, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  sub_20E2FB878(v63, type metadata accessor for ToolKitProtoDisplayRepresentation.AltText);
  sub_20E04875C(v57, &qword_27C869D68, &qword_20E3463A0);
  if ((v67 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  v68 = v51[8];
  v69 = *(v102 + 48);
  v70 = v105;
  sub_20E0486F4(v54 + v68, v105, &qword_27C869D70, &qword_20E3463A8);
  v71 = v45 + v68;
  v57 = v70;
  sub_20E0486F4(v71, v70 + v69, &qword_27C869D70, &qword_20E3463A8);
  v72 = v104;
  v73 = *(v103 + 48);
  if (v73(v70, 1, v104) != 1)
  {
    v74 = v100;
    sub_20E0486F4(v57, v100, &qword_27C869D70, &qword_20E3463A8);
    if (v73(v57 + v69, 1, v72) != 1)
    {
      v77 = v57 + v69;
      v78 = v96;
      sub_20E2FB8D8(v77, v96, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
      v79 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV5ImageV2eeoiySbAE_AEtFZ_0(v74, v78);
      sub_20E2FB878(v78, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
      sub_20E2FB878(v74, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
      sub_20E04875C(v57, &qword_27C869D70, &qword_20E3463A8);
      if ((v79 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    sub_20E2FB878(v74, type metadata accessor for ToolKitProtoDisplayRepresentation.Image);
    goto LABEL_23;
  }

  if (v73(v70 + v69, 1, v72) != 1)
  {
LABEL_23:
    v47 = &qword_27C86CF18;
    v48 = &qword_20E3562E8;
    goto LABEL_24;
  }

  sub_20E04875C(v70, &qword_27C869D70, &qword_20E3463A8);
LABEL_29:
  if ((sub_20E1494E0(v54[2], v45[2]) & 1) == 0)
  {
    goto LABEL_26;
  }

  v80 = v51[9];
  v81 = *(v94 + 48);
  v82 = v91;
  sub_20E0486F4(v54 + v80, v91, &qword_27C869D78, &qword_20E3463B0);
  sub_20E0486F4(v45 + v80, v82 + v81, &qword_27C869D78, &qword_20E3463B0);
  v83 = *(v61 + 48);
  v84 = v95;
  if (v83(v82, 1, v95) == 1)
  {
    if (v83(v82 + v81, 1, v84) == 1)
    {
      sub_20E04875C(v82, &qword_27C869D78, &qword_20E3463B0);
LABEL_33:
      v85 = v51[10];
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v75 = sub_20E322850();
      return v75 & 1;
    }

    goto LABEL_36;
  }

  v86 = v93;
  sub_20E0486F4(v82, v93, &qword_27C869D78, &qword_20E3463B0);
  if (v83(v82 + v81, 1, v84) == 1)
  {
    sub_20E2FB878(v86, type metadata accessor for ToolKitProtoPluginModelData);
LABEL_36:
    v47 = &qword_27C86CF10;
    v48 = &qword_20E3562E0;
    v49 = v82;
    goto LABEL_25;
  }

  v87 = v82 + v81;
  v88 = v92;
  sub_20E2FB8D8(v87, v92, type metadata accessor for ToolKitProtoPluginModelData);
  if ((sub_20E15F7B0(*v86, v86[1], *v88, v88[1]) & 1) == 0 || (v86[2] != v88[2] || v86[3] != v88[3]) && (sub_20E322D60() & 1) == 0)
  {
    sub_20E2FB878(v88, type metadata accessor for ToolKitProtoPluginModelData);
    sub_20E2FB878(v86, type metadata accessor for ToolKitProtoPluginModelData);
    v47 = &qword_27C869D78;
    v48 = &qword_20E3463B0;
    v49 = v91;
    goto LABEL_25;
  }

  v89 = *(v84 + 24);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  LOBYTE(v89) = sub_20E322850();
  sub_20E2FB878(v88, type metadata accessor for ToolKitProtoPluginModelData);
  sub_20E2FB878(v86, type metadata accessor for ToolKitProtoPluginModelData);
  sub_20E04875C(v91, &qword_27C869D78, &qword_20E3463B0);
  if (v89)
  {
    goto LABEL_33;
  }

LABEL_26:
  v75 = 0;
  return v75 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV011EnumerationH0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v56 = a2;
  v3 = type metadata accessor for ToolKitProtoDisplayRepresentation(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EB8, &qword_20E325D08);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v47 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E90, &qword_20E33AF68);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for ToolKitProtoTypedValue.EnumerationValue(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_20E0486F4(a1 + v25, v24, &qword_27C863B60, &qword_20E323F50);
  v27 = v56;
  sub_20E0486F4(v56 + v25, &v24[v26], &qword_27C863B60, &qword_20E323F50);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) != 1)
  {
    sub_20E0486F4(v24, v19, &qword_27C863B60, &qword_20E323F50);
    if (v28(&v24[v26], 1, v11) != 1)
    {
      sub_20E2FB8D8(&v24[v26], v15, type metadata accessor for ToolKitProtoTypeIdentifier);
      v32 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v19, v15);
      sub_20E2FB878(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E04875C(v24, &qword_27C863B60, &qword_20E323F50);
      if ((v32 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    v29 = &qword_27C867ED0;
    v30 = &qword_20E33AFA0;
    v31 = v24;
LABEL_17:
    sub_20E04875C(v31, v29, v30);
    goto LABEL_18;
  }

  if (v28(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v24, &qword_27C863B60, &qword_20E323F50);
LABEL_8:
  v33 = v55;
  if ((*v55 != *v27 || v55[1] != v27[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = v51;
  v35 = *(v51 + 24);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_20E0486F4(v33 + v35, v54, &qword_27C863EB8, &qword_20E325D08);
  sub_20E0486F4(v27 + v35, v37 + v36, &qword_27C863EB8, &qword_20E325D08);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      sub_20E04875C(v37, &qword_27C863EB8, &qword_20E325D08);
LABEL_21:
      v46 = *(v34 + 28);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v41 = sub_20E322850();
      return v41 & 1;
    }

    goto LABEL_16;
  }

  v40 = v49;
  sub_20E0486F4(v37, v49, &qword_27C863EB8, &qword_20E325D08);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    sub_20E2FB878(v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
LABEL_16:
    v29 = &qword_27C867E90;
    v30 = &qword_20E33AF68;
    v31 = v37;
    goto LABEL_17;
  }

  v43 = v37 + v36;
  v44 = v48;
  sub_20E2FB8D8(v43, v48, type metadata accessor for ToolKitProtoDisplayRepresentation);
  v45 = _s23LighthouseDataProcessor33ToolKitProtoDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v40, v44);
  sub_20E2FB878(v44, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E2FB878(v40, type metadata accessor for ToolKitProtoDisplayRepresentation);
  sub_20E04875C(v37, &qword_27C863EB8, &qword_20E325D08);
  if (v45)
  {
    goto LABEL_21;
  }

LABEL_18:
  v41 = 0;
  return v41 & 1;
}

uint64_t sub_20E2EA948(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v30 = a4;
  v7 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v28 = a3(0);
  v20 = *(v28 + 20);
  v21 = *(v16 + 56);
  v31 = a1;
  sub_20E0486F4(a1 + v20, v19, &qword_27C863B60, &qword_20E323F50);
  sub_20E0486F4(a2 + v20, &v19[v21], &qword_27C863B60, &qword_20E323F50);
  v22 = *(v8 + 48);
  if (v22(v19, 1, v7) == 1)
  {
    if (v22(&v19[v21], 1, v7) == 1)
    {
      sub_20E04875C(v19, &qword_27C863B60, &qword_20E323F50);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v19, v14, &qword_27C863B60, &qword_20E323F50);
  if (v22(&v19[v21], 1, v7) == 1)
  {
    sub_20E2FB878(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    sub_20E04875C(v19, &qword_27C867ED0, &qword_20E33AFA0);
LABEL_10:
    v26 = 0;
    return v26 & 1;
  }

  v23 = v29;
  sub_20E2FB8D8(&v19[v21], v29, type metadata accessor for ToolKitProtoTypeIdentifier);
  v24 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v14, v23);
  sub_20E2FB878(v23, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB878(v14, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E04875C(v19, &qword_27C863B60, &qword_20E323F50);
  if ((v24 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((v30(*v31, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = *(v28 + 24);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  v26 = sub_20E322850();
  return v26 & 1;
}

uint64_t _s23LighthouseDataProcessor17ToolKitProtoQueryV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for ToolKitProtoQuery.AnyPredicate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CF8, &qword_20E346310);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D038, &qword_20E356408);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v31 = type metadata accessor for ToolKitProtoQuery(0);
  v17 = v31[5];
  v18 = *(v13 + 56);
  v33 = a1;
  sub_20E0486F4(&a1[v17], v16, &qword_27C869CF8, &qword_20E346310);
  sub_20E0486F4(&a2[v17], &v16[v18], &qword_27C869CF8, &qword_20E346310);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C869CF8, &qword_20E346310);
LABEL_8:
      if (*v33 == *a2)
      {
        v23 = v31[6];
        v24 = &v33[v23];
        v25 = v33[v23 + 8];
        v26 = &a2[v23];
        v27 = a2[v23 + 8];
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_11;
          }
        }

        else
        {
          if (*v24 != *v26)
          {
            LOBYTE(v27) = 1;
          }

          if (v27)
          {
            goto LABEL_11;
          }
        }

        v29 = v31[7];
        sub_20E3221C0();
        sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
        v20 = sub_20E322850();
        return v20 & 1;
      }

LABEL_11:
      v20 = 0;
      return v20 & 1;
    }
  }

  else
  {
    sub_20E0486F4(v16, v11, &qword_27C869CF8, &qword_20E346310);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v32;
      sub_20E2FB8D8(&v16[v18], v32, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
      V12AnyPredicateV2eeoiySbAE_AEtFZ_0 = _s23LighthouseDataProcessor17ToolKitProtoQueryV12AnyPredicateV2eeoiySbAE_AEtFZ_0(v11, v21);
      sub_20E2FB878(v21, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
      sub_20E2FB878(v11, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
      sub_20E04875C(v16, &qword_27C869CF8, &qword_20E346310);
      if ((V12AnyPredicateV2eeoiySbAE_AEtFZ_0 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    sub_20E2FB878(v11, type metadata accessor for ToolKitProtoQuery.AnyPredicate);
  }

  sub_20E04875C(v16, &qword_27C86D038, &qword_20E356408);
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor17ToolKitProtoQueryV12AnyPredicateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D00, &qword_20E346318);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D008, &qword_20E3563D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869D00, &qword_20E346318);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869D00, &qword_20E346318);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869D00, &qword_20E346318);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoQuery.AnyPredicate(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869D00, &qword_20E346318);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86D008, &qword_20E3563D8);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  v21 = static ToolKitProtoQuery.ToolKitProtoAnyPredicateKind.== infix(_:_:)(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoQuery.ToolKitProtoAnyPredicateKind);
  sub_20E04875C(v17, &qword_27C869D00, &qword_20E346318);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V6EntityV8PropertyV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = v8;
  v26 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C863C48, &qword_20E323F30);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
LABEL_15:
      v23 = *(v26 + 28);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_12;
  }

  sub_20E0486F4(v16, v12, &qword_27C863C48, &qword_20E323F30);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_12:
    sub_20E04875C(v16, &qword_27C867E98, &qword_20E33AF70);
    goto LABEL_13;
  }

  v21 = v25;
  sub_20E2FB8D8(&v16[v18], v25, type metadata accessor for ToolKitProtoTypeInstance);
  v22 = sub_20E2EC518(v12, v21, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v21, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
  if (v22)
  {
    goto LABEL_15;
  }

LABEL_13:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v82 = a2;
  v3 = type metadata accessor for ToolKitProtoContentItemClassDescriptor(0);
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CC0, &qword_20E3462D8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v67 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D040, &qword_20E356410);
  v9 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v74 = &v67 - v10;
  v11 = type metadata accessor for ToolKitProtoComparisonPredicate.Comparison(0);
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v11);
  v70 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD8, &qword_20E3462F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v75 = &v67 - v16;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D208, &qword_20E3565C8);
  v17 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v79 = &v67 - v18;
  v19 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869CD0, &qword_20E3462E8);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v67 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D050, &qword_20E356420);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v67 - v31;
  v80 = type metadata accessor for ToolKitProtoComparisonPredicate(0);
  v81 = a1;
  v33 = *(v80 + 20);
  v34 = *(v29 + 56);
  sub_20E0486F4(a1 + v33, v32, &qword_27C869CD0, &qword_20E3462E8);
  v35 = v82 + v33;
  v36 = v82;
  sub_20E0486F4(v35, &v32[v34], &qword_27C869CD0, &qword_20E3462E8);
  v37 = *(v20 + 48);
  if (v37(v32, 1, v19) == 1)
  {
    if (v37(&v32[v34], 1, v19) == 1)
    {
      sub_20E04875C(v32, &qword_27C869CD0, &qword_20E3462E8);
      goto LABEL_8;
    }

LABEL_6:
    v38 = &qword_27C86D050;
    v39 = &qword_20E356420;
    v40 = v32;
LABEL_24:
    sub_20E04875C(v40, v38, v39);
    goto LABEL_25;
  }

  sub_20E0486F4(v32, v27, &qword_27C869CD0, &qword_20E3462E8);
  if (v37(&v32[v34], 1, v19) == 1)
  {
    sub_20E2FB878(v27, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
    goto LABEL_6;
  }

  sub_20E2FB8D8(&v32[v34], v23, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  v41 = _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V6EntityV8PropertyV2eeoiySbAI_AItFZ_0(v27, v23);
  sub_20E2FB878(v23, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_20E2FB878(v27, type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity.Property);
  sub_20E04875C(v32, &qword_27C869CD0, &qword_20E3462E8);
  if ((v41 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  v43 = v80;
  v42 = v81;
  v44 = *(v80 + 24);
  v45 = *(v76 + 48);
  v46 = v79;
  sub_20E0486F4(v81 + v44, v79, &qword_27C869CD8, &qword_20E3462F0);
  sub_20E0486F4(v36 + v44, v46 + v45, &qword_27C869CD8, &qword_20E3462F0);
  v47 = v78;
  v48 = *(v77 + 48);
  if (v48(v46, 1, v78) != 1)
  {
    v49 = v75;
    sub_20E0486F4(v46, v75, &qword_27C869CD8, &qword_20E3462F0);
    if (v48(v46 + v45, 1, v47) != 1)
    {
      v50 = v46 + v45;
      v51 = v70;
      sub_20E2FB8D8(v50, v70, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
      v52 = _s23LighthouseDataProcessor31ToolKitProtoComparisonPredicateV0G0V2eeoiySbAE_AEtFZ_0(v49, v51);
      sub_20E2FB878(v51, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
      sub_20E2FB878(v49, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
      sub_20E04875C(v46, &qword_27C869CD8, &qword_20E3462F0);
      if ((v52 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

    sub_20E2FB878(v49, type metadata accessor for ToolKitProtoComparisonPredicate.Comparison);
    goto LABEL_13;
  }

  if (v48(v46 + v45, 1, v47) != 1)
  {
LABEL_13:
    v38 = &qword_27C86D208;
    v39 = &qword_20E3565C8;
    v40 = v46;
    goto LABEL_24;
  }

  sub_20E04875C(v46, &qword_27C869CD8, &qword_20E3462F0);
LABEL_15:
  if ((*v42 != *v36 || v42[1] != v36[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_25;
  }

  v53 = *(v43 + 28);
  v54 = *(v71 + 48);
  v55 = v74;
  sub_20E0486F4(v42 + v53, v74, &qword_27C869CC0, &qword_20E3462D8);
  v56 = v36 + v53;
  v57 = v55;
  sub_20E0486F4(v56, v55 + v54, &qword_27C869CC0, &qword_20E3462D8);
  v58 = v73;
  v59 = *(v72 + 48);
  if (v59(v55, 1, v73) == 1)
  {
    if (v59(v55 + v54, 1, v58) == 1)
    {
      sub_20E04875C(v55, &qword_27C869CC0, &qword_20E3462D8);
LABEL_28:
      v66 = *(v43 + 32);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v61 = sub_20E322850();
      return v61 & 1;
    }

    goto LABEL_23;
  }

  v60 = v69;
  sub_20E0486F4(v57, v69, &qword_27C869CC0, &qword_20E3462D8);
  if (v59(v57 + v54, 1, v58) == 1)
  {
    sub_20E2FB878(v60, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
LABEL_23:
    v38 = &qword_27C86D040;
    v39 = &qword_20E356410;
    v40 = v57;
    goto LABEL_24;
  }

  v63 = v57 + v54;
  v64 = v68;
  sub_20E2FB8D8(v63, v68, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  v65 = _s23LighthouseDataProcessor38ToolKitProtoContentItemClassDescriptorV2eeoiySbAC_ACtFZ_0(v60, v64);
  sub_20E2FB878(v64, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E2FB878(v60, type metadata accessor for ToolKitProtoContentItemClassDescriptor);
  sub_20E04875C(v57, &qword_27C869CC0, &qword_20E3462D8);
  if (v65)
  {
    goto LABEL_28;
  }

LABEL_25:
  v61 = 0;
  return v61 & 1;
}

uint64_t _s23LighthouseDataProcessor021ToolKitProtoAssistantD16SchemaDefinitionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v32 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFE0, &qword_20E3563B0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v34 = type metadata accessor for ToolKitProtoAssistantToolSchemaDefinition(0);
  v35 = a1;
  v17 = *(v34 + 28);
  v18 = *(v13 + 56);
  sub_20E0486F4(a1 + v17, v16, &qword_27C869B00, &unk_20E346240);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C869B00, &unk_20E346240);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v11, &qword_27C869B00, &unk_20E346240);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v33;
      sub_20E2FB8D8(&v16[v18], v33, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      v23 = _s23LighthouseDataProcessor37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v11, v22);
      sub_20E2FB878(v22, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      sub_20E2FB878(v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
      sub_20E04875C(v16, &qword_27C869B00, &unk_20E346240);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_20E2FB878(v11, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
LABEL_6:
    sub_20E04875C(v16, &qword_27C86CFE0, &qword_20E3563B0);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v16, &qword_27C869B00, &unk_20E346240);
LABEL_10:
  v24 = v35;
  if ((*v35 != *a2 || v35[1] != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_7;
  }

  v25 = v34;
  v26 = *(v34 + 32);
  v27 = (v24 + v26);
  v28 = *(v24 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (v30)
  {
    goto LABEL_7;
  }

  if (sub_20E1586A4(v24[2], a2[2]) & 1) != 0 && (sub_20E1559DC(v24[3], a2[3]))
  {
    v31 = *(v25 + 36);
    sub_20E3221C0();
    sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
    v20 = sub_20E322850();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_20E2EC518(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t *, uint64_t *), void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *a2;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    v16 = *a1;
    if ((~v10 & 0xF000000000000007) != 0)
    {
      v15 = v10;
      a3(v9);
      a3(v10);
      a3(v9);
      v13 = a4(&v16, &v15);

      a5(v9);
      if (v13)
      {
        goto LABEL_9;
      }

      return 0;
    }

    a3(v9);
    a3(v10);
    a3(v9);

LABEL_6:
    a5(v9);
    a5(v10);
    return 0;
  }

  a3(*a1);
  a3(v10);
  if ((~v10 & 0xF000000000000007) != 0)
  {
    goto LABEL_6;
  }

  a5(v9);
LABEL_9:
  v14 = *(a6(0) + 20);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor018ToolKitProtoSystemD8ProtocolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688E0, &qword_20E33B890);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C8688D8, &qword_20E33B888);
  sub_20E0486F4(a2, &v17[v18], &qword_27C8688D8, &qword_20E33B888);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C8688D8, &qword_20E33B888);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoSystemToolProtocol(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C8688D8, &qword_20E33B888);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C8688E0, &qword_20E33B890);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  v21 = static ToolKitProtoSystemToolProtocolKind.== infix(_:_:)(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
  sub_20E04875C(v17, &qword_27C8688D8, &qword_20E33B888);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor018ToolKitProtoSystemD8ProtocolV16IntentSideEffectV2eeoiySbAE_AEtFZ_0(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a2 + 5);
  if (*(a1 + 5))
  {
    if (*(a2 + 5))
    {
LABEL_3:
      v3 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.IntentSideEffect(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      return sub_20E322850() & 1;
    }
  }

  else if ((*(a2 + 5) & 1) == 0)
  {
    v5 = *a2 | (*(a2 + 4) << 32);
    if (((*a1 | (*(a1 + 4) << 32)) & 0x100000000) != 0)
    {
      *(a1 + 4);
      if (*a1)
      {
        if ((v5 & 0x100000000) != 0)
        {
          *(a2 + 4);
          if (*a2)
          {
            goto LABEL_3;
          }
        }
      }

      else if ((v5 & 0x100000000) != 0)
      {
        *(a2 + 4);
        if (!*a2)
        {
          goto LABEL_3;
        }
      }
    }

    else if ((v5 & 0x100000000) == 0)
    {
      *(a2 + 4);
      *(a1 + 4);
      if (*a1 == *a2)
      {
        goto LABEL_3;
      }
    }
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaVersion(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D18, &qword_20E346338);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v29 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D258, &qword_20E356610);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = v8;
  v30 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v17 = *(v30 + 20);
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C869D18, &qword_20E346338);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C869D18, &qword_20E346338);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v12, &qword_27C869D18, &qword_20E346338);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = &v16[v18];
      v25 = v29;
      sub_20E2FB8D8(v24, v29, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
      if (*v12 == *v25 && v12[1] == v25[1] && v12[2] == v25[2])
      {
        v26 = *(v4 + 28);
        sub_20E3221C0();
        sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
        v27 = sub_20E322850();
        sub_20E2FB878(v25, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
        sub_20E2FB878(v12, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
        sub_20E04875C(v16, &qword_27C869D18, &qword_20E346338);
        if (v27)
        {
          goto LABEL_7;
        }

LABEL_18:
        v21 = 0;
        return v21 & 1;
      }

      sub_20E2FB878(v25, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
      sub_20E2FB878(v12, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
      v22 = &qword_27C869D18;
      v23 = &qword_20E346338;
LABEL_17:
      sub_20E04875C(v16, v22, v23);
      goto LABEL_18;
    }

    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoAssistantSchemaVersion);
LABEL_10:
    v22 = &qword_27C86D258;
    v23 = &qword_20E356610;
    goto LABEL_17;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_20E04875C(v16, &qword_27C869D18, &qword_20E346338);
LABEL_7:
  v20 = *(v30 + 24);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  v21 = sub_20E322850();
  return v21 & 1;
}

uint64_t _s23LighthouseDataProcessor018ToolKitProtoSystemD8ProtocolV15AssistantSchemaV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAssistantSchemaIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869B00, &unk_20E346240);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CFE0, &qword_20E3563B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869B00, &unk_20E346240);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869B00, &unk_20E346240);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869B00, &unk_20E346240);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoSystemToolProtocol.AssistantSchema(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869B00, &unk_20E346240);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86CFE0, &qword_20E3563B0);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  v21 = _s23LighthouseDataProcessor37ToolKitProtoAssistantSchemaIdentifierV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoAssistantSchemaIdentifier);
  sub_20E04875C(v17, &qword_27C869B00, &unk_20E346240);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD19InvocationSignatureV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_20E1494E0(*a1, *a2) & 1) == 0 || (sub_20E1494E0(a1[1], a2[1]) & 1) == 0 || (sub_20E15F198(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ToolKitProtoToolInvocationSignature(0) + 28);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeDefinitionV8Version1V6EntityV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v56 = a2;
  v3 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v47 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A28, &qword_20E33BE88);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  v51 = type metadata accessor for ToolKitProtoTypeDefinition.Version1.Entity(0);
  v25 = *(v51 + 40);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_20E0486F4(a1 + v25, v24, &qword_27C863B60, &qword_20E323F50);
  v27 = v56;
  sub_20E0486F4(v56 + v25, &v24[v26], &qword_27C863B60, &qword_20E323F50);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      sub_20E04875C(v24, &qword_27C863B60, &qword_20E323F50);
      goto LABEL_9;
    }

LABEL_6:
    v29 = &qword_27C867ED0;
    v30 = &qword_20E33AFA0;
    v31 = v24;
LABEL_7:
    sub_20E04875C(v31, v29, v30);
    goto LABEL_23;
  }

  sub_20E0486F4(v24, v19, &qword_27C863B60, &qword_20E323F50);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
    goto LABEL_6;
  }

  sub_20E2FB8D8(&v24[v26], v15, type metadata accessor for ToolKitProtoTypeIdentifier);
  v32 = _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(v19, v15);
  sub_20E2FB878(v15, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E2FB878(v19, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E04875C(v24, &qword_27C863B60, &qword_20E323F50);
  if ((v32 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v33 = v55;
  if ((sub_20E14B888(*v55, *v27) & 1) == 0 || (sub_20E155D3C(v33[1], v27[1]) & 1) == 0)
  {
    goto LABEL_23;
  }

  v34 = v51;
  v35 = *(v51 + 44);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_20E0486F4(v33 + v35, v54, &qword_27C868A20, &qword_20E345F10);
  sub_20E0486F4(v27 + v35, v37 + v36, &qword_27C868A20, &qword_20E345F10);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) != 1)
  {
    v40 = v49;
    sub_20E0486F4(v37, v49, &qword_27C868A20, &qword_20E345F10);
    if (v39(v37 + v36, 1, v38) != 1)
    {
      v41 = v37 + v36;
      v42 = v48;
      sub_20E2FB8D8(v41, v48, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      v43 = _s23LighthouseDataProcessor37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v40, v42);
      sub_20E2FB878(v42, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_20E2FB878(v40, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
      sub_20E04875C(v37, &qword_27C868A20, &qword_20E345F10);
      if (v43)
      {
        goto LABEL_18;
      }

LABEL_23:
      v45 = 0;
      return v45 & 1;
    }

    sub_20E2FB878(v40, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
    goto LABEL_16;
  }

  if (v39(v37 + v36, 1, v38) != 1)
  {
LABEL_16:
    v29 = &qword_27C868A28;
    v30 = &qword_20E33BE88;
    v31 = v37;
    goto LABEL_7;
  }

  sub_20E04875C(v37, &qword_27C868A20, &qword_20E345F10);
LABEL_18:
  if ((sub_20E1559DC(v33[2], v27[2]) & 1) == 0 || (sub_20E1562C0(v33[3], v27[3]) & 1) == 0 || (sub_20E19660C(v33[4], v27[4]) & 1) == 0 || (sub_20E156844(v33[5], v27[5]) & 1) == 0)
  {
    goto LABEL_23;
  }

  v44 = *(v34 + 48);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  v45 = sub_20E322850();
  return v45 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD17DefinitionClosureV8Version1V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FC8, &qword_20E33B088);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for ToolKitProtoToolDefinitionClosure.Version1(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_20E0486F4(a1 + v17, v16, &qword_27C863B90, &unk_20E345EF0);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C863B90, &unk_20E345EF0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C863B90, &unk_20E345EF0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v16, v11, &qword_27C863B90, &unk_20E345EF0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
LABEL_6:
    sub_20E04875C(v16, &qword_27C867FC8, &qword_20E33B088);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_20E2FB8D8(&v16[v18], v27, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v21 = _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V2eeoiySbAE_AEtFZ_0(v11, v20);
  sub_20E2FB878(v20, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E2FB878(v11, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E04875C(v16, &qword_27C863B90, &unk_20E345EF0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_20E158C24(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 24);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  v23 = sub_20E322850();
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD13SummaryStringV9ComponentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 != 255)
  {
    v13[0] = *a1;
    v13[1] = v2;
    v14 = v4;
    if (v7 != 255)
    {
      v11[0] = v6;
      v11[1] = v5;
      v12 = v7 & 1;
      sub_20E195904(v3, v2, v4);
      sub_20E195904(v6, v5, v7);
      sub_20E195904(v3, v2, v4);
      v8 = _s23LighthouseDataProcessor012ToolKitProtoD13SummaryStringV0deF13ComponentKindO2eeoiySbAE_AEtFZ_0(v13, v11);
      sub_20E19593C();
      sub_20E19593C();
      sub_20E195924(v3, v2, v4);
      if ((v8 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_20E195904(v3, v2, v4);
    sub_20E195904(v6, v5, 255);
    sub_20E195904(v3, v2, v4);
    sub_20E19593C();
LABEL_8:
    sub_20E195924(v3, v2, v4);
    sub_20E195924(v6, v5, v7);
    return 0;
  }

  sub_20E195904(*a1, v2, 255);
  if (v7 != 255)
  {
    sub_20E195904(v6, v5, v7);
    goto LABEL_8;
  }

  sub_20E195904(v6, v5, 255);
  sub_20E195924(v3, v2, 255);
LABEL_10:
  v10 = *(type metadata accessor for ToolKitProtoToolSummaryString.Component(0) + 20);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t sub_20E2EDF6C(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v7 = *a1;
  v8 = a1[1];
  v10 = *a2;
  v9 = a2[1];
  if (v8 == 1)
  {
    if (v9 == 1)
    {
      v11 = a5;
      v8 = 1;
      a3(*a1, 1);
      a3(v10, 1);
LABEL_4:
      a4(v7, v8);
      v12 = *(v11(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      return sub_20E322850() & 1;
    }

    goto LABEL_6;
  }

  if (v9 != 1)
  {
    if (v8)
    {
      if (v9)
      {
        v11 = a5;
        if (v7 == v10 && v8 == v9)
        {
          a3(*a1, v8);
          a3(v7, v8);
          a3(v7, v8);

          goto LABEL_4;
        }

        v17 = *a1;
        v18 = sub_20E322D60();
        a3(v7, v8);
        a3(v10, v9);
        a3(v7, v8);

        if (v18)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      v16 = a1[1];
    }

    else if (!v9)
    {
      v11 = a5;
      a3(*a1, 0);
      a3(v10, 0);
      swift_bridgeObjectRelease_n();
      goto LABEL_4;
    }

    a3(*a1, v8);
    a3(v10, v9);
    a3(v7, v8);

LABEL_16:
    v14 = v7;
    v15 = v8;
    goto LABEL_17;
  }

LABEL_6:
  a3(*a1, v8);
  a3(v10, v9);
  a4(v7, v8);
  v14 = v10;
  v15 = v9;
LABEL_17:
  a4(v14, v15);
  return 0;
}

uint64_t _s23LighthouseDataProcessor25ToolKitProtoAppDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoAppDefinition.Device(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D50, &qword_20E346388);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF38, &qword_20E356308);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_20E322D60() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_20E322D60() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_20E322D60() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_20E322D60() & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_25;
  }

  v26 = v8;
  v25 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v17 = *(v25 + 40);
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C869D50, &qword_20E346388);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C869D50, &qword_20E346388);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C869D50, &qword_20E346388);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_20E0486F4(v16, v12, &qword_27C869D50, &qword_20E346388);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoAppDefinition.Device);
LABEL_21:
    sub_20E04875C(v16, &qword_27C86CF38, &qword_20E356308);
LABEL_25:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v26;
  sub_20E2FB8D8(&v16[v18], v26, type metadata accessor for ToolKitProtoAppDefinition.Device);
  v21 = sub_20E2EDF6C(v12, v20, sub_20E24FBD4, sub_20E24FBD8, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_20E2FB878(v20, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoAppDefinition.Device);
  sub_20E04875C(v16, &qword_27C869D50, &qword_20E346388);
  if ((v21 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (*(a1 + 80) != *(a2 + 80))
  {
    goto LABEL_25;
  }

  v22 = *(v25 + 44);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  v23 = sub_20E322850();
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v136 = type metadata accessor for ToolKitProtoContainerDefinition(0);
  v132 = *(v136 - 8);
  v4 = *(v132 + 64);
  MEMORY[0x28223BE20](v136);
  v6 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D40, &qword_20E346368);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v130 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v131 = &v125 - v11;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D260, &qword_20E356618);
  v12 = *(*(v135 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v135);
  v133 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v137 = &v125 - v15;
  v141 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0);
  v139 = *(v141 - 8);
  v16 = *(v139 + 64);
  MEMORY[0x28223BE20](v141);
  v134 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D38, &qword_20E346360);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v140 = &v125 - v20;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D268, &qword_20E356620);
  v21 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v142 = &v125 - v22;
  v23 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation(0);
  v146 = *(v23 - 8);
  v147 = v23;
  v24 = *(v146 + 64);
  MEMORY[0x28223BE20](v23);
  v143 = (&v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D30, &qword_20E346358);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v144 = (&v125 - v28);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D270, &qword_20E356628);
  v29 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v148 = &v125 - v30;
  v31 = type metadata accessor for ToolKitProtoAppDefinition(0);
  v151 = *(v31 - 8);
  v152 = v31;
  v32 = *(v151 + 64);
  MEMORY[0x28223BE20](v31);
  v149 = &v125 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D28, &qword_20E346350);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v150 = &v125 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D278, &qword_20E356630);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v153 = &v125 - v39;
  v40 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v44 = (&v125 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = (&v125 - v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v125 - v51;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_20E322D60() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_20E322D60() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || (sub_20E1586A4(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v126 = v6;
  v53 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v129 = a2;
  v127 = v53;
  v54 = *(v53 + 68);
  v55 = a1;
  v56 = *(v49 + 48);
  v128 = v55;
  sub_20E0486F4(v55 + v54, v52, &qword_27C863C48, &qword_20E323F30);
  v57 = v129 + v54;
  v58 = v129;
  sub_20E0486F4(v57, &v52[v56], &qword_27C863C48, &qword_20E323F30);
  v59 = *(v41 + 48);
  if (v59(v52, 1, v40) == 1)
  {
    if (v59(&v52[v56], 1, v40) == 1)
    {
      sub_20E04875C(v52, &qword_27C863C48, &qword_20E323F30);
      goto LABEL_19;
    }

LABEL_14:
    v60 = &qword_27C867E98;
    v61 = &qword_20E33AF70;
    v62 = v52;
LABEL_15:
    sub_20E04875C(v62, v60, v61);
    goto LABEL_16;
  }

  sub_20E0486F4(v52, v48, &qword_27C863C48, &qword_20E323F30);
  if (v59(&v52[v56], 1, v40) == 1)
  {
    sub_20E2FB878(v48, type metadata accessor for ToolKitProtoTypeInstance);
    goto LABEL_14;
  }

  sub_20E2FB8D8(&v52[v56], v44, type metadata accessor for ToolKitProtoTypeInstance);
  v65 = sub_20E2EC518(v48, v44, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v44, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E2FB878(v48, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E04875C(v52, &qword_27C863C48, &qword_20E323F30);
  if ((v65 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v66 = v127;
  v67 = v127[18];
  v68 = v128;
  v69 = (v128 + v67);
  v70 = *(v128 + v67 + 8);
  v71 = (v58 + v67);
  v72 = v71[1];
  if (v70)
  {
    if (!v72 || (*v69 != *v71 || v70 != v72) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v72)
  {
    goto LABEL_16;
  }

  v73 = v66[19];
  v74 = *(v37 + 48);
  v75 = v153;
  sub_20E0486F4(v68 + v73, v153, &qword_27C869D28, &qword_20E346350);
  sub_20E0486F4(v58 + v73, v75 + v74, &qword_27C869D28, &qword_20E346350);
  v76 = v152;
  v77 = *(v151 + 48);
  if (v77(v75, 1, v152) == 1)
  {
    if (v77(v75 + v74, 1, v76) == 1)
    {
      sub_20E04875C(v75, &qword_27C869D28, &qword_20E346350);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  v78 = v150;
  sub_20E0486F4(v75, v150, &qword_27C869D28, &qword_20E346350);
  if (v77(v75 + v74, 1, v76) == 1)
  {
    sub_20E2FB878(v78, type metadata accessor for ToolKitProtoAppDefinition);
LABEL_31:
    v60 = &qword_27C86D278;
    v61 = &qword_20E356630;
    v62 = v75;
    goto LABEL_15;
  }

  v79 = v75 + v74;
  v80 = v149;
  sub_20E2FB8D8(v79, v149, type metadata accessor for ToolKitProtoAppDefinition);
  v81 = _s23LighthouseDataProcessor25ToolKitProtoAppDefinitionV2eeoiySbAC_ACtFZ_0(v78, v80);
  sub_20E2FB878(v80, type metadata accessor for ToolKitProtoAppDefinition);
  sub_20E2FB878(v78, type metadata accessor for ToolKitProtoAppDefinition);
  sub_20E04875C(v75, &qword_27C869D28, &qword_20E346350);
  if ((v81 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_33:
  v82 = v66[20];
  v83 = (v68 + v82);
  v84 = *(v68 + v82 + 8);
  v85 = (v58 + v82);
  v86 = v85[1];
  if (v84)
  {
    if (!v86 || (*v83 != *v85 || v84 != v86) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v86)
  {
    goto LABEL_16;
  }

  if ((sub_20E159684(v68[6], v58[6]) & 1) == 0 || (sub_20E1494E0(v68[7], v58[7]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v87 = v66[21];
  v88 = *(v145 + 48);
  v89 = v148;
  sub_20E0486F4(v68 + v87, v148, &qword_27C869D30, &qword_20E346358);
  sub_20E0486F4(v58 + v87, v89 + v88, &qword_27C869D30, &qword_20E346358);
  v90 = v147;
  v91 = *(v146 + 48);
  if (v91(v89, 1, v147) == 1)
  {
    if (v91(v89 + v88, 1, v90) == 1)
    {
      sub_20E04875C(v89, &qword_27C869D30, &qword_20E346358);
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  v92 = v144;
  sub_20E0486F4(v89, v144, &qword_27C869D30, &qword_20E346358);
  if (v91(v89 + v88, 1, v90) == 1)
  {
    sub_20E2FB878(v92, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
LABEL_47:
    v60 = &qword_27C86D270;
    v61 = &qword_20E356628;
    v62 = v89;
    goto LABEL_15;
  }

  v93 = v89 + v88;
  v94 = v143;
  sub_20E2FB8D8(v93, v143, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  v95 = sub_20E2F1054(v92, v94, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_20E2FB878(v94, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_20E2FB878(v92, type metadata accessor for ToolKitProtoToolDefinition.Version1.Deprecation);
  sub_20E04875C(v89, &qword_27C869D30, &qword_20E346358);
  if ((v95 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_49:
  if ((sub_20E155D3C(v68[8], v58[8]) & 1) == 0 || (sub_20E15992C(v68[9], v58[9]) & 1) == 0 || *(v68 + 80) != *(v58 + 80) || (sub_20E1559DC(v68[11], v58[11]) & 1) == 0 || (sub_20E159998(v128[12], v129[12]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v96 = v127[22];
  v97 = *(v138 + 48);
  v98 = v142;
  sub_20E0486F4(v128 + v96, v142, &qword_27C869D38, &qword_20E346360);
  sub_20E0486F4(v129 + v96, v98 + v97, &qword_27C869D38, &qword_20E346360);
  v99 = *(v139 + 48);
  if (v99(v98, 1, v141) == 1)
  {
    if (v99(v142 + v97, 1, v141) == 1)
    {
      sub_20E04875C(v142, &qword_27C869D38, &qword_20E346360);
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  v100 = v142;
  sub_20E0486F4(v142, v140, &qword_27C869D38, &qword_20E346360);
  if (v99(v100 + v97, 1, v141) == 1)
  {
    sub_20E2FB878(v140, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
LABEL_59:
    v60 = &qword_27C86D268;
    v61 = &qword_20E356620;
    v62 = v142;
    goto LABEL_15;
  }

  v101 = v142;
  v102 = v142 + v97;
  v103 = v134;
  sub_20E2FB8D8(v102, v134, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  v104 = v140;
  v105 = _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V0D4IconV2eeoiySbAG_AGtFZ_0(v140, v103);
  sub_20E2FB878(v103, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_20E2FB878(v104, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon);
  sub_20E04875C(v101, &qword_27C869D38, &qword_20E346360);
  if ((v105 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_61:
  if ((sub_20E1586A4(v128[13], v129[13]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v106 = v127[23];
  v107 = *(v135 + 48);
  v108 = v137;
  sub_20E0486F4(v128 + v106, v137, &qword_27C869D40, &qword_20E346368);
  sub_20E0486F4(v129 + v106, v108 + v107, &qword_27C869D40, &qword_20E346368);
  v109 = *(v132 + 48);
  if (v109(v108, 1, v136) == 1)
  {
    if (v109(v137 + v107, 1, v136) == 1)
    {
      sub_20E04875C(v137, &qword_27C869D40, &qword_20E346368);
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  v110 = v137;
  sub_20E0486F4(v137, v131, &qword_27C869D40, &qword_20E346368);
  if (v109(v110 + v107, 1, v136) == 1)
  {
    sub_20E2FB878(v131, type metadata accessor for ToolKitProtoContainerDefinition);
LABEL_67:
    v60 = &qword_27C86D260;
    v61 = &qword_20E356618;
    v62 = v137;
    goto LABEL_15;
  }

  v111 = v137;
  v112 = v137 + v107;
  v113 = v126;
  sub_20E2FB8D8(v112, v126, type metadata accessor for ToolKitProtoContainerDefinition);
  v114 = v131;
  v115 = _s23LighthouseDataProcessor31ToolKitProtoContainerDefinitionV2eeoiySbAC_ACtFZ_0(v131, v113);
  sub_20E2FB878(v113, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_20E2FB878(v114, type metadata accessor for ToolKitProtoContainerDefinition);
  sub_20E04875C(v111, &qword_27C869D40, &qword_20E346368);
  if ((v115 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_69:
  v116 = v127[24];
  v117 = *(v135 + 48);
  v118 = v133;
  sub_20E0486F4(v128 + v116, v133, &qword_27C869D40, &qword_20E346368);
  sub_20E0486F4(v129 + v116, v118 + v117, &qword_27C869D40, &qword_20E346368);
  if (v109(v118, 1, v136) != 1)
  {
    v119 = v133;
    sub_20E0486F4(v133, v130, &qword_27C869D40, &qword_20E346368);
    if (v109(v119 + v117, 1, v136) != 1)
    {
      v120 = v133;
      v121 = v126;
      sub_20E2FB8D8(v133 + v117, v126, type metadata accessor for ToolKitProtoContainerDefinition);
      v122 = v130;
      v123 = _s23LighthouseDataProcessor31ToolKitProtoContainerDefinitionV2eeoiySbAC_ACtFZ_0(v130, v121);
      sub_20E2FB878(v121, type metadata accessor for ToolKitProtoContainerDefinition);
      sub_20E2FB878(v122, type metadata accessor for ToolKitProtoContainerDefinition);
      sub_20E04875C(v120, &qword_27C869D40, &qword_20E346368);
      if ((v123 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_76;
    }

    sub_20E2FB878(v130, type metadata accessor for ToolKitProtoContainerDefinition);
    goto LABEL_74;
  }

  if (v109(v133 + v117, 1, v136) != 1)
  {
LABEL_74:
    v60 = &qword_27C86D260;
    v61 = &qword_20E356618;
    v62 = v133;
    goto LABEL_15;
  }

  sub_20E04875C(v133, &qword_27C869D40, &qword_20E346368);
LABEL_76:
  if (sub_20E19660C(v128[14], v129[14]))
  {
    v124 = v127[25];
    sub_20E3221C0();
    sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
    v63 = sub_20E322850();
    return v63 & 1;
  }

LABEL_16:
  v63 = 0;
  return v63 & 1;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV9PrimitiveV2eeoiySbAE_AEtFZ_0(char *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1 != 41)
  {
    v6 = *a1;
    if (v2 == 41)
    {
      return 0;
    }

    v5 = v2;
    if (!_s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV0deF13PrimitiveKindO2eeoiySbAE_AEtFZ_0(&v6, &v5))
    {
      return 0;
    }

LABEL_6:
    v3 = *(type metadata accessor for ToolKitProtoTypeIdentifier.Primitive(0) + 20);
    sub_20E3221C0();
    sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  if (v2 == 41)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor26ToolKitProtoTypeIdentifierV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifierKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B68, &unk_20E346230);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EC8, &qword_20E33AF98);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863B68, &unk_20E346230);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863B68, &unk_20E346230);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863B68, &unk_20E346230);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoTypeIdentifier(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863B68, &unk_20E346230);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeIdentifierKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C867EC8, &qword_20E33AF98);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  v21 = _s23LighthouseDataProcessor30ToolKitProtoTypeIdentifierKindO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeIdentifierKind);
  sub_20E04875C(v17, &qword_27C863B68, &unk_20E346230);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V9ParameterV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_25;
  }

  v17 = a1[8];
  v18 = a2[8];
  if (v17)
  {
    if (!v18 || (a1[7] != a2[7] || v17 != v18) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v18)
  {
    goto LABEL_25;
  }

  v28 = v8;
  v27 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter(0);
  v19 = *(v27 + 40);
  v20 = *(v13 + 48);
  sub_20E0486F4(a1 + v19, v16, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(a2 + v19, &v16[v20], &qword_27C863C48, &qword_20E323F30);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v12, &qword_27C863C48, &qword_20E323F30);
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
      goto LABEL_19;
    }

    v22 = v28;
    sub_20E2FB8D8(&v16[v20], v28, type metadata accessor for ToolKitProtoTypeInstance);
    v23 = sub_20E2EC518(v12, v22, sub_20E047CF8, _s23LighthouseDataProcessor28ToolKitProtoTypeInstanceKindO2eeoiySbAC_ACtFZ_0, sub_20E047CA8, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB878(v22, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypeInstance);
    sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
    if (v23)
    {
      goto LABEL_21;
    }

LABEL_25:
    v25 = 0;
    return v25 & 1;
  }

  if (v21(&v16[v20], 1, v4) != 1)
  {
LABEL_19:
    sub_20E04875C(v16, &qword_27C867E98, &qword_20E33AF70);
    goto LABEL_25;
  }

  sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
LABEL_21:
  if ((sub_20E159F90(a1[4], a2[4]) & 1) == 0 || (sub_20E1559DC(a1[5], a2[5]) & 1) == 0 || (sub_20E196610(a1[6], a2[6]) & 1) == 0)
  {
    goto LABEL_25;
  }

  v24 = *(v27 + 44);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  v25 = sub_20E322850();
  return v25 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V9ParameterV12RelationshipV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E70, &unk_20E346370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E78, &qword_20E33AF50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C867E70, &unk_20E346370);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C867E70, &unk_20E346370);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C867E70, &unk_20E346370);
LABEL_12:
      v23 = *(v26 + 24);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_20E0486F4(v16, v12, &qword_27C867E70, &unk_20E346370);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
LABEL_9:
    sub_20E04875C(v16, &qword_27C867E78, &qword_20E33AF50);
    goto LABEL_10;
  }

  v21 = v25;
  sub_20E2FB8D8(&v16[v18], v25, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  v22 = _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V9ParameterV12RelationshipV8RelationV2eeoiySbAK_AKtFZ_0(v12, v21);
  sub_20E2FB878(v21, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
  sub_20E04875C(v16, &qword_27C867E70, &unk_20E346370);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V9ParameterV12RelationshipV8RelationV2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E68, &qword_20E33AF48);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C867E60, &qword_20E33AF40);
  sub_20E0486F4(a2, &v17[v18], &qword_27C867E60, &qword_20E33AF40);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C867E60, &qword_20E33AF40);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C867E60, &qword_20E33AF40);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C867E68, &qword_20E33AF48);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  v21 = static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
  sub_20E04875C(v17, &qword_27C867E60, &qword_20E33AF40);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V7DecimalV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_20E322160();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C88, &qword_20E346290);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D248, &qword_20E356608);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    goto LABEL_9;
  }

  v18 = v15;
  v30 = type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue.Decimal(0);
  v19 = *(v30 + 24);
  v20 = *(v18 + 48);
  sub_20E0486F4(&a1[v19], v17, &qword_27C869C88, &qword_20E346290);
  v21 = &a2[v19];
  v22 = v5;
  v31 = v20;
  sub_20E0486F4(v21, &v17[v20], &qword_27C869C88, &qword_20E346290);
  v23 = *(v5 + 48);
  if (v23(v17, 1, v4) == 1)
  {
    if (v23(&v17[v31], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869C88, &qword_20E346290);
LABEL_12:
      v29 = *(v30 + 28);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v25 = sub_20E322850();
      return v25 & 1;
    }

    goto LABEL_8;
  }

  sub_20E0486F4(v17, v12, &qword_27C869C88, &qword_20E346290);
  v24 = v31;
  if (v23(&v17[v31], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_8:
    sub_20E04875C(v17, &qword_27C86D248, &qword_20E356608);
    goto LABEL_9;
  }

  (*(v5 + 32))(v8, &v17[v24], v4);
  sub_20E2FB9A4(&qword_27C86D250, MEMORY[0x277D215C8]);
  v27 = sub_20E322850();
  v28 = *(v22 + 8);
  v28(v8, v4);
  v28(v12, v4);
  sub_20E04875C(v17, &qword_27C869C88, &qword_20E346290);
  if (v27)
  {
    goto LABEL_12;
  }

LABEL_9:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s23LighthouseDataProcessor22ToolKitProtoTypedValueV09PrimitiveH0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869C80, &qword_20E346288);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86D230, &qword_20E3565F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869C80, &qword_20E346288);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869C80, &qword_20E346288);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869C80, &qword_20E346288);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoTypedValue.PrimitiveValue(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869C80, &qword_20E346288);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86D230, &qword_20E3565F0);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  v21 = _s23LighthouseDataProcessor22ToolKitProtoTypedValueV0def9PrimitiveH4KindO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoTypedValue.ToolKitProtoPrimitiveValueKind);
  sub_20E04875C(v17, &qword_27C869C80, &qword_20E346288);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_20E2F1054(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_20E322D60() & 1) != 0)
  {
    v7 = a1[3];
    v8 = a2[3];
    if (v7)
    {
      if (v8)
      {
        v9 = a1[2] == a2[2] && v7 == v8;
        if (v9 || (sub_20E322D60() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v8)
    {
LABEL_13:
      v10 = *(a3(0) + 24);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      return sub_20E322850() & 1;
    }
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V0D4IconV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C869D48, &qword_20E346380);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C86CF40, &qword_20E356310);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C869D48, &qword_20E346380);
  sub_20E0486F4(a2, &v17[v18], &qword_27C869D48, &qword_20E346380);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C869D48, &qword_20E346380);
LABEL_9:
      v22 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon(0) + 20);
      sub_20E3221C0();
      sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C869D48, &qword_20E346380);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E2FB878(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
LABEL_6:
    sub_20E04875C(v17, &qword_27C86CF40, &qword_20E356310);
    goto LABEL_7;
  }

  sub_20E2FB8D8(&v17[v18], v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  v21 = _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V0defD8IconKindO2eeoiySbAG_AGtFZ_0(v12, v8);
  sub_20E2FB878(v8, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  sub_20E2FB878(v12, type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolKitProtoToolIconKind);
  sub_20E04875C(v17, &qword_27C869D48, &qword_20E346380);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor012ToolKitProtoD10DefinitionV8Version1V0D4IconV0d6SymbolI0V2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v6 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 48);
  v8 = *(a2 + 48);
  if (v7)
  {
    if (v8 && (*(a1 + 40) == *(a2 + 40) && v7 == v8 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

LABEL_20:
  v9 = *(type metadata accessor for ToolKitProtoToolDefinition.Version1.ToolIcon.ToolSymbolIcon(0) + 32);
  sub_20E3221C0();
  sub_20E2FB9A4(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

unint64_t sub_20E2F15C4()
{
  result = qword_27C86BDF0;
  if (!qword_27C86BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BDF0);
  }

  return result;
}

unint64_t sub_20E2F161C()
{
  result = qword_27C86BDF8;
  if (!qword_27C86BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BDF8);
  }

  return result;
}

unint64_t sub_20E2F18B4()
{
  result = qword_27C86BE28;
  if (!qword_27C86BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BE28);
  }

  return result;
}

unint64_t sub_20E2F190C()
{
  result = qword_27C86BE30;
  if (!qword_27C86BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BE30);
  }

  return result;
}

unint64_t sub_20E2F2264()
{
  result = qword_27C86BEE8;
  if (!qword_27C86BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BEE8);
  }

  return result;
}

unint64_t sub_20E2F22BC()
{
  result = qword_27C86BEF0;
  if (!qword_27C86BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BEF0);
  }

  return result;
}

unint64_t sub_20E2F2554()
{
  result = qword_27C86BF20;
  if (!qword_27C86BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BF20);
  }

  return result;
}

unint64_t sub_20E2F25AC()
{
  result = qword_27C86BF28;
  if (!qword_27C86BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BF28);
  }

  return result;
}

unint64_t sub_20E2F2DE4()
{
  result = qword_27C86BFB0;
  if (!qword_27C86BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BFB0);
  }

  return result;
}

unint64_t sub_20E2F2E3C()
{
  result = qword_27C86BFB8;
  if (!qword_27C86BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86BFB8);
  }

  return result;
}

unint64_t sub_20E2F31F4()
{
  result = qword_27C86C008;
  if (!qword_27C86C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C008);
  }

  return result;
}

unint64_t sub_20E2F324C()
{
  result = qword_27C86C010;
  if (!qword_27C86C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C010);
  }

  return result;
}

unint64_t sub_20E2F3844()
{
  result = qword_27C86C090;
  if (!qword_27C86C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C090);
  }

  return result;
}

unint64_t sub_20E2F389C()
{
  result = qword_27C86C098;
  if (!qword_27C86C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C098);
  }

  return result;
}

unint64_t sub_20E2F49D4()
{
  result = qword_27C86C1F8;
  if (!qword_27C86C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C1F8);
  }

  return result;
}

unint64_t sub_20E2F4A2C()
{
  result = qword_27C86C200;
  if (!qword_27C86C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C200);
  }

  return result;
}

unint64_t sub_20E2F4A84()
{
  result = qword_27C86C208;
  if (!qword_27C86C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C208);
  }

  return result;
}

unint64_t sub_20E2F4ADC()
{
  result = qword_27C86C210;
  if (!qword_27C86C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C210);
  }

  return result;
}

unint64_t sub_20E2F5314()
{
  result = qword_27C86C2C0;
  if (!qword_27C86C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C2C0);
  }

  return result;
}

unint64_t sub_20E2F536C()
{
  result = qword_27C86C2C8;
  if (!qword_27C86C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C2C8);
  }

  return result;
}

unint64_t sub_20E2F53C4()
{
  result = qword_27C86C2D0;
  if (!qword_27C86C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C2D0);
  }

  return result;
}

unint64_t sub_20E2F541C()
{
  result = qword_27C86C2D8;
  if (!qword_27C86C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C2D8);
  }

  return result;
}

unint64_t sub_20E2F5474()
{
  result = qword_27C86C2E0;
  if (!qword_27C86C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C2E0);
  }

  return result;
}

unint64_t sub_20E2F54CC()
{
  result = qword_27C86C2E8;
  if (!qword_27C86C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C2E8);
  }

  return result;
}

unint64_t sub_20E2F5F44()
{
  result = qword_27C86C3B8;
  if (!qword_27C86C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C3B8);
  }

  return result;
}

unint64_t sub_20E2F5F9C()
{
  result = qword_27C86C3C0;
  if (!qword_27C86C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C3C0);
  }

  return result;
}

unint64_t sub_20E2F6B34()
{
  result = qword_27C86C4B8;
  if (!qword_27C86C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C4B8);
  }

  return result;
}

unint64_t sub_20E2F6B8C()
{
  result = qword_27C86C4C0;
  if (!qword_27C86C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C4C0);
  }

  return result;
}

unint64_t sub_20E2F6F44()
{
  result = qword_27C86C508;
  if (!qword_27C86C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C508);
  }

  return result;
}

unint64_t sub_20E2F6F9C()
{
  result = qword_27C86C510;
  if (!qword_27C86C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C510);
  }

  return result;
}

unint64_t sub_20E2F8E54()
{
  result = qword_27C86C770;
  if (!qword_27C86C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C770);
  }

  return result;
}

unint64_t sub_20E2F8EAC()
{
  result = qword_27C86C778;
  if (!qword_27C86C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C778);
  }

  return result;
}

unint64_t sub_20E2F8F04()
{
  result = qword_27C86C780;
  if (!qword_27C86C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C780);
  }

  return result;
}

unint64_t sub_20E2F8F5C()
{
  result = qword_27C86C788;
  if (!qword_27C86C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C788);
  }

  return result;
}

unint64_t sub_20E2F8FB4()
{
  result = qword_27C86C790;
  if (!qword_27C86C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C790);
  }

  return result;
}

unint64_t sub_20E2F900C()
{
  result = qword_27C86C798;
  if (!qword_27C86C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C798);
  }

  return result;
}

unint64_t sub_20E2F9064()
{
  result = qword_27C86C7A0;
  if (!qword_27C86C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C7A0);
  }

  return result;
}

unint64_t sub_20E2F90BC()
{
  result = qword_27C86C7A8;
  if (!qword_27C86C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C7A8);
  }

  return result;
}

unint64_t sub_20E2F9234()
{
  result = qword_27C86C7C0;
  if (!qword_27C86C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C7C0);
  }

  return result;
}

unint64_t sub_20E2F928C()
{
  result = qword_27C86C7C8;
  if (!qword_27C86C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C7C8);
  }

  return result;
}

unint64_t sub_20E2F9E24()
{
  result = qword_27C86C8A8;
  if (!qword_27C86C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C8A8);
  }

  return result;
}

unint64_t sub_20E2F9E7C()
{
  result = qword_27C86C8B0;
  if (!qword_27C86C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C8B0);
  }

  return result;
}

unint64_t sub_20E2FA234()
{
  result = qword_27C86C900;
  if (!qword_27C86C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C900);
  }

  return result;
}

unint64_t sub_20E2FA28C()
{
  result = qword_27C86C908;
  if (!qword_27C86C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C908);
  }

  return result;
}

unint64_t sub_20E2FA524()
{
  result = qword_27C86C940;
  if (!qword_27C86C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C940);
  }

  return result;
}

unint64_t sub_20E2FA57C()
{
  result = qword_27C86C948;
  if (!qword_27C86C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C948);
  }

  return result;
}

unint64_t sub_20E2FA5D4()
{
  result = qword_27C86C950;
  if (!qword_27C86C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C950);
  }

  return result;
}

unint64_t sub_20E2FA62C()
{
  result = qword_27C86C958;
  if (!qword_27C86C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86C958);
  }

  return result;
}

unint64_t sub_20E2FB524()
{
  result = qword_27C86CA88;
  if (!qword_27C86CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86CA88);
  }

  return result;
}

unint64_t sub_20E2FB57C()
{
  result = qword_27C86CA90;
  if (!qword_27C86CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86CA90);
  }

  return result;
}

uint64_t sub_20E2FB810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E2FB878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E2FB8D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20E2FB940()
{
  result = qword_27C86D1E8;
  if (!qword_27C86D1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C86D1E0, &qword_20E3565A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C86D1E8);
  }

  return result;
}

uint64_t sub_20E2FB9A4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_20E2FBF4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868430, &unk_20E33C330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D57F28]) init];
  sub_20E2FC120(a1, v5);
  v7 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) != 1)
  {
    sub_20E2FC190(v5);
    v8 = [objc_allocWithZone(MEMORY[0x277D57E80]) init];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
      v11 = sub_20E322860();
      [v10 setDomain_];
    }

    if (v6)
    {
      v12 = objc_allocWithZone(MEMORY[0x277D57F30]);
      v13 = v6;
      v14 = [v12 init];
      [v13 setPlanGenerationModelOutputError_];
    }

    v15 = [v6 planGenerationModelOutputError];
    [v15 setError_];
  }

  return v6;
}

uint64_t sub_20E2FC120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868430, &unk_20E33C330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E2FC190(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868430, &unk_20E33C330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TranscriptProtoEvent.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688A0, &qword_20E33B858);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v52 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = &v52 - v12;
  v13 = sub_20E322010();
  v53 = *(v13 - 8);
  v54 = v13;
  v14 = *(v53 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C0, &qword_20E33B870);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v52 - v23;
  v56 = 0;
  v57 = 0xE000000000000000;
  sub_20E322B00();
  MEMORY[0x20F32BF40](0x206E6F6973736553, 0xEC000000203A4449);
  MEMORY[0x20F32BF40](v1[2], v1[3]);
  MEMORY[0x20F32BF40](0xD000000000000014, 0x800000020E363D20);
  MEMORY[0x20F32BF40](v1[6], v1[7]);
  MEMORY[0x20F32BF40](0xD000000000000014, 0x800000020E363D40);
  MEMORY[0x20F32BF40](v1[4], v1[5]);
  MEMORY[0x20F32BF40](0x646574616572430ALL, 0xED0000203A746120);
  v25 = type metadata accessor for TranscriptProtoEvent(0);
  sub_20E0486F4(v0 + v25[13], v20, &qword_27C8688C0, &qword_20E33B870);
  v26 = type metadata accessor for TranscriptProtoTimepoint(0);
  if ((*(*(v26 - 8) + 48))(v20, 1, v26) == 1)
  {
    v27 = &qword_27C8688C0;
    v28 = &qword_20E33B870;
    v29 = v20;
LABEL_5:
    sub_20E04875C(v29, v27, v28);
    v32 = 0xE300000000000000;
    v33 = 7104878;
    goto LABEL_7;
  }

  sub_20E0486F4(&v20[*(v26 + 28)], v24, &qword_27C868778, &unk_20E33C000);
  sub_20E2FFB7C(v20, type metadata accessor for TranscriptProtoTimepoint);
  v30 = sub_20E322150();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v24, 1, v30) == 1)
  {
    v27 = &qword_27C868778;
    v28 = &unk_20E33C000;
    v29 = v24;
    goto LABEL_5;
  }

  sub_20E322140();
  (*(v31 + 8))(v24, v30);
  v34 = sub_20E321F30();
  v32 = v35;
  (*(v53 + 8))(v16, v54);
  v33 = v34;
LABEL_7:
  MEMORY[0x20F32BF40](v33, v32);

  MEMORY[0x20F32BF40](0x64616F6C7961500ALL, 0xEA0000000000203ALL);
  sub_20E0486F4(v1 + v25[11], v9, &qword_27C863FC0, &unk_20E325F70);
  v36 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v36 - 8) + 48))(v9, 1, v36) == 1)
  {
    v37 = &qword_27C863FC0;
    v38 = &unk_20E325F70;
    v39 = v9;
LABEL_11:
    sub_20E04875C(v39, v37, v38);
    v42 = 0xE300000000000000;
    v43 = 7104878;
    goto LABEL_13;
  }

  v40 = v55;
  sub_20E0486F4(v9, v55, &qword_27C863FC8, &unk_20E33C1D0);
  sub_20E2FFB7C(v9, type metadata accessor for TranscriptProtoPayload);
  v41 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
  {
    v37 = &qword_27C863FC8;
    v38 = &unk_20E33C1D0;
    v39 = v40;
    goto LABEL_11;
  }

  v44 = TranscriptProtoPayloadEnum.eventTypeString.getter();
  v42 = v45;
  sub_20E2FFB7C(v40, type metadata accessor for TranscriptProtoPayloadEnum);
  v43 = v44;
LABEL_13:
  MEMORY[0x20F32BF40](v43, v42);

  MEMORY[0x20F32BF40](0xD000000000000010, 0x800000020E363D60);
  sub_20E0486F4(v1 + v25[15], v5, &qword_27C8688A0, &qword_20E33B858);
  v46 = type metadata accessor for TranscriptProtoSpanID(0);
  if ((*(*(v46 - 8) + 48))(v5, 1, v46) == 1)
  {
    sub_20E04875C(v5, &qword_27C8688A0, &qword_20E33B858);
    v47 = 0xE300000000000000;
    v48 = 7104878;
  }

  else
  {
    sub_20E2FC91C();
    v49 = sub_20E322470();
    v47 = v50;
    sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoSpanID);
    v48 = v49;
  }

  MEMORY[0x20F32BF40](v48, v47);

  return v56;
}

unint64_t sub_20E2FC91C()
{
  result = qword_280E0FDC8[0];
  if (!qword_280E0FDC8[0])
  {
    type metadata accessor for TranscriptProtoSpanID(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E0FDC8);
  }

  return result;
}

unint64_t TranscriptProtoPayloadEnum.eventTypeString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E2FFB14(v1, v5, type metadata accessor for TranscriptProtoPayloadEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x616C50664F646E45;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x74736575716552;
      break;
    case 2:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x616572436E616C50;
      break;
    case 3:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x72436E6F69746341;
      break;
    case 4:
    case 12:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000013;
      break;
    case 5:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x4373656972657551;
      break;
    case 6:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x656C626169726156;
      break;
    case 7:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x6C61636974697243;
      break;
    case 8:
    case 15:
    case 29:
    case 33:
    case 36:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000010;
      break;
    case 9:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x4573656972657551;
      break;
    case 10:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD00000000000001CLL;
      break;
    case 11:
    case 14:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000011;
      break;
    case 13:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      v8 = 9;
      goto LABEL_28;
    case 16:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x61436E6F69746341;
      break;
    case 17:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x746552736C6F6F54;
      break;
    case 18:
    case 35:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000017;
      break;
    case 19:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000012;
      break;
    case 20:
    case 21:
    case 27:
    case 34:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000014;
      break;
    case 22:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000023;
      break;
    case 23:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x6F7365526C6F6F54;
      break;
    case 24:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x6F6465526F646E55;
      break;
    case 25:
    case 26:
    case 28:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      v8 = 5;
LABEL_28:
      result = v8 | 0xD000000000000010;
      break;
    case 30:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD00000000000001FLL;
      break;
    case 31:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x7461745370696B53;
      break;
    case 32:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0xD000000000000025;
      break;
    case 37:
      return result;
    case 38:
      result = 0x74616E696D726554;
      break;
    default:
      sub_20E2FFB7C(v5, type metadata accessor for TranscriptProtoPayloadEnum);
      result = 0x536E6F6973736553;
      break;
  }

  return result;
}

unint64_t TranscriptProtoStatementOutcomeEnum.description.getter()
{
  v1 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E2FFB14(v0, v4, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    v10 = 0x6572756C696146;
    v11 = 0x5374657070696E53;
    if (EnumCaseMultiPayload == 10)
    {
      v11 = 0xD000000000000013;
    }

    if (EnumCaseMultiPayload != 9)
    {
      v10 = v11;
    }

    v12 = 0xD000000000000012;
    if (EnumCaseMultiPayload == 7)
    {
      v12 = 0xD000000000000011;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v12 = 0xD00000000000001BLL;
    }

    if (EnumCaseMultiPayload <= 8)
    {
      v9 = v12;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v6 = 0x73736563637553;
    v7 = 0xD000000000000017;
    if (EnumCaseMultiPayload != 4)
    {
      v7 = 0xD000000000000013;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v7 = 0xD000000000000015;
    }

    v8 = 0xD000000000000012;
    if (EnumCaseMultiPayload != 1)
    {
      v8 = 0xD000000000000013;
    }

    if (EnumCaseMultiPayload)
    {
      v6 = v8;
    }

    if (EnumCaseMultiPayload <= 2)
    {
      v9 = v6;
    }

    else
    {
      v9 = v7;
    }
  }

  sub_20E2FFB7C(v4, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  return v9;
}

unint64_t TranscriptProtoPayloadEnum.description.getter()
{
  v127 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v0 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v129 = &v115 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v2 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v128 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  v4 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v124 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v6 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v122 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v8 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v120 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v10 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v118 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v12 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v117 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v139 = &v115 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v132 = &v115 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v136 = &v115 - v22;
  v23 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v134 = *(v23 - 8);
  v135 = v23;
  v24 = *(v134 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v130 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v131 = &v115 - v27;
  v28 = type metadata accessor for TranscriptProtoStatementResult(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v140 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  v31 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v33 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  v35 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched - 8);
  v138 = &v115 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TranscriptProtoSessionError(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v115 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  v133 = *(Results - 8);
  v42 = *(v133 + 64);
  MEMORY[0x28223BE20](Results - 8);
  v44 = (&v115 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v46 = *(*(StepResults - 8) + 64);
  MEMORY[0x28223BE20](StepResults - 8);
  v141 = &v115 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TranscriptProtoVariableStep(0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  v51 = &v115 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TranscriptProtoClientAction(0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v55 = &v115 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TranscriptProtoAction(0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8);
  v59 = &v115 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v63 = &v115 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E2FFB14(v142, v63, type metadata accessor for TranscriptProtoPayloadEnum);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x74736575716552;
    case 2u:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x616572436E616C50;
    case 3u:
      sub_20E2FFAAC(v63, v59, type metadata accessor for TranscriptProtoAction);
      v66 = TranscriptProtoAction.description.getter();
      v68 = type metadata accessor for TranscriptProtoAction;
      v69 = v59;
      goto LABEL_29;
    case 4u:
      sub_20E2FFAAC(v63, v55, type metadata accessor for TranscriptProtoClientAction);
      v66 = TranscriptProtoClientAction.description.getter();
      v68 = type metadata accessor for TranscriptProtoClientAction;
      v69 = v55;
      goto LABEL_29;
    case 5u:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x4373656972657551;
    case 6u:
      sub_20E2FFAAC(v63, v51, type metadata accessor for TranscriptProtoVariableStep);
      v90 = *v51;
      v91 = type metadata accessor for TranscriptProtoVariableSetter(0);
      v66 = MEMORY[0x20F32BFC0](v90, v91);
      v67 = type metadata accessor for TranscriptProtoVariableStep;
      goto LABEL_28;
    case 7u:
      sub_20E2FFAAC(v63, v40, type metadata accessor for TranscriptProtoSessionError);
      v144 = 0;
      v145 = 0xE000000000000000;
      MEMORY[0x20F32BF40](0x6F6261203A6D6C6CLL, 0xEC00000028207472);
      sub_20E322BA0();
      MEMORY[0x20F32BF40](41, 0xE100000000000000);
      v66 = v144;
      v68 = type metadata accessor for TranscriptProtoSessionError;
      v69 = v40;
      goto LABEL_29;
    case 8u:
    case 0x1Du:
    case 0x21u:
    case 0x24u:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000010;
    case 9u:
      v70 = v141;
      sub_20E2FFAAC(v63, v141, type metadata accessor for TranscriptProtoQueryStepResults);
      v71 = *v70;
      v72 = *(*v70 + 16);
      v73 = MEMORY[0x277D84F90];
      if (v72)
      {
        v143 = MEMORY[0x277D84F90];
        sub_20E2FFA8C(0, v72, 0);
        v73 = v143;
        v74 = v71 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
        v75 = *(v133 + 72);
        do
        {
          sub_20E2FFB14(v74, v44, type metadata accessor for TranscriptProtoQueryResults);
          v144 = 0x203A646E756F66;
          v145 = 0xE700000000000000;
          v76 = *v44;
          v77 = type metadata accessor for TranscriptProtoCandidate(0);
          v78 = MEMORY[0x20F32BFC0](v76, v77);
          MEMORY[0x20F32BF40](v78);

          v80 = v144;
          v79 = v145;
          sub_20E2FFB7C(v44, type metadata accessor for TranscriptProtoQueryResults);
          v143 = v73;
          v82 = *(v73 + 16);
          v81 = *(v73 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_20E2FFA8C((v81 > 1), v82 + 1, 1);
            v73 = v143;
          }

          *(v73 + 16) = v82 + 1;
          v83 = v73 + 16 * v82;
          *(v83 + 32) = v80;
          *(v83 + 40) = v79;
          v74 += v75;
          --v72;
        }

        while (v72);
      }

      v144 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868900, &qword_20E357400);
      sub_20E19B638();
      v84 = sub_20E322830();

      v85 = type metadata accessor for TranscriptProtoQueryStepResults;
      v86 = v141;
      goto LABEL_14;
    case 0xAu:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD00000000000001CLL;
    case 0xBu:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000011;
    case 0xCu:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000013;
    case 0xDu:
      v87 = type metadata accessor for TranscriptProtoPayloadEnum;
      v88 = v63;
      goto LABEL_26;
    case 0xEu:
      v51 = v138;
      sub_20E2FFAAC(v63, v138, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
      v144 = 0;
      v145 = 0xE000000000000000;
      sub_20E322B00();

      v144 = 0x20646E756F66;
      v145 = 0xE600000000000000;
      v143 = *(*v51 + 16);
      v65 = sub_20E322D50();
      MEMORY[0x20F32BF40](v65);

      MEMORY[0x20F32BF40](0x616D206E61707320, 0xED00007365686374);
      v66 = v144;
      v67 = type metadata accessor for TranscriptProtoEntitySpanMatchResult;
      goto LABEL_28;
    case 0xFu:
      sub_20E2FFAAC(v63, v33, type metadata accessor for TranscriptProtoContextRetrieved);
      v144 = 0;
      v145 = 0xE000000000000000;
      sub_20E322B00();
      MEMORY[0x20F32BF40](0xD000000000000013, 0x800000020E364100);
      sub_20E322BA0();
      v66 = v144;
      v68 = type metadata accessor for TranscriptProtoContextRetrieved;
      v69 = v33;
      goto LABEL_29;
    case 0x10u:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x43206E6F69746361;
    case 0x11u:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x657220736C6F6F54;
    case 0x12u:
    case 0x23u:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000017;
    case 0x13u:
      v51 = v140;
      sub_20E2FFAAC(v63, v140, type metadata accessor for TranscriptProtoStatementResult);
      v92 = v139;
      sub_20E0486F4(&v51[*(v28 + 20)], v139, &qword_27C863FB8, &unk_20E325F60);
      v93 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
      if ((*(*(v93 - 8) + 48))(v92, 1, v93) == 1)
      {
        sub_20E04875C(v92, &qword_27C863FB8, &unk_20E325F60);
        v94 = v135;
        v95 = v136;
LABEL_47:
        (*(v134 + 56))(v95, 1, 1, v94);
LABEL_48:
        sub_20E04875C(v95, &qword_27C863BA0, &unk_20E325F20);
        sub_20E2FFB7C(v51, type metadata accessor for TranscriptProtoStatementResult);
        return 0x203A746C75736572;
      }

      v98 = v132;
      sub_20E0486F4(v92, v132, &qword_27C863BA8, &unk_20E345F00);
      sub_20E2FFB7C(v92, type metadata accessor for TranscriptProtoStatementResultPayload);
      v99 = type metadata accessor for TranscriptProtoStatementOutcome(0);
      v100 = (*(*(v99 - 8) + 48))(v98, 1, v99);
      v94 = v135;
      v95 = v136;
      if (v100 == 1)
      {
        sub_20E04875C(v98, &qword_27C863BA8, &unk_20E345F00);
        goto LABEL_47;
      }

      sub_20E0486F4(v98, v136, &qword_27C863BA0, &unk_20E325F20);
      sub_20E2FFB7C(v98, type metadata accessor for TranscriptProtoStatementOutcome);
      if ((*(v134 + 48))(v95, 1, v94) == 1)
      {
        goto LABEL_48;
      }

      v101 = v131;
      sub_20E2FFAAC(v95, v131, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v102 = v130;
      sub_20E2FFB14(v101, v130, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload > 8)
        {
          if (EnumCaseMultiPayload == 9)
          {
            sub_20E2FFB7C(v101, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            sub_20E2FFB7C(v51, type metadata accessor for TranscriptProtoStatementResult);
            sub_20E2FFB7C(v102, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            return 0x203A746C75736572;
          }

          if (EnumCaseMultiPayload == 10)
          {
            sub_20E2FFB7C(v101, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            sub_20E2FFB7C(v51, type metadata accessor for TranscriptProtoStatementResult);
            sub_20E2FFB7C(v102, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            v89 = 11;
          }

          else
          {
            sub_20E2FFB7C(v101, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            sub_20E2FFB7C(v51, type metadata accessor for TranscriptProtoStatementResult);
            v97 = v102;
            v96 = type metadata accessor for TranscriptProtoStatementOutcomeEnum;
LABEL_42:
            sub_20E2FFB7C(v97, v96);
            v89 = 5;
          }
        }

        else
        {
          if (EnumCaseMultiPayload == 6)
          {
            v111 = v129;
            sub_20E2FFAAC(v102, v129, type metadata accessor for TranscriptProtoParameterCandidatesNotFound);
            v144 = 0;
            v145 = 0xE000000000000000;
            MEMORY[0x20F32BF40](0x203A746C75736572, 0xE800000000000000);
            sub_20E322BA0();
            v84 = v144;
            v112 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound;
            goto LABEL_73;
          }

          if (EnumCaseMultiPayload == 7)
          {
            sub_20E2FFB7C(v101, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            sub_20E2FFB7C(v51, type metadata accessor for TranscriptProtoStatementResult);
            v88 = v102;
            v87 = type metadata accessor for TranscriptProtoStatementOutcomeEnum;
LABEL_26:
            sub_20E2FFB7C(v88, v87);
            v89 = 9;
          }

          else
          {
            sub_20E2FFB7C(v101, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            sub_20E2FFB7C(v51, type metadata accessor for TranscriptProtoStatementResult);
            sub_20E2FFB7C(v102, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
            v89 = 10;
          }
        }

        return v89 | 0xD000000000000010;
      }

      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v104 = v102;
            v105 = v118;
            sub_20E2FFAAC(v104, v118, type metadata accessor for TranscriptProtoActionConfirmation);
            v144 = 0;
            v145 = 0xE000000000000000;
            MEMORY[0x20F32BF40](0x203A746C75736572, 0xE800000000000000);
            sub_20E322BA0();
            v66 = v144;
            v106 = type metadata accessor for TranscriptProtoActionConfirmation;
          }

          else
          {
            v114 = v102;
            v105 = v120;
            sub_20E2FFAAC(v114, v120, type metadata accessor for TranscriptProtoParameterNeedsValue);
            v144 = 0;
            v145 = 0xE000000000000000;
            MEMORY[0x20F32BF40](0x203A746C75736572, 0xE800000000000000);
            sub_20E322BA0();
            v66 = v144;
            v106 = type metadata accessor for TranscriptProtoParameterNeedsValue;
          }
        }

        else
        {
          v108 = v102;
          v105 = v117;
          sub_20E2FFAAC(v108, v117, type metadata accessor for TranscriptProtoActionSuccess);
          v144 = 0x203A746C75736572;
          v145 = 0xE800000000000000;
          v109 = *(v116 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
          v110 = sub_20E322A80();
          MEMORY[0x20F32BF40](v110);

          v66 = v144;
          v106 = type metadata accessor for TranscriptProtoActionSuccess;
        }

LABEL_70:
        sub_20E2FFB7C(v105, v106);
        sub_20E2FFB7C(v101, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        v67 = type metadata accessor for TranscriptProtoStatementResult;
LABEL_28:
        v68 = v67;
        v69 = v51;
LABEL_29:
        sub_20E2FFB7C(v69, v68);
        return v66;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v113 = v102;
        v105 = v122;
        sub_20E2FFAAC(v113, v122, type metadata accessor for TranscriptProtoParameterConfirmation);
        v144 = 0;
        v145 = 0xE000000000000000;
        MEMORY[0x20F32BF40](0x203A746C75736572, 0xE800000000000000);
        sub_20E322BA0();
        v66 = v144;
        v106 = type metadata accessor for TranscriptProtoParameterConfirmation;
        goto LABEL_70;
      }

      if (EnumCaseMultiPayload == 4)
      {
        v107 = v102;
        v105 = v124;
        sub_20E2FFAAC(v107, v124, type metadata accessor for TranscriptProtoParameterDisambiguation);
        v144 = 0;
        v145 = 0xE000000000000000;
        MEMORY[0x20F32BF40](0x203A746C75736572, 0xE800000000000000);
        sub_20E322BA0();
        v66 = v144;
        v106 = type metadata accessor for TranscriptProtoParameterDisambiguation;
        goto LABEL_70;
      }

      v111 = v128;
      sub_20E2FFAAC(v102, v128, type metadata accessor for TranscriptProtoParameterNotAllowed);
      v144 = 0;
      v145 = 0xE000000000000000;
      MEMORY[0x20F32BF40](0x203A746C75736572, 0xE800000000000000);
      sub_20E322BA0();
      v84 = v144;
      v112 = type metadata accessor for TranscriptProtoParameterNotAllowed;
LABEL_73:
      sub_20E2FFB7C(v111, v112);
      sub_20E2FFB7C(v101, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
      v85 = type metadata accessor for TranscriptProtoStatementResult;
      v86 = v51;
LABEL_14:
      sub_20E2FFB7C(v86, v85);
      return v84;
    case 0x14u:
    case 0x15u:
    case 0x1Bu:
    case 0x22u:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000014;
    case 0x16u:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000023;
    case 0x17u:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x6F7365526C6F6F54;
    case 0x18u:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x6F6465526F646E55;
    case 0x19u:
    case 0x1Au:
    case 0x1Cu:
      v96 = type metadata accessor for TranscriptProtoPayloadEnum;
      v97 = v63;
      goto LABEL_42;
    case 0x1Eu:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD00000000000001FLL;
    case 0x1Fu:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x7461745370696B53;
    case 0x20u:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0xD000000000000025;
    case 0x25u:
      return 0xD00000000000001FLL;
    case 0x26u:
      return 0xD00000000000001CLL;
    default:
      sub_20E2FFB7C(v63, type metadata accessor for TranscriptProtoPayloadEnum);
      return 0x536E6F6973736553;
  }
}