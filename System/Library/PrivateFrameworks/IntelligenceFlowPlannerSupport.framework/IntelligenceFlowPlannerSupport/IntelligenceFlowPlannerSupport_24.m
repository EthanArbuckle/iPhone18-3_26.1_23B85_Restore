uint64_t sub_22C03DB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D80, type metadata accessor for TranscriptProtoResponseParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03DBF0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EC00, type metadata accessor for TranscriptProtoResponseParameter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03DC60()
{
  sub_22BE2C988(&qword_27D90EC00, type metadata accessor for TranscriptProtoResponseParameter);

  return sub_22C270774();
}

uint64_t sub_22C03DCEC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D818);
  sub_22BE199F4(v0, qword_27D90D818);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "views";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "labels";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "options";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoResponseVisual.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 6:
        sub_22BE18E2C();
        sub_22C03E028();
        break;
      case 5:
        sub_22BE1C37C();
        sub_22C0478F0();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22BFE7680();
        break;
    }
  }
}

uint64_t sub_22C03E028()
{
  v0 = *(type metadata accessor for TranscriptProtoResponseVisual(0) + 24);
  type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  sub_22BE2C988(&qword_27D90FE40, type metadata accessor for TranscriptProtoResponseVisualOptions);
  return sub_22C2706F4();
}

void TranscriptProtoResponseVisual.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoUIType(0), sub_22BE2C988(&qword_27D90EC48, type metadata accessor for TranscriptProtoUIType), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    sub_22BE3A458();
    if (!v2 || (type metadata accessor for TranscriptProtoUILabel(0), sub_22BE2C988(&qword_27D90EC50, type metadata accessor for TranscriptProtoUILabel), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
    {
      v3 = sub_22BE17D60();
      sub_22C03E1F8(v3, v4, v5, v6);
      if (!v0)
      {
        v7 = type metadata accessor for TranscriptProtoResponseVisual(0);
        sub_22BE375E4(v7);
        sub_22BE363D4();
      }
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C03E1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EC58, &unk_22C2AE710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoResponseVisual(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90EC58, &unk_22C2AE710);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FE40, type metadata accessor for TranscriptProtoResponseVisualOptions);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoResponseVisual.== infix(_:_:)()
{
  sub_22BE19460();
  v6 = sub_22BE23708();
  v7 = type metadata accessor for TranscriptProtoResponseVisualOptions(v6);
  v8 = sub_22BE18000(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE18DFC();
  v11 = sub_22BE5CE4C(&qword_27D90EC58, &unk_22C2AE710);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1B01C();
  v15 = sub_22BE5CE4C(&qword_27D90EC60, &qword_22C297088);
  sub_22BE28F58(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE19E64();
  v19 = *v1;
  v20 = *v0;
  sub_22BE9DD00();
  if ((v21 & 1) == 0)
  {
    goto LABEL_14;
  }

  v22 = v1[1];
  v23 = v0[1];
  sub_22BE9E04C();
  if ((v24 & 1) == 0)
  {
    goto LABEL_14;
  }

  v25 = type metadata accessor for TranscriptProtoResponseVisual(0);
  sub_22C0B1694(v25);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22C0B1568();
  sub_22BE181B0(v2);
  if (v29)
  {
    sub_22BE181B0(v2 + v5);
    if (v29)
    {
      sub_22BE33928(v2, &qword_27D90EC58, &unk_22C2AE710);
      goto LABEL_8;
    }

LABEL_12:
    v30 = &qword_27D90EC60;
    v31 = &qword_22C297088;
LABEL_13:
    sub_22BE33928(v2, v30, v31);
LABEL_14:
    v28 = 0;
    goto LABEL_15;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE181B0(v2 + v5);
  if (v29)
  {
    sub_22C0B1AA4();
    goto LABEL_12;
  }

  sub_22C0B1D54();
  if (*v4 != *v3)
  {
    sub_22C0B08BC();
    sub_22BE291B0();
    sub_22C0B08BC();
    v30 = &qword_27D90EC58;
    v31 = &unk_22C2AE710;
    goto LABEL_13;
  }

  v32 = *(v7 + 20);
  sub_22C2704B4();
  sub_22BE18E5C();
  sub_22BE2C988(v33, v34);
  v35 = sub_22C0B1B14();
  sub_22C0B08BC();
  sub_22BE3EA80();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D90EC58, &unk_22C2AE710);
  if ((v35 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  sub_22C0B1A60();
  sub_22BE18E5C();
  sub_22BE2C988(v26, v27);
  v28 = sub_22BE35FB8();
LABEL_15:
  sub_22BE1C1DC(v28);
  sub_22BE1AABC();
}

uint64_t sub_22C03E73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D78, type metadata accessor for TranscriptProtoResponseVisual);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03E7BC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FE28, type metadata accessor for TranscriptProtoResponseVisual);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03E82C()
{
  sub_22BE2C988(&qword_27D90FE28, type metadata accessor for TranscriptProtoResponseVisual);

  return sub_22C270774();
}

uint64_t sub_22C03E93C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = sub_22BE1B2D4();
  v5 = v4(v3);
  sub_22BE3636C(v5);
  sub_22BE18E5C();
  sub_22BE2C988(v6, v7);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C03EA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D70, type metadata accessor for TranscriptProtoResponseVisualOptions);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C03EAC4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FE40, type metadata accessor for TranscriptProtoResponseVisualOptions);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C03EB34()
{
  sub_22BE2C988(&qword_27D90FE40, type metadata accessor for TranscriptProtoResponseVisualOptions);

  return sub_22C270774();
}

uint64_t sub_22C03EBCC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D848);
  sub_22BE199F4(v0, qword_27D90D848);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "archiveView";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "liveActivity";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "pluginSnippet";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "controlSnippet";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoUIType.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22BE236F4();
        sub_22C03EED4(v3, v4, v5, v6);
        break;
      case 2:
        v15 = sub_22BE236F4();
        sub_22C03F3CC(v15, v16, v17, v18);
        break;
      case 4:
        v7 = sub_22BE236F4();
        sub_22C03F8C4(v7, v8, v9, v10);
        break;
      case 5:
        v11 = sub_22BE236F4();
        sub_22C03FDBC(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C03EED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911398, &qword_22C2AE0C8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D911398, &qword_22C2AE0C8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90FE90, type metadata accessor for TranscriptProtoArchiveViewPayload);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911398, &qword_22C2AE0C8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911398, &qword_22C2AE0C8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911398, &qword_22C2AE0C8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911398, &qword_22C2AE0C8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D9091E0, &qword_22C27FDD8);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C03F3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9113A0, &qword_22C2AE0D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D9113A0, &qword_22C2AE0D0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FEA8, type metadata accessor for TranscriptProtoLiveActivityPayload);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9113A0, &qword_22C2AE0D0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9113A0, &qword_22C2AE0D0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9113A0, &qword_22C2AE0D0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9113A0, &qword_22C2AE0D0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D9091E0, &qword_22C27FDD8);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C03F8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9113A8, &qword_22C2AE0D8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D9113A8, &qword_22C2AE0D8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FEC0, type metadata accessor for TranscriptProtoPluginSnippetPayload);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9113A8, &qword_22C2AE0D8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9113A8, &qword_22C2AE0D8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9113A8, &qword_22C2AE0D8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9113A8, &qword_22C2AE0D8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D9091E0, &qword_22C27FDD8);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C03FDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoControlPayload(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoUitype(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9113B0, &qword_22C2AE0E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v22, &qword_27D9113B0, &qword_22C2AE0E0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FED8, type metadata accessor for TranscriptProtoControlPayload);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9113B0, &qword_22C2AE0E0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9113B0, &qword_22C2AE0E0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9113B0, &qword_22C2AE0E0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9113B0, &qword_22C2AE0E0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D9091E0, &qword_22C27FDD8);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoUIType.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22C0B137C();
  v7 = type metadata accessor for TranscriptProtoUitype(0);
  sub_22BE2B890(v7);
  if (v8)
  {
    goto LABEL_8;
  }

  sub_22BE1AEE4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v21 = sub_22BE17D78();
      sub_22C0405C4(v21, v22, v23, v24);
      break;
    case 2u:
      v13 = sub_22BE17D78();
      sub_22C0407CC(v13, v14, v15, v16);
      break;
    case 3u:
      v17 = sub_22BE17D78();
      sub_22C0409D4(v17, v18, v19, v20);
      break;
    default:
      v9 = sub_22BE17D78();
      sub_22C0403C0(v9, v10, v11, v12);
      break;
  }

  sub_22BE291DC();
  sub_22C0B08BC();
  if (!v0)
  {
LABEL_8:
    v25 = type metadata accessor for TranscriptProtoUIType(0);
    sub_22BE235A8(v25);
  }

  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C0403C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoUitype(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FE90, type metadata accessor for TranscriptProtoArchiveViewPayload);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0405C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoUitype(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FEA8, type metadata accessor for TranscriptProtoLiveActivityPayload);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0407CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoUitype(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FEC0, type metadata accessor for TranscriptProtoPluginSnippetPayload);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0409D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091E0, &qword_22C27FDD8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoControlPayload(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoUitype(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D9091E0, &qword_22C27FDD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FED8, type metadata accessor for TranscriptProtoControlPayload);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoUIType.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoUitype(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE1AEE4();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v12 = sub_22BE5CE4C(&qword_27D9091E8, &unk_22C27FDE0);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  v16 = MEMORY[0x28223BE20](v15);
  sub_22BE1AC54(v16);
  sub_22BE28764();
  sub_22BE26A1C();
  if (v17)
  {
    sub_22BE23D0C();
    if (v17)
    {
      sub_22BE33928(v0, &qword_27D9091E0, &qword_22C27FDD8);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoUIType(0);
      sub_22BE3636C(v19);
      sub_22BE18E5C();
      sub_22BE2C988(v20, v21);
      v18 = sub_22BE2B85C();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE23D0C();
  if (v17)
  {
    sub_22C0B1AA4();
LABEL_9:
    sub_22BE33928(v0, &qword_27D9091E8, &unk_22C27FDE0);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoUitype.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9091E0, &qword_22C27FDD8);
  if (&qword_27D9091E0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C040E6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D68, type metadata accessor for TranscriptProtoUIType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C040EEC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EC48, type metadata accessor for TranscriptProtoUIType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C040F5C()
{
  sub_22BE2C988(&qword_27D90EC48, type metadata accessor for TranscriptProtoUIType);

  return sub_22C270774();
}

uint64_t sub_22C041060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v34 = a2;
  v5 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D9091D0, &qword_22C27FDC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoLabel(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911390, &qword_22C2AE0C0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v28 = v13;
  v23 = sub_22BE1AEA8(v12, 1, v13);
  if (v23 == 1)
  {
    sub_22BE33928(v12, &qword_27D9091D0, &qword_22C27FDC8);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE33928(v22, &qword_27D911390, &qword_22C2AE0C0);
    sub_22C0B0868();
    sub_22C0B0868();
    sub_22BE19DC4(v22, 0, 1, v5);
  }

  sub_22BE2C988(&qword_27D90FE78, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  v24 = v31;
  sub_22C2706F4();
  if (v24)
  {
    v25 = v22;
    return sub_22BE33928(v25, &qword_27D911390, &qword_22C2AE0C0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911390, &qword_22C2AE0C0);
    v25 = v20;
    return sub_22BE33928(v25, &qword_27D911390, &qword_22C2AE0C0);
  }

  sub_22C0B0868();
  if (v23 != 1)
  {
    sub_22C270594();
  }

  sub_22BE33928(v22, &qword_27D911390, &qword_22C2AE0C0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D9091D0, &qword_22C27FDC8);
  sub_22C0B0868();
  return sub_22BE19DC4(v27, 0, 1, v28);
}

uint64_t sub_22C041544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091D0, &qword_22C27FDC8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoLabel(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9091D0, &qword_22C27FDC8);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FE78, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoUILabel.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoLabel(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE1AEE4();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v12 = sub_22BE5CE4C(&qword_27D9091D8, &qword_22C27FDD0);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  v16 = MEMORY[0x28223BE20](v15);
  sub_22BE1AC54(v16);
  sub_22BE28764();
  sub_22BE26A1C();
  if (v17)
  {
    sub_22BE23D0C();
    if (v17)
    {
      sub_22BE33928(v0, &qword_27D9091D0, &qword_22C27FDC8);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoUILabel(0);
      sub_22BE3636C(v19);
      sub_22BE18E5C();
      sub_22BE2C988(v20, v21);
      v18 = sub_22BE2B85C();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE23D0C();
  if (v17)
  {
    sub_22C0B1AA4();
LABEL_9:
    sub_22BE33928(v0, &qword_27D9091D8, &qword_22C27FDD0);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoLabel.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9091D0, &qword_22C27FDC8);
  if (&qword_27D9091D0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C0419A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D60, type metadata accessor for TranscriptProtoUILabel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C041A24(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EC50, type metadata accessor for TranscriptProtoUILabel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C041A94()
{
  sub_22BE2C988(&qword_27D90EC50, type metadata accessor for TranscriptProtoUILabel);

  return sub_22C270774();
}

uint64_t sub_22C041B20()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D878);
  sub_22BE199F4(v0, qword_27D90D878);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "affirmative";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "negative";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoUIConfirmationLabel.traverse<A>(visitor:)()
{
  sub_22BE1A730();
  if (!v2 || (sub_22BE25098(), result = sub_22C270844(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    sub_22BE1B448();
    if (!v6 || (sub_22BE2910C(), result = sub_22C270844(), !v0))
    {
      v7 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
      return sub_22BE25FB0(v7);
    }
  }

  return result;
}

uint64_t static TranscriptProtoUIConfirmationLabel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_22BE19FC4(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE3E81C();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  sub_22BE23A04(v8);
  sub_22BE18E5C();
  sub_22BE2C988(v9, v10);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C041EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D58, type metadata accessor for TranscriptProtoUIConfirmationLabel);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C041F6C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FE78, type metadata accessor for TranscriptProtoUIConfirmationLabel);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C041FDC()
{
  sub_22BE2C988(&qword_27D90FE78, type metadata accessor for TranscriptProtoUIConfirmationLabel);

  return sub_22C270774();
}

uint64_t sub_22C042068()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D890);
  sub_22BE199F4(v0, qword_27D90D890);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "viewData";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "containerBundleId";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "targetBundleId";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoArchiveViewPayload.traverse<A>(visitor:)()
{
  v1 = sub_22C0B149C();
  switch(v2 >> 62)
  {
    case 1uLL:
      v3 = v1;
      v4 = v1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v3 = *(v1 + 16);
      v4 = *(v1 + 24);
LABEL_6:
      if (v3 != v4)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_22BE25098();
      result = sub_22C2707E4();
      if (!v0)
      {
LABEL_8:
        v6 = sub_22BE17D60();
        result = sub_22BE4E2BC(v6);
        if (!v0)
        {
          v7 = sub_22BE17D60();
          sub_22BE4E2F4(v7);
          v8 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
          sub_22BE375E4(v8);
          return sub_22BE363D4();
        }
      }

      return result;
  }
}

uint64_t static TranscriptProtoArchiveViewPayload.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_22BE2F1D4(a1, a2);
  if ((MEMORY[0x2318A6720](v4) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2 + 24);
  if (*(v3 + 24))
  {
    if (!v5)
    {
      return 0;
    }

    sub_22BFB1A50();
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_22C274014() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  sub_22BE46B5C();
  if (v10)
  {
    if (v9)
    {
      sub_22BFB1A40();
      v13 = v8 && v11 == v12;
      if (v13 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_18;
      }
    }
  }

  else if (!v9)
  {
LABEL_18:
    v14 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
    sub_22C0B1BAC(v14);
    sub_22BE18E5C();
    sub_22BE2C988(v15, v16);
    return sub_22BE2B85C() & 1;
  }

  return 0;
}

uint64_t sub_22C042510(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D50, type metadata accessor for TranscriptProtoArchiveViewPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C042590(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FE90, type metadata accessor for TranscriptProtoArchiveViewPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C042600()
{
  sub_22BE2C988(&qword_27D90FE90, type metadata accessor for TranscriptProtoArchiveViewPayload);

  return sub_22C270774();
}

uint64_t sub_22C04279C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D48, type metadata accessor for TranscriptProtoLiveActivityPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04281C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FEA8, type metadata accessor for TranscriptProtoLiveActivityPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04288C()
{
  sub_22BE2C988(&qword_27D90FEA8, type metadata accessor for TranscriptProtoLiveActivityPayload);

  return sub_22C270774();
}

uint64_t sub_22C042918()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D8C0);
  sub_22BE199F4(v0, qword_27D90D8C0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pluginModelData";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bundleId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C042B30()
{
  sub_22BE1B0D8();
  while (1)
  {
    sub_22BE1AB1C();
    result = sub_22C270584();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_22BE25300();
      sub_22C2706A4();
    }

    else if (result == 1)
    {
      sub_22BE25300();
      v0();
    }
  }

  return result;
}

void sub_22C042BD4()
{
  sub_22BE2BB34();
  v4 = v3;
  sub_22BE18648();
  v5 = *v0;
  v6 = v2[1];
  v7 = sub_22BE3E8FC();
  if (sub_22BFC4080(v7, v8) || (sub_22BE3E8FC(), sub_22BE25098(), sub_22C2707E4(), !v1))
  {
    v9 = v2[2];
    v10 = v2[3];
    sub_22BE1B448();
    if (!v11 || (sub_22BE2910C(), sub_22C270844(), !v1))
    {
      v12 = v4(0);
      sub_22BE25FB0(v12);
    }
  }

  sub_22BEE93D4();
}

uint64_t sub_22C042C80(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v4 = sub_22BE2F1D4(a1, a2);
  if ((MEMORY[0x2318A6720](v4) & 1) == 0)
  {
    return 0;
  }

  sub_22BE3E81C();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  v8 = a3(0);
  sub_22BE23A04(v8);
  sub_22BE18E5C();
  sub_22BE2C988(v9, v10);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C042DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D40, type metadata accessor for TranscriptProtoPluginSnippetPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C042E20(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FEC0, type metadata accessor for TranscriptProtoPluginSnippetPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C042E90()
{
  sub_22BE2C988(&qword_27D90FEC0, type metadata accessor for TranscriptProtoPluginSnippetPayload);

  return sub_22C270774();
}

void sub_22C042F88()
{
  sub_22BE1B214();
  v1 = sub_22C0B149C();
  v4 = v3;
  switch(v2 >> 62)
  {
    case 1uLL:
      v5 = v1;
      v6 = v1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v5 = *(v1 + 16);
      v6 = *(v1 + 24);
LABEL_6:
      if (v5 != v6)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_22BE25098();
      sub_22C2707E4();
      if (!v0)
      {
LABEL_8:
        v7 = v4(0);
        sub_22BE294F8(v7);
      }

      sub_22BE25C6C();
      return;
  }
}

uint64_t sub_22C0430DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D38, type metadata accessor for TranscriptProtoControlPayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04315C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FED8, type metadata accessor for TranscriptProtoControlPayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0431CC()
{
  sub_22BE2C988(&qword_27D90FED8, type metadata accessor for TranscriptProtoControlPayload);

  return sub_22C270774();
}

uint64_t sub_22C043258()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D8F0);
  sub_22BE199F4(v0, qword_27D90D8F0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "actionEventId";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userAction";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "systemResponseEventId";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "input";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoSystemPromptResolution.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22BE374D4();
        sub_22C270694();
        break;
      case 2:
        sub_22BE18E2C();
        sub_22C0435B0();
        break;
      case 3:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22C043664();
        break;
      case 6:
        sub_22BE18E2C();
        sub_22C043718();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C0435B0()
{
  v0 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(0) + 24);
  type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  sub_22BE2C988(&qword_27D90FFC0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  return sub_22C2706F4();
}

uint64_t sub_22C043664()
{
  v0 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(0) + 28);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C043718()
{
  v0 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(0) + 32);
  type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  sub_22BE2C988(&qword_27D90FF08, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  return sub_22C2706F4();
}

uint64_t TranscriptProtoSystemPromptResolution.traverse<A>(visitor:)()
{
  v2 = sub_22BE3B0CC();
  result = sub_22BF97580(v2);
  if (!v0)
  {
    v4 = sub_22BE17D60();
    sub_22C043874(v4, v5, v6, v7);
    v8 = *v1;
    v9 = v1[1];
    sub_22BE1B448();
    if (v10)
    {
      sub_22BE2910C();
      sub_22C270844();
    }

    v11 = sub_22BE17D60();
    sub_22C043A48(v11, v12, v13, v14);
    v15 = sub_22BE17D60();
    sub_22C043C1C(v15, v16, v17, v18);
    v19 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(0) + 36);
    return sub_22BE1AC30();
  }

  return result;
}

uint64_t sub_22C043874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ECC0, &qword_22C297098);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90ECC0, &qword_22C297098);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FFC0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C043A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(0) + 28);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C043C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ECB0, &unk_22C2AE730);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoSystemPromptResolution(0) + 32);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90ECB0, &unk_22C2AE730);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90FF08, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoSystemPromptResolution.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22BE37EB4();
  v6 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(v5);
  v7 = sub_22BE28784(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE294E0();
  v10 = sub_22BE5CE4C(&qword_27D90ECB0, &unk_22C2AE730);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE181D0(v14, v75);
  v15 = sub_22BE5CE4C(&qword_27D90ECB8, &qword_22C297090);
  sub_22BE1B7B0(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  v19 = sub_22BE1AED0();
  v81 = type metadata accessor for TranscriptProtoStatementID(v19);
  v20 = sub_22BE18000(v81);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17A44();
  sub_22BE38A28(v23);
  v24 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v24);
  v26 = *(v25 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v27);
  sub_22BE35C94(v28, v76);
  v29 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE18000(v29);
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  v34 = sub_22C0B1620(v33, v77);
  v35 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(v34);
  v36 = sub_22BE18000(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BE18DFC();
  v39 = sub_22BE5CE4C(&qword_27D90ECC0, &qword_22C297098);
  sub_22BE19448(v39);
  v41 = *(v40 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  sub_22BE1B72C();
  v43 = sub_22BE5CE4C(&qword_27D90ECC8, &qword_22C2970A0);
  sub_22BE18000(v43);
  v45 = *(v44 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE19E64();
  v47 = v1[3];
  v48 = v4[3];
  if (v47)
  {
    if (!v48)
    {
      goto LABEL_45;
    }

    v49 = v1[2] == v4[2] && v47 == v48;
    if (!v49 && (sub_22C274014() & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else if (v48)
  {
    goto LABEL_45;
  }

  v79 = v2;
  v78 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v50 = v78[6];
  v51 = *(v43 + 48);
  sub_22C0B1F90();
  sub_22C0B1F90();
  sub_22BE3CAA4(v0);
  if (v49)
  {
    sub_22BE3CAA4(v0 + v51);
    if (v49)
    {
      sub_22BE33928(v0, &qword_27D90ECC0, &qword_22C297098);
      goto LABEL_20;
    }

LABEL_18:
    v53 = &qword_27D90ECC8;
    v54 = &qword_22C2970A0;
    v55 = v0;
LABEL_44:
    sub_22BE33928(v55, v53, v54);
    goto LABEL_45;
  }

  sub_22BE1AB74();
  sub_22BE22868();
  sub_22BE3CAA4(v0 + v51);
  if (v52)
  {
    sub_22C0B1BC4();
    goto LABEL_18;
  }

  sub_22C0B0868();
  static TranscriptProtoSystemPromptResolutionUserAction.== infix(_:_:)();
  v57 = v56;
  sub_22BE431C0();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90ECC0, &qword_22C297098);
  if ((v57 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_20:
  v58 = *v1 == *v4 && v1[1] == v4[1];
  if (!v58 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_45;
  }

  v59 = v78[7];
  v60 = *(v29 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v61 = sub_22BE3C598();
  sub_22BE36144(v61, v62);
  if (v49)
  {
    sub_22BE18190(v82 + v60);
    v63 = v79;
    if (v49)
    {
      sub_22BE33928(v82, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  sub_22BE22868();
  sub_22BE18190(v82 + v60);
  v63 = v79;
  if (v64)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_33:
    v53 = &qword_27D909100;
    v54 = &unk_22C27FD00;
    v55 = v82;
    goto LABEL_44;
  }

  sub_22BE18AA8();
  v60 = v80;
  sub_22C0B0868();
  v65 = sub_22BE1C2A0();
  static TranscriptProtoStatementID.== infix(_:_:)(v65, v66);
  sub_22BE39304();
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE33928(v82, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((&unk_22C2AE4A0 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_35:
  v67 = v78[8];
  sub_22C0B1DE4();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  v68 = sub_22BE23E90();
  sub_22BE36144(v68, v69);
  if (v49)
  {
    sub_22BE18190(v63 + v60);
    if (v49)
    {
      sub_22BE33928(v63, &qword_27D90ECB0, &unk_22C2AE730);
LABEL_48:
      v72 = v78[9];
      sub_22C2704B4();
      sub_22BE18E5C();
      sub_22BE2C988(v73, v74);
      sub_22BE3A008();
      v71 = sub_22C272FD4();
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  sub_22C0B1FA8();
  sub_22BE18190(v63 + v60);
  if (v70)
  {
    sub_22C0B1AFC();
LABEL_43:
    v53 = &qword_27D90ECB8;
    v54 = &qword_22C297090;
    v55 = v63;
    goto LABEL_44;
  }

  sub_22C0B0868();
  sub_22BE1C2A0();
  static TranscriptProtoSystemPromptResolutionInput.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE1AB74();
  sub_22C0B08BC();
  sub_22BE33928(v63, &qword_27D90ECB0, &unk_22C2AE730);
  if (&unk_22C2AE730)
  {
    goto LABEL_48;
  }

LABEL_45:
  v71 = 0;
LABEL_46:
  sub_22BE1C1DC(v71);
  sub_22BE1AABC();
}

uint64_t sub_22C0444DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D30, type metadata accessor for TranscriptProtoSystemPromptResolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04455C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FEF0, type metadata accessor for TranscriptProtoSystemPromptResolution);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0445CC()
{
  sub_22BE2C988(&qword_27D90FEF0, type metadata accessor for TranscriptProtoSystemPromptResolution);

  return sub_22C270774();
}

uint64_t sub_22C044658()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D908);
  sub_22BE199F4(v0, qword_27D90D908);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "touch";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "headGesture";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "text";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "speech";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoSystemPromptResolutionInput.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 2:
        sub_22BE231C0();
        sub_22BFCA9A8();
        break;
      case 3:
        v3 = sub_22BE236F4();
        sub_22C044994(v3, v4, v5, v6);
        break;
      case 4:
        v7 = sub_22BE236F4();
        sub_22C044E8C(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C044994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90ECD8, &qword_22C2CC950);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911380, &qword_22C2AE0B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90ECD8, &qword_22C2CC950);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D911380, &qword_22C2AE0B0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911380, &qword_22C2AE0B0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911380, &qword_22C2AE0B0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911380, &qword_22C2AE0B0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911380, &qword_22C2AE0B0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90ECD8, &qword_22C2CC950);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C044E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90ECD8, &qword_22C2CC950);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911388, &qword_22C2AE0B8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90ECD8, &qword_22C2CC950);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D911388, &qword_22C2AE0B8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90F470, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911388, &qword_22C2AE0B8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911388, &qword_22C2AE0B8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911388, &qword_22C2AE0B8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911388, &qword_22C2AE0B8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90ECD8, &qword_22C2CC950);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoSystemPromptResolutionInput.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22C0B137C();
  v7 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  sub_22BE2B890(v7);
  if (!v8)
  {
    sub_22BE1AEE4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v19 = sub_22BE17D78();
        sub_22C045AA4(v19, v20, v21, v22);
        goto LABEL_12;
      case 2:
        sub_22BE17D78();
        sub_22C0454D4();
        goto LABEL_9;
      case 3:
        v15 = sub_22BE17D78();
        sub_22C045678(v15, v16, v17, v18);
LABEL_9:
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
      default:
        v11 = sub_22BE17D78();
        sub_22C0458A0(v11, v12, v13, v14);
LABEL_12:
        sub_22BE291DC();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
    }
  }

  v9 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
  sub_22BE235A8(v9);
LABEL_4:
  sub_22BE1965C();
  sub_22BEE93D4();
}

void sub_22C0454D4()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_22C270424();
  v8 = sub_22BE179D8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE1955C();
  v13 = sub_22BE5CE4C(v6, v4);
  sub_22BE19448(v13);
  v15 = *(v14 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  sub_22BE25CD0();
  sub_22BE1AB1C();
  sub_22BE22868();
  v17 = v2(0);
  v18 = sub_22BE26188();
  sub_22BE1AB5C(v18, v19, v17);
  if (v20)
  {
    sub_22BE33928(v0, v6, v4);
  }

  else
  {
    sub_22BE1B328();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_22BE431C0();
    sub_22C0B08BC();
    if (EnumCaseMultiPayload == 2)
    {
      sub_22C270414();
      sub_22BE1B470();
      sub_22BE2C988(v22, v23);
      sub_22C0B1684();
      sub_22C2707D4();
      v24 = *(v10 + 8);
      v25 = sub_22BE39EAC();
      v26(v25);
      sub_22BE18478();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_22C045678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90ECD8, &qword_22C2CC950);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90ECD8, &qword_22C2CC950);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 3)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C0458A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ECD8, &qword_22C2CC950);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90ECD8, &qword_22C2CC950);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C045AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ECD8, &qword_22C2CC950);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90ECD8, &qword_22C2CC950);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90F470, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoSystemPromptResolutionInput.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoSystemPromptResolutionInputEnum(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE1AEE4();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v12 = sub_22BE5CE4C(&qword_27D90ECE0, &qword_22C2970A8);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  v16 = MEMORY[0x28223BE20](v15);
  sub_22BE1AC54(v16);
  sub_22BE28764();
  sub_22BE26A1C();
  if (v17)
  {
    sub_22BE23D0C();
    if (v17)
    {
      sub_22BE33928(v0, &qword_27D90ECD8, &qword_22C2CC950);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoSystemPromptResolutionInput(0);
      sub_22BE3636C(v19);
      sub_22BE18E5C();
      sub_22BE2C988(v20, v21);
      v18 = sub_22BE2B85C();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE23D0C();
  if (v17)
  {
    sub_22C0B1AA4();
LABEL_9:
    sub_22BE33928(v0, &qword_27D90ECE0, &qword_22C2970A8);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoSystemPromptResolutionInputEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90ECD8, &qword_22C2CC950);
  if (&qword_27D90ECD8)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C045F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D28, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C045FBC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FF08, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04602C()
{
  sub_22BE2C988(&qword_27D90FF08, type metadata accessor for TranscriptProtoSystemPromptResolutionInput);

  return sub_22C270774();
}

uint64_t sub_22C0460B8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D920);
  sub_22BE199F4(v0, qword_27D90D920);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 3;
  *v6 = "resolvedParameters";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "unresolvedParameterSets";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "isConfirmed";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "statementId";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "isAuthenticated";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 9;
  *v18 = "tool";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoActionResolverRequest.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        sub_22BE18E2C();
        sub_22C0464A8();
        break;
      case 4:
        sub_22BE1C37C();
        sub_22BFE7680();
        break;
      case 6:
      case 8:
        sub_22BE2037C();
        sub_22C2705C4();
        break;
      case 7:
        sub_22BE18E2C();
        sub_22C04655C();
        break;
      case 9:
        sub_22BE18E2C();
        sub_22C046610();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C0464A8()
{
  v0 = *(type metadata accessor for TranscriptProtoActionResolverRequest(0) + 28);
  type metadata accessor for TranscriptProtoParameterSet(0);
  sub_22BE2C988(&qword_27D90ECF0, type metadata accessor for TranscriptProtoParameterSet);
  return sub_22C2706F4();
}

uint64_t sub_22C04655C()
{
  v0 = *(type metadata accessor for TranscriptProtoActionResolverRequest(0) + 32);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

uint64_t sub_22C046610()
{
  v0 = *(type metadata accessor for TranscriptProtoActionResolverRequest(0) + 36);
  type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  return sub_22C2706F4();
}

void TranscriptProtoActionResolverRequest.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v2 = sub_22BE3B0CC();
  sub_22C0467E8(v2, v3, v4, v5);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v6)
    {
      type metadata accessor for TranscriptProtoParameterSet(0);
      sub_22BE2C988(&qword_27D90ECF0, type metadata accessor for TranscriptProtoParameterSet);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    if (*(v1 + 8) == 1)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    v7 = sub_22BE17D60();
    sub_22C0469BC(v7, v8, v9, v10);
    if (*(v1 + 9) == 1)
    {
      sub_22BE1BAB8();
      sub_22C2707C4();
    }

    v11 = sub_22BE17D60();
    sub_22C046B90(v11, v12, v13, v14);
    v15 = *(type metadata accessor for TranscriptProtoActionResolverRequest(0) + 40);
    sub_22BE1AC30();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C0467E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ECF8, &qword_22C2970B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoParameterSet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoActionResolverRequest(0) + 28);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90ECF8, &qword_22C2970B0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ECF0, type metadata accessor for TranscriptProtoParameterSet);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C0469BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoActionResolverRequest(0) + 32);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C046B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoActionResolverRequest(0) + 36);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90E670, &unk_22C2CC890);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoActionResolverRequest.== infix(_:_:)()
{
  sub_22BE19460();
  v6 = v5;
  v7 = sub_22BE48298();
  v89 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(v7);
  v8 = sub_22BE18000(v89);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17A44();
  v85 = v11;
  v12 = sub_22BE5CE4C(&qword_27D90E670, &unk_22C2CC890);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1A174();
  sub_22C0B1ABC(v16);
  v88 = sub_22BE5CE4C(&qword_27D90E678, &qword_22C296F38);
  sub_22BE18000(v88);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  v21 = sub_22BE4098C(v20, v85);
  v22 = type metadata accessor for TranscriptProtoStatementID(v21);
  v23 = sub_22BE28784(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE17A44();
  sub_22BEE94C8(v26);
  v27 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v27);
  v29 = *(v28 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE3C048(v31, v86);
  v32 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE1B7B0(v32);
  v34 = *(v33 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE35C94(v36, v87);
  v37 = type metadata accessor for TranscriptProtoParameterSet(0);
  v38 = sub_22BE18000(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE38390();
  v41 = sub_22BE3E79C();
  v43 = sub_22BE5CE4C(v41, v42);
  sub_22BE19448(v43);
  v45 = *(v44 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v46);
  sub_22BE1A8B4();
  v47 = sub_22BE5CE4C(&qword_27D90ED00, &qword_22C2970B8);
  sub_22C0B1A7C(v47);
  v49 = *(v48 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v50);
  sub_22BE1B72C();
  v92 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v51 = v92[7];
  v52 = *(v3 + 56);
  sub_22C0B1CCC();
  v53 = v6;
  sub_22C0B1CCC();
  sub_22BE181B0(v0);
  if (v61)
  {
    sub_22BE181B0(v0 + v52);
    if (v61)
    {
      sub_22BE33928(v0, &qword_27D90ECF8, &qword_22C2970B0);
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  sub_22BE1A6BC();
  sub_22BE22868();
  sub_22BE181B0(v0 + v52);
  if (v61)
  {
    sub_22C0B08BC();
LABEL_16:
    v62 = &qword_27D90ED00;
    v63 = &qword_22C2970B8;
    goto LABEL_17;
  }

  sub_22C0B0868();
  v66 = *v4;
  v67 = *v1;
  sub_22BE9C600();
  if (v68)
  {
    v69 = *(v37 + 20);
    sub_22C2704B4();
    sub_22BE18E5C();
    sub_22BE2C988(v70, v71);
    v72 = sub_22C272FD4();
    sub_22C0B08BC();
    sub_22C0B08BC();
    sub_22BE33928(v0, &qword_27D90ECF8, &qword_22C2970B0);
    if ((v72 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_6:
    v54 = *v2;
    v55 = *v6;
    sub_22BE9C024();
    if ((v56 & 1) == 0 || *(v2 + 8) != *(v6 + 8))
    {
      goto LABEL_19;
    }

    v57 = v91;
    v58 = v92[8];
    sub_22C0B1DE4();
    sub_22BE27B84();
    sub_22BE22868();
    sub_22BE27B84();
    sub_22BE22868();
    v59 = sub_22BE2BA98();
    sub_22BE36144(v59, v60);
    if (v61)
    {
      sub_22BE18A84();
      if (v61)
      {
        sub_22BE33928(v91, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_31:
        if (*(v2 + 9) != *(v53 + 9))
        {
          goto LABEL_19;
        }

        v76 = v92[9];
        sub_22C0B1B6C();
        sub_22BE27B84();
        sub_22BE22868();
        v57 = v90;
        sub_22BE27B84();
        sub_22BE22868();
        v77 = sub_22BE23E90();
        sub_22BE36144(v77, v78);
        if (v61)
        {
          sub_22BE18A84();
          if (v61)
          {
            sub_22BE33928(v90, &qword_27D90E670, &unk_22C2CC890);
            goto LABEL_42;
          }
        }

        else
        {
          sub_22BE22868();
          sub_22BE18A84();
          if (!v79)
          {
            sub_22BE41FDC();
            sub_22C0B0868();
            v80 = sub_22BE38970();
            static TranscriptProtoGlobalToolIdentifier.== infix(_:_:)(v80, v81);
            sub_22BE39304();
            sub_22BE291B0();
            sub_22C0B08BC();
            sub_22BE33928(v90, &qword_27D90E670, &unk_22C2CC890);
            if ((&unk_22C2CC890 & 1) == 0)
            {
              goto LABEL_19;
            }

LABEL_42:
            v82 = v92[10];
            sub_22C2704B4();
            sub_22BE18E5C();
            sub_22BE2C988(v83, v84);
            sub_22BE3A008();
            v65 = sub_22C272FD4();
            goto LABEL_20;
          }

          sub_22BE30F90();
          sub_22C0B08BC();
        }

        v62 = &qword_27D90E678;
        v63 = &qword_22C296F38;
        goto LABEL_29;
      }
    }

    else
    {
      sub_22BE22868();
      sub_22BE18A84();
      if (!v73)
      {
        sub_22BE18AA8();
        sub_22C0B0868();
        v74 = sub_22BE38970();
        static TranscriptProtoStatementID.== infix(_:_:)(v74, v75);
        sub_22BE39304();
        sub_22BE291B0();
        sub_22C0B08BC();
        sub_22BE33928(v91, &qword_27D9090F8, &unk_22C2AE4A0);
        if ((&unk_22C2AE4A0 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }

      sub_22BE17DB0();
      sub_22C0B08BC();
    }

    v62 = &qword_27D909100;
    v63 = &unk_22C27FD00;
LABEL_29:
    v64 = v57;
    goto LABEL_18;
  }

  sub_22C0B08BC();
  sub_22BE2565C();
  sub_22C0B08BC();
  v62 = &qword_27D90ECF8;
  v63 = &qword_22C2970B0;
LABEL_17:
  v64 = v0;
LABEL_18:
  sub_22BE33928(v64, v62, v63);
LABEL_19:
  v65 = 0;
LABEL_20:
  sub_22BE1C1DC(v65);
  sub_22BE1AABC();
}

uint64_t sub_22C047498(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D20, type metadata accessor for TranscriptProtoActionResolverRequest);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C047518(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FF20, type metadata accessor for TranscriptProtoActionResolverRequest);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C047588()
{
  sub_22BE2C988(&qword_27D90FF20, type metadata accessor for TranscriptProtoActionResolverRequest);

  return sub_22C270774();
}

uint64_t sub_22C047614()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D938);
  sub_22BE199F4(v0, qword_27D90D938);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "requiredContext";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "utteranceContext";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoContextRetrieved.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 4)
    {
      sub_22BE1C37C();
      sub_22C0478F0();
    }

    else if (v1 == 3)
    {
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void sub_22C0478F0()
{
  sub_22BE19130();
  v0 = sub_22BE37708();
  v1(v0);
  v2 = sub_22BE3C5E4();
  sub_22BE2C988(v2, v3);
  sub_22BE38514();
  sub_22C2706E4();
  sub_22BE18478();
}

void TranscriptProtoContextRetrieved.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoRetrievedContextStatement(0), sub_22C0B1550(), sub_22BE2C988(v2, v3), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    sub_22BE3A458();
    if (!v4 || (type metadata accessor for TranscriptProtoRetrievedContextStatement(0), sub_22C0B1550(), sub_22BE2C988(v5, v6), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
    {
      v7 = type metadata accessor for TranscriptProtoContextRetrieved(0);
      sub_22BE25FB0(v7);
    }
  }

  sub_22BE25C6C();
}

uint64_t static TranscriptProtoContextRetrieved.== infix(_:_:)()
{
  sub_22BE18378();
  v3 = *v2;
  v5 = *v4;
  sub_22BE9A770();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 8);
  v8 = *(v0 + 8);
  sub_22BE9A770();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  sub_22BE23A04(v10);
  sub_22BE18E5C();
  sub_22BE2C988(v11, v12);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C047B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D18, type metadata accessor for TranscriptProtoContextRetrieved);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C047BE0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FF38, type metadata accessor for TranscriptProtoContextRetrieved);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C047C50()
{
  sub_22BE2C988(&qword_27D90FF38, type metadata accessor for TranscriptProtoContextRetrieved);

  return sub_22C270774();
}

uint64_t sub_22C047CDC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D950);
  sub_22BE199F4(v0, qword_27D90D950);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "retrievedContext";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoRetrievedContextStatement.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_22BE18E2C();
      sub_22C047F68();
    }

    else if (v1 == 1)
    {
      sub_22BE1A338();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C047F68()
{
  v0 = *(type metadata accessor for TranscriptProtoRetrievedContextStatement(0) + 20);
  type metadata accessor for ContextProtoRetrievedContext(0);
  sub_22BE2C988(&qword_27D90C0F8, type metadata accessor for ContextProtoRetrievedContext);
  return sub_22C2706F4();
}

uint64_t sub_22C048070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091A8, &qword_22C27FDA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for ContextProtoRetrievedContext(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoRetrievedContextStatement(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9091A8, &qword_22C27FDA0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90C0F8, type metadata accessor for ContextProtoRetrievedContext);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoRetrievedContextStatement.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE3CD04();
  v2 = type metadata accessor for ContextProtoRetrievedContext(0);
  v3 = sub_22BE272C0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22BE38A28(v6);
  v7 = sub_22BE5CE4C(&qword_27D9091A8, &qword_22C27FDA0);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE29250(v11, v45);
  v12 = sub_22BE5CE4C(&qword_27D9091B0, &qword_22C27FDA8);
  sub_22BE28784(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E64();
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  v17 = sub_22BE18000(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE294E0();
  v20 = sub_22BE18040();
  v22 = sub_22BE5CE4C(v20, v21);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1B72C();
  v26 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  v30 = MEMORY[0x28223BE20](v29);
  sub_22C0B142C(v30);
  sub_22C0B15FC();
  sub_22BE23B00(v1);
  if (v31)
  {
    sub_22BE22E64();
    if (v31)
    {
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v32 = &qword_27D909100;
    v33 = &unk_22C27FD00;
    v34 = v1;
LABEL_20:
    sub_22BE33928(v34, v32, v33);
    goto LABEL_21;
  }

  sub_22BE3C968();
  sub_22BE22868();
  sub_22BE22E64();
  if (v31)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B13E4();
  sub_22C0B0868();
  v35 = sub_22BE1A6BC();
  v37 = static TranscriptProtoStatementID.== infix(_:_:)(v35, v36);
  sub_22BE2565C();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v38 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  sub_22BE35EA0(v38);
  sub_22BE4270C();
  sub_22BE3AEBC();
  v39 = sub_22BE2BA98();
  sub_22BE36144(v39, v40);
  if (v31)
  {
    sub_22BE18A84();
    if (v31)
    {
      sub_22BE33928(v0, &qword_27D9091A8, &qword_22C27FDA0);
LABEL_24:
      sub_22C0B1CFC();
      sub_22BE18E5C();
      sub_22BE2C988(v43, v44);
      v42 = sub_22C0B16D4();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22BE3CC50();
  sub_22BE18A84();
  if (v41)
  {
    sub_22C0B1AA4();
LABEL_19:
    v32 = &qword_27D9091B0;
    v33 = &qword_22C27FDA8;
    v34 = v0;
    goto LABEL_20;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static ContextProtoRetrievedContext.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9091A8, &qword_22C27FDA0);
  if (&qword_22C27FDA0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v42 = 0;
LABEL_22:
  sub_22BE1C1DC(v42);
  sub_22BE1AABC();
}

uint64_t sub_22C048670(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D10, type metadata accessor for TranscriptProtoRetrievedContextStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0486F0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90ED10, type metadata accessor for TranscriptProtoRetrievedContextStatement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C048760()
{
  sub_22BE2C988(&qword_27D90ED10, type metadata accessor for TranscriptProtoRetrievedContextStatement);

  return sub_22C270774();
}

uint64_t sub_22C0487F8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D968);
  sub_22BE199F4(v0, qword_27D90D968);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "statementId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dynamicEnumerationEntity";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoDynamicEnumerationEntityStatement.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      sub_22BE18E2C();
      sub_22C048A84();
    }

    else if (v1 == 1)
    {
      sub_22BE1A338();
      sub_22BE1C37C();
      sub_22BFE8884();
    }
  }
}

uint64_t sub_22C048A84()
{
  v0 = *(type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0) + 20);
  type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  sub_22BE2C988(&qword_27D90C0F0, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  return sub_22C2706F4();
}

uint64_t sub_22C048B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090E8, &qword_22C2B5A90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9090E8, &qword_22C2B5A90);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90C0F0, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoDynamicEnumerationEntityStatement.== infix(_:_:)()
{
  sub_22BE19460();
  sub_22BE3CD04();
  v2 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v3 = sub_22BE272C0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE17A44();
  sub_22BE38A28(v6);
  v7 = sub_22BE5CE4C(&qword_27D9090E8, &qword_22C2B5A90);
  sub_22BE19448(v7);
  v9 = *(v8 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  sub_22BE29250(v11, v45);
  v12 = sub_22BE5CE4C(&qword_27D9090F0, &unk_22C27FCF0);
  sub_22BE28784(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE19E64();
  v16 = type metadata accessor for TranscriptProtoStatementID(0);
  v17 = sub_22BE18000(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE294E0();
  v20 = sub_22BE18040();
  v22 = sub_22BE5CE4C(v20, v21);
  sub_22BE19448(v22);
  v24 = *(v23 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v25);
  sub_22BE1B72C();
  v26 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE19448(v26);
  v28 = *(v27 + 64);
  sub_22BE179FC();
  v30 = MEMORY[0x28223BE20](v29);
  sub_22C0B142C(v30);
  sub_22C0B15FC();
  sub_22BE23B00(v1);
  if (v31)
  {
    sub_22BE22E64();
    if (v31)
    {
      sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
      goto LABEL_11;
    }

LABEL_9:
    v32 = &qword_27D909100;
    v33 = &unk_22C27FD00;
    v34 = v1;
LABEL_20:
    sub_22BE33928(v34, v32, v33);
    goto LABEL_21;
  }

  sub_22BE3C968();
  sub_22BE22868();
  sub_22BE22E64();
  if (v31)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22C0B13E4();
  sub_22C0B0868();
  v35 = sub_22BE1A6BC();
  v37 = static TranscriptProtoStatementID.== infix(_:_:)(v35, v36);
  sub_22BE2565C();
  sub_22C0B08BC();
  sub_22BE19454();
  sub_22C0B08BC();
  sub_22BE33928(v1, &qword_27D9090F8, &unk_22C2AE4A0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v38 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  sub_22BE35EA0(v38);
  sub_22BE4270C();
  sub_22BE3AEBC();
  v39 = sub_22BE2BA98();
  sub_22BE36144(v39, v40);
  if (v31)
  {
    sub_22BE18A84();
    if (v31)
    {
      sub_22BE33928(v0, &qword_27D9090E8, &qword_22C2B5A90);
LABEL_24:
      sub_22C0B1CFC();
      sub_22BE18E5C();
      sub_22BE2C988(v43, v44);
      v42 = sub_22C0B16D4();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_22BE3CC50();
  sub_22BE18A84();
  if (v41)
  {
    sub_22C0B1AA4();
LABEL_19:
    v32 = &qword_27D9090F0;
    v33 = &unk_22C27FCF0;
    v34 = v0;
    goto LABEL_20;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static ContextProtoDynamicEnumerationEntity.== infix(_:_:)();
  sub_22BE39304();
  sub_22BE291B0();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090E8, &qword_22C2B5A90);
  if (&qword_22C2B5A90)
  {
    goto LABEL_24;
  }

LABEL_21:
  v42 = 0;
LABEL_22:
  sub_22BE1C1DC(v42);
  sub_22BE1AABC();
}

uint64_t sub_22C04918C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D08, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04920C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90F128, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04927C()
{
  sub_22BE2C988(&qword_27D90F128, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);

  return sub_22C270774();
}

uint64_t sub_22C0493AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910D00, type metadata accessor for TranscriptProtoSafetyModeRelease);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04942C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FF70, type metadata accessor for TranscriptProtoSafetyModeRelease);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04949C()
{
  sub_22BE2C988(&qword_27D90FF70, type metadata accessor for TranscriptProtoSafetyModeRelease);

  return sub_22C270774();
}

uint64_t sub_22C0495E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_22BE18378();
  v7 = *(v6 + 8);
  v8 = v3[1];
  if (v7)
  {
    if (v8)
    {
      v9 = *v4 == *v3 && v7 == v8;
      if (v9 || (sub_22C274014() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v8)
  {
LABEL_8:
    v10 = a3(0);
    sub_22BE3636C(v10);
    sub_22BE18E5C();
    sub_22BE2C988(v11, v12);
    return sub_22BE2B85C() & 1;
  }

  return 0;
}

uint64_t sub_22C04971C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CF8, type metadata accessor for TranscriptProtoSafetyModeException);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04979C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FF88, type metadata accessor for TranscriptProtoSafetyModeException);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04980C()
{
  sub_22BE2C988(&qword_27D90FF88, type metadata accessor for TranscriptProtoSafetyModeException);

  return sub_22C270774();
}

void TranscriptProtoParameterSet.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoParameter(0), sub_22BE2C988(&qword_27D90ED40, type metadata accessor for TranscriptProtoParameter), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v2 = type metadata accessor for TranscriptProtoParameterSet(0);
    sub_22BE294F8(v2);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C049AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CF0, type metadata accessor for TranscriptProtoParameterSet);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C049B28(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90ECF0, type metadata accessor for TranscriptProtoParameterSet);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C049B98()
{
  sub_22BE2C988(&qword_27D90ECF0, type metadata accessor for TranscriptProtoParameterSet);

  return sub_22C270774();
}

uint64_t sub_22C049C24()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D9C8);
  sub_22BE199F4(v0, qword_27D90D9C8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collectionIndex";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "candidate";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoParameter.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22BE18E2C();
        sub_22C049ECC();
        break;
      case 2:
        sub_22BE374D4();
        sub_22C270644();
        break;
      case 1:
        sub_22BE239F4();
        sub_22C2706A4();
        break;
    }
  }

  return result;
}

uint64_t sub_22C049ECC()
{
  v0 = *(type metadata accessor for TranscriptProtoParameter(0) + 24);
  type metadata accessor for TranscriptProtoCandidate(0);
  sub_22BE2C988(&qword_27D90EA50, type metadata accessor for TranscriptProtoCandidate);
  return sub_22C2706F4();
}

void sub_22C049FD4()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_22BE1A730();
  if (!v7 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    v8 = sub_22BE17D60();
    v6(v8);
    if (!v0)
    {
      v9 = sub_22BE17D60();
      v4(v9);
      v10 = v2(0);
      sub_22BE375E4(v10);
      sub_22BE363D4();
    }
  }

  sub_22BE18478();
}

uint64_t sub_22C04A068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9091B8, &qword_22C27FDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoCandidate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoParameter(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9091B8, &qword_22C27FDB0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90EA50, type metadata accessor for TranscriptProtoCandidate);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoParameter.== infix(_:_:)()
{
  sub_22BE19460();
  v3 = sub_22BE1B2D4();
  v4 = type metadata accessor for TranscriptProtoCandidate(v3);
  v5 = sub_22BE26880(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE38390();
  v8 = sub_22BE5CE4C(&qword_27D9091B8, &qword_22C27FDB0);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v12 = sub_22BE5CE4C(&qword_27D9091C0, &qword_22C27FDB8);
  sub_22BE28F58(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE20394();
  v18 = v18 && v16 == v17;
  if (!v18 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (*(v1 + 24))
  {
    if (!*(v0 + 24))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v19 = *(v0 + 16);
    v20 = *(v1 + 16);
    sub_22BEC02E4();
    if (v21)
    {
      goto LABEL_19;
    }
  }

  v22 = type metadata accessor for TranscriptProtoParameter(0);
  sub_22C0B1694(v22);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v18)
  {
    sub_22BE19538();
    if (v18)
    {
      sub_22BE33928(v2, &qword_27D9091B8, &qword_22C27FDB0);
      goto LABEL_22;
    }
  }

  else
  {
    sub_22BE194F8();
    sub_22BE22868();
    sub_22BE19538();
    if (!v23)
    {
      sub_22C0B0868();
      sub_22BE38970();
      static TranscriptProtoCandidate.== infix(_:_:)();
      v26 = v25;
      sub_22BE324FC();
      sub_22C0B08BC();
      sub_22BE1AB1C();
      sub_22C0B08BC();
      sub_22BE33928(v2, &qword_27D9091B8, &qword_22C27FDB0);
      if ((v26 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_22:
      sub_22C0B1A60();
      sub_22BE18E5C();
      sub_22BE2C988(v27, v28);
      v24 = sub_22BE2B85C();
      goto LABEL_20;
    }

    sub_22C0B1AA4();
  }

  sub_22BE33928(v2, &qword_27D9091C0, &qword_22C27FDB8);
LABEL_19:
  v24 = 0;
LABEL_20:
  sub_22BE1C1DC(v24);
  sub_22BE1AABC();
}

uint64_t sub_22C04A524(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CE8, type metadata accessor for TranscriptProtoParameter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04A5A4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90ED40, type metadata accessor for TranscriptProtoParameter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04A614()
{
  sub_22BE2C988(&qword_27D90ED40, type metadata accessor for TranscriptProtoParameter);

  return sub_22C270774();
}

uint64_t sub_22C04A6AC()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90D9E0);
  sub_22BE199F4(v0, qword_27D90D9E0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C290D20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "actionConfirmed";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterValueSelected";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameterConfirmed";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "disambiguationIndexSelected";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "requirementAddressed";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "actionCanceled";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoSystemPromptResolutionUserAction.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 3:
        sub_22BE231C0();
        sub_22C04AFB8();
        break;
      case 2:
        v7 = sub_22BE236F4();
        sub_22C04AAA0(v7, v8, v9, v10);
        break;
      case 6:
        sub_22BE231C0();
        sub_22C05CD08();
        break;
      case 7:
        v3 = sub_22BE236F4();
        sub_22C04B108(v3, v4, v5, v6);
        break;
      case 8:
        v11 = sub_22BE236F4();
        sub_22C04B600(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C04AAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v42 = a3;
  v41 = a2;
  v5 = sub_22C272594();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v37 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v34 - v25;
  sub_22BE19DC4(&v34 - v25, 1, 1, v5);
  v34 = a1;
  sub_22BE22868();
  v35 = sub_22BE1AEA8(v14, 1, v15);
  v36 = v15;
  if (v35 == 1)
  {
    sub_22BE33928(v14, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v26, &qword_27D909128, &qword_22C294AA0);
      v27 = *(v38 + 32);
      v27(v10, v19, v5);
      v27(v26, v10, v5);
      sub_22BE19DC4(v26, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
  v28 = v39;
  sub_22C2706F4();
  if (v28)
  {
    v29 = v26;
    return sub_22BE33928(v29, &qword_27D909128, &qword_22C294AA0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v24, 1, v5) == 1)
  {
    sub_22BE33928(v26, &qword_27D909128, &qword_22C294AA0);
    v29 = v24;
    return sub_22BE33928(v29, &qword_27D909128, &qword_22C294AA0);
  }

  v31 = *(v38 + 32);
  v31(v37, v24, v5);
  if (v35 != 1)
  {
    sub_22C270594();
  }

  v32 = v36;
  sub_22BE33928(v26, &qword_27D909128, &qword_22C294AA0);
  v33 = v34;
  sub_22BE33928(v34, &qword_27D90ED58, &qword_22C2CC940);
  v31(v33, v37, v5);
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v33, 0, 1, v32);
}

void sub_22C04AFB8()
{
  sub_22BE19130();
  sub_22C0B1E94();
  v6 = sub_22C0B176C(v0, v1, v2, v3, v4, v5);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B72C();
  sub_22BE431FC();
  sub_22C2705B4();
  sub_22BE18478();
}

uint64_t sub_22C04B108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911370, &qword_22C2AE0A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v22, &qword_27D911370, &qword_22C2AE0A0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FFF0, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911370, &qword_22C2AE0A0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911370, &qword_22C2AE0A0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911370, &qword_22C2AE0A0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911370, &qword_22C2AE0A0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90ED58, &qword_22C2CC940);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C04B600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911378, &qword_22C2AE0A8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v22, &qword_27D911378, &qword_22C2AE0A8);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D90FFD8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911378, &qword_22C2AE0A8);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911378, &qword_22C2AE0A8);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911378, &qword_22C2AE0A8);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911378, &qword_22C2AE0A8);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90ED58, &qword_22C2CC940);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoSystemPromptResolutionUserAction.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22C0B137C();
  v7 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  sub_22BE2B890(v7);
  if (!v8)
  {
    sub_22BE1AEE4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v15 = sub_22BE17D78();
        sub_22C04BD64(v15, v16, v17, v18);
        goto LABEL_14;
      case 2:
        sub_22BE17D78();
        sub_22C04BFA4();
        goto LABEL_10;
      case 3:
        sub_22BE17D78();
        sub_22C04C0E4();
        goto LABEL_10;
      case 4:
        v11 = sub_22BE17D78();
        sub_22C04C224(v11, v12, v13, v14);
        goto LABEL_14;
      case 5:
        v19 = sub_22BE17D78();
        sub_22C04C42C(v19, v20, v21, v22);
LABEL_14:
        sub_22BE291DC();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
      default:
        sub_22BE17D78();
        sub_22C04BC28();
LABEL_10:
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
    }
  }

  v9 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  sub_22BE235A8(v9);
LABEL_4:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C04BC28()
{
  v0 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  sub_22BE22868();
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if (sub_22BE1AEA8(v3, 1, v4) == 1)
  {
    result = sub_22BE33928(v3, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v5 = *v3;
      return sub_22C2707C4();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C04BD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_22C272594();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v13) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
      sub_22C270884();
      return (*(v9 + 8))(v12, v8);
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C04BFA4()
{
  v0 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  sub_22BE22868();
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if (sub_22BE1AEA8(v3, 1, v4) == 1)
  {
    result = sub_22BE33928(v3, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v5 = *v3;
      return sub_22C2707C4();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C04C0E4()
{
  v0 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = (&v7 - v2);
  sub_22BE22868();
  v4 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if (sub_22BE1AEA8(v3, 1, v4) == 1)
  {
    result = sub_22BE33928(v3, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v5 = *v3;
      return sub_22C270814();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C04C224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FFF0, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C04C42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90ED58, &qword_22C2CC940);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90ED58, &qword_22C2CC940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90FFD8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

void static TranscriptProtoSystemPromptResolutionUserAction.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserActionEnum(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE1AEE4();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE1B01C();
  v12 = sub_22BE5CE4C(&qword_27D90ED60, &qword_22C2970C0);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  v16 = MEMORY[0x28223BE20](v15);
  sub_22BE1AC54(v16);
  sub_22BE28764();
  sub_22BE26A1C();
  if (v17)
  {
    sub_22BE23D0C();
    if (v17)
    {
      sub_22BE33928(v0, &qword_27D90ED58, &qword_22C2CC940);
LABEL_12:
      v19 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
      sub_22BE3636C(v19);
      sub_22BE18E5C();
      sub_22BE2C988(v20, v21);
      v18 = sub_22BE2B85C();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE23D0C();
  if (v17)
  {
    sub_22C0B1AA4();
LABEL_9:
    sub_22BE33928(v0, &qword_27D90ED60, &qword_22C2970C0);
    goto LABEL_10;
  }

  sub_22C0B0868();
  sub_22BE38970();
  static TranscriptProtoSystemPromptResolutionUserActionEnum.== infix(_:_:)();
  sub_22BE23EBC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90ED58, &qword_22C2CC940);
  if (&qword_27D90ED58)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  sub_22BE1C1DC(v18);
  sub_22BE1AABC();
}

uint64_t sub_22C04C8C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CE0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04C944(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FFC0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04C9B4()
{
  sub_22BE2C988(&qword_27D90FFC0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);

  return sub_22C270774();
}

uint64_t sub_22C04CAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CD8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04CB70(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FFD8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04CBE0()
{
  sub_22BE2C988(&qword_27D90FFD8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);

  return sub_22C270774();
}

uint64_t sub_22C04CCCC()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_22BE239F4();
      sub_22C2705C4();
    }
  }

  return result;
}

void sub_22C04CD44()
{
  sub_22BE1B214();
  v3 = v2;
  sub_22BE18648();
  if (*v0 != 1 || (sub_22BE1BAB8(), sub_22C2707C4(), !v1))
  {
    v4 = v3(0);
    sub_22BE294F8(v4);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C04CE58(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CD0, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04CED8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90FFF0, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04CF48()
{
  sub_22BE2C988(&qword_27D90FFF0, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);

  return sub_22C270774();
}

uint64_t sub_22C04CFD4()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DA28);
  sub_22BE199F4(v0, qword_27D90DA28);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "dependencies";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C04D204()
{
  sub_22BE1B638();
  while (1)
  {
    sub_22BE18240();
    result = sub_22C270584();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 4)
    {
      v6 = sub_22C0B1638();
      v0(v6);
    }

    else if (result == 3)
    {
      v5 = sub_22C0B1638();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_22C04D278()
{
  v0 = *(type metadata accessor for TranscriptProtoVariableSetter(0) + 20);
  sub_22C272594();
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
  return sub_22C2706F4();
}

uint64_t sub_22C04D32C()
{
  sub_22C270474();
  sub_22C272594();
  v0 = MEMORY[0x277D727E0];
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
  sub_22BE2C988(&qword_27D90E770, v0);
  return sub_22C270564();
}

void TranscriptProtoVariableSetter.traverse<A>(visitor:)()
{
  sub_22BE358D4();
  v1 = sub_22BE3B0CC();
  sub_22C04D500(v1, v2, v3, v4);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v5)
    {
      sub_22C270474();
      sub_22C0B19C8();
      sub_22C272594();
      v6 = MEMORY[0x277D727E0];
      sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
      sub_22BE46B68();
      sub_22BE2C988(v7, v6);
      sub_22BE37D10();
      sub_22C0B14F0();
    }

    v8 = type metadata accessor for TranscriptProtoVariableSetter(0);
    sub_22BE25FB0(v8);
  }

  sub_22C0B171C();
}

uint64_t sub_22C04D500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v4 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = sub_22C272594();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for TranscriptProtoVariableSetter(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D909128, &qword_22C294AA0);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_22BE2C988(&qword_28106DF50, MEMORY[0x277D727E0]);
  sub_22C270884();
  return (*(v9 + 8))(v12, v8);
}

void static TranscriptProtoVariableSetter.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  sub_22BE17BC4();
  v5 = sub_22C272594();
  v6 = sub_22BE35868(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17CBC();
  v9 = sub_22BE289D8();
  v11 = sub_22BE5CE4C(v9, v10);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE234F4();
  v15 = sub_22BE5CE4C(&qword_27D909130, &unk_22C27FD30);
  sub_22BE252F0(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1B01C();
  v19 = type metadata accessor for TranscriptProtoVariableSetter(0);
  sub_22C0B15D0(v19);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE181B0(v1);
  if (v20)
  {
    sub_22BE181B0(v1 + v2);
    if (v20)
    {
      sub_22BE33928(v1, &qword_27D909128, &qword_22C294AA0);
      goto LABEL_11;
    }

LABEL_9:
    sub_22BE33928(v1, &qword_27D909130, &unk_22C27FD30);
LABEL_13:
    v34 = 0;
    goto LABEL_14;
  }

  sub_22BE1B18C();
  sub_22BE22868();
  sub_22BE181B0(v1 + v2);
  if (v20)
  {
    v21 = sub_22BE3F3A8();
    v22(v21);
    goto LABEL_9;
  }

  sub_22BE46530();
  v23 = sub_22BE3BD64();
  v24(v23);
  sub_22BE192C8();
  sub_22BE2C988(v25, v26);
  sub_22BE19478();
  sub_22C272FD4();
  sub_22C0B1CA8();
  v27 = sub_22BE3C5E4();
  v0(v27);
  v28 = sub_22BE35838();
  v0(v28);
  sub_22BE33928(v1, &qword_27D909128, &qword_22C294AA0);
  if ((&qword_27D909128 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v29 = *v35;
  v30 = *v4;
  sub_22BEA4E60();
  if ((v31 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_22C0B1AC8();
  sub_22BE18E5C();
  sub_22BE2C988(v32, v33);
  v34 = sub_22BE3C4B0();
LABEL_14:
  sub_22BE1C1DC(v34);
  sub_22BE1AABC();
}

uint64_t sub_22C04DA34(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CC8, type metadata accessor for TranscriptProtoVariableSetter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04DAB4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90ED88, type metadata accessor for TranscriptProtoVariableSetter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04DB24()
{
  sub_22BE2C988(&qword_27D90ED88, type metadata accessor for TranscriptProtoVariableSetter);

  return sub_22C270774();
}

uint64_t sub_22C04DBB0()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DA40);
  sub_22BE199F4(v0, qword_27D90DA40);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "setters";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "statementId";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoVariableStep.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 3)
    {
      sub_22BE18E2C();
      sub_22C04DE4C();
    }

    else if (v1 == 2)
    {
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

uint64_t sub_22C04DE4C()
{
  v0 = *(type metadata accessor for TranscriptProtoVariableStep(0) + 20);
  type metadata accessor for TranscriptProtoStatementID(0);
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C2706F4();
}

void TranscriptProtoVariableStep.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoVariableSetter(0), sub_22BE2C988(&qword_27D90ED88, type metadata accessor for TranscriptProtoVariableSetter), sub_22BE238E8(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    v2 = sub_22BE17D60();
    sub_22C04DFB4(v2, v3, v4, v5);
    if (!v0)
    {
      v6 = type metadata accessor for TranscriptProtoVariableStep(0);
      sub_22BE25FB0(v6);
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C04DFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoVariableStep(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoVariableStep.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoStatementID(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = sub_22BE5CE4C(&qword_27D909100, &unk_22C27FD00);
  sub_22BE28F58(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE19E64();
  sub_22BE1BC88();
  sub_22BE9EBEC();
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = type metadata accessor for TranscriptProtoVariableStep(0);
  sub_22BE3E440(v15);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v16)
  {
    sub_22BE19538();
    if (v16)
    {
      sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
LABEL_14:
      sub_22C0B16F4();
      sub_22BE18E5C();
      sub_22BE2C988(v21, v22);
      v17 = sub_22BE2B85C();
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v16)
  {
    sub_22BE17DB0();
    sub_22C0B08BC();
LABEL_10:
    sub_22BE33928(v0, &qword_27D909100, &unk_22C27FD00);
    goto LABEL_11;
  }

  sub_22BE1868C();
  sub_22C0B0868();
  v18 = sub_22BE38970();
  v20 = static TranscriptProtoStatementID.== infix(_:_:)(v18, v19);
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D9090F8, &unk_22C2AE4A0);
  if (v20)
  {
    goto LABEL_14;
  }

LABEL_11:
  v17 = 0;
LABEL_12:
  sub_22BE1C1DC(v17);
  sub_22BE1AABC();
}

uint64_t sub_22C04E42C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CC0, type metadata accessor for TranscriptProtoVariableStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04E4AC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910018, type metadata accessor for TranscriptProtoVariableStep);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04E51C()
{
  sub_22BE2C988(&qword_27D910018, type metadata accessor for TranscriptProtoVariableStep);

  return sub_22C270774();
}

uint64_t sub_22C04E5A8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DA58);
  sub_22BE199F4(v0, qword_27D90DA58);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "fn";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameters";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C04E7BC()
{
  sub_22C270464();
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_22BE2C988(&qword_27D90EDA0, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_22C270564();
}

void TranscriptProtoASTFlatExprCallVariant.traverse<A>(visitor:)()
{
  sub_22BE358D4();
  sub_22BE1A730();
  if (!v2 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    sub_22C0B1AE4();
    if (!v3)
    {
      goto LABEL_5;
    }

    sub_22C270464();
    v4 = sub_22C0B19C8();
    type metadata accessor for TranscriptProtoASTFlatValue(v4);
    sub_22C0B1908();
    sub_22BE2C988(v5, v1);
    sub_22C0B1A28(&qword_27D90EDA0);
    sub_22BE37D10();
    sub_22BE3CEA4();
    sub_22C0B14F0();
    if (!v0)
    {
LABEL_5:
      v6 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
      sub_22BE25FB0(v6);
    }
  }

  sub_22C0B171C();
}

uint64_t sub_22C04EA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CB8, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04EACC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910030, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04EB3C()
{
  sub_22BE2C988(&qword_27D910030, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);

  return sub_22C270774();
}

uint64_t sub_22C04ECEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CB0, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04ED6C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910048, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04EDDC()
{
  sub_22BE2C988(&qword_27D910048, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);

  return sub_22C270774();
}

uint64_t sub_22C04EE68()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DA88);
  sub_22BE199F4(v0, qword_27D90DA88);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rawEventId";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pickType";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C04F080()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0) + 20);
  type metadata accessor for TranscriptProtoASTPickType(0);
  sub_22BE2C988(&qword_27D9100F0, type metadata accessor for TranscriptProtoASTPickType);
  return sub_22C2706F4();
}

uint64_t sub_22C04F174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EDB8, &qword_22C2B5AC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTPickType(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90EDB8, &qword_22C2B5AC0);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D9100F0, type metadata accessor for TranscriptProtoASTPickType);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoASTFlatExprPickVariant.== infix(_:_:)()
{
  sub_22BE19460();
  v1 = sub_22BE1B2D4();
  v2 = type metadata accessor for TranscriptProtoASTPickType(v1);
  v3 = sub_22BE26880(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE38390();
  v6 = sub_22BE5CE4C(&qword_27D90EDB8, &qword_22C2B5AC0);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  v10 = sub_22BE5CE4C(&qword_27D90EDC0, &qword_22C2970C8);
  sub_22BE28F58(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE20394();
  v16 = v16 && v14 == v15;
  if (!v16 && (sub_22C274014() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  sub_22BE3E440(v17);
  sub_22C0B1588();
  sub_22C0B1568();
  sub_22BE26A1C();
  if (v16)
  {
    sub_22BE19538();
    if (v16)
    {
      sub_22BE33928(v0, &qword_27D90EDB8, &qword_22C2B5AC0);
LABEL_17:
      sub_22C0B16F4();
      sub_22BE18E5C();
      sub_22BE2C988(v21, v22);
      v19 = sub_22BE2B85C();
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  sub_22BE194F8();
  sub_22BE22868();
  sub_22BE19538();
  if (v18)
  {
    sub_22C0B1AA4();
LABEL_14:
    sub_22BE33928(v0, &qword_27D90EDC0, &qword_22C2970C8);
    goto LABEL_15;
  }

  sub_22C0B0868();
  sub_22BE38970();
  v20 = static TranscriptProtoASTPickType.== infix(_:_:)();
  sub_22BE324FC();
  sub_22C0B08BC();
  sub_22BE1AB1C();
  sub_22C0B08BC();
  sub_22BE33928(v0, &qword_27D90EDB8, &qword_22C2B5AC0);
  if (v20)
  {
    goto LABEL_17;
  }

LABEL_15:
  v19 = 0;
LABEL_18:
  sub_22BE1C1DC(v19);
  sub_22BE1AABC();
}

uint64_t sub_22C04F60C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CA8, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04F68C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910060, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04F6FC()
{
  sub_22BE2C988(&qword_27D910060, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);

  return sub_22C270774();
}

uint64_t sub_22C04F898(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910CA0, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04F918(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910078, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04F988()
{
  sub_22BE2C988(&qword_27D910078, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);

  return sub_22C270774();
}

uint64_t sub_22C04FB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C98, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04FBB8(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910090, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04FC28()
{
  sub_22BE2C988(&qword_27D910090, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);

  return sub_22C270774();
}

uint64_t sub_22C04FDC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C90, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C04FE44(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9100A8, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C04FEB4()
{
  sub_22BE2C988(&qword_27D9100A8, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);

  return sub_22C270774();
}

uint64_t sub_22C050050(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C88, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0500D0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9100C0, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C050140()
{
  sub_22BE2C988(&qword_27D9100C0, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);

  return sub_22C270774();
}

uint64_t sub_22C050270(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C80, type metadata accessor for TranscriptProtoASTFlatExprContinuePlanningVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0502F0(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9100D8, type metadata accessor for TranscriptProtoASTFlatExprContinuePlanningVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C050360()
{
  sub_22BE2C988(&qword_27D9100D8, type metadata accessor for TranscriptProtoASTFlatExprContinuePlanningVariant);

  return sub_22C270774();
}

uint64_t sub_22C0503E8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DB18);
  sub_22BE199F4(v0, qword_27D90DB18);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "index";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "none";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t TranscriptProtoASTPickType.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_22BE18E2C();
      sub_22C0506D0();
    }

    else if (result == 1)
    {
      sub_22BE18E2C();
      sub_22C05063C();
    }
  }

  return result;
}

uint64_t TranscriptProtoASTPickType.traverse<A>(visitor:)()
{
  sub_22BE410C0();
  if (*(v0 + 8) == 255 || ((v2 = sub_22BE17D78(), (v3 & 1) == 0) ? (result = sub_22C0507CC(v2)) : (result = sub_22C05080C(v2)), !v1))
  {
    v5 = type metadata accessor for TranscriptProtoASTPickType(0);
    return sub_22BE235A8(v5);
  }

  return result;
}

uint64_t sub_22C0507CC(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 255 || (v1 & 1) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *result;
    return sub_22C270814();
  }

  return result;
}

uint64_t sub_22C05080C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *result;
    return sub_22C2707C4();
  }

  return result;
}

uint64_t static TranscriptProtoASTPickType.== infix(_:_:)()
{
  sub_22BE18378();
  v3 = *(v2 + 8);
  v5 = *(v4 + 8);
  if (v3 == 255)
  {
    if (v5 == 255)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 == 255)
  {
    return 0;
  }

  v6 = *v1;
  v7 = *v0;
  if (v3)
  {
    if (v5 & 1) == 0 || ((v7 ^ v6))
    {
      return 0;
    }
  }

  else if ((v5 & 1) != 0 || v6 != v7)
  {
    return 0;
  }

LABEL_11:
  v9 = type metadata accessor for TranscriptProtoASTPickType(0);
  sub_22BE3636C(v9);
  sub_22BE18E5C();
  sub_22BE2C988(v10, v11);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C0509A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C78, type metadata accessor for TranscriptProtoASTPickType);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C050A28(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9100F0, type metadata accessor for TranscriptProtoASTPickType);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C050A98()
{
  sub_22BE2C988(&qword_27D9100F0, type metadata accessor for TranscriptProtoASTPickType);

  return sub_22C270774();
}

uint64_t sub_22C050B24()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DB30);
  sub_22BE199F4(v0, qword_27D90DB30);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C27FED0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "query";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isLowConfidenceKnowledge";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "pickOne";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C050D68()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    result = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      sub_22BE2037C();
      sub_22C2705C4();
    }

    else if (result == 1)
    {
      sub_22BE239F4();
      sub_22C2706A4();
    }
  }

  return result;
}

void sub_22C050E0C()
{
  sub_22BE1B214();
  v3 = v2;
  sub_22BE1A730();
  if (!v4 || (sub_22BE25098(), sub_22C270844(), !v0))
  {
    sub_22BE2BC90();
    if (!v5 || (sub_22BE1BAB8(), sub_22C2707C4(), !v0))
    {
      if (*(v1 + 17) != 1 || (sub_22BE1BAB8(), sub_22C2707C4(), !v0))
      {
        v6 = v3(0);
        sub_22BE375E4(v6);
        sub_22BE363D4();
      }
    }
  }

  sub_22BE25C6C();
}

uint64_t sub_22C050ECC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  sub_22BE19FC4(a1, a2);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_22C274014() & 1) == 0)
  {
    return 0;
  }

  sub_22BE36248();
  if (!v8 || *(v4 + 17) != *(v3 + 17))
  {
    return 0;
  }

  v10 = a3(0);
  sub_22C0B1BAC(v10);
  sub_22BE18E5C();
  sub_22BE2C988(v11, v12);
  return sub_22BE2B85C() & 1;
}

uint64_t sub_22C050FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C70, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C051078(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910108, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0510E8()
{
  sub_22BE2C988(&qword_27D910108, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);

  return sub_22C270774();
}

uint64_t sub_22C051224(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C68, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0512A4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910120, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C051314()
{
  sub_22BE2C988(&qword_27D910120, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);

  return sub_22C270774();
}

void TranscriptProtoASTFlatExprUpdateParametersVariant.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      sub_22BE1C37C();
      sub_22BFE7680();
    }
  }
}

void TranscriptProtoASTFlatExprUpdateParametersVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  sub_22BE3E638();
  if (!v1 || (type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0), sub_22BE2C988(&qword_27D90EE10, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant), sub_22BE41E00(), sub_22BE23CE4(), sub_22C270874(), !v0))
  {
    updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
    sub_22BE294F8(updated);
  }

  sub_22BE25C6C();
}

uint64_t sub_22C0515E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C60, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C051664(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910138, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0516D4()
{
  sub_22BE2C988(&qword_27D910138, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);

  return sub_22C270774();
}

uint64_t sub_22C051804(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C58, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C051884(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910150, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0518F4()
{
  sub_22BE2C988(&qword_27D910150, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);

  return sub_22C270774();
}

uint64_t sub_22C05197C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DB90);
  sub_22BE199F4(v0, qword_27D90DB90);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C28E670;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "path";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "kind";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_22C2708A4();
}

void TranscriptProtoASTFlatExprUpdateVariant.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_22BE18E2C();
        sub_22C051CB8();
        break;
      case 2:
        sub_22C0B18D8();
        sub_22BE1C37C();
        sub_22BFE7680();
        break;
      case 3:
        sub_22BE18E2C();
        sub_22C051D6C();
        break;
      case 4:
        sub_22BE18E2C();
        sub_22C051E20();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C051CB8()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0) + 24);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_22C2706F4();
}

uint64_t sub_22C051D6C()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0) + 28);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_22C2706F4();
}

void TranscriptProtoASTFlatExprUpdateVariant.traverse<A>(visitor:)()
{
  sub_22BE1B214();
  v2 = sub_22BE3B0CC();
  sub_22C051F7C(v2, v3, v4, v5);
  if (!v0)
  {
    sub_22BE41DF4();
    if (v6)
    {
      type metadata accessor for TranscriptProtoASTFlatValue(0);
      sub_22C0B1920();
      sub_22BE2C988(v7, v8);
      sub_22BE238E8();
      sub_22BE23CE4();
      sub_22C270874();
    }

    v9 = sub_22BE17D60();
    sub_22C052150(v9, v10, v11, v12);
    if (*(v1 + 8) == 1)
    {
      sub_22C09DBF0();
      sub_22BE23CE4();
      sub_22C2707D4();
    }

    v13 = *(type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0) + 32);
    sub_22BE1AC30();
  }

  sub_22BE25C6C();
}

uint64_t sub_22C051F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0) + 24);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

uint64_t sub_22C052150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0) + 28);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoASTFlatExprUpdateVariant.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22BE48298();
  v6 = type metadata accessor for TranscriptProtoASTFlatValue(v5);
  v7 = sub_22BE18000(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17A44();
  v10 = sub_22BE19454();
  v12 = sub_22BE5CE4C(v10, v11);
  v13 = sub_22BE19448(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22BE324EC();
  v17 = sub_22BE5CE4C(&qword_27D90EE38, &qword_22C2970D0);
  v18 = sub_22BE28F58(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  v42 = v21;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v22);
  sub_22BE32374();
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v23 = updated[6];
  v24 = *(v1 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE200F8(v2);
  if (v25)
  {
    sub_22BE200F8(v2 + v24);
    if (v25)
    {
      sub_22BE33928(v2, &qword_27D90EE30, &unk_22C2AE760);
      goto LABEL_12;
    }

LABEL_9:
    v26 = v2;
LABEL_10:
    sub_22BE33928(v26, &qword_27D90EE38, &qword_22C2970D0);
    goto LABEL_24;
  }

  sub_22BE3E79C();
  sub_22BE22868();
  sub_22BE200F8(v2 + v24);
  if (v25)
  {
    sub_22BE25764();
    sub_22C0B08BC();
    goto LABEL_9;
  }

  sub_22BE28A14();
  sub_22C0B0868();
  static TranscriptProtoASTFlatValue.== infix(_:_:)();
  v28 = v27;
  sub_22BE200D4();
  sub_22C0B08BC();
  sub_22BE1B074();
  sub_22C0B08BC();
  sub_22BE33928(v2, &qword_27D90EE30, &unk_22C2AE760);
  if ((v28 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v29 = *v0;
  v30 = *v4;
  sub_22BE98ABC();
  if ((v31 & 1) == 0)
  {
    goto LABEL_24;
  }

  v32 = updated[7];
  v33 = *(v1 + 48);
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE27B84();
  sub_22BE22868();
  sub_22BE200F8(v42);
  if (!v25)
  {
    sub_22BE22868();
    sub_22BE200F8(v42 + v33);
    if (!v34)
    {
      sub_22BE28A14();
      sub_22C0B0868();
      sub_22BE25C08();
      static TranscriptProtoASTFlatValue.== infix(_:_:)();
      v36 = v35;
      sub_22BE1AB74();
      sub_22C0B08BC();
      sub_22BE291B0();
      sub_22C0B08BC();
      sub_22BE33928(v42, &qword_27D90EE30, &unk_22C2AE760);
      if ((v36 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    sub_22BE25764();
    sub_22C0B08BC();
    goto LABEL_21;
  }

  sub_22BE200F8(v42 + v33);
  if (!v25)
  {
LABEL_21:
    v26 = v42;
    goto LABEL_10;
  }

  sub_22BE33928(v42, &qword_27D90EE30, &unk_22C2AE760);
LABEL_23:
  if (*(v0 + 8) == *(v4 + 8))
  {
    v38 = updated[8];
    sub_22C2704B4();
    sub_22BE18E5C();
    sub_22BE2C988(v39, v40);
    sub_22BE3A008();
    v37 = sub_22C0B1B54();
    goto LABEL_25;
  }

LABEL_24:
  v37 = 0;
LABEL_25:
  sub_22BE1C1DC(v37);
  sub_22BE1AABC();
}

uint64_t sub_22C052774(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C50, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C0527F4(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D90EE10, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C052864()
{
  sub_22BE2C988(&qword_27D90EE10, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);

  return sub_22C270774();
}

uint64_t sub_22C052A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C48, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C052A80(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910178, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C052AF0()
{
  sub_22BE2C988(&qword_27D910178, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);

  return sub_22C270774();
}

uint64_t sub_22C052CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C40, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C052D20(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D910190, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C052D90()
{
  sub_22BE2C988(&qword_27D910190, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);

  return sub_22C270774();
}

uint64_t sub_22C052E1C()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DBD8);
  sub_22BE199F4(v0, qword_27D90DBD8);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C2759F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "lhs";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22C270894();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "index";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_22C2708A4();
}

uint64_t sub_22C053034()
{
  v0 = *(type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0) + 20);
  type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  return sub_22C2706F4();
}

uint64_t sub_22C053128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0) + 20);
  sub_22BE22868();
  if (sub_22BE1AEA8(v7, 1, v8) == 1)
  {
    return sub_22BE33928(v7, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_22C270884();
  return sub_22C0B08BC();
}

void static TranscriptProtoASTFlatExprDotVariant.== infix(_:_:)()
{
  sub_22BE19460();
  v4 = v3;
  v5 = sub_22BE2021C();
  v6 = type metadata accessor for TranscriptProtoASTFlatValue(v5);
  v7 = sub_22BE18000(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE17CBC();
  v10 = sub_22BE289D8();
  v12 = sub_22BE5CE4C(v10, v11);
  sub_22BE19448(v12);
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE234F4();
  v16 = sub_22BE5CE4C(&qword_27D90EE38, &qword_22C2970D0);
  sub_22BE252F0(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE25CD0();
  v28 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  sub_22C0B1DC0(v28);
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE36CB8();
  sub_22BE22868();
  sub_22BE19FE0(v1);
  if (!v20)
  {
    sub_22BE3AF28();
    sub_22BE22868();
    sub_22BE19FE0(v1 + v2);
    if (!v20)
    {
      sub_22C0B0868();
      sub_22BE1B5E0();
      static TranscriptProtoASTFlatValue.== infix(_:_:)();
      v23 = v22;
      sub_22BE194F8();
      sub_22C0B08BC();
      sub_22BE18240();
      sub_22C0B08BC();
      sub_22BE33928(v1, &qword_27D90EE30, &unk_22C2AE760);
      if ((v23 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    sub_22BE25764();
    sub_22C0B08BC();
LABEL_9:
    sub_22BE33928(v1, &qword_27D90EE38, &qword_22C2970D0);
    goto LABEL_10;
  }

  sub_22BE19FE0(v1 + v2);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_22BE33928(v1, &qword_27D90EE30, &unk_22C2AE760);
LABEL_12:
  v24 = *v0 == *v4 && v0[1] == v4[1];
  if (v24 || (sub_22C274014() & 1) != 0)
  {
    v25 = *(v28 + 24);
    sub_22C2704B4();
    sub_22BE18E5C();
    sub_22BE2C988(v26, v27);
    v21 = sub_22BE39E58();
    goto LABEL_18;
  }

LABEL_10:
  v21 = 0;
LABEL_18:
  sub_22BE1C1DC(v21);
  sub_22BE1AABC();
}

uint64_t sub_22C0535FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C38, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C05367C(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9101A8, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C0536EC()
{
  sub_22BE2C988(&qword_27D9101A8, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);

  return sub_22C270774();
}

uint64_t sub_22C053778()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DBF0);
  sub_22BE199F4(v0, qword_27D90DBF0);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_22C296E60;
  v4 = v46 + v3 + v1[14];
  *(v46 + v3) = 1;
  *v4 = "value";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_22C270894();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v46 + v3 + v2 + v1[14];
  *(v46 + v3 + v2) = 2;
  *v8 = "prefix";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v46 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "infix";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v46 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "dot";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v7();
  v13 = (v46 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "index";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v46 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "call";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v7();
  v17 = (v46 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "endOfPlan";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  v19 = (v46 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 9;
  *v20 = "say";
  *(v20 + 1) = 3;
  v20[16] = 2;
  v7();
  v21 = (v46 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "pick";
  *(v22 + 1) = 4;
  v22[16] = 2;
  v7();
  v23 = (v46 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "confirm";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v7();
  v25 = (v46 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "search";
  *(v26 + 1) = 6;
  v26[16] = 2;
  v7();
  v27 = (v46 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "pickOne";
  *(v28 + 1) = 7;
  v28[16] = 2;
  v7();
  v29 = (v46 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "noMatchingTool";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v7();
  v31 = (v46 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "undo";
  *(v32 + 1) = 4;
  v32[16] = 2;
  v7();
  v33 = (v46 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "resolveTool";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v7();
  v35 = (v46 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "reject";
  *(v36 + 1) = 6;
  v36[16] = 2;
  v7();
  v37 = (v46 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 18;
  *v38 = "cancel";
  *(v38 + 1) = 6;
  v38[16] = 2;
  v7();
  v39 = (v46 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 19;
  *v40 = "continuePlanning";
  *(v40 + 1) = 16;
  v40[16] = 2;
  v7();
  v41 = (v46 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 20;
  *v42 = "updateParameters";
  *(v42 + 1) = 16;
  v42[16] = 2;
  v7();
  v43 = (v46 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 21;
  *v44 = "getMentionedApps";
  *(v44 + 1) = 16;
  v44[16] = 2;
  v7();
  return sub_22C2708A4();
}

void TranscriptProtoASTFlatExpr.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = sub_22BE236F4();
        sub_22C053F78(v3, v4, v5, v6);
        break;
      case 2:
        v43 = sub_22BE236F4();
        sub_22C054470(v43, v44, v45, v46);
        break;
      case 3:
        v27 = sub_22BE236F4();
        sub_22C054968(v27, v28, v29, v30);
        break;
      case 4:
        v35 = sub_22BE236F4();
        sub_22C054E60(v35, v36, v37, v38);
        break;
      case 5:
        v19 = sub_22BE236F4();
        sub_22C055358(v19, v20, v21, v22);
        break;
      case 6:
        v51 = sub_22BE236F4();
        sub_22C055850(v51, v52, v53, v54);
        break;
      case 8:
      case 14:
        sub_22BE231C0();
        sub_22BFCA9A8();
        break;
      case 9:
        v39 = sub_22BE236F4();
        sub_22C055D48(v39, v40, v41, v42);
        break;
      case 10:
        v67 = sub_22BE236F4();
        sub_22C056240(v67, v68, v69, v70);
        break;
      case 11:
        v23 = sub_22BE236F4();
        sub_22C056738(v23, v24, v25, v26);
        break;
      case 12:
        v63 = sub_22BE236F4();
        sub_22C056C30(v63, v64, v65, v66);
        break;
      case 13:
        v15 = sub_22BE236F4();
        sub_22C057128(v15, v16, v17, v18);
        break;
      case 15:
        v55 = sub_22BE236F4();
        sub_22C057620(v55, v56, v57, v58);
        break;
      case 16:
        v11 = sub_22BE236F4();
        sub_22C057B18(v11, v12, v13, v14);
        break;
      case 17:
        v31 = sub_22BE236F4();
        sub_22C058010(v31, v32, v33, v34);
        break;
      case 18:
        v7 = sub_22BE236F4();
        sub_22C058508(v7, v8, v9, v10);
        break;
      case 19:
        v47 = sub_22BE236F4();
        sub_22C058A00(v47, v48, v49, v50);
        break;
      case 20:
        v59 = sub_22BE236F4();
        sub_22C058EF8(v59, v60, v61, v62);
        break;
      case 21:
        v71 = sub_22BE236F4();
        sub_22C0593F0(v71, v72, v73, v74);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22C053F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C0B08BC();
    }

    else
    {
      sub_22BE33928(v22, &qword_27D90EE30, &unk_22C2AE760);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }
  }

  sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D90EE30, &unk_22C2AE760);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D90EE30, &unk_22C2AE760);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D90EE30, &unk_22C2AE760);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C054470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9112E8, &qword_22C2AE018);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22BE33928(v22, &qword_27D9112E8, &qword_22C2AE018);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9102D8, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9112E8, &qword_22C2AE018);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9112E8, &qword_22C2AE018);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9112E8, &qword_22C2AE018);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9112E8, &qword_22C2AE018);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C054968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9112F0, &qword_22C2AE020);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22BE33928(v22, &qword_27D9112F0, &qword_22C2AE020);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910230, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9112F0, &qword_22C2AE020);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9112F0, &qword_22C2AE020);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9112F0, &qword_22C2AE020);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9112F0, &qword_22C2AE020);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C054E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9112F8, &qword_22C2AE028);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22BE33928(v22, &qword_27D9112F8, &qword_22C2AE028);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9101A8, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9112F8, &qword_22C2AE028);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9112F8, &qword_22C2AE028);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9112F8, &qword_22C2AE028);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9112F8, &qword_22C2AE028);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C055358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911300, &qword_22C2AE030);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v22, &qword_27D911300, &qword_22C2AE030);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910218, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911300, &qword_22C2AE030);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911300, &qword_22C2AE030);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911300, &qword_22C2AE030);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911300, &qword_22C2AE030);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C055850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911308, &qword_22C2AE038);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v22, &qword_27D911308, &qword_22C2AE038);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910030, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911308, &qword_22C2AE038);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911308, &qword_22C2AE038);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911308, &qword_22C2AE038);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911308, &qword_22C2AE038);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C055D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911310, &qword_22C2AE040);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22BE33928(v22, &qword_27D911310, &qword_22C2AE040);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910048, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911310, &qword_22C2AE040);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911310, &qword_22C2AE040);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911310, &qword_22C2AE040);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911310, &qword_22C2AE040);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C056240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911318, &qword_22C2AE048);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22BE33928(v22, &qword_27D911318, &qword_22C2AE048);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910060, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911318, &qword_22C2AE048);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911318, &qword_22C2AE048);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911318, &qword_22C2AE048);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911318, &qword_22C2AE048);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C056738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911320, &qword_22C2AE050);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22BE33928(v22, &qword_27D911320, &qword_22C2AE050);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910078, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911320, &qword_22C2AE050);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911320, &qword_22C2AE050);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911320, &qword_22C2AE050);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911320, &qword_22C2AE050);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C056C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911328, &qword_22C2AE058);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_22BE33928(v22, &qword_27D911328, &qword_22C2AE058);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910108, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911328, &qword_22C2AE058);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911328, &qword_22C2AE058);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911328, &qword_22C2AE058);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911328, &qword_22C2AE058);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C057128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911330, &qword_22C2AE060);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_22BE33928(v22, &qword_27D911330, &qword_22C2AE060);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910178, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911330, &qword_22C2AE060);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911330, &qword_22C2AE060);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911330, &qword_22C2AE060);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911330, &qword_22C2AE060);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C057620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911338, &qword_22C2AE068);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_22BE33928(v22, &qword_27D911338, &qword_22C2AE068);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910090, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911338, &qword_22C2AE068);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911338, &qword_22C2AE068);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911338, &qword_22C2AE068);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911338, &qword_22C2AE068);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C057B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911340, &qword_22C2AE070);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_22BE33928(v22, &qword_27D911340, &qword_22C2AE070);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910190, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911340, &qword_22C2AE070);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911340, &qword_22C2AE070);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911340, &qword_22C2AE070);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911340, &qword_22C2AE070);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C058010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911348, &qword_22C2AE078);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_22BE33928(v22, &qword_27D911348, &qword_22C2AE078);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9100A8, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911348, &qword_22C2AE078);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911348, &qword_22C2AE078);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911348, &qword_22C2AE078);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911348, &qword_22C2AE078);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C058508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911350, &qword_22C2AE080);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_22BE33928(v22, &qword_27D911350, &qword_22C2AE080);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9100C0, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911350, &qword_22C2AE080);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911350, &qword_22C2AE080);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911350, &qword_22C2AE080);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911350, &qword_22C2AE080);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C058A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911358, &qword_22C2AE088);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_22BE33928(v22, &qword_27D911358, &qword_22C2AE088);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910120, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911358, &qword_22C2AE088);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D911358, &qword_22C2AE088);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911358, &qword_22C2AE088);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911358, &qword_22C2AE088);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C058EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
  v6 = *(*(updated - 8) + 64);
  v7 = MEMORY[0x28223BE20](updated);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911360, &qword_22C2AE090);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, updated);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_22BE33928(v22, &qword_27D911360, &qword_22C2AE090);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, updated);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910138, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911360, &qword_22C2AE090);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, updated) == 1)
  {
    sub_22BE33928(v22, &qword_27D911360, &qword_22C2AE090);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911360, &qword_22C2AE090);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911360, &qword_22C2AE090);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C0593F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  MentionedApps = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(0);
  v6 = *(*(MentionedApps - 8) + 64);
  v7 = MEMORY[0x28223BE20](MentionedApps);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D911368, &qword_22C2AE098);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, MentionedApps);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_22BE33928(v22, &qword_27D911368, &qword_22C2AE098);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, MentionedApps);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910150, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D911368, &qword_22C2AE098);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, MentionedApps) == 1)
  {
    sub_22BE33928(v22, &qword_27D911368, &qword_22C2AE098);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D911368, &qword_22C2AE098);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D911368, &qword_22C2AE098);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D90EE60, &qword_22C2CCA60);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoASTFlatExpr.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22C0B137C();
  v7 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  sub_22BE2B890(v7);
  if (!v8)
  {
    sub_22BE1AEE4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v55 = sub_22BE17D78();
        sub_22C059CDC(v55, v56, v57, v58);
        goto LABEL_22;
      case 2:
        v39 = sub_22BE17D78();
        sub_22C059EE4(v39, v40, v41, v42);
        goto LABEL_22;
      case 3:
        v47 = sub_22BE17D78();
        sub_22C05A0EC(v47, v48, v49, v50);
        goto LABEL_22;
      case 4:
        v27 = sub_22BE17D78();
        sub_22C05A2F4(v27, v28, v29, v30);
        goto LABEL_22;
      case 5:
        v63 = sub_22BE17D78();
        sub_22C05A4FC(v63, v64, v65, v66);
        goto LABEL_22;
      case 6:
        v71 = sub_22BE17D78();
        sub_22C05A92C(v71, v72, v73, v74);
        goto LABEL_22;
      case 7:
        v51 = sub_22BE17D78();
        sub_22C05AB34(v51, v52, v53, v54);
        goto LABEL_22;
      case 8:
        v83 = sub_22BE17D78();
        sub_22C05AD3C(v83, v84, v85, v86);
        goto LABEL_27;
      case 9:
        v35 = sub_22BE17D78();
        sub_22C05AF44(v35, v36, v37, v38);
        goto LABEL_27;
      case 10:
        v79 = sub_22BE17D78();
        sub_22C05B14C(v79, v80, v81, v82);
        goto LABEL_27;
      case 11:
        v23 = sub_22BE17D78();
        sub_22C05B57C(v23, v24, v25, v26);
        goto LABEL_27;
      case 12:
        v31 = sub_22BE17D78();
        sub_22C05B784(v31, v32, v33, v34);
        goto LABEL_27;
      case 13:
        v67 = sub_22BE17D78();
        sub_22C05B98C(v67, v68, v69, v70);
        goto LABEL_27;
      case 14:
        v19 = sub_22BE17D78();
        sub_22C05BB94(v19, v20, v21, v22);
        goto LABEL_27;
      case 15:
        v43 = sub_22BE17D78();
        sub_22C05BD9C(v43, v44, v45, v46);
        goto LABEL_27;
      case 16:
        v15 = sub_22BE17D78();
        sub_22C05BFA4(v15, v16, v17, v18);
        goto LABEL_27;
      case 17:
        v59 = sub_22BE17D78();
        sub_22C05C1AC(v59, v60, v61, v62);
LABEL_27:
        if (v0)
        {
          sub_22BE48A74();
          sub_22C0B08BC();
          goto LABEL_4;
        }

        sub_22BE48A74();
        sub_22C0B08BC();
        break;
      case 18:
        v75 = sub_22BE17D78();
        sub_22C05A704(v75, v76, v77, v78);
        goto LABEL_31;
      case 19:
        v87 = sub_22BE17D78();
        sub_22C05B354(v87, v88, v89, v90);
LABEL_31:
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
      default:
        v11 = sub_22BE17D78();
        sub_22C059AD8(v11, v12, v13, v14);
LABEL_22:
        sub_22BE48A74();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_4;
    }
  }

  v9 = type metadata accessor for TranscriptProtoASTFlatExpr(0);
  sub_22BE235A8(v9);
LABEL_4:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C059AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C059CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9102D8, type metadata accessor for TranscriptProtoASTFlatExprPrefixVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C059EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprInfixVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910230, type metadata accessor for TranscriptProtoASTFlatExprInfixVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05A0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprDotVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9101A8, type metadata accessor for TranscriptProtoASTFlatExprDotVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05A2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprIndexVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910218, type metadata accessor for TranscriptProtoASTFlatExprIndexVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05A4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprCallVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910030, type metadata accessor for TranscriptProtoASTFlatExprCallVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05A704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 18)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05A92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprSayVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910048, type metadata accessor for TranscriptProtoASTFlatExprSayVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05AB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprPickVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910060, type metadata accessor for TranscriptProtoASTFlatExprPickVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05AD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910078, type metadata accessor for TranscriptProtoASTFlatExprConfirmVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05AF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprSearchVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910108, type metadata accessor for TranscriptProtoASTFlatExprSearchVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05B14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910178, type metadata accessor for TranscriptProtoASTFlatExprPickOneVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05B354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 19)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05B57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprUndoVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910090, type metadata accessor for TranscriptProtoASTFlatExprUndoVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05B784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910190, type metadata accessor for TranscriptProtoASTFlatExprResolveToolVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05B98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprRejectVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9100A8, type metadata accessor for TranscriptProtoASTFlatExprRejectVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05BB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTFlatExprCancelVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D9100C0, type metadata accessor for TranscriptProtoASTFlatExprCancelVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05BD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910120, type metadata accessor for TranscriptProtoASTExprContinuePlanningVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05BFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant(0);
  v9 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910138, type metadata accessor for TranscriptProtoASTFlatExprUpdateParametersVariant);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05C1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = sub_22BE5CE4C(&qword_27D90EE60, &qword_22C2CCA60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v12 - v6;
  MentionedApps = type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps(0);
  v9 = *(*(MentionedApps - 8) + 64);
  MEMORY[0x28223BE20](MentionedApps);
  sub_22BE22868();
  v10 = type metadata accessor for TranscriptProtoAstflatExprEnum(0);
  if (sub_22BE1AEA8(v7, 1, v10) == 1)
  {
    result = sub_22BE33928(v7, &qword_27D90EE60, &qword_22C2CCA60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_22C0B0868();
      sub_22BE2C988(&qword_27D910150, type metadata accessor for TranscriptProtoASTFlatExprGetMentionedApps);
      sub_22C270884();
      return sub_22C0B08BC();
    }

    result = sub_22C0B08BC();
  }

  __break(1u);
  return result;
}

uint64_t sub_22C05C63C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE2C988(&qword_27D910C30, type metadata accessor for TranscriptProtoASTFlatExpr);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22C05C6BC(uint64_t a1)
{
  v2 = sub_22BE2C988(&qword_27D9101C0, type metadata accessor for TranscriptProtoASTFlatExpr);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22C05C72C()
{
  sub_22BE2C988(&qword_27D9101C0, type metadata accessor for TranscriptProtoASTFlatExpr);

  return sub_22C270774();
}

uint64_t sub_22C05C7B8()
{
  v0 = sub_22C2708C4();
  sub_22BE952A4(v0, qword_27D90DC08);
  sub_22BE199F4(v0, qword_27D90DC08);
  sub_22BE5CE4C(&qword_27D90C770, &qword_22C294A58);
  v1 = (sub_22BE5CE4C(&qword_27D90C778, &qword_22C294A60) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22C290DA0;
  v4 = v27 + v3;
  v5 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v5 = "null";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_22C270894();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "BOOL";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "int";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "double";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "string";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "array";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "dict";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "symbol";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "identifier";
  *(v23 + 1) = 10;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "statement";
  *(v25 + 1) = 9;
  v25[16] = 2;
  v8();
  return sub_22C2708A4();
}

void TranscriptProtoASTFlatValue.decodeMessage<A>(decoder:)()
{
  sub_22BE1B434();
  while (1)
  {
    sub_22BE1B328();
    v1 = sub_22C270584();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_22BE231C0();
        sub_22BFCA9A8();
        break;
      case 2:
        sub_22BE231C0();
        sub_22C04AFB8();
        break;
      case 3:
        sub_22BE231C0();
        sub_22C05CD08();
        break;
      case 4:
        v7 = sub_22BE231C0();
        sub_22C070D7C(v7, v8, v9, v10, v11, v12, v13);
        break;
      case 5:
      case 9:
      case 10:
        sub_22BE231C0();
        sub_22C05D830();
        break;
      case 6:
        v14 = sub_22BE236F4();
        sub_22C05CE40(v14, v15, v16, v17);
        break;
      case 7:
        v18 = sub_22BE236F4();
        sub_22C05D338(v18, v19, v20, v21);
        break;
      case 11:
        v3 = sub_22BE236F4();
        sub_22C05D980(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

void sub_22C05CD08()
{
  sub_22BE19130();
  v3 = v2;
  v5 = v4;
  v11 = sub_22C0B176C(v6, v4, v7, v8, v9, v10);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1B72C();
  sub_22BE37DE0();
  sub_22BE431FC();
  sub_22C270644();
  if (!v1 && (v23 & 1) == 0)
  {
    sub_22BE32BF0();
    sub_22BE22868();
    v15 = v3(0);
    sub_22C0B1FD8(v0, 1, v15);
    sub_22BE25300();
    sub_22BE33928(v16, v17, v18);
    if (v5 != 1)
    {
      sub_22BE180C8();
      sub_22C270594();
    }

    sub_22BE25300();
    sub_22BE33928(v19, v20, v21);
    *v5 = v22;
    sub_22BE1A8C4();
    swift_storeEnumTagMultiPayload();
    sub_22C0B1B34();
  }

  sub_22BE18478();
}

uint64_t sub_22C05CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatValueArrayVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9112D8, &qword_22C2AE008);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_22BE33928(v22, &qword_27D9112D8, &qword_22C2AE008);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D9101E8, type metadata accessor for TranscriptProtoASTFlatValueArrayVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9112D8, &qword_22C2AE008);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9112D8, &qword_22C2AE008);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9112D8, &qword_22C2AE008);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9112D8, &qword_22C2AE008);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D909178, &qword_22C27FD70);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

uint64_t sub_22C05D338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoASTFlatValueDictVariant(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9112E0, &qword_22C2AE010);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_22BE33928(v22, &qword_27D9112E0, &qword_22C2AE010);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&qword_27D910200, type metadata accessor for TranscriptProtoASTFlatValueDictVariant);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9112E0, &qword_22C2AE010);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9112E0, &qword_22C2AE010);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9112E0, &qword_22C2AE010);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9112E0, &qword_22C2AE010);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D909178, &qword_22C27FD70);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void sub_22C05D830()
{
  sub_22BE19130();
  sub_22C0B1E94();
  sub_22BE18378();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE2C64C();
  sub_22BE431FC();
  sub_22C270694();
  if (v0)
  {
  }

  sub_22BE18478();
}

uint64_t sub_22C05D980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for TranscriptProtoStatementID(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v16 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  sub_22BE19DC4(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_22BE22868();
  v30 = sub_22BE1AEA8(v12, 1, v13);
  v31 = v13;
  if (v30 == 1)
  {
    sub_22BE33928(v12, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    sub_22C0B0868();
    sub_22C0B0868();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_22BE33928(v22, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22C0B0868();
      sub_22C0B0868();
      sub_22BE19DC4(v22, 0, 1, v5);
    }

    else
    {
      sub_22C0B08BC();
    }
  }

  sub_22BE2C988(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  v23 = v33;
  sub_22C2706F4();
  if (v23)
  {
    v24 = v22;
    return sub_22BE33928(v24, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22BE22868();
  if (sub_22BE1AEA8(v20, 1, v5) == 1)
  {
    sub_22BE33928(v22, &qword_27D9090F8, &unk_22C2AE4A0);
    v24 = v20;
    return sub_22BE33928(v24, &qword_27D9090F8, &unk_22C2AE4A0);
  }

  sub_22C0B0868();
  if (v30 != 1)
  {
    sub_22C270594();
  }

  v26 = v31;
  sub_22BE33928(v22, &qword_27D9090F8, &unk_22C2AE4A0);
  v27 = v29;
  sub_22BE33928(v29, &qword_27D909178, &qword_22C27FD70);
  sub_22C0B0868();
  swift_storeEnumTagMultiPayload();
  return sub_22BE19DC4(v27, 0, 1, v26);
}

void TranscriptProtoASTFlatValue.traverse<A>(visitor:)()
{
  sub_22BE2BB34();
  sub_22BE410C0();
  v1 = sub_22BE289D8();
  v3 = sub_22BE5CE4C(v1, v2);
  sub_22BE19448(v3);
  v5 = *(v4 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22C0B137C();
  v7 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  sub_22BE2B890(v7);
  if (!v8)
  {
    sub_22BE1AEE4();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_22BE28654();
        sub_22BE17D78();
        sub_22C071898();
        goto LABEL_12;
      case 2u:
        sub_22BE28654();
        sub_22BE17D78();
        sub_22C07195C();
        goto LABEL_12;
      case 3u:
        sub_22C0B08BC();
        sub_22BE28654();
        sub_22BE17D78();
        sub_22C071A2C();
        goto LABEL_12;
      case 4u:
        v9 = sub_22BE17D78();
        sub_22C05E2B8(v9, v10, v11, v12);
        goto LABEL_16;
      case 5u:
        v17 = sub_22BE17D78();
        sub_22C05E4C0(v17, v18, v19, v20);
        goto LABEL_16;
      case 6u:
        sub_22BE28CC0();
        sub_22C0B08BC();
        sub_22BE17D78();
        sub_22C05E81C();
        goto LABEL_12;
      case 7u:
        sub_22BE28CC0();
        sub_22C0B08BC();
        sub_22BE17D78();
        sub_22C05E6C8();
        goto LABEL_12;
      case 8u:
        v22 = sub_22BE17D78();
        sub_22C05E970(v22, v23, v24, v25);
LABEL_16:
        sub_22BE28CC0();
        sub_22C0B08BC();
        if (!v0)
        {
          break;
        }

        goto LABEL_14;
      case 9u:
        v13 = sub_22BE17D78();
        sub_22C05E090(v13, v14, v15, v16);
        goto LABEL_12;
      default:
        sub_22BE28654();
        sub_22BE17D78();
        sub_22C0717D8();
LABEL_12:
        if (!v0)
        {
          break;
        }

        goto LABEL_14;
    }
  }

  v21 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  sub_22BE235A8(v21);
LABEL_14:
  sub_22BE1965C();
  sub_22BEE93D4();
}

uint64_t sub_22C05E090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v4 = sub_22C270424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BE5CE4C(&qword_27D909178, &qword_22C27FD70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v16 - v11;
  sub_22BE22868();
  v13 = type metadata accessor for TranscriptProtoAstflatValueEnum(0);
  if (sub_22BE1AEA8(v12, 1, v13) == 1)
  {
    result = sub_22BE33928(v12, &qword_27D909178, &qword_22C27FD70);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = sub_22C0B08BC();
    if (EnumCaseMultiPayload == 9)
    {
      sub_22C270414();
      sub_22BE2C988(&qword_28107F1E8, MEMORY[0x277D21560]);
      sub_22C2707D4();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}