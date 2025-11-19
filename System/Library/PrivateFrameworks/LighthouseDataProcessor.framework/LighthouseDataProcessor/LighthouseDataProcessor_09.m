uint64_t sub_20E15992C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    v8 = qword_20E33B898[v5];
    v9 = qword_20E33B898[v7];
    result = v8 == v9;
    if (v8 != v9 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E159998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoSystemToolProtocolKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D8, &qword_20E33B888);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688E0, &qword_20E33B890);
  v12 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v14 = &v41 - v13;
  v48 = type metadata accessor for ToolKitProtoSystemToolProtocol(0);
  v15 = *(*(v48 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v48);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_19:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v43 = &v41 - v20;
  v44 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v46 = *(v19 + 72);
  v47 = v4;
  v27 = &qword_27C8688D8;
  v42 = v18;
  while (1)
  {
    result = sub_20E195BBC(v24, v21, type metadata accessor for ToolKitProtoSystemToolProtocol);
    if (!v22)
    {
      break;
    }

    v50 = v22;
    sub_20E195BBC(v25, v18, type metadata accessor for ToolKitProtoSystemToolProtocol);
    v29 = *(v49 + 48);
    sub_20E0486F4(v21, v14, v27, &qword_20E33B888);
    sub_20E0486F4(v18, &v14[v29], v27, &qword_20E33B888);
    v30 = *v26;
    v31 = v27;
    v32 = v47;
    if ((*v26)(v14, 1, v47) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        sub_20E195C24(v18, type metadata accessor for ToolKitProtoSystemToolProtocol);
        v40 = v21;
        v39 = type metadata accessor for ToolKitProtoSystemToolProtocol;
        goto LABEL_17;
      }

      v27 = v31;
      sub_20E04875C(v14, v31, &qword_20E33B888);
    }

    else
    {
      v33 = v26;
      v34 = v44;
      sub_20E0486F4(v14, v44, v31, &qword_20E33B888);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_20E195C24(v42, type metadata accessor for ToolKitProtoSystemToolProtocol);
        sub_20E195C24(v43, type metadata accessor for ToolKitProtoSystemToolProtocol);
        v39 = type metadata accessor for ToolKitProtoSystemToolProtocolKind;
        v40 = v34;
LABEL_17:
        sub_20E195C24(v40, v39);
        sub_20E04875C(v14, &qword_27C8688E0, &qword_20E33B890);
        goto LABEL_19;
      }

      v35 = v45;
      sub_20E195B54(&v14[v29], v45, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      v36 = static ToolKitProtoSystemToolProtocolKind.== infix(_:_:)(v34, v35);
      sub_20E195C24(v35, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      sub_20E195C24(v34, type metadata accessor for ToolKitProtoSystemToolProtocolKind);
      sub_20E04875C(v14, v31, &qword_20E33B888);
      v26 = v33;
      v18 = v42;
      v21 = v43;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        sub_20E195C24(v42, type metadata accessor for ToolKitProtoSystemToolProtocol);
        sub_20E195C24(v21, type metadata accessor for ToolKitProtoSystemToolProtocol);
        goto LABEL_19;
      }
    }

    v37 = *(v48 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v38 = sub_20E322850();
    sub_20E195C24(v18, type metadata accessor for ToolKitProtoSystemToolProtocol);
    sub_20E195C24(v21, type metadata accessor for ToolKitProtoSystemToolProtocol);
    if (v38)
    {
      v22 = v50 - 1;
      v25 += v46;
      v24 += v46;
      if (v50 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E159F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_20E159F90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E60, &qword_20E33AF40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v61 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E68, &qword_20E33AF48);
  v13 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v15 = &v61 - v14;
  v73 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation(0);
  v77 = *(v73 - 8);
  v16 = *(v77 + 64);
  MEMORY[0x28223BE20](v73);
  v75 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E70, &unk_20E346370);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v61 - v20;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E78, &qword_20E33AF50);
  v22 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v61 - v23;
  v78 = type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship(0);
  v24 = *(*(v78 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v78);
  v27 = (&v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v30 = (&v61 - v29);
  v31 = *(a1 + 16);
  if (v31 != *(a2 + 16))
  {
LABEL_31:
    v60 = 0;
    return v60 & 1;
  }

  if (!v31 || a1 == a2)
  {
    v60 = 1;
    return v60 & 1;
  }

  v32 = *(a1 + 16);
  v62 = v8;
  v63 = v12;
  v67 = v4;
  v33 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v34 = a1 + v33;
  v35 = a2 + v33;
  v70 = (v77 + 48);
  v71 = &v61 - v29;
  v65 = v15;
  v66 = (v5 + 48);
  v68 = *(v28 + 72);
  v36 = v73;
  v37 = v74;
  v38 = v32;
  v64 = v21;
  v72 = v27;
  while (1)
  {
    result = sub_20E195BBC(v34, v30, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    if (!v38)
    {
      break;
    }

    v77 = v38;
    sub_20E195BBC(v35, v27, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    v40 = *v30 == *v27 && v30[1] == v27[1];
    if (!v40 && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_30;
    }

    v41 = *(v78 + 20);
    v42 = *(v76 + 48);
    sub_20E0486F4(v30 + v41, v37, &qword_27C867E70, &unk_20E346370);
    sub_20E0486F4(v27 + v41, v37 + v42, &qword_27C867E70, &unk_20E346370);
    v43 = *v70;
    if ((*v70)(v37, 1, v36) == 1)
    {
      v44 = v43(v37 + v42, 1, v36);
      v27 = v72;
      if (v44 != 1)
      {
        goto LABEL_26;
      }

      sub_20E04875C(v37, &qword_27C867E70, &unk_20E346370);
      v30 = v71;
    }

    else
    {
      sub_20E0486F4(v37, v21, &qword_27C867E70, &unk_20E346370);
      if (v43(v37 + v42, 1, v36) == 1)
      {
        sub_20E195C24(v21, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
        v27 = v72;
LABEL_26:
        sub_20E04875C(v37, &qword_27C867E78, &qword_20E33AF50);
        v30 = v71;
        goto LABEL_30;
      }

      v45 = v75;
      sub_20E195B54(v37 + v42, v75, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
      v46 = *(v69 + 48);
      v47 = v65;
      sub_20E0486F4(v21, v65, &qword_27C867E60, &qword_20E33AF40);
      sub_20E0486F4(v45, v47 + v46, &qword_27C867E60, &qword_20E33AF40);
      v48 = v67;
      v49 = *v66;
      if ((*v66)(v47, 1, v67) == 1)
      {
        if (v49(v47 + v46, 1, v48) != 1)
        {
          goto LABEL_28;
        }

        sub_20E04875C(v47, &qword_27C867E60, &qword_20E33AF40);
      }

      else
      {
        v50 = v63;
        sub_20E0486F4(v47, v63, &qword_27C867E60, &qword_20E33AF40);
        if (v49(v47 + v46, 1, v48) == 1)
        {
          sub_20E195C24(v50, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
LABEL_28:
          sub_20E04875C(v47, &qword_27C867E68, &qword_20E33AF48);
LABEL_29:
          sub_20E195C24(v75, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
          sub_20E195C24(v64, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
          sub_20E04875C(v74, &qword_27C867E70, &unk_20E346370);
          v30 = v71;
          v27 = v72;
LABEL_30:
          sub_20E195C24(v27, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          sub_20E195C24(v30, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
          goto LABEL_31;
        }

        v51 = v62;
        sub_20E195B54(v47 + v46, v62, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        v52 = static ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind.== infix(_:_:)(v50, v51);
        sub_20E195C24(v51, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        sub_20E195C24(v50, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.ToolKitProtoRelationKind);
        sub_20E04875C(v47, &qword_27C867E60, &qword_20E33AF40);
        if ((v52 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v53 = v73;
      v54 = *(v73 + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v55 = v64;
      v56 = v75;
      v57 = sub_20E322850();
      v58 = v56;
      v36 = v53;
      sub_20E195C24(v58, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
      v21 = v55;
      sub_20E195C24(v55, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship.Relation);
      v37 = v74;
      sub_20E04875C(v74, &qword_27C867E70, &unk_20E346370);
      v30 = v71;
      v27 = v72;
      if ((v57 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v59 = *(v78 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v60 = sub_20E322850();
    sub_20E195C24(v27, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    sub_20E195C24(v30, type metadata accessor for ToolKitProtoToolDefinition.Version1.Parameter.Relationship);
    if (v60)
    {
      v38 = v77 - 1;
      v35 += v68;
      v34 += v68;
      if (v77 != 1)
      {
        continue;
      }
    }

    return v60 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15A850(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15A8AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoBoundingBox(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BE8, &qword_20E323ED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v49 - v11);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE0, &qword_20E33AFB0);
  v13 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v57 = &v49 - v14;
  v58 = type metadata accessor for ContextProtoSurroundingText(0);
  v15 = *(*(v58 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v58);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v21 = (&v49 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_51;
  }

  if (!v22 || a1 == a2)
  {
    v45 = 1;
    return v45 & 1;
  }

  v53 = v4;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v51 = v18;
  v52 = (v5 + 48);
  v49 = *(v19 + 72);
  v50 = (&v49 - v20);
  while (1)
  {
    sub_20E195BBC(v24, v21, type metadata accessor for ContextProtoSurroundingText);
    sub_20E195BBC(v25, v18, type metadata accessor for ContextProtoSurroundingText);
    v26 = v21[1];
    v27 = v18[1];
    if (v26)
    {
      if (!v27 || (*v21 != *v18 || v26 != v27) && (sub_20E322D60() & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (v27)
    {
      goto LABEL_46;
    }

    v56 = v25;
    v54 = v24;
    v28 = v8;
    v29 = v57;
    v30 = *(v58 + 20);
    v31 = *(v55 + 48);
    sub_20E0486F4(v21 + v30, v57, &qword_27C863BE8, &qword_20E323ED0);
    v32 = v18 + v30;
    v33 = v29;
    sub_20E0486F4(v32, v29 + v31, &qword_27C863BE8, &qword_20E323ED0);
    v34 = *v52;
    v35 = v29;
    v36 = v53;
    if ((*v52)(v35, 1, v53) != 1)
    {
      break;
    }

    if (v34(v33 + v31, 1, v36) != 1)
    {
      v46 = type metadata accessor for ContextProtoSurroundingText;
      v47 = v50;
      goto LABEL_49;
    }

    sub_20E04875C(v33, &qword_27C863BE8, &qword_20E323ED0);
    v8 = v28;
    v21 = v50;
    v18 = v51;
    v37 = v56;
LABEL_41:
    v44 = *(v58 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v45 = sub_20E322850();
    sub_20E195C24(v21, type metadata accessor for ContextProtoSurroundingText);
    sub_20E195C24(v18, type metadata accessor for ContextProtoSurroundingText);
    if (v45)
    {
      v25 = v37 + v49;
      v24 = v54 + v49;
      if (--v22)
      {
        continue;
      }
    }

    return v45 & 1;
  }

  sub_20E0486F4(v33, v12, &qword_27C863BE8, &qword_20E323ED0);
  if (v34(v33 + v31, 1, v36) != 1)
  {
    v8 = v28;
    sub_20E195B54(v33 + v31, v28, type metadata accessor for ContextProtoBoundingBox);
    v38 = *(v28 + 4);
    v21 = v50;
    if (v12[1])
    {
      v18 = v51;
      v37 = v56;
      if (!v38)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (*v12 != *v28)
      {
        LOBYTE(v38) = 1;
      }

      v18 = v51;
      v37 = v56;
      if (v38)
      {
LABEL_45:
        sub_20E195C24(v8, type metadata accessor for ContextProtoBoundingBox);
        sub_20E195C24(v12, type metadata accessor for ContextProtoBoundingBox);
        sub_20E04875C(v57, &qword_27C863BE8, &qword_20E323ED0);
LABEL_46:
        sub_20E195C24(v21, type metadata accessor for ContextProtoSurroundingText);
        goto LABEL_50;
      }
    }

    v39 = *(v8 + 12);
    if (v12[3])
    {
      if (!*(v8 + 12))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v12[2] != v8[2])
      {
        v39 = 1;
      }

      if (v39)
      {
        goto LABEL_45;
      }
    }

    v40 = *(v8 + 20);
    if (v12[5])
    {
      if (!*(v8 + 20))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v12[4] != v8[4])
      {
        v40 = 1;
      }

      if (v40)
      {
        goto LABEL_45;
      }
    }

    v41 = *(v8 + 28);
    if (v12[7])
    {
      if (!*(v8 + 28))
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v12[6] != v8[6])
      {
        v41 = 1;
      }

      if (v41)
      {
        goto LABEL_45;
      }
    }

    v42 = *(v53 + 32);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v43 = sub_20E322850();
    sub_20E195C24(v8, type metadata accessor for ContextProtoBoundingBox);
    sub_20E195C24(v12, type metadata accessor for ContextProtoBoundingBox);
    sub_20E04875C(v57, &qword_27C863BE8, &qword_20E323ED0);
    if ((v43 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  sub_20E195C24(v50, type metadata accessor for ContextProtoSurroundingText);
  v46 = type metadata accessor for ContextProtoBoundingBox;
  v47 = v12;
LABEL_49:
  sub_20E195C24(v47, v46);
  sub_20E04875C(v33, &qword_27C867EE0, &qword_20E33AFB0);
  v18 = v51;
LABEL_50:
  sub_20E195C24(v18, type metadata accessor for ContextProtoSurroundingText);
LABEL_51:
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_20E15AFBC(uint64_t a1, uint64_t a2)
{
  v64 = type metadata accessor for TranscriptProtoStatementID(0);
  v4 = *(v64 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v64);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v59 - v10;
  MEMORY[0x28223BE20](v9);
  v62 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F28, &qword_20E33AFF8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  result = MEMORY[0x28223BE20](v15);
  v65 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v65 + 16))
  {
    return 0;
  }

  v60 = a1;
  v61 = &v59 - v17;
  v63 = v18;
  v19 = 0;
  v20 = *(a1 + 64);
  v59 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v66 = (v23 - 1) & v23;
    v27 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_18:
    v33 = (*(v60 + 48) + 16 * v27);
    v35 = *v33;
    v34 = v33[1];
    v36 = v62;
    sub_20E195BBC(*(v60 + 56) + *(v4 + 72) * v27, v62, type metadata accessor for TranscriptProtoStatementID);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F18, &qword_20E325D28);
    v38 = *(v37 + 48);
    v39 = v63;
    *v63 = v35;
    v39[1] = v34;
    v40 = v36;
    v30 = v39;
    sub_20E195B54(v40, v39 + v38, type metadata accessor for TranscriptProtoStatementID);
    (*(*(v37 - 8) + 56))(v30, 0, 1, v37);

LABEL_19:
    v41 = v30;
    v42 = v61;
    sub_20E195AA4(v41, v61, &qword_27C867F28, &qword_20E33AFF8);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F18, &qword_20E325D28);
    v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
    v45 = v44 == 1;
    if (v44 == 1)
    {
      return v45;
    }

    v46 = v42;
    v47 = v8;
    v48 = *(v43 + 48);
    v49 = *v46;
    v50 = v46[1];
    sub_20E195B54(v46 + v48, v11, type metadata accessor for TranscriptProtoStatementID);
    v51 = v49;
    v52 = v65;
    v53 = sub_20E1ACAD0(v51, v50);
    v55 = v54;

    if ((v55 & 1) == 0)
    {
      goto LABEL_31;
    }

    v8 = v47;
    sub_20E195BBC(*(v52 + 56) + *(v4 + 72) * v53, v47, type metadata accessor for TranscriptProtoStatementID);
    if (*v47 != *v11)
    {
      goto LABEL_30;
    }

    v56 = *(v47 + 16);
    v57 = *(v11 + 2);
    if (v56)
    {
      if (!v57 || (*(v47 + 8) != *(v11 + 1) || v56 != v57) && (sub_20E322D60() & 1) == 0)
      {
LABEL_30:
        sub_20E195C24(v47, type metadata accessor for TranscriptProtoStatementID);
LABEL_31:
        sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
        return 0;
      }
    }

    else if (v57)
    {
      goto LABEL_30;
    }

    v25 = *(v64 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v26 = sub_20E322850();
    sub_20E195C24(v47, type metadata accessor for TranscriptProtoStatementID);
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
    v23 = v66;
    if ((v26 & 1) == 0)
    {
      return v45;
    }
  }

  if (v24 <= v19 + 1)
  {
    v28 = v19 + 1;
  }

  else
  {
    v28 = v24;
  }

  v29 = v28 - 1;
  v30 = v63;
  while (1)
  {
    v31 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v31 >= v24)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F18, &qword_20E325D28);
      (*(*(v58 - 8) + 56))(v30, 1, 1, v58);
      v66 = 0;
      v19 = v29;
      goto LABEL_19;
    }

    v32 = *(v59 + 8 * v31);
    ++v19;
    if (v32)
    {
      v66 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v19 = v31;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15B558(uint64_t a1, uint64_t a2)
{
  v91 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v4 = *(v91 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v91);
  v77 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v74 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868160, &qword_20E33B208);
  v11 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v13 = &v74 - v12;
  v82 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v89 = *(v82 - 8);
  v14 = *(v89 + 64);
  v15 = MEMORY[0x28223BE20](v82);
  v90 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v74 - v18;
  MEMORY[0x28223BE20](v17);
  v81 = &v74 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868218, &qword_20E33B2B8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = (&v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v23);
  v84 = (&v74 - v27);
  v85 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v85 + 16))
  {
    return 0;
  }

  v28 = 0;
  v78 = a1;
  v29 = *(a1 + 64);
  v75 = a1 + 64;
  v76 = v10;
  v30 = 1 << *(a1 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v33 = (v30 + 63) >> 6;
  v88 = (v4 + 48);
  v34 = &qword_20E3263B8;
  v79 = v25;
  v80 = v33;
  while (v32)
  {
    v87 = (v32 - 1) & v32;
    v38 = __clz(__rbit64(v32)) | (v28 << 6);
LABEL_17:
    v44 = (*(v78 + 48) + 16 * v38);
    v46 = *v44;
    v45 = v44[1];
    v47 = v81;
    sub_20E195BBC(*(v78 + 56) + *(v89 + 72) * v38, v81, type metadata accessor for TranscriptProtoASTFlatValue);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868220, &qword_20E33B2C0);
    v49 = *(v48 + 48);
    *v25 = v46;
    v25[1] = v45;
    sub_20E195B54(v47, v25 + v49, type metadata accessor for TranscriptProtoASTFlatValue);
    (*(*(v48 - 8) + 56))(v25, 0, 1, v48);

    v41 = v84;
LABEL_18:
    sub_20E195AA4(v25, v41, &qword_27C868218, &qword_20E33B2B8);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868220, &qword_20E33B2C0);
    v51 = (*(*(v50 - 8) + 48))(v41, 1, v50);
    v86 = v51 == 1;
    if (v51 == 1)
    {
      return v86;
    }

    v52 = v34;
    v53 = v88;
    v54 = v13;
    v55 = v91;
    v56 = *(v50 + 48);
    v57 = *v41;
    v58 = v41[1];
    sub_20E195B54(v41 + v56, v19, type metadata accessor for TranscriptProtoASTFlatValue);
    v59 = v85;
    v60 = sub_20E1ACAD0(v57, v58);
    v61 = v19;
    v63 = v62;

    if ((v63 & 1) == 0)
    {
      goto LABEL_31;
    }

    v64 = v90;
    sub_20E195BBC(*(v59 + 56) + *(v89 + 72) * v60, v90, type metadata accessor for TranscriptProtoASTFlatValue);
    v65 = *(v83 + 48);
    v13 = v54;
    v66 = v54;
    v34 = v52;
    sub_20E0486F4(v64, v66, &qword_27C865F58, v52);
    sub_20E0486F4(v61, &v13[v65], &qword_27C865F58, v52);
    v67 = *v53;
    v19 = v61;
    if ((*v53)(v13, 1, v55) == 1)
    {
      if (v67(&v13[v65], 1, v91) != 1)
      {
        goto LABEL_29;
      }

      v34 = v52;
      sub_20E04875C(v13, &qword_27C865F58, v52);
    }

    else
    {
      v68 = v13;
      v69 = v13;
      v70 = v76;
      sub_20E0486F4(v68, v76, &qword_27C865F58, v52);
      if (v67((v69 + v65), 1, v91) == 1)
      {
        sub_20E195C24(v70, type metadata accessor for TranscriptProtoAstflatValueEnum);
        v13 = v69;
        v19 = v61;
LABEL_29:
        sub_20E04875C(v13, &qword_27C868160, &qword_20E33B208);
LABEL_30:
        sub_20E195C24(v90, type metadata accessor for TranscriptProtoASTFlatValue);
        v61 = v19;
LABEL_31:
        sub_20E195C24(v61, type metadata accessor for TranscriptProtoASTFlatValue);
        return 0;
      }

      v71 = v77;
      sub_20E195B54(v69 + v65, v77, type metadata accessor for TranscriptProtoAstflatValueEnum);
      v72 = static TranscriptProtoAstflatValueEnum.== infix(_:_:)(v70, v71);
      sub_20E195C24(v71, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_20E195C24(v70, type metadata accessor for TranscriptProtoAstflatValueEnum);
      sub_20E04875C(v69, &qword_27C865F58, v52);
      v13 = v69;
      v19 = v61;
      if ((v72 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v35 = *(v82 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v36 = v90;
    v37 = sub_20E322850();
    sub_20E195C24(v36, type metadata accessor for TranscriptProtoASTFlatValue);
    result = sub_20E195C24(v19, type metadata accessor for TranscriptProtoASTFlatValue);
    v25 = v79;
    v33 = v80;
    v32 = v87;
    if ((v37 & 1) == 0)
    {
      return v86;
    }
  }

  if (v33 <= v28 + 1)
  {
    v39 = v28 + 1;
  }

  else
  {
    v39 = v33;
  }

  v40 = v39 - 1;
  v41 = v84;
  while (1)
  {
    v42 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v42 >= v33)
    {
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868220, &qword_20E33B2C0);
      (*(*(v73 - 8) + 56))(v25, 1, 1, v73);
      v87 = 0;
      v28 = v40;
      goto LABEL_18;
    }

    v43 = *(v75 + 8 * v42);
    ++v28;
    if (v43)
    {
      v87 = (v43 - 1) & v43;
      v38 = __clz(__rbit64(v43)) | (v42 << 6);
      v28 = v42;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15BDA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v122 = (&v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v105 - v10;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868648, &qword_20E33B658);
  v12 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v14 = &v105 - v13;
  v15 = type metadata accessor for ToolKitProtoTypedValue(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v118 = (&v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v105 - v21);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v23 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119);
  v125 = &v105 - v24;
  v25 = type metadata accessor for TranscriptProtoParameterValue(0);
  v26 = *(v25 - 8);
  v127 = v25;
  v128 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v129 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v126 = &v105 - v31;
  MEMORY[0x28223BE20](v30);
  v115 = &v105 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868690, &qword_20E33B690);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v121 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v35);
  v120 = (&v105 - v38);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v110 = v22;
  v112 = a2;
  v113 = v11;
  v39 = 0;
  v108 = a1;
  v117 = v15;
  v40 = *(a1 + 64);
  v107 = a1 + 64;
  v41 = 1 << *(a1 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v40;
  v106 = (v41 + 63) >> 6;
  v111 = (v16 + 48);
  v109 = (v5 + 48);
  v114 = v4;
  while (v43)
  {
    v124 = (v43 - 1) & v43;
    v50 = __clz(__rbit64(v43)) | (v39 << 6);
    v51 = v121;
LABEL_20:
    v56 = (*(v108 + 48) + 16 * v50);
    v58 = *v56;
    v57 = v56[1];
    v59 = v115;
    sub_20E195BBC(*(v108 + 56) + *(v128 + 72) * v50, v115, type metadata accessor for TranscriptProtoParameterValue);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868698, &qword_20E33B698);
    v61 = *(v60 + 48);
    *v51 = v58;
    v51[1] = v57;
    sub_20E195B54(v59, v51 + v61, type metadata accessor for TranscriptProtoParameterValue);
    (*(*(v60 - 8) + 56))(v51, 0, 1, v60);

LABEL_21:
    v62 = v120;
    sub_20E195AA4(v51, v120, &qword_27C868690, &qword_20E33B690);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868698, &qword_20E33B698);
    v64 = (*(*(v63 - 8) + 48))(v62, 1, v63) == 1;
    result = v64;
    if (v64)
    {
      return result;
    }

    v123 = v64;
    v65 = v14;
    v66 = *(v63 + 48);
    v67 = *v62;
    v68 = v62[1];
    v47 = v126;
    sub_20E195B54(v62 + v66, v126, type metadata accessor for TranscriptProtoParameterValue);
    v69 = v112;
    v70 = sub_20E1ACAD0(v67, v68);
    v72 = v71;

    if ((v72 & 1) == 0)
    {
      goto LABEL_60;
    }

    v73 = *(v69 + 56);
    v74 = v129;
    sub_20E195BBC(v73 + *(v128 + 72) * v70, v129, type metadata accessor for TranscriptProtoParameterValue);
    v75 = *(v119 + 48);
    v76 = v125;
    sub_20E0486F4(v74, v125, &qword_27C863B18, &qword_20E323EB0);
    sub_20E0486F4(v47, v76 + v75, &qword_27C863B18, &qword_20E323EB0);
    v77 = *v111;
    v78 = v117;
    if ((*v111)(v76, 1, v117) == 1)
    {
      v79 = v77(v76 + v75, 1, v78);
      v80 = v114;
      if (v79 != 1)
      {
        goto LABEL_52;
      }

      v14 = v65;
      sub_20E04875C(v76, &qword_27C863B18, &qword_20E323EB0);
    }

    else
    {
      v81 = v110;
      sub_20E0486F4(v76, v110, &qword_27C863B18, &qword_20E323EB0);
      v82 = v77(v76 + v75, 1, v78);
      v80 = v114;
      if (v82 == 1)
      {
        sub_20E195C24(v81, type metadata accessor for ToolKitProtoTypedValue);
LABEL_52:
        v102 = &qword_27C867ED8;
        v103 = &qword_20E33AFA8;
        v104 = v76;
LABEL_58:
        sub_20E04875C(v104, v102, v103);
        goto LABEL_59;
      }

      v14 = v65;
      v83 = v76 + v75;
      v84 = v118;
      sub_20E195B54(v83, v118, type metadata accessor for ToolKitProtoTypedValue);
      v85 = *v81;
      v86 = *v84;
      if ((~*v81 & 0xF000000000000007) != 0)
      {
        v131 = *v81;
        if ((~v86 & 0xF000000000000007) == 0)
        {
          sub_20E047CF8(v85);
          sub_20E047CF8(v86);
          sub_20E047CF8(v85);

LABEL_56:
          sub_20E047CA8(v85);
          sub_20E047CA8(v86);
          v47 = v126;
LABEL_57:
          sub_20E195C24(v118, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E195C24(v110, type metadata accessor for ToolKitProtoTypedValue);
          v102 = &qword_27C863B18;
          v103 = &qword_20E323EB0;
          v104 = v125;
          goto LABEL_58;
        }

        v130 = v86;
        sub_20E047CF8(v85);
        sub_20E047CF8(v86);
        sub_20E047CF8(v85);
        v87 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v131, &v130);

        sub_20E047CA8(v85);
        if ((v87 & 1) == 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        sub_20E047CF8(*v81);
        sub_20E047CF8(v86);
        if ((~v86 & 0xF000000000000007) != 0)
        {
          goto LABEL_56;
        }

        sub_20E047CA8(v85);
        v80 = v114;
        v47 = v126;
      }

      v88 = *(v117 + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v89 = v110;
      v90 = v118;
      LOBYTE(v88) = sub_20E322850();
      sub_20E195C24(v90, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E195C24(v89, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E04875C(v125, &qword_27C863B18, &qword_20E323EB0);
      if ((v88 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v91 = *(v127 + 20);
    v92 = *(v116 + 48);
    sub_20E0486F4(v129 + v91, v14, &qword_27C863B58, &qword_20E323E68);
    sub_20E0486F4(v47 + v91, &v14[v92], &qword_27C863B58, &qword_20E323E68);
    v93 = *v109;
    if ((*v109)(v14, 1, v80) == 1)
    {
      if (v93(&v14[v92], 1, v80) != 1)
      {
        goto LABEL_54;
      }

      sub_20E04875C(v14, &qword_27C863B58, &qword_20E323E68);
    }

    else
    {
      v94 = v113;
      sub_20E0486F4(v14, v113, &qword_27C863B58, &qword_20E323E68);
      if (v93(&v14[v92], 1, v80) == 1)
      {
        sub_20E195C24(v94, type metadata accessor for TranscriptProtoPromptSelection);
        v47 = v126;
LABEL_54:
        v102 = &qword_27C868648;
        v103 = &qword_20E33B658;
        v104 = v14;
        goto LABEL_58;
      }

      v95 = &v14[v92];
      v96 = v122;
      sub_20E195B54(v95, v122, type metadata accessor for TranscriptProtoPromptSelection);
      v97 = *(v96 + 9);
      if (*(v94 + 9))
      {
        if ((*(v96 + 9) & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (*(v96 + 9))
        {
          goto LABEL_50;
        }

        v98 = *v113;
        v99 = *v122;
        v100 = *(v122 + 8);
        if (v113[8])
        {
          if (v98)
          {
            if ((v122[1] & 1) == 0 || !v99)
            {
              goto LABEL_50;
            }
          }

          else if ((v122[1] & 1) == 0 || v99)
          {
            goto LABEL_50;
          }
        }

        else if ((v122[1] & 1) != 0 || v98 != v99)
        {
LABEL_50:
          sub_20E195C24(v122, type metadata accessor for TranscriptProtoPromptSelection);
          sub_20E195C24(v113, type metadata accessor for TranscriptProtoPromptSelection);
          sub_20E04875C(v14, &qword_27C863B58, &qword_20E323E68);
          v47 = v126;
LABEL_59:
          sub_20E195C24(v129, type metadata accessor for TranscriptProtoParameterValue);
LABEL_60:
          sub_20E195C24(v47, type metadata accessor for TranscriptProtoParameterValue);
          return 0;
        }
      }

      v44 = *(v80 + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v45 = v113;
      v46 = v122;
      LOBYTE(v44) = sub_20E322850();
      sub_20E195C24(v46, type metadata accessor for TranscriptProtoPromptSelection);
      sub_20E195C24(v45, type metadata accessor for TranscriptProtoPromptSelection);
      sub_20E04875C(v14, &qword_27C863B58, &qword_20E323E68);
      v47 = v126;
      if ((v44 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v48 = *(v127 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v49 = v129;
    LOBYTE(v48) = sub_20E322850();
    sub_20E195C24(v49, type metadata accessor for TranscriptProtoParameterValue);
    sub_20E195C24(v47, type metadata accessor for TranscriptProtoParameterValue);
    v43 = v124;
    result = v123;
    if ((v48 & 1) == 0)
    {
      return result;
    }
  }

  if (v106 <= v39 + 1)
  {
    v52 = v39 + 1;
  }

  else
  {
    v52 = v106;
  }

  v53 = v52 - 1;
  v51 = v121;
  while (1)
  {
    v54 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v54 >= v106)
    {
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868698, &qword_20E33B698);
      (*(*(v101 - 8) + 56))(v51, 1, 1, v101);
      v124 = 0;
      v39 = v53;
      goto LABEL_21;
    }

    v55 = *(v107 + 8 * v54);
    ++v39;
    if (v55)
    {
      v124 = (v55 - 1) & v55;
      v50 = __clz(__rbit64(v55)) | (v54 << 6);
      v39 = v54;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15CB48(uint64_t a1, uint64_t a2)
{
  v57 = type metadata accessor for ToolKitProtoTypedValue(0);
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v57);
  v59 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v50 - v9);
  MEMORY[0x28223BE20](v8);
  v56 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868228, &qword_20E33B2C8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  result = MEMORY[0x28223BE20](v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v16);
  v55 = v17;
  v18 = 0;
  v51 = a1;
  v52 = v4;
  v19 = *(a1 + 64);
  v50 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v53 = v10;
  while (v22)
  {
    v58 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v18 << 6);
    v28 = v55;
LABEL_17:
    v33 = *(*(v51 + 48) + 4 * v27);
    v34 = v56;
    sub_20E195BBC(*(v51 + 56) + *(v4 + 72) * v27, v56, type metadata accessor for ToolKitProtoTypedValue);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868230, &qword_20E33B2D0);
    v36 = *(v35 + 48);
    *v28 = v33;
    sub_20E195B54(v34, v28 + v36, type metadata accessor for ToolKitProtoTypedValue);
    (*(*(v35 - 8) + 56))(v28, 0, 1, v35);
LABEL_18:
    v37 = v54;
    sub_20E195AA4(v28, v54, &qword_27C868228, &qword_20E33B2C8);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868230, &qword_20E33B2D0);
    v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = *(v38 + 48);
    v42 = *v37;
    sub_20E195B54(v37 + v41, v10, type metadata accessor for ToolKitProtoTypedValue);
    v43 = sub_20E1ACB48(v42);
    if ((v44 & 1) == 0)
    {
      goto LABEL_31;
    }

    v45 = v59;
    sub_20E195BBC(*(a2 + 56) + *(v4 + 72) * v43, v59, type metadata accessor for ToolKitProtoTypedValue);
    v46 = *v45;
    v47 = *v10;
    if ((~v46 & 0xF000000000000007) != 0)
    {
      v61 = v46;
      if ((~v47 & 0xF000000000000007) == 0)
      {
        sub_20E047CF8(v46);
        sub_20E047CF8(v47);
        sub_20E047CF8(v46);

LABEL_29:
        sub_20E047CA8(v46);
        sub_20E047CA8(v47);
LABEL_30:
        sub_20E195C24(v59, type metadata accessor for ToolKitProtoTypedValue);
        v10 = v53;
LABEL_31:
        sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypedValue);
        return 0;
      }

      v60 = v47;
      sub_20E047CF8(v46);
      sub_20E047CF8(v47);
      sub_20E047CF8(v46);
      v48 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v61, &v60);

      sub_20E047CA8(v46);
      if ((v48 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_20E047CF8(v46);
      sub_20E047CF8(v47);
      if ((~v47 & 0xF000000000000007) != 0)
      {
        goto LABEL_29;
      }

      sub_20E047CA8(v46);
    }

    v24 = *(v57 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v25 = v59;
    v10 = v53;
    v26 = sub_20E322850();
    sub_20E195C24(v25, type metadata accessor for ToolKitProtoTypedValue);
    result = sub_20E195C24(v10, type metadata accessor for ToolKitProtoTypedValue);
    v4 = v52;
    v22 = v58;
    if ((v26 & 1) == 0)
    {
      return v40;
    }
  }

  if (v23 <= v18 + 1)
  {
    v29 = v18 + 1;
  }

  else
  {
    v29 = v23;
  }

  v30 = v29 - 1;
  v28 = v55;
  while (1)
  {
    v31 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v31 >= v23)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868230, &qword_20E33B2D0);
      (*(*(v49 - 8) + 56))(v28, 1, 1, v49);
      v58 = 0;
      v18 = v30;
      goto LABEL_18;
    }

    v32 = *(v50 + 8 * v31);
    ++v18;
    if (v32)
    {
      v58 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v18 = v31;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15D148(uint64_t a1, uint64_t a2)
{
  v62 = type metadata accessor for ToolKitProtoTypedValue(0);
  v64 = *(v62 - 8);
  v4 = *(v64 + 64);
  v5 = MEMORY[0x28223BE20](v62);
  v65 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v56 - v8);
  MEMORY[0x28223BE20](v7);
  v60 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683D0, &qword_20E33B430);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  result = MEMORY[0x28223BE20](v13);
  v17 = (&v56 - v15);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v61 = v16;
  v18 = 0;
  v57 = (&v56 - v15);
  v58 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v59 = a2;
  while (v24)
  {
    v63 = (v24 - 1) & v24;
    v29 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_17:
    v35 = (*(v58 + 48) + 16 * v29);
    v37 = *v35;
    v36 = v35[1];
    v38 = v60;
    sub_20E195BBC(*(v58 + 56) + *(v64 + 72) * v29, v60, type metadata accessor for ToolKitProtoTypedValue);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683D8, &qword_20E33B438);
    v40 = *(v39 + 48);
    v41 = v61;
    *v61 = v37;
    v41[1] = v36;
    v32 = v41;
    sub_20E195B54(v38, v41 + v40, type metadata accessor for ToolKitProtoTypedValue);
    (*(*(v39 - 8) + 56))(v32, 0, 1, v39);

    v17 = v57;
LABEL_18:
    sub_20E195AA4(v32, v17, &qword_27C8683D0, &qword_20E33B430);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683D8, &qword_20E33B438);
    v43 = (*(*(v42 - 8) + 48))(v17, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v45 = *(v42 + 48);
    v46 = *v17;
    v47 = v17[1];
    sub_20E195B54(v17 + v45, v9, type metadata accessor for ToolKitProtoTypedValue);
    v48 = sub_20E1ACAD0(v46, v47);
    LOBYTE(v46) = v49;

    if ((v46 & 1) == 0)
    {
      goto LABEL_31;
    }

    v50 = v65;
    sub_20E195BBC(*(a2 + 56) + *(v64 + 72) * v48, v65, type metadata accessor for ToolKitProtoTypedValue);
    v51 = *v50;
    v52 = *v9;
    if ((~*v50 & 0xF000000000000007) != 0)
    {
      v67 = *v50;
      if ((~v52 & 0xF000000000000007) == 0)
      {
        v53 = v9;
        sub_20E047CF8(v51);
        sub_20E047CF8(v52);
        sub_20E047CF8(v51);

LABEL_29:
        sub_20E047CA8(v51);
        sub_20E047CA8(v52);
        v9 = v53;
LABEL_30:
        sub_20E195C24(v65, type metadata accessor for ToolKitProtoTypedValue);
LABEL_31:
        sub_20E195C24(v9, type metadata accessor for ToolKitProtoTypedValue);
        return 0;
      }

      v66 = v52;
      sub_20E047CF8(v51);
      sub_20E047CF8(v52);
      sub_20E047CF8(v51);
      v54 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v67, &v66);

      sub_20E047CA8(v51);
      if ((v54 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v53 = v9;
      sub_20E047CF8(v51);
      sub_20E047CF8(v52);
      if ((~v52 & 0xF000000000000007) != 0)
      {
        goto LABEL_29;
      }

      sub_20E047CA8(v51);
    }

    v26 = *(v62 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v27 = v65;
    v28 = sub_20E322850();
    sub_20E195C24(v27, type metadata accessor for ToolKitProtoTypedValue);
    result = sub_20E195C24(v9, type metadata accessor for ToolKitProtoTypedValue);
    a2 = v59;
    v24 = v63;
    if ((v28 & 1) == 0)
    {
      return v44;
    }
  }

  if (v25 <= v18 + 1)
  {
    v30 = v18 + 1;
  }

  else
  {
    v30 = v25;
  }

  v31 = v30 - 1;
  v32 = v61;
  while (1)
  {
    v33 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v33 >= v25)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683D8, &qword_20E33B438);
      (*(*(v55 - 8) + 56))(v32, 1, 1, v55);
      v63 = 0;
      v18 = v31;
      goto LABEL_18;
    }

    v34 = *(v20 + 8 * v33);
    ++v18;
    if (v34)
    {
      v63 = (v34 - 1) & v34;
      v29 = __clz(__rbit64(v34)) | (v33 << 6);
      v18 = v33;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15D764(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for TranscriptProtoShimParameters(0);
  v4 = *(v61 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v61);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v57 - v10);
  MEMORY[0x28223BE20](v9);
  v60 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868628, &qword_20E33B638);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  result = MEMORY[0x28223BE20](v15);
  v63 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v63 + 16))
  {
    return 0;
  }

  v58 = a1;
  v59 = &v57 - v17;
  v62 = v18;
  v19 = 0;
  v20 = *(a1 + 64);
  v57 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v64 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_16:
    v31 = (*(v58 + 48) + 16 * v25);
    v33 = *v31;
    v32 = v31[1];
    v34 = v60;
    sub_20E195BBC(*(v58 + 56) + *(v4 + 72) * v25, v60, type metadata accessor for TranscriptProtoShimParameters);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868630, &qword_20E33B640);
    v36 = *(v35 + 48);
    v37 = v62;
    *v62 = v33;
    v37[1] = v32;
    v38 = v34;
    v28 = v37;
    sub_20E195B54(v38, v37 + v36, type metadata accessor for TranscriptProtoShimParameters);
    (*(*(v35 - 8) + 56))(v28, 0, 1, v35);

LABEL_17:
    v39 = v28;
    v40 = v59;
    sub_20E195AA4(v39, v59, &qword_27C868628, &qword_20E33B638);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868630, &qword_20E33B640);
    v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = v40;
    v45 = v8;
    v46 = *(v41 + 48);
    v47 = *v44;
    v48 = v44[1];
    sub_20E195B54(v44 + v46, v11, type metadata accessor for TranscriptProtoShimParameters);
    v49 = v47;
    v50 = v63;
    v51 = sub_20E1ACAD0(v49, v48);
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      goto LABEL_25;
    }

    v8 = v45;
    sub_20E195BBC(*(v50 + 56) + *(v4 + 72) * v51, v45, type metadata accessor for TranscriptProtoShimParameters);
    if ((sub_20E153678(*v45, *v11) & 1) == 0)
    {
      sub_20E195C24(v45, type metadata accessor for TranscriptProtoShimParameters);
LABEL_25:
      sub_20E195C24(v11, type metadata accessor for TranscriptProtoShimParameters);
      return 0;
    }

    v54 = *(v61 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v55 = sub_20E322850();
    sub_20E195C24(v45, type metadata accessor for TranscriptProtoShimParameters);
    result = sub_20E195C24(v11, type metadata accessor for TranscriptProtoShimParameters);
    v23 = v64;
    if ((v55 & 1) == 0)
    {
      return v43;
    }
  }

  if (v24 <= v19 + 1)
  {
    v26 = v19 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  v28 = v62;
  while (1)
  {
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868630, &qword_20E33B640);
      (*(*(v56 - 8) + 56))(v28, 1, 1, v56);
      v64 = 0;
      v19 = v27;
      goto LABEL_17;
    }

    v30 = *(v57 + 8 * v29);
    ++v19;
    if (v30)
    {
      v64 = (v30 - 1) & v30;
      v25 = __clz(__rbit64(v30)) | (v29 << 6);
      v19 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15DCC4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_20E1ACAD0(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15DDF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v168 = *(v4 - 8);
  v5 = *(v168 + 8);
  MEMORY[0x28223BE20](v4);
  v164 = (&v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v171 = (&v142 - v9);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868648, &qword_20E33B658);
  v10 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v167 = &v142 - v11;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868028, &qword_20E33B0D8);
  v12 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v147);
  v14 = (&v142 - v13);
  v155 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  v15 = *(v155 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v155);
  v152 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868030, &unk_20E33C420);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v142 - v20;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868038, &qword_20E33B0E0);
  v22 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v156 = &v142 - v23;
  v169 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v24 = *(v169 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v169);
  v160 = &v142 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686A0, &unk_20E33C250);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v142 - v29;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686A8, &qword_20E33B6A0);
  v31 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v170 = &v142 - v32;
  v33 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  v34 = *(v33 - 8);
  v172 = v33;
  v173 = v34;
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v174 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v142 - v39;
  MEMORY[0x28223BE20](v38);
  v158 = &v142 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686B0, &qword_20E33B6A8);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v165 = &v142 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v44);
  v162 = (&v142 - v47);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v145 = v21;
  v151 = v30;
  v144 = v14;
  v157 = v4;
  v48 = 0;
  v148 = a1;
  v49 = *(a1 + 64);
  v143 = a1 + 64;
  v50 = 1 << *(a1 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & v49;
  v142 = (v50 + 63) >> 6;
  v153 = (v24 + 48);
  v146 = (v15 + 48);
  v150 = (v168 + 48);
  v168 = v40;
  v53 = a2;
  v54 = v165;
  v149 = a2;
  while (1)
  {
    if (!v52)
    {
      if (v142 <= v48 + 1)
      {
        v64 = v48 + 1;
      }

      else
      {
        v64 = v142;
      }

      v65 = v64 - 1;
      while (1)
      {
        v66 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v66 >= v142)
        {
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686B8, &qword_20E33B6B0);
          (*(*(v110 - 8) + 56))(v54, 1, 1, v110);
          v166 = 0;
          v48 = v65;
          goto LABEL_21;
        }

        v67 = *(v143 + 8 * v66);
        ++v48;
        if (v67)
        {
          v166 = (v67 - 1) & v67;
          v63 = __clz(__rbit64(v67)) | (v66 << 6);
          v48 = v66;
          goto LABEL_20;
        }
      }

      __break(1u);
      return result;
    }

    v166 = (v52 - 1) & v52;
    v63 = __clz(__rbit64(v52)) | (v48 << 6);
LABEL_20:
    v68 = (*(v148 + 48) + 16 * v63);
    v70 = *v68;
    v69 = v68[1];
    v71 = v158;
    sub_20E195BBC(*(v148 + 56) + *(v173 + 72) * v63, v158, type metadata accessor for TranscriptProtoActionParameterValue);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686B8, &qword_20E33B6B0);
    v73 = *(v72 + 48);
    *v54 = v70;
    v54[1] = v69;
    sub_20E195B54(v71, v54 + v73, type metadata accessor for TranscriptProtoActionParameterValue);
    (*(*(v72 - 8) + 56))(v54, 0, 1, v72);

LABEL_21:
    v74 = v162;
    sub_20E195AA4(v54, v162, &qword_27C8686B0, &qword_20E33B6A8);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686B8, &qword_20E33B6B0);
    v76 = (*(*(v75 - 8) + 48))(v74, 1, v75);
    v55 = v76 == 1;
    if (v76 == 1)
    {
      return v55;
    }

    v77 = *(v75 + 48);
    v78 = *v74;
    v79 = v74[1];
    sub_20E195B54(v74 + v77, v40, type metadata accessor for TranscriptProtoActionParameterValue);
    v80 = sub_20E1ACAD0(v78, v79);
    v82 = v81;

    if ((v82 & 1) == 0)
    {
      v134 = v40;
      goto LABEL_73;
    }

    v163 = v55;
    v83 = v174;
    sub_20E195BBC(*(v53 + 56) + *(v173 + 72) * v80, v174, type metadata accessor for TranscriptProtoActionParameterValue);
    v84 = *(v161 + 48);
    v85 = v170;
    sub_20E0486F4(v83, v170, &qword_27C8686A0, &unk_20E33C250);
    sub_20E0486F4(v40, v85 + v84, &qword_27C8686A0, &unk_20E33C250);
    v86 = *v153;
    v87 = v169;
    if ((*v153)(v85, 1, v169) != 1)
    {
      v93 = v151;
      sub_20E0486F4(v85, v151, &qword_27C8686A0, &unk_20E33C250);
      v94 = v86(v85 + v84, 1, v87);
      v95 = v85;
      v90 = v167;
      if (v94 == 1)
      {
        sub_20E195C24(v174, type metadata accessor for TranscriptProtoActionParameterValue);
        sub_20E195C24(v40, type metadata accessor for TranscriptProtoActionParameterValue);
        v136 = type metadata accessor for TranscriptProtoToolParameterValue;
        v135 = v93;
        goto LABEL_59;
      }

      v96 = v160;
      sub_20E195B54(v95 + v84, v160, type metadata accessor for TranscriptProtoToolParameterValue);
      v97 = *(v154 + 48);
      v98 = v156;
      sub_20E0486F4(v93, v156, &qword_27C868030, &unk_20E33C420);
      sub_20E0486F4(v96, v98 + v97, &qword_27C868030, &unk_20E33C420);
      v99 = *v146;
      v100 = v155;
      if ((*v146)(v98, 1, v155) == 1)
      {
        if (v99(v98 + v97, 1, v100) == 1)
        {
          v101 = v172;
          sub_20E04875C(v98, &qword_27C868030, &unk_20E33C420);
          v92 = v171;
          goto LABEL_39;
        }

        v139 = type metadata accessor for TranscriptProtoToolParameterValue;
        v140 = v160;
      }

      else
      {
        v102 = v145;
        sub_20E0486F4(v98, v145, &qword_27C868030, &unk_20E33C420);
        v103 = v99(v98 + v97, 1, v100);
        v104 = v172;
        if (v103 != 1)
        {
          v105 = v152;
          sub_20E195B54(v98 + v97, v152, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          v106 = v144;
          v107 = (v144 + *(v147 + 48));
          sub_20E195BBC(v102, v144, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          sub_20E195BBC(v105, v107, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          v108 = *v106;
          v109 = *v107;
          if ((~*v106 & 0xF000000000000007) != 0)
          {
            v176 = *v106;
            if ((~v109 & 0xF000000000000007) == 0)
            {
              sub_20E047CF8(v108);
              sub_20E047CF8(v109);
              sub_20E047CF8(v108);

LABEL_67:
              sub_20E047CA8(v108);
              sub_20E047CA8(v109);
LABEL_68:
              sub_20E195C24(v152, type metadata accessor for TranscriptProtoToolParameterValueEnum);
              sub_20E195C24(v107, type metadata accessor for ToolKitProtoTypedValue);
              sub_20E195C24(v144, type metadata accessor for ToolKitProtoTypedValue);
              sub_20E195C24(v145, type metadata accessor for TranscriptProtoToolParameterValueEnum);
              sub_20E04875C(v156, &qword_27C868030, &unk_20E33C420);
LABEL_69:
              sub_20E195C24(v160, type metadata accessor for TranscriptProtoToolParameterValue);
LABEL_70:
              v141 = v170;
              sub_20E195C24(v151, type metadata accessor for TranscriptProtoToolParameterValue);
              v131 = &qword_27C8686A0;
              v132 = &unk_20E33C250;
              v133 = v141;
LABEL_71:
              sub_20E04875C(v133, v131, v132);
LABEL_72:
              sub_20E195C24(v174, type metadata accessor for TranscriptProtoActionParameterValue);
              v134 = v168;
LABEL_73:
              sub_20E195C24(v134, type metadata accessor for TranscriptProtoActionParameterValue);
              return 0;
            }

            v101 = v104;
            v175 = v109;
            sub_20E047CF8(v108);
            sub_20E047CF8(v109);
            sub_20E047CF8(v108);
            v111 = static ToolKitProtoTypedValueKind.== infix(_:_:)(&v176, &v175);

            sub_20E047CA8(v108);
            if ((v111 & 1) == 0)
            {
              goto LABEL_68;
            }
          }

          else
          {
            sub_20E047CF8(*v106);
            sub_20E047CF8(v109);
            if ((~v109 & 0xF000000000000007) != 0)
            {
              goto LABEL_67;
            }

            v101 = v104;
            sub_20E047CA8(v108);
          }

          v112 = *(type metadata accessor for ToolKitProtoTypedValue(0) + 20);
          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
          v113 = v144;
          v114 = sub_20E322850();
          sub_20E195C24(v152, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          sub_20E195C24(v107, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E195C24(v113, type metadata accessor for ToolKitProtoTypedValue);
          sub_20E195C24(v145, type metadata accessor for TranscriptProtoToolParameterValueEnum);
          sub_20E04875C(v156, &qword_27C868030, &unk_20E33C420);
          v90 = v167;
          v92 = v171;
          if ((v114 & 1) == 0)
          {
            goto LABEL_69;
          }

LABEL_39:
          v115 = *(v169 + 20);
          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
          v116 = v151;
          v117 = v160;
          v118 = sub_20E322850();
          sub_20E195C24(v117, type metadata accessor for TranscriptProtoToolParameterValue);
          sub_20E195C24(v116, type metadata accessor for TranscriptProtoToolParameterValue);
          sub_20E04875C(v170, &qword_27C8686A0, &unk_20E33C250);
          v91 = v101;
          if ((v118 & 1) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_40;
        }

        sub_20E195C24(v160, type metadata accessor for TranscriptProtoToolParameterValue);
        v139 = type metadata accessor for TranscriptProtoToolParameterValueEnum;
        v140 = v102;
      }

      sub_20E195C24(v140, v139);
      sub_20E04875C(v98, &qword_27C868038, &qword_20E33B0E0);
      goto LABEL_70;
    }

    v88 = v86(v85 + v84, 1, v87) == 1;
    v89 = v85;
    v90 = v167;
    if (!v88)
    {
      sub_20E195C24(v174, type metadata accessor for TranscriptProtoActionParameterValue);
      v135 = v168;
      v136 = type metadata accessor for TranscriptProtoActionParameterValue;
LABEL_59:
      sub_20E195C24(v135, v136);
      sub_20E04875C(v170, &qword_27C8686A8, &qword_20E33B6A0);
      return 0;
    }

    sub_20E04875C(v89, &qword_27C8686A0, &unk_20E33C250);
    v92 = v171;
    v91 = v172;
LABEL_40:
    v119 = *(v91 + 20);
    v120 = *(v159 + 48);
    sub_20E0486F4(v174 + v119, v90, &qword_27C863B58, &qword_20E323E68);
    sub_20E0486F4(&v168[v119], v90 + v120, &qword_27C863B58, &qword_20E323E68);
    v121 = *v150;
    v122 = v157;
    if ((*v150)(v90, 1, v157) == 1)
    {
      break;
    }

    sub_20E0486F4(v90, v92, &qword_27C863B58, &qword_20E323E68);
    v124 = v121(v90 + v120, 1, v122);
    v54 = v165;
    if (v124 == 1)
    {
      sub_20E195C24(v174, type metadata accessor for TranscriptProtoActionParameterValue);
      sub_20E195C24(v168, type metadata accessor for TranscriptProtoActionParameterValue);
      v137 = type metadata accessor for TranscriptProtoPromptSelection;
      v138 = v92;
      goto LABEL_62;
    }

    v125 = v90 + v120;
    v126 = v164;
    sub_20E195B54(v125, v164, type metadata accessor for TranscriptProtoPromptSelection);
    v127 = *(v126 + 9);
    if (*(v92 + 9))
    {
      v53 = v149;
      if ((*(v126 + 9) & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v53 = v149;
      if (*(v126 + 9))
      {
        goto LABEL_56;
      }

      v128 = *v171;
      v129 = *v164;
      v130 = *(v164 + 8);
      if (v171[1])
      {
        if (v128)
        {
          if ((v164[1] & 1) == 0 || !v129)
          {
            goto LABEL_56;
          }
        }

        else if ((v164[1] & 1) == 0 || v129)
        {
          goto LABEL_56;
        }
      }

      else if ((v164[1] & 1) != 0 || v128 != v129)
      {
LABEL_56:
        sub_20E195C24(v164, type metadata accessor for TranscriptProtoPromptSelection);
        sub_20E195C24(v171, type metadata accessor for TranscriptProtoPromptSelection);
        v131 = &qword_27C863B58;
        v132 = &qword_20E323E68;
        v133 = v90;
        goto LABEL_71;
      }
    }

    v56 = *(v157 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v57 = v171;
    v58 = v164;
    v59 = sub_20E322850();
    sub_20E195C24(v58, type metadata accessor for TranscriptProtoPromptSelection);
    sub_20E195C24(v57, type metadata accessor for TranscriptProtoPromptSelection);
    sub_20E04875C(v90, &qword_27C863B58, &qword_20E323E68);
    if ((v59 & 1) == 0)
    {
      goto LABEL_72;
    }

LABEL_9:
    v60 = *(v172 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v61 = v174;
    v40 = v168;
    v62 = sub_20E322850();
    sub_20E195C24(v61, type metadata accessor for TranscriptProtoActionParameterValue);
    result = sub_20E195C24(v40, type metadata accessor for TranscriptProtoActionParameterValue);
    v52 = v166;
    v55 = v163;
    if ((v62 & 1) == 0)
    {
      return v55;
    }
  }

  v123 = v121(v90 + v120, 1, v122);
  v54 = v165;
  if (v123 == 1)
  {
    sub_20E04875C(v90, &qword_27C863B58, &qword_20E323E68);
    v53 = v149;
    goto LABEL_9;
  }

  sub_20E195C24(v174, type metadata accessor for TranscriptProtoActionParameterValue);
  v138 = v168;
  v137 = type metadata accessor for TranscriptProtoActionParameterValue;
LABEL_62:
  sub_20E195C24(v138, v137);
  sub_20E04875C(v90, &qword_27C868648, &qword_20E33B658);
  return 0;
}

uint64_t sub_20E15F198(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations(0);
  v4 = *(v61 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v61);
  v8 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v57 - v10);
  MEMORY[0x28223BE20](v9);
  v60 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E80, &qword_20E33AF58);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  result = MEMORY[0x28223BE20](v15);
  v63 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v63 + 16))
  {
    return 0;
  }

  v58 = a1;
  v59 = &v57 - v17;
  v62 = v18;
  v19 = 0;
  v20 = *(a1 + 64);
  v57 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v64 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_16:
    v31 = (*(v58 + 48) + 16 * v25);
    v33 = *v31;
    v32 = v31[1];
    v34 = v60;
    sub_20E195BBC(*(v58 + 56) + *(v4 + 72) * v25, v60, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E88, &qword_20E33AF60);
    v36 = *(v35 + 48);
    v37 = v62;
    *v62 = v33;
    v37[1] = v32;
    v38 = v34;
    v28 = v37;
    sub_20E195B54(v38, v37 + v36, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    (*(*(v35 - 8) + 56))(v28, 0, 1, v35);

LABEL_17:
    v39 = v28;
    v40 = v59;
    sub_20E195AA4(v39, v59, &qword_27C867E80, &qword_20E33AF58);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E88, &qword_20E33AF60);
    v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = v40;
    v45 = v8;
    v46 = *(v41 + 48);
    v47 = *v44;
    v48 = v44[1];
    sub_20E195B54(v44 + v46, v11, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    v49 = v47;
    v50 = v63;
    v51 = sub_20E1ACAD0(v49, v48);
    v53 = v52;

    if ((v53 & 1) == 0)
    {
      goto LABEL_25;
    }

    v8 = v45;
    sub_20E195BBC(*(v50 + 56) + *(v4 + 72) * v51, v45, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    if ((sub_20E1586F8(*v45, *v11) & 1) == 0)
    {
      sub_20E195C24(v45, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
LABEL_25:
      sub_20E195C24(v11, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
      return 0;
    }

    v54 = *(v61 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v55 = sub_20E322850();
    sub_20E195C24(v45, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    result = sub_20E195C24(v11, type metadata accessor for ToolKitProtoToolInvocationSignature.ListOfRelations);
    v23 = v64;
    if ((v55 & 1) == 0)
    {
      return v43;
    }
  }

  if (v24 <= v19 + 1)
  {
    v26 = v19 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  v28 = v62;
  while (1)
  {
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E88, &qword_20E33AF60);
      (*(*(v56 - 8) + 56))(v28, 1, 1, v56);
      v64 = 0;
      v19 = v27;
      goto LABEL_17;
    }

    v30 = *(v57 + 8 * v29);
    ++v19;
    if (v30)
    {
      v64 = (v30 - 1) & v30;
      v25 = __clz(__rbit64(v30)) | (v29 << 6);
      v19 = v29;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20E15F6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_20E321EC0();
  v11 = result;
  if (result)
  {
    result = sub_20E321EE0();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_20E321ED0();
  sub_20E146020(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_20E15F7B0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_20E05E834(a3, a4);
          return sub_20E146250(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s23LighthouseDataProcessor53TranscriptProtoSystemRequirementAuthenticationRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868570, &qword_20E33B590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868578, &qword_20E33B598);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C868570, &qword_20E33B590);
  sub_20E0486F4(a2, &v17[v18], &qword_27C868570, &qword_20E33B590);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C868570, &qword_20E33B590);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequest(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C868570, &qword_20E33B590);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868578, &qword_20E33B598);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  v21 = sub_20E180718(v12, v8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_20E04875C(v17, &qword_27C868570, &qword_20E33B590);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor52TranscriptProtoExecutionPreconditionEvaluatorRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F18, &qword_20E33AFE8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F20, &qword_20E33AFF0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequest(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_20E0486F4(a1 + v17, v16, &qword_27C867F18, &qword_20E33AFE8);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C867F18, &qword_20E33AFE8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C867F18, &qword_20E33AFE8);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v16, v11, &qword_27C867F18, &qword_20E33AFE8);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E195C24(v11, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
LABEL_6:
    sub_20E04875C(v16, &qword_27C867F20, &qword_20E33AFF0);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_20E195B54(&v16[v18], v27, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
  v21 = _s23LighthouseDataProcessor058TranscriptProtoExecutionPreconditionEvaluatorRequestActionI0V2eeoiySbAC_ACtFZ_0(v11, v20);
  sub_20E195C24(v20, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
  sub_20E195C24(v11, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest);
  sub_20E04875C(v16, &qword_27C867F18, &qword_20E33AFE8);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_20E15AFBC(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 24);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v23 = sub_20E322850();
  return v23 & 1;
}

uint64_t sub_20E15FFEC(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_20E322D60() & 1) == 0 || (a3(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a4(0) + 24);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor49TranscriptProtoActionFailureDeveloperDefinedErrorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_20E322D60() & 1) == 0 || a1[4] != a2[4])
  {
    return 0;
  }

  v6 = *(type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0) + 28);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor48TranscriptProtoDynamicEnumerationEntityStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FA8, &qword_20E33B078);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FB0, &qword_20E33B080);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_20E0486F4(a1, &v45 - v24, &qword_27C8639D0, &unk_20E33C230);
  v52 = a2;
  sub_20E0486F4(a2, &v25[v26], &qword_27C8639D0, &unk_20E33C230);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_20E0486F4(v25, v20, &qword_27C8639D0, &unk_20E33C230);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_20E195B54(&v25[v26], v16, type metadata accessor for TranscriptProtoStatementID);
      v31 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_20E195C24(v16, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v25, &qword_27C8639D0, &unk_20E33C230);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v28 = &qword_27C867F30;
    v29 = &qword_20E33B000;
    v30 = v25;
LABEL_14:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v25, &qword_27C8639D0, &unk_20E33C230);
LABEL_8:
  v32 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_20E0486F4(v51 + v33, v50, &qword_27C867FA8, &qword_20E33B078);
  sub_20E0486F4(v52 + v33, v35 + v34, &qword_27C867FA8, &qword_20E33B078);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_20E04875C(v35, &qword_27C867FA8, &qword_20E33B078);
LABEL_18:
      v44 = *(v32 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v39 = sub_20E322850();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_20E0486F4(v35, v46, &qword_27C867FA8, &qword_20E33B078);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_20E195C24(v38, type metadata accessor for ContextProtoDynamicEnumerationEntity);
LABEL_13:
    v28 = &qword_27C867FB0;
    v29 = &qword_20E33B080;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_20E195B54(v41, v45, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  v43 = static ContextProtoDynamicEnumerationEntity.== infix(_:_:)(v38, v42);
  sub_20E195C24(v42, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  sub_20E195C24(v38, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  sub_20E04875C(v35, &qword_27C867FA8, &qword_20E33B078);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_20E160800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a2 + 32);
  if (v8)
  {
    if (v9 && (*(a1 + 24) == *(a2 + 24) && v8 == v9 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_15:
  v10 = *(a3(0) + 28);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor47TranscriptProtoRequestPrescribedPlanConvertToolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  if (v6)
  {
    if (!v7 || (*(a1 + 24) != *(a2 + 24) || v6 != v7) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 48);
  v9 = *(a2 + 48);
  if (v8)
  {
    if (v9 && (*(a1 + 40) == *(a2 + 40) && v8 == v9 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_22:
  v10 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0) + 32);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor53TranscriptProtoQueryDecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  DecorationPrePlannerPayloadEnum = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum(0);
  v5 = *(DecorationPrePlannerPayloadEnum - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerPayloadEnum);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866200, &unk_20E33C470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F38, &qword_20E33B008);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C866200, &unk_20E33C470);
  sub_20E0486F4(a2, &v17[v18], &qword_27C866200, &unk_20E33C470);
  v19 = *(v5 + 48);
  if (v19(v17, 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    if (v19(&v17[v18], 1, DecorationPrePlannerPayloadEnum) == 1)
    {
      sub_20E04875C(v17, &qword_27C866200, &unk_20E33C470);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C866200, &unk_20E33C470);
  if (v19(&v17[v18], 1, DecorationPrePlannerPayloadEnum) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C867F38, &qword_20E33B008);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  DecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor51TranscriptProtoQueryDecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerPayloadEnum);
  sub_20E04875C(v17, &qword_27C866200, &unk_20E33C470);
  if (DecorationPrePlannerPayloadEnumO2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor46TranscriptProtoQueryDecorationPrePlannerResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v56 = a2;
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  v52 = *(DecorationPrePlannerResultPayload - 8);
  v53 = DecorationPrePlannerResultPayload;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayload);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F90, &qword_20E33B060);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = &v47 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F98, &qword_20E33B068);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v47 - v10;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v25 = *(DecorationPrePlannerResult + 20);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_20E0486F4(a1 + v25, v24, &qword_27C8639D0, &unk_20E33C230);
  v27 = v56;
  sub_20E0486F4(v56 + v25, &v24[v26], &qword_27C8639D0, &unk_20E33C230);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) != 1)
  {
    sub_20E0486F4(v24, v19, &qword_27C8639D0, &unk_20E33C230);
    if (v28(&v24[v26], 1, v11) != 1)
    {
      sub_20E195B54(&v24[v26], v15, type metadata accessor for TranscriptProtoStatementID);
      v32 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v19, v15);
      sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v19, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
      if ((v32 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v19, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v29 = &qword_27C867F30;
    v30 = &qword_20E33B000;
    v31 = v24;
LABEL_17:
    sub_20E04875C(v31, v29, v30);
    goto LABEL_18;
  }

  if (v28(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
LABEL_8:
  v33 = v55;
  if ((*v55 != *v27 || v55[1] != v27[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = DecorationPrePlannerResult;
  v35 = *(DecorationPrePlannerResult + 24);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_20E0486F4(v33 + v35, v54, &qword_27C867F90, &qword_20E33B060);
  sub_20E0486F4(v27 + v35, v37 + v36, &qword_27C867F90, &qword_20E33B060);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) == 1)
  {
    if (v39(v37 + v36, 1, v38) == 1)
    {
      sub_20E04875C(v37, &qword_27C867F90, &qword_20E33B060);
LABEL_21:
      v46 = *(v34 + 28);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v41 = sub_20E322850();
      return v41 & 1;
    }

    goto LABEL_16;
  }

  v40 = v49;
  sub_20E0486F4(v37, v49, &qword_27C867F90, &qword_20E33B060);
  if (v39(v37 + v36, 1, v38) == 1)
  {
    sub_20E195C24(v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
LABEL_16:
    v29 = &qword_27C867F98;
    v30 = &qword_20E33B068;
    v31 = v37;
    goto LABEL_17;
  }

  v43 = v37 + v36;
  v44 = v48;
  sub_20E195B54(v43, v48, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  DecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor53TranscriptProtoQueryDecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0(v40, v44);
  sub_20E195C24(v44, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_20E195C24(v40, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_20E04875C(v37, &qword_27C867F90, &qword_20E33B060);
  if (DecorationPrePlannerResultPayloadV2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v41 = 0;
  return v41 & 1;
}

uint64_t _s23LighthouseDataProcessor44TranscriptProtoRequestPrescribedPlanOpenToolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v30 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v30 - v16, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2, &v17[v18], &qword_27C8639D0, &unk_20E33C230);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_20E0486F4(v17, v12, &qword_27C8639D0, &unk_20E33C230);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoStatementID);
      v22 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v17, &qword_27C8639D0, &unk_20E33C230);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_20E04875C(v17, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_7;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v17, &qword_27C8639D0, &unk_20E33C230);
LABEL_10:
  v23 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v24 = *(v23 + 20);
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
  if (v26)
  {
    if (v28)
    {
LABEL_16:
      v29 = *(v23 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if ((v28 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor67TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSourceV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v5 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor61TranscriptProtoActionConfirmationSystemStyleMontaraEnablementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868650, &qword_20E33B660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868658, &qword_20E33B668);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_12;
  }

  v26 = v8;
  v25 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v17 = *(v25 + 24);
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C868650, &qword_20E33B660);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C868650, &qword_20E33B660);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v12, &qword_27C868650, &qword_20E33B660);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v26;
      sub_20E195B54(&v16[v18], v26, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
      v21 = _s23LighthouseDataProcessor67TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSourceV2eeoiySbAC_ACtFZ_0(v12, v20);
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
      sub_20E04875C(v16, &qword_27C868650, &qword_20E33B660);
      if ((v21 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
LABEL_9:
    sub_20E04875C(v16, &qword_27C868658, &qword_20E33B668);
    goto LABEL_12;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_20E04875C(v16, &qword_27C868650, &qword_20E33B660);
LABEL_11:
  if (*(a1 + 16) == *(a2 + 16))
  {
    v24 = *(v25 + 28);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v22 = sub_20E322850();
    return v22 & 1;
  }

LABEL_12:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s23LighthouseDataProcessor44TranscriptProtoActionConfirmationSystemStyleV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868660, &unk_20E33C270);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v29 - v5;
  v7 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868668, &qword_20E33B670);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868670, &qword_20E33B678);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  v31 = a1;
  sub_20E0486F4(a1, &v29 - v18, &qword_27C868668, &qword_20E33B670);
  v32 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C868668, &qword_20E33B670);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) == 1)
  {
    if (v21(&v19[v20], 1, v7) == 1)
    {
      sub_20E04875C(v19, &qword_27C868668, &qword_20E33B670);
LABEL_9:
      v27 = *(type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v22 = sub_20E322850();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v19, v14, &qword_27C868668, &qword_20E33B670);
  if (v21(&v19[v20], 1, v7) == 1)
  {
    sub_20E195C24(v14, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
LABEL_6:
    sub_20E04875C(v19, &qword_27C868670, &qword_20E33B678);
    goto LABEL_7;
  }

  v23 = &v19[v20];
  v24 = v29;
  sub_20E195B54(v23, v29, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  v25 = *(v30 + 48);
  sub_20E195BBC(v14, v6, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_20E195BBC(v24, &v6[v25], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  v26 = _s23LighthouseDataProcessor61TranscriptProtoActionConfirmationSystemStyleMontaraEnablementV2eeoiySbAC_ACtFZ_0(v6, &v6[v25]);
  sub_20E195C24(v24, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_20E195C24(&v6[v25], type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_20E195C24(v6, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_20E195C24(v14, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum);
  sub_20E04875C(v19, &qword_27C868668, &qword_20E33B670);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s23LighthouseDataProcessor42TranscriptProtoSystemPromptResolutionInputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865E08, &unk_20E33C3C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868280, &qword_20E33B310);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C865E08, &unk_20E33C3C0);
  sub_20E0486F4(a2, &v17[v18], &qword_27C865E08, &unk_20E33C3C0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C865E08, &unk_20E33C3C0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C865E08, &unk_20E33C3C0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868280, &qword_20E33B310);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  v21 = _s23LighthouseDataProcessor46TranscriptProtoSystemPromptResolutionInputEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum);
  sub_20E04875C(v17, &qword_27C865E08, &unk_20E33C3C0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor42TranscriptProtoParameterCandidatesNotFoundV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C863B18, &qword_20E323EB0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C863B18, &qword_20E323EB0);
LABEL_12:
      v23 = *(v26 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_20E0486F4(v16, v12, &qword_27C863B18, &qword_20E323EB0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for ToolKitProtoTypedValue);
LABEL_9:
    sub_20E04875C(v16, &qword_27C867ED8, &qword_20E33AFA8);
    goto LABEL_10;
  }

  v21 = v25;
  sub_20E195B54(&v16[v18], v25, type metadata accessor for ToolKitProtoTypedValue);
  v22 = static ToolKitProtoTypedValue.== infix(_:_:)(v12, v21);
  sub_20E195C24(v21, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v12, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v16, &qword_27C863B18, &qword_20E323EB0);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_20E162710(void *a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(void, void))
{
  v30 = a4;
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  v28 = a3(0);
  v20 = *(v28 + 20);
  v21 = *(v16 + 56);
  v31 = a1;
  sub_20E0486F4(a1 + v20, v19, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2 + v20, &v19[v21], &qword_27C8639D0, &unk_20E33C230);
  v22 = *(v8 + 48);
  if (v22(v19, 1, v7) == 1)
  {
    if (v22(&v19[v21], 1, v7) == 1)
    {
      sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v19, v14, &qword_27C8639D0, &unk_20E33C230);
  if (v22(&v19[v21], 1, v7) == 1)
  {
    sub_20E195C24(v14, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_20E04875C(v19, &qword_27C867F30, &qword_20E33B000);
LABEL_10:
    v26 = 0;
    return v26 & 1;
  }

  v23 = v29;
  sub_20E195B54(&v19[v21], v29, type metadata accessor for TranscriptProtoStatementID);
  v24 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v14, v23);
  sub_20E195C24(v23, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v14, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v19, &qword_27C8639D0, &unk_20E33C230);
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
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v26 = sub_20E322850();
  return v26 & 1;
}

uint64_t _s23LighthouseDataProcessor41TranscriptProtoStructuredSearchExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v26 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  if ((sub_20E15AFBC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v18 = *(v17 + 24);
  v19 = a1;
  v20 = *(v13 + 48);
  v26 = v17;
  v27 = v19;
  sub_20E0486F4(v19 + v18, v16, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(a2 + v18, &v16[v20], &qword_27C863C48, &qword_20E323F30);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v16, v12, &qword_27C863C48, &qword_20E323F30);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_7:
    sub_20E04875C(v16, &qword_27C867E98, &qword_20E33AF70);
LABEL_11:
    v24 = 0;
    return v24 & 1;
  }

  sub_20E195B54(&v16[v20], v8, type metadata accessor for ToolKitProtoTypeInstance);
  v22 = static ToolKitProtoTypeInstance.== infix(_:_:)(v12, v8);
  sub_20E195C24(v8, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E195C24(v12, type metadata accessor for ToolKitProtoTypeInstance);
  sub_20E04875C(v16, &qword_27C863C48, &qword_20E323F30);
  if ((v22 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((sub_20E14B224(v27[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v23 = *(v26 + 28);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v24 = sub_20E322850();
  return v24 & 1;
}

uint64_t _s23LighthouseDataProcessor41TranscriptProtoStructuredSearchExpressionV0fG8PropertyV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_17;
  }

  v17 = a1[3];
  v18 = a2[3];
  if (v17)
  {
    if (!v18 || (a1[2] != a2[2] || v17 != v18) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v18)
  {
    goto LABEL_17;
  }

  v27 = v8;
  v28 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  v19 = *(v28 + 24);
  v20 = *(v13 + 48);
  sub_20E0486F4(a1 + v19, v16, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2 + v19, &v16[v20], &qword_27C8639D0, &unk_20E33C230);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
LABEL_20:
      v26 = *(v28 + 28);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v22 = sub_20E322850();
      return v22 & 1;
    }

    goto LABEL_16;
  }

  sub_20E0486F4(v16, v12, &qword_27C8639D0, &unk_20E33C230);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_16:
    sub_20E04875C(v16, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_17;
  }

  v24 = v27;
  sub_20E195B54(&v16[v20], v27, type metadata accessor for TranscriptProtoStatementID);
  v25 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v24);
  sub_20E195C24(v24, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
  if (v25)
  {
    goto LABEL_20;
  }

LABEL_17:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s23LighthouseDataProcessor41TranscriptProtoSpanMatchedEntityStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868018, &unk_20E33C430);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868020, &qword_20E33B0D0);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_20E0486F4(a1, &v45 - v24, &qword_27C8639D0, &unk_20E33C230);
  v52 = a2;
  sub_20E0486F4(a2, &v25[v26], &qword_27C8639D0, &unk_20E33C230);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_20E0486F4(v25, v20, &qword_27C8639D0, &unk_20E33C230);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_20E195B54(&v25[v26], v16, type metadata accessor for TranscriptProtoStatementID);
      v31 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_20E195C24(v16, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v25, &qword_27C8639D0, &unk_20E33C230);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v28 = &qword_27C867F30;
    v29 = &qword_20E33B000;
    v30 = v25;
LABEL_14:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v25, &qword_27C8639D0, &unk_20E33C230);
LABEL_8:
  v32 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_20E0486F4(v51 + v33, v50, &qword_27C868018, &unk_20E33C430);
  sub_20E0486F4(v52 + v33, v35 + v34, &qword_27C868018, &unk_20E33C430);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_20E04875C(v35, &qword_27C868018, &unk_20E33C430);
LABEL_18:
      v44 = *(v32 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v39 = sub_20E322850();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_20E0486F4(v35, v46, &qword_27C868018, &unk_20E33C430);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_20E195C24(v38, type metadata accessor for ContextProtoSpanMatchedEntity);
LABEL_13:
    v28 = &qword_27C868020;
    v29 = &qword_20E33B0D0;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_20E195B54(v41, v45, type metadata accessor for ContextProtoSpanMatchedEntity);
  v43 = static ContextProtoSpanMatchedEntity.== infix(_:_:)(v38, v42);
  sub_20E195C24(v42, type metadata accessor for ContextProtoSpanMatchedEntity);
  sub_20E195C24(v38, type metadata accessor for ContextProtoSpanMatchedEntity);
  sub_20E04875C(v35, &qword_27C868018, &unk_20E33C430);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s23LighthouseDataProcessor40TranscriptProtoRetrievedContextStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextProtoRetrievedContext(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868260, &unk_20E33C3D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868268, &qword_20E33B2F8);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for TranscriptProtoStatementID(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_20E0486F4(a1, &v45 - v24, &qword_27C8639D0, &unk_20E33C230);
  v52 = a2;
  sub_20E0486F4(a2, &v25[v26], &qword_27C8639D0, &unk_20E33C230);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_20E0486F4(v25, v20, &qword_27C8639D0, &unk_20E33C230);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_20E195B54(&v25[v26], v16, type metadata accessor for TranscriptProtoStatementID);
      v31 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_20E195C24(v16, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v25, &qword_27C8639D0, &unk_20E33C230);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v28 = &qword_27C867F30;
    v29 = &qword_20E33B000;
    v30 = v25;
LABEL_14:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v25, &qword_27C8639D0, &unk_20E33C230);
LABEL_8:
  v32 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_20E0486F4(v51 + v33, v50, &qword_27C868260, &unk_20E33C3D0);
  sub_20E0486F4(v52 + v33, v35 + v34, &qword_27C868260, &unk_20E33C3D0);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_20E04875C(v35, &qword_27C868260, &unk_20E33C3D0);
LABEL_18:
      v44 = *(v32 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v39 = sub_20E322850();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_20E0486F4(v35, v46, &qword_27C868260, &unk_20E33C3D0);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_20E195C24(v38, type metadata accessor for ContextProtoRetrievedContext);
LABEL_13:
    v28 = &qword_27C868268;
    v29 = &qword_20E33B2F8;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_20E195B54(v41, v45, type metadata accessor for ContextProtoRetrievedContext);
  v43 = static ContextProtoRetrievedContext.== infix(_:_:)(v38, v42);
  sub_20E195C24(v42, type metadata accessor for ContextProtoRetrievedContext);
  sub_20E195C24(v38, type metadata accessor for ContextProtoRetrievedContext);
  sub_20E04875C(v35, &qword_27C868260, &unk_20E33C3D0);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s23LighthouseDataProcessor39TranscriptProtoSystemRequirementMessageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemRequirementMessageEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863AA8, &unk_20E33C2D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868580, &qword_20E33B5A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863AA8, &unk_20E33C2D0);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863AA8, &unk_20E33C2D0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863AA8, &unk_20E33C2D0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSystemRequirementMessage(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863AA8, &unk_20E33C2D0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868580, &qword_20E33B5A0);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  v21 = _s23LighthouseDataProcessor43TranscriptProtoSystemRequirementMessageEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemRequirementMessageEnum);
  sub_20E04875C(v17, &qword_27C863AA8, &unk_20E33C2D0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor39TranscriptProtoASTFlatExprUpdateVariantV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868050, &qword_20E33B0F8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v43 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v20 = updated[6];
  v42 = v14;
  v21 = *(v14 + 48);
  v46 = a1;
  sub_20E0486F4(a1 + v20, v19, &qword_27C868048, &qword_20E33B0F0);
  v47 = a2;
  sub_20E0486F4(a2 + v20, &v19[v21], &qword_27C868048, &qword_20E33B0F0);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) == 1)
  {
    if (v22(&v19[v21], 1, v4) == 1)
    {
      sub_20E04875C(v19, &qword_27C868048, &qword_20E33B0F0);
      goto LABEL_9;
    }

LABEL_6:
    v23 = v19;
LABEL_7:
    sub_20E04875C(v23, &qword_27C868050, &qword_20E33B0F8);
    goto LABEL_18;
  }

  sub_20E0486F4(v19, v13, &qword_27C868048, &qword_20E33B0F0);
  if (v22(&v19[v21], 1, v4) == 1)
  {
    sub_20E195C24(v13, type metadata accessor for TranscriptProtoASTFlatValue);
    goto LABEL_6;
  }

  v24 = &v19[v21];
  v25 = v45;
  sub_20E195B54(v24, v45, type metadata accessor for TranscriptProtoASTFlatValue);
  v26 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v13, v25);
  sub_20E195C24(v25, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195C24(v13, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E04875C(v19, &qword_27C868048, &qword_20E33B0F0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v27 = v46;
  v28 = v47;
  if ((sub_20E14C50C(*v46, *v47) & 1) == 0)
  {
    goto LABEL_18;
  }

  v29 = v43;
  v30 = updated[7];
  v31 = *(v42 + 48);
  sub_20E0486F4(v27 + v30, v43, &qword_27C868048, &qword_20E33B0F0);
  sub_20E0486F4(v28 + v30, v29 + v31, &qword_27C868048, &qword_20E33B0F0);
  v32 = v4;
  if (v22(v29, 1, v4) != 1)
  {
    v33 = v41;
    sub_20E0486F4(v29, v41, &qword_27C868048, &qword_20E33B0F0);
    if (v22((v29 + v31), 1, v32) != 1)
    {
      v34 = v29 + v31;
      v35 = v45;
      sub_20E195B54(v34, v45, type metadata accessor for TranscriptProtoASTFlatValue);
      v36 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v33, v35);
      sub_20E195C24(v35, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E195C24(v33, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E04875C(v29, &qword_27C868048, &qword_20E33B0F0);
      if ((v36 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    sub_20E195C24(v33, type metadata accessor for TranscriptProtoASTFlatValue);
    goto LABEL_15;
  }

  if (v22((v29 + v31), 1, v4) != 1)
  {
LABEL_15:
    v23 = v29;
    goto LABEL_7;
  }

  sub_20E04875C(v29, &qword_27C868048, &qword_20E33B0F0);
LABEL_17:
  if (*(v27 + 8) == *(v28 + 8))
  {
    v39 = updated[8];
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v37 = sub_20E322850();
    return v37 & 1;
  }

LABEL_18:
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_20E1646E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  v8 = *(a3(0) + 28);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor39TranscriptProtoASTFlatExprPrefixVariantV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868050, &qword_20E33B0F8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_20E0486F4(&v18[v20], v16, &qword_27C868048, &qword_20E33B0F0);
  sub_20E0486F4(&v19[v20], &v16[v21], &qword_27C868048, &qword_20E33B0F0);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C868048, &qword_20E33B0F0);
LABEL_11:
      v26 = *(v27[0] + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v23 = sub_20E322850();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v16, v12, &qword_27C868048, &qword_20E33B0F0);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_7:
    sub_20E04875C(v16, &qword_27C868050, &qword_20E33B0F8);
    goto LABEL_8;
  }

  sub_20E195B54(&v16[v21], v8, type metadata accessor for TranscriptProtoASTFlatValue);
  v25 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E04875C(v16, &qword_27C868048, &qword_20E33B0F0);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor38TranscriptProtoSessionCoordinatorErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685D0, &qword_20E33B5F0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863ED8, &unk_20E33C2B0);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863ED8, &unk_20E33C2B0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863ED8, &unk_20E33C2B0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSessionCoordinatorError(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863ED8, &unk_20E33C2B0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C8685D0, &qword_20E33B5F0);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  v21 = _s23LighthouseDataProcessor42TranscriptProtoSessionCoordinatorErrorEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
  sub_20E04875C(v17, &qword_27C863ED8, &unk_20E33C2B0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor38TranscriptProtoParameterDisambiguationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (sub_20E1484A4(*(a1 + 16), *(a2 + 16)))
  {
    v6 = *(type metadata accessor for TranscriptProtoParameterDisambiguation(0) + 28);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor38TranscriptProtoASTFlatExprInfixVariantV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868050, &qword_20E33B0F8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v41 = v13;
  v42 = v8;
  v23 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  v45 = a2;
  v24 = a1;
  v43 = v23;
  v44 = a1;
  v25 = *(v23 + 20);
  v26 = *(v16 + 48);
  sub_20E0486F4(&v24[v25], v22, &qword_27C868048, &qword_20E33B0F0);
  sub_20E0486F4(&v45[v25], &v22[v26], &qword_27C868048, &qword_20E33B0F0);
  v27 = *(v5 + 48);
  if (v27(v22, 1, v4) != 1)
  {
    sub_20E0486F4(v22, v15, &qword_27C868048, &qword_20E33B0F0);
    if (v27(&v22[v26], 1, v4) != 1)
    {
      v29 = v42;
      sub_20E195B54(&v22[v26], v42, type metadata accessor for TranscriptProtoASTFlatValue);
      v30 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v15, v29);
      sub_20E195C24(v29, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E195C24(v15, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E04875C(v22, &qword_27C868048, &qword_20E33B0F0);
      if ((v30 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_20E195C24(v15, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_7:
    v28 = v22;
LABEL_15:
    sub_20E04875C(v28, &qword_27C868050, &qword_20E33B0F8);
    goto LABEL_16;
  }

  if (v27(&v22[v26], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_20E04875C(v22, &qword_27C868048, &qword_20E33B0F0);
LABEL_9:
  v31 = v43;
  v32 = *(v43 + 24);
  v33 = *(v16 + 48);
  sub_20E0486F4(&v44[v32], v20, &qword_27C868048, &qword_20E33B0F0);
  sub_20E0486F4(&v45[v32], &v20[v33], &qword_27C868048, &qword_20E33B0F0);
  if (v27(v20, 1, v4) == 1)
  {
    if (v27(&v20[v33], 1, v4) == 1)
    {
      sub_20E04875C(v20, &qword_27C868048, &qword_20E33B0F0);
LABEL_19:
      v39 = *(v31 + 28);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v35 = sub_20E322850();
      return v35 & 1;
    }

    goto LABEL_14;
  }

  v34 = v41;
  sub_20E0486F4(v20, v41, &qword_27C868048, &qword_20E33B0F0);
  if (v27(&v20[v33], 1, v4) == 1)
  {
    sub_20E195C24(v34, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_14:
    v28 = v20;
    goto LABEL_15;
  }

  v37 = v42;
  sub_20E195B54(&v20[v33], v42, type metadata accessor for TranscriptProtoASTFlatValue);
  v38 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v34, v37);
  sub_20E195C24(v37, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195C24(v34, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E04875C(v20, &qword_27C868048, &qword_20E33B0F0);
  if (v38)
  {
    goto LABEL_19;
  }

LABEL_16:
  v35 = 0;
  return v35 & 1;
}

uint64_t _s23LighthouseDataProcessor38TranscriptProtoASTFlatExprIndexVariantV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868050, &qword_20E33B0F8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v40 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  v21 = *(v18 + 48);
  v41 = a1;
  sub_20E0486F4(a1, &v37 - v19, &qword_27C868048, &qword_20E33B0F0);
  v42 = a2;
  sub_20E0486F4(a2, &v20[v21], &qword_27C868048, &qword_20E33B0F0);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_20E0486F4(v20, v13, &qword_27C868048, &qword_20E33B0F0);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      v24 = &v20[v21];
      v25 = v39;
      sub_20E195B54(v24, v39, type metadata accessor for TranscriptProtoASTFlatValue);
      v26 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v13, v25);
      sub_20E195C24(v25, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E195C24(v13, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E04875C(v20, &qword_27C868048, &qword_20E33B0F0);
      if ((v26 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v13, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_6:
    v23 = v20;
LABEL_14:
    sub_20E04875C(v23, &qword_27C868050, &qword_20E33B0F8);
    goto LABEL_15;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v20, &qword_27C868048, &qword_20E33B0F0);
LABEL_8:
  v27 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  v28 = *(v27 + 20);
  v29 = *(v14 + 48);
  v30 = v40;
  sub_20E0486F4(v41 + v28, v40, &qword_27C868048, &qword_20E33B0F0);
  sub_20E0486F4(v42 + v28, v30 + v29, &qword_27C868048, &qword_20E33B0F0);
  if (v22(v30, 1, v4) == 1)
  {
    if (v22((v30 + v29), 1, v4) == 1)
    {
      sub_20E04875C(v30, &qword_27C868048, &qword_20E33B0F0);
LABEL_18:
      v36 = *(v27 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v38;
  sub_20E0486F4(v30, v38, &qword_27C868048, &qword_20E33B0F0);
  if (v22((v30 + v29), 1, v4) == 1)
  {
    sub_20E195C24(v31, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_13:
    v23 = v30;
    goto LABEL_14;
  }

  v34 = v39;
  sub_20E195B54(v30 + v29, v39, type metadata accessor for TranscriptProtoASTFlatValue);
  v35 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v31, v34);
  sub_20E195C24(v34, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E195C24(v31, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_20E04875C(v30, &qword_27C868048, &qword_20E33B0F0);
  if (v35)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_20E165A80(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = a1[1];
  v6 = a2[1];
  if (v5)
  {
    if (v6)
    {
      v7 = *a1;
      if (*a1 == *a2 && v5 == v6)
      {
        goto LABEL_8;
      }

      v9 = a3;
      v10 = *a2;
      v11 = sub_20E322D60();
      a3 = v9;
      if (v11)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v6)
  {
LABEL_8:
    v12 = *(a3(0) + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor37TranscriptProtoASTFlatExprPickVariantV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTPickType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868208, &unk_20E33C3F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868210, &qword_20E33B2B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C868208, &unk_20E33C3F0);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C868208, &unk_20E33C3F0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C868208, &unk_20E33C3F0);
LABEL_12:
      v23 = *(v26 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_20E0486F4(v16, v12, &qword_27C868208, &unk_20E33C3F0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoASTPickType);
LABEL_9:
    sub_20E04875C(v16, &qword_27C868210, &qword_20E33B2B0);
    goto LABEL_10;
  }

  v21 = v25;
  sub_20E195B54(&v16[v18], v25, type metadata accessor for TranscriptProtoASTPickType);
  v22 = _s23LighthouseDataProcessor26TranscriptProtoASTPickTypeV2eeoiySbAC_ACtFZ_0(v12, v21);
  sub_20E195C24(v21, type metadata accessor for TranscriptProtoASTPickType);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoASTPickType);
  sub_20E04875C(v16, &qword_27C868208, &unk_20E33C3F0);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoUserConfirmExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = &v48 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v50 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v48 - v24;
  v52 = v23;
  v26 = *(v23 + 48);
  v54 = a1;
  sub_20E0486F4(a1, &v48 - v24, &qword_27C8639D0, &unk_20E33C230);
  v55 = a2;
  sub_20E0486F4(a2, &v25[v26], &qword_27C8639D0, &unk_20E33C230);
  v27 = *(v5 + 48);
  if (v27(v25, 1, v4) == 1)
  {
    if (v27(&v25[v26], 1, v4) == 1)
    {
      sub_20E04875C(v25, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_8;
    }

LABEL_6:
    v28 = v25;
LABEL_21:
    sub_20E04875C(v28, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_22;
  }

  sub_20E0486F4(v25, v15, &qword_27C8639D0, &unk_20E33C230);
  if (v27(&v25[v26], 1, v4) == 1)
  {
    sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  v29 = v53;
  sub_20E195B54(&v25[v26], v53, type metadata accessor for TranscriptProtoStatementID);
  v30 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v15, v29);
  sub_20E195C24(v29, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v25, &qword_27C8639D0, &unk_20E33C230);
  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v31 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v32 = v31[5];
  v33 = v52;
  v34 = *(v52 + 48);
  sub_20E0486F4(v54 + v32, v22, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v55 + v32, &v22[v34], &qword_27C8639D0, &unk_20E33C230);
  if (v27(v22, 1, v4) == 1)
  {
    if (v27(&v22[v34], 1, v4) != 1)
    {
LABEL_20:
      v28 = v22;
      goto LABEL_21;
    }

    sub_20E04875C(v22, &qword_27C8639D0, &unk_20E33C230);
LABEL_14:
    v40 = v31[6];
    v41 = *(v33 + 48);
    v22 = v50;
    sub_20E0486F4(v54 + v40, v50, &qword_27C8639D0, &unk_20E33C230);
    sub_20E0486F4(v55 + v40, &v22[v41], &qword_27C8639D0, &unk_20E33C230);
    if (v27(v22, 1, v4) == 1)
    {
      if (v27(&v22[v41], 1, v4) == 1)
      {
        sub_20E04875C(v22, &qword_27C8639D0, &unk_20E33C230);
LABEL_25:
        v47 = v31[7];
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v43 = sub_20E322850();
        return v43 & 1;
      }

      goto LABEL_20;
    }

    v42 = v49;
    sub_20E0486F4(v22, v49, &qword_27C8639D0, &unk_20E33C230);
    if (v27(&v22[v41], 1, v4) == 1)
    {
      v36 = v42;
      goto LABEL_19;
    }

    v45 = v53;
    sub_20E195B54(&v22[v41], v53, type metadata accessor for TranscriptProtoStatementID);
    v46 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v42, v45);
    sub_20E195C24(v45, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195C24(v42, type metadata accessor for TranscriptProtoStatementID);
    sub_20E04875C(v22, &qword_27C8639D0, &unk_20E33C230);
    if (v46)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v35 = v51;
  sub_20E0486F4(v22, v51, &qword_27C8639D0, &unk_20E33C230);
  if (v27(&v22[v34], 1, v4) == 1)
  {
    v36 = v35;
LABEL_19:
    sub_20E195C24(v36, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_20;
  }

  v37 = &v22[v34];
  v38 = v53;
  sub_20E195B54(v37, v53, type metadata accessor for TranscriptProtoStatementID);
  v39 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v35, v38);
  sub_20E195C24(v38, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v35, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v22, &qword_27C8639D0, &unk_20E33C230);
  if (v39)
  {
    goto LABEL_14;
  }

LABEL_22:
  v43 = 0;
  return v43 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoTypeConversionRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v70 = *(v4 - 8);
  v71 = v4;
  v5 = *(v70 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v66 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v10 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v72 = &v66 - v11;
  v12 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v75 = *(v12 - 8);
  v76 = v12;
  v13 = *(v75 + 64);
  MEMORY[0x28223BE20](v12);
  v68 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v73 = (&v66 - v17);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v18 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v77 = &v66 - v19;
  v20 = type metadata accessor for ToolKitProtoTypedValue(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = (&v66 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v66 - v32;
  v34 = *(v31 + 56);
  v78 = a1;
  sub_20E0486F4(a1, &v66 - v32, &qword_27C863B18, &qword_20E323EB0);
  v79 = a2;
  sub_20E0486F4(a2, &v33[v34], &qword_27C863B18, &qword_20E323EB0);
  v35 = *(v21 + 48);
  if (v35(v33, 1, v20) == 1)
  {
    if (v35(&v33[v34], 1, v20) == 1)
    {
      sub_20E04875C(v33, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &qword_27C867ED8;
    v37 = &qword_20E33AFA8;
    v38 = v33;
LABEL_21:
    sub_20E04875C(v38, v36, v37);
    goto LABEL_22;
  }

  sub_20E0486F4(v33, v28, &qword_27C863B18, &qword_20E323EB0);
  if (v35(&v33[v34], 1, v20) == 1)
  {
    sub_20E195C24(v28, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_20E195B54(&v33[v34], v24, type metadata accessor for ToolKitProtoTypedValue);
  v39 = static ToolKitProtoTypedValue.== infix(_:_:)(v28, v24);
  sub_20E195C24(v24, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v28, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v33, &qword_27C863B18, &qword_20E323EB0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v40 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v41 = v40[5];
  v42 = *(v74 + 48);
  v44 = v77;
  v43 = v78;
  sub_20E0486F4(v78 + v41, v77, &qword_27C863C48, &qword_20E323F30);
  v45 = v79;
  sub_20E0486F4(v79 + v41, v44 + v42, &qword_27C863C48, &qword_20E323F30);
  v46 = v76;
  v47 = *(v75 + 48);
  if (v47(v44, 1, v76) != 1)
  {
    v48 = v73;
    sub_20E0486F4(v44, v73, &qword_27C863C48, &qword_20E323F30);
    if (v47(v44 + v42, 1, v46) != 1)
    {
      v49 = v44 + v42;
      v50 = v68;
      sub_20E195B54(v49, v68, type metadata accessor for ToolKitProtoTypeInstance);
      v51 = static ToolKitProtoTypeInstance.== infix(_:_:)(v48, v50);
      sub_20E195C24(v50, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E195C24(v48, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E04875C(v44, &qword_27C863C48, &qword_20E323F30);
      if ((v51 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    sub_20E195C24(v48, type metadata accessor for ToolKitProtoTypeInstance);
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
  v52 = v40[6];
  v53 = *(v69 + 48);
  v54 = v72;
  sub_20E0486F4(v43 + v52, v72, &qword_27C8639D0, &unk_20E33C230);
  v55 = v45 + v52;
  v56 = v54;
  sub_20E0486F4(v55, v54 + v53, &qword_27C8639D0, &unk_20E33C230);
  v57 = v71;
  v58 = *(v70 + 48);
  if (v58(v54, 1, v71) == 1)
  {
    if (v58(v54 + v53, 1, v57) == 1)
    {
      sub_20E04875C(v54, &qword_27C8639D0, &unk_20E33C230);
LABEL_25:
      v65 = v40[7];
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v60 = sub_20E322850();
      return v60 & 1;
    }

    goto LABEL_20;
  }

  v59 = v67;
  sub_20E0486F4(v56, v67, &qword_27C8639D0, &unk_20E33C230);
  if (v58(v56 + v53, 1, v57) == 1)
  {
    sub_20E195C24(v59, type metadata accessor for TranscriptProtoStatementID);
LABEL_20:
    v36 = &qword_27C867F30;
    v37 = &qword_20E33B000;
    v38 = v56;
    goto LABEL_21;
  }

  v62 = v56 + v53;
  v63 = v66;
  sub_20E195B54(v62, v66, type metadata accessor for TranscriptProtoStatementID);
  v64 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v59, v63);
  sub_20E195C24(v63, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v59, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v56, &qword_27C8639D0, &unk_20E33C230);
  if (v64)
  {
    goto LABEL_25;
  }

LABEL_22:
  v60 = 0;
  return v60 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_20E322D60() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || (sub_20E147918(*(a1 + 40), *(a2 + 40)) & 1) == 0 || (sub_20E14CA38(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for TranscriptProtoToolRetrievalResponse(0) + 36);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoRequestPrescribedPlanV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8659F8, &unk_20E33C240);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686C0, &qword_20E33B6B8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C8659F8, &unk_20E33C240);
  sub_20E0486F4(a2, &v17[v18], &qword_27C8659F8, &unk_20E33C240);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C8659F8, &unk_20E33C240);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlan(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C8659F8, &unk_20E33C240);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C8686C0, &qword_20E33B6B8);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  v21 = _s23LighthouseDataProcessor40TranscriptProtoRequestPrescribedPlanEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestPrescribedPlanEnum);
  sub_20E04875C(v17, &qword_27C8659F8, &unk_20E33C240);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoQueryDecorationResultV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v5 = *(DecorationToolRetrievalResponse - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C40, &unk_20E33C460);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FA0, &qword_20E33B070);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  if ((sub_20E1463E0(*a1, *a2) & 1) == 0)
  {
    goto LABEL_12;
  }

  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v18 = *(DecorationResult + 28);
  v19 = a1;
  v20 = *(v13 + 48);
  v27 = DecorationResult;
  v28 = v19;
  sub_20E0486F4(v19 + v18, v16, &qword_27C863C40, &unk_20E33C460);
  sub_20E0486F4(a2 + v18, &v16[v20], &qword_27C863C40, &unk_20E33C460);
  v21 = *(v5 + 48);
  if (v21(v16, 1, DecorationToolRetrievalResponse) != 1)
  {
    sub_20E0486F4(v16, v12, &qword_27C863C40, &unk_20E33C460);
    if (v21(&v16[v20], 1, DecorationToolRetrievalResponse) != 1)
    {
      sub_20E195B54(&v16[v20], v8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor48ContextProtoQueryDecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_20E195C24(v8, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_20E195C24(v12, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
      sub_20E04875C(v16, &qword_27C863C40, &unk_20E33C460);
      if (DecorationToolRetrievalResponseV2eeoiySbAC_ACtFZ_0)
      {
        goto LABEL_9;
      }

LABEL_12:
      v25 = 0;
      return v25 & 1;
    }

    sub_20E195C24(v12, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
LABEL_7:
    sub_20E04875C(v16, &qword_27C867FA0, &qword_20E33B070);
    goto LABEL_12;
  }

  if (v21(&v16[v20], 1, DecorationToolRetrievalResponse) != 1)
  {
    goto LABEL_7;
  }

  sub_20E04875C(v16, &qword_27C863C40, &unk_20E33C460);
LABEL_9:
  v23 = v28;
  if ((sub_20E14D9E0(v28[1], a2[1]) & 1) == 0 || (sub_20E14E2F8(v23[2], a2[2]) & 1) == 0)
  {
    goto LABEL_12;
  }

  v24 = *(v27 + 32);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v25 = sub_20E322850();
  return v25 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoParameterConfirmationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v43 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v43 - v21;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_23;
  }

  v23 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_23;
    }
  }

  v45 = v13;
  v46 = v8;
  v50 = v20;
  v24 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v25 = *(v24 + 24);
  v26 = *(v16 + 48);
  v47 = v24;
  v48 = a1;
  sub_20E0486F4(a1 + v25, v22, &qword_27C863B18, &qword_20E323EB0);
  v49 = a2;
  sub_20E0486F4(a2 + v25, &v22[v26], &qword_27C863B18, &qword_20E323EB0);
  v27 = v5 + 48;
  v28 = *(v5 + 48);
  if (v28(v22, 1, v4) == 1)
  {
    if (v28(&v22[v26], 1, v4) != 1)
    {
LABEL_22:
      sub_20E04875C(v22, &qword_27C867ED8, &qword_20E33AFA8);
      goto LABEL_23;
    }

    v44 = v27;
    sub_20E04875C(v22, &qword_27C863B18, &qword_20E323EB0);
LABEL_16:
    v33 = v47;
    v34 = *(v47 + 28);
    v35 = *(v16 + 48);
    v22 = v50;
    sub_20E0486F4(v48 + v34, v50, &qword_27C863B18, &qword_20E323EB0);
    sub_20E0486F4(v49 + v34, &v22[v35], &qword_27C863B18, &qword_20E323EB0);
    if (v28(v22, 1, v4) == 1)
    {
      if (v28(&v22[v35], 1, v4) == 1)
      {
        sub_20E04875C(v22, &qword_27C863B18, &qword_20E323EB0);
LABEL_26:
        v42 = *(v33 + 32);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v37 = sub_20E322850();
        return v37 & 1;
      }

      goto LABEL_22;
    }

    v36 = v45;
    sub_20E0486F4(v22, v45, &qword_27C863B18, &qword_20E323EB0);
    if (v28(&v22[v35], 1, v4) == 1)
    {
      v29 = v36;
      goto LABEL_21;
    }

    v39 = &v22[v35];
    v40 = v46;
    sub_20E195B54(v39, v46, type metadata accessor for ToolKitProtoTypedValue);
    v41 = static ToolKitProtoTypedValue.== infix(_:_:)(v36, v40);
    sub_20E195C24(v40, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E195C24(v36, type metadata accessor for ToolKitProtoTypedValue);
    sub_20E04875C(v22, &qword_27C863B18, &qword_20E323EB0);
    if (v41)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  sub_20E0486F4(v22, v15, &qword_27C863B18, &qword_20E323EB0);
  if (v28(&v22[v26], 1, v4) == 1)
  {
    v29 = v15;
LABEL_21:
    sub_20E195C24(v29, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_22;
  }

  v44 = v27;
  v30 = &v22[v26];
  v31 = v46;
  sub_20E195B54(v30, v46, type metadata accessor for ToolKitProtoTypedValue);
  v32 = static ToolKitProtoTypedValue.== infix(_:_:)(v15, v31);
  sub_20E195C24(v31, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v15, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v22, &qword_27C863B18, &qword_20E323EB0);
  if (v32)
  {
    goto LABEL_16;
  }

LABEL_23:
  v37 = 0;
  return v37 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoClientUndoRedoRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_18;
  }

  v44 = v13;
  v45 = v8;
  v49 = v20;
  v23 = type metadata accessor for TranscriptProtoClientUndoRedoRequest(0);
  v24 = *(v23 + 24);
  v25 = *(v16 + 48);
  v46 = v23;
  v47 = a1;
  sub_20E0486F4(a1 + v24, v22, &qword_27C8639D0, &unk_20E33C230);
  v48 = a2;
  sub_20E0486F4(a2 + v24, &v22[v25], &qword_27C8639D0, &unk_20E33C230);
  v26 = v5 + 48;
  v27 = *(v5 + 48);
  if (v27(v22, 1, v4) == 1)
  {
    if (v27(&v22[v25], 1, v4) != 1)
    {
LABEL_17:
      sub_20E04875C(v22, &qword_27C867F30, &qword_20E33B000);
      goto LABEL_18;
    }

    v43 = v26;
    sub_20E04875C(v22, &qword_27C8639D0, &unk_20E33C230);
LABEL_11:
    v32 = v46;
    v33 = *(v46 + 28);
    v34 = *(v16 + 48);
    v22 = v49;
    sub_20E0486F4(v47 + v33, v49, &qword_27C8639D0, &unk_20E33C230);
    sub_20E0486F4(v48 + v33, &v22[v34], &qword_27C8639D0, &unk_20E33C230);
    if (v27(v22, 1, v4) == 1)
    {
      if (v27(&v22[v34], 1, v4) == 1)
      {
        sub_20E04875C(v22, &qword_27C8639D0, &unk_20E33C230);
LABEL_21:
        v41 = *(v32 + 32);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v36 = sub_20E322850();
        return v36 & 1;
      }

      goto LABEL_17;
    }

    v35 = v44;
    sub_20E0486F4(v22, v44, &qword_27C8639D0, &unk_20E33C230);
    if (v27(&v22[v34], 1, v4) == 1)
    {
      v28 = v35;
      goto LABEL_16;
    }

    v38 = &v22[v34];
    v39 = v45;
    sub_20E195B54(v38, v45, type metadata accessor for TranscriptProtoStatementID);
    v40 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v35, v39);
    sub_20E195C24(v39, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195C24(v35, type metadata accessor for TranscriptProtoStatementID);
    sub_20E04875C(v22, &qword_27C8639D0, &unk_20E33C230);
    if (v40)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  sub_20E0486F4(v22, v15, &qword_27C8639D0, &unk_20E33C230);
  if (v27(&v22[v25], 1, v4) == 1)
  {
    v28 = v15;
LABEL_16:
    sub_20E195C24(v28, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_17;
  }

  v43 = v26;
  v29 = &v22[v25];
  v30 = v45;
  sub_20E195B54(v29, v45, type metadata accessor for TranscriptProtoStatementID);
  v31 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v15, v30);
  sub_20E195C24(v30, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v22, &qword_27C8639D0, &unk_20E33C230);
  if (v31)
  {
    goto LABEL_11;
  }

LABEL_18:
  v36 = 0;
  return v36 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoActionResolverRequestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v82 = a2;
  v3 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v68 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = (&v67 - v8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868040, &qword_20E33B0E8);
  v9 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v73 = &v67 - v10;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = *(v77 + 64);
  MEMORY[0x28223BE20](v11);
  v74 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v75 = &v67 - v16;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v17 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v79 = &v67 - v18;
  v19 = type metadata accessor for TranscriptProtoParameterSet(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B30, &qword_20E323E58);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v67 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868270, &qword_20E33B300);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v67 - v31;
  v80 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v81 = a1;
  v33 = *(v80 + 28);
  v34 = *(v29 + 56);
  sub_20E0486F4(a1 + v33, v32, &qword_27C863B30, &qword_20E323E58);
  sub_20E0486F4(v82 + v33, &v32[v34], &qword_27C863B30, &qword_20E323E58);
  v35 = *(v20 + 48);
  if (v35(v32, 1, v19) == 1)
  {
    if (v35(&v32[v34], 1, v19) == 1)
    {
      sub_20E04875C(v32, &qword_27C863B30, &qword_20E323E58);
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  sub_20E0486F4(v32, v27, &qword_27C863B30, &qword_20E323E58);
  if (v35(&v32[v34], 1, v19) == 1)
  {
    sub_20E195C24(v27, type metadata accessor for TranscriptProtoParameterSet);
LABEL_11:
    v44 = &qword_27C868270;
    v45 = &qword_20E33B300;
LABEL_12:
    v46 = v32;
LABEL_13:
    sub_20E04875C(v46, v44, v45);
    goto LABEL_14;
  }

  sub_20E195B54(&v32[v34], v23, type metadata accessor for TranscriptProtoParameterSet);
  if ((sub_20E151DB0(*v27, *v23) & 1) == 0)
  {
    sub_20E195C24(v23, type metadata accessor for TranscriptProtoParameterSet);
    sub_20E195C24(v27, type metadata accessor for TranscriptProtoParameterSet);
    v44 = &qword_27C863B30;
    v45 = &qword_20E323E58;
    goto LABEL_12;
  }

  v49 = *(v19 + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v50 = sub_20E322850();
  sub_20E195C24(v23, type metadata accessor for TranscriptProtoParameterSet);
  sub_20E195C24(v27, type metadata accessor for TranscriptProtoParameterSet);
  sub_20E04875C(v32, &qword_27C863B30, &qword_20E323E58);
  if ((v50 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  v37 = v81;
  v36 = v82;
  if ((sub_20E150768(*v81, *v82) & 1) == 0 || *(v37 + 8) != *(v36 + 8))
  {
    goto LABEL_14;
  }

  v38 = v79;
  v39 = v80;
  v40 = *(v80 + 32);
  v41 = *(v76 + 48);
  sub_20E0486F4(v37 + v40, v79, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v36 + v40, v38 + v41, &qword_27C8639D0, &unk_20E33C230);
  v42 = v78;
  v43 = *(v77 + 48);
  if (v43(v38, 1, v78) == 1)
  {
    if (v43(v38 + v41, 1, v42) == 1)
    {
      sub_20E04875C(v38, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v51 = v75;
  sub_20E0486F4(v38, v75, &qword_27C8639D0, &unk_20E33C230);
  if (v43(v38 + v41, 1, v42) == 1)
  {
    sub_20E195C24(v51, type metadata accessor for TranscriptProtoStatementID);
LABEL_22:
    v44 = &qword_27C867F30;
    v45 = &qword_20E33B000;
    v46 = v38;
    goto LABEL_13;
  }

  v52 = v38 + v41;
  v53 = v74;
  sub_20E195B54(v52, v74, type metadata accessor for TranscriptProtoStatementID);
  v54 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v51, v53);
  sub_20E195C24(v53, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v51, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v38, &qword_27C8639D0, &unk_20E33C230);
  if ((v54 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_24:
  if (*(v37 + 9) != *(v36 + 9))
  {
    goto LABEL_14;
  }

  v55 = *(v39 + 36);
  v56 = *(v70 + 48);
  v57 = v73;
  sub_20E0486F4(v37 + v55, v73, &qword_27C8639C8, &unk_20E323870);
  v58 = v36 + v55;
  v59 = v57;
  sub_20E0486F4(v58, v57 + v56, &qword_27C8639C8, &unk_20E323870);
  v60 = v72;
  v61 = *(v71 + 48);
  if (v61(v57, 1, v72) == 1)
  {
    if (v61(v57 + v56, 1, v60) == 1)
    {
      sub_20E04875C(v57, &qword_27C8639C8, &unk_20E323870);
LABEL_32:
      v66 = *(v39 + 40);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v47 = sub_20E322850();
      return v47 & 1;
    }

    goto LABEL_30;
  }

  v62 = v69;
  sub_20E0486F4(v59, v69, &qword_27C8639C8, &unk_20E323870);
  if (v61(v59 + v56, 1, v60) == 1)
  {
    sub_20E195C24(v62, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_30:
    v44 = &qword_27C868040;
    v45 = &qword_20E33B0E8;
    v46 = v59;
    goto LABEL_13;
  }

  v63 = v59 + v56;
  v64 = v68;
  sub_20E195B54(v63, v68, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v65 = _s23LighthouseDataProcessor35TranscriptProtoGlobalToolIdentifierV2eeoiySbAC_ACtFZ_0(v62, v64);
  sub_20E195C24(v64, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E195C24(v62, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E04875C(v59, &qword_27C8639C8, &unk_20E323870);
  if (v65)
  {
    goto LABEL_32;
  }

LABEL_14:
  v47 = 0;
  return v47 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoASTFlatExprDotVariantV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868048, &qword_20E33B0F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868050, &qword_20E33B0F8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v27 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  v28 = a1;
  v17 = *(v27 + 20);
  v18 = *(v13 + 56);
  sub_20E0486F4(a1 + v17, v16, &qword_27C868048, &qword_20E33B0F0);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C868048, &qword_20E33B0F0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v11, &qword_27C868048, &qword_20E33B0F0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v26;
      sub_20E195B54(&v16[v18], v26, type metadata accessor for TranscriptProtoASTFlatValue);
      v22 = _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(v11, v21);
      sub_20E195C24(v21, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E195C24(v11, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_20E04875C(v16, &qword_27C868048, &qword_20E33B0F0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_20E195C24(v11, type metadata accessor for TranscriptProtoASTFlatValue);
LABEL_6:
    sub_20E04875C(v16, &qword_27C868050, &qword_20E33B0F8);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v16, &qword_27C868048, &qword_20E33B0F0);
LABEL_9:
  if (*v28 == *a2 && v28[1] == a2[1] || (sub_20E322D60() & 1) != 0)
  {
    v23 = *(v27 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v20 = sub_20E322850();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor35TranscriptProtoTypeConversionResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v68 = type metadata accessor for TranscriptProtoStatementID(0);
  v71 = *(v68 - 8);
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  v63 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v62 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v65 = &v60[-v10];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v11 = *(*(v67 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v67);
  v64 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v66 = &v60[-v14];
  v15 = type metadata accessor for ToolKitProtoTypedValue(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v60[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v60[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v60[-v27];
  v29 = *(v26 + 56);
  v69 = a1;
  sub_20E0486F4(a1, &v60[-v27], &qword_27C863B18, &qword_20E323EB0);
  v70 = a2;
  sub_20E0486F4(a2, &v28[v29], &qword_27C863B18, &qword_20E323EB0);
  v30 = *(v16 + 48);
  if (v30(v28, 1, v15) == 1)
  {
    if (v30(&v28[v29], 1, v15) == 1)
    {
      sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_8;
    }

LABEL_6:
    v31 = &qword_27C867ED8;
    v32 = &qword_20E33AFA8;
    v33 = v28;
LABEL_21:
    sub_20E04875C(v33, v31, v32);
    goto LABEL_22;
  }

  sub_20E0486F4(v28, v23, &qword_27C863B18, &qword_20E323EB0);
  if (v30(&v28[v29], 1, v15) == 1)
  {
    sub_20E195C24(v23, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_20E195B54(&v28[v29], v19, type metadata accessor for ToolKitProtoTypedValue);
  v34 = static ToolKitProtoTypedValue.== infix(_:_:)(v23, v19);
  sub_20E195C24(v19, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v23, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v28, &qword_27C863B18, &qword_20E323EB0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v35 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v36 = v35[5];
  v37 = v66;
  v38 = v67;
  v39 = *(v67 + 48);
  v40 = v69;
  sub_20E0486F4(v69 + v36, v66, &qword_27C8639D0, &unk_20E33C230);
  v41 = v70;
  sub_20E0486F4(v70 + v36, &v37[v39], &qword_27C8639D0, &unk_20E33C230);
  v42 = v71 + 48;
  v43 = *(v71 + 48);
  v44 = v68;
  if (v43(v37, 1, v68) == 1)
  {
    if (v43(&v37[v39], 1, v44) != 1)
    {
LABEL_20:
      v31 = &qword_27C867F30;
      v32 = &qword_20E33B000;
      v33 = v37;
      goto LABEL_21;
    }

    v71 = v42;
    sub_20E04875C(v37, &qword_27C8639D0, &unk_20E33C230);
LABEL_14:
    v49 = v35[6];
    v50 = *(v38 + 48);
    v51 = v64;
    sub_20E0486F4(v40 + v49, v64, &qword_27C8639D0, &unk_20E33C230);
    v52 = v41 + v49;
    v37 = v51;
    sub_20E0486F4(v52, &v51[v50], &qword_27C8639D0, &unk_20E33C230);
    if (v43(v51, 1, v44) == 1)
    {
      if (v43(&v51[v50], 1, v44) == 1)
      {
        sub_20E04875C(v51, &qword_27C8639D0, &unk_20E33C230);
LABEL_25:
        v59 = v35[7];
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v55 = sub_20E322850();
        return v55 & 1;
      }

      goto LABEL_20;
    }

    v53 = v51;
    v54 = v62;
    sub_20E0486F4(v53, v62, &qword_27C8639D0, &unk_20E33C230);
    if (v43(&v37[v50], 1, v44) == 1)
    {
      v46 = v54;
      goto LABEL_19;
    }

    v57 = v63;
    sub_20E195B54(&v37[v50], v63, type metadata accessor for TranscriptProtoStatementID);
    v58 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v54, v57);
    sub_20E195C24(v57, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195C24(v54, type metadata accessor for TranscriptProtoStatementID);
    sub_20E04875C(v37, &qword_27C8639D0, &unk_20E33C230);
    if (v58)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v45 = v65;
  sub_20E0486F4(v37, v65, &qword_27C8639D0, &unk_20E33C230);
  if (v43(&v37[v39], 1, v44) == 1)
  {
    v46 = v45;
LABEL_19:
    sub_20E195C24(v46, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_20;
  }

  v71 = v42;
  v47 = &v37[v39];
  v48 = v63;
  sub_20E195B54(v47, v63, type metadata accessor for TranscriptProtoStatementID);
  v61 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v45, v48);
  sub_20E195C24(v48, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v45, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v37, &qword_27C8639D0, &unk_20E33C230);
  if (v61)
  {
    goto LABEL_14;
  }

LABEL_22:
  v55 = 0;
  return v55 & 1;
}

uint64_t _s23LighthouseDataProcessor35TranscriptProtoExternalAgentRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v4);
  v53 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868708, &qword_20E33B700);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = (&v52 - v9);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868710, &qword_20E33B708);
  v10 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v58 = &v52 - v11;
  v12 = type metadata accessor for TranscriptProtoRequestContent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF8, &qword_20E33AFC8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v52 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F00, &qword_20E33AFD0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v52 - v24;
  v26 = *(v23 + 56);
  v59 = a1;
  sub_20E0486F4(a1, &v52 - v24, &qword_27C867EF8, &qword_20E33AFC8);
  sub_20E0486F4(a2, &v25[v26], &qword_27C867EF8, &qword_20E33AFC8);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) == 1)
  {
    if (v27(&v25[v26], 1, v12) == 1)
    {
      sub_20E04875C(v25, &qword_27C867EF8, &qword_20E33AFC8);
      goto LABEL_11;
    }

LABEL_6:
    v28 = &qword_27C867F00;
    v29 = &qword_20E33AFD0;
    v30 = v25;
LABEL_7:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_8;
  }

  sub_20E0486F4(v25, v20, &qword_27C867EF8, &qword_20E33AFC8);
  if (v27(&v25[v26], 1, v12) == 1)
  {
    sub_20E195C24(v20, type metadata accessor for TranscriptProtoRequestContent);
    goto LABEL_6;
  }

  sub_20E195B54(&v25[v26], v16, type metadata accessor for TranscriptProtoRequestContent);
  v33 = _s23LighthouseDataProcessor29TranscriptProtoRequestContentV2eeoiySbAC_ACtFZ_0(v20, v16);
  sub_20E195C24(v16, type metadata accessor for TranscriptProtoRequestContent);
  sub_20E195C24(v20, type metadata accessor for TranscriptProtoRequestContent);
  sub_20E04875C(v25, &qword_27C867EF8, &qword_20E33AFC8);
  if ((v33 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v34 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v35 = v34[5];
  v36 = v59;
  v37 = (v59 + v35);
  v38 = *(v59 + v35 + 8);
  v39 = (a2 + v35);
  v40 = v39[1];
  if (v38)
  {
    if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v40)
  {
    goto LABEL_8;
  }

  v41 = v34[6];
  v42 = *(v55 + 48);
  v43 = v58;
  sub_20E0486F4(v36 + v41, v58, &qword_27C868708, &qword_20E33B700);
  v44 = v43;
  sub_20E0486F4(a2 + v41, v43 + v42, &qword_27C868708, &qword_20E33B700);
  v45 = v57;
  v46 = *(v56 + 48);
  if (v46(v43, 1, v57) == 1)
  {
    if (v46(v43 + v42, 1, v45) == 1)
    {
      sub_20E04875C(v43, &qword_27C868708, &qword_20E33B700);
LABEL_21:
      v47 = v34[7];
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v31 = sub_20E322850();
      return v31 & 1;
    }

    goto LABEL_24;
  }

  v48 = v54;
  sub_20E0486F4(v44, v54, &qword_27C868708, &qword_20E33B700);
  if (v46(v44 + v42, 1, v45) == 1)
  {
    sub_20E195C24(v48, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
LABEL_24:
    v28 = &qword_27C868710;
    v29 = &qword_20E33B708;
LABEL_32:
    v30 = v44;
    goto LABEL_7;
  }

  v49 = v44 + v42;
  v50 = v53;
  sub_20E195B54(v49, v53, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  if ((*v48 != *v50 || v48[1] != v50[1]) && (sub_20E322D60() & 1) == 0 || (sub_20E1494E0(v48[2], v50[2]) & 1) == 0)
  {
    sub_20E195C24(v50, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    sub_20E195C24(v48, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    v28 = &qword_27C868708;
    v29 = &qword_20E33B700;
    goto LABEL_32;
  }

  v51 = *(v45 + 24);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  LOBYTE(v51) = sub_20E322850();
  sub_20E195C24(v50, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_20E195C24(v48, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  sub_20E04875C(v44, &qword_27C868708, &qword_20E33B700);
  if (v51)
  {
    goto LABEL_21;
  }

LABEL_8:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s23LighthouseDataProcessor35TranscriptProtoExternalAgentOutcomeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868000, &qword_20E33B0B8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v55 = &v49 - v13;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v49 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v49 - v25;
  if ((sub_20E1494E0(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v49 = v7;
  v27 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v56 = a2;
  v28 = *(v27 + 20);
  v29 = a1;
  v30 = *(v23 + 48);
  v50 = v27;
  v51 = v29;
  sub_20E0486F4(v29 + v28, v26, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v56 + v28, &v26[v30], &qword_27C8639D0, &unk_20E33C230);
  v31 = *(v15 + 48);
  if (v31(v26, 1, v14) != 1)
  {
    sub_20E0486F4(v26, v22, &qword_27C8639D0, &unk_20E33C230);
    if (v31(&v26[v30], 1, v14) != 1)
    {
      sub_20E195B54(&v26[v30], v18, type metadata accessor for TranscriptProtoStatementID);
      v35 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v22, v18);
      sub_20E195C24(v18, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v22, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v26, &qword_27C8639D0, &unk_20E33C230);
      if ((v35 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_20E195C24(v22, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    v32 = &qword_27C867F30;
    v33 = &qword_20E33B000;
    v34 = v26;
LABEL_15:
    sub_20E04875C(v34, v32, v33);
    goto LABEL_16;
  }

  if (v31(&v26[v30], 1, v14) != 1)
  {
    goto LABEL_7;
  }

  sub_20E04875C(v26, &qword_27C8639D0, &unk_20E33C230);
LABEL_9:
  v36 = v50;
  v37 = *(v50 + 24);
  v38 = *(v11 + 48);
  v39 = v55;
  sub_20E0486F4(v51 + v37, v55, &qword_27C863BA8, &unk_20E345F00);
  sub_20E0486F4(v56 + v37, v39 + v38, &qword_27C863BA8, &unk_20E345F00);
  v40 = v54;
  v41 = *(v53 + 48);
  if (v41(v39, 1, v54) == 1)
  {
    if (v41(v39 + v38, 1, v40) == 1)
    {
      sub_20E04875C(v39, &qword_27C863BA8, &unk_20E345F00);
LABEL_19:
      v48 = *(v36 + 28);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v43 = sub_20E322850();
      return v43 & 1;
    }

    goto LABEL_14;
  }

  v42 = v52;
  sub_20E0486F4(v39, v52, &qword_27C863BA8, &unk_20E345F00);
  if (v41(v39 + v38, 1, v40) == 1)
  {
    sub_20E195C24(v42, type metadata accessor for TranscriptProtoStatementOutcome);
LABEL_14:
    v32 = &qword_27C868000;
    v33 = &qword_20E33B0B8;
    v34 = v39;
    goto LABEL_15;
  }

  v45 = v39 + v38;
  v46 = v49;
  sub_20E195B54(v45, v49, type metadata accessor for TranscriptProtoStatementOutcome);
  v47 = _s23LighthouseDataProcessor31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v42, v46);
  sub_20E195C24(v46, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E195C24(v42, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E04875C(v39, &qword_27C863BA8, &unk_20E345F00);
  if (v47)
  {
    goto LABEL_19;
  }

LABEL_16:
  v43 = 0;
  return v43 & 1;
}

uint64_t _s23LighthouseDataProcessor35TranscriptProtoActionParameterValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B58, &qword_20E323E68);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = (&v45 - v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868648, &qword_20E33B658);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686A0, &unk_20E33C250);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8686A8, &qword_20E33B6A0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_20E0486F4(a1, &v45 - v24, &qword_27C8686A0, &unk_20E33C250);
  v52 = a2;
  sub_20E0486F4(a2, &v25[v26], &qword_27C8686A0, &unk_20E33C250);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_20E0486F4(v25, v20, &qword_27C8686A0, &unk_20E33C250);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_20E195B54(&v25[v26], v16, type metadata accessor for TranscriptProtoToolParameterValue);
      v31 = _s23LighthouseDataProcessor33TranscriptProtoToolParameterValueV2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_20E195C24(v16, type metadata accessor for TranscriptProtoToolParameterValue);
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoToolParameterValue);
      sub_20E04875C(v25, &qword_27C8686A0, &unk_20E33C250);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v20, type metadata accessor for TranscriptProtoToolParameterValue);
LABEL_6:
    v28 = &qword_27C8686A8;
    v29 = &qword_20E33B6A0;
    v30 = v25;
LABEL_14:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v25, &qword_27C8686A0, &unk_20E33C250);
LABEL_8:
  v32 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_20E0486F4(v51 + v33, v50, &qword_27C863B58, &qword_20E323E68);
  sub_20E0486F4(v52 + v33, v35 + v34, &qword_27C863B58, &qword_20E323E68);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_20E04875C(v35, &qword_27C863B58, &qword_20E323E68);
LABEL_18:
      v44 = *(v32 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v39 = sub_20E322850();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_20E0486F4(v35, v46, &qword_27C863B58, &qword_20E323E68);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_20E195C24(v38, type metadata accessor for TranscriptProtoPromptSelection);
LABEL_13:
    v28 = &qword_27C868648;
    v29 = &qword_20E33B658;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_20E195B54(v41, v45, type metadata accessor for TranscriptProtoPromptSelection);
  v43 = _s23LighthouseDataProcessor30TranscriptProtoPromptSelectionV2eeoiySbAC_ACtFZ_0(v38, v42);
  sub_20E195C24(v42, type metadata accessor for TranscriptProtoPromptSelection);
  sub_20E195C24(v38, type metadata accessor for TranscriptProtoPromptSelection);
  sub_20E04875C(v35, &qword_27C863B58, &qword_20E323E68);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s23LighthouseDataProcessor34TranscriptProtoUIConfirmationLabelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for TranscriptProtoUIConfirmationLabel(0) + 24);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor34TranscriptProtoParameterNotAllowedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v25 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_13;
  }

  v26 = v8;
  v25 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v17 = *(v25 + 24);
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C863B18, &qword_20E323EB0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_20E0486F4(v16, v12, &qword_27C863B18, &qword_20E323EB0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for ToolKitProtoTypedValue);
LABEL_9:
    sub_20E04875C(v16, &qword_27C867ED8, &qword_20E33AFA8);
LABEL_13:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v26;
  sub_20E195B54(&v16[v18], v26, type metadata accessor for ToolKitProtoTypedValue);
  v21 = static ToolKitProtoTypedValue.== infix(_:_:)(v12, v20);
  sub_20E195C24(v20, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v12, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v16, &qword_27C863B18, &qword_20E323EB0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_13;
  }

  v22 = *(v25 + 28);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v23 = sub_20E322850();
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor41TranscriptProtoParameterNeedsValueContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868470, &qword_20E33B4B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868478, &qword_20E33B4B8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C868470, &qword_20E33B4B0);
  sub_20E0486F4(a2, &v17[v18], &qword_27C868470, &qword_20E33B4B0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C868470, &qword_20E33B4B0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoParameterNeedsValueContext(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C868470, &qword_20E33B4B0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868478, &qword_20E33B4B8);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
  v21 = _s23LighthouseDataProcessor45TranscriptProtoParameterNeedsValueContextEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoParameterNeedsValueContextEnum);
  sub_20E04875C(v17, &qword_27C868470, &qword_20E33B4B0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor34TranscriptProtoParameterNeedsValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868488, &unk_20E33C310);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v50 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868490, &qword_20E33B4C8);
  v11 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v13 = &v50 - v12;
  v14 = type metadata accessor for ToolKitProtoTypeInstance(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863C48, &qword_20E323F30);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = (&v50 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867E98, &qword_20E33AF70);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v50 - v25;
  v27 = *a1;
  v28 = a1[1];
  v57 = a1;
  if ((v27 != *a2 || v28 != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v52 = v13;
  v50 = v7;
  v29 = a2;
  v51 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v30 = *(v51 + 20);
  v31 = *(v23 + 48);
  sub_20E0486F4(v57 + v30, v26, &qword_27C863C48, &qword_20E323F30);
  sub_20E0486F4(v29 + v30, &v26[v31], &qword_27C863C48, &qword_20E323F30);
  v32 = *(v15 + 48);
  if (v32(v26, 1, v14) != 1)
  {
    sub_20E0486F4(v26, v22, &qword_27C863C48, &qword_20E323F30);
    if (v32(&v26[v31], 1, v14) != 1)
    {
      sub_20E195B54(&v26[v31], v18, type metadata accessor for ToolKitProtoTypeInstance);
      v36 = static ToolKitProtoTypeInstance.== infix(_:_:)(v22, v18);
      sub_20E195C24(v18, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E195C24(v22, type metadata accessor for ToolKitProtoTypeInstance);
      sub_20E04875C(v26, &qword_27C863C48, &qword_20E323F30);
      if ((v36 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    sub_20E195C24(v22, type metadata accessor for ToolKitProtoTypeInstance);
LABEL_9:
    v33 = &qword_27C867E98;
    v34 = &qword_20E33AF70;
    v35 = v26;
LABEL_17:
    sub_20E04875C(v35, v33, v34);
    goto LABEL_18;
  }

  if (v32(&v26[v31], 1, v14) != 1)
  {
    goto LABEL_9;
  }

  sub_20E04875C(v26, &qword_27C863C48, &qword_20E323F30);
LABEL_11:
  v38 = v51;
  v37 = v52;
  v39 = *(v51 + 24);
  v40 = *(v54 + 48);
  sub_20E0486F4(v57 + v39, v52, &qword_27C868488, &unk_20E33C310);
  sub_20E0486F4(v29 + v39, v37 + v40, &qword_27C868488, &unk_20E33C310);
  v41 = v56;
  v42 = *(v55 + 48);
  if (v42(v37, 1, v56) == 1)
  {
    if (v42(v37 + v40, 1, v41) == 1)
    {
      sub_20E04875C(v37, &qword_27C868488, &unk_20E33C310);
LABEL_21:
      v49 = *(v38 + 28);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v44 = sub_20E322850();
      return v44 & 1;
    }

    goto LABEL_16;
  }

  v43 = v53;
  sub_20E0486F4(v37, v53, &qword_27C868488, &unk_20E33C310);
  if (v42(v37 + v40, 1, v41) == 1)
  {
    sub_20E195C24(v43, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
LABEL_16:
    v33 = &qword_27C868490;
    v34 = &qword_20E33B4C8;
    v35 = v37;
    goto LABEL_17;
  }

  v46 = v37 + v40;
  v47 = v50;
  sub_20E195B54(v46, v50, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
  v48 = _s23LighthouseDataProcessor41TranscriptProtoParameterNeedsValueContextV2eeoiySbAC_ACtFZ_0(v43, v47);
  sub_20E195C24(v47, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
  sub_20E195C24(v43, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
  sub_20E04875C(v37, &qword_27C868488, &unk_20E33C310);
  if (v48)
  {
    goto LABEL_21;
  }

LABEL_18:
  v44 = 0;
  return v44 & 1;
}

uint64_t _s23LighthouseDataProcessor33TranscriptProtoToolParameterValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868028, &qword_20E33B0D8);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v6 = (&v29 - v5);
  v7 = type metadata accessor for TranscriptProtoToolParameterValueEnum(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868030, &unk_20E33C420);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868038, &qword_20E33B0E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  v31 = a1;
  sub_20E0486F4(a1, &v29 - v18, &qword_27C868030, &unk_20E33C420);
  v32 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C868030, &unk_20E33C420);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) == 1)
  {
    if (v21(&v19[v20], 1, v7) == 1)
    {
      sub_20E04875C(v19, &qword_27C868030, &unk_20E33C420);
LABEL_9:
      v27 = *(type metadata accessor for TranscriptProtoToolParameterValue(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v22 = sub_20E322850();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v19, v14, &qword_27C868030, &unk_20E33C420);
  if (v21(&v19[v20], 1, v7) == 1)
  {
    sub_20E195C24(v14, type metadata accessor for TranscriptProtoToolParameterValueEnum);
LABEL_6:
    sub_20E04875C(v19, &qword_27C868038, &qword_20E33B0E0);
    goto LABEL_7;
  }

  v23 = &v19[v20];
  v24 = v29;
  sub_20E195B54(v23, v29, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  v25 = *(v30 + 48);
  sub_20E195BBC(v14, v6, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_20E195BBC(v24, v6 + v25, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  v26 = static ToolKitProtoTypedValue.== infix(_:_:)(v6, (v6 + v25));
  sub_20E195C24(v24, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_20E195C24(v6 + v25, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v6, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v14, type metadata accessor for TranscriptProtoToolParameterValueEnum);
  sub_20E04875C(v19, &qword_27C868030, &unk_20E33C420);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s23LighthouseDataProcessor33TranscriptProtoToolDisambiguationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = a1[1] == a2[1] && v4 == v5;
    if (!v6 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_20E147778(*a1, *a2, type metadata accessor for ToolKitProtoToolDefinition.Version1, type metadata accessor for ToolKitProtoToolDefinition.Version1, static ToolKitProtoToolDefinition.Version1.== infix(_:_:), type metadata accessor for ToolKitProtoToolDefinition.Version1))
  {
    v7 = *(type metadata accessor for TranscriptProtoToolDisambiguation(0) + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoPermissionRequirementV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 8)
  {
    if (v3 != 8)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v5 = *(type metadata accessor for TranscriptProtoPermissionRequirement(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor32TranscriptProtoActionRequirementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionRequirementEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B80, &qword_20E3263A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685A0, &qword_20E33B5C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C865B80, &qword_20E3263A0);
  sub_20E0486F4(a2, &v17[v18], &qword_27C865B80, &qword_20E3263A0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C865B80, &qword_20E3263A0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoActionRequirement(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C865B80, &qword_20E3263A0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionRequirementEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C8685A0, &qword_20E33B5C0);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoActionRequirementEnum);
  v21 = _s23LighthouseDataProcessor36TranscriptProtoActionRequirementEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoActionRequirementEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionRequirementEnum);
  sub_20E04875C(v17, &qword_27C865B80, &qword_20E3263A0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoSearchExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || *(a1 + 18) != *(a2 + 18))
  {
    return 0;
  }

  v6 = *(type metadata accessor for TranscriptProtoSearchExpression(0) + 32);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoRequestAmendmentV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestContent(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF8, &qword_20E33AFC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F00, &qword_20E33AFD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C867EF8, &qword_20E33AFC8);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C867EF8, &qword_20E33AFC8);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C867EF8, &qword_20E33AFC8);
LABEL_12:
      v23 = *(v26 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_20E0486F4(v16, v12, &qword_27C867EF8, &qword_20E33AFC8);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestContent);
LABEL_9:
    sub_20E04875C(v16, &qword_27C867F00, &qword_20E33AFD0);
    goto LABEL_10;
  }

  v21 = v25;
  sub_20E195B54(&v16[v18], v25, type metadata accessor for TranscriptProtoRequestContent);
  v22 = _s23LighthouseDataProcessor29TranscriptProtoRequestContentV2eeoiySbAC_ACtFZ_0(v12, v21);
  sub_20E195C24(v21, type metadata accessor for TranscriptProtoRequestContent);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestContent);
  sub_20E04875C(v16, &qword_27C867EF8, &qword_20E33AFC8);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor45TranscriptProtoPlanGenerationModelOutputErrorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868418, &unk_20E33C340);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v30 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868420, &qword_20E33B478);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_24;
  }

  v30 = v8;
  v31 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v17 = *(v31 + 24);
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C868418, &unk_20E33C340);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C868418, &unk_20E33C340);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v12, &qword_27C868418, &unk_20E33C340);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v24 = &v16[v18];
      v25 = v30;
      sub_20E195B54(v24, v30, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v26 = *v12 == *v25 && v12[1] == v25[1];
      if (v26 || (sub_20E322D60()) && v12[2] == v25[2])
      {
        v27 = *(v4 + 24);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v28 = sub_20E322850();
        sub_20E195C24(v25, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_20E195C24(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
        sub_20E04875C(v16, &qword_27C868418, &unk_20E33C340);
        if (v28)
        {
          goto LABEL_10;
        }

LABEL_24:
        v21 = 0;
        return v21 & 1;
      }

      sub_20E195C24(v25, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
      v22 = &qword_27C868418;
      v23 = &unk_20E33C340;
LABEL_23:
      sub_20E04875C(v16, v22, v23);
      goto LABEL_24;
    }

    sub_20E195C24(v12, type metadata accessor for TranscriptProtoIntelligenceFlowError);
LABEL_13:
    v22 = &qword_27C868420;
    v23 = &qword_20E33B478;
    goto LABEL_23;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_20E04875C(v16, &qword_27C868418, &unk_20E33C340);
LABEL_10:
  v20 = *(v31 + 28);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v21 = sub_20E322850();
  return v21 & 1;
}

uint64_t _s23LighthouseDataProcessor34TranscriptProtoPlanGenerationErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868428, &qword_20E33B480);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v6 = (&v29 - v5);
  v7 = type metadata accessor for TranscriptProtoPlanGenerationErrorEnum(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868430, &unk_20E33C330);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868438, &qword_20E33B488);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  v31 = a1;
  sub_20E0486F4(a1, &v29 - v18, &qword_27C868430, &unk_20E33C330);
  v32 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C868430, &unk_20E33C330);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) == 1)
  {
    if (v21(&v19[v20], 1, v7) == 1)
    {
      sub_20E04875C(v19, &qword_27C868430, &unk_20E33C330);
LABEL_9:
      v27 = *(type metadata accessor for TranscriptProtoPlanGenerationError(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v22 = sub_20E322850();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v19, v14, &qword_27C868430, &unk_20E33C330);
  if (v21(&v19[v20], 1, v7) == 1)
  {
    sub_20E195C24(v14, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
LABEL_6:
    sub_20E04875C(v19, &qword_27C868438, &qword_20E33B488);
    goto LABEL_7;
  }

  v23 = &v19[v20];
  v24 = v29;
  sub_20E195B54(v23, v29, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  v25 = *(v30 + 48);
  sub_20E195BBC(v14, v6, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_20E195BBC(v24, v6 + v25, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  v26 = _s23LighthouseDataProcessor45TranscriptProtoPlanGenerationModelOutputErrorV2eeoiySbAC_ACtFZ_0(v6, (v6 + v25));
  sub_20E195C24(v24, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_20E195C24(v6 + v25, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_20E195C24(v6, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_20E195C24(v14, type metadata accessor for TranscriptProtoPlanGenerationErrorEnum);
  sub_20E04875C(v19, &qword_27C868430, &unk_20E33C330);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoRecoverableErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868448, &qword_20E33B498);
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v29 - v5;
  v7 = type metadata accessor for TranscriptProtoRecoverableErrorEnum(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868450, &unk_20E33C320);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868458, &qword_20E33B4A0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v29 - v18;
  v20 = *(v17 + 56);
  v31 = a1;
  sub_20E0486F4(a1, &v29 - v18, &qword_27C868450, &unk_20E33C320);
  v32 = a2;
  sub_20E0486F4(a2, &v19[v20], &qword_27C868450, &unk_20E33C320);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) == 1)
  {
    if (v21(&v19[v20], 1, v7) == 1)
    {
      sub_20E04875C(v19, &qword_27C868450, &unk_20E33C320);
LABEL_9:
      v27 = *(type metadata accessor for TranscriptProtoRecoverableError(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v22 = sub_20E322850();
      return v22 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v19, v14, &qword_27C868450, &unk_20E33C320);
  if (v21(&v19[v20], 1, v7) == 1)
  {
    sub_20E195C24(v14, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
LABEL_6:
    sub_20E04875C(v19, &qword_27C868458, &qword_20E33B4A0);
    goto LABEL_7;
  }

  v23 = &v19[v20];
  v24 = v29;
  sub_20E195B54(v23, v29, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  v25 = *(v30 + 48);
  sub_20E195BBC(v14, v6, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_20E195BBC(v24, &v6[v25], type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  v26 = _s23LighthouseDataProcessor34TranscriptProtoPlanGenerationErrorV2eeoiySbAC_ACtFZ_0(v6, &v6[v25]);
  sub_20E195C24(v24, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_20E195C24(&v6[v25], type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_20E195C24(v6, type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_20E195C24(v14, type metadata accessor for TranscriptProtoRecoverableErrorEnum);
  sub_20E04875C(v19, &qword_27C868450, &unk_20E33C320);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoQueryStepResultsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((sub_20E152338(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v18 = *(StepResults + 24);
  v19 = *(v13 + 48);
  v25 = StepResults;
  v26 = a1;
  sub_20E0486F4(a1 + v18, v16, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2 + v18, &v16[v19], &qword_27C8639D0, &unk_20E33C230);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v12, &qword_27C8639D0, &unk_20E33C230);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      sub_20E195B54(&v16[v19], v8, type metadata accessor for TranscriptProtoStatementID);
      v23 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
      if ((v23 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    sub_20E04875C(v16, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_8;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
LABEL_11:
  if (v26[1] == a2[1] && v26[2] == a2[2] || (sub_20E322D60() & 1) != 0)
  {
    v24 = *(v25 + 28);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v21 = sub_20E322850();
    return v21 & 1;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoPrefixExpressionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_20E0486F4(&v18[v20], v16, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(&v19[v20], &v16[v21], &qword_27C8639D0, &unk_20E33C230);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
LABEL_11:
      v26 = *(v27[0] + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v23 = sub_20E322850();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v16, v12, &qword_27C8639D0, &unk_20E33C230);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    sub_20E04875C(v16, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_8;
  }

  sub_20E195B54(&v16[v21], v8, type metadata accessor for TranscriptProtoStatementID);
  v25 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoPhotosCandidatesV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = a1[1] == a2[1] && v4 == v5;
    if (!v6 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_20E1484A4(*a1, *a2))
  {
    v7 = *(type metadata accessor for TranscriptProtoPhotosCandidates(0) + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor30TranscriptProtoUndoRedoRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_26;
  }

  v23 = *(a1 + 32);
  v24 = *(a2 + 32);
  if (v23)
  {
    if (!v24 || (*(a1 + 24) != *(a2 + 24) || v23 != v24) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v24)
  {
    goto LABEL_26;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_26;
  }

  v43 = v13;
  v44 = v8;
  v45 = type metadata accessor for TranscriptProtoUndoRedoRequest(0);
  v25 = *(v45 + 28);
  v26 = *(v16 + 48);
  sub_20E0486F4(a1 + v25, v22, &qword_27C8639D0, &unk_20E33C230);
  v46 = v26;
  sub_20E0486F4(a2 + v25, &v22[v26], &qword_27C8639D0, &unk_20E33C230);
  v27 = v5 + 48;
  v28 = *(v5 + 48);
  if (v28(v22, 1, v4) != 1)
  {
    sub_20E0486F4(v22, v15, &qword_27C8639D0, &unk_20E33C230);
    v29 = v46;
    if (v28(&v22[v46], 1, v4) != 1)
    {
      v42 = v27;
      v31 = v44;
      sub_20E195B54(&v22[v29], v44, type metadata accessor for TranscriptProtoStatementID);
      LODWORD(v46) = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v15, v31);
      sub_20E195C24(v31, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v22, &qword_27C8639D0, &unk_20E33C230);
      if ((v46 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }

    sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
LABEL_17:
    v30 = v22;
LABEL_25:
    sub_20E04875C(v30, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_26;
  }

  if (v28(&v22[v46], 1, v4) != 1)
  {
    goto LABEL_17;
  }

  v42 = v27;
  sub_20E04875C(v22, &qword_27C8639D0, &unk_20E33C230);
LABEL_19:
  v32 = v45;
  v33 = *(v45 + 32);
  v34 = *(v16 + 48);
  sub_20E0486F4(a1 + v33, v20, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2 + v33, &v20[v34], &qword_27C8639D0, &unk_20E33C230);
  if (v28(v20, 1, v4) == 1)
  {
    if (v28(&v20[v34], 1, v4) == 1)
    {
      sub_20E04875C(v20, &qword_27C8639D0, &unk_20E33C230);
LABEL_29:
      v40 = *(v32 + 36);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v36 = sub_20E322850();
      return v36 & 1;
    }

    goto LABEL_24;
  }

  v35 = v43;
  sub_20E0486F4(v20, v43, &qword_27C8639D0, &unk_20E33C230);
  if (v28(&v20[v34], 1, v4) == 1)
  {
    sub_20E195C24(v35, type metadata accessor for TranscriptProtoStatementID);
LABEL_24:
    v30 = v20;
    goto LABEL_25;
  }

  v38 = v44;
  sub_20E195B54(&v20[v34], v44, type metadata accessor for TranscriptProtoStatementID);
  v39 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v35, v38);
  sub_20E195C24(v38, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v35, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v20, &qword_27C8639D0, &unk_20E33C230);
  if (v39)
  {
    goto LABEL_29;
  }

LABEL_26:
  v36 = 0;
  return v36 & 1;
}

uint64_t _s23LighthouseDataProcessor32TranscriptProtoResponseParameterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (v5 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      sub_20E047C8C(*(a1 + 16), *(a1 + 24));
      sub_20E047C8C(v8, v7);
      sub_20E047D10(v6, v5);
      goto LABEL_13;
    }

LABEL_10:
    sub_20E047C8C(*(a1 + 16), *(a1 + 24));
    sub_20E047C8C(v8, v7);
    sub_20E047D10(v6, v5);
    sub_20E047D10(v8, v7);
    return 0;
  }

  if (v7 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_20E047C8C(*(a1 + 16), *(a1 + 24));
  sub_20E047C8C(v8, v7);
  v10 = sub_20E15F7B0(v6, v5, v8, v7);
  sub_20E047D10(v8, v7);
  sub_20E047D10(v6, v5);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v11 = *(a1 + 40);
  v12 = *(a2 + 40);
  if (v11)
  {
    if (!v12 || (*(a1 + 32) != *(a2 + 32) || v11 != v12) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else if (v14 == 2 || ((v13 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v15 = *(a1 + 64);
  v16 = *(a2 + 64);
  if (v15)
  {
    if (!v16 || (*(a1 + 56) != *(a2 + 56) || v15 != v16) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(a1 + 72);
  v18 = *(a2 + 72);
  if (v17 != 2)
  {
    if (v18 != 2 && ((v17 ^ v18) & 1) == 0)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (v18 != 2)
  {
    return 0;
  }

LABEL_37:
  v19 = *(type metadata accessor for TranscriptProtoResponseParameter(0) + 40);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoResponseManifestV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v91 = type metadata accessor for TranscriptProtoUIType(0);
  v94 = *(v91 - 8);
  v4 = *(v94 + 64);
  MEMORY[0x28223BE20](v91);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868300, &unk_20E33C390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v95 = &v87 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868308, &qword_20E33B388);
  v10 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v92 = &v87 - v11;
  v12 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v98 = *(v12 - 8);
  v99 = v12;
  v13 = *(v98 + 64);
  MEMORY[0x28223BE20](v12);
  v93 = (&v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868310, &qword_20E33B390);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v96 = (&v87 - v17);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868318, &qword_20E33B398);
  v18 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v20 = &v87 - v19;
  v21 = type metadata accessor for TranscriptProtoResponseDialog(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (&v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868320, &unk_20E33C380);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = (&v87 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868328, &qword_20E33B3A0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v87 - v32;
  if ((sub_20E147778(*a1, *a2, type metadata accessor for TranscriptProtoResponseParameter, type metadata accessor for TranscriptProtoResponseParameter, _s23LighthouseDataProcessor32TranscriptProtoResponseParameterV2eeoiySbAC_ACtFZ_0, type metadata accessor for TranscriptProtoResponseParameter) & 1) == 0)
  {
    goto LABEL_16;
  }

  v87 = v6;
  v34 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v100 = a2;
  v35 = *(v34 + 20);
  v36 = a1;
  v37 = *(v30 + 48);
  v88 = v36;
  v89 = v34;
  sub_20E0486F4(v36 + v35, v33, &qword_27C868320, &unk_20E33C380);
  sub_20E0486F4(v100 + v35, &v33[v37], &qword_27C868320, &unk_20E33C380);
  v38 = *(v22 + 48);
  if (v38(v33, 1, v21) == 1)
  {
    if (v38(&v33[v37], 1, v21) == 1)
    {
      sub_20E04875C(v33, &qword_27C868320, &unk_20E33C380);
      goto LABEL_9;
    }

LABEL_7:
    v39 = &qword_27C868328;
    v40 = &qword_20E33B3A0;
    v41 = v33;
LABEL_15:
    sub_20E04875C(v41, v39, v40);
    goto LABEL_16;
  }

  sub_20E0486F4(v33, v29, &qword_27C868320, &unk_20E33C380);
  if (v38(&v33[v37], 1, v21) == 1)
  {
    sub_20E195C24(v29, type metadata accessor for TranscriptProtoResponseDialog);
    goto LABEL_7;
  }

  sub_20E195B54(&v33[v37], v25, type metadata accessor for TranscriptProtoResponseDialog);
  v42 = _s23LighthouseDataProcessor29TranscriptProtoResponseDialogV2eeoiySbAC_ACtFZ_0(v29, v25);
  sub_20E195C24(v25, type metadata accessor for TranscriptProtoResponseDialog);
  sub_20E195C24(v29, type metadata accessor for TranscriptProtoResponseDialog);
  sub_20E04875C(v33, &qword_27C868320, &unk_20E33C380);
  if ((v42 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v43 = v88;
  v44 = v89;
  v45 = v89[6];
  v46 = *(v97 + 48);
  sub_20E0486F4(v88 + v45, v20, &qword_27C868310, &qword_20E33B390);
  v47 = v100 + v45;
  v48 = v100;
  sub_20E0486F4(v47, &v20[v46], &qword_27C868310, &qword_20E33B390);
  v49 = v99;
  v50 = *(v98 + 48);
  if (v50(v20, 1, v99) != 1)
  {
    v53 = v96;
    sub_20E0486F4(v20, v96, &qword_27C868310, &qword_20E33B390);
    v54 = v50(&v20[v46], 1, v49);
    v52 = v87;
    if (v54 != 1)
    {
      v57 = &v20[v46];
      v58 = v93;
      sub_20E195B54(v57, v93, type metadata accessor for TranscriptProtoResponseVisual);
      v59 = _s23LighthouseDataProcessor29TranscriptProtoResponseVisualV2eeoiySbAC_ACtFZ_0(v53, v58);
      sub_20E195C24(v58, type metadata accessor for TranscriptProtoResponseVisual);
      sub_20E195C24(v53, type metadata accessor for TranscriptProtoResponseVisual);
      sub_20E04875C(v20, &qword_27C868310, &qword_20E33B390);
      if ((v59 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_20E195C24(v53, type metadata accessor for TranscriptProtoResponseVisual);
    goto LABEL_14;
  }

  v51 = v50(&v20[v46], 1, v49);
  v52 = v87;
  if (v51 != 1)
  {
LABEL_14:
    v39 = &qword_27C868318;
    v40 = &qword_20E33B398;
    v41 = v20;
    goto LABEL_15;
  }

  sub_20E04875C(v20, &qword_27C868310, &qword_20E33B390);
LABEL_19:
  v60 = v44[7];
  v61 = (v43 + v60);
  v62 = *(v43 + v60 + 8);
  v63 = (v48 + v60);
  v64 = v63[1];
  if (v62)
  {
    v66 = v94;
    v65 = v95;
    if (!v64 || (*v61 != *v63 || v62 != v64) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v66 = v94;
    v65 = v95;
    if (v64)
    {
      goto LABEL_16;
    }
  }

  v67 = v44[8];
  v68 = (v43 + v67);
  v69 = *(v43 + v67 + 8);
  v70 = (v48 + v67);
  v71 = v70[1];
  if (v69)
  {
    if (!v71 || (*v68 != *v70 || v69 != v71) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v71)
  {
    goto LABEL_16;
  }

  v72 = v44[9];
  v73 = *(v43 + v72);
  v74 = *(v48 + v72);
  if (v73 == 2)
  {
    if (v74 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v74 == 2 || ((v73 ^ v74) & 1) != 0)
  {
    goto LABEL_16;
  }

  v75 = v44[10];
  v76 = *(v43 + v75);
  v77 = *(v48 + v75);
  if (v76 == 2)
  {
    if (v77 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v77 == 2 || ((v77 ^ v76) & 1) != 0)
  {
    goto LABEL_16;
  }

  v78 = v44[11];
  v79 = *(v90 + 48);
  v80 = v92;
  sub_20E0486F4(v43 + v78, v92, &qword_27C868300, &unk_20E33C390);
  v81 = v80;
  sub_20E0486F4(v100 + v78, v80 + v79, &qword_27C868300, &unk_20E33C390);
  v82 = *(v66 + 48);
  v83 = v80;
  v84 = v91;
  if (v82(v83, 1, v91) == 1)
  {
    if (v82(v81 + v79, 1, v84) == 1)
    {
      sub_20E04875C(v81, &qword_27C868300, &unk_20E33C390);
LABEL_50:
      v86 = v89[12];
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v55 = sub_20E322850();
      return v55 & 1;
    }

    goto LABEL_48;
  }

  sub_20E0486F4(v81, v65, &qword_27C868300, &unk_20E33C390);
  if (v82(v81 + v79, 1, v84) == 1)
  {
    sub_20E195C24(v65, type metadata accessor for TranscriptProtoUIType);
LABEL_48:
    v39 = &qword_27C868308;
    v40 = &qword_20E33B388;
    v41 = v81;
    goto LABEL_15;
  }

  sub_20E195B54(v81 + v79, v52, type metadata accessor for TranscriptProtoUIType);
  v85 = _s23LighthouseDataProcessor21TranscriptProtoUITypeV2eeoiySbAC_ACtFZ_0(v65, v52);
  sub_20E195C24(v52, type metadata accessor for TranscriptProtoUIType);
  sub_20E195C24(v65, type metadata accessor for TranscriptProtoUIType);
  sub_20E04875C(v81, &qword_27C868300, &unk_20E33C390);
  if (v85)
  {
    goto LABEL_50;
  }

LABEL_16:
  v55 = 0;
  return v55 & 1;
}

uint64_t _s23LighthouseDataProcessor37TranscriptProtoStatementResultPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B48, &unk_20E33C280);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = (&v45 - v9);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868640, &qword_20E33B650);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868000, &qword_20E33B0B8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_20E0486F4(a1, &v45 - v24, &qword_27C863BA8, &unk_20E345F00);
  v52 = a2;
  sub_20E0486F4(a2, &v25[v26], &qword_27C863BA8, &unk_20E345F00);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_20E0486F4(v25, v20, &qword_27C863BA8, &unk_20E345F00);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_20E195B54(&v25[v26], v16, type metadata accessor for TranscriptProtoStatementOutcome);
      v31 = _s23LighthouseDataProcessor31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_20E195C24(v16, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcome);
      sub_20E04875C(v25, &qword_27C863BA8, &unk_20E345F00);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementOutcome);
LABEL_6:
    v28 = &qword_27C868000;
    v29 = &qword_20E33B0B8;
    v30 = v25;
LABEL_14:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v25, &qword_27C863BA8, &unk_20E345F00);
LABEL_8:
  v32 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_20E0486F4(v51 + v33, v50, &qword_27C863B48, &unk_20E33C280);
  sub_20E0486F4(v52 + v33, v35 + v34, &qword_27C863B48, &unk_20E33C280);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_20E04875C(v35, &qword_27C863B48, &unk_20E33C280);
LABEL_18:
      v44 = *(v32 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v39 = sub_20E322850();
      return v39 & 1;
    }

    goto LABEL_13;
  }

  v38 = v46;
  sub_20E0486F4(v35, v46, &qword_27C863B48, &unk_20E33C280);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_20E195C24(v38, type metadata accessor for TranscriptProtoResponseManifest);
LABEL_13:
    v28 = &qword_27C868640;
    v29 = &qword_20E33B650;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_20E195B54(v41, v45, type metadata accessor for TranscriptProtoResponseManifest);
  v43 = _s23LighthouseDataProcessor31TranscriptProtoResponseManifestV2eeoiySbAC_ACtFZ_0(v38, v42);
  sub_20E195C24(v42, type metadata accessor for TranscriptProtoResponseManifest);
  sub_20E195C24(v38, type metadata accessor for TranscriptProtoResponseManifest);
  sub_20E04875C(v35, &qword_27C863B48, &unk_20E33C280);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s23LighthouseDataProcessor30TranscriptProtoStatementResultV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v100 = *(v4 - 8);
  v101 = v4;
  v5 = *(v100 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v98 = (&v94 - v10);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868040, &qword_20E33B0E8);
  v11 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v13 = &v94 - v12;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v109 = *(v14 - 8);
  v110 = v14;
  v15 = v109[8];
  MEMORY[0x28223BE20](v14);
  v106 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v102 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v104 = &v94 - v22;
  MEMORY[0x28223BE20](v21);
  v107 = &v94 - v23;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v24 = *(*(v111 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v111);
  v103 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v105 = &v94 - v28;
  MEMORY[0x28223BE20](v27);
  v108 = &v94 - v29;
  v30 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v38 = &v94 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868638, &qword_20E33B648);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v42 = &v94 - v41;
  v43 = a1[1];
  v44 = a2[1];
  if (v43)
  {
    if (!v44 || (*a1 != *a2 || v43 != v44) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v44)
  {
    goto LABEL_34;
  }

  v94 = v7;
  v95 = v13;
  v45 = type metadata accessor for TranscriptProtoStatementResult(0);
  v46 = *(v45 + 20);
  v47 = *(v39 + 48);
  v96 = a1;
  v97 = v45;
  sub_20E0486F4(a1 + v46, v42, &qword_27C863FB8, &unk_20E325F60);
  v48 = a2 + v46;
  v49 = a2;
  sub_20E0486F4(v48, &v42[v47], &qword_27C863FB8, &unk_20E325F60);
  v50 = *(v31 + 48);
  if (v50(v42, 1, v30) == 1)
  {
    if (v50(&v42[v47], 1, v30) == 1)
    {
      sub_20E04875C(v42, &qword_27C863FB8, &unk_20E325F60);
      goto LABEL_15;
    }

LABEL_13:
    v51 = &qword_27C868638;
    v52 = &qword_20E33B648;
    v53 = v42;
LABEL_33:
    sub_20E04875C(v53, v51, v52);
    goto LABEL_34;
  }

  sub_20E0486F4(v42, v38, &qword_27C863FB8, &unk_20E325F60);
  if (v50(&v42[v47], 1, v30) == 1)
  {
    sub_20E195C24(v38, type metadata accessor for TranscriptProtoStatementResultPayload);
    goto LABEL_13;
  }

  sub_20E195B54(&v42[v47], v34, type metadata accessor for TranscriptProtoStatementResultPayload);
  v54 = _s23LighthouseDataProcessor37TranscriptProtoStatementResultPayloadV2eeoiySbAC_ACtFZ_0(v38, v34);
  sub_20E195C24(v34, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_20E195C24(v38, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_20E04875C(v42, &qword_27C863FB8, &unk_20E325F60);
  if ((v54 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_15:
  v55 = v96;
  v56 = v97[6];
  v57 = *(v111 + 48);
  v58 = v108;
  sub_20E0486F4(v96 + v56, v108, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v49 + v56, v58 + v57, &qword_27C8639D0, &unk_20E33C230);
  v59 = v110;
  v60 = v109[6];
  if (v60(v58, 1, v110) == 1)
  {
    if (v60(v58 + v57, 1, v59) == 1)
    {
      v109 = v49;
      sub_20E04875C(v58, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v61 = v107;
  sub_20E0486F4(v58, v107, &qword_27C8639D0, &unk_20E33C230);
  if (v60(v58 + v57, 1, v59) == 1)
  {
    sub_20E195C24(v61, type metadata accessor for TranscriptProtoStatementID);
LABEL_20:
    v51 = &qword_27C867F30;
    v52 = &qword_20E33B000;
    v53 = v58;
    goto LABEL_33;
  }

  v109 = v49;
  v62 = v58 + v57;
  v63 = v106;
  sub_20E195B54(v62, v106, type metadata accessor for TranscriptProtoStatementID);
  v64 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v61, v63);
  sub_20E195C24(v63, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v61, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v58, &qword_27C8639D0, &unk_20E33C230);
  if ((v64 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_22:
  v65 = v97;
  v66 = v97[7];
  v67 = *(v111 + 48);
  v68 = v105;
  sub_20E0486F4(v55 + v66, v105, &qword_27C8639D0, &unk_20E33C230);
  v69 = v109;
  sub_20E0486F4(v109 + v66, v68 + v67, &qword_27C8639D0, &unk_20E33C230);
  if (v60(v68, 1, v59) == 1)
  {
    if (v60(v68 + v67, 1, v59) != 1)
    {
LABEL_32:
      v51 = &qword_27C867F30;
      v52 = &qword_20E33B000;
      v53 = v68;
      goto LABEL_33;
    }

    sub_20E04875C(v68, &qword_27C8639D0, &unk_20E33C230);
  }

  else
  {
    v70 = v104;
    sub_20E0486F4(v68, v104, &qword_27C8639D0, &unk_20E33C230);
    if (v60(v68 + v67, 1, v59) == 1)
    {
LABEL_31:
      sub_20E195C24(v70, type metadata accessor for TranscriptProtoStatementID);
      goto LABEL_32;
    }

    v71 = v68 + v67;
    v72 = v106;
    sub_20E195B54(v71, v106, type metadata accessor for TranscriptProtoStatementID);
    v73 = v68;
    v74 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v70, v72);
    sub_20E195C24(v72, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195C24(v70, type metadata accessor for TranscriptProtoStatementID);
    sub_20E04875C(v73, &qword_27C8639D0, &unk_20E33C230);
    if ((v74 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v75 = v65[8];
  v76 = *(v111 + 48);
  v77 = v96;
  v68 = v103;
  sub_20E0486F4(v96 + v75, v103, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v69 + v75, v68 + v76, &qword_27C8639D0, &unk_20E33C230);
  if (v60(v68, 1, v59) != 1)
  {
    v70 = v102;
    sub_20E0486F4(v68, v102, &qword_27C8639D0, &unk_20E33C230);
    if (v60(v68 + v76, 1, v59) != 1)
    {
      v80 = v106;
      sub_20E195B54(v68 + v76, v106, type metadata accessor for TranscriptProtoStatementID);
      v81 = v68;
      v82 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v70, v80);
      sub_20E195C24(v80, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v70, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v81, &qword_27C8639D0, &unk_20E33C230);
      if ((v82 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    goto LABEL_31;
  }

  if (v60(v68 + v76, 1, v59) != 1)
  {
    goto LABEL_32;
  }

  sub_20E04875C(v68, &qword_27C8639D0, &unk_20E33C230);
LABEL_37:
  v83 = v97;
  v84 = v97[9];
  v85 = *(v99 + 48);
  v86 = v95;
  sub_20E0486F4(v77 + v84, v95, &qword_27C8639C8, &unk_20E323870);
  sub_20E0486F4(v69 + v84, v86 + v85, &qword_27C8639C8, &unk_20E323870);
  v87 = v101;
  v88 = *(v100 + 48);
  if (v88(v86, 1, v101) == 1)
  {
    if (v88(v86 + v85, 1, v87) == 1)
    {
      sub_20E04875C(v86, &qword_27C8639C8, &unk_20E323870);
LABEL_44:
      v93 = v83[10];
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v78 = sub_20E322850();
      return v78 & 1;
    }

    goto LABEL_42;
  }

  v89 = v98;
  sub_20E0486F4(v86, v98, &qword_27C8639C8, &unk_20E323870);
  if (v88(v86 + v85, 1, v87) == 1)
  {
    sub_20E195C24(v89, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_42:
    v51 = &qword_27C868040;
    v52 = &qword_20E33B0E8;
    v53 = v86;
    goto LABEL_33;
  }

  v90 = v86 + v85;
  v91 = v94;
  sub_20E195B54(v90, v94, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v92 = _s23LighthouseDataProcessor35TranscriptProtoGlobalToolIdentifierV2eeoiySbAC_ACtFZ_0(v89, v91);
  sub_20E195C24(v91, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E195C24(v89, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E04875C(v86, &qword_27C8639C8, &unk_20E323870);
  if (v92)
  {
    goto LABEL_44;
  }

LABEL_34:
  v78 = 0;
  return v78 & 1;
}

uint64_t _s23LighthouseDataProcessor30TranscriptProtoInfixExpressionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v41 = v13;
  v42 = v8;
  v23 = type metadata accessor for TranscriptProtoInfixExpression(0);
  v45 = a2;
  v24 = a1;
  v43 = v23;
  v44 = a1;
  v25 = *(v23 + 20);
  v26 = *(v16 + 48);
  sub_20E0486F4(&v24[v25], v22, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(&v45[v25], &v22[v26], &qword_27C8639D0, &unk_20E33C230);
  v27 = *(v5 + 48);
  if (v27(v22, 1, v4) != 1)
  {
    sub_20E0486F4(v22, v15, &qword_27C8639D0, &unk_20E33C230);
    if (v27(&v22[v26], 1, v4) != 1)
    {
      v29 = v42;
      sub_20E195B54(&v22[v26], v42, type metadata accessor for TranscriptProtoStatementID);
      v30 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v15, v29);
      sub_20E195C24(v29, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v22, &qword_27C8639D0, &unk_20E33C230);
      if ((v30 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
LABEL_7:
    v28 = v22;
LABEL_15:
    sub_20E04875C(v28, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_16;
  }

  if (v27(&v22[v26], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_20E04875C(v22, &qword_27C8639D0, &unk_20E33C230);
LABEL_9:
  v31 = v43;
  v32 = *(v43 + 24);
  v33 = *(v16 + 48);
  sub_20E0486F4(&v44[v32], v20, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(&v45[v32], &v20[v33], &qword_27C8639D0, &unk_20E33C230);
  if (v27(v20, 1, v4) == 1)
  {
    if (v27(&v20[v33], 1, v4) == 1)
    {
      sub_20E04875C(v20, &qword_27C8639D0, &unk_20E33C230);
LABEL_19:
      v39 = *(v31 + 28);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v35 = sub_20E322850();
      return v35 & 1;
    }

    goto LABEL_14;
  }

  v34 = v41;
  sub_20E0486F4(v20, v41, &qword_27C8639D0, &unk_20E33C230);
  if (v27(&v20[v33], 1, v4) == 1)
  {
    sub_20E195C24(v34, type metadata accessor for TranscriptProtoStatementID);
LABEL_14:
    v28 = v20;
    goto LABEL_15;
  }

  v37 = v42;
  sub_20E195B54(&v20[v33], v42, type metadata accessor for TranscriptProtoStatementID);
  v38 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v34, v37);
  sub_20E195C24(v37, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v34, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v20, &qword_27C8639D0, &unk_20E33C230);
  if (v38)
  {
    goto LABEL_19;
  }

LABEL_16:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_20E170688(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v40 = a3;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v39 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v38 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v41 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v22 = *(v19 + 48);
  v42 = a1;
  sub_20E0486F4(a1, &v38 - v20, &qword_27C8639D0, &unk_20E33C230);
  v43 = a2;
  sub_20E0486F4(a2, &v21[v22], &qword_27C8639D0, &unk_20E33C230);
  v23 = *(v6 + 48);
  if (v23(v21, 1, v5) != 1)
  {
    sub_20E0486F4(v21, v14, &qword_27C8639D0, &unk_20E33C230);
    if (v23(&v21[v22], 1, v5) != 1)
    {
      v25 = &v21[v22];
      v26 = v39;
      sub_20E195B54(v25, v39, type metadata accessor for TranscriptProtoStatementID);
      v27 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v14, v26);
      sub_20E195C24(v26, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v14, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v21, &qword_27C8639D0, &unk_20E33C230);
      if ((v27 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v14, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    v24 = v21;
LABEL_14:
    sub_20E04875C(v24, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_15;
  }

  if (v23(&v21[v22], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v21, &qword_27C8639D0, &unk_20E33C230);
LABEL_8:
  v28 = v40(0);
  v29 = *(v28 + 20);
  v30 = *(v15 + 48);
  v31 = v41;
  sub_20E0486F4(v42 + v29, v41, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v43 + v29, v31 + v30, &qword_27C8639D0, &unk_20E33C230);
  if (v23(v31, 1, v5) == 1)
  {
    if (v23((v31 + v30), 1, v5) == 1)
    {
      sub_20E04875C(v31, &qword_27C8639D0, &unk_20E33C230);
LABEL_18:
      v37 = *(v28 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v33 = sub_20E322850();
      return v33 & 1;
    }

    goto LABEL_13;
  }

  v32 = v38;
  sub_20E0486F4(v31, v38, &qword_27C8639D0, &unk_20E33C230);
  if (v23((v31 + v30), 1, v5) == 1)
  {
    sub_20E195C24(v32, type metadata accessor for TranscriptProtoStatementID);
LABEL_13:
    v24 = v31;
    goto LABEL_14;
  }

  v35 = v39;
  sub_20E195B54(v31 + v30, v39, type metadata accessor for TranscriptProtoStatementID);
  v36 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v32, v35);
  sub_20E195C24(v35, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v32, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v31, &qword_27C8639D0, &unk_20E33C230);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v33 = 0;
  return v33 & 1;
}

uint64_t _s23LighthouseDataProcessor30TranscriptProtoDateTimeContextV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_20E322150();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868780, &qword_20E33B758);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  v28 = a1;
  v17 = *(v27 + 20);
  v18 = *(v13 + 56);
  sub_20E0486F4(a1 + v17, v16, &qword_27C868778, &unk_20E33C000);
  v29 = a2;
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C868778, &unk_20E33C000);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v11, &qword_27C868778, &unk_20E33C000);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v26;
      (*(v5 + 32))(v26, &v16[v18], v4);
      sub_20E195B0C(&qword_27C868788, MEMORY[0x277D21570]);
      v22 = sub_20E322850();
      v23 = *(v5 + 8);
      v23(v21, v4);
      v23(v11, v4);
      sub_20E04875C(v16, &qword_27C868778, &unk_20E33C000);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_20E04875C(v16, &qword_27C868780, &qword_20E33B758);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v16, &qword_27C868778, &unk_20E33C000);
LABEL_9:
  if (*v28 == *v29 && v28[1] == v29[1] || (sub_20E322D60() & 1) != 0)
  {
    v24 = *(v27 + 24);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v20 = sub_20E322850();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoVariableSetterV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v25 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for TranscriptProtoVariableSetter(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_20E0486F4(a1 + v17, v16, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C863B18, &qword_20E323EB0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v16, v11, &qword_27C863B18, &qword_20E323EB0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    sub_20E04875C(v16, &qword_27C867ED8, &qword_20E33AFA8);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_20E195B54(&v16[v18], v27, type metadata accessor for ToolKitProtoTypedValue);
  v21 = static ToolKitProtoTypedValue.== infix(_:_:)(v11, v20);
  sub_20E195C24(v20, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v16, &qword_27C863B18, &qword_20E323EB0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_20E15CB48(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 24);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v23 = sub_20E322850();
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoToolResolutionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v68 = type metadata accessor for TranscriptProtoStatementID(0);
  v71 = *(v68 - 8);
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v68);
  v63 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v62 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v65 = &v60[-v10];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v11 = *(*(v67 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v67);
  v64 = &v60[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v66 = &v60[-v14];
  v15 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v60[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v60[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FC8, &qword_20E33B088);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v60[-v27];
  v29 = *(v26 + 56);
  v69 = a1;
  sub_20E0486F4(a1, &v60[-v27], &qword_27C863B90, &unk_20E345EF0);
  v70 = a2;
  sub_20E0486F4(a2, &v28[v29], &qword_27C863B90, &unk_20E345EF0);
  v30 = *(v16 + 48);
  if (v30(v28, 1, v15) == 1)
  {
    if (v30(&v28[v29], 1, v15) == 1)
    {
      sub_20E04875C(v28, &qword_27C863B90, &unk_20E345EF0);
      goto LABEL_8;
    }

LABEL_6:
    v31 = &qword_27C867FC8;
    v32 = &qword_20E33B088;
    v33 = v28;
LABEL_21:
    sub_20E04875C(v33, v31, v32);
    goto LABEL_22;
  }

  sub_20E0486F4(v28, v23, &qword_27C863B90, &unk_20E345EF0);
  if (v30(&v28[v29], 1, v15) == 1)
  {
    sub_20E195C24(v23, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    goto LABEL_6;
  }

  sub_20E195B54(&v28[v29], v19, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v34 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v23, v19);
  sub_20E195C24(v19, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E195C24(v23, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E04875C(v28, &qword_27C863B90, &unk_20E345EF0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v35 = type metadata accessor for TranscriptProtoToolResolution(0);
  v36 = v35[5];
  v37 = v66;
  v38 = v67;
  v39 = *(v67 + 48);
  v40 = v69;
  sub_20E0486F4(v69 + v36, v66, &qword_27C8639D0, &unk_20E33C230);
  v41 = v70;
  sub_20E0486F4(v70 + v36, &v37[v39], &qword_27C8639D0, &unk_20E33C230);
  v42 = v71 + 48;
  v43 = *(v71 + 48);
  v44 = v68;
  if (v43(v37, 1, v68) == 1)
  {
    if (v43(&v37[v39], 1, v44) != 1)
    {
LABEL_20:
      v31 = &qword_27C867F30;
      v32 = &qword_20E33B000;
      v33 = v37;
      goto LABEL_21;
    }

    v71 = v42;
    sub_20E04875C(v37, &qword_27C8639D0, &unk_20E33C230);
LABEL_14:
    v49 = v35[6];
    v50 = *(v38 + 48);
    v51 = v64;
    sub_20E0486F4(v40 + v49, v64, &qword_27C8639D0, &unk_20E33C230);
    v52 = v41 + v49;
    v37 = v51;
    sub_20E0486F4(v52, &v51[v50], &qword_27C8639D0, &unk_20E33C230);
    if (v43(v51, 1, v44) == 1)
    {
      if (v43(&v51[v50], 1, v44) == 1)
      {
        sub_20E04875C(v51, &qword_27C8639D0, &unk_20E33C230);
LABEL_25:
        v59 = v35[7];
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v55 = sub_20E322850();
        return v55 & 1;
      }

      goto LABEL_20;
    }

    v53 = v51;
    v54 = v62;
    sub_20E0486F4(v53, v62, &qword_27C8639D0, &unk_20E33C230);
    if (v43(&v37[v50], 1, v44) == 1)
    {
      v46 = v54;
      goto LABEL_19;
    }

    v57 = v63;
    sub_20E195B54(&v37[v50], v63, type metadata accessor for TranscriptProtoStatementID);
    v58 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v54, v57);
    sub_20E195C24(v57, type metadata accessor for TranscriptProtoStatementID);
    sub_20E195C24(v54, type metadata accessor for TranscriptProtoStatementID);
    sub_20E04875C(v37, &qword_27C8639D0, &unk_20E33C230);
    if (v58)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v45 = v65;
  sub_20E0486F4(v37, v65, &qword_27C8639D0, &unk_20E33C230);
  if (v43(&v37[v39], 1, v44) == 1)
  {
    v46 = v45;
LABEL_19:
    sub_20E195C24(v46, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_20;
  }

  v71 = v42;
  v47 = &v37[v39];
  v48 = v63;
  sub_20E195B54(v47, v63, type metadata accessor for TranscriptProtoStatementID);
  v61 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v45, v48);
  sub_20E195C24(v48, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v45, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v37, &qword_27C8639D0, &unk_20E33C230);
  if (v61)
  {
    goto LABEL_14;
  }

LABEL_22:
  v55 = 0;
  return v55 & 1;
}

uint64_t _s23LighthouseDataProcessor33TranscriptProtoActionConfirmationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868680, &unk_20E33C260);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868688, &qword_20E33B688);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if ((sub_20E15BDA8(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_20E0486F4(v18 + v20, v16, &qword_27C868680, &unk_20E33C260);
  sub_20E0486F4(v19 + v20, &v16[v21], &qword_27C868680, &unk_20E33C260);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C868680, &unk_20E33C260);
LABEL_11:
      v26 = *(v27[0] + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v23 = sub_20E322850();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v16, v12, &qword_27C868680, &unk_20E33C260);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
LABEL_7:
    sub_20E04875C(v16, &qword_27C868688, &qword_20E33B688);
    goto LABEL_8;
  }

  sub_20E195B54(&v16[v21], v8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  v25 = _s23LighthouseDataProcessor44TranscriptProtoActionConfirmationSystemStyleV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_20E04875C(v16, &qword_27C868680, &unk_20E33C260);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868498, &qword_20E33B4D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863BA0, &unk_20E325F20);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863BA0, &unk_20E325F20);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863BA0, &unk_20E325F20);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoStatementOutcome(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863BA0, &unk_20E325F20);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868498, &qword_20E33B4D0);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  v21 = _s23LighthouseDataProcessor35TranscriptProtoStatementOutcomeEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
  sub_20E04875C(v17, &qword_27C863BA0, &unk_20E325F20);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor41TranscriptProtoInterpretedStatementResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v89 = *(v4 - 8);
  v90 = v4;
  v5 = *(v89 + 8);
  MEMORY[0x28223BE20](v4);
  v85 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v82 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v84 = &v82 - v12;
  MEMORY[0x28223BE20](v11);
  v87 = &v82 - v13;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v14 = *(*(v93 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v93);
  v83 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v86 = &v82 - v18;
  MEMORY[0x28223BE20](v17);
  v88 = &v82 - v19;
  v20 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v82 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868000, &qword_20E33B0B8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v82 - v32;
  v34 = *(v31 + 56);
  v92 = a1;
  sub_20E0486F4(a1, &v82 - v32, &qword_27C863BA8, &unk_20E345F00);
  v91 = a2;
  sub_20E0486F4(a2, &v33[v34], &qword_27C863BA8, &unk_20E345F00);
  v35 = *(v21 + 48);
  if (v35(v33, 1, v20) == 1)
  {
    if (v35(&v33[v34], 1, v20) == 1)
    {
      sub_20E04875C(v33, &qword_27C863BA8, &unk_20E345F00);
      goto LABEL_9;
    }

LABEL_6:
    v36 = &qword_27C868000;
    v37 = &qword_20E33B0B8;
LABEL_7:
    v38 = v33;
LABEL_15:
    sub_20E04875C(v38, v36, v37);
    goto LABEL_16;
  }

  sub_20E0486F4(v33, v28, &qword_27C863BA8, &unk_20E345F00);
  if (v35(&v33[v34], 1, v20) == 1)
  {
    sub_20E195C24(v28, type metadata accessor for TranscriptProtoStatementOutcome);
    goto LABEL_6;
  }

  sub_20E195B54(&v33[v34], v24, type metadata accessor for TranscriptProtoStatementOutcome);
  v39 = _s23LighthouseDataProcessor31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v28, v24);
  sub_20E195C24(v24, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E195C24(v28, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E04875C(v33, &qword_27C863BA8, &unk_20E345F00);
  if ((v39 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v40 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v41 = *(v40 + 20);
  v42 = v92;
  v43 = *(v93 + 48);
  v44 = v88;
  sub_20E0486F4(v92 + v41, v88, &qword_27C8639D0, &unk_20E33C230);
  v45 = v91;
  sub_20E0486F4(v91 + v41, v44 + v43, &qword_27C8639D0, &unk_20E33C230);
  v46 = v90;
  v47 = *(v89 + 6);
  if (v47(v44, 1, v90) == 1)
  {
    if (v47((v44 + v43), 1, v46) == 1)
    {
      v89 = v47;
      sub_20E04875C(v44, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_19;
    }

LABEL_14:
    v36 = &qword_27C867F30;
    v37 = &qword_20E33B000;
    v38 = v44;
    goto LABEL_15;
  }

  v48 = v87;
  sub_20E0486F4(v44, v87, &qword_27C8639D0, &unk_20E33C230);
  if (v47((v44 + v43), 1, v46) == 1)
  {
    sub_20E195C24(v48, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_14;
  }

  v89 = v47;
  v51 = v44 + v43;
  v52 = v85;
  sub_20E195B54(v51, v85, type metadata accessor for TranscriptProtoStatementID);
  v53 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v48, v52);
  sub_20E195C24(v52, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v48, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v44, &qword_27C8639D0, &unk_20E33C230);
  if ((v53 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v88 = v40;
  v54 = *(v40 + 24);
  v55 = *(v93 + 48);
  v33 = v86;
  sub_20E0486F4(v42 + v54, v86, &qword_27C8639D0, &unk_20E33C230);
  v56 = v45;
  sub_20E0486F4(v45 + v54, &v33[v55], &qword_27C8639D0, &unk_20E33C230);
  v57 = v89;
  if (v89(v33, 1, v46) != 1)
  {
    v58 = v84;
    sub_20E0486F4(v33, v84, &qword_27C8639D0, &unk_20E33C230);
    if (v57(&v33[v55], 1, v46) != 1)
    {
      v59 = &v33[v55];
      v60 = v85;
      sub_20E195B54(v59, v85, type metadata accessor for TranscriptProtoStatementID);
      v61 = v33;
      v62 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v58, v60);
      sub_20E195C24(v60, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v58, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v61, &qword_27C8639D0, &unk_20E33C230);
      if ((v62 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_26;
    }

    sub_20E195C24(v58, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_24;
  }

  if (v57(&v33[v55], 1, v46) != 1)
  {
LABEL_24:
    v36 = &qword_27C867F30;
    v37 = &qword_20E33B000;
    goto LABEL_7;
  }

  sub_20E04875C(v33, &qword_27C8639D0, &unk_20E33C230);
LABEL_26:
  v63 = v88;
  v64 = *(v88 + 28);
  v65 = v92;
  v66 = (v92 + v64);
  v67 = *(v92 + v64 + 8);
  v68 = (v45 + v64);
  v69 = v68[1];
  if (v67)
  {
    if (!v69 || (*v66 != *v68 || v67 != v69) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v69)
  {
    goto LABEL_16;
  }

  v70 = *(v63 + 32);
  v71 = (v65 + v70);
  v72 = *(v65 + v70 + 8);
  v73 = (v45 + v70);
  v74 = v73[1];
  if (v72)
  {
    if (!v74 || (*v71 != *v73 || v72 != v74) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v74)
  {
    goto LABEL_16;
  }

  v75 = *(v63 + 36);
  v76 = *(v93 + 48);
  v77 = v83;
  sub_20E0486F4(v65 + v75, v83, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v56 + v75, v77 + v76, &qword_27C8639D0, &unk_20E33C230);
  if (v57(v77, 1, v46) == 1)
  {
    if (v57((v77 + v76), 1, v46) == 1)
    {
      sub_20E04875C(v77, &qword_27C8639D0, &unk_20E33C230);
LABEL_47:
      v81 = *(v88 + 40);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v49 = sub_20E322850();
      return v49 & 1;
    }

    goto LABEL_45;
  }

  v78 = v82;
  sub_20E0486F4(v77, v82, &qword_27C8639D0, &unk_20E33C230);
  if (v57((v77 + v76), 1, v46) == 1)
  {
    sub_20E195C24(v78, type metadata accessor for TranscriptProtoStatementID);
LABEL_45:
    v36 = &qword_27C867F30;
    v37 = &qword_20E33B000;
    v38 = v77;
    goto LABEL_15;
  }

  v79 = v85;
  sub_20E195B54(v77 + v76, v85, type metadata accessor for TranscriptProtoStatementID);
  v80 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v78, v79);
  sub_20E195C24(v79, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v78, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v77, &qword_27C8639D0, &unk_20E33C230);
  if (v80)
  {
    goto LABEL_47;
  }

LABEL_16:
  v49 = 0;
  return v49 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoSystemResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868008, &qword_20E33B0C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v32 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868010, &qword_20E33B0C8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v34 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v35 = a1;
  v17 = *(v34 + 20);
  v18 = *(v13 + 56);
  sub_20E0486F4(a1 + v17, v16, &qword_27C868008, &qword_20E33B0C0);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C868008, &qword_20E33B0C0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v11, &qword_27C868008, &qword_20E33B0C0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v33;
      sub_20E195B54(&v16[v18], v33, type metadata accessor for TranscriptProtoResponseOutput);
      v23 = _s23LighthouseDataProcessor29TranscriptProtoResponseOutputV2eeoiySbAC_ACtFZ_0(v11, v22);
      sub_20E195C24(v22, type metadata accessor for TranscriptProtoResponseOutput);
      sub_20E195C24(v11, type metadata accessor for TranscriptProtoResponseOutput);
      sub_20E04875C(v16, &qword_27C868008, &qword_20E33B0C0);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_20E195C24(v11, type metadata accessor for TranscriptProtoResponseOutput);
LABEL_6:
    sub_20E04875C(v16, &qword_27C868010, &qword_20E33B0C8);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v16, &qword_27C868008, &qword_20E33B0C0);
LABEL_10:
  v24 = v34;
  v25 = v35;
  v26 = *(v34 + 24);
  v27 = (v35 + v26);
  v28 = *(v35 + v26 + 8);
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

  if (sub_20E147778(*v25, *a2, type metadata accessor for TranscriptProtoInterpretedStatementResult, type metadata accessor for TranscriptProtoInterpretedStatementResult, _s23LighthouseDataProcessor41TranscriptProtoInterpretedStatementResultV2eeoiySbAC_ACtFZ_0, type metadata accessor for TranscriptProtoInterpretedStatementResult))
  {
    v31 = *(v24 + 28);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v20 = sub_20E322850();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoResponseVisualV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682E8, &qword_20E33B378);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682F0, &qword_20E33B380);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v28 - v15;
  if ((sub_20E153BA4(*a1, *a2) & 1) == 0 || (sub_20E1540D0(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v29 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v17 = *(v29 + 24);
  v18 = a1;
  v19 = *(v13 + 48);
  v28[1] = v18;
  sub_20E0486F4(v18 + v17, v16, &qword_27C8682E8, &qword_20E33B378);
  v28[2] = a2;
  sub_20E0486F4(a2 + v17, &v16[v19], &qword_27C8682E8, &qword_20E33B378);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v12, &qword_27C8682E8, &qword_20E33B378);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      sub_20E195B54(&v16[v19], v8, type metadata accessor for TranscriptProtoResponseVisualOptions);
      if (*v12 == *v8)
      {
        v26 = *(v4 + 20);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v27 = sub_20E322850();
        sub_20E195C24(v8, type metadata accessor for TranscriptProtoResponseVisualOptions);
        sub_20E195C24(v12, type metadata accessor for TranscriptProtoResponseVisualOptions);
        sub_20E04875C(v16, &qword_27C8682E8, &qword_20E33B378);
        if (v27)
        {
          goto LABEL_6;
        }

LABEL_11:
        v22 = 0;
        return v22 & 1;
      }

      sub_20E195C24(v8, type metadata accessor for TranscriptProtoResponseVisualOptions);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoResponseVisualOptions);
      v23 = &qword_27C8682E8;
      v24 = &qword_20E33B378;
LABEL_10:
      sub_20E04875C(v16, v23, v24);
      goto LABEL_11;
    }

    sub_20E195C24(v12, type metadata accessor for TranscriptProtoResponseVisualOptions);
LABEL_9:
    v23 = &qword_27C8682F0;
    v24 = &qword_20E33B380;
    goto LABEL_10;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_20E04875C(v16, &qword_27C8682E8, &qword_20E33B378);
LABEL_6:
  v21 = *(v29 + 28);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v22 = sub_20E322850();
  return v22 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoResponseOutputV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v95 = *(v4 - 8);
  v96 = v4;
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868398, &qword_20E33B408);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = &v87 - v10;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683A0, &qword_20E33B410);
  v11 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v13 = &v87 - v12;
  v14 = type metadata accessor for TranscriptProtoVisualOutputOptions(0);
  v99 = *(v14 - 8);
  v100 = v14;
  v15 = *(v99 + 64);
  MEMORY[0x28223BE20](v14);
  v93 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683A8, &unk_20E33C360);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v87 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683B0, &qword_20E33B418);
  v20 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v101 = &v87 - v21;
  v22 = type metadata accessor for TranscriptProtoDialogType(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v103 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683B8, &qword_20E33B420);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v102 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v87 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683C0, &qword_20E33B428);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = &v87 - v37;
  if ((sub_20E154880(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v90 = v13;
  v88 = v7;
  v39 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v104 = a2;
  v89 = v39;
  v40 = *(v39 + 28);
  v41 = *(v32 + 48);
  v91 = a1;
  sub_20E0486F4(a1 + v40, v38, &qword_27C8683B8, &qword_20E33B420);
  sub_20E0486F4(v104 + v40, &v38[v41], &qword_27C8683B8, &qword_20E33B420);
  v42 = *(v23 + 48);
  if (v42(v38, 1, v22) == 1)
  {
    if (v42(&v38[v41], 1, v22) == 1)
    {
      sub_20E04875C(v38, &qword_27C8683B8, &qword_20E33B420);
      goto LABEL_9;
    }

LABEL_7:
    v43 = &qword_27C8683C0;
    v44 = &qword_20E33B428;
    v45 = v38;
LABEL_15:
    sub_20E04875C(v45, v43, v44);
    goto LABEL_16;
  }

  sub_20E0486F4(v38, v31, &qword_27C8683B8, &qword_20E33B420);
  if (v42(&v38[v41], 1, v22) == 1)
  {
    sub_20E195C24(v31, type metadata accessor for TranscriptProtoDialogType);
    goto LABEL_7;
  }

  v46 = &v38[v41];
  v47 = v103;
  sub_20E195B54(v46, v103, type metadata accessor for TranscriptProtoDialogType);
  v48 = _s23LighthouseDataProcessor25TranscriptProtoDialogTypeV2eeoiySbAC_ACtFZ_0(v31, v47);
  sub_20E195C24(v47, type metadata accessor for TranscriptProtoDialogType);
  sub_20E195C24(v31, type metadata accessor for TranscriptProtoDialogType);
  sub_20E04875C(v38, &qword_27C8683B8, &qword_20E33B420);
  if ((v48 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v49 = v89;
  v50 = v89[8];
  v51 = *(v32 + 48);
  v52 = v91;
  sub_20E0486F4(v91 + v50, v36, &qword_27C8683B8, &qword_20E33B420);
  v53 = v104 + v50;
  v54 = v104;
  sub_20E0486F4(v53, &v36[v51], &qword_27C8683B8, &qword_20E33B420);
  if (v42(v36, 1, v22) == 1)
  {
    v55 = v42(&v36[v51], 1, v22);
    v56 = v90;
    if (v55 == 1)
    {
      sub_20E04875C(v36, &qword_27C8683B8, &qword_20E33B420);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v57 = v102;
  sub_20E0486F4(v36, v102, &qword_27C8683B8, &qword_20E33B420);
  v58 = v42(&v36[v51], 1, v22);
  v56 = v90;
  if (v58 == 1)
  {
    sub_20E195C24(v57, type metadata accessor for TranscriptProtoDialogType);
LABEL_14:
    v43 = &qword_27C8683C0;
    v44 = &qword_20E33B428;
    v45 = v36;
    goto LABEL_15;
  }

  v61 = &v36[v51];
  v62 = v103;
  sub_20E195B54(v61, v103, type metadata accessor for TranscriptProtoDialogType);
  v63 = _s23LighthouseDataProcessor25TranscriptProtoDialogTypeV2eeoiySbAC_ACtFZ_0(v57, v62);
  sub_20E195C24(v62, type metadata accessor for TranscriptProtoDialogType);
  sub_20E195C24(v57, type metadata accessor for TranscriptProtoDialogType);
  sub_20E04875C(v36, &qword_27C8683B8, &qword_20E33B420);
  if ((v63 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  if (*(v52 + 8) != *(v54 + 8) || (sub_20E14A924(v52[2], v54[2]) & 1) == 0)
  {
    goto LABEL_16;
  }

  v64 = v49[9];
  v65 = *(v98 + 48);
  v66 = v101;
  sub_20E0486F4(v52 + v64, v101, &qword_27C8683A8, &unk_20E33C360);
  sub_20E0486F4(v54 + v64, v66 + v65, &qword_27C8683A8, &unk_20E33C360);
  v67 = v100;
  v68 = *(v99 + 48);
  if (v68(v66, 1, v100) == 1)
  {
    if (v68(v66 + v65, 1, v67) == 1)
    {
      sub_20E04875C(v66, &qword_27C8683A8, &unk_20E33C360);
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  v73 = v97;
  sub_20E0486F4(v66, v97, &qword_27C8683A8, &unk_20E33C360);
  if (v68(v66 + v65, 1, v67) == 1)
  {
    sub_20E195C24(v73, type metadata accessor for TranscriptProtoVisualOutputOptions);
LABEL_29:
    v43 = &qword_27C8683B0;
    v44 = &qword_20E33B418;
LABEL_30:
    v45 = v66;
    goto LABEL_15;
  }

  v74 = v66 + v65;
  v75 = v93;
  sub_20E195B54(v74, v93, type metadata accessor for TranscriptProtoVisualOutputOptions);
  if (*v73 != *v75)
  {
    sub_20E195C24(v75, type metadata accessor for TranscriptProtoVisualOutputOptions);
    sub_20E195C24(v73, type metadata accessor for TranscriptProtoVisualOutputOptions);
    v43 = &qword_27C8683A8;
    v44 = &unk_20E33C360;
    goto LABEL_30;
  }

  v77 = *(v67 + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  LOBYTE(v77) = sub_20E322850();
  sub_20E195C24(v75, type metadata accessor for TranscriptProtoVisualOutputOptions);
  sub_20E195C24(v73, type metadata accessor for TranscriptProtoVisualOutputOptions);
  sub_20E04875C(v66, &qword_27C8683A8, &unk_20E33C360);
  if ((v77 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_24:
  v69 = v49[10];
  v70 = *(v94 + 48);
  sub_20E0486F4(v52 + v69, v56, &qword_27C868398, &qword_20E33B408);
  sub_20E0486F4(v54 + v69, v56 + v70, &qword_27C868398, &qword_20E33B408);
  v71 = v96;
  v72 = *(v95 + 48);
  if (v72(v56, 1, v96) != 1)
  {
    v76 = v92;
    sub_20E0486F4(v56, v92, &qword_27C868398, &qword_20E33B408);
    if (v72(v56 + v70, 1, v71) != 1)
    {
      v78 = v56 + v70;
      v79 = v88;
      sub_20E195B54(v78, v88, type metadata accessor for TranscriptProtoVisualOutput);
      v80 = _s23LighthouseDataProcessor27TranscriptProtoVisualOutputV2eeoiySbAC_ACtFZ_0(v76, v79);
      sub_20E195C24(v79, type metadata accessor for TranscriptProtoVisualOutput);
      sub_20E195C24(v76, type metadata accessor for TranscriptProtoVisualOutput);
      sub_20E04875C(v56, &qword_27C868398, &qword_20E33B408);
      if ((v80 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_39;
    }

    sub_20E195C24(v76, type metadata accessor for TranscriptProtoVisualOutput);
    goto LABEL_35;
  }

  if (v72(v56 + v70, 1, v71) != 1)
  {
LABEL_35:
    v43 = &qword_27C8683A0;
    v44 = &qword_20E33B410;
    v45 = v56;
    goto LABEL_15;
  }

  sub_20E04875C(v56, &qword_27C868398, &qword_20E33B408);
LABEL_39:
  v81 = v49[11];
  v82 = (v52 + v81);
  v83 = *(v52 + v81 + 8);
  v84 = (v54 + v81);
  v85 = v84[1];
  if (v83)
  {
    if (v85 && (*v82 == *v84 && v83 == v85 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_46;
    }
  }

  else if (!v85)
  {
LABEL_46:
    v86 = v49[12];
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v59 = sub_20E322850();
    return v59 & 1;
  }

LABEL_16:
  v59 = 0;
  return v59 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoResponseDialogV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (!v9 || (a1[4] != a2[4] || v8 != v9) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[7];
  v11 = a2[7];
  if (v10)
  {
    if (v11 && (a1[6] == a2[6] && v10 == v11 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_27;
    }
  }

  else if (!v11)
  {
LABEL_27:
    v12 = *(type metadata accessor for TranscriptProtoResponseDialog(0) + 32);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}