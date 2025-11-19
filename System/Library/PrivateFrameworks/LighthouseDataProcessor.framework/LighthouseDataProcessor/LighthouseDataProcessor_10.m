uint64_t _s23LighthouseDataProcessor29TranscriptProtoPickExpressionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for TranscriptProtoPickExpression(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_20E0486F4(a1 + v17, v16, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C8639D0, &unk_20E33C230);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v16, v11, &qword_27C8639D0, &unk_20E33C230);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_20E04875C(v16, &qword_27C867F30, &qword_20E33B000);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_20E195B54(&v16[v18], v27, type metadata accessor for TranscriptProtoStatementID);
  v21 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v11, v20);
  sub_20E195C24(v20, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v11, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v28 != *a2)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 24);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v23 = sub_20E322850();
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor30TranscriptProtoPromptSelectionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 9);
  if (*(a1 + 9))
  {
    if (*(a2 + 9))
    {
LABEL_3:
      v3 = *(type metadata accessor for TranscriptProtoPromptSelection(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      return sub_20E322850() & 1;
    }
  }

  else if ((*(a2 + 9) & 1) == 0)
  {
    v5 = *a1;
    v6 = *a2;
    v7 = *(a2 + 8);
    if (a1[1])
    {
      if (v5)
      {
        if ((a2[1] & 1) != 0 && v6)
        {
          goto LABEL_3;
        }
      }

      else if ((a2[1] & 1) != 0 && !v6)
      {
        goto LABEL_3;
      }
    }

    else if ((a2[1] & 1) == 0 && v5 == v6)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoParameterValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
  v12 = type metadata accessor for ToolKitProtoTypedValue(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v45 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_20E0486F4(a1, &v45 - v24, &qword_27C863B18, &qword_20E323EB0);
  v52 = a2;
  sub_20E0486F4(a2, &v25[v26], &qword_27C863B18, &qword_20E323EB0);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_20E0486F4(v25, v20, &qword_27C863B18, &qword_20E323EB0);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_20E195B54(&v25[v26], v16, type metadata accessor for ToolKitProtoTypedValue);
      v31 = static ToolKitProtoTypedValue.== infix(_:_:)(v20, v16);
      sub_20E195C24(v16, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E195C24(v20, type metadata accessor for ToolKitProtoTypedValue);
      sub_20E04875C(v25, &qword_27C863B18, &qword_20E323EB0);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v20, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    v28 = &qword_27C867ED8;
    v29 = &qword_20E33AFA8;
    v30 = v25;
LABEL_14:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v25, &qword_27C863B18, &qword_20E323EB0);
LABEL_8:
  v32 = type metadata accessor for TranscriptProtoParameterValue(0);
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

uint64_t _s23LighthouseDataProcessor29TranscriptProtoGenderSettingsV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for TranscriptProtoGenderSettings(0) + 24);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoFollowUpActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868518, &unk_20E33C300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868520, &qword_20E33B550);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C868518, &unk_20E33C300);
  sub_20E0486F4(a2, &v17[v18], &qword_27C868518, &unk_20E33C300);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C868518, &unk_20E33C300);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoFollowUpAction(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C868518, &unk_20E33C300);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868520, &qword_20E33B550);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  v21 = _s23LighthouseDataProcessor039TranscriptProtoFollowUpActionExecutableH0V2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_20E04875C(v17, &qword_27C868518, &unk_20E33C300);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoCallExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (v27 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868040, &qword_20E33B0E8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  if ((sub_20E15AFBC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for TranscriptProtoCallExpression(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_20E0486F4(v18 + v20, v16, &qword_27C8639C8, &unk_20E323870);
  sub_20E0486F4(v19 + v20, &v16[v21], &qword_27C8639C8, &unk_20E323870);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C8639C8, &unk_20E323870);
LABEL_11:
      v26 = *(v27[0] + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v23 = sub_20E322850();
      return v23 & 1;
    }

    goto LABEL_7;
  }

  sub_20E0486F4(v16, v12, &qword_27C8639C8, &unk_20E323870);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_7:
    sub_20E04875C(v16, &qword_27C868040, &qword_20E33B0E8);
    goto LABEL_8;
  }

  sub_20E195B54(&v16[v21], v8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v25 = _s23LighthouseDataProcessor35TranscriptProtoGlobalToolIdentifierV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E04875C(v16, &qword_27C8639C8, &unk_20E323870);
  if (v25)
  {
    goto LABEL_11;
  }

LABEL_8:
  v23 = 0;
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor28TranscriptProtoSpeechPackageV5TokenV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v5 = *(type metadata accessor for TranscriptProtoSpeechPackage.Token(0) + 36);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor28TranscriptProtoSnippetStreamV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitProtoTypedValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863B18, &qword_20E323EB0);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863B18, &qword_20E323EB0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863B18, &qword_20E323EB0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSnippetStream(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863B18, &qword_20E323EB0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for ToolKitProtoTypedValue);
LABEL_6:
    sub_20E04875C(v17, &qword_27C867ED8, &qword_20E33AFA8);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for ToolKitProtoTypedValue);
  v21 = static ToolKitProtoTypedValue.== infix(_:_:)(v12, v8);
  sub_20E195C24(v8, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v12, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v17, &qword_27C863B18, &qword_20E323EB0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_20E175890(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v26 = a3;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v25 - v17;
  v19 = *(v16 + 56);
  sub_20E0486F4(a1, &v25 - v17, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2, &v18[v19], &qword_27C8639D0, &unk_20E33C230);
  v20 = *(v6 + 48);
  if (v20(v18, 1, v5) == 1)
  {
    if (v20(&v18[v19], 1, v5) == 1)
    {
      sub_20E04875C(v18, &qword_27C8639D0, &unk_20E33C230);
LABEL_9:
      v23 = *(v26(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v21 = sub_20E322850();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v18, v13, &qword_27C8639D0, &unk_20E33C230);
  if (v20(&v18[v19], 1, v5) == 1)
  {
    sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
LABEL_6:
    sub_20E04875C(v18, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_7;
  }

  sub_20E195B54(&v18[v19], v9, type metadata accessor for TranscriptProtoStatementID);
  v22 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v13, v9);
  sub_20E195C24(v9, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v13, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v18, &qword_27C8639D0, &unk_20E33C230);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s23LighthouseDataProcessor28TranscriptProtoShimParameterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoShimParameterEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865B18, &qword_20E326398);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868610, &qword_20E33B620);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C865B18, &qword_20E326398);
  sub_20E0486F4(a2, &v17[v18], &qword_27C865B18, &qword_20E326398);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C865B18, &qword_20E326398);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoShimParameter(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C865B18, &qword_20E326398);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoShimParameterEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868610, &qword_20E33B620);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoShimParameterEnum);
  v21 = _s23LighthouseDataProcessor32TranscriptProtoShimParameterEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoShimParameterEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoShimParameterEnum);
  sub_20E04875C(v17, &qword_27C865B18, &qword_20E326398);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor28TranscriptProtoExecutorErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685C8, &qword_20E33B5E8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863EC8, &unk_20E359E90);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863EC8, &unk_20E359E90);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863EC8, &unk_20E359E90);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoExecutorError(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863EC8, &unk_20E359E90);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoExecutorErrorEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C8685C8, &qword_20E33B5E8);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  v21 = _s23LighthouseDataProcessor32TranscriptProtoExecutorErrorEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoExecutorErrorEnum);
  sub_20E04875C(v17, &qword_27C863EC8, &unk_20E359E90);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor28TranscriptProtoDeviceDetailsV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FD0, &unk_20E33C450);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v29 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FD8, &qword_20E33B090);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_12;
  }

  v29 = v8;
  v30 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v17 = *(v30 + 20);
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C867FD0, &unk_20E33C450);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C867FD0, &unk_20E33C450);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v12, &qword_27C867FD0, &unk_20E33C450);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v25 = &v16[v18];
      v26 = v29;
      sub_20E195B54(v25, v29, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
      if (*v12 == *v26)
      {
        v27 = *(v4 + 20);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        v28 = sub_20E322850();
        sub_20E195C24(v26, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
        sub_20E195C24(v12, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
        sub_20E04875C(v16, &qword_27C867FD0, &unk_20E33C450);
        if (v28)
        {
          goto LABEL_7;
        }

LABEL_12:
        v21 = 0;
        return v21 & 1;
      }

      sub_20E195C24(v26, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
      v22 = &qword_27C867FD0;
      v23 = &unk_20E33C450;
LABEL_11:
      sub_20E04875C(v16, v22, v23);
      goto LABEL_12;
    }

    sub_20E195C24(v12, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
LABEL_10:
    v22 = &qword_27C867FD8;
    v23 = &qword_20E33B090;
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_20E04875C(v16, &qword_27C867FD0, &unk_20E33C450);
LABEL_7:
  v20 = *(v30 + 24);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v21 = sub_20E322850();
  return v21 & 1;
}

uint64_t _s23LighthouseDataProcessor28TranscriptProtoActionSuccessV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v108 = a2;
  v109 = a1;
  v2 = type metadata accessor for TranscriptProtoStatementID(0);
  v93 = *(v2 - 8);
  v94 = v2;
  v3 = *(v93 + 64);
  MEMORY[0x28223BE20](v2);
  v90 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v91 = &v89 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v8 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v95 = &v89 - v9;
  v10 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  v99 = *(v10 - 8);
  v100 = v10;
  v11 = *(v99 + 64);
  MEMORY[0x28223BE20](v10);
  v96 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868528, &qword_20E33B558);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v97 = &v89 - v15;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868530, &qword_20E33B560);
  v16 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v101 = &v89 - v17;
  v18 = type metadata accessor for TranscriptProtoUndoContext(0);
  v104 = *(v18 - 8);
  v105 = v18;
  v19 = *(v104 + 64);
  MEMORY[0x28223BE20](v18);
  v102 = (&v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868538, &unk_20E33C2F0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v103 = (&v89 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868540, &qword_20E33B568);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v106 = &v89 - v26;
  v27 = type metadata accessor for ToolKitProtoTypedValue(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (&v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = (&v89 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v89 - v39;
  v107 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v41 = *(v107 + 24);
  v42 = *(v37 + 56);
  sub_20E0486F4(&v109[v41], v40, &qword_27C863B18, &qword_20E323EB0);
  v43 = &v108[v41];
  v44 = v108;
  sub_20E0486F4(v43, &v40[v42], &qword_27C863B18, &qword_20E323EB0);
  v45 = *(v28 + 48);
  if (v45(v40, 1, v27) == 1)
  {
    if (v45(&v40[v42], 1, v27) == 1)
    {
      sub_20E04875C(v40, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_8;
    }

LABEL_6:
    v46 = &qword_27C867ED8;
    v47 = &qword_20E33AFA8;
LABEL_30:
    v65 = v40;
LABEL_31:
    sub_20E04875C(v65, v46, v47);
    goto LABEL_32;
  }

  sub_20E0486F4(v40, v35, &qword_27C863B18, &qword_20E323EB0);
  if (v45(&v40[v42], 1, v27) == 1)
  {
    sub_20E195C24(v35, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_20E195B54(&v40[v42], v31, type metadata accessor for ToolKitProtoTypedValue);
  v48 = static ToolKitProtoTypedValue.== infix(_:_:)(v35, v31);
  sub_20E195C24(v31, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v35, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v40, &qword_27C863B18, &qword_20E323EB0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_8:
  v40 = v106;
  v49 = v107;
  v50 = *(v107 + 28);
  v51 = *(v24 + 48);
  v52 = v109;
  sub_20E0486F4(&v109[v50], v106, &qword_27C868538, &unk_20E33C2F0);
  sub_20E0486F4(&v44[v50], &v40[v51], &qword_27C868538, &unk_20E33C2F0);
  v53 = v105;
  v54 = *(v104 + 48);
  if (v54(v40, 1, v105) == 1)
  {
    if (v54(&v40[v51], 1, v53) == 1)
    {
      sub_20E04875C(v40, &qword_27C868538, &unk_20E33C2F0);
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v62 = v103;
  sub_20E0486F4(v40, v103, &qword_27C868538, &unk_20E33C2F0);
  if (v54(&v40[v51], 1, v53) == 1)
  {
    sub_20E195C24(v62, type metadata accessor for TranscriptProtoUndoContext);
LABEL_17:
    v46 = &qword_27C868540;
    v47 = &qword_20E33B568;
    goto LABEL_30;
  }

  v63 = v102;
  sub_20E195B54(&v40[v51], v102, type metadata accessor for TranscriptProtoUndoContext);
  if ((*v62 != *v63 || v62[1] != v63[1]) && (sub_20E322D60() & 1) == 0 || (v62[2] != v63[2] || v62[3] != v63[3]) && (sub_20E322D60() & 1) == 0 || (v62[4] != v63[4] || v62[5] != v63[5]) && (sub_20E322D60() & 1) == 0)
  {
    sub_20E195C24(v63, type metadata accessor for TranscriptProtoUndoContext);
    sub_20E195C24(v62, type metadata accessor for TranscriptProtoUndoContext);
    v46 = &qword_27C868538;
    v47 = &unk_20E33C2F0;
    goto LABEL_30;
  }

  v64 = *(v53 + 28);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  LOBYTE(v64) = sub_20E322850();
  sub_20E195C24(v63, type metadata accessor for TranscriptProtoUndoContext);
  sub_20E195C24(v62, type metadata accessor for TranscriptProtoUndoContext);
  sub_20E04875C(v40, &qword_27C868538, &unk_20E33C2F0);
  if ((v64 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  if (*v52 != *v44)
  {
    goto LABEL_32;
  }

  v55 = v49[8];
  v56 = *(v98 + 48);
  v57 = v101;
  sub_20E0486F4(&v52[v55], v101, &qword_27C868528, &qword_20E33B558);
  v58 = &v44[v55];
  v59 = v57;
  sub_20E0486F4(v58, v57 + v56, &qword_27C868528, &qword_20E33B558);
  v60 = v100;
  v61 = *(v99 + 48);
  if (v61(v57, 1, v100) != 1)
  {
    v68 = v97;
    sub_20E0486F4(v59, v97, &qword_27C868528, &qword_20E33B558);
    if (v61(v59 + v56, 1, v60) != 1)
    {
      v69 = v59 + v56;
      v70 = v96;
      sub_20E195B54(v69, v96, type metadata accessor for TranscriptProtoFollowUpAction);
      v71 = _s23LighthouseDataProcessor29TranscriptProtoFollowUpActionV2eeoiySbAC_ACtFZ_0(v68, v70);
      sub_20E195C24(v70, type metadata accessor for TranscriptProtoFollowUpAction);
      sub_20E195C24(v68, type metadata accessor for TranscriptProtoFollowUpAction);
      sub_20E04875C(v59, &qword_27C868528, &qword_20E33B558);
      if ((v71 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_38;
    }

    sub_20E195C24(v68, type metadata accessor for TranscriptProtoFollowUpAction);
    goto LABEL_36;
  }

  if (v61(v57 + v56, 1, v60) != 1)
  {
LABEL_36:
    v46 = &qword_27C868530;
    v47 = &qword_20E33B560;
    v65 = v59;
    goto LABEL_31;
  }

  sub_20E04875C(v57, &qword_27C868528, &qword_20E33B558);
LABEL_38:
  if (v52[1] != v44[1])
  {
    goto LABEL_32;
  }

  v72 = v49[9];
  v73 = &v52[v72];
  v74 = *&v52[v72 + 8];
  v75 = &v44[v72];
  v76 = *(v75 + 1);
  if (v74)
  {
    if (!v76 || (*v73 != *v75 || v74 != v76) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (v76)
  {
    goto LABEL_32;
  }

  v77 = v49[10];
  v78 = *(v92 + 48);
  v79 = v95;
  sub_20E0486F4(&v52[v77], v95, &qword_27C8639D0, &unk_20E33C230);
  v80 = &v44[v77];
  v81 = v79;
  sub_20E0486F4(v80, v79 + v78, &qword_27C8639D0, &unk_20E33C230);
  v82 = v94;
  v83 = *(v93 + 48);
  if (v83(v79, 1, v94) == 1)
  {
    if (v83(v79 + v78, 1, v82) == 1)
    {
      sub_20E04875C(v79, &qword_27C8639D0, &unk_20E33C230);
LABEL_53:
      v88 = v49[11];
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v66 = sub_20E322850();
      return v66 & 1;
    }

    goto LABEL_51;
  }

  v84 = v91;
  sub_20E0486F4(v81, v91, &qword_27C8639D0, &unk_20E33C230);
  if (v83(v81 + v78, 1, v82) == 1)
  {
    sub_20E195C24(v84, type metadata accessor for TranscriptProtoStatementID);
LABEL_51:
    v46 = &qword_27C867F30;
    v47 = &qword_20E33B000;
    v65 = v81;
    goto LABEL_31;
  }

  v85 = v81 + v78;
  v86 = v90;
  sub_20E195B54(v85, v90, type metadata accessor for TranscriptProtoStatementID);
  v87 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v84, v86);
  sub_20E195C24(v86, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v84, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v81, &qword_27C8639D0, &unk_20E33C230);
  if (v87)
  {
    goto LABEL_53;
  }

LABEL_32:
  v66 = 0;
  return v66 & 1;
}

uint64_t _s23LighthouseDataProcessor28TranscriptProtoActionFailureV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v48 = *(v4 - 8);
  v49 = v4;
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v45 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v50 = &v45 - v11;
  v12 = type metadata accessor for TranscriptProtoActionFailureFailure(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868560, &unk_20E33C2E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868568, &qword_20E33B588);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v45 - v24;
  v26 = *(v23 + 56);
  v51 = a1;
  sub_20E0486F4(a1, &v45 - v24, &qword_27C868560, &unk_20E33C2E0);
  v52 = a2;
  sub_20E0486F4(a2, &v25[v26], &qword_27C868560, &unk_20E33C2E0);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_20E0486F4(v25, v20, &qword_27C868560, &unk_20E33C2E0);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      sub_20E195B54(&v25[v26], v16, type metadata accessor for TranscriptProtoActionFailureFailure);
      v31 = _s23LighthouseDataProcessor028TranscriptProtoActionFailureG0V2eeoiySbAC_ACtFZ_0(v20, v16);
      sub_20E195C24(v16, type metadata accessor for TranscriptProtoActionFailureFailure);
      sub_20E195C24(v20, type metadata accessor for TranscriptProtoActionFailureFailure);
      sub_20E04875C(v25, &qword_27C868560, &unk_20E33C2E0);
      if ((v31 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_20E195C24(v20, type metadata accessor for TranscriptProtoActionFailureFailure);
LABEL_6:
    v28 = &qword_27C868568;
    v29 = &qword_20E33B588;
    v30 = v25;
LABEL_14:
    sub_20E04875C(v30, v28, v29);
    goto LABEL_15;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v25, &qword_27C868560, &unk_20E33C2E0);
LABEL_8:
  v32 = type metadata accessor for TranscriptProtoActionFailure(0);
  v33 = *(v32 + 20);
  v34 = *(v47 + 48);
  v35 = v50;
  sub_20E0486F4(v51 + v33, v50, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v52 + v33, v35 + v34, &qword_27C8639D0, &unk_20E33C230);
  v36 = v49;
  v37 = *(v48 + 48);
  if (v37(v35, 1, v49) == 1)
  {
    if (v37(v35 + v34, 1, v36) == 1)
    {
      sub_20E04875C(v35, &qword_27C8639D0, &unk_20E33C230);
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
  sub_20E0486F4(v35, v46, &qword_27C8639D0, &unk_20E33C230);
  if (v37(v35 + v34, 1, v36) == 1)
  {
    sub_20E195C24(v38, type metadata accessor for TranscriptProtoStatementID);
LABEL_13:
    v28 = &qword_27C867F30;
    v29 = &qword_20E33B000;
    v30 = v35;
    goto LABEL_14;
  }

  v41 = v35 + v34;
  v42 = v45;
  sub_20E195B54(v41, v45, type metadata accessor for TranscriptProtoStatementID);
  v43 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v38, v42);
  sub_20E195C24(v42, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v38, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v35, &qword_27C8639D0, &unk_20E33C230);
  if (v43)
  {
    goto LABEL_18;
  }

LABEL_15:
  v39 = 0;
  return v39 & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoVisualOutputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoVisualOutputType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D18, &unk_20E33C370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868370, &qword_20E33B3E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C865D18, &unk_20E33C370);
  sub_20E0486F4(a2, &v17[v18], &qword_27C865D18, &unk_20E33C370);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C865D18, &unk_20E33C370);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoVisualOutput(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C865D18, &unk_20E33C370);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoVisualOutputType);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868370, &qword_20E33B3E0);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoVisualOutputType);
  v21 = _s23LighthouseDataProcessor31TranscriptProtoVisualOutputTypeO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoVisualOutputType);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoVisualOutputType);
  sub_20E04875C(v17, &qword_27C865D18, &unk_20E33C370);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoVariableStepV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
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
  if ((sub_20E1552F8(*a1, *a2) & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = type metadata accessor for TranscriptProtoVariableStep(0);
  v18 = a1;
  v19 = a2;
  v27[0] = v17;
  v27[1] = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_20E0486F4(v18 + v20, v16, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v19 + v20, &v16[v21], &qword_27C8639D0, &unk_20E33C230);
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

uint64_t _s23LighthouseDataProcessor27TranscriptProtoSessionErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685D8, &qword_20E33B5F8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863EE0, &qword_20E325D18);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863EE0, &qword_20E325D18);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863EE0, &qword_20E325D18);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSessionError(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863EE0, &qword_20E325D18);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoSessionErrorEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C8685D8, &qword_20E33B5F8);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoSessionErrorEnum);
  v21 = _s23LighthouseDataProcessor31TranscriptProtoSessionErrorEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoSessionErrorEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoSessionErrorEnum);
  sub_20E04875C(v17, &qword_27C863EE0, &qword_20E325D18);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoQueryPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  PayloadEnum = type metadata accessor for TranscriptProtoQueryPayloadEnum(0);
  v5 = *(PayloadEnum - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](PayloadEnum);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB8, &qword_20E323E88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8683E0, &qword_20E33B440);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863BB8, &qword_20E323E88);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863BB8, &qword_20E323E88);
  v19 = *(v5 + 48);
  if (v19(v17, 1, PayloadEnum) == 1)
  {
    if (v19(&v17[v18], 1, PayloadEnum) == 1)
    {
      sub_20E04875C(v17, &qword_27C863BB8, &qword_20E323E88);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoQueryPayload(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863BB8, &qword_20E323E88);
  if (v19(&v17[v18], 1, PayloadEnum) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryPayloadEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C8683E0, &qword_20E33B440);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  PayloadEnumO2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor31TranscriptProtoQueryPayloadEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoQueryPayloadEnum);
  sub_20E04875C(v17, &qword_27C863BB8, &qword_20E323E88);
  if (PayloadEnumO2eeoiySbAC_ACtFZ_0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoQueryPayloadV06StringF0V2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v27 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v28 = a1;
  v17 = *(v27 + 20);
  v18 = *(v13 + 56);
  sub_20E0486F4(a1 + v17, v16, &qword_27C863B60, &qword_20E323F50);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C863B60, &qword_20E323F50);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v11, &qword_27C863B60, &qword_20E323F50);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v26;
      sub_20E195B54(&v16[v18], v26, type metadata accessor for ToolKitProtoTypeIdentifier);
      v22 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v11, v21);
      sub_20E195C24(v21, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
      sub_20E04875C(v16, &qword_27C863B60, &qword_20E323F50);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    sub_20E04875C(v16, &qword_27C867ED0, &qword_20E33AFA0);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v16, &qword_27C863B60, &qword_20E323F50);
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

uint64_t _s23LighthouseDataProcessor27TranscriptProtoQueryPayloadV010IdentifierF0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ToolKitProtoTypeIdentifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B60, &qword_20E323F50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED0, &qword_20E33AFA0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_20E0486F4(a1 + v17, v16, &qword_27C863B60, &qword_20E323F50);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C863B60, &qword_20E323F50);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C863B60, &qword_20E323F50);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v16, v11, &qword_27C863B60, &qword_20E323F50);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
LABEL_6:
    sub_20E04875C(v16, &qword_27C867ED0, &qword_20E33AFA0);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_20E195B54(&v16[v18], v27, type metadata accessor for ToolKitProtoTypeIdentifier);
  v21 = static ToolKitProtoTypeIdentifier.== infix(_:_:)(v11, v20);
  sub_20E195C24(v20, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E195C24(v11, type metadata accessor for ToolKitProtoTypeIdentifier);
  sub_20E04875C(v16, &qword_27C863B60, &qword_20E323F50);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_20E1494E0(*v28, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 24);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v23 = sub_20E322850();
  return v23 & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoPlannerErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8685C0, &qword_20E33B5E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863ED0, &unk_20E33C2C0);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863ED0, &unk_20E33C2C0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863ED0, &unk_20E33C2C0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoPlannerError(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863ED0, &unk_20E33C2C0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoPlannerErrorEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C8685C0, &qword_20E33B5E0);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  v21 = _s23LighthouseDataProcessor31TranscriptProtoPlannerErrorEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoPlannerErrorEnum);
  sub_20E04875C(v17, &qword_27C863ED0, &unk_20E33C2C0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor26TranscriptProtoPersonQueryV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868600, &unk_20E33C2A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868608, &qword_20E33B618);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = *(a1 + 2);
  v18 = *(a2 + 2);
  if (v17)
  {
    if (!v18 || (*(a1 + 1) != *(a2 + 1) || v17 != v18) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v18)
  {
    goto LABEL_16;
  }

  v19 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v20 = *(v19 + 24);
  v21 = a1;
  v22 = *(v13 + 48);
  v34 = v19;
  v35 = v21;
  sub_20E0486F4(&v21[v20], v16, &qword_27C868600, &unk_20E33C2A0);
  sub_20E0486F4(&a2[v20], &v16[v22], &qword_27C868600, &unk_20E33C2A0);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v12, &qword_27C868600, &unk_20E33C2A0);
    if (v23(&v16[v22], 1, v4) != 1)
    {
      sub_20E195B54(&v16[v22], v8, type metadata accessor for TranscriptProtoPersonQuery.Handle);
      v24 = sub_20E179550(v12, v8, type metadata accessor for TranscriptProtoPersonQuery.Handle);
      sub_20E195C24(v8, type metadata accessor for TranscriptProtoPersonQuery.Handle);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoPersonQuery.Handle);
      sub_20E04875C(v16, &qword_27C868600, &unk_20E33C2A0);
      if ((v24 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    sub_20E195C24(v12, type metadata accessor for TranscriptProtoPersonQuery.Handle);
LABEL_13:
    sub_20E04875C(v16, &qword_27C868608, &qword_20E33B618);
    goto LABEL_16;
  }

  if (v23(&v16[v22], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_20E04875C(v16, &qword_27C868600, &unk_20E33C2A0);
LABEL_15:
  if (*v35 == *a2)
  {
    v27 = v34;
    v28 = *(v34 + 28);
    v29 = &v35[v28];
    v30 = *&v35[v28 + 8];
    v31 = &a2[v28];
    v32 = *(v31 + 1);
    if (v30)
    {
      if (!v32 || (*v29 != *v31 || v30 != v32) && (sub_20E322D60() & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v32)
    {
      goto LABEL_16;
    }

    v33 = *(v27 + 32);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v25 = sub_20E322850();
    return v25 & 1;
  }

LABEL_16:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_20E179550(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t (*a3)(void))
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == 3)
  {
    if (v4 != 3)
    {
      return 0;
    }
  }

  else if (v3 != v4)
  {
    return 0;
  }

  v6 = *(a3(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor26TranscriptProtoASTPickTypeV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 255)
  {
    if (v3 == 255)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v3 == 255)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *a2;
  if (v2)
  {
    if (v3 & 1) == 0 || ((v5 ^ v4))
    {
      return 0;
    }
  }

  else if ((v3 & 1) != 0 || v4 != v5)
  {
    return 0;
  }

LABEL_11:
  v7 = *(type metadata accessor for TranscriptProtoASTPickType(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoASTFlatValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F58, &qword_20E3263B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868160, &qword_20E33B208);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C865F58, &qword_20E3263B8);
  sub_20E0486F4(a2, &v17[v18], &qword_27C865F58, &qword_20E3263B8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C865F58, &qword_20E3263B8);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoASTFlatValue(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C865F58, &qword_20E3263B8);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoAstflatValueEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868160, &qword_20E33B208);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoAstflatValueEnum);
  v21 = _s23LighthouseDataProcessor31TranscriptProtoAstflatValueEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoAstflatValueEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoAstflatValueEnum);
  sub_20E04875C(v17, &qword_27C865F58, &qword_20E3263B8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor26TranscriptProtoASTFlatExprV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865F48, &unk_20E33C400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868178, &qword_20E33B220);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C865F48, &unk_20E33C400);
  sub_20E0486F4(a2, &v17[v18], &qword_27C865F48, &unk_20E33C400);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C865F48, &unk_20E33C400);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoASTFlatExpr(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C865F48, &unk_20E33C400);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoAstflatExprEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868178, &qword_20E33B220);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  v21 = _s23LighthouseDataProcessor30TranscriptProtoAstflatExprEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoAstflatExprEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoAstflatExprEnum);
  sub_20E04875C(v17, &qword_27C865F48, &unk_20E33C400);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor25TranscriptProtoDialogTypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoDialogFormat(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865D48, &qword_20E3263B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868338, &qword_20E33B3A8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C865D48, &qword_20E3263B0);
  sub_20E0486F4(a2, &v17[v18], &qword_27C865D48, &qword_20E3263B0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C865D48, &qword_20E3263B0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoDialogType(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C865D48, &qword_20E3263B0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoDialogFormat);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868338, &qword_20E33B3A8);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoDialogFormat);
  v21 = _s23LighthouseDataProcessor27TranscriptProtoDialogFormatO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoDialogFormat);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoDialogFormat);
  sub_20E04875C(v17, &qword_27C865D48, &qword_20E3263B0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor24TranscriptProtoTimepointV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_20E322150();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868780, &qword_20E33B758);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v26 = type metadata accessor for TranscriptProtoTimepoint(0);
  v17 = *(v26 + 28);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_20E0486F4(a1 + v17, v16, &qword_27C868778, &unk_20E33C000);
  v29 = a2;
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C868778, &unk_20E33C000);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C868778, &unk_20E33C000);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v16, v11, &qword_27C868778, &unk_20E33C000);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_20E04875C(v16, &qword_27C868780, &qword_20E33B758);
LABEL_14:
    v24 = 0;
    return v24 & 1;
  }

  v20 = v27;
  (*(v5 + 32))(v27, &v16[v18], v4);
  sub_20E195B0C(&qword_27C868788, MEMORY[0x277D21570]);
  v21 = sub_20E322850();
  v22 = *(v5 + 8);
  v22(v20, v4);
  v22(v11, v4);
  sub_20E04875C(v16, &qword_27C868778, &unk_20E33C000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (*v28 != *v29 || v28[1] != v29[1] || (v28[2] != v29[2] || v28[3] != v29[3]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_14;
  }

  v23 = *(v26 + 32);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v24 = sub_20E322850();
  return v24 & 1;
}

uint64_t _s23LighthouseDataProcessor35TranscriptProtoGlobalToolIdentifierV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_20E322D60() & 1) != 0)
  {
    v5 = a1[3];
    v6 = a2[3];
    if (v5)
    {
      if (v6)
      {
        v7 = a1[2] == a2[2] && v5 == v6;
        if (v7 || (sub_20E322D60() & 1) != 0)
        {
          goto LABEL_13;
        }
      }
    }

    else if (!v6)
    {
LABEL_13:
      v8 = *(type metadata accessor for TranscriptProtoGlobalToolIdentifier(0) + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      return sub_20E322850() & 1;
    }
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor37TranscriptProtoActionParameterContextV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t a2)
{
  v56 = a2;
  v3 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v47 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868040, &qword_20E33B0E8);
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
  v51 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v25 = *(v51 + 24);
  v26 = *(v21 + 56);
  v55 = a1;
  sub_20E0486F4(a1 + v25, v24, &qword_27C8639D0, &unk_20E33C230);
  v27 = v56;
  sub_20E0486F4(v56 + v25, &v24[v26], &qword_27C8639D0, &unk_20E33C230);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &qword_27C867F30;
    v30 = &qword_20E33B000;
    v31 = v24;
LABEL_17:
    sub_20E04875C(v31, v29, v30);
    goto LABEL_18;
  }

  sub_20E0486F4(v24, v19, &qword_27C8639D0, &unk_20E33C230);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    sub_20E195C24(v19, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_20E195B54(&v24[v26], v15, type metadata accessor for TranscriptProtoStatementID);
  v32 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v19, v15);
  sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v19, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
  if ((v32 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  v33 = v55;
  if ((*v55 != *v27 || v55[1] != *(v27 + 8)) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = v51;
  v35 = *(v51 + 28);
  v36 = *(v50 + 48);
  v37 = v54;
  sub_20E0486F4(v33 + v35, v54, &qword_27C8639C8, &unk_20E323870);
  sub_20E0486F4(v27 + v35, v37 + v36, &qword_27C8639C8, &unk_20E323870);
  v38 = v53;
  v39 = *(v52 + 48);
  if (v39(v37, 1, v53) != 1)
  {
    v40 = v49;
    sub_20E0486F4(v37, v49, &qword_27C8639C8, &unk_20E323870);
    if (v39(v37 + v36, 1, v38) != 1)
    {
      v43 = v37 + v36;
      v44 = v48;
      sub_20E195B54(v43, v48, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      v45 = _s23LighthouseDataProcessor35TranscriptProtoGlobalToolIdentifierV2eeoiySbAC_ACtFZ_0(v40, v44);
      sub_20E195C24(v44, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      sub_20E195C24(v40, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
      sub_20E04875C(v37, &qword_27C8639C8, &unk_20E323870);
      if ((v45 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    sub_20E195C24(v40, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
    goto LABEL_16;
  }

  if (v39(v37 + v36, 1, v38) != 1)
  {
LABEL_16:
    v29 = &qword_27C868040;
    v30 = &qword_20E33B0E8;
    v31 = v37;
    goto LABEL_17;
  }

  sub_20E04875C(v37, &qword_27C8639C8, &unk_20E323870);
LABEL_21:
  if (*(v33 + 16) == *(v27 + 16))
  {
    v46 = *(v34 + 32);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v41 = sub_20E322850();
    return v41 & 1;
  }

LABEL_18:
  v41 = 0;
  return v41 & 1;
}

uint64_t _s23LighthouseDataProcessor24TranscriptProtoQueryStepV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v81 = a2;
  Payload = type metadata accessor for TranscriptProtoQueryPayload(0);
  v71 = *(Payload - 8);
  v72 = Payload;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](Payload);
  v67 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BB0, &unk_20E33C350);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v66 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868408, &qword_20E33B468);
  v9 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v73 = &v66 - v10;
  v11 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  MEMORY[0x28223BE20](v11);
  v69 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BC0, &unk_20E323E90);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v74 = (&v66 - v16);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868410, &qword_20E33B470);
  v17 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v78 = &v66 - v18;
  v19 = type metadata accessor for TranscriptProtoStatementID(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v66 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v66 - v31;
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v80 = a1;
  v33 = *(Step + 20);
  v34 = *(v29 + 56);
  sub_20E0486F4(&a1[v33], v32, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(&v81[v33], &v32[v34], &qword_27C8639D0, &unk_20E33C230);
  v35 = *(v20 + 48);
  if (v35(v32, 1, v19) == 1)
  {
    if (v35(&v32[v34], 1, v19) == 1)
    {
      sub_20E04875C(v32, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &qword_27C867F30;
    v37 = &qword_20E33B000;
    v38 = v32;
LABEL_21:
    sub_20E04875C(v38, v36, v37);
    goto LABEL_22;
  }

  sub_20E0486F4(v32, v27, &qword_27C8639D0, &unk_20E33C230);
  if (v35(&v32[v34], 1, v19) == 1)
  {
    sub_20E195C24(v27, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_20E195B54(&v32[v34], v23, type metadata accessor for TranscriptProtoStatementID);
  v39 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v27, v23);
  sub_20E195C24(v23, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v27, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v32, &qword_27C8639D0, &unk_20E33C230);
  if ((v39 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v41 = Step;
  v40 = v80;
  v42 = *(Step + 24);
  v43 = *(v75 + 48);
  v44 = v78;
  sub_20E0486F4(&v80[v42], v78, &qword_27C863BC0, &unk_20E323E90);
  v45 = v81;
  sub_20E0486F4(&v81[v42], v44 + v43, &qword_27C863BC0, &unk_20E323E90);
  v46 = v77;
  v47 = *(v76 + 48);
  if (v47(v44, 1, v77) == 1)
  {
    if (v47(v44 + v43, 1, v46) == 1)
    {
      sub_20E04875C(v44, &qword_27C863BC0, &unk_20E323E90);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v48 = v74;
  sub_20E0486F4(v44, v74, &qword_27C863BC0, &unk_20E323E90);
  if (v47(v44 + v43, 1, v46) == 1)
  {
    sub_20E195C24(v48, type metadata accessor for TranscriptProtoActionParameterContext);
LABEL_13:
    v36 = &qword_27C868410;
    v37 = &qword_20E33B470;
    v38 = v44;
    goto LABEL_21;
  }

  v49 = v44 + v43;
  v50 = v69;
  sub_20E195B54(v49, v69, type metadata accessor for TranscriptProtoActionParameterContext);
  v51 = _s23LighthouseDataProcessor37TranscriptProtoActionParameterContextV2eeoiySbAC_ACtFZ_0(v48, v50);
  sub_20E195C24(v50, type metadata accessor for TranscriptProtoActionParameterContext);
  sub_20E195C24(v48, type metadata accessor for TranscriptProtoActionParameterContext);
  sub_20E04875C(v44, &qword_27C863BC0, &unk_20E323E90);
  if ((v51 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v52 = *(v41 + 28);
  v53 = *(v70 + 48);
  v54 = v73;
  sub_20E0486F4(&v40[v52], v73, &qword_27C863BB0, &unk_20E33C350);
  v55 = &v45[v52];
  v56 = v54;
  sub_20E0486F4(v55, v54 + v53, &qword_27C863BB0, &unk_20E33C350);
  v57 = v72;
  v58 = *(v71 + 48);
  if (v58(v54, 1, v72) != 1)
  {
    v59 = v68;
    sub_20E0486F4(v56, v68, &qword_27C863BB0, &unk_20E33C350);
    if (v58(v56 + v53, 1, v57) != 1)
    {
      v62 = v56 + v53;
      v63 = v67;
      sub_20E195B54(v62, v67, type metadata accessor for TranscriptProtoQueryPayload);
      PayloadV2eeoiySbAC_ACtFZ_0 = _s23LighthouseDataProcessor27TranscriptProtoQueryPayloadV2eeoiySbAC_ACtFZ_0(v59, v63);
      sub_20E195C24(v63, type metadata accessor for TranscriptProtoQueryPayload);
      sub_20E195C24(v59, type metadata accessor for TranscriptProtoQueryPayload);
      sub_20E04875C(v56, &qword_27C863BB0, &unk_20E33C350);
      if ((PayloadV2eeoiySbAC_ACtFZ_0 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    sub_20E195C24(v59, type metadata accessor for TranscriptProtoQueryPayload);
    goto LABEL_20;
  }

  if (v58(v54 + v53, 1, v57) != 1)
  {
LABEL_20:
    v36 = &qword_27C868408;
    v37 = &qword_20E33B468;
    v38 = v56;
    goto LABEL_21;
  }

  sub_20E04875C(v54, &qword_27C863BB0, &unk_20E33C350);
LABEL_25:
  if (*v40 == *v45)
  {
    v65 = *(v41 + 32);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v60 = sub_20E322850();
    return v60 & 1;
  }

LABEL_22:
  v60 = 0;
  return v60 & 1;
}

uint64_t _s23LighthouseDataProcessor24TranscriptProtoParameterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoCandidate(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B28, &unk_20E33C3E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868250, &qword_20E33B2F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v17 = 1;
    }

    if (v17)
    {
      goto LABEL_16;
    }
  }

  v26 = v8;
  v27 = type metadata accessor for TranscriptProtoParameter(0);
  v18 = *(v27 + 24);
  v19 = *(v13 + 48);
  sub_20E0486F4(a1 + v18, v16, &qword_27C863B28, &unk_20E33C3E0);
  sub_20E0486F4(a2 + v18, &v16[v19], &qword_27C863B28, &unk_20E33C3E0);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v19], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C863B28, &unk_20E33C3E0);
LABEL_19:
      v25 = *(v27 + 28);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v21 = sub_20E322850();
      return v21 & 1;
    }

    goto LABEL_15;
  }

  sub_20E0486F4(v16, v12, &qword_27C863B28, &unk_20E33C3E0);
  if (v20(&v16[v19], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoCandidate);
LABEL_15:
    sub_20E04875C(v16, &qword_27C868250, &qword_20E33B2F0);
    goto LABEL_16;
  }

  v23 = v26;
  sub_20E195B54(&v16[v19], v26, type metadata accessor for TranscriptProtoCandidate);
  v24 = _s23LighthouseDataProcessor24TranscriptProtoCandidateV2eeoiySbAC_ACtFZ_0(v12, v23);
  sub_20E195C24(v23, type metadata accessor for TranscriptProtoCandidate);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoCandidate);
  sub_20E04875C(v16, &qword_27C863B28, &unk_20E33C3E0);
  if (v24)
  {
    goto LABEL_19;
  }

LABEL_16:
  v21 = 0;
  return v21 & 1;
}

uint64_t _s23LighthouseDataProcessor36TranscriptProtoCandidatePromptStatusV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 9);
  if (*(a1 + 9))
  {
    if (*(a2 + 9))
    {
LABEL_3:
      v3 = *(type metadata accessor for TranscriptProtoCandidatePromptStatus(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      return sub_20E322850() & 1;
    }
  }

  else if ((*(a2 + 9) & 1) == 0)
  {
    v5 = *a1;
    v6 = *a2;
    v7 = *(a2 + 8);
    if (a1[1])
    {
      if (v5)
      {
        if ((a2[1] & 1) != 0 && v6)
        {
          goto LABEL_3;
        }
      }

      else if ((a2[1] & 1) != 0 && !v6)
      {
        goto LABEL_3;
      }
    }

    else if ((a2[1] & 1) == 0 && v5 == v6)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor24TranscriptProtoCandidateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v81 = a2;
  v3 = type metadata accessor for TranscriptProtoStatementID(0);
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v66 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v9 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v73 = &v66 - v10;
  v11 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  MEMORY[0x28223BE20](v11);
  v69 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B20, &unk_20E33C290);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v74 = (&v66 - v16);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868278, &qword_20E33B308);
  v17 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v78 = &v66 - v18;
  v19 = type metadata accessor for ToolKitProtoTypedValue(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v66 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867ED8, &qword_20E33AFA8);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v66 - v31;
  v79 = type metadata accessor for TranscriptProtoCandidate(0);
  v80 = a1;
  v33 = *(v79 + 20);
  v34 = *(v29 + 56);
  sub_20E0486F4(&a1[v33], v32, &qword_27C863B18, &qword_20E323EB0);
  v35 = v81;
  sub_20E0486F4(&v81[v33], &v32[v34], &qword_27C863B18, &qword_20E323EB0);
  v36 = *(v20 + 48);
  if (v36(v32, 1, v19) == 1)
  {
    if (v36(&v32[v34], 1, v19) == 1)
    {
      sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
      goto LABEL_9;
    }

LABEL_6:
    v37 = &qword_27C867ED8;
    v38 = &qword_20E33AFA8;
    v39 = v32;
LABEL_7:
    sub_20E04875C(v39, v37, v38);
    goto LABEL_25;
  }

  sub_20E0486F4(v32, v27, &qword_27C863B18, &qword_20E323EB0);
  if (v36(&v32[v34], 1, v19) == 1)
  {
    sub_20E195C24(v27, type metadata accessor for ToolKitProtoTypedValue);
    goto LABEL_6;
  }

  sub_20E195B54(&v32[v34], v23, type metadata accessor for ToolKitProtoTypedValue);
  v40 = static ToolKitProtoTypedValue.== infix(_:_:)(v27, v23);
  sub_20E195C24(v23, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E195C24(v27, type metadata accessor for ToolKitProtoTypedValue);
  sub_20E04875C(v32, &qword_27C863B18, &qword_20E323EB0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_9:
  v41 = v80;
  if (*v80 != *v35)
  {
    goto LABEL_25;
  }

  v42 = v78;
  v43 = v79;
  v44 = *(v79 + 24);
  v45 = *(v75 + 48);
  sub_20E0486F4(&v80[v44], v78, &qword_27C863B20, &unk_20E33C290);
  sub_20E0486F4(&v35[v44], v42 + v45, &qword_27C863B20, &unk_20E33C290);
  v46 = v77;
  v47 = *(v76 + 48);
  if (v47(v42, 1, v77) == 1)
  {
    if (v47(v42 + v45, 1, v46) == 1)
    {
      sub_20E04875C(v42, &qword_27C863B20, &unk_20E33C290);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v48 = v74;
  sub_20E0486F4(v42, v74, &qword_27C863B20, &unk_20E33C290);
  if (v47(v42 + v45, 1, v46) == 1)
  {
    sub_20E195C24(v48, type metadata accessor for TranscriptProtoCandidatePromptStatus);
LABEL_15:
    v37 = &qword_27C868278;
    v38 = &qword_20E33B308;
    v39 = v42;
    goto LABEL_7;
  }

  v49 = v42 + v45;
  v50 = v69;
  sub_20E195B54(v49, v69, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  v51 = _s23LighthouseDataProcessor36TranscriptProtoCandidatePromptStatusV2eeoiySbAC_ACtFZ_0(v48, v50);
  sub_20E195C24(v50, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_20E195C24(v48, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  sub_20E04875C(v42, &qword_27C863B20, &unk_20E33C290);
  if ((v51 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  v52 = *(v43 + 28);
  v53 = *(v70 + 48);
  v54 = v73;
  sub_20E0486F4(&v41[v52], v73, &qword_27C8639D0, &unk_20E33C230);
  v55 = &v35[v52];
  v56 = v54;
  sub_20E0486F4(v55, v54 + v53, &qword_27C8639D0, &unk_20E33C230);
  v57 = v72;
  v58 = *(v71 + 48);
  if (v58(v54, 1, v72) != 1)
  {
    v59 = v68;
    sub_20E0486F4(v56, v68, &qword_27C8639D0, &unk_20E33C230);
    if (v58(v56 + v53, 1, v57) != 1)
    {
      v60 = v56 + v53;
      v61 = v67;
      sub_20E195B54(v60, v67, type metadata accessor for TranscriptProtoStatementID);
      v62 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v59, v61);
      sub_20E195C24(v61, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v59, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v56, &qword_27C8639D0, &unk_20E33C230);
      if (v62)
      {
        goto LABEL_24;
      }

LABEL_25:
      v64 = 0;
      return v64 & 1;
    }

    sub_20E195C24(v59, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_22;
  }

  if (v58(v54 + v53, 1, v57) != 1)
  {
LABEL_22:
    v37 = &qword_27C867F30;
    v38 = &qword_20E33B000;
    v39 = v56;
    goto LABEL_7;
  }

  sub_20E04875C(v54, &qword_27C8639D0, &unk_20E33C230);
LABEL_24:
  v63 = *(v43 + 32);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v64 = sub_20E322850();
  return v64 & 1;
}

uint64_t _s23LighthouseDataProcessor22TranscriptProtoUILabelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoLabel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682A8, &qword_20E33B338);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682B0, &qword_20E33B340);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C8682A8, &qword_20E33B338);
  sub_20E0486F4(a2, &v17[v18], &qword_27C8682A8, &qword_20E33B338);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C8682A8, &qword_20E33B338);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoUILabel(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C8682A8, &qword_20E33B338);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoLabel);
LABEL_6:
    sub_20E04875C(v17, &qword_27C8682B0, &qword_20E33B340);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoLabel);
  v21 = static TranscriptProtoLabel.== infix(_:_:)(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoLabel);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoLabel);
  sub_20E04875C(v17, &qword_27C8682A8, &qword_20E33B338);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor47TranscriptProtoSystemPromptResolutionUserActionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F08, &qword_20E325D20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868238, &qword_20E33B2D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863F08, &qword_20E325D20);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863F08, &qword_20E325D20);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863F08, &qword_20E325D20);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863F08, &qword_20E325D20);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868238, &qword_20E33B2D8);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  v21 = _s23LighthouseDataProcessor51TranscriptProtoSystemPromptResolutionUserActionEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum);
  sub_20E04875C(v17, &qword_27C863F08, &qword_20E325D20);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor37TranscriptProtoSystemPromptResolutionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B80, &qword_20E323E70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = &v70 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868298, &qword_20E33B328);
  v11 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v13 = &v70 - v12;
  v14 = type metadata accessor for TranscriptProtoStatementID(0);
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v14);
  v75 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v79 = &v70 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v20 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v83 = &v70 - v21;
  v22 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F10, &unk_20E33C3B0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v70 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682A0, &qword_20E33B330);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v34 = &v70 - v33;
  v35 = a1[3];
  v36 = a2[3];
  if (v35)
  {
    if (!v36 || (a1[2] != a2[2] || v35 != v36) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if (v36)
  {
    goto LABEL_33;
  }

  v70 = v7;
  v71 = v13;
  v37 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v38 = *(v37 + 24);
  v39 = a1;
  v40 = *(v31 + 48);
  v72 = v37;
  v73 = v39;
  sub_20E0486F4(v39 + v38, v34, &qword_27C863F10, &unk_20E33C3B0);
  v41 = a2 + v38;
  v42 = a2;
  sub_20E0486F4(v41, &v34[v40], &qword_27C863F10, &unk_20E33C3B0);
  v43 = *(v23 + 48);
  if (v43(v34, 1, v22) == 1)
  {
    if (v43(&v34[v40], 1, v22) == 1)
    {
      sub_20E04875C(v34, &qword_27C863F10, &unk_20E33C3B0);
      goto LABEL_15;
    }

LABEL_13:
    v44 = &qword_27C8682A0;
    v45 = &qword_20E33B330;
    v46 = v34;
LABEL_32:
    sub_20E04875C(v46, v44, v45);
    goto LABEL_33;
  }

  sub_20E0486F4(v34, v30, &qword_27C863F10, &unk_20E33C3B0);
  if (v43(&v34[v40], 1, v22) == 1)
  {
    sub_20E195C24(v30, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
    goto LABEL_13;
  }

  sub_20E195B54(&v34[v40], v26, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  v47 = _s23LighthouseDataProcessor47TranscriptProtoSystemPromptResolutionUserActionV2eeoiySbAC_ACtFZ_0(v30, v26);
  sub_20E195C24(v26, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_20E195C24(v30, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_20E04875C(v34, &qword_27C863F10, &unk_20E33C3B0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_15:
  v48 = v73;
  if ((*v73 != *a2 || v73[1] != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_33;
  }

  v49 = v72;
  v50 = *(v72 + 28);
  v51 = *(v80 + 48);
  v52 = v83;
  sub_20E0486F4(v48 + v50, v83, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(v42 + v50, v52 + v51, &qword_27C8639D0, &unk_20E33C230);
  v53 = v82;
  v54 = *(v81 + 48);
  if (v54(v52, 1, v82) != 1)
  {
    v55 = v79;
    sub_20E0486F4(v52, v79, &qword_27C8639D0, &unk_20E33C230);
    if (v54(v52 + v51, 1, v53) != 1)
    {
      v56 = v52 + v51;
      v57 = v75;
      sub_20E195B54(v56, v75, type metadata accessor for TranscriptProtoStatementID);
      v58 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v55, v57);
      sub_20E195C24(v57, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v55, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v52, &qword_27C8639D0, &unk_20E33C230);
      if ((v58 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_25;
    }

    sub_20E195C24(v55, type metadata accessor for TranscriptProtoStatementID);
LABEL_23:
    v44 = &qword_27C867F30;
    v45 = &qword_20E33B000;
LABEL_31:
    v46 = v52;
    goto LABEL_32;
  }

  if (v54(v52 + v51, 1, v53) != 1)
  {
    goto LABEL_23;
  }

  sub_20E04875C(v52, &qword_27C8639D0, &unk_20E33C230);
LABEL_25:
  v59 = *(v49 + 32);
  v60 = *(v76 + 48);
  v52 = v71;
  sub_20E0486F4(v48 + v59, v71, &qword_27C863B80, &qword_20E323E70);
  sub_20E0486F4(v42 + v59, v52 + v60, &qword_27C863B80, &qword_20E323E70);
  v61 = v78;
  v62 = *(v77 + 48);
  if (v62(v52, 1, v78) == 1)
  {
    if (v62(v52 + v60, 1, v61) == 1)
    {
      sub_20E04875C(v52, &qword_27C863B80, &qword_20E323E70);
LABEL_36:
      v69 = *(v49 + 36);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v64 = sub_20E322850();
      return v64 & 1;
    }

    goto LABEL_30;
  }

  v63 = v74;
  sub_20E0486F4(v52, v74, &qword_27C863B80, &qword_20E323E70);
  if (v62(v52 + v60, 1, v61) == 1)
  {
    sub_20E195C24(v63, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
LABEL_30:
    v44 = &qword_27C868298;
    v45 = &qword_20E33B328;
    goto LABEL_31;
  }

  v66 = v52 + v60;
  v67 = v70;
  sub_20E195B54(v66, v70, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  v68 = _s23LighthouseDataProcessor42TranscriptProtoSystemPromptResolutionInputV2eeoiySbAC_ACtFZ_0(v63, v67);
  sub_20E195C24(v67, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  sub_20E195C24(v63, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  sub_20E04875C(v52, &qword_27C863B80, &qword_20E323E70);
  if (v68)
  {
    goto LABEL_36;
  }

LABEL_33:
  v64 = 0;
  return v64 & 1;
}

uint64_t _s23LighthouseDataProcessor29TranscriptProtoRequestContentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestContentEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865978, &qword_20E326390);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868728, &qword_20E33B720);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C865978, &qword_20E326390);
  sub_20E0486F4(a2, &v17[v18], &qword_27C865978, &qword_20E326390);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C865978, &qword_20E326390);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoRequestContent(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C865978, &qword_20E326390);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestContentEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868728, &qword_20E33B720);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoRequestContentEnum);
  v21 = _s23LighthouseDataProcessor33TranscriptProtoRequestContentEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoRequestContentEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoRequestContentEnum);
  sub_20E04875C(v17, &qword_27C865978, &qword_20E326390);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor22TranscriptProtoRequestV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v156 = a2;
  v129 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  v128 = *(v129 - 8);
  v3 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v124 = (&v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868738, &unk_20E33C220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = (&v124 - v7);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868740, &qword_20E33B730);
  v8 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v130 = &v124 - v9;
  v135 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  v134 = *(v135 - 8);
  v10 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v126 = (&v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868748, &qword_20E33B738);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v131 = (&v124 - v14);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868750, &qword_20E33B740);
  v15 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v136 = &v124 - v16;
  v17 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v140 = *(v17 - 8);
  v141 = v17;
  v18 = *(v140 + 64);
  MEMORY[0x28223BE20](v17);
  v132 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868758, &unk_20E33C210);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v137 = &v124 - v22;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868760, &qword_20E33B748);
  v23 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v142 = &v124 - v24;
  v25 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v145 = *(v25 - 8);
  v146 = v25;
  v26 = *(v145 + 64);
  MEMORY[0x28223BE20](v25);
  v138 = (&v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868708, &qword_20E33B700);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v143 = (&v124 - v30);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868710, &qword_20E33B708);
  v31 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v147 = &v124 - v32;
  v33 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v151 = *(v33 - 8);
  v152 = v33;
  v34 = *(v151 + 64);
  MEMORY[0x28223BE20](v33);
  v148 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F88, &unk_20E33C200);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v149 = &v124 - v38;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868768, &qword_20E33B750);
  v39 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v153 = &v124 - v40;
  v41 = type metadata accessor for TranscriptProtoRequestContent(0);
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v45 = &v124 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF8, &qword_20E33AFC8);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8);
  v49 = &v124 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F00, &qword_20E33AFD0);
  v51 = v50 - 8;
  v52 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v54 = &v124 - v53;
  v154 = type metadata accessor for TranscriptProtoRequest(0);
  v155 = a1;
  v55 = *(v154 + 20);
  v56 = *(v51 + 56);
  sub_20E0486F4(&a1[v55], v54, &qword_27C867EF8, &qword_20E33AFC8);
  v57 = v156;
  sub_20E0486F4(&v156[v55], &v54[v56], &qword_27C867EF8, &qword_20E33AFC8);
  v58 = *(v42 + 48);
  if (v58(v54, 1, v41) != 1)
  {
    sub_20E0486F4(v54, v49, &qword_27C867EF8, &qword_20E33AFC8);
    if (v58(&v54[v56], 1, v41) != 1)
    {
      sub_20E195B54(&v54[v56], v45, type metadata accessor for TranscriptProtoRequestContent);
      v62 = _s23LighthouseDataProcessor29TranscriptProtoRequestContentV2eeoiySbAC_ACtFZ_0(v49, v45);
      sub_20E195C24(v45, type metadata accessor for TranscriptProtoRequestContent);
      sub_20E195C24(v49, type metadata accessor for TranscriptProtoRequestContent);
      sub_20E04875C(v54, &qword_27C867EF8, &qword_20E33AFC8);
      if ((v62 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_20E195C24(v49, type metadata accessor for TranscriptProtoRequestContent);
LABEL_6:
    v59 = &qword_27C867F00;
    v60 = &qword_20E33AFD0;
    v61 = v54;
    goto LABEL_7;
  }

  if (v58(&v54[v56], 1, v41) != 1)
  {
    goto LABEL_6;
  }

  sub_20E04875C(v54, &qword_27C867EF8, &qword_20E33AFC8);
LABEL_9:
  v63 = v155;
  if (*v155 != *v57)
  {
    goto LABEL_10;
  }

  v66 = v57;
  v67 = v153;
  v68 = v154;
  v69 = *(v154 + 24);
  v70 = *(v150 + 48);
  sub_20E0486F4(&v155[v69], v153, &qword_27C863F88, &unk_20E33C200);
  sub_20E0486F4(&v66[v69], v67 + v70, &qword_27C863F88, &unk_20E33C200);
  v71 = v152;
  v72 = *(v151 + 48);
  if (v72(v67, 1, v152) == 1)
  {
    if (v72(v67 + v70, 1, v71) == 1)
    {
      sub_20E04875C(v67, &qword_27C863F88, &unk_20E33C200);
      goto LABEL_19;
    }
  }

  else
  {
    v73 = v149;
    sub_20E0486F4(v67, v149, &qword_27C863F88, &unk_20E33C200);
    if (v72(v67 + v70, 1, v71) != 1)
    {
      v74 = v67 + v70;
      v75 = v148;
      sub_20E195B54(v74, v148, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
      v76 = _s23LighthouseDataProcessor36TranscriptProtoRequestPrescribedPlanV2eeoiySbAC_ACtFZ_0(v73, v75);
      sub_20E195C24(v75, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
      sub_20E195C24(v73, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
      sub_20E04875C(v67, &qword_27C863F88, &unk_20E33C200);
      if ((v76 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_19:
      v77 = v68[7];
      v78 = &v63[v77];
      v79 = *&v63[v77 + 8];
      v80 = &v66[v77];
      v81 = *(v80 + 1);
      if (v79)
      {
        if (!v81 || (*v78 != *v80 || v79 != v81) && (sub_20E322D60() & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (v81)
      {
        goto LABEL_10;
      }

      v82 = v68[8];
      v83 = *(v144 + 48);
      v84 = v147;
      sub_20E0486F4(&v63[v82], v147, &qword_27C868708, &qword_20E33B700);
      v85 = &v66[v82];
      v86 = v84;
      sub_20E0486F4(v85, v84 + v83, &qword_27C868708, &qword_20E33B700);
      v87 = v146;
      v88 = *(v145 + 48);
      if (v88(v84, 1, v146) == 1)
      {
        if (v88(v84 + v83, 1, v87) == 1)
        {
          sub_20E04875C(v84, &qword_27C868708, &qword_20E33B700);
          goto LABEL_29;
        }
      }

      else
      {
        v95 = v143;
        sub_20E0486F4(v86, v143, &qword_27C868708, &qword_20E33B700);
        if (v88(v86 + v83, 1, v87) != 1)
        {
          v96 = v86 + v83;
          v97 = v138;
          sub_20E195B54(v96, v138, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
          if ((*v95 != *v97 || v95[1] != v97[1]) && (sub_20E322D60() & 1) == 0 || (sub_20E1494E0(v95[2], v97[2]) & 1) == 0)
          {
            sub_20E195C24(v97, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
            sub_20E195C24(v95, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
            v59 = &qword_27C868708;
            v60 = &qword_20E33B700;
            goto LABEL_65;
          }

          v98 = *(v87 + 24);
          sub_20E3221C0();
          sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
          LOBYTE(v98) = sub_20E322850();
          sub_20E195C24(v97, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
          sub_20E195C24(v95, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
          sub_20E04875C(v86, &qword_27C868708, &qword_20E33B700);
          if ((v98 & 1) == 0)
          {
            goto LABEL_10;
          }

LABEL_29:
          v89 = v68[9];
          v90 = *(v139 + 48);
          v91 = v142;
          sub_20E0486F4(&v63[v89], v142, &qword_27C868758, &unk_20E33C210);
          v92 = &v66[v89];
          v86 = v91;
          sub_20E0486F4(v92, v91 + v90, &qword_27C868758, &unk_20E33C210);
          v93 = v141;
          v94 = *(v140 + 48);
          if (v94(v91, 1, v141) == 1)
          {
            if (v94(v91 + v90, 1, v93) == 1)
            {
              sub_20E04875C(v91, &qword_27C868758, &unk_20E33C210);
LABEL_46:
              v103 = v68[10];
              v104 = *(v133 + 48);
              v105 = v136;
              sub_20E0486F4(&v63[v103], v136, &qword_27C868748, &qword_20E33B738);
              v106 = &v66[v103];
              v86 = v105;
              sub_20E0486F4(v106, v105 + v104, &qword_27C868748, &qword_20E33B738);
              v107 = *(v134 + 48);
              v108 = v135;
              if (v107(v105, 1, v135) == 1)
              {
                if (v107(v105 + v104, 1, v108) == 1)
                {
                  sub_20E04875C(v105, &qword_27C868748, &qword_20E33B738);
LABEL_56:
                  v113 = v68[11];
                  v114 = *(v127 + 48);
                  v115 = v130;
                  sub_20E0486F4(&v63[v113], v130, &qword_27C868738, &unk_20E33C220);
                  v116 = &v66[v113];
                  v86 = v115;
                  sub_20E0486F4(v116, v115 + v114, &qword_27C868738, &unk_20E33C220);
                  v117 = *(v128 + 48);
                  v118 = v129;
                  if (v117(v115, 1, v129) == 1)
                  {
                    if (v117(v115 + v114, 1, v118) == 1)
                    {
                      sub_20E04875C(v115, &qword_27C868738, &unk_20E33C220);
                      goto LABEL_63;
                    }
                  }

                  else
                  {
                    v119 = v125;
                    sub_20E0486F4(v86, v125, &qword_27C868738, &unk_20E33C220);
                    if (v117(v86 + v114, 1, v118) != 1)
                    {
                      v120 = v86 + v114;
                      v121 = v124;
                      sub_20E195B54(v120, v124, type metadata accessor for TranscriptProtoDateTimeContext);
                      v122 = _s23LighthouseDataProcessor30TranscriptProtoDateTimeContextV2eeoiySbAC_ACtFZ_0(v119, v121);
                      sub_20E195C24(v121, type metadata accessor for TranscriptProtoDateTimeContext);
                      sub_20E195C24(v119, type metadata accessor for TranscriptProtoDateTimeContext);
                      sub_20E04875C(v86, &qword_27C868738, &unk_20E33C220);
                      if ((v122 & 1) == 0)
                      {
                        goto LABEL_10;
                      }

LABEL_63:
                      v123 = v68[12];
                      sub_20E3221C0();
                      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
                      v64 = sub_20E322850();
                      return v64 & 1;
                    }

                    sub_20E195C24(v119, type metadata accessor for TranscriptProtoDateTimeContext);
                  }

                  v59 = &qword_27C868740;
                  v60 = &qword_20E33B730;
                  goto LABEL_65;
                }

                goto LABEL_51;
              }

              v109 = v131;
              sub_20E0486F4(v86, v131, &qword_27C868748, &qword_20E33B738);
              if (v107(v86 + v104, 1, v108) == 1)
              {
                sub_20E195C24(v109, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
LABEL_51:
                v59 = &qword_27C868750;
                v60 = &qword_20E33B740;
                goto LABEL_65;
              }

              v110 = v86 + v104;
              v111 = v126;
              sub_20E195B54(v110, v126, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
              if (*v109 == *v111 && v109[1] == v111[1] || (sub_20E322D60() & 1) != 0)
              {
                v112 = *(v108 + 20);
                sub_20E3221C0();
                sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
                LOBYTE(v112) = sub_20E322850();
                sub_20E195C24(v111, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
                sub_20E195C24(v109, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
                sub_20E04875C(v86, &qword_27C868748, &qword_20E33B738);
                if ((v112 & 1) == 0)
                {
                  goto LABEL_10;
                }

                goto LABEL_56;
              }

              sub_20E195C24(v111, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
              sub_20E195C24(v109, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
              v59 = &qword_27C868748;
              v60 = &qword_20E33B738;
LABEL_65:
              v61 = v86;
              goto LABEL_7;
            }
          }

          else
          {
            v99 = v137;
            sub_20E0486F4(v86, v137, &qword_27C868758, &unk_20E33C210);
            if (v94(v86 + v90, 1, v93) != 1)
            {
              v100 = v86 + v90;
              v101 = v132;
              sub_20E195B54(v100, v132, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
              v102 = static ContextProtoStructuredContextSiriRequestContext.== infix(_:_:)(v99, v101);
              sub_20E195C24(v101, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
              sub_20E195C24(v99, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
              sub_20E04875C(v86, &qword_27C868758, &unk_20E33C210);
              if ((v102 & 1) == 0)
              {
                goto LABEL_10;
              }

              goto LABEL_46;
            }

            sub_20E195C24(v99, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
          }

          v59 = &qword_27C868760;
          v60 = &qword_20E33B748;
          goto LABEL_65;
        }

        sub_20E195C24(v95, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
      }

      v59 = &qword_27C868710;
      v60 = &qword_20E33B708;
      goto LABEL_65;
    }

    sub_20E195C24(v73, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  }

  v59 = &qword_27C868768;
  v60 = &qword_20E33B750;
  v61 = v67;
LABEL_7:
  sub_20E04875C(v61, v59, v60);
LABEL_10:
  v64 = 0;
  return v64 & 1;
}

uint64_t _s23LighthouseDataProcessor33TranscriptProtoArchiveViewPayloadV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((sub_20E15F7B0(*a1, a1[1], *a2, a2[1]) & 1) == 0)
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

  v6 = a1[5];
  v7 = a2[5];
  if (v6)
  {
    if (v7 && (a1[4] == a2[4] && v6 == v7 || (sub_20E322D60() & 1) != 0))
    {
      goto LABEL_14;
    }
  }

  else if (!v7)
  {
LABEL_14:
    v8 = *(type metadata accessor for TranscriptProtoArchiveViewPayload(0) + 28);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor21TranscriptProtoUITypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoUitype(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865DC0, &unk_20E33C3A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8682C0, &qword_20E33B350);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C865DC0, &unk_20E33C3A0);
  sub_20E0486F4(a2, &v17[v18], &qword_27C865DC0, &unk_20E33C3A0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C865DC0, &unk_20E33C3A0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoUIType(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C865DC0, &unk_20E33C3A0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoUitype);
LABEL_6:
    sub_20E04875C(v17, &qword_27C8682C0, &qword_20E33B350);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoUitype);
  v21 = _s23LighthouseDataProcessor21TranscriptProtoUitypeO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoUitype);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoUitype);
  sub_20E04875C(v17, &qword_27C865DC0, &unk_20E33C3A0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor30TranscriptProtoValueExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoValueExpressionEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864158, &qword_20E3262A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868058, &qword_20E33B100);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C864158, &qword_20E3262A8);
  sub_20E0486F4(a2, &v17[v18], &qword_27C864158, &qword_20E3262A8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C864158, &qword_20E3262A8);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoValueExpression(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C864158, &qword_20E3262A8);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoValueExpressionEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868058, &qword_20E33B100);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoValueExpressionEnum);
  v21 = _s23LighthouseDataProcessor34TranscriptProtoValueExpressionEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoValueExpressionEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoValueExpressionEnum);
  sub_20E04875C(v17, &qword_27C864158, &qword_20E3262A8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor25TranscriptProtoExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExpressionEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864160, &unk_20E33C410);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868068, &qword_20E33B110);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C864160, &unk_20E33C410);
  sub_20E0486F4(a2, &v17[v18], &qword_27C864160, &unk_20E33C410);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C864160, &unk_20E33C410);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoExpression(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C864160, &unk_20E33C410);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoExpressionEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868068, &qword_20E33B110);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoExpressionEnum);
  v21 = _s23LighthouseDataProcessor29TranscriptProtoExpressionEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoExpressionEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoExpressionEnum);
  sub_20E04875C(v17, &qword_27C864160, &unk_20E33C410);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor31TranscriptProtoProgramStatementV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  v79 = *(v4 - 8);
  v80 = v4;
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v4);
  v76 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FE8, &qword_20E33B0A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v76 - v9;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FF0, &qword_20E33B0A8);
  v10 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v81 = &v76 - v11;
  v12 = type metadata accessor for TranscriptProtoExpression(0);
  v85 = *(v12 - 8);
  v86 = v12;
  v13 = *(v85 + 64);
  MEMORY[0x28223BE20](v12);
  v82 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C864168, &unk_20E33C440);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v83 = &v76 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FF8, &qword_20E33B0B0);
  v18 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v87 = &v76 - v19;
  v20 = type metadata accessor for TranscriptProtoStatementID(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v76 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v76 - v32;
  v34 = *(v31 + 56);
  v88 = a1;
  sub_20E0486F4(a1, &v76 - v32, &qword_27C8639D0, &unk_20E33C230);
  v89 = a2;
  sub_20E0486F4(a2, &v33[v34], &qword_27C8639D0, &unk_20E33C230);
  v35 = *(v21 + 48);
  if (v35(v33, 1, v20) == 1)
  {
    if (v35(&v33[v34], 1, v20) == 1)
    {
      sub_20E04875C(v33, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_9;
    }

LABEL_6:
    v36 = &qword_27C867F30;
    v37 = &qword_20E33B000;
LABEL_7:
    v38 = v33;
LABEL_15:
    sub_20E04875C(v38, v36, v37);
    goto LABEL_16;
  }

  sub_20E0486F4(v33, v28, &qword_27C8639D0, &unk_20E33C230);
  if (v35(&v33[v34], 1, v20) == 1)
  {
    sub_20E195C24(v28, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_20E195B54(&v33[v34], v24, type metadata accessor for TranscriptProtoStatementID);
  v39 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v28, v24);
  sub_20E195C24(v24, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v28, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v33, &qword_27C8639D0, &unk_20E33C230);
  if ((v39 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v40 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v41 = v40[5];
  v42 = *(v84 + 48);
  v44 = v87;
  v43 = v88;
  sub_20E0486F4(v88 + v41, v87, &qword_27C864168, &unk_20E33C440);
  v45 = v89;
  sub_20E0486F4(v89 + v41, v44 + v42, &qword_27C864168, &unk_20E33C440);
  v46 = v86;
  v47 = *(v85 + 48);
  if (v47(v44, 1, v86) != 1)
  {
    v48 = v83;
    sub_20E0486F4(v44, v83, &qword_27C864168, &unk_20E33C440);
    if (v47(v44 + v42, 1, v46) != 1)
    {
      v51 = v44 + v42;
      v52 = v82;
      sub_20E195B54(v51, v82, type metadata accessor for TranscriptProtoExpression);
      v53 = _s23LighthouseDataProcessor25TranscriptProtoExpressionV2eeoiySbAC_ACtFZ_0(v48, v52);
      sub_20E195C24(v52, type metadata accessor for TranscriptProtoExpression);
      sub_20E195C24(v48, type metadata accessor for TranscriptProtoExpression);
      sub_20E04875C(v44, &qword_27C864168, &unk_20E33C440);
      if ((v53 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_20E195C24(v48, type metadata accessor for TranscriptProtoExpression);
LABEL_14:
    v36 = &qword_27C867FF8;
    v37 = &qword_20E33B0B0;
    v38 = v44;
    goto LABEL_15;
  }

  if (v47(v44 + v42, 1, v46) != 1)
  {
    goto LABEL_14;
  }

  sub_20E04875C(v44, &qword_27C864168, &unk_20E33C440);
LABEL_19:
  v54 = v40[6];
  v55 = *(v43 + v54);
  v56 = *(v45 + v54);
  if (v55 == 2)
  {
    if (v56 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v56 == 2 || ((v55 ^ v56) & 1) != 0)
  {
    goto LABEL_16;
  }

  v57 = v40[7];
  v58 = *(v43 + v57);
  v59 = *(v45 + v57);
  if (v58 == 2)
  {
    if (v59 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v59 == 2 || ((v58 ^ v59) & 1) != 0)
  {
    goto LABEL_16;
  }

  v60 = v40[8];
  v61 = (v43 + v60);
  v62 = *(v43 + v60 + 4);
  v63 = (v45 + v60);
  v64 = *(v45 + v60 + 4);
  if (v62)
  {
    if (!v64)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v61 != *v63)
    {
      LOBYTE(v64) = 1;
    }

    if (v64)
    {
      goto LABEL_16;
    }
  }

  v65 = v40[9];
  v66 = *(v78 + 48);
  v67 = v81;
  sub_20E0486F4(v43 + v65, v81, &qword_27C867FE8, &qword_20E33B0A0);
  v68 = v45 + v65;
  v33 = v67;
  sub_20E0486F4(v68, v67 + v66, &qword_27C867FE8, &qword_20E33B0A0);
  v69 = v80;
  v70 = *(v79 + 48);
  if (v70(v67, 1, v80) == 1)
  {
    if (v70(v67 + v66, 1, v69) == 1)
    {
      sub_20E04875C(v67, &qword_27C867FE8, &qword_20E33B0A0);
LABEL_42:
      v75 = v40[10];
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v49 = sub_20E322850();
      return v49 & 1;
    }

    goto LABEL_40;
  }

  v71 = v77;
  sub_20E0486F4(v33, v77, &qword_27C867FE8, &qword_20E33B0A0);
  if (v70(&v33[v66], 1, v69) == 1)
  {
    sub_20E195C24(v71, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
LABEL_40:
    v36 = &qword_27C867FF0;
    v37 = &qword_20E33B0A8;
    goto LABEL_7;
  }

  v72 = &v33[v66];
  v73 = v76;
  sub_20E195B54(v72, v76, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
  v74 = sub_20E180718(v71, v73, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
  sub_20E195C24(v73, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
  sub_20E195C24(v71, type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType);
  sub_20E04875C(v33, &qword_27C867FE8, &qword_20E33B0A0);
  if (v74)
  {
    goto LABEL_42;
  }

LABEL_16:
  v49 = 0;
  return v49 & 1;
}

uint64_t _s23LighthouseDataProcessor19TranscriptProtoPlanV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_20E322D60() & 1) == 0 || (sub_20E147778(*(a1 + 32), *(a2 + 32), type metadata accessor for TranscriptProtoProgramStatement, type metadata accessor for TranscriptProtoProgramStatement, _s23LighthouseDataProcessor31TranscriptProtoProgramStatementV2eeoiySbAC_ACtFZ_0, type metadata accessor for TranscriptProtoProgramStatement) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6)
  {
    if (!v7 || (*(a1 + 40) != *(a2 + 40) || v6 != v7) && (sub_20E322D60() & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    v8 = *(a1 + 56);
    v9 = *(a2 + 56);
    if (v8 == 6)
    {
      if (v9 != 6)
      {
        return 0;
      }
    }

    else if (v9 == 6 || qword_20E33B8D8[v8] != qword_20E33B8D8[v9])
    {
      return 0;
    }

    v10 = *(type metadata accessor for TranscriptProtoPlan(0) + 36);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  if (!v7)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor062TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestF4ToolV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v4 = *(type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0) + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoClientActionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
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
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0 || (sub_20E15D148(a1[2], a2[2]) & 1) == 0)
  {
    goto LABEL_28;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18 || (a1[4] != a2[4] || v17 != v18) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v18)
  {
    goto LABEL_28;
  }

  v19 = a1[7];
  v20 = a2[7];
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_19;
    }

LABEL_28:
    v28 = 0;
    return v28 & 1;
  }

  if (!v20 || (a1[6] != a2[6] || v19 != v20) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_19:
  v31 = type metadata accessor for TranscriptProtoClientAction(0);
  v21 = *(v31 + 36);
  v22 = *(v13 + 48);
  sub_20E0486F4(a1 + v21, v16, &qword_27C8639D0, &unk_20E33C230);
  v23 = a2 + v21;
  v24 = v22;
  sub_20E0486F4(v23, &v16[v22], &qword_27C8639D0, &unk_20E33C230);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v24], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_20E0486F4(v16, v12, &qword_27C8639D0, &unk_20E33C230);
  if (v25(&v16[v24], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_24:
    sub_20E04875C(v16, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_28;
  }

  sub_20E195B54(&v16[v24], v8, type metadata accessor for TranscriptProtoStatementID);
  v26 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
  if ((v26 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_26:
  if ((sub_20E15D764(a1[3], a2[3]) & 1) == 0)
  {
    goto LABEL_28;
  }

  v27 = *(v31 + 40);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v28 = sub_20E322850();
  return v28 & 1;
}

uint64_t _s23LighthouseDataProcessor058TranscriptProtoExecutionPreconditionEvaluatorRequestActionI0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C866228, &qword_20E33C480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F08, &qword_20E33AFD8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C866228, &qword_20E33C480);
  sub_20E0486F4(a2, &v17[v18], &qword_27C866228, &qword_20E33C480);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C866228, &qword_20E33C480);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequest(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C866228, &qword_20E33C480);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C867F08, &qword_20E33AFD8);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
  v21 = _s23LighthouseDataProcessor058TranscriptProtoExecutionPreconditionEvaluatorRequestActionI4EnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoExecutionPreconditionEvaluatorRequestActionRequestEnum);
  sub_20E04875C(v17, &qword_27C866228, &qword_20E33C480);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_20E180718(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t (*a3)(void))
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != 2)
  {
    if (v4 == 2 || ((v4 ^ v3) & 1) != 0)
    {
      return 0;
    }

LABEL_6:
    v5 = *(a3(0) + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  if (v4 == 2)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor047TranscriptProtoSystemRequirementUserLocationForF7RequestV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 16);
  if (a1[2])
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (a1[1] != a2[1])
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 32);
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (*(a1 + 3) != *(a2 + 3))
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

LABEL_15:
  v5 = *(type metadata accessor for TranscriptProtoSystemRequirementUserLocationForSystemRequest(0) + 28);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor041TranscriptProtoUpdateParameterExpression_fG0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_20E322D60() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_11;
  }

  v30 = v8;
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v17 = updated[6];
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C8639D0, &unk_20E33C230);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_20E0486F4(v16, v12, &qword_27C8639D0, &unk_20E33C230);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v22 = v30;
      sub_20E195B54(&v16[v18], v30, type metadata accessor for TranscriptProtoStatementID);
      v23 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v22);
      sub_20E195C24(v22, type metadata accessor for TranscriptProtoStatementID);
      sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
      sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
      if ((v23 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_10:
    sub_20E04875C(v16, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_11;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
LABEL_14:
  v24 = updated[7];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
  if (v26)
  {
    if (v28)
    {
LABEL_20:
      v29 = updated[8];
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
      goto LABEL_20;
    }
  }

LABEL_11:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor039TranscriptProtoFollowUpActionExecutableh4LinkH0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20E322D60() & 1) == 0 || (sub_20E15F7B0(a1[2], a1[3], a2[2], a2[3]) & 1) == 0 || a1[4] != a2[4])
  {
    return 0;
  }

  v5 = *(type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0) + 28);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor039TranscriptProtoFollowUpActionExecutableH0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868500, &qword_20E33B538);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868508, &qword_20E33B540);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C868500, &qword_20E33B538);
  sub_20E0486F4(a2, &v17[v18], &qword_27C868500, &qword_20E33B538);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C868500, &qword_20E33B538);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C868500, &qword_20E33B538);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868508, &qword_20E33B540);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  v21 = _s23LighthouseDataProcessor039TranscriptProtoFollowUpActionExecutableH4EnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionEnum);
  sub_20E04875C(v17, &qword_27C868500, &qword_20E33B538);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor035TranscriptProtoRequestContentSpeechG0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TranscriptProtoStatementID(0);
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = *(v80 + 64);
  MEMORY[0x28223BE20](v4);
  v77 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v71 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v10 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v82 = &v71 - v11;
  v12 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = (&v71 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868718, &qword_20E33B710);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = (&v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v26 = (&v71 - v25);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868720, &qword_20E33B718);
  v27 = *(*(v83 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v83);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v71 - v31;
  v33 = *a1;
  v34 = a1[1];
  v84 = a1;
  if ((v33 != *a2 || v34 != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_16;
  }

  v74 = v24;
  v75 = v30;
  v73 = v17;
  v76 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v35 = *(v76 + 20);
  v36 = *(v83 + 48);
  sub_20E0486F4(v84 + v35, v32, &qword_27C868718, &qword_20E33B710);
  v37 = a2 + v35;
  v38 = a2;
  sub_20E0486F4(v37, &v32[v36], &qword_27C868718, &qword_20E33B710);
  v39 = *(v13 + 48);
  v40 = v12;
  if (v39(v32, 1, v12) == 1)
  {
    if (v39(&v32[v36], 1, v12) != 1)
    {
LABEL_13:
      v52 = &qword_27C868720;
      v53 = &qword_20E33B718;
LABEL_14:
      v54 = v32;
LABEL_15:
      sub_20E04875C(v54, v52, v53);
      goto LABEL_16;
    }

    v72 = v39;
    sub_20E04875C(v32, &qword_27C868718, &qword_20E33B710);
  }

  else
  {
    sub_20E0486F4(v32, v26, &qword_27C868718, &qword_20E33B710);
    if (v39(&v32[v36], 1, v12) == 1)
    {
      v51 = v26;
LABEL_12:
      sub_20E195C24(v51, type metadata accessor for TranscriptProtoSpeechPackage);
      goto LABEL_13;
    }

    sub_20E195B54(&v32[v36], v19, type metadata accessor for TranscriptProtoSpeechPackage);
    if ((sub_20E157F10(*v26, *v19) & 1) == 0)
    {
      sub_20E195C24(v19, type metadata accessor for TranscriptProtoSpeechPackage);
      v61 = v26;
LABEL_25:
      sub_20E195C24(v61, type metadata accessor for TranscriptProtoSpeechPackage);
      v52 = &qword_27C868718;
      v53 = &qword_20E33B710;
      goto LABEL_14;
    }

    v72 = v39;
    v57 = *(v12 + 20);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    LOBYTE(v57) = sub_20E322850();
    sub_20E195C24(v19, type metadata accessor for TranscriptProtoSpeechPackage);
    sub_20E195C24(v26, type metadata accessor for TranscriptProtoSpeechPackage);
    sub_20E04875C(v32, &qword_27C868718, &qword_20E33B710);
    if ((v57 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v41 = v76;
  v42 = *(v76 + 24);
  v43 = *(v79 + 48);
  v44 = v82;
  sub_20E0486F4(v84 + v42, v82, &qword_27C8639D0, &unk_20E33C230);
  v45 = v38 + v42;
  v46 = v44;
  sub_20E0486F4(v45, v44 + v43, &qword_27C8639D0, &unk_20E33C230);
  v47 = v81;
  v48 = *(v80 + 48);
  if (v48(v44, 1, v81) == 1)
  {
    v49 = v48(v44 + v43, 1, v47);
    v50 = v74;
    v32 = v75;
    if (v49 == 1)
    {
      sub_20E04875C(v46, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_27;
    }

LABEL_23:
    v52 = &qword_27C867F30;
    v53 = &qword_20E33B000;
    v54 = v46;
    goto LABEL_15;
  }

  v58 = v78;
  sub_20E0486F4(v44, v78, &qword_27C8639D0, &unk_20E33C230);
  v59 = v48(v44 + v43, 1, v47);
  v60 = v74;
  v32 = v75;
  if (v59 == 1)
  {
    sub_20E195C24(v58, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_23;
  }

  v62 = v46 + v43;
  v63 = v77;
  sub_20E195B54(v62, v77, type metadata accessor for TranscriptProtoStatementID);
  v64 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v58, v63);
  sub_20E195C24(v63, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v58, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v46, &qword_27C8639D0, &unk_20E33C230);
  v50 = v60;
  v41 = v76;
  if ((v64 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_27:
  v65 = *(v41 + 28);
  v66 = *(v83 + 48);
  sub_20E0486F4(v84 + v65, v32, &qword_27C868718, &qword_20E33B710);
  sub_20E0486F4(v38 + v65, &v32[v66], &qword_27C868718, &qword_20E33B710);
  v67 = v72;
  if (v72(v32, 1, v40) == 1)
  {
    if (v67(&v32[v66], 1, v40) == 1)
    {
      sub_20E04875C(v32, &qword_27C868718, &qword_20E33B710);
LABEL_30:
      v68 = *(v41 + 32);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v55 = sub_20E322850();
      return v55 & 1;
    }

    goto LABEL_13;
  }

  sub_20E0486F4(v32, v50, &qword_27C868718, &qword_20E33B710);
  if (v67(&v32[v66], 1, v40) == 1)
  {
    v51 = v50;
    goto LABEL_12;
  }

  v69 = v73;
  sub_20E195B54(&v32[v66], v73, type metadata accessor for TranscriptProtoSpeechPackage);
  if ((sub_20E157F10(*v50, *v69) & 1) == 0)
  {
    sub_20E195C24(v69, type metadata accessor for TranscriptProtoSpeechPackage);
    v61 = v50;
    goto LABEL_25;
  }

  v70 = *(v40 + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  LOBYTE(v70) = sub_20E322850();
  sub_20E195C24(v69, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_20E195C24(v50, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_20E04875C(v32, &qword_27C868718, &qword_20E33B710);
  if (v70)
  {
    goto LABEL_30;
  }

LABEL_16:
  v55 = 0;
  return v55 & 1;
}

uint64_t _s23LighthouseDataProcessor033TranscriptProtoRequestContentTextG0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
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
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v17 = *(v26 + 20);
  v18 = *(v13 + 48);
  sub_20E0486F4(a1 + v17, v16, &qword_27C8639D0, &unk_20E33C230);
  sub_20E0486F4(a2 + v17, &v16[v18], &qword_27C8639D0, &unk_20E33C230);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
LABEL_12:
      v23 = *(v26 + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_20E0486F4(v16, v12, &qword_27C8639D0, &unk_20E33C230);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
LABEL_9:
    sub_20E04875C(v16, &qword_27C867F30, &qword_20E33B000);
    goto LABEL_10;
  }

  v21 = v25;
  sub_20E195B54(&v16[v18], v25, type metadata accessor for TranscriptProtoStatementID);
  v22 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v12, v21);
  sub_20E195C24(v21, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v16, &qword_27C8639D0, &unk_20E33C230);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor028TranscriptProtoActionFailureG0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionFailureFailureEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C865BD0, &qword_20E3263A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868548, &qword_20E33B570);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C865BD0, &qword_20E3263A8);
  sub_20E0486F4(a2, &v17[v18], &qword_27C865BD0, &qword_20E3263A8);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C865BD0, &qword_20E3263A8);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoActionFailureFailure(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C865BD0, &qword_20E3263A8);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C868548, &qword_20E33B570);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  v21 = _s23LighthouseDataProcessor028TranscriptProtoActionFailureG4EnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoActionFailureFailureEnum);
  sub_20E04875C(v17, &qword_27C865BD0, &qword_20E3263A8);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 16);
    v3 = *(a2 + 16);
    if (v2)
    {
      if (v3)
      {
        if (*(a1 + 8) == *(a2 + 8) && v2 == v3)
        {
          goto LABEL_9;
        }

        v5 = *(a1 + 8);
        if (sub_20E322D60())
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v3)
    {
LABEL_9:
      v6 = *(type metadata accessor for TranscriptProtoStatementID(0) + 24);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      return sub_20E322850() & 1;
    }
  }

  return 0;
}

uint64_t _s23LighthouseDataProcessor21TranscriptProtoActionV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v68 = a2;
  v3 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  MEMORY[0x28223BE20](v3);
  v60 = (&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v61 = (&v59 - v8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868040, &qword_20E33B0E8);
  v9 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v65 = &v59 - v10;
  v11 = type metadata accessor for TranscriptProtoStatementID(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639D0, &unk_20E33C230);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F30, &qword_20E33B000);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v59 - v23;
  v66 = type metadata accessor for TranscriptProtoAction(0);
  v67 = a1;
  v25 = *(v66 + 24);
  v26 = *(v21 + 56);
  sub_20E0486F4(&a1[v25], v24, &qword_27C8639D0, &unk_20E33C230);
  v27 = v68;
  sub_20E0486F4(&v68[v25], &v24[v26], &qword_27C8639D0, &unk_20E33C230);
  v28 = *(v12 + 48);
  if (v28(v24, 1, v11) == 1)
  {
    if (v28(&v24[v26], 1, v11) == 1)
    {
      sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
      goto LABEL_11;
    }

LABEL_6:
    v29 = &qword_27C867F30;
    v30 = &qword_20E33B000;
    v31 = v24;
LABEL_7:
    sub_20E04875C(v31, v29, v30);
    goto LABEL_8;
  }

  sub_20E0486F4(v24, v19, &qword_27C8639D0, &unk_20E33C230);
  if (v28(&v24[v26], 1, v11) == 1)
  {
    sub_20E195C24(v19, type metadata accessor for TranscriptProtoStatementID);
    goto LABEL_6;
  }

  sub_20E195B54(&v24[v26], v15, type metadata accessor for TranscriptProtoStatementID);
  v34 = _s23LighthouseDataProcessor26TranscriptProtoStatementIDV2eeoiySbAC_ACtFZ_0(v19, v15);
  sub_20E195C24(v15, type metadata accessor for TranscriptProtoStatementID);
  sub_20E195C24(v19, type metadata accessor for TranscriptProtoStatementID);
  sub_20E04875C(v24, &qword_27C8639D0, &unk_20E33C230);
  if ((v34 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v36 = v66;
  v35 = v67;
  v37 = *(v66 + 28);
  v38 = &v67[v37];
  v39 = *&v67[v37 + 8];
  v40 = &v27[v37];
  v41 = *(v40 + 1);
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v41)
  {
    goto LABEL_8;
  }

  if (*v35 != *v27 || (sub_20E15DDF8(*(v35 + 1), *(v27 + 1)) & 1) == 0)
  {
    goto LABEL_8;
  }

  v42 = v36[8];
  v43 = &v35[v42];
  v44 = *&v35[v42 + 8];
  v45 = &v27[v42];
  v46 = *(v45 + 1);
  if (v44)
  {
    if (!v46 || (*v43 != *v45 || v44 != v46) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v46)
  {
    goto LABEL_8;
  }

  v47 = v36[9];
  v48 = *(v62 + 48);
  v49 = v65;
  sub_20E0486F4(&v35[v47], v65, &qword_27C8639C8, &unk_20E323870);
  v50 = &v27[v47];
  v51 = v49;
  sub_20E0486F4(v50, v49 + v48, &qword_27C8639C8, &unk_20E323870);
  v52 = v64;
  v53 = *(v63 + 48);
  if (v53(v49, 1, v64) == 1)
  {
    if (v53(v49 + v48, 1, v52) == 1)
    {
      sub_20E04875C(v49, &qword_27C8639C8, &unk_20E323870);
LABEL_34:
      v58 = v36[10];
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v32 = sub_20E322850();
      return v32 & 1;
    }

    goto LABEL_32;
  }

  v54 = v61;
  sub_20E0486F4(v51, v61, &qword_27C8639C8, &unk_20E323870);
  if (v53(v51 + v48, 1, v52) == 1)
  {
    sub_20E195C24(v54, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
LABEL_32:
    v29 = &qword_27C868040;
    v30 = &qword_20E33B0E8;
    v31 = v51;
    goto LABEL_7;
  }

  v55 = v51 + v48;
  v56 = v60;
  sub_20E195B54(v55, v60, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  v57 = _s23LighthouseDataProcessor35TranscriptProtoGlobalToolIdentifierV2eeoiySbAC_ACtFZ_0(v54, v56);
  sub_20E195C24(v56, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E195C24(v54, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_20E04875C(v51, &qword_27C8639C8, &unk_20E323870);
  if (v57)
  {
    goto LABEL_34;
  }

LABEL_8:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_20E1828EC(void *a1, void *a2, uint64_t (*a3)(void))
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_20E322D60() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3(0) + 28);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

uint64_t _s23LighthouseDataProcessor27TranscriptProtoSessionStartV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoGenderSettings(0);
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  MEMORY[0x28223BE20](v4);
  v69 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868790, &unk_20E33C1F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v69 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868798, &qword_20E33B760);
  v10 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v75 = &v69 - v11;
  v12 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v12);
  v71 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687A0, &unk_20E3461A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v76 = (&v69 - v17);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687A8, &qword_20E33B768);
  v18 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v80 = &v69 - v19;
  v20 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687B0, &unk_20E33C1E0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = (&v69 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687B8, &qword_20E33B770);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v69 - v32;
  v34 = *(v31 + 56);
  v81 = a1;
  sub_20E0486F4(a1, &v69 - v32, &qword_27C8687B0, &unk_20E33C1E0);
  v82 = a2;
  sub_20E0486F4(a2, &v33[v34], &qword_27C8687B0, &unk_20E33C1E0);
  v35 = *(v21 + 48);
  if (v35(v33, 1, v20) == 1)
  {
    if (v35(&v33[v34], 1, v20) == 1)
    {
      sub_20E04875C(v33, &qword_27C8687B0, &unk_20E33C1E0);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &qword_27C8687B8;
    v37 = &qword_20E33B770;
    v38 = v33;
LABEL_30:
    sub_20E04875C(v38, v36, v37);
    goto LABEL_31;
  }

  sub_20E0486F4(v33, v28, &qword_27C8687B0, &unk_20E33C1E0);
  if (v35(&v33[v34], 1, v20) == 1)
  {
    sub_20E195C24(v28, type metadata accessor for TranscriptProtoLocaleSettings);
    goto LABEL_6;
  }

  sub_20E195B54(&v33[v34], v24, type metadata accessor for TranscriptProtoLocaleSettings);
  v39 = sub_20E1828EC(v28, v24, type metadata accessor for TranscriptProtoLocaleSettings);
  sub_20E195C24(v24, type metadata accessor for TranscriptProtoLocaleSettings);
  sub_20E195C24(v28, type metadata accessor for TranscriptProtoLocaleSettings);
  sub_20E04875C(v33, &qword_27C8687B0, &unk_20E33C1E0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_8:
  v40 = type metadata accessor for TranscriptProtoSessionStart(0);
  v41 = v40[5];
  v42 = *(v77 + 48);
  v44 = v80;
  v43 = v81;
  sub_20E0486F4(v81 + v41, v80, &qword_27C8687A0, &unk_20E3461A0);
  v45 = v82;
  sub_20E0486F4(v82 + v41, v44 + v42, &qword_27C8687A0, &unk_20E3461A0);
  v46 = v79;
  v47 = *(v78 + 48);
  if (v47(v44, 1, v79) == 1)
  {
    if (v47(v44 + v42, 1, v46) == 1)
    {
      sub_20E04875C(v44, &qword_27C8687A0, &unk_20E3461A0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v48 = v76;
  sub_20E0486F4(v44, v76, &qword_27C8687A0, &unk_20E3461A0);
  if (v47(v44 + v42, 1, v46) == 1)
  {
    sub_20E195C24(v48, type metadata accessor for TranscriptProtoDeviceDetails);
LABEL_13:
    v36 = &qword_27C8687A8;
    v37 = &qword_20E33B768;
    v38 = v44;
    goto LABEL_30;
  }

  v49 = v44 + v42;
  v50 = v71;
  sub_20E195B54(v49, v71, type metadata accessor for TranscriptProtoDeviceDetails);
  v51 = _s23LighthouseDataProcessor28TranscriptProtoDeviceDetailsV2eeoiySbAC_ACtFZ_0(v48, v50);
  sub_20E195C24(v50, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_20E195C24(v48, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_20E04875C(v44, &qword_27C8687A0, &unk_20E3461A0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  v52 = v40[6];
  v53 = *(v72 + 48);
  v54 = v75;
  sub_20E0486F4(v43 + v52, v75, &qword_27C868790, &unk_20E33C1F0);
  v55 = v45 + v52;
  v56 = v54;
  sub_20E0486F4(v55, v54 + v53, &qword_27C868790, &unk_20E33C1F0);
  v57 = v74;
  v58 = *(v73 + 48);
  if (v58(v54, 1, v74) != 1)
  {
    v62 = v70;
    sub_20E0486F4(v56, v70, &qword_27C868790, &unk_20E33C1F0);
    if (v58(v56 + v53, 1, v57) != 1)
    {
      v63 = v56 + v53;
      v64 = v69;
      sub_20E195B54(v63, v69, type metadata accessor for TranscriptProtoGenderSettings);
      if (*v62 == *v64 && v62[1] == v64[1])
      {
        v65 = *(v57 + 24);
        sub_20E3221C0();
        sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
        LOBYTE(v65) = sub_20E322850();
        sub_20E195C24(v64, type metadata accessor for TranscriptProtoGenderSettings);
        sub_20E195C24(v62, type metadata accessor for TranscriptProtoGenderSettings);
        sub_20E04875C(v56, &qword_27C868790, &unk_20E33C1F0);
        if ((v65 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_18;
      }

      sub_20E195C24(v64, type metadata accessor for TranscriptProtoGenderSettings);
      sub_20E195C24(v62, type metadata accessor for TranscriptProtoGenderSettings);
      v36 = &qword_27C868790;
      v37 = &unk_20E33C1F0;
      goto LABEL_29;
    }

    sub_20E195C24(v62, type metadata accessor for TranscriptProtoGenderSettings);
LABEL_23:
    v36 = &qword_27C868798;
    v37 = &qword_20E33B760;
LABEL_29:
    v38 = v56;
    goto LABEL_30;
  }

  if (v58(v54 + v53, 1, v57) != 1)
  {
    goto LABEL_23;
  }

  sub_20E04875C(v54, &qword_27C868790, &unk_20E33C1F0);
LABEL_18:
  v59 = v40[7];
  v60 = *(v43 + v59);
  v61 = *(v45 + v59);
  if (v60 == 2)
  {
    if (v61 == 2)
    {
LABEL_35:
      v68 = v40[8];
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v66 = sub_20E322850();
      return v66 & 1;
    }
  }

  else if (v61 != 2 && ((v60 ^ v61) & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_31:
  v66 = 0;
  return v66 & 1;
}

uint64_t _s23LighthouseDataProcessor22TranscriptProtoPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8687C0, &qword_20E33B778);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_20E0486F4(a1, &v24 - v16, &qword_27C863FC8, &unk_20E33C1D0);
  sub_20E0486F4(a2, &v17[v18], &qword_27C863FC8, &unk_20E33C1D0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_20E04875C(v17, &qword_27C863FC8, &unk_20E33C1D0);
LABEL_9:
      v22 = *(type metadata accessor for TranscriptProtoPayload(0) + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v20 = sub_20E322850();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_20E0486F4(v17, v12, &qword_27C863FC8, &unk_20E33C1D0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_20E195C24(v12, type metadata accessor for TranscriptProtoPayloadEnum);
LABEL_6:
    sub_20E04875C(v17, &qword_27C8687C0, &qword_20E33B778);
    goto LABEL_7;
  }

  sub_20E195B54(&v17[v18], v8, type metadata accessor for TranscriptProtoPayloadEnum);
  v21 = _s23LighthouseDataProcessor26TranscriptProtoPayloadEnumO2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_20E195C24(v8, type metadata accessor for TranscriptProtoPayloadEnum);
  sub_20E195C24(v12, type metadata accessor for TranscriptProtoPayloadEnum);
  sub_20E04875C(v17, &qword_27C863FC8, &unk_20E33C1D0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s23LighthouseDataProcessor20TranscriptProtoEventV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v104 = type metadata accessor for TranscriptProtoSpanID(0);
  v116 = *(v104 - 8);
  v4 = *(v116 + 64);
  MEMORY[0x28223BE20](v104);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688A0, &qword_20E33B858);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v101 = (&v96 - v9);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688A8, &qword_20E33B860);
  v10 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v12 = &v96 - v11;
  v13 = type metadata accessor for TranscriptProtoParticipantID(0);
  v108 = *(v13 - 8);
  v109 = v13;
  v14 = *(v108 + 64);
  MEMORY[0x28223BE20](v13);
  v102 = (&v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688B0, &unk_20E33C1C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v105 = (&v96 - v18);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688B8, &qword_20E33B868);
  v19 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v110 = &v96 - v20;
  v21 = type metadata accessor for TranscriptProtoTimepoint(0);
  v113 = *(v21 - 8);
  v114 = v21;
  v22 = *(v113 + 64);
  MEMORY[0x28223BE20](v21);
  v106 = (&v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C0, &qword_20E33B870);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v111 = (&v96 - v26);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C8, &qword_20E33B878);
  v27 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v115 = &v96 - v28;
  v29 = type metadata accessor for TranscriptProtoPayload(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v96 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688D0, &qword_20E33B880);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v96 - v40;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_20E322D60() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_21;
  }

  v42 = a1[12];
  v43 = a2[12];
  if (v42)
  {
    if (!v43 || (a1[11] != a2[11] || v42 != v43) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v43)
  {
    goto LABEL_21;
  }

  v97 = v6;
  v98 = v12;
  v99 = type metadata accessor for TranscriptProtoEvent(0);
  v100 = a2;
  v44 = *(v99 + 44);
  v45 = *(v38 + 48);
  sub_20E0486F4(a1 + v44, v41, &qword_27C863FC0, &unk_20E325F70);
  v46 = v100 + v44;
  v47 = v100;
  sub_20E0486F4(v46, &v41[v45], &qword_27C863FC0, &unk_20E325F70);
  v48 = *(v30 + 48);
  if (v48(v41, 1, v29) == 1)
  {
    if (v48(&v41[v45], 1, v29) == 1)
    {
      sub_20E04875C(v41, &qword_27C863FC0, &unk_20E325F70);
      goto LABEL_24;
    }

LABEL_19:
    v49 = &qword_27C8688D0;
    v50 = &qword_20E33B880;
    v51 = v41;
    goto LABEL_20;
  }

  sub_20E0486F4(v41, v37, &qword_27C863FC0, &unk_20E325F70);
  if (v48(&v41[v45], 1, v29) == 1)
  {
    sub_20E195C24(v37, type metadata accessor for TranscriptProtoPayload);
    goto LABEL_19;
  }

  sub_20E195B54(&v41[v45], v33, type metadata accessor for TranscriptProtoPayload);
  v54 = _s23LighthouseDataProcessor22TranscriptProtoPayloadV2eeoiySbAC_ACtFZ_0(v37, v33);
  sub_20E195C24(v33, type metadata accessor for TranscriptProtoPayload);
  sub_20E195C24(v37, type metadata accessor for TranscriptProtoPayload);
  sub_20E04875C(v41, &qword_27C863FC0, &unk_20E325F70);
  if ((v54 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  if ((a1[4] != v47[4] || a1[5] != v47[5]) && (sub_20E322D60() & 1) == 0 || (a1[6] != v47[6] || a1[7] != v47[7]) && (sub_20E322D60() & 1) == 0 || (a1[8] != v47[8] || a1[9] != v47[9]) && (sub_20E322D60() & 1) == 0)
  {
    goto LABEL_21;
  }

  v55 = v99;
  v56 = *(v99 + 48);
  v57 = (a1 + v56);
  v58 = *(a1 + v56 + 8);
  v59 = (v47 + v56);
  v60 = v59[1];
  if (v58)
  {
    v62 = v97;
    v61 = v98;
    v63 = v116;
    if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_20E322D60() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v62 = v97;
    v61 = v98;
    v63 = v116;
    if (v60)
    {
      goto LABEL_21;
    }
  }

  v64 = v55[13];
  v65 = *(v112 + 48);
  v66 = v115;
  sub_20E0486F4(a1 + v64, v115, &qword_27C8688C0, &qword_20E33B870);
  sub_20E0486F4(v100 + v64, v66 + v65, &qword_27C8688C0, &qword_20E33B870);
  v67 = v114;
  v68 = *(v113 + 48);
  if (v68(v66, 1, v114) == 1)
  {
    if (v68(v66 + v65, 1, v67) == 1)
    {
      sub_20E04875C(v66, &qword_27C8688C0, &qword_20E33B870);
      goto LABEL_47;
    }

LABEL_45:
    v49 = &qword_27C8688C8;
    v50 = &qword_20E33B878;
    v51 = v66;
    goto LABEL_20;
  }

  v69 = v61;
  v70 = v62;
  v71 = v111;
  sub_20E0486F4(v66, v111, &qword_27C8688C0, &qword_20E33B870);
  if (v68(v66 + v65, 1, v67) == 1)
  {
    sub_20E195C24(v71, type metadata accessor for TranscriptProtoTimepoint);
    goto LABEL_45;
  }

  v72 = v106;
  sub_20E195B54(v66 + v65, v106, type metadata accessor for TranscriptProtoTimepoint);
  v73 = _s23LighthouseDataProcessor24TranscriptProtoTimepointV2eeoiySbAC_ACtFZ_0(v71, v72);
  sub_20E195C24(v72, type metadata accessor for TranscriptProtoTimepoint);
  sub_20E195C24(v71, type metadata accessor for TranscriptProtoTimepoint);
  sub_20E04875C(v66, &qword_27C8688C0, &qword_20E33B870);
  v62 = v70;
  v61 = v69;
  v63 = v116;
  if ((v73 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_47:
  v74 = v55[14];
  v75 = *(v107 + 48);
  v76 = v110;
  sub_20E0486F4(a1 + v74, v110, &qword_27C8688B0, &unk_20E33C1C0);
  v77 = v76;
  sub_20E0486F4(v100 + v74, v76 + v75, &qword_27C8688B0, &unk_20E33C1C0);
  v78 = v109;
  v79 = *(v108 + 48);
  if (v79(v76, 1, v109) == 1)
  {
    if (v79(v76 + v75, 1, v78) == 1)
    {
      sub_20E04875C(v76, &qword_27C8688B0, &unk_20E33C1C0);
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  v80 = v105;
  sub_20E0486F4(v77, v105, &qword_27C8688B0, &unk_20E33C1C0);
  if (v79(v77 + v75, 1, v78) == 1)
  {
    sub_20E195C24(v80, type metadata accessor for TranscriptProtoParticipantID);
LABEL_52:
    v49 = &qword_27C8688B8;
    v50 = &qword_20E33B868;
LABEL_53:
    v51 = v77;
    goto LABEL_20;
  }

  v81 = v77 + v75;
  v82 = v102;
  sub_20E195B54(v81, v102, type metadata accessor for TranscriptProtoParticipantID);
  if ((*v80 != *v82 || v80[1] != v82[1]) && (sub_20E322D60() & 1) == 0)
  {
    sub_20E195C24(v82, type metadata accessor for TranscriptProtoParticipantID);
    sub_20E195C24(v80, type metadata accessor for TranscriptProtoParticipantID);
    v49 = &qword_27C8688B0;
    v50 = &unk_20E33C1C0;
    goto LABEL_53;
  }

  v83 = *(v78 + 20);
  sub_20E3221C0();
  sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
  v84 = sub_20E322850();
  sub_20E195C24(v82, type metadata accessor for TranscriptProtoParticipantID);
  sub_20E195C24(v80, type metadata accessor for TranscriptProtoParticipantID);
  sub_20E04875C(v77, &qword_27C8688B0, &unk_20E33C1C0);
  v55 = v99;
  if ((v84 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_58:
  v85 = v55[15];
  v86 = *(v103 + 48);
  sub_20E0486F4(a1 + v85, v61, &qword_27C8688A0, &qword_20E33B858);
  v87 = v100 + v85;
  v88 = v100;
  sub_20E0486F4(v87, v61 + v86, &qword_27C8688A0, &qword_20E33B858);
  v89 = *(v63 + 48);
  v90 = v104;
  if (v89(v61, 1, v104) != 1)
  {
    v92 = v90;
    v93 = v101;
    sub_20E0486F4(v61, v101, &qword_27C8688A0, &qword_20E33B858);
    if (v89(v61 + v86, 1, v92) == 1)
    {
      sub_20E195C24(v93, type metadata accessor for TranscriptProtoSpanID);
      goto LABEL_65;
    }

    sub_20E195B54(v61 + v86, v62, type metadata accessor for TranscriptProtoSpanID);
    if (*v93 == *v62)
    {
      v94 = *(v104 + 20);
      sub_20E3221C0();
      sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
      v88 = v100;
      v95 = sub_20E322850();
      sub_20E195C24(v62, type metadata accessor for TranscriptProtoSpanID);
      sub_20E195C24(v93, type metadata accessor for TranscriptProtoSpanID);
      sub_20E04875C(v61, &qword_27C8688A0, &qword_20E33B858);
      if ((v95 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_61;
    }

    sub_20E195C24(v62, type metadata accessor for TranscriptProtoSpanID);
    sub_20E195C24(v93, type metadata accessor for TranscriptProtoSpanID);
    v49 = &qword_27C8688A0;
    v50 = &qword_20E33B858;
    v51 = v61;
LABEL_20:
    sub_20E04875C(v51, v49, v50);
    goto LABEL_21;
  }

  if (v89(v61 + v86, 1, v90) != 1)
  {
LABEL_65:
    v49 = &qword_27C8688A8;
    v50 = &qword_20E33B860;
    v51 = v61;
    goto LABEL_20;
  }

  sub_20E04875C(v61, &qword_27C8688A0, &qword_20E33B858);
LABEL_61:
  if (sub_20E15DCC4(a1[10], v88[10]))
  {
    v91 = v55[16];
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    v52 = sub_20E322850();
    return v52 & 1;
  }

LABEL_21:
  v52 = 0;
  return v52 & 1;
}

uint64_t _s23LighthouseDataProcessor015TranscriptProtoD0V2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
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

  if (sub_20E147778(a1[2], a2[2], type metadata accessor for TranscriptProtoEvent, type metadata accessor for TranscriptProtoEvent, _s23LighthouseDataProcessor20TranscriptProtoEventV2eeoiySbAC_ACtFZ_0, type metadata accessor for TranscriptProtoEvent))
  {
    v8 = *(type metadata accessor for TranscriptProtoTranscript(0) + 28);
    sub_20E3221C0();
    sub_20E195B0C(&qword_27C865988, MEMORY[0x277D216C8]);
    return sub_20E322850() & 1;
  }

  return 0;
}

unint64_t sub_20E1846E4()
{
  result = qword_27C865AD8;
  if (!qword_27C865AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865AD8);
  }

  return result;
}

unint64_t sub_20E184738()
{
  result = qword_27C865B48;
  if (!qword_27C865B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865B48);
  }

  return result;
}

unint64_t sub_20E18478C()
{
  result = qword_27C865C58;
  if (!qword_27C865C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865C58);
  }

  return result;
}

unint64_t sub_20E1847E0()
{
  result = qword_27C865D00;
  if (!qword_27C865D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865D00);
  }

  return result;
}

unint64_t sub_20E184834()
{
  result = qword_27C865F20;
  if (!qword_27C865F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865F20);
  }

  return result;
}

unint64_t sub_20E184888()
{
  result = qword_27C865F78;
  if (!qword_27C865F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865F78);
  }

  return result;
}

unint64_t sub_20E1848DC()
{
  result = qword_27C865FA8;
  if (!qword_27C865FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865FA8);
  }

  return result;
}

unint64_t sub_20E184930()
{
  result = qword_27C865FB8;
  if (!qword_27C865FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865FB8);
  }

  return result;
}

unint64_t sub_20E184984()
{
  result = qword_27C865FC8;
  if (!qword_27C865FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865FC8);
  }

  return result;
}

unint64_t sub_20E1849D8()
{
  result = qword_27C865FF0;
  if (!qword_27C865FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C865FF0);
  }

  return result;
}

unint64_t sub_20E184A2C()
{
  result = qword_27C866150;
  if (!qword_27C866150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866150);
  }

  return result;
}

unint64_t sub_20E184A80()
{
  result = qword_27C866178;
  if (!qword_27C866178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866178);
  }

  return result;
}

unint64_t sub_20E184AD8()
{
  result = qword_27C866258;
  if (!qword_27C866258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866258);
  }

  return result;
}

unint64_t sub_20E184B30()
{
  result = qword_27C866260;
  if (!qword_27C866260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866260);
  }

  return result;
}

unint64_t sub_20E184B88()
{
  result = qword_27C866268;
  if (!qword_27C866268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866268);
  }

  return result;
}

unint64_t sub_20E184BE0()
{
  result = qword_27C866270;
  if (!qword_27C866270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866270);
  }

  return result;
}

unint64_t sub_20E184C38()
{
  result = qword_27C866278;
  if (!qword_27C866278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866278);
  }

  return result;
}

unint64_t sub_20E184C90()
{
  result = qword_27C866280;
  if (!qword_27C866280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866280);
  }

  return result;
}

unint64_t sub_20E184CE8()
{
  result = qword_27C866288;
  if (!qword_27C866288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866288);
  }

  return result;
}

unint64_t sub_20E184D40()
{
  result = qword_27C866290;
  if (!qword_27C866290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866290);
  }

  return result;
}

unint64_t sub_20E184D98()
{
  result = qword_27C866298;
  if (!qword_27C866298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866298);
  }

  return result;
}

unint64_t sub_20E184DF0()
{
  result = qword_27C8662A0;
  if (!qword_27C8662A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662A0);
  }

  return result;
}

unint64_t sub_20E184E48()
{
  result = qword_27C8662A8;
  if (!qword_27C8662A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662A8);
  }

  return result;
}

unint64_t sub_20E184EA0()
{
  result = qword_27C8662B0;
  if (!qword_27C8662B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662B0);
  }

  return result;
}

unint64_t sub_20E184EF8()
{
  result = qword_27C8662B8;
  if (!qword_27C8662B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662B8);
  }

  return result;
}

unint64_t sub_20E184F50()
{
  result = qword_27C8662C0;
  if (!qword_27C8662C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662C0);
  }

  return result;
}

unint64_t sub_20E184FA8()
{
  result = qword_27C8662C8;
  if (!qword_27C8662C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662C8);
  }

  return result;
}

unint64_t sub_20E185000()
{
  result = qword_27C8662D0;
  if (!qword_27C8662D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662D0);
  }

  return result;
}

unint64_t sub_20E185058()
{
  result = qword_27C8662D8;
  if (!qword_27C8662D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662D8);
  }

  return result;
}

unint64_t sub_20E1850B0()
{
  result = qword_27C8662E0;
  if (!qword_27C8662E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662E0);
  }

  return result;
}

unint64_t sub_20E185108()
{
  result = qword_27C8662E8;
  if (!qword_27C8662E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662E8);
  }

  return result;
}

unint64_t sub_20E185160()
{
  result = qword_27C8662F0;
  if (!qword_27C8662F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662F0);
  }

  return result;
}

unint64_t sub_20E1851B8()
{
  result = qword_27C8662F8;
  if (!qword_27C8662F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8662F8);
  }

  return result;
}

unint64_t sub_20E185210()
{
  result = qword_27C866300;
  if (!qword_27C866300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866300);
  }

  return result;
}

unint64_t sub_20E185268()
{
  result = qword_27C866308;
  if (!qword_27C866308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866308);
  }

  return result;
}

unint64_t sub_20E1852C0()
{
  result = qword_27C866310;
  if (!qword_27C866310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866310);
  }

  return result;
}

unint64_t sub_20E185318()
{
  result = qword_27C866318;
  if (!qword_27C866318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866318);
  }

  return result;
}

unint64_t sub_20E185370()
{
  result = qword_27C866320;
  if (!qword_27C866320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866320);
  }

  return result;
}

unint64_t sub_20E188AE8()
{
  result = qword_27C8666F8;
  if (!qword_27C8666F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8666F8);
  }

  return result;
}

unint64_t sub_20E188B40()
{
  result = qword_27C866700;
  if (!qword_27C866700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C866700);
  }

  return result;
}

unint64_t sub_20E18B0B8()
{
  result = qword_27C8669E0;
  if (!qword_27C8669E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8669E0);
  }

  return result;
}

unint64_t sub_20E18B110()
{
  result = qword_27C8669E8;
  if (!qword_27C8669E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8669E8);
  }

  return result;
}

uint64_t sub_20E195904(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_20E19591C();
  }

  return result;
}

uint64_t sub_20E195924(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_20E19593C();
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_20E1959A8()
{
  result = qword_27C868330;
  if (!qword_27C868330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868330);
  }

  return result;
}

unint64_t sub_20E1959FC()
{
  result = qword_27C868468;
  if (!qword_27C868468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868468);
  }

  return result;
}

unint64_t sub_20E195A50()
{
  result = qword_27C8685F8;
  if (!qword_27C8685F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8685F8);
  }

  return result;
}

uint64_t sub_20E195AA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20E195B0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20E195B54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E195BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E195C24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E196654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868650, &qword_20E33B660);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E1967B0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20E196820(v5);
    return 0;
  }

  else
  {
    sub_20E196888(v5, v10);
    v12 = *v10;
    sub_20E1968EC(v10);
    return dword_20E33B90C[v12];
  }
}

uint64_t sub_20E1967B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868650, &qword_20E33B660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E196820(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868650, &qword_20E33B660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E196888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E1968EC(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E196948(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v606 = a3;
  v607 = a4;
  v608 = a2;
  v572 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(0);
  v571 = *(v572 - 8);
  v5 = *(v571 + 64);
  v6 = MEMORY[0x28223BE20](v572);
  v544 = &v528 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v528 - v8;
  v10 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v569 = (&v528 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FB8, &unk_20E325F60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v565 = &v528 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v559 = &v528 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v558 = &v528 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA0, &unk_20E325F20);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v567 = &v528 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v561 = &v528 - v25;
  v562 = type metadata accessor for TranscriptProtoStatementResult(0);
  v26 = *(*(v562 - 8) + 64);
  MEMORY[0x28223BE20](v562);
  v566 = &v528 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TranscriptProtoClientAction(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v563 = (&v528 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8639C8, &unk_20E323870);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v555 = (&v528 - v33);
  v554 = type metadata accessor for TranscriptProtoAction(0);
  v34 = *(*(v554 - 8) + 64);
  MEMORY[0x28223BE20](v554);
  v564 = (&v528 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688E8, &unk_20E3573E0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v542 = &v528 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EC8, &unk_20E359E90);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v538 = &v528 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v528 - v43;
  v531 = type metadata accessor for TranscriptProtoExecutorError(0);
  v45 = *(*(v531 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v531);
  v539 = &v528 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v547 = &v528 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED0, &unk_20E33C2C0);
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v49 - 8);
  v537 = &v528 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v54 = &v528 - v53;
  v533 = type metadata accessor for TranscriptProtoPlannerError(0);
  v55 = *(*(v533 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v533);
  v540 = &v528 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v548 = &v528 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863ED8, &unk_20E33C2B0);
  v60 = *(*(v59 - 8) + 64);
  v61 = MEMORY[0x28223BE20](v59 - 8);
  v536 = &v528 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v552 = &v528 - v63;
  v532 = type metadata accessor for TranscriptProtoSessionCoordinatorError(0);
  v64 = *(*(v532 - 8) + 64);
  v65 = MEMORY[0x28223BE20](v532);
  v541 = &v528 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v545 = &v528 - v67;
  v535 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v534 = *(v535 - 8);
  v68 = *(v534 + 64);
  v69 = MEMORY[0x28223BE20](v535);
  v568 = &v528 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x28223BE20](v69);
  v530 = (&v528 - v72);
  v73 = MEMORY[0x28223BE20](v71);
  v529 = (&v528 - v74);
  MEMORY[0x28223BE20](v73);
  v551 = (&v528 - v75);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863EE0, &qword_20E325D18);
  v77 = *(*(v76 - 8) + 64);
  v78 = MEMORY[0x28223BE20](v76 - 8);
  v556 = &v528 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v78);
  v81 = &v528 - v80;
  v549 = type metadata accessor for TranscriptProtoSessionError(0);
  v82 = *(*(v549 - 8) + 64);
  v83 = MEMORY[0x28223BE20](v549);
  v557 = &v528 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83);
  v573 = &v528 - v85;
  v586 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v585 = *(v586 - 8);
  v86 = *(v585 + 64);
  v87 = MEMORY[0x28223BE20](v586);
  v575 = &v528 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v577 = &v528 - v89;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  v91 = *(*(v90 - 8) + 64);
  v92 = MEMORY[0x28223BE20](v90 - 8);
  v581 = &v528 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92);
  v576 = &v528 - v94;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v96 = *(*(v95 - 8) + 64);
  v97 = MEMORY[0x28223BE20](v95 - 8);
  v582 = &v528 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v574 = &v528 - v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688F0, &unk_20E33B920);
  v101 = *(*(v100 - 8) + 64);
  v102 = MEMORY[0x28223BE20](v100 - 8);
  v553 = &v528 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = MEMORY[0x28223BE20](v102);
  v550 = &v528 - v105;
  MEMORY[0x28223BE20](v104);
  v580 = &v528 - v106;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688F8, &unk_20E33C060);
  v108 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107 - 8);
  v593 = (&v528 - v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688C0, &qword_20E33B870);
  v111 = *(*(v110 - 8) + 64);
  v112 = MEMORY[0x28223BE20](v110 - 8);
  v592 = &v528 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v112);
  v598 = (&v528 - v114);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868778, &unk_20E33C000);
  v116 = *(*(v115 - 8) + 64);
  v117 = MEMORY[0x28223BE20](v115 - 8);
  v578 = &v528 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v117);
  v596 = (&v528 - v119);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863F30, &qword_20E325D90);
  v121 = *(*(v120 - 8) + 64);
  v122 = MEMORY[0x28223BE20](v120 - 8);
  v601 = &v528 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v122);
  v125 = &v528 - v124;
  v595 = sub_20E322010();
  v126 = *(v595 - 8);
  v127 = *(v126 + 64);
  v128 = MEMORY[0x28223BE20](v595);
  v591 = &v528 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v128);
  v599 = &v528 - v130;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8688B0, &unk_20E33C1C0);
  v132 = *(*(v131 - 8) + 64);
  v133 = MEMORY[0x28223BE20](v131 - 8);
  v579 = (&v528 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v133);
  v597 = (&v528 - v135);
  v594 = type metadata accessor for ParticipantInfo(0);
  v602 = *(v594 - 8);
  v136 = *(v602 + 64);
  MEMORY[0x28223BE20](v594);
  v600 = (&v528 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
  v603 = type metadata accessor for TranscriptProtoEvent(0);
  v138 = *(*(v603 - 8) + 64);
  MEMORY[0x28223BE20](v603);
  v140 = &v528 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E12B88 != -1)
  {
    swift_once();
  }

  v141 = sub_20E3227C0();
  v142 = __swift_project_value_buffer(v141, qword_280E12C48);
  sub_20E19B69C(a1, v140, type metadata accessor for TranscriptProtoEvent);
  v560 = v142;
  v143 = sub_20E3227B0();
  v144 = sub_20E322A40();
  v145 = os_log_type_enabled(v143, v144);
  v546 = v44;
  v543 = v54;
  v583 = v9;
  if (v145)
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v609 = v125;
    v148 = v81;
    v149 = a1;
    v150 = v126;
    v151 = v147;
    v611 = v147;
    *v146 = 136315138;
    v153 = *(v140 + 6);
    v152 = *(v140 + 7);

    sub_20E19B5D8(v140, type metadata accessor for TranscriptProtoEvent);
    v154 = sub_20E31B6C4(v153, v152, &v611);

    *(v146 + 4) = v154;
    _os_log_impl(&dword_20E031000, v143, v144, "Producing features from events for clientSessionID: %s", v146, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v151);
    v155 = v151;
    v126 = v150;
    a1 = v149;
    v81 = v148;
    v125 = v609;
    MEMORY[0x20F32CA80](v155, -1, -1);
    MEMORY[0x20F32CA80](v146, -1, -1);
  }

  else
  {

    sub_20E19B5D8(v140, type metadata accessor for TranscriptProtoEvent);
  }

  v156 = sub_20E1A4FBC(&v611, v606, v607);
  v158 = v157;
  v159 = type metadata accessor for SessionData(0);
  v587 = *(v159 - 8);
  v160 = v587[6];
  v609 = v159;
  v604 = v160;
  v605 = v587 + 6;
  v161 = (v160)(v158, 1);
  v570 = v81;
  v162 = v603;
  if (v161)
  {
    (v156)(&v611, 0);
    v163 = v602;
    goto LABEL_23;
  }

  v164 = v597;
  sub_20E0486F4(a1 + *(v603 + 56), v597, &qword_27C8688B0, &unk_20E33C1C0);
  v165 = type metadata accessor for TranscriptProtoParticipantID(0);
  if ((*(*(v165 - 8) + 48))(v164, 1, v165) == 1)
  {
    sub_20E04875C(v164, &qword_27C8688B0, &unk_20E33C1C0);
    v166 = 0;
    v167 = 0;
  }

  else
  {
    v166 = *v164;
    v167 = v164[1];

    sub_20E19B5D8(v164, type metadata accessor for TranscriptProtoParticipantID);
  }

  v168 = a1 + *(v162 + 52);
  v169 = v598;
  sub_20E0486F4(v168, v598, &qword_27C8688C0, &qword_20E33B870);
  v170 = type metadata accessor for TranscriptProtoTimepoint(0);
  if ((*(*(v170 - 8) + 48))(v169, 1, v170) == 1)
  {
    v171 = &qword_27C8688C0;
    v172 = &qword_20E33B870;
    goto LABEL_15;
  }

  v173 = v169 + *(v170 + 28);
  v174 = v169;
  v169 = v596;
  sub_20E0486F4(v173, v596, &qword_27C868778, &unk_20E33C000);
  sub_20E19B5D8(v174, type metadata accessor for TranscriptProtoTimepoint);
  v175 = sub_20E322150();
  v176 = *(v175 - 8);
  if ((*(v176 + 48))(v169, 1, v175) == 1)
  {
    v171 = &qword_27C868778;
    v172 = &unk_20E33C000;
LABEL_15:
    sub_20E04875C(v169, v171, v172);
    v177 = v595;
    v178 = v599;
    (*(v126 + 56))(v125, 1, 1, v595);
    sub_20E321F40();
    if ((*(v126 + 48))(v125, 1, v177) != 1)
    {
      sub_20E04875C(v125, &qword_27C863F30, &qword_20E325D90);
    }

    goto LABEL_18;
  }

  sub_20E322140();
  (*(v176 + 8))(v169, v175);
  v177 = v595;
  (*(v126 + 56))(v125, 0, 1, v595);
  v178 = v599;
  (*(v126 + 32))(v599, v125, v177);
LABEL_18:
  v179 = v600;
  *v600 = v166;
  *(v179 + 1) = v167;
  (*(v126 + 32))(&v179[*(v594 + 20)], v178, v177);
  v180 = v158 + *(v609 + 5);
  v181 = *(type metadata accessor for SessionSignature(0) + 44);
  v182 = *(v180 + v181);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v180 + v181) = v182;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v182 = sub_20E22534C(0, v182[2] + 1, 1, v182);
    *(v180 + v181) = v182;
  }

  v185 = v182[2];
  v184 = v182[3];
  if (v185 >= v184 >> 1)
  {
    v182 = sub_20E22534C(v184 > 1, v185 + 1, 1, v182);
    *(v180 + v181) = v182;
  }

  v182[2] = v185 + 1;
  v163 = v602;
  sub_20E19B570(v600, v182 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v602 + 72) * v185, type metadata accessor for ParticipantInfo);
  (v156)(&v611, 0);
LABEL_23:
  v602 = a1;
  v186 = *(a1 + 80);
  v187 = v186 + 64;
  v188 = 1 << *(v186 + 32);
  v189 = -1;
  if (v188 < 64)
  {
    v189 = ~(-1 << v188);
  }

  v190 = v189 & *(v186 + 64);
  v191 = (v188 + 63) >> 6;
  v590 = (v126 + 56);
  v596 = (v126 + 32);
  v584 = (v126 + 48);
  v589 = (v163 + 56);

  v192 = 0;
  v588 = v186;
  if (v190)
  {
    while (1)
    {
LABEL_30:
      while (1)
      {
        v194 = __clz(__rbit64(v190));
        v190 &= v190 - 1;
        v195 = v194 | (v192 << 6);
        v196 = (*(v186 + 48) + 16 * v195);
        v197 = *v196;
        v156 = v196[1];
        v198 = *(*(v186 + 56) + 8 * v195);

        v199 = sub_20E1A4FBC(&v611, v606, v607);
        v201 = v200;
        if (!v604(v200, 1, v609))
        {
          break;
        }

        (v199)(&v611, 0);
        if (!v190)
        {
          goto LABEL_26;
        }
      }

      v597 = v201;
      v598 = v197;
      v599 = v198;
      v600 = v199;
      v202 = v592;
      sub_20E0486F4(v602 + *(v603 + 52), v592, &qword_27C8688C0, &qword_20E33B870);
      v203 = type metadata accessor for TranscriptProtoTimepoint(0);
      if ((*(*(v203 - 8) + 48))(v202, 1, v203) == 1)
      {
        break;
      }

      v205 = v202 + *(v203 + 28);
      v206 = v578;
      sub_20E0486F4(v205, v578, &qword_27C868778, &unk_20E33C000);
      v207 = v202;
      v208 = v206;
      sub_20E19B5D8(v207, type metadata accessor for TranscriptProtoTimepoint);
      v209 = sub_20E322150();
      v210 = *(v209 - 8);
      v211 = (*(v210 + 48))(v208, 1, v209);
      v204 = v597;
      if (v211 == 1)
      {
        sub_20E04875C(v208, &qword_27C868778, &unk_20E33C000);
LABEL_37:
        v212 = v601;
        v213 = v595;
        (*v590)(v601, 1, 1, v595);
        v214 = v591;
        sub_20E321F40();
        v215 = v212;
        v216 = v214;
        v217 = (*v584)(v215, 1, v213);
        v218 = v599;
        if (v217 != 1)
        {
          sub_20E04875C(v601, &qword_27C863F30, &qword_20E325D90);
        }

        goto LABEL_40;
      }

      v219 = v601;
      sub_20E322140();
      (*(v210 + 8))(v208, v209);
      v213 = v595;
      (*v590)(v219, 0, 1, v595);
      v216 = v591;
      (*v596)(v591, v219, v213);
      v218 = v599;
LABEL_40:
      v220 = v593;
      *v593 = v598;
      *(v220 + 8) = v156;
      v156 = v594;
      (*v596)((v220 + *(v594 + 20)), v216, v213);
      (*v589)(v220, 0, 1, v156);
      v221 = v204 + *(v609 + 5);
      v222 = v221 + *(type metadata accessor for SessionSignature(0) + 32);
      sub_20E1A511C(v220, v218);
      (v600)(&v611, 0);
      v186 = v588;
      if (!v190)
      {
        goto LABEL_26;
      }
    }

    sub_20E04875C(v202, &qword_27C8688C0, &qword_20E33B870);
    v204 = v597;
    goto LABEL_37;
  }

  while (1)
  {
LABEL_26:
    v193 = v192 + 1;
    if (__OFADD__(v192, 1))
    {
      __break(1u);
      goto LABEL_104;
    }

    if (v193 >= v191)
    {
      break;
    }

    v190 = *(v187 + 8 * v193);
    ++v192;
    if (v190)
    {
      v192 = v193;
      goto LABEL_30;
    }
  }

  v223 = *v608;
  if (*(*v608 + 16))
  {
    v224 = sub_20E1ACAD0(v606, v607);
    v225 = v602;
    v226 = v603;
    v227 = v583;
    v228 = v580;
    if (v229)
    {
      sub_20E19B69C(*(v223 + 56) + v587[9] * v224, v580, type metadata accessor for SessionData);
      v230 = 0;
    }

    else
    {
      v230 = 1;
    }
  }

  else
  {
    v230 = 1;
    v225 = v602;
    v226 = v603;
    v227 = v583;
    v228 = v580;
  }

  v231 = v587[7];
  v232 = v609;
  v231(v228, v230, 1, v609);
  if (v604(v228, 1, v232))
  {
    sub_20E04875C(v228, &qword_27C8688F0, &unk_20E33B920);
  }

  else
  {
    v233 = v228 + *(v232 + 5);
    v234 = type metadata accessor for SessionSignature(0);
    v235 = (v233 + *(v234 + 48));
    v237 = *v235;
    v236 = v235[1];

    sub_20E04875C(v228, &qword_27C8688F0, &unk_20E33B920);

    v238 = HIBYTE(v236) & 0xF;
    if ((v236 & 0x2000000000000000) == 0)
    {
      v238 = v237 & 0xFFFFFFFFFFFFLL;
    }

    if (v238)
    {
      v239 = sub_20E1A4FBC(&v611, v606, v607);
      v241 = v240;
      v242 = v609;
      if (!v604(v240, 1, v609))
      {
        v243 = v241 + *(v242 + 5) + *(v234 + 48);
        MEMORY[0x20F32BF40](540945696, 0xE400000000000000);
      }

      (v239)(&v611, 0);
    }
  }

  v244 = v579;
  sub_20E0486F4(v225 + *(v226 + 56), v579, &qword_27C8688B0, &unk_20E33C1C0);
  v245 = type metadata accessor for TranscriptProtoParticipantID(0);
  if ((*(*(v245 - 8) + 48))(v244, 1, v245) == 1)
  {
    sub_20E04875C(v244, &qword_27C8688B0, &unk_20E33C1C0);
    goto LABEL_66;
  }

  v247 = *v244;
  v246 = v244[1];

  sub_20E19B5D8(v244, type metadata accessor for TranscriptProtoParticipantID);
  v611 = v247;
  v612 = v246;

  MEMORY[0x20F32BF40](40, 0xE100000000000000);

  v249 = v611;
  v248 = v612;
  v250 = v576;
  sub_20E0486F4(v225 + *(v226 + 44), v576, &qword_27C863FC0, &unk_20E325F70);
  v251 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v251 - 8) + 48))(v250, 1, v251) == 1)
  {
    v252 = 7104878;
    v253 = &qword_27C863FC0;
    v254 = &unk_20E325F70;
    goto LABEL_61;
  }

  v255 = v250;
  v256 = v250;
  v250 = v574;
  sub_20E0486F4(v255, v574, &qword_27C863FC8, &unk_20E33C1D0);
  sub_20E19B5D8(v256, type metadata accessor for TranscriptProtoPayload);
  if ((*(v585 + 48))(v250, 1, v586) == 1)
  {
    v252 = 7104878;
    v253 = &qword_27C863FC8;
    v254 = &unk_20E33C1D0;
LABEL_61:
    sub_20E04875C(v250, v253, v254);
    v257 = 0xE300000000000000;
  }

  else
  {
    v252 = TranscriptProtoPayloadEnum.eventTypeString.getter();
    v257 = v258;
    sub_20E19B5D8(v250, type metadata accessor for TranscriptProtoPayloadEnum);
  }

  v611 = v249;
  v612 = v248;

  MEMORY[0x20F32BF40](v252, v257);

  MEMORY[0x20F32BF40](41, 0xE100000000000000);

  v260 = v611;
  v259 = v612;
  v261 = sub_20E1A4FBC(&v611, v606, v607);
  v263 = v262;
  v264 = v609;
  if (!v604(v262, 1, v609))
  {
    v265 = v263 + *(v264 + 5);
    v266 = *(type metadata accessor for SessionSignature(0) + 48);
    MEMORY[0x20F32BF40](v260, v259);
  }

  (v261)(&v611, 0);
  v226 = v603;
LABEL_66:
  v267 = v581;
  sub_20E0486F4(v225 + *(v226 + 44), v581, &qword_27C863FC0, &unk_20E325F70);
  v268 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v268 - 8) + 48))(v267, 1, v268) == 1)
  {
    sub_20E04875C(v267, &qword_27C863FC0, &unk_20E325F70);
    v269 = v582;
    (*(v585 + 56))(v582, 1, 1, v586);
    goto LABEL_69;
  }

  v269 = v582;
  sub_20E0486F4(v267, v582, &qword_27C863FC8, &unk_20E33C1D0);
  sub_20E19B5D8(v267, type metadata accessor for TranscriptProtoPayload);
  if ((*(v585 + 48))(v269, 1, v586) == 1)
  {
LABEL_69:
    v270 = &qword_27C863FC8;
    v271 = &unk_20E33C1D0;
    goto LABEL_70;
  }

  v274 = v269;
  v275 = v577;
  sub_20E19B570(v274, v577, type metadata accessor for TranscriptProtoPayloadEnum);
  v276 = v575;
  sub_20E19B69C(v275, v575, type metadata accessor for TranscriptProtoPayloadEnum);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v296 = v564;
      sub_20E19B570(v276, v564, type metadata accessor for TranscriptProtoAction);
      v313 = sub_20E1A4FBC(&v611, v606, v607);
      v315 = v314;
      v316 = v609;
      if (v604(v314, 1, v609))
      {
        (v313)(&v611, 0);
      }

      else
      {
        v345 = v555;
        sub_20E0486F4(v296 + *(v554 + 36), v555, &qword_27C8639C8, &unk_20E323870);
        v346 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
        if ((*(*(v346 - 8) + 48))(v345, 1, v346) == 1)
        {
          sub_20E04875C(v345, &qword_27C8639C8, &unk_20E323870);
          v347 = 0xE300000000000000;
          v348 = 7104878;
        }

        else
        {
          v348 = *v345;
          v347 = v345[1];

          sub_20E19B5D8(v345, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
        }

        v375 = v315 + *(v316 + 5);
        v376 = *(type metadata accessor for SessionSignature(0) + 36);
        v377 = *(v375 + v376);
        v378 = swift_isUniquelyReferenced_nonNull_native();
        *(v375 + v376) = v377;
        if ((v378 & 1) == 0)
        {
          v377 = sub_20E225240(0, *(v377 + 2) + 1, 1, v377);
          *(v375 + v376) = v377;
        }

        v380 = *(v377 + 2);
        v379 = *(v377 + 3);
        if (v380 >= v379 >> 1)
        {
          v377 = sub_20E225240((v379 > 1), v380 + 1, 1, v377);
          *(v375 + v376) = v377;
        }

        *(v377 + 2) = v380 + 1;
        v381 = &v377[16 * v380];
        *(v381 + 4) = v348;
        *(v381 + 5) = v347;
        (v313)(&v611, 0);
      }

      v301 = type metadata accessor for TranscriptProtoAction;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_92;
      }

      v296 = v563;
      sub_20E19B570(v276, v563, type metadata accessor for TranscriptProtoClientAction);
      v297 = sub_20E1A4FBC(&v611, v606, v607);
      v299 = v298;
      v300 = v609;
      if (v604(v298, 1, v609))
      {
        (v297)(&v611, 0);
        v301 = type metadata accessor for TranscriptProtoClientAction;
      }

      else
      {
        v350 = *v296;
        v349 = v296[1];
        v351 = v299 + *(v300 + 5);
        v352 = *(type metadata accessor for SessionSignature(0) + 36);
        v353 = *(v351 + v352);

        v354 = swift_isUniquelyReferenced_nonNull_native();
        *(v351 + v352) = v353;
        if ((v354 & 1) == 0)
        {
          v353 = sub_20E225240(0, *(v353 + 2) + 1, 1, v353);
          *(v351 + v352) = v353;
        }

        v356 = *(v353 + 2);
        v355 = *(v353 + 3);
        if (v356 >= v355 >> 1)
        {
          v353 = sub_20E225240((v355 > 1), v356 + 1, 1, v353);
          *(v351 + v352) = v353;
        }

        *(v353 + 2) = v356 + 1;
        v357 = &v353[16 * v356];
        *(v357 + 4) = v350;
        *(v357 + 5) = v349;
        (v297)(&v611, 0);
        v301 = type metadata accessor for TranscriptProtoClientAction;
      }
    }

    v382 = v301;
    v383 = v296;
    goto LABEL_135;
  }

  if (EnumCaseMultiPayload != 19)
  {
    if (EnumCaseMultiPayload != 18)
    {
      if (EnumCaseMultiPayload == 7)
      {
        sub_20E19B570(v276, v573, type metadata accessor for TranscriptProtoSessionError);
        v278 = sub_20E1A4FBC(&v611, v606, v607);
        v280 = v279;
        v281 = v609;
        if (!v604(v279, 1, v609))
        {
          *(v280 + *(v281 + 5) + 1) = 1;
        }

        (v278)(&v611, 0);
        v282 = v568;
        v283 = v573;
        v284 = v570;
        sub_20E0486F4(v573, v570, &qword_27C863EE0, &qword_20E325D18);
        v285 = type metadata accessor for TranscriptProtoSessionErrorEnum(0);
        if ((*(*(v285 - 8) + 48))(v284, 1, v285) == 1)
        {
          v286 = v557;
          sub_20E19B69C(v283, v557, type metadata accessor for TranscriptProtoSessionError);
          v287 = sub_20E3227B0();
          v288 = sub_20E322A40();
          if (os_log_type_enabled(v287, v288))
          {
            v289 = swift_slowAlloc();
            v290 = swift_slowAlloc();
            v611 = v290;
            *v289 = 136315138;
            sub_20E065D4C(&qword_27C863EE8, type metadata accessor for TranscriptProtoSessionError);
            v291 = sub_20E322470();
            v293 = v292;
            sub_20E19B5D8(v286, type metadata accessor for TranscriptProtoSessionError);
            v294 = sub_20E31B6C4(v291, v293, &v611);

            *(v289 + 4) = v294;
            _os_log_impl(&dword_20E031000, v287, v288, "Unrecognized error from sessionError: %s", v289, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v290);
            MEMORY[0x20F32CA80](v290, -1, -1);
            v295 = v289;
            v284 = v570;
            MEMORY[0x20F32CA80](v295, -1, -1);
          }

          else
          {

            sub_20E19B5D8(v286, type metadata accessor for TranscriptProtoSessionError);
          }

          sub_20E19B5D8(v283, type metadata accessor for TranscriptProtoSessionError);
          sub_20E19B5D8(v577, type metadata accessor for TranscriptProtoPayloadEnum);
LABEL_175:
          v270 = &qword_27C863EE0;
          v271 = &qword_20E325D18;
          v272 = v284;
          return sub_20E04875C(v272, v270, v271);
        }

        v325 = v556;
        sub_20E0486F4(v284, v556, &qword_27C863EE0, &qword_20E325D18);
        v326 = swift_getEnumCaseMultiPayload();
        if (v326 <= 1)
        {
          if (!v326)
          {
            v327 = v551;
            sub_20E19B570(v325, v551, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v328 = sub_20E1A4FBC(&v611, v606, v607);
            v330 = v329;
            v331 = v609;
            if (!v604(v329, 1, v609))
            {
              v332 = *v327;
              v333 = v551[1];
              v334 = v551[2];
              v335 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
              v336 = sub_20E322860();
              v337 = [v335 initWithDomain:v336 code:v334 userInfo:0];

              v338 = [v337 debugDescription];
              v339 = sub_20E322890();
              v341 = v340;

              v284 = v570;
              v342 = v330 + *(v331 + 5);
              v343 = *(v342 + 16);
              *(v342 + 8) = v339;
              *(v342 + 16) = v341;
              v327 = v551;
            }

            (v328)(&v611, 0);
            sub_20E19B5D8(v327, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v344 = 1;
            goto LABEL_191;
          }

          v388 = v545;
          sub_20E19B570(v325, v545, type metadata accessor for TranscriptProtoSessionCoordinatorError);
          v389 = v552;
          sub_20E0486F4(v388, v552, &qword_27C863ED8, &unk_20E33C2B0);
          v390 = type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum(0);
          if ((*(*(v390 - 8) + 48))(v389, 1, v390) != 1)
          {
            v391 = v552;
            v392 = v536;
            sub_20E0486F4(v552, v536, &qword_27C863ED8, &unk_20E33C2B0);
            if (swift_getEnumCaseMultiPayload() <= 1)
            {
              v393 = v529;
              sub_20E19B570(v392, v529, type metadata accessor for TranscriptProtoIntelligenceFlowError);
              sub_20E04875C(v391, &qword_27C863ED8, &unk_20E33C2B0);
              v394 = sub_20E1A4FBC(&v611, v606, v607);
              v396 = v395;
              v397 = v609;
              if (v604(v395, 1, v609))
              {
                sub_20E19B5D8(v393, type metadata accessor for TranscriptProtoIntelligenceFlowError);
              }

              else
              {
                v486 = *v393;
                v487 = v393[1];
                v488 = v393[2];
                v489 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
                v490 = sub_20E322860();
                v491 = [v489 initWithDomain:v490 code:v488 userInfo:0];

                v492 = [v491 debugDescription];
                v493 = sub_20E322890();
                v495 = v494;

                v284 = v570;
                sub_20E19B5D8(v393, type metadata accessor for TranscriptProtoIntelligenceFlowError);
                v496 = v396 + *(v397 + 5);
                v497 = *(v496 + 16);
                *(v496 + 8) = v493;
                *(v496 + 16) = v495;
              }

              (v394)(&v611, 0);
              sub_20E19B5D8(v545, type metadata accessor for TranscriptProtoSessionCoordinatorError);
              v344 = 2;
              goto LABEL_191;
            }

            sub_20E19B5D8(v392, type metadata accessor for TranscriptProtoSessionCoordinatorErrorEnum);
          }

          v436 = v541;
          sub_20E19B69C(v388, v541, type metadata accessor for TranscriptProtoSessionCoordinatorError);
          v437 = sub_20E3227B0();
          v438 = sub_20E322A40();
          if (os_log_type_enabled(v437, v438))
          {
            v439 = swift_slowAlloc();
            v440 = swift_slowAlloc();
            v611 = v440;
            *v439 = 136315138;
            sub_20E065D4C(&qword_27C863F00, type metadata accessor for TranscriptProtoSessionCoordinatorError);
            v441 = sub_20E322470();
            v443 = v442;
            sub_20E19B5D8(v436, type metadata accessor for TranscriptProtoSessionCoordinatorError);
            v444 = sub_20E31B6C4(v441, v443, &v611);

            *(v439 + 4) = v444;
            _os_log_impl(&dword_20E031000, v437, v438, "Unrecognized error from sessionCoordinatorError: %s", v439, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v440);
            MEMORY[0x20F32CA80](v440, -1, -1);
            v445 = v439;
            v284 = v570;
            MEMORY[0x20F32CA80](v445, -1, -1);
          }

          else
          {

            sub_20E19B5D8(v436, type metadata accessor for TranscriptProtoSessionCoordinatorError);
          }

          sub_20E19B5D8(v388, type metadata accessor for TranscriptProtoSessionCoordinatorError);
          sub_20E19B5D8(v573, type metadata accessor for TranscriptProtoSessionError);
          sub_20E19B5D8(v577, type metadata accessor for TranscriptProtoPayloadEnum);
          v446 = v552;
          v434 = &qword_27C863ED8;
          v435 = &unk_20E33C2B0;
LABEL_174:
          sub_20E04875C(v446, v434, v435);
          goto LABEL_175;
        }

        if (v326 == 2)
        {
          v358 = v548;
          sub_20E19B570(v325, v548, type metadata accessor for TranscriptProtoPlannerError);
          v359 = v543;
          sub_20E0486F4(v358, v543, &qword_27C863ED0, &unk_20E33C2C0);
          v360 = type metadata accessor for TranscriptProtoPlannerErrorEnum(0);
          if ((*(*(v360 - 8) + 48))(v359, 1, v360) == 1)
          {
            goto LABEL_125;
          }

          v361 = v537;
          sub_20E0486F4(v359, v537, &qword_27C863ED0, &unk_20E33C2C0);
          v362 = swift_getEnumCaseMultiPayload();
          if (v362)
          {
            if (v362 == 1)
            {
              sub_20E19B5D8(v361, type metadata accessor for TranscriptProtoPlannerErrorEnum);
              v358 = v548;
LABEL_125:
              v363 = v540;
              sub_20E19B69C(v358, v540, type metadata accessor for TranscriptProtoPlannerError);
              v364 = sub_20E3227B0();
              v365 = sub_20E322A40();
              v366 = v358;
              if (os_log_type_enabled(v364, v365))
              {
                v367 = swift_slowAlloc();
                v368 = swift_slowAlloc();
                v611 = v368;
                *v367 = 136315138;
                sub_20E065D4C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError);
                v369 = sub_20E322470();
                v371 = v370;
                sub_20E19B5D8(v363, type metadata accessor for TranscriptProtoPlannerError);
                v372 = sub_20E31B6C4(v369, v371, &v611);

                *(v367 + 4) = v372;
                _os_log_impl(&dword_20E031000, v364, v365, "Unrecognized error from plannerError: %s", v367, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v368);
                MEMORY[0x20F32CA80](v368, -1, -1);
                v373 = v367;
                v284 = v570;
                MEMORY[0x20F32CA80](v373, -1, -1);

                v374 = v366;
              }

              else
              {

                sub_20E19B5D8(v363, type metadata accessor for TranscriptProtoPlannerError);
                v374 = v358;
              }

              sub_20E19B5D8(v374, type metadata accessor for TranscriptProtoPlannerError);
              sub_20E19B5D8(v573, type metadata accessor for TranscriptProtoSessionError);
              sub_20E19B5D8(v577, type metadata accessor for TranscriptProtoPayloadEnum);
              v434 = &qword_27C863ED0;
              v435 = &unk_20E33C2C0;
LABEL_173:
              v446 = v359;
              goto LABEL_174;
            }

            v479 = sub_20E1A4FBC(&v611, v606, v607);
            v481 = v480;
            if (!v604(v480, 1, v609))
            {
              sub_20E065D4C(&qword_27C863EF8, type metadata accessor for TranscriptProtoPlannerError);
              v482 = sub_20E322470();
              v483 = v481 + *(v609 + 5);
              v484 = *(v483 + 16);
              *(v483 + 8) = v482;
              *(v483 + 16) = v485;
            }

            (v479)(&v611, 0);
            v284 = v570;
            sub_20E19B5D8(v548, type metadata accessor for TranscriptProtoPlannerError);
          }

          else
          {
            v463 = v530;
            sub_20E19B570(v361, v530, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v464 = sub_20E1A4FBC(&v611, v606, v607);
            v466 = v465;
            if (!v604(v465, 1, v609))
            {
              v467 = *v463;
              v468 = v463[1];
              v469 = v530[2];
              v470 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
              v471 = sub_20E322860();
              v472 = [v470 initWithDomain:v471 code:v469 userInfo:0];

              v473 = [v472 debugDescription];
              v474 = sub_20E322890();
              v476 = v475;

              v284 = v570;
              v477 = v466 + *(v609 + 5);
              v478 = *(v477 + 16);
              *(v477 + 8) = v474;
              *(v477 + 16) = v476;
              v463 = v530;
            }

            (v464)(&v611, 0);
            sub_20E19B5D8(v548, type metadata accessor for TranscriptProtoPlannerError);
            sub_20E19B5D8(v463, type metadata accessor for TranscriptProtoIntelligenceFlowError);
            v359 = v543;
          }

          sub_20E04875C(v359, &qword_27C863ED0, &unk_20E33C2C0);
          v344 = 3;
          goto LABEL_191;
        }

        v398 = v547;
        sub_20E19B570(v325, v547, type metadata accessor for TranscriptProtoExecutorError);
        v359 = v546;
        sub_20E0486F4(v398, v546, &qword_27C863EC8, &unk_20E359E90);
        v399 = type metadata accessor for TranscriptProtoExecutorErrorEnum(0);
        if ((*(*(v399 - 8) + 48))(v359, 1, v399) == 1)
        {
          v400 = v539;
          sub_20E19B69C(v398, v539, type metadata accessor for TranscriptProtoExecutorError);
          v401 = v398;
          v402 = sub_20E3227B0();
          v403 = sub_20E322A40();
          if (os_log_type_enabled(v402, v403))
          {
            v404 = swift_slowAlloc();
            v405 = swift_slowAlloc();
            v611 = v405;
            *v404 = 136315138;
            sub_20E065D4C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError);
            v406 = sub_20E322470();
            v408 = v407;
            sub_20E19B5D8(v400, type metadata accessor for TranscriptProtoExecutorError);
            v409 = sub_20E31B6C4(v406, v408, &v611);

            *(v404 + 4) = v409;
            _os_log_impl(&dword_20E031000, v402, v403, "Unrecognized error from executorError: %s", v404, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v405);
            MEMORY[0x20F32CA80](v405, -1, -1);
            v410 = v404;
            v284 = v570;
            MEMORY[0x20F32CA80](v410, -1, -1);
          }

          else
          {

            sub_20E19B5D8(v400, type metadata accessor for TranscriptProtoExecutorError);
          }

          sub_20E19B5D8(v401, type metadata accessor for TranscriptProtoExecutorError);
          sub_20E19B5D8(v573, type metadata accessor for TranscriptProtoSessionError);
          sub_20E19B5D8(v577, type metadata accessor for TranscriptProtoPayloadEnum);
          v434 = &qword_27C863EC8;
          v435 = &unk_20E359E90;
          goto LABEL_173;
        }

        v411 = v538;
        sub_20E0486F4(v359, v538, &qword_27C863EC8, &unk_20E359E90);
        if ((*(v534 + 48))(v411, 1, v535) == 1)
        {
          v412 = sub_20E1A4FBC(&v611, v606, v607);
          v414 = v413;
          v415 = v609;
          if (v604(v413, 1, v609))
          {
            (v412)(&v611, 0);
            v284 = v570;
            v416 = v547;
          }

          else
          {
            sub_20E065D4C(&qword_27C863EF0, type metadata accessor for TranscriptProtoExecutorError);
            v416 = v547;
            v498 = sub_20E322470();
            v499 = v414 + *(v415 + 5);
            v500 = *(v499 + 16);
            *(v499 + 8) = v498;
            *(v499 + 16) = v501;

            (v412)(&v611, 0);
            v284 = v570;
          }

          sub_20E19B5D8(v416, type metadata accessor for TranscriptProtoExecutorError);
        }

        else
        {
          sub_20E19B570(v411, v282, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v447 = sub_20E1A4FBC(&v611, v606, v607);
          v449 = v448;
          v450 = v609;
          if (!v604(v448, 1, v609))
          {
            v451 = *v282;
            v452 = v282[1];
            v453 = *(v568 + 2);
            v454 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
            v455 = sub_20E322860();
            v456 = [v454 initWithDomain:v455 code:v453 userInfo:0];

            v457 = [v456 debugDescription];
            v458 = sub_20E322890();
            v460 = v459;

            v284 = v570;
            v461 = v449 + *(v450 + 5);
            v462 = *(v461 + 16);
            *(v461 + 8) = v458;
            *(v461 + 16) = v460;
            v282 = v568;
          }

          (v447)(&v611, 0);
          sub_20E19B5D8(v547, type metadata accessor for TranscriptProtoExecutorError);
          sub_20E19B5D8(v282, type metadata accessor for TranscriptProtoIntelligenceFlowError);
          v359 = v546;
        }

        sub_20E04875C(v359, &qword_27C863EC8, &unk_20E359E90);
        v344 = 4;
LABEL_191:
        sub_20E04875C(v284, &qword_27C863EE0, &qword_20E325D18);
        v502 = *v608;
        if (*(*v608 + 16) && (v503 = sub_20E1ACAD0(v606, v607), (v504 & 1) != 0))
        {
          v505 = *(v502 + 56) + v587[9] * v503;
          v506 = v550;
          sub_20E19B69C(v505, v550, type metadata accessor for SessionData);
          v507 = 0;
        }

        else
        {
          v507 = 1;
          v506 = v550;
        }

        v508 = v609;
        v231(v506, v507, 1, v609);
        if (v604(v506, 1, v508))
        {
          v509 = MEMORY[0x277D84F90];
        }

        else
        {
          v510 = v506 + *(v508 + 5);
          v509 = *(v510 + *(type metadata accessor for SessionSignature(0) + 44));
        }

        sub_20E04875C(v506, &qword_27C8688F0, &unk_20E33B920);
        v511 = *v608;
        if (*(*v608 + 16) && (v512 = sub_20E1ACAD0(v606, v607), (v513 & 1) != 0))
        {
          sub_20E19B69C(*(v511 + 56) + v587[9] * v512, v553, type metadata accessor for SessionData);
          v514 = 0;
        }

        else
        {
          v514 = 1;
        }

        v515 = v553;
        v516 = v609;
        v231(v553, v514, 1, v609);
        v517 = v516;
        if (v604(v515, 1, v516))
        {
          v518 = 0;
          v519 = 0xE000000000000000;
        }

        else
        {
          v520 = v515 + *(v516 + 5);
          v518 = *(v520 + 8);
          v519 = *(v520 + 16);
        }

        v521 = v573;
        sub_20E04875C(v515, &qword_27C8688F0, &unk_20E33B920);
        v522 = sub_20E1A4FBC(&v611, v606, v607);
        v524 = v523;
        if (v604(v523, 1, v517))
        {
        }

        else
        {
          v610 = v344;
          v525 = v542;
          sub_20E19AC78(v602, &v610, v518, v519, v509, v542);

          v526 = v524 + *(v517 + 5);
          v527 = type metadata accessor for SessionSignature(0);
          sub_20E05EC5C(v525, v526 + *(v527 + 28), &qword_27C8688E8, &unk_20E3573E0);
        }

        (v522)(&v611, 0);
        v382 = type metadata accessor for TranscriptProtoSessionError;
        v383 = v521;
LABEL_135:
        sub_20E19B5D8(v383, v382);
        v321 = type metadata accessor for TranscriptProtoPayloadEnum;
        v320 = v577;
        return sub_20E19B5D8(v320, v321);
      }

LABEL_92:
      v317 = type metadata accessor for TranscriptProtoPayloadEnum;
      v318 = v577;
      v319 = type metadata accessor for TranscriptProtoPayloadEnum;
LABEL_93:
      sub_20E19B5D8(v318, v319);
      v320 = v276;
      v321 = v317;
      return sub_20E19B5D8(v320, v321);
    }

    v156 = v569;
    sub_20E19B570(v276, v569, type metadata accessor for TranscriptProtoSystemResponse);
    v307 = *v156;
    if (*(*v156 + 16))
    {
      v308 = *(type metadata accessor for TranscriptProtoInterpretedStatementResult(0) - 8);
      v309 = v559;
      sub_20E0486F4(v307 + ((*(v308 + 80) + 32) & ~*(v308 + 80)), v559, &qword_27C863BA8, &unk_20E345F00);
      v310 = type metadata accessor for TranscriptProtoStatementOutcome(0);
      v311 = (*(*(v310 - 8) + 48))(v309, 1, v310);
      v312 = v572;
      if (v311 == 1)
      {
        sub_20E19B5D8(v577, type metadata accessor for TranscriptProtoPayloadEnum);
        sub_20E04875C(v309, &qword_27C863BA8, &unk_20E345F00);
        goto LABEL_105;
      }

      v269 = v567;
      sub_20E0486F4(v309, v567, &qword_27C863BA0, &unk_20E325F20);
      sub_20E19B5D8(v309, type metadata accessor for TranscriptProtoStatementOutcome);
      if ((*(v571 + 48))(v269, 1, v312) != 1)
      {
        sub_20E19B570(v269, v227, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        v384 = sub_20E1A4FBC(&v611, v606, v607);
        v386 = v385;
        v387 = v609;
        if (v604(v385, 1, v609))
        {
          (v384)(&v611, 0);
        }

        else
        {
          v417 = TranscriptProtoStatementOutcomeEnum.description.getter();
          v419 = v418;
          v420 = v386 + *(v387 + 5);
          v421 = *(type metadata accessor for SessionSignature(0) + 40);
          v422 = *(v420 + v421);
          v423 = swift_isUniquelyReferenced_nonNull_native();
          *(v420 + v421) = v422;
          if ((v423 & 1) == 0)
          {
            v422 = sub_20E225240(0, *(v422 + 2) + 1, 1, v422);
            *(v420 + v421) = v422;
          }

          v425 = *(v422 + 2);
          v424 = *(v422 + 3);
          if (v425 >= v424 >> 1)
          {
            v422 = sub_20E225240((v424 > 1), v425 + 1, 1, v422);
            *(v420 + v421) = v422;
          }

          v156 = v569;
          *(v422 + 2) = v425 + 1;
          v426 = &v422[16 * v425];
          *(v426 + 4) = v417;
          *(v426 + 5) = v419;
          (v384)(&v611, 0);
        }

        v276 = v544;
        sub_20E19B69C(v227, v544, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        if (!swift_getEnumCaseMultiPayload())
        {
          sub_20E19B5D8(v276, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          v427 = sub_20E1A4FBC(&v611, v606, v607);
          v429 = v428;
          if (!v604(v428, 1, v387))
          {
            *(v429 + *(v387 + 5) + 1) = 0;
          }

          (v427)(&v611, 0);
          sub_20E19B5D8(v227, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
          sub_20E19B5D8(v577, type metadata accessor for TranscriptProtoPayloadEnum);
          v321 = type metadata accessor for TranscriptProtoSystemResponse;
          v320 = v156;
          return sub_20E19B5D8(v320, v321);
        }

        v317 = type metadata accessor for TranscriptProtoStatementOutcomeEnum;
        sub_20E19B5D8(v227, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
        sub_20E19B5D8(v577, type metadata accessor for TranscriptProtoPayloadEnum);
        v319 = type metadata accessor for TranscriptProtoSystemResponse;
        v318 = v156;
        goto LABEL_93;
      }

      sub_20E19B5D8(v577, type metadata accessor for TranscriptProtoPayloadEnum);
LABEL_106:
      sub_20E19B5D8(v156, type metadata accessor for TranscriptProtoSystemResponse);
      v270 = &qword_27C863BA0;
      v271 = &unk_20E325F20;
LABEL_70:
      v272 = v269;
      return sub_20E04875C(v272, v270, v271);
    }

LABEL_104:
    sub_20E19B5D8(v577, type metadata accessor for TranscriptProtoPayloadEnum);
    v312 = v572;
LABEL_105:
    v269 = v567;
    (*(v571 + 56))(v567, 1, 1, v312);
    goto LABEL_106;
  }

  v302 = v566;
  sub_20E19B570(v276, v566, type metadata accessor for TranscriptProtoStatementResult);
  v303 = v565;
  sub_20E0486F4(v302 + *(v562 + 20), v565, &qword_27C863FB8, &unk_20E325F60);
  v304 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  if ((*(*(v304 - 8) + 48))(v303, 1, v304) == 1)
  {
    sub_20E19B5D8(v302, type metadata accessor for TranscriptProtoStatementResult);
    sub_20E19B5D8(v577, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E04875C(v303, &qword_27C863FB8, &unk_20E325F60);
    v305 = v572;
    v306 = v561;
LABEL_96:
    (*(v571 + 56))(v306, 1, 1, v305);
LABEL_97:
    v270 = &qword_27C863BA0;
    v271 = &unk_20E325F20;
    v272 = v306;
    return sub_20E04875C(v272, v270, v271);
  }

  v322 = v558;
  sub_20E0486F4(v303, v558, &qword_27C863BA8, &unk_20E345F00);
  sub_20E19B5D8(v303, type metadata accessor for TranscriptProtoStatementResultPayload);
  v323 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v324 = (*(*(v323 - 8) + 48))(v322, 1, v323);
  v305 = v572;
  v306 = v561;
  if (v324 == 1)
  {
    sub_20E19B5D8(v302, type metadata accessor for TranscriptProtoStatementResult);
    sub_20E19B5D8(v577, type metadata accessor for TranscriptProtoPayloadEnum);
    sub_20E04875C(v322, &qword_27C863BA8, &unk_20E345F00);
    goto LABEL_96;
  }

  sub_20E0486F4(v322, v561, &qword_27C863BA0, &unk_20E325F20);
  sub_20E19B5D8(v322, type metadata accessor for TranscriptProtoStatementOutcome);
  if ((*(v571 + 48))(v306, 1, v305) == 1)
  {
    sub_20E19B5D8(v302, type metadata accessor for TranscriptProtoStatementResult);
    sub_20E19B5D8(v577, type metadata accessor for TranscriptProtoPayloadEnum);
    goto LABEL_97;
  }

  if (!swift_getEnumCaseMultiPayload())
  {
    sub_20E19B5D8(v306, type metadata accessor for TranscriptProtoStatementOutcomeEnum);
    v430 = sub_20E1A4FBC(&v611, v606, v607);
    v432 = v431;
    v433 = v609;
    if (!v604(v431, 1, v609))
    {
      *(v432 + *(v433 + 5) + 1) = 0;
    }

    (v430)(&v611, 0);
    v382 = type metadata accessor for TranscriptProtoStatementResult;
    v383 = v302;
    goto LABEL_135;
  }

  sub_20E19B5D8(v302, type metadata accessor for TranscriptProtoStatementResult);
  sub_20E19B5D8(v577, type metadata accessor for TranscriptProtoPayloadEnum);
  v321 = type metadata accessor for TranscriptProtoStatementOutcomeEnum;
  v320 = v306;
  return sub_20E19B5D8(v320, v321);
}

uint64_t sub_20E19AC78@<X0>(unint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a4;
  v72 = a5;
  v70 = a3;
  v76 = a1;
  v79 = a6;
  v7 = type metadata accessor for ParticipantInfo(0);
  v67 = *(v7 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863A90, &unk_20E33C020);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v69 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC0, &unk_20E325F70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v66 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863FC8, &unk_20E33C1D0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v66 - v20;
  v75 = type metadata accessor for TranscriptProtoPayloadEnum(0);
  v22 = *(v75 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v75);
  v74 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v73 = &v66 - v26;
  v27 = type metadata accessor for AttributionTraits(0);
  v77 = *(v27 - 8);
  v28 = *(v77 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = (&v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = *a2;
  v31[2] = 0;
  v31[3] = 0;
  v32 = *(v29 + 24);
  v33 = sub_20E322060();
  v34 = *(*(v33 - 8) + 56);
  v34(v31 + v32, 1, 1, v33);
  v78 = v27;
  v35 = (v31 + *(v27 + 28));
  *v31 = 0;
  v31[1] = 0;
  sub_20E04875C(v31 + v32, &qword_27C863A90, &unk_20E33C020);
  v34(v31 + v32, 1, 1, v33);
  v36 = type metadata accessor for TranscriptProtoEvent(0);
  *v35 = 0;
  v35[1] = 0;
  v37 = v76;
  sub_20E0486F4(v76 + *(v36 + 44), v17, &qword_27C863FC0, &unk_20E325F70);
  v38 = type metadata accessor for TranscriptProtoPayload(0);
  if ((*(*(v38 - 8) + 48))(v17, 1, v38) == 1)
  {
    sub_20E04875C(v17, &qword_27C863FC0, &unk_20E325F70);
    (*(v22 + 56))(v21, 1, 1, v75);
LABEL_4:
    sub_20E04875C(v21, &qword_27C863FC8, &unk_20E33C1D0);
    (*(v77 + 56))(v79, 1, 1, v78);
    return sub_20E19B5D8(v31, type metadata accessor for AttributionTraits);
  }

  sub_20E0486F4(v17, v21, &qword_27C863FC8, &unk_20E33C1D0);
  sub_20E19B5D8(v17, type metadata accessor for TranscriptProtoPayload);
  if ((*(v22 + 48))(v21, 1, v75) == 1)
  {
    goto LABEL_4;
  }

  v39 = v73;
  sub_20E19B570(v21, v73, type metadata accessor for TranscriptProtoPayloadEnum);
  v40 = v74;
  sub_20E19B69C(v39, v74, type metadata accessor for TranscriptProtoPayloadEnum);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v41 = v71;
    *v35 = v70;
    v35[1] = v41;
    v42 = v37;
    v43 = *(v37 + 32);
    v44 = *(v42 + 40);

    v45 = v69;
    sub_20E322020();
    sub_20E05EC5C(v45, v31 + v32, &qword_27C863A90, &unk_20E33C020);
    if (v68 <= 3)
    {
      v46 = v72;
      if (v68 > 1)
      {
        if (v68 == 2)
        {
          v47 = 0x800000020E35A1B0;
          v48 = 0xD000000000000012;
        }

        else
        {
          v47 = 0xE700000000000000;
          v48 = 0x72656E6E616C70;
        }
      }

      else if (v68)
      {
        v47 = 0xE500000000000000;
        v48 = 0x726568746FLL;
      }

      else
      {
        v47 = 0xE700000000000000;
        v48 = 0x6E776F6E6B6E75;
      }
    }

    else
    {
      v46 = v72;
      if (v68 <= 5)
      {
        if (v68 == 4)
        {
          v47 = 0xE800000000000000;
          v48 = 0x726F747563657865;
        }

        else
        {
          v47 = 0xE700000000000000;
          v48 = 0x74696B6C6F6F74;
        }
      }

      else if (v68 == 6)
      {
        v47 = 0xE600000000000000;
        v48 = 0x746E65696C63;
      }

      else if (v68 == 7)
      {
        v47 = 0xE900000000000074;
        v48 = 0x6E65746E49707061;
      }

      else
      {
        v47 = 0xED0000656C626163;
        v48 = 0x696C707041746F6ELL;
      }
    }

    v31[2] = v48;
    v31[3] = v47;
    v50 = *(v46 + 16);
    if (v50)
    {
      v51 = v46 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v52 = *(v67 + 72);
      v76 = 0x800000020E35F380;
      v53 = MEMORY[0x277D84F90];
      do
      {
        sub_20E19B69C(v51, v10, type metadata accessor for ParticipantInfo);
        if (v10[1])
        {
          v54 = *v10;
          v55 = v10[1];
        }

        else
        {
          v54 = 0xD000000000000013;
          v55 = v76;
        }

        sub_20E19B5D8(v10, type metadata accessor for ParticipantInfo);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_20E225240(0, *(v53 + 2) + 1, 1, v53);
        }

        v57 = *(v53 + 2);
        v56 = *(v53 + 3);
        if (v57 >= v56 >> 1)
        {
          v53 = sub_20E225240((v56 > 1), v57 + 1, 1, v53);
        }

        *(v53 + 2) = v57 + 1;
        v58 = &v53[16 * v57];
        *(v58 + 4) = v54;
        *(v58 + 5) = v55;
        v51 += v52;
        --v50;
      }

      while (v50);
    }

    else
    {
      v53 = MEMORY[0x277D84F90];
    }

    v80 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868900, &qword_20E357400);
    sub_20E19B638();
    v59 = sub_20E322830();
    v61 = v60;

    v80 = v59;
    v81 = v61;

    MEMORY[0x20F32BF40](0x29726F72724528, 0xE700000000000000);

    v62 = v80;
    v63 = v81;
    sub_20E19B5D8(v73, type metadata accessor for TranscriptProtoPayloadEnum);
    *v31 = v62;
    v31[1] = v63;
    v64 = v79;
    sub_20E19B69C(v31, v79, type metadata accessor for AttributionTraits);
    (*(v77 + 56))(v64, 0, 1, v78);
    v49 = v74;
  }

  else
  {
    sub_20E19B5D8(v39, type metadata accessor for TranscriptProtoPayloadEnum);
    (*(v77 + 56))(v79, 1, 1, v78);
    v49 = v40;
  }

  sub_20E19B5D8(v49, type metadata accessor for TranscriptProtoPayloadEnum);
  return sub_20E19B5D8(v31, type metadata accessor for AttributionTraits);
}

uint64_t sub_20E19B570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E19B5D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20E19B638()
{
  result = qword_27C868908;
  if (!qword_27C868908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C868900, &qword_20E357400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868908);
  }

  return result;
}

uint64_t sub_20E19B69C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_20E19B704(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868668, &qword_20E33B670);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868680, &unk_20E33C260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v13, &qword_27C868680, &unk_20E33C260);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_20E19BAE4(v13);
    return 0;
  }

  sub_20E19BB4C(v13, v18, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  v19 = [objc_allocWithZone(MEMORY[0x277D57CF0]) init];
  sub_20E0486F4(v18, v9, &qword_27C868668, &qword_20E33B670);
  v20 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleEnum(0);
  if ((*(*(v20 - 8) + 48))(v9, 1, v20) == 1)
  {
    sub_20E19BBB4(v18, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);

    return 0;
  }

  sub_20E19BB4C(v9, v5, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  v21 = [objc_allocWithZone(MEMORY[0x277D57CF8]) init];
  v22 = v21;
  if (v21)
  {
    v23 = *v5;
    v24 = *(v5 + 1);
    v25 = v21;
    v26 = sub_20E322860();
    [v25 setBundleId_];

    v27 = *(v2 + 24);
    v28 = v25;
    [v28 setSource_];

    [v28 setIsExplicit_];
  }

  if (v19)
  {
    [v19 setGenerativeAIEnablement_];

    sub_20E19BBB4(v18, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  }

  else
  {
    sub_20E19BBB4(v18, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  }

  sub_20E19BBB4(v5, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  return v19;
}

uint64_t sub_20E19BAE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868680, &unk_20E33C260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E19BB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E19BBB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UsageMetricsDefinitions.clientSessionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UsageMetricsDefinitions.clientSessionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UsageMetricsDefinitions.dateStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UsageMetricsDefinitions() + 20);
  v4 = sub_20E322010();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for UsageMetricsDefinitions()
{
  result = qword_27C868948;
  if (!qword_27C868948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UsageMetricsDefinitions.dateStamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UsageMetricsDefinitions() + 20);
  v4 = sub_20E322010();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UsageMetricsDefinitions.useCase.getter()
{
  v1 = (v0 + *(type metadata accessor for UsageMetricsDefinitions() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t UsageMetricsDefinitions.useCase.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UsageMetricsDefinitions() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t UsageMetricsDefinitions.completionStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for UsageMetricsDefinitions();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t UsageMetricsDefinitions.completionStatus.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for UsageMetricsDefinitions();
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t UsageMetricsDefinitions.errorMessage.getter()
{
  v1 = (v0 + *(type metadata accessor for UsageMetricsDefinitions() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t UsageMetricsDefinitions.errorMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UsageMetricsDefinitions() + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t UsageMetricsDefinitions.attribution.getter()
{
  v1 = (v0 + *(type metadata accessor for UsageMetricsDefinitions() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t UsageMetricsDefinitions.attribution.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for UsageMetricsDefinitions() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t UsageMetricsDefinitions.planGenerationLatency.setter(uint64_t a1)
{
  result = type metadata accessor for UsageMetricsDefinitions();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t UsageMetricsDefinitions.actionGenerationLatency.setter(uint64_t a1)
{
  result = type metadata accessor for UsageMetricsDefinitions();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t UsageMetricsDefinitions.executionLatency.setter(uint64_t a1)
{
  result = type metadata accessor for UsageMetricsDefinitions();
  *(v1 + *(result + 48)) = a1;
  return result;
}

unint64_t sub_20E19C324(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6553746E65696C63;
    v6 = 0x65736143657375;
    if (a1 != 2)
    {
      v6 = 0xD000000000000010;
    }

    if (a1)
    {
      v5 = 0x6D61745365746164;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    v2 = 0xD000000000000017;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x73654D726F727265;
    if (a1 != 4)
    {
      v3 = 0x7475626972747461;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_20E19C47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20E19D2A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20E19C4B0(uint64_t a1)
{
  v2 = sub_20E19C828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20E19C4EC(uint64_t a1)
{
  v2 = sub_20E19C828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UsageMetricsDefinitions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868910, &qword_20E33B930);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20E19C828();
  sub_20E322E40();
  v11 = *v3;
  v12 = v3[1];
  v28[15] = 0;
  sub_20E322D10();
  if (!v2)
  {
    v13 = type metadata accessor for UsageMetricsDefinitions();
    v14 = v13[5];
    v28[14] = 1;
    sub_20E322010();
    sub_20E19CE58(&qword_27C868920);
    sub_20E322D40();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    v28[13] = 2;
    sub_20E322D10();
    v28[12] = *(v3 + v13[7]);
    v28[11] = 3;
    sub_20E19C87C();
    sub_20E322D40();
    v18 = (v3 + v13[8]);
    v19 = *v18;
    v20 = v18[1];
    v28[10] = 4;
    sub_20E322D10();
    v21 = (v3 + v13[9]);
    v22 = *v21;
    v23 = v21[1];
    v28[9] = 5;
    sub_20E322D10();
    v24 = *(v3 + v13[10]);
    v28[8] = 6;
    sub_20E322D30();
    v25 = *(v3 + v13[11]);
    v28[7] = 7;
    sub_20E322D30();
    v26 = *(v3 + v13[12]);
    v28[6] = 8;
    sub_20E322D30();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20E19C828()
{
  result = qword_27C868918;
  if (!qword_27C868918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868918);
  }

  return result;
}

unint64_t sub_20E19C87C()
{
  result = qword_27C868928;
  if (!qword_27C868928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868928);
  }

  return result;
}

uint64_t UsageMetricsDefinitions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_20E322010();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868930, &qword_20E33B938);
  v34 = *(v37 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v37);
  v10 = &v32 - v9;
  v11 = type metadata accessor for UsageMetricsDefinitions();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v15 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_20E19C828();
  v36 = v10;
  sub_20E322E20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v38);
  }

  v17 = v7;
  v18 = v34;
  v19 = v35;
  v48 = 0;
  *v14 = sub_20E322C80();
  v14[1] = v20;
  v47 = 1;
  sub_20E19CE58(&qword_27C868938);
  sub_20E322CB0();
  (*(v19 + 32))(v14 + v11[5], v17, v4);
  v46 = 2;
  v32 = 0;
  v21 = sub_20E322C80();
  v22 = (v14 + v11[6]);
  *v22 = v21;
  v22[1] = v23;
  v44 = 3;
  sub_20E19CE9C();
  sub_20E322CB0();
  *(v14 + v11[7]) = v45;
  v43 = 4;
  v24 = sub_20E322C80();
  v25 = (v14 + v11[8]);
  *v25 = v24;
  v25[1] = v26;
  v42 = 5;
  v27 = sub_20E322C80();
  v28 = (v14 + v11[9]);
  *v28 = v27;
  v28[1] = v29;
  v41 = 6;
  *(v14 + v11[10]) = sub_20E322CA0();
  v40 = 7;
  *(v14 + v11[11]) = sub_20E322CA0();
  v39 = 8;
  v30 = sub_20E322CA0();
  (*(v18 + 8))(v36, v37);
  *(v14 + v11[12]) = v30;
  sub_20E19CEF0(v14, v33);
  __swift_destroy_boxed_opaque_existential_0(v38);
  return sub_20E19CF54(v14);
}

uint64_t sub_20E19CE58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20E322010();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20E19CE9C()
{
  result = qword_27C868940;
  if (!qword_27C868940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868940);
  }

  return result;
}

uint64_t sub_20E19CEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageMetricsDefinitions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20E19CF54(uint64_t a1)
{
  v2 = type metadata accessor for UsageMetricsDefinitions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20E19CFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_20E322010();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_20E19D024(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_20E322010();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_20E19D0F0()
{
  result = sub_20E322010();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20E19D1A0()
{
  result = qword_27C868958;
  if (!qword_27C868958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868958);
  }

  return result;
}

unint64_t sub_20E19D1F8()
{
  result = qword_27C868960;
  if (!qword_27C868960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868960);
  }

  return result;
}

unint64_t sub_20E19D250()
{
  result = qword_27C868968;
  if (!qword_27C868968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C868968);
  }

  return result;
}

uint64_t sub_20E19D2A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6553746E65696C63 && a2 == 0xEF64496E6F697373;
  if (v4 || (sub_20E322D60() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D61745365746164 && a2 == 0xE900000000000070 || (sub_20E322D60() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65736143657375 && a2 == 0xE700000000000000 || (sub_20E322D60() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E35F3A0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173 || (sub_20E322D60() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEB000000006E6F69 || (sub_20E322D60() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000020E35F3C0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020E35F3E0 == a2 || (sub_20E322D60() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020E35F400 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_20E322D60();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_20E19D5A4()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868970);
  __swift_project_value_buffer(v0, qword_27C868970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VOICE_ONLY";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VOICE_FORWARD";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DISPLAY_FORWARD";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "DISPLAY_ONLY";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t sub_20E19D89C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C868988);
  __swift_project_value_buffer(v0, qword_27C868988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E326320;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "client_request_id";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "response_mode";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "response_locale";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "statement_result_digests";
  *(v16 + 8) = 24;
  *(v16 + 16) = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ResponseGenerationProtoResponseGenerationInput.decodeMessage<A>(decoder:)()
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
        if (result == 1 || result == 2)
        {
LABEL_4:
          sub_20E3223E0();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_20E19F8D8();
            sub_20E322310();
            break;
          case 4:
            goto LABEL_4;
          case 5:
            type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
            sub_20E1A0C44(&qword_27C8689C0, type metadata accessor for ResponseGenerationProtoStatementResultDigest);
            sub_20E322420();
            break;
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t ResponseGenerationProtoResponseGenerationInput.traverse<A>(visitor:)()
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
      if (!*(v0 + 32) || (v11 = *(v0 + 32), sub_20E19F8D8(), result = sub_20E3224D0(), !v1))
      {
        v8 = v0[6];
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v0[5] & 0xFFFFFFFFFFFFLL;
        }

        if (!v9 || (result = sub_20E322540(), !v1))
        {
          if (!*(v0[7] + 16) || (type metadata accessor for ResponseGenerationProtoStatementResultDigest(0), sub_20E1A0C44(&qword_27C8689C0, type metadata accessor for ResponseGenerationProtoStatementResultDigest), result = sub_20E322570(), !v1))
          {
            v10 = v0 + *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
            return sub_20E3221A0();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_20E19DECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2 + *(a1 + 36);
  result = _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20E19DF64(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1A0C44(&qword_27C868A18, type metadata accessor for ResponseGenerationProtoResponseGenerationInput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E19E004()
{
  sub_20E1A0C44(&qword_27C8689F0, type metadata accessor for ResponseGenerationProtoResponseGenerationInput);

  return sub_20E322470();
}

uint64_t sub_20E19E070()
{
  sub_20E1A0C44(&qword_27C8689F0, type metadata accessor for ResponseGenerationProtoResponseGenerationInput);

  return sub_20E322480();
}

uint64_t sub_20E19E10C()
{
  v0 = sub_20E3225C0();
  __swift_allocate_value_buffer(v0, qword_27C8689A0);
  __swift_project_value_buffer(v0, qword_27C8689A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EE8, &qword_20E33AFB8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867EF0, &qword_20E33AFC0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20E3262C0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tool_definition";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_20E322590();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "action_created";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "statement_outcome";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "undo_operation";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "response_manifest";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "return_value_type_display_representation";
  *(v18 + 1) = 40;
  v18[16] = 2;
  v9();
  return sub_20E3225A0();
}

uint64_t ResponseGenerationProtoStatementResultDigest.decodeMessage<A>(decoder:)()
{
  result = sub_20E3222B0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_20E19E6FC();
            break;
          case 5:
            sub_20E19E770();
            break;
          case 6:
            sub_20E19E824();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
            sub_20E1A0C44(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
            sub_20E322430();
            break;
          case 2:
            sub_20E19E594();
            break;
          case 3:
            sub_20E19E648();
            break;
        }
      }

      result = sub_20E3222B0();
    }
  }

  return result;
}

uint64_t sub_20E19E594()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 20);
  type metadata accessor for TranscriptProtoAction(0);
  sub_20E1A0C44(&qword_27C866530, type metadata accessor for TranscriptProtoAction);
  return sub_20E322430();
}

uint64_t sub_20E19E648()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 24);
  type metadata accessor for TranscriptProtoStatementOutcome(0);
  sub_20E1A0C44(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome);
  return sub_20E322430();
}

uint64_t sub_20E19E6FC()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 28);
  sub_20E184A80();
  return sub_20E322300();
}

uint64_t sub_20E19E770()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 32);
  type metadata accessor for TranscriptProtoResponseManifest(0);
  sub_20E1A0C44(&qword_27C866C80, type metadata accessor for TranscriptProtoResponseManifest);
  return sub_20E322430();
}

uint64_t sub_20E19E824()
{
  v0 = *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 36);
  type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  sub_20E1A0C44(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  return sub_20E322430();
}

uint64_t ResponseGenerationProtoStatementResultDigest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E19E9C8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_20E19EBCC(v3, a1, a2, a3);
    sub_20E19EDDC(v3, a1, a2, a3);
    sub_20E19EFEC(v3);
    sub_20E19F07C(v3, a1, a2, a3);
    sub_20E19F28C(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for ResponseGenerationProtoStatementResultDigest(0) + 40);
    return sub_20E3221A0();
  }

  return result;
}

uint64_t sub_20E19E9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20E0486F4(a1, v8, &qword_27C863B90, &unk_20E345EF0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B90, &unk_20E345EF0);
  }

  sub_20E1A0BDC(v8, v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E1A0C44(&qword_27C865AA0, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E322580();
  return sub_20E1A0B7C(v13, type metadata accessor for ToolKitProtoToolDefinition.Version1);
}

uint64_t sub_20E19EBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F10, &qword_20E33AFE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_20E0486F4(a1 + *(v14 + 20), v8, &qword_27C867F10, &qword_20E33AFE0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C867F10, &qword_20E33AFE0);
  }

  sub_20E1A0BDC(v8, v13, type metadata accessor for TranscriptProtoAction);
  sub_20E1A0C44(&qword_27C866530, type metadata accessor for TranscriptProtoAction);
  sub_20E322580();
  return sub_20E1A0B7C(v13, type metadata accessor for TranscriptProtoAction);
}

uint64_t sub_20E19EDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_20E0486F4(a1 + *(v14 + 24), v8, &qword_27C863BA8, &unk_20E345F00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863BA8, &unk_20E345F00);
  }

  sub_20E1A0BDC(v8, v13, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E1A0C44(qword_280E09BF8, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E322580();
  return sub_20E1A0B7C(v13, type metadata accessor for TranscriptProtoStatementOutcome);
}

uint64_t sub_20E19EFEC(uint64_t a1)
{
  result = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    sub_20E184A80();
    return sub_20E3224D0();
  }

  return result;
}

uint64_t sub_20E19F07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B48, &unk_20E33C280);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_20E0486F4(a1 + *(v14 + 32), v8, &qword_27C863B48, &unk_20E33C280);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C863B48, &unk_20E33C280);
  }

  sub_20E1A0BDC(v8, v13, type metadata accessor for TranscriptProtoResponseManifest);
  sub_20E1A0C44(&qword_27C866C80, type metadata accessor for TranscriptProtoResponseManifest);
  sub_20E322580();
  return sub_20E1A0B7C(v13, type metadata accessor for TranscriptProtoResponseManifest);
}

uint64_t sub_20E19F28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v14 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  sub_20E0486F4(a1 + *(v14 + 36), v8, &qword_27C868A20, &qword_20E345F10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20E04875C(v8, &qword_27C868A20, &qword_20E345F10);
  }

  sub_20E1A0BDC(v8, v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E1A0C44(&qword_27C868A38, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E322580();
  return sub_20E1A0B7C(v13, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
}

uint64_t sub_20E19F4E8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_20E322DE0();
  a1(0);
  sub_20E1A0C44(a2, a3);
  sub_20E322820();
  return sub_20E322E00();
}

uint64_t sub_20E19F570@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a1[5];
  v6 = type metadata accessor for TranscriptProtoAction(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[6];
  v8 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[8];
  *(a2 + a1[7]) = 2;
  v10 = type metadata accessor for TranscriptProtoResponseManifest(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = a1[9];
  v12 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = a2 + a1[10];
  return _s23LighthouseDataProcessor033TranscriptProtoRequestContentStopG0VACycfC_0();
}

uint64_t sub_20E19F74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20E1A0C44(&qword_27C868A10, type metadata accessor for ResponseGenerationProtoStatementResultDigest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_20E19F7EC()
{
  sub_20E1A0C44(&qword_27C8689C0, type metadata accessor for ResponseGenerationProtoStatementResultDigest);

  return sub_20E322470();
}

uint64_t sub_20E19F858()
{
  sub_20E1A0C44(&qword_27C8689C0, type metadata accessor for ResponseGenerationProtoStatementResultDigest);

  return sub_20E322480();
}

unint64_t sub_20E19F8D8()
{
  result = qword_27C8689B8;
  if (!qword_27C8689B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8689B8);
  }

  return result;
}

uint64_t _s23LighthouseDataProcessor44ResponseGenerationProtoStatementResultDigestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v129 = a1;
  v130 = a2;
  v2 = type metadata accessor for ToolKitProtoTypeDisplayRepresentation(0);
  v110 = *(v2 - 8);
  v111 = v2;
  v3 = *(v110 + 64);
  MEMORY[0x28223BE20](v2);
  v107 = (&v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A20, &qword_20E345F10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v106 - v7;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A28, &qword_20E33BE88);
  v8 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v112 = &v106 - v9;
  v10 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v114 = *(v10 - 8);
  v115 = v10;
  v11 = *(v114 + 64);
  MEMORY[0x28223BE20](v10);
  v108 = (&v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B48, &unk_20E33C280);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v124 = (&v106 - v15);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868640, &qword_20E33B650);
  v16 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v116 = &v106 - v17;
  v18 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v121 = *(v18 - 8);
  v122 = v18;
  v19 = *(v121 + 64);
  MEMORY[0x28223BE20](v18);
  v117 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863BA8, &unk_20E345F00);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v118 = &v106 - v23;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868000, &qword_20E33B0B8);
  v24 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v123 = &v106 - v25;
  v26 = type metadata accessor for TranscriptProtoAction(0);
  v127 = *(v26 - 8);
  v128 = v26;
  v27 = *(v127 + 64);
  MEMORY[0x28223BE20](v26);
  v119 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867F10, &qword_20E33AFE0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v126 = &v106 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C868A30, &unk_20E33BE90);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v106 - v34;
  v36 = type metadata accessor for ToolKitProtoToolDefinition.Version1(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = &v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B90, &unk_20E345EF0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v106 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C867FC8, &qword_20E33B088);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v49 = &v106 - v48;
  v50 = *(v47 + 56);
  sub_20E0486F4(v129, &v106 - v48, &qword_27C863B90, &unk_20E345EF0);
  sub_20E0486F4(v130, &v49[v50], &qword_27C863B90, &unk_20E345EF0);
  v51 = *(v37 + 48);
  if (v51(v49, 1, v36) == 1)
  {
    if (v51(&v49[v50], 1, v36) == 1)
    {
      sub_20E04875C(v49, &qword_27C863B90, &unk_20E345EF0);
      goto LABEL_8;
    }

LABEL_6:
    v52 = &qword_27C867FC8;
    v53 = &qword_20E33B088;
    v54 = v49;
LABEL_21:
    sub_20E04875C(v54, v52, v53);
    goto LABEL_22;
  }

  sub_20E0486F4(v49, v44, &qword_27C863B90, &unk_20E345EF0);
  if (v51(&v49[v50], 1, v36) == 1)
  {
    sub_20E1A0B7C(v44, type metadata accessor for ToolKitProtoToolDefinition.Version1);
    goto LABEL_6;
  }

  sub_20E1A0BDC(&v49[v50], v40, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  v55 = static ToolKitProtoToolDefinition.Version1.== infix(_:_:)(v44, v40);
  sub_20E1A0B7C(v40, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E1A0B7C(v44, type metadata accessor for ToolKitProtoToolDefinition.Version1);
  sub_20E04875C(v49, &qword_27C863B90, &unk_20E345EF0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v56 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v57 = *(v56 + 20);
  v58 = *(v32 + 48);
  v59 = v129;
  sub_20E0486F4(v129 + v57, v35, &qword_27C867F10, &qword_20E33AFE0);
  v60 = v130;
  sub_20E0486F4(v130 + v57, &v35[v58], &qword_27C867F10, &qword_20E33AFE0);
  v61 = v128;
  v62 = *(v127 + 48);
  if (v62(v35, 1, v128) == 1)
  {
    if (v62(&v35[v58], 1, v61) == 1)
    {
      sub_20E04875C(v35, &qword_27C867F10, &qword_20E33AFE0);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v63 = v126;
  sub_20E0486F4(v35, v126, &qword_27C867F10, &qword_20E33AFE0);
  if (v62(&v35[v58], 1, v61) == 1)
  {
    sub_20E1A0B7C(v63, type metadata accessor for TranscriptProtoAction);
LABEL_13:
    v52 = &qword_27C868A30;
    v53 = &unk_20E33BE90;
    v54 = v35;
    goto LABEL_21;
  }

  v64 = v119;
  sub_20E1A0BDC(&v35[v58], v119, type metadata accessor for TranscriptProtoAction);
  v65 = _s23LighthouseDataProcessor21TranscriptProtoActionV2eeoiySbAC_ACtFZ_0(v63, v64);
  sub_20E1A0B7C(v64, type metadata accessor for TranscriptProtoAction);
  sub_20E1A0B7C(v63, type metadata accessor for TranscriptProtoAction);
  sub_20E04875C(v35, &qword_27C867F10, &qword_20E33AFE0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v66 = v56;
  v67 = *(v56 + 24);
  v68 = *(v120 + 48);
  v69 = v123;
  sub_20E0486F4(v59 + v67, v123, &qword_27C863BA8, &unk_20E345F00);
  sub_20E0486F4(v60 + v67, v69 + v68, &qword_27C863BA8, &unk_20E345F00);
  v70 = v122;
  v71 = *(v121 + 48);
  if (v71(v69, 1, v122) == 1)
  {
    v72 = v71(v69 + v68, 1, v70);
    v74 = v124;
    v73 = v125;
    if (v72 == 1)
    {
      sub_20E04875C(v69, &qword_27C863BA8, &unk_20E345F00);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v75 = v118;
  sub_20E0486F4(v69, v118, &qword_27C863BA8, &unk_20E345F00);
  v76 = v71(v69 + v68, 1, v70);
  v74 = v124;
  v73 = v125;
  if (v76 == 1)
  {
    sub_20E1A0B7C(v75, type metadata accessor for TranscriptProtoStatementOutcome);
LABEL_20:
    v52 = &qword_27C868000;
    v53 = &qword_20E33B0B8;
    v54 = v69;
    goto LABEL_21;
  }

  v79 = v69 + v68;
  v80 = v117;
  sub_20E1A0BDC(v79, v117, type metadata accessor for TranscriptProtoStatementOutcome);
  v81 = _s23LighthouseDataProcessor31TranscriptProtoStatementOutcomeV2eeoiySbAC_ACtFZ_0(v75, v80);
  sub_20E1A0B7C(v80, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E1A0B7C(v75, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_20E04875C(v69, &qword_27C863BA8, &unk_20E345F00);
  if ((v81 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  v82 = v66[7];
  v83 = *(v59 + v82);
  v84 = *(v60 + v82);
  if (v83 == 2)
  {
    if (v84 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v84 == 2 || ((v84 ^ v83) & 1) != 0)
  {
    goto LABEL_22;
  }

  v85 = v73;
  v86 = v66[8];
  v87 = *(v113 + 48);
  v88 = v116;
  sub_20E0486F4(v59 + v86, v116, &qword_27C863B48, &unk_20E33C280);
  v89 = v60 + v86;
  v90 = v88;
  sub_20E0486F4(v89, v88 + v87, &qword_27C863B48, &unk_20E33C280);
  v91 = v115;
  v92 = *(v114 + 48);
  if (v92(v88, 1, v115) != 1)
  {
    sub_20E0486F4(v88, v74, &qword_27C863B48, &unk_20E33C280);
    if (v92(v88 + v87, 1, v91) != 1)
    {
      v93 = v88 + v87;
      v94 = v108;
      sub_20E1A0BDC(v93, v108, type metadata accessor for TranscriptProtoResponseManifest);
      v95 = _s23LighthouseDataProcessor31TranscriptProtoResponseManifestV2eeoiySbAC_ACtFZ_0(v74, v94);
      sub_20E1A0B7C(v94, type metadata accessor for TranscriptProtoResponseManifest);
      sub_20E1A0B7C(v74, type metadata accessor for TranscriptProtoResponseManifest);
      sub_20E04875C(v88, &qword_27C863B48, &unk_20E33C280);
      if ((v95 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_37;
    }

    sub_20E1A0B7C(v74, type metadata accessor for TranscriptProtoResponseManifest);
LABEL_35:
    v52 = &qword_27C868640;
    v53 = &qword_20E33B650;
LABEL_43:
    v54 = v90;
    goto LABEL_21;
  }

  if (v92(v88 + v87, 1, v91) != 1)
  {
    goto LABEL_35;
  }

  sub_20E04875C(v88, &qword_27C863B48, &unk_20E33C280);
LABEL_37:
  v96 = v66[9];
  v97 = *(v109 + 48);
  v98 = v112;
  sub_20E0486F4(v59 + v96, v112, &qword_27C868A20, &qword_20E345F10);
  v99 = v60 + v96;
  v90 = v98;
  sub_20E0486F4(v99, v98 + v97, &qword_27C868A20, &qword_20E345F10);
  v100 = v111;
  v101 = *(v110 + 48);
  if (v101(v98, 1, v111) == 1)
  {
    if (v101(v98 + v97, 1, v100) == 1)
    {
      sub_20E04875C(v98, &qword_27C868A20, &qword_20E345F10);
LABEL_45:
      v105 = v66[10];
      sub_20E3221C0();
      sub_20E1A0C44(&qword_27C865988, MEMORY[0x277D216C8]);
      v77 = sub_20E322850();
      return v77 & 1;
    }

    goto LABEL_42;
  }

  sub_20E0486F4(v98, v85, &qword_27C868A20, &qword_20E345F10);
  if (v101(v98 + v97, 1, v100) == 1)
  {
    sub_20E1A0B7C(v85, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
LABEL_42:
    v52 = &qword_27C868A28;
    v53 = &qword_20E33BE88;
    goto LABEL_43;
  }

  v102 = v98 + v97;
  v103 = v107;
  sub_20E1A0BDC(v102, v107, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  v104 = _s23LighthouseDataProcessor37ToolKitProtoTypeDisplayRepresentationV2eeoiySbAC_ACtFZ_0(v85, v103);
  sub_20E1A0B7C(v103, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E1A0B7C(v85, type metadata accessor for ToolKitProtoTypeDisplayRepresentation);
  sub_20E04875C(v98, &qword_27C868A20, &qword_20E345F10);
  if (v104)
  {
    goto LABEL_45;
  }

LABEL_22:
  v77 = 0;
  return v77 & 1;
}

uint64_t _s23LighthouseDataProcessor023ResponseGenerationProtodE5InputV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_20E322D60() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_20E322D60() & 1) == 0)
  {
    return 0;
  }

  if ((sub_20E1585FC(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0) + 36);
  sub_20E3221C0();
  sub_20E1A0C44(&qword_27C865988, MEMORY[0x277D216C8]);
  return sub_20E322850() & 1;
}

unint64_t sub_20E1A0890()
{
  result = qword_27C8689D8;
  if (!qword_27C8689D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8689D8);
  }

  return result;
}

unint64_t sub_20E1A08E8()
{
  result = qword_27C8689E0;
  if (!qword_27C8689E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8689E0);
  }

  return result;
}

uint64_t sub_20E1A0B7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20E1A0BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20E1A0C44(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_20E1A0C90(uint64_t *a1)
{
  v2 = type metadata accessor for ToolKitProtoTypedValue.CollectionValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C863B18, &qword_20E323EB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v13 = 0x277E1B000uLL;
  v14 = [objc_allocWithZone(MEMORY[0x277D58160]) init];
  v15 = v14;
  v39 = v14;
  if (v14)
  {
    [v14 setExists_];
    sub_20E1A11D4();
    v16 = v15;
    v17 = sub_20E322960();
    [v16 setItems_];

    v15 = v39;
  }

  v18 = *a1;
  v19 = *(*a1 + 16);
  if (v19)
  {
    v43 = type metadata accessor for ToolKitProtoTypedValue(0);
    v20 = *(v43 - 8);
    v21 = v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v42 = *(v20 + 72);
    v40 = (v20 + 48);
    v41 = (v20 + 56);
    while (1)
    {
      sub_20E1A1220(v21, v12, type metadata accessor for ToolKitProtoTypedValue);
      v22 = v43;
      (*v41)(v12, 0, 1, v43);
      v23 = [objc_allocWithZone(MEMORY[0x277D58138]) *(v13 + 3936)];
      sub_20E06E698(v12, v10);
      if ((*v40)(v10, 1, v22) == 1)
      {
        break;
      }

      v25 = *v10;
      sub_20E047CF8(*v10);
      sub_20E06E7D4(v10, type metadata accessor for ToolKitProtoTypedValue);
      v24 = v12;
      if ((~v25 & 0xF000000000000007) == 0)
      {
        goto LABEL_18;
      }

      v26 = v25 >> 61;
      if ((v25 >> 61) <= 2)
      {
        goto LABEL_15;
      }

      if (v26 > 4)
      {
        sub_20E047CA8(v25);
        v24 = v12;
LABEL_18:
        sub_20E06E708(v24);
        if (v23)
        {
          goto LABEL_19;
        }

        goto LABEL_6;
      }

      if (v26 == 3)
      {
        v27 = swift_projectBox();
        sub_20E1A1220(v27, v5, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
        if (v23)
        {
          v28 = v23;
          v29 = sub_20E04F548(v5);
          [v28 setCollection_];

          v13 = 0x277E1B000;
          sub_20E06E7D4(v5, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
          sub_20E06E708(v12);
          sub_20E047CA8(v25);
          goto LABEL_19;
        }

        sub_20E06E7D4(v5, type metadata accessor for ToolKitProtoTypedValue.CollectionValue);
        sub_20E06E708(v12);
        sub_20E047CA8(v25);
      }

      else
      {
LABEL_15:
        sub_20E047CA8(v25);
        if (v23)
        {
          v30 = v23;
          v31 = sub_20E24FF14(v12);
          [v30 setValue_];

          sub_20E06E708(v12);
LABEL_19:
          if (v15)
          {
            v32 = v15;
            v33 = [v32 items];
            if (v33)
            {
              v34 = v33;
              sub_20E1A11D4();
              v35 = sub_20E322970();

              v44 = v35;
              v36 = v23;
              MEMORY[0x20F32BF90]();
              if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_20E322990();
              }

              sub_20E3229B0();
              if (v44)
              {
                v37 = sub_20E322960();
              }

              else
              {
                v37 = 0;
              }

              [v32 setItems_];

              v13 = 0x277E1B000;
              v15 = v39;
            }

            else
            {
              [v32 setItems_];
            }
          }

          else
          {
          }

          goto LABEL_6;
        }

        sub_20E06E708(v12);
      }

LABEL_6:
      v21 += v42;
      if (!--v19)
      {
        return v15;
      }
    }

    sub_20E06E708(v12);
    v24 = v10;
    goto LABEL_18;
  }

  return v15;
}

unint64_t sub_20E1A11D4()
{
  result = qword_27C868A40;
  if (!qword_27C868A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C868A40);
  }

  return result;
}

uint64_t sub_20E1A1220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}