uint64_t sub_22C1CF19C()
{
  v2 = *(v0 + 8);
  result = *(v1 - 256);
  v4 = *(v1 - 296);
  return result;
}

uint64_t sub_22C1CF1CC@<X0>(uint64_t a1@<X8>)
{

  return sub_22C101EF8(a1 | (v1 << 32));
}

uint64_t sub_22C1CF248()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 184);
  return result;
}

uint64_t sub_22C1CF30C()
{

  return sub_22C273974();
}

uint64_t sub_22C1CF32C()
{
  v2 = *(v0 - 384);

  return sub_22C1CEAFC();
}

uint64_t sub_22C1CF344(uint64_t a1, uint64_t a2)
{

  return sub_22BE23490(a1, a2, v2, v3);
}

uint64_t sub_22C1CF35C()
{

  return type metadata accessor for TranscriptProtoStatementID(0);
}

uint64_t Array<A>.init<A>(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  sub_22C0F0608();
  if (!v3)
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    a2 = sub_22C2735C4();
  }

  (*(*(a3 - 8) + 8))(a1, a3);
  return a2;
}

uint64_t sub_22C1CF4E0(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ResponseGenerationProtoResponseGenerationInput(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90CAB0, type metadata accessor for ResponseGenerationProtoResponseGenerationInput);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseGenerationInput.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for ResponseGenerationProtoResponseGenerationInput);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1CF6C4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ResponseGenerationProtoStatementResultDigest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90CA38, type metadata accessor for ResponseGenerationProtoStatementResultDigest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StatementResultDigest.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for ResponseGenerationProtoStatementResultDigest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1CF8A8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoRetrievedContext(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C0F8, type metadata accessor for ContextProtoRetrievedContext);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RetrievedContext.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, v22, SDWORD2(v22), SWORD6(v22), SBYTE14(v22), SHIBYTE(v22), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31);
    sub_22C1EE0BC(v13, type metadata accessor for ContextProtoRetrievedContext);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1CFA8C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoContextMetadata(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C2E0, type metadata accessor for ContextProtoContextMetadata);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ContextMetadata.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoContextMetadata);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1CFC70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for ContextProtoStructuredContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v17 - v14;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C350, type metadata accessor for ContextProtoStructuredContext);
  sub_22C270734();
  if (!v3)
  {
    sub_22C1EE064();
    StructuredContext.init(transcript:)(v12, a3);
    sub_22C1EE0BC(v15, type metadata accessor for ContextProtoStructuredContext);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1CFE54(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C368, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StructuredContext.NowPlayingMediaItemContext.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoStructedContextNowPlayingMediaItem);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D0038(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoStructuredContextSiriRequestContext(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C380, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StructuredContext.SiriRequestContext.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoStructuredContextSiriRequestContext);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D021C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C450, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StructuredContext.UIMetadata.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadata);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D0400(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C468, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StructuredContext.UIMetadata.Window.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow);
  }

  return sub_22BE29DD4(a1, a2);
}

double sub_22C1D05E4(uint64_t a1, unint64_t a2)
{
  v6 = sub_22C270524();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for ContextProtoCGRect(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v12 = v15 - v11;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C480, type metadata accessor for ContextProtoCGRect);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    CGRect.init(transcript:)();
    v3 = v14;
    sub_22C1EE0BC(v12, type metadata accessor for ContextProtoCGRect);
  }

  sub_22BE29DD4(a1, a2);
  return v3;
}

uint64_t sub_22C1D0820(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoConfidence(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v16 - v12;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C338, type metadata accessor for ContextProtoConfidence);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  sub_22C270954();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for ContextProtoConfidence);
  return sub_22C1EE0BC(v13, type metadata accessor for ContextProtoConfidence);
}

uint64_t sub_22C1D0A24(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C2F8, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  sub_22C101F78(*v10, v10[1]);
  v15 = v10[2];
  v16 = v10[3];

  sub_22C271A44();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
  return sub_22C1EE0BC(v13, type metadata accessor for ContextProtoContextualEntityDisplayRepresentation);
}

uint64_t sub_22C1D0C5C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoBoundingBox(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C310, type metadata accessor for ContextProtoBoundingBox);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  LOBYTE(v19[0]) = *(v10 + 4);
  sub_22C101EF8(v15 | (LOBYTE(v19[0]) << 32));
  v16 = v10[2];
  LOBYTE(v19[0]) = *(v10 + 12);
  sub_22C101EF8(v16 | (LOBYTE(v19[0]) << 32));
  v17 = v10[4];
  LOBYTE(v19[0]) = *(v10 + 20);
  sub_22C101EF8(v17 | (LOBYTE(v19[0]) << 32));
  v18 = v10[6];
  LOBYTE(v19[0]) = *(v10 + 28);
  sub_22C101EF8(v18 | (LOBYTE(v19[0]) << 32));
  sub_22C2709A4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for ContextProtoBoundingBox);
  return sub_22C1EE0BC(v13, type metadata accessor for ContextProtoBoundingBox);
}

uint64_t sub_22C1D0F18(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoSurroundingText(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90BF88, type metadata accessor for ContextProtoSurroundingText);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    SurroundingText.init(transcript:)(v10);
    sub_22C1EE0BC(v13, type metadata accessor for ContextProtoSurroundingText);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D10FC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C560, type metadata accessor for ContextProtoRetrievedTool.Definition);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RetrievedTool.Definition.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoRetrievedTool.Definition);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D12E0(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoUIControlTool(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C578, type metadata accessor for ContextProtoUIControlTool);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    UIControlTool.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoUIControlTool);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D14C4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoRetrievedTool(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C1B8, type metadata accessor for ContextProtoRetrievedTool);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RetrievedTool.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31);
    sub_22C1EE0BC(v13, type metadata accessor for ContextProtoRetrievedTool);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D16A8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  Output = type metadata accessor for ContextProtoToolQueryOutput(0);
  v8 = *(*(Output - 8) + 64);
  MEMORY[0x28223BE20](Output);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C5C8, type metadata accessor for ContextProtoToolQueryOutput);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ToolQuery.Output.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoToolQueryOutput);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D188C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v8 = *(*(DecorationToolRetrievalResponse - 8) + 64);
  MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    QueryDecorationToolRetrievalResponse.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31);
    sub_22C1EE0BC(v13, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D1A70(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C0F0, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    DynamicEnumerationEntity.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoDynamicEnumerationEntity);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D1C54(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C1C0, type metadata accessor for ContextProtoToolRetrievalType);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ToolRetrievalType.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoToolRetrievalType);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D1E38(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoSampleInvocation(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C158, type metadata accessor for ContextProtoSampleInvocation);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v16 = *(v10 + 1);
  v17 = *(v10 + 4);

  sub_22C270F34();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for ContextProtoSampleInvocation);
  return sub_22C1EE0BC(v13, type metadata accessor for ContextProtoSampleInvocation);
}

uint64_t sub_22C1D2054@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v31 - v8;
  v10 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22C270524();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = v31 - v19;
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C0E8, type metadata accessor for ContextProtoSpanMatchedEntity);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v22 = *(v14 + 20);
  sub_22BE22868();
  sub_22C0FC7A8(v9, v23, v24, v25, v26, v27, v28, v29, *&v31[0], *(&v31[0] + 1));
  v30 = *v17;

  sub_22C0F436C();
  sub_22C270FA4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v17, type metadata accessor for ContextProtoSpanMatchedEntity);
  return sub_22C1EE0BC(v20, type metadata accessor for ContextProtoSpanMatchedEntity);
}

uint64_t sub_22C1D2370(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoEntityMatch(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C1D0, type metadata accessor for ContextProtoEntityMatch);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    EntityMatch.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoEntityMatch);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D2554@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v6 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v25 - v8;
  v10 = sub_22BE5CE4C(&qword_27D9073C0, &qword_22C275330);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22C270524();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v15 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v25 - v19;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C618, type metadata accessor for ContextProtoMatchProperties);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v22 = *v17;
  v23 = v17[8];
  v25[1] = *(v17 + 2);
  v25[2] = v22;
  v26 = v17[24];
  v24 = *(matched + 24);
  sub_22BE22868();
  sub_22C0FFB8C(v9);
  sub_22C270E14();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v17, type metadata accessor for ContextProtoMatchProperties);
  return sub_22C1EE0BC(v20, type metadata accessor for ContextProtoMatchProperties);
}

uint64_t sub_22C1D2858(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for ContextProtoAliasTypes(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C630, type metadata accessor for ContextProtoAliasTypes);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AliasTypes.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31);
    sub_22C1EE0BC(v13, type metadata accessor for ContextProtoAliasTypes);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D2A3C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  DecorationInput = type metadata accessor for ContextProtoQueryDecorationInput(0);
  v8 = *(*(DecorationInput - 8) + 64);
  MEMORY[0x28223BE20](DecorationInput);
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C508, type metadata accessor for ContextProtoQueryDecorationInput);
  v12 = DecorationInput;
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    QueryDecorationInput.init(transcript:)();
    v12 = v13;
    sub_22C1EE0BC(v11, type metadata accessor for ContextProtoQueryDecorationInput);
  }

  sub_22BE29DD4(a1, a2);
  return v12;
}

uint64_t sub_22C1D2C3C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v8 = *(*(DecorationOutput - 8) + 64);
  MEMORY[0x28223BE20](DecorationOutput);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v16 - v12;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C4C8, type metadata accessor for ContextProtoVersionedQueryDecorationOutput);
  v14 = DecorationOutput;
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    v14 = VersionedQueryDecorationOutput.init(transcript:)(v10);
    sub_22C1EE0BC(v13, type metadata accessor for ContextProtoVersionedQueryDecorationOutput);
  }

  sub_22BE29DD4(a1, a2);
  return v14;
}

uint64_t sub_22C1D2E3C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v8 = *(*(DecorationOutput - 8) + 64);
  MEMORY[0x28223BE20](DecorationOutput);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v16 - v12;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90C4F0, type metadata accessor for ContextProtoQueryDecorationOutput);
  v14 = DecorationOutput;
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    v14 = QueryDecorationOutput.init(transcript:)(v10);
    sub_22C1EE0BC(v13, type metadata accessor for ContextProtoQueryDecorationOutput);
  }

  sub_22BE29DD4(a1, a2);
  return v14;
}

uint64_t sub_22C1D303C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoEvent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&unk_28107AB68, type metadata accessor for TranscriptProtoEvent);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Session.Event.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoEvent);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D3220(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoTranscript(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F360, type metadata accessor for TranscriptProtoTranscript);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Session.Transcript.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoTranscript);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D3404(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoTimepoint(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_281078C68, type metadata accessor for TranscriptProtoTimepoint);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Timepoint.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoTimepoint);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D35E8()
{
  v1 = sub_22C270524();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for TranscriptProtoParticipantID(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  sub_22C270514();
  sub_22C1EE01C(&unk_281076C00, type metadata accessor for TranscriptProtoParticipantID);
  v8 = v3;
  sub_22C270734();
  if (!v0)
  {
    sub_22C1EDFC4();
    v8 = *v6;
    v9 = v6[1];

    sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoParticipantID);
  }

  return v8;
}

uint64_t sub_22C1D37B4()
{
  v1 = sub_22C270524();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for TranscriptProtoSpanID(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_22C270514();
  sub_22C1EE01C(&unk_28107A328, type metadata accessor for TranscriptProtoSpanID);
  v8 = v3;
  sub_22C270734();
  if (!v0)
  {
    sub_22C1EDFC4();
    v8 = *v6;
    sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoSpanID);
  }

  return v8;
}

uint64_t sub_22C1D3974(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoPayload(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_2810798C8, type metadata accessor for TranscriptProtoPayload);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Session.Event.Payload.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoPayload);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D3B58(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoSessionStart(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_2810773C0, type metadata accessor for TranscriptProtoSessionStart);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    SessionStart.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoSessionStart);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D3D3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v6 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_22C26EA34();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22C270524();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = v25 - v19;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910698, type metadata accessor for TranscriptProtoDeviceDetails);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v22 = v17[1];
  v25[1] = *v17;
  v23 = *(v14 + 20);

  sub_22C101398();
  v24 = *v9;
  sub_22C26EA14();
  sub_22C1EE0BC(v9, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  sub_22C26EA44();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoDeviceDetails);
  return sub_22C1EE0BC(v20, type metadata accessor for TranscriptProtoDeviceDetails);
}

uint64_t sub_22C1D402C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v16 - v12;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910680, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  sub_22C26EA14();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
}

uint64_t sub_22C1D4228@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26[1] = a3;
  v5 = sub_22C26E244();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C270524();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = v26 - v16;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&unk_281075FE0, type metadata accessor for TranscriptProtoLocaleSettings);
  v18 = v30;
  sub_22C270734();
  if (v18)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v20 = *v14;
  v21 = v14[1];

  sub_22C26E1E4();
  v22 = v14[2];
  v23 = v14[3];

  sub_22C26E1E4();
  v24 = v14[4];
  v25 = v14[5];

  sub_22C26E1E4();
  sub_22C26EC54();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v14, type metadata accessor for TranscriptProtoLocaleSettings);
  return sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoLocaleSettings);
}

uint64_t sub_22C1D4508(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoGenderSettings(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910668, type metadata accessor for TranscriptProtoGenderSettings);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  GenderSettings.init(transcript:)();
  sub_22BE29DD4(a1, a2);
  return sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoGenderSettings);
}

uint64_t sub_22C1D46F4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F388, type metadata accessor for TranscriptProtoDateTimeContext);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    DateTimeContext.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoDateTimeContext);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D48D8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoUserTurnStarted(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F3A0, type metadata accessor for TranscriptProtoUserTurnStarted);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    UserTurnStarted.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoUserTurnStarted);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D4ABC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v31 = a3;
  v5 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C270524();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = type metadata accessor for TranscriptProtoUserTurn(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F3B8, type metadata accessor for TranscriptProtoUserTurn);
  v22 = v35;
  sub_22C270734();
  if (v22)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v24 = v31;
  sub_22C1EE064();
  sub_22BE22868();
  if (sub_22BE1AEA8(v8, 1, v9) == 1)
  {
    sub_22BE33928(v8, &qword_27D90E4F0, &qword_22C2CC7E0);
    *&v32 = v9;
    sub_22BE5CE4C(&qword_27D9155D0, &qword_22C2CC7E8);
    v25 = sub_22C273074();
    v27 = v26;
    sub_22C108598();
    swift_allocError();
    *v28 = v25;
    *(v28 + 8) = v27;
    *(v28 + 16) = 0;
    swift_willThrow();
    sub_22BE29DD4(a1, a2);
    sub_22C1EE0BC(v18, type metadata accessor for TranscriptProtoUserTurn);
    return sub_22C1EE0BC(v21, type metadata accessor for TranscriptProtoUserTurn);
  }

  else
  {
    sub_22BE29DD4(a1, a2);
    sub_22C1EE0BC(v18, type metadata accessor for TranscriptProtoUserTurn);
    sub_22C1EE0BC(v21, type metadata accessor for TranscriptProtoUserTurn);
    sub_22C1EDFC4();
    v29 = swift_getEnumCaseMultiPayload() == 1;
    result = sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoUserTurnEnum);
    *v24 = v29;
  }

  return result;
}

uint64_t sub_22C1D4E84()
{
  v1 = sub_22C270524();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for TranscriptProtoUserTurnSpeech(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F3D0, type metadata accessor for TranscriptProtoUserTurnSpeech);
  result = sub_22C270734();
  if (!v0)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoUserTurnSpeech);
  }

  return result;
}

uint64_t sub_22C1D4FF0()
{
  v1 = sub_22C270524();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for TranscriptProtoUserTurnText(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F3E8, type metadata accessor for TranscriptProtoUserTurnText);
  result = sub_22C270734();
  if (!v0)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoUserTurnText);
  }

  return result;
}

uint64_t sub_22C1D515C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoSpeechPartialResult(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F400, type metadata accessor for TranscriptProtoSpeechPartialResult);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v18 = *v12;
  v17 = v12[1];
  v19 = v12[2];

  sub_22C0F28E0(v20);
  v22 = v21;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoSpeechPartialResult);
  result = sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoSpeechPartialResult);
  *a3 = v18;
  a3[1] = v17;
  a3[2] = v22;
  return result;
}

uint64_t sub_22C1D5384(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Request.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoRequest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D5568(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoRequestContent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RequestContent.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoRequestContent);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D574C()
{
  v1 = sub_22C270524();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F450, type metadata accessor for TranscriptProtoRequestContentStopContent);
  result = sub_22C270734();
  if (!v0)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoRequestContentStopContent);
  }

  return result;
}

uint64_t sub_22C1D58B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v35 = a3;
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C26E684();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C270524();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = v31 - v20;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v33 = v9;
  sub_22C1EE064();
  v24 = *v18;
  v23 = v18[1];
  v25 = *(v15 + 20);

  sub_22C1026C4();
  v32 = v24;
  v26 = v39;
  v31[3] = *v39;
  v27 = *(v39 + 1);
  v28 = *(v39 + 2);

  sub_22C26E664();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v26, type metadata accessor for TranscriptProtoStatementID);
  sub_22C1EE0BC(v18, type metadata accessor for TranscriptProtoRequestContentTextContent);
  sub_22C1EE0BC(v21, type metadata accessor for TranscriptProtoRequestContentTextContent);
  v29 = v35;
  *v35 = v32;
  *(v29 + 1) = v23;
  v30 = type metadata accessor for RequestContent.TextContent(0);
  return (*(v34 + 32))(&v29[*(v30 + 20)], v12, v33);
}

uint64_t sub_22C1D5C5C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F470, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RequestContent.SpeechContent.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D5E40(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;

  sub_22C0F22C8(v16, v17, v18, v19, v20, v21, v22, v23, *&v24[0], *(&v24[0] + 1));
  sub_22C26EAD4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoSpeechPackage);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoSpeechPackage);
}

uint64_t sub_22C1D604C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E5C8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;

  sub_22C0F25D4(v16, v17, v18, v19, v20, v21, v22, v23, *&v24[0], *(&v24[0] + 1));
  sub_22C26EAD4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
}

uint64_t sub_22C1D6258(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E5D8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;

  sub_22C0F28E0(v16);
  sub_22C26EAD4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
}

uint64_t sub_22C1D6464(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E518, type metadata accessor for TranscriptProtoSpeechPackage.Token);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v16 = v10[1];
  v17 = v10[2];
  v18 = v10[3];
  v19 = v10[4];
  v20 = v10[5];

  sub_22C26EB24();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoSpeechPackage.Token);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoSpeechPackage.Token);
}

uint64_t sub_22C1D669C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_281072DC0, type metadata accessor for TranscriptProtoExternalAgentRequest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ExternalAgentRequest.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoExternalAgentRequest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D6880(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F4F0, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RequestPrescribedPlan.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D6A64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F508, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = *(v8 + 1);
    v13 = v8[16];
    v14 = v8[17];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);
    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13;
    *(a1 + 17) = v14;
  }

  return result;
}

uint64_t sub_22C1D6C3C@<X0>(void *a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F520, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = v8[1];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
    *a1 = v12;
    a1[1] = v11;
  }

  return result;
}

uint64_t sub_22C1D6E04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F538, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = *(v8 + 1);
    v13 = v8[16];
    v15 = *(v8 + 3);
    v14 = *(v8 + 4);

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13;
    *(a1 + 24) = v15;
    *(a1 + 32) = v14;
  }

  return result;
}

uint64_t sub_22C1D6FE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F550, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = *(v8 + 1);
    v13 = v8[16];
    v15 = *(v8 + 3);
    v14 = *(v8 + 4);
    v16 = *(v8 + 6);
    v19 = *(v8 + 5);

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13;
    *(a1 + 24) = v15;
    *(a1 + 32) = v14;
    *(a1 + 40) = v19;
    *(a1 + 48) = v16;
  }

  return result;
}

uint64_t sub_22C1D71E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F568, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = *(v8 + 1);
    v13 = v8[16];
    v15 = *(v8 + 3);
    v14 = *(v8 + 4);

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13;
    *(a1 + 24) = v15;
    *(a1 + 32) = v14;
  }

  return result;
}

uint64_t sub_22C1D73C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F580, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = *(v8 + 1);
    v13 = v8[16];
    v15 = *(v8 + 3);
    v14 = *(v8 + 4);

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13;
    *(a1 + 24) = v15;
    *(a1 + 32) = v14;
  }

  return result;
}

uint64_t sub_22C1D75A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C26E684();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_22C270524();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v29 - v18;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F598, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v30 = v9;
  sub_22C1EE064();
  sub_22C1026C4();
  v21 = v36;
  v29[1] = *v36;
  v22 = *(v36 + 1);
  v23 = *(v36 + 2);

  sub_22C26E664();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v21, type metadata accessor for TranscriptProtoStatementID);
  sub_22C1EE0BC(v19, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  v24 = &v16[*(v13 + 20)];
  v25 = *v24;
  v26 = v24[8];
  sub_22C1EE0BC(v16, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v28 = v32 + *(type metadata accessor for RequestPrescribedPlan.OpenTool(0) + 20);
  result = (*(v31 + 32))();
  *v28 = v27;
  *(v28 + 8) = v26;
  return result;
}

uint64_t sub_22C1D7948@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F5B0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v11 = *v8;
    v12 = v8[8];
    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    *a1 = v13;
    *(a1 + 8) = v12;
  }

  return result;
}

uint64_t sub_22C1D7B18@<X0>(void *a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F438, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = v8[1];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
    *a1 = v12;
    a1[1] = v11;
  }

  return result;
}

uint64_t sub_22C1D7CE0(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoAction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90CAF8, type metadata accessor for TranscriptProtoAction);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Action.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoAction);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D7EC4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F5E8, type metadata accessor for TranscriptProtoActionCancellation);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionCancellation.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoActionCancellation);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D80A8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoClientAction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F710, type metadata accessor for TranscriptProtoClientAction);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ClientAction.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoClientAction);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D828C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoShimParameter(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E790, type metadata accessor for TranscriptProtoShimParameter);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ClientAction.ShimParameter.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], SDWORD2(v22[0]), SWORD6(v22[0]), SBYTE14(v22[0]), SHIBYTE(v22[0]));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoShimParameter);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D8470@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22BE5CE4C(&qword_27D90E7A8, &unk_22C2B5C40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_22C270524();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = type metadata accessor for TranscriptProtoPersonQuery(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v26 - v16;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F760, type metadata accessor for TranscriptProtoPersonQuery);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v19 = *(v14 + 2);
  v28 = *(v14 + 1);
  v20 = *(v11 + 24);
  sub_22BE22868();

  sub_22C0FE2E8();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoPersonQuery);
  v21 = v26[0];
  v22 = *v14;
  v23 = &v14[*(v11 + 28)];
  v25 = *v23;
  v24 = *(v23 + 1);

  result = sub_22C1EE0BC(v14, type metadata accessor for TranscriptProtoPersonQuery);
  *a3 = v28;
  *(a3 + 8) = v19;
  *(a3 + 16) = v21;
  *(a3 + 17) = v22;
  *(a3 + 24) = v25;
  *(a3 + 32) = v24;
  return result;
}

uint64_t sub_22C1D876C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoPhotosCandidates(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = v30 - v14;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F7A0, type metadata accessor for TranscriptProtoPhotosCandidates);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v18 = v12[1];
  v17 = v12[2];
  v19 = *v12;

  sub_22C0F2F3C(v20, v21, v22, v23, v24, v25, v26, v27);
  v29 = v28;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoPhotosCandidates);
  result = sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoPhotosCandidates);
  *a3 = v18;
  a3[1] = v17;
  a3[2] = v29;
  return result;
}

uint64_t sub_22C1D89DC@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoPersonQuery.Handle(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F778, type metadata accessor for TranscriptProtoPersonQuery.Handle);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v11 = *v8;
    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoPersonQuery.Handle);
    *a1 = v11;
  }

  return result;
}

uint64_t sub_22C1D8B9C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  Step = type metadata accessor for TranscriptProtoQueryStep(0);
  v8 = *(*(Step - 8) + 64);
  MEMORY[0x28223BE20](Step);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FB40, type metadata accessor for TranscriptProtoQueryStep);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    QueryStep.init(transcript:)(v10);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoQueryStep);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1D8D80@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v72 = a3;
  v84 = sub_22C272874();
  v87 = *(v84 - 8);
  v5 = *(v87 + 64);
  MEMORY[0x28223BE20](v84);
  v85 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = &v68 - v8;
  v97 = sub_22C272594();
  v86 = *(v97 - 8);
  v9 = *(v86 + 64);
  MEMORY[0x28223BE20](v97);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  v18 = sub_22C270524();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v26 = &v68 - v25;
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FB70, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
  v27 = v92;
  sub_22C270734();
  if (v27)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v92 = 0;
  v93 = v17;
  v81 = v14;
  v82 = v11;
  v68 = a1;
  v69 = a2;
  sub_22C1EE064();
  v71 = v23;
  v29 = *v23;
  sub_22BE5CE4C(&qword_27D9155C8, &unk_22C2CC7D0);
  result = sub_22C273D04();
  v30 = 0;
  v31 = *(v29 + 64);
  v70 = v29 + 64;
  v79 = v29;
  v32 = 1 << *(v29 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v35 = (v32 + 63) >> 6;
  v36 = v86;
  v77 = v86 + 16;
  v78 = (v86 + 8);
  v75 = v87 + 32;
  v74 = result + 64;
  v76 = v26;
  v73 = v35;
  v80 = result;
  while (1)
  {
    v37 = v93;
    v38 = v82;
    if (!v34)
    {
      break;
    }

    v39 = v81;
    v40 = __clz(__rbit64(v34));
    v88 = (v34 - 1) & v34;
LABEL_13:
    v44 = v40 | (v30 << 6);
    v45 = *(v79 + 56);
    v46 = (*(v79 + 48) + 16 * v44);
    v47 = v46[1];
    v89 = *v46;
    v90 = v44;
    v48 = *(v36 + 16);
    v49 = v97;
    v48(v93, v45 + *(v36 + 72) * v44, v97);
    v48(v39, v37, v49);
    v48(v38, v39, v49);
    v91 = v47;

    v50 = v85;
    v51 = v92;
    sub_22C272864();
    if (v51)
    {
      v66 = *v78;
      v67 = v97;
      (*v78)(v39, v97);

      v66(v37, v67);
      sub_22BE29DD4(v68, v69);
      sub_22C1EE0BC(v76, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
      return sub_22C1EE0BC(v71, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
    }

    v92 = 0;
    v52 = *v78;
    v53 = v97;
    (*v78)(v39, v97);
    v54 = v87;
    v55 = *(v87 + 32);
    v56 = v83;
    v57 = v50;
    v58 = v84;
    v55(v83, v57, v84);
    v52(v93, v53);
    v59 = v90;
    *(v74 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v90;
    v60 = v80;
    v61 = (*(v80 + 48) + 16 * v59);
    v62 = v91;
    *v61 = v89;
    v61[1] = v62;
    result = (v55)(*(v60 + 56) + *(v54 + 72) * v59, v56, v58);
    v63 = *(v60 + 16);
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_20;
    }

    *(v60 + 16) = v65;
    v36 = v86;
    v26 = v76;
    v35 = v73;
    v34 = v88;
  }

  v41 = v30;
  v42 = v71;
  while (1)
  {
    v30 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v30 >= v35)
    {
      sub_22BE29DD4(v68, v69);
      sub_22C1EE0BC(v26, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
      result = sub_22C1EE0BC(v42, type metadata accessor for TranscriptProtoQueryPayload.SearchToolQuery);
      *v72 = v80;
      return result;
    }

    v43 = *(v70 + 8 * v30);
    ++v41;
    if (v43)
    {
      v39 = v81;
      v40 = __clz(__rbit64(v43));
      v88 = (v43 - 1) & v43;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22C1D9458@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v6 = sub_22C2725C4();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v35 - v10;
  v11 = sub_22C272984();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C270524();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = type metadata accessor for TranscriptProtoQueryPayload.StringQuery(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v23 = &v35 - v22;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FB88, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v36 = v14;
  v37 = a2;
  v25 = v40;
  v26 = v41;
  v35 = v11;
  v27 = v42;
  sub_22C1EE064();
  v28 = v20 + *(v17 + 20);
  sub_22C1022DC();
  v29 = v27;
  (*(v26 + 16))(v25, v46, v27);
  v30 = v36;
  sub_22C272974();
  (*(v26 + 8))(v46, v29);
  sub_22BE29DD4(a1, v37);
  sub_22C1EE0BC(v23, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
  v32 = *v20;
  v31 = v20[1];

  sub_22C1EE0BC(v20, type metadata accessor for TranscriptProtoQueryPayload.StringQuery);
  v33 = v39;
  (*(v38 + 32))(v39, v30, v35);
  result = type metadata accessor for QueryPayload.StringQuery(0);
  v34 = (v33 + *(result + 20));
  *v34 = v32;
  v34[1] = v31;
  return result;
}

uint64_t sub_22C1D9878@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v6 = sub_22C2725C4();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v33 - v10;
  v11 = sub_22C272984();
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C270524();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v23 = &v33 - v22;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FBA0, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v34 = v14;
  v35 = a2;
  v25 = v38;
  v26 = v39;
  v33 = v11;
  v27 = v40;
  sub_22C1EE064();
  v28 = v20 + *(v17 + 20);
  sub_22C1022DC();
  v29 = v27;
  (*(v26 + 16))(v25, v44, v27);
  v30 = v34;
  sub_22C272974();
  (*(v26 + 8))(v44, v29);
  sub_22BE29DD4(a1, v35);
  sub_22C1EE0BC(v23, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v31 = *v20;

  sub_22C1EE0BC(v20, type metadata accessor for TranscriptProtoQueryPayload.IdentifierQuery);
  v32 = v37;
  (*(v36 + 32))(v37, v30, v33);
  result = type metadata accessor for QueryPayload.IdentifierQuery(0);
  *(v32 + *(result + 20)) = v31;
  return result;
}

uint64_t sub_22C1D9C94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v72 = a3;
  v84 = sub_22C272874();
  v87 = *(v84 - 8);
  v5 = *(v87 + 64);
  MEMORY[0x28223BE20](v84);
  v85 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = &v68 - v8;
  v97 = sub_22C272594();
  v86 = *(v97 - 8);
  v9 = *(v86 + 64);
  MEMORY[0x28223BE20](v97);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v68 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  v18 = sub_22C270524();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v26 = &v68 - v25;
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FBB8, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);
  v27 = v92;
  sub_22C270734();
  if (v27)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v92 = 0;
  v93 = v17;
  v81 = v14;
  v82 = v11;
  v68 = a1;
  v69 = a2;
  sub_22C1EE064();
  v71 = v23;
  v29 = *v23;
  sub_22BE5CE4C(&qword_27D9155C8, &unk_22C2CC7D0);
  result = sub_22C273D04();
  v30 = 0;
  v31 = *(v29 + 64);
  v70 = v29 + 64;
  v79 = v29;
  v32 = 1 << *(v29 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v35 = (v32 + 63) >> 6;
  v36 = v86;
  v77 = v86 + 16;
  v78 = (v86 + 8);
  v75 = v87 + 32;
  v74 = result + 64;
  v76 = v26;
  v73 = v35;
  v80 = result;
  while (1)
  {
    v37 = v93;
    v38 = v82;
    if (!v34)
    {
      break;
    }

    v39 = v81;
    v40 = __clz(__rbit64(v34));
    v88 = (v34 - 1) & v34;
LABEL_13:
    v44 = v40 | (v30 << 6);
    v45 = *(v79 + 56);
    v46 = (*(v79 + 48) + 16 * v44);
    v47 = v46[1];
    v89 = *v46;
    v90 = v44;
    v48 = *(v36 + 16);
    v49 = v97;
    v48(v93, v45 + *(v36 + 72) * v44, v97);
    v48(v39, v37, v49);
    v48(v38, v39, v49);
    v91 = v47;

    v50 = v85;
    v51 = v92;
    sub_22C272864();
    if (v51)
    {
      v66 = *v78;
      v67 = v97;
      (*v78)(v39, v97);

      v66(v37, v67);
      sub_22BE29DD4(v68, v69);
      sub_22C1EE0BC(v76, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);
      return sub_22C1EE0BC(v71, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);
    }

    v92 = 0;
    v52 = *v78;
    v53 = v97;
    (*v78)(v39, v97);
    v54 = v87;
    v55 = *(v87 + 32);
    v56 = v83;
    v57 = v50;
    v58 = v84;
    v55(v83, v57, v84);
    v52(v93, v53);
    v59 = v90;
    *(v74 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v90;
    v60 = v80;
    v61 = (*(v80 + 48) + 16 * v59);
    v62 = v91;
    *v61 = v89;
    v61[1] = v62;
    result = (v55)(*(v60 + 56) + *(v54 + 72) * v59, v56, v58);
    v63 = *(v60 + 16);
    v64 = __OFADD__(v63, 1);
    v65 = v63 + 1;
    if (v64)
    {
      goto LABEL_20;
    }

    *(v60 + 16) = v65;
    v36 = v86;
    v26 = v76;
    v35 = v73;
    v34 = v88;
  }

  v41 = v30;
  v42 = v71;
  while (1)
  {
    v30 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v30 >= v35)
    {
      sub_22BE29DD4(v68, v69);
      sub_22C1EE0BC(v26, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);
      result = sub_22C1EE0BC(v42, type metadata accessor for TranscriptProtoQueryPayload.AnswerSynthesisToolQuery);
      *v72 = v80;
      return result;
    }

    v43 = *(v70 + 8 * v30);
    ++v41;
    if (v43)
    {
      v39 = v81;
      v40 = __clz(__rbit64(v43));
      v88 = (v43 - 1) & v43;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22C1DA36C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v49 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22C26E684();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C270524();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = type metadata accessor for TranscriptProtoVariableStep(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910018, type metadata accessor for TranscriptProtoVariableStep);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v41 = v9;
  sub_22C1EE064();
  v23 = v18 + *(v15 + 20);
  sub_22C1026C4();
  v24 = v49;
  v25 = *v49;
  v26 = *(v49 + 1);
  v27 = *(v49 + 2);

  sub_22C26E664();
  sub_22C1EE0BC(v24, type metadata accessor for TranscriptProtoStatementID);
  v28 = *v18;

  sub_22C0F50E4(v29, v30, v31, v32, v33, v34, v35, v36, v40, v41, v42, v43, v44, *(&v44 + 1), v45, *(&v45 + 1), v46, v47, v48, v49);
  v38 = v37;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v18, type metadata accessor for TranscriptProtoVariableStep);
  sub_22C1EE0BC(v21, type metadata accessor for TranscriptProtoVariableStep);
  v39 = v42;
  (*(v43 + 32))(v42, v12, v41);
  result = type metadata accessor for VariableStep(0);
  *(v39 + *(result + 20)) = v38;
  return result;
}

uint64_t sub_22C1DA738(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F7D0, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v16 = v10[1];
  v17 = v10[2];
  objc_allocWithZone(MEMORY[0x277CCA9B8]);

  sub_22C24F544(v15, v16, v17, 0);
  sub_22C26E5E4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoIntelligenceFlowError);
}

uint64_t sub_22C1DA970(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoSystemPromptResolution(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FEF0, type metadata accessor for TranscriptProtoSystemPromptResolution);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RequestContent.SystemPromptResolution.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoSystemPromptResolution);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DAB54(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoStatementResult(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E748, type metadata accessor for TranscriptProtoStatementResult);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StatementResult.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoStatementResult);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DAD38(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  StepResults = type metadata accessor for TranscriptProtoQueryStepResults(0);
  v8 = *(*(StepResults - 8) + 64);
  MEMORY[0x28223BE20](StepResults);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FBD0, type metadata accessor for TranscriptProtoQueryStepResults);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    QueryStepResults.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoQueryStepResults);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DAF1C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoSystemResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910610, type metadata accessor for TranscriptProtoSystemResponse);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    SystemResponse.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoSystemResponse);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DB100(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoInterpretedStatementResult(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F070, type metadata accessor for TranscriptProtoInterpretedStatementResult);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    InterpretedStatementResult.init(transcript:)(v10);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoInterpretedStatementResult);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DB2E4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoActionResolverRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FF20, type metadata accessor for TranscriptProtoActionResolverRequest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionResolverRequest.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoActionResolverRequest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DB4C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoResponseGenerationRequest(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F6D0, type metadata accessor for TranscriptProtoResponseGenerationRequest);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v17 = *v12;

  sub_22C0F77A0();
  v19 = v18;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoResponseGenerationRequest);
  result = sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoResponseGenerationRequest);
  *a3 = v19;
  return result;
}

uint64_t sub_22C1DB6D8()
{
  v1 = sub_22C270524();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for TranscriptProtoSafetyModeRelease(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FF70, type metadata accessor for TranscriptProtoSafetyModeRelease);
  result = sub_22C270734();
  if (!v0)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoSafetyModeRelease);
  }

  return result;
}

uint64_t sub_22C1DB844@<X0>(void *a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoSafetyModeException(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FF88, type metadata accessor for TranscriptProtoSafetyModeException);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = v8[1];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoSafetyModeException);
    *a1 = v12;
    a1[1] = v11;
  }

  return result;
}

uint64_t sub_22C1DBA0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v6 = sub_22BE5CE4C(&qword_27D908FF8, &qword_22C27FC50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v50 - v8;
  v63 = sub_22C272594();
  v58 = *(v63 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x28223BE20](v63);
  v57 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v50 - v12;
  v13 = sub_22C272874();
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22C270524();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = type metadata accessor for TranscriptProtoVariableSetter(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - v24;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90ED88, type metadata accessor for TranscriptProtoVariableSetter);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v27 = v59;
  v52 = v13;
  v53 = v16;
  v28 = v63;
  sub_22C1EE064();
  v29 = *v22;

  Dictionary<>.init(transcript:)(v30, v31, v32, v33, v34, v35, v36, v37, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, *(&v60 + 1));
  v39 = v38;
  v51 = v25;
  v40 = v22 + *(v19 + 20);
  v41 = v27;
  sub_22C101488();
  v42 = a2;
  v50 = v39;
  v43 = v58;
  v44 = v27;
  v45 = v28;
  (*(v58 + 16))(v57, v44, v28);
  v46 = v53;
  sub_22C272864();
  (*(v43 + 8))(v41, v45);
  sub_22BE29DD4(a1, v42);
  sub_22C1EE0BC(v22, type metadata accessor for TranscriptProtoVariableSetter);
  sub_22C1EE0BC(v51, type metadata accessor for TranscriptProtoVariableSetter);
  v47 = sub_22C26E614();
  sub_22BE19DC4(v54, 1, 1, v47);
  v48 = type metadata accessor for VariableSetter(0);
  v49 = v55;
  sub_22BE19DC4(&v55[*(v48 + 24)], 1, 1, v47);
  *v49 = v50;
  (*(v56 + 32))(&v49[*(v48 + 20)], v46, v52);
  return sub_22C193480();
}

uint64_t sub_22C1DBF44(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FFC0, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RequestContent.SystemPromptResolution.UserAction.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoSystemPromptResolutionUserAction);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DC128(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoStatementResultPayload(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F6A8, type metadata accessor for TranscriptProtoStatementResultPayload);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StatementResultPayload.init(transcript:)(v10);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoStatementResultPayload);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DC30C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoResponseOutput(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FC00, type metadata accessor for TranscriptProtoResponseOutput);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseOutput.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoResponseOutput);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DC4F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  v10 = *(*(Results - 8) + 64);
  MEMORY[0x28223BE20](Results);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EAC0, type metadata accessor for TranscriptProtoQueryResults);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v17 = *v12;

  sub_22C0F4E60();
  v19 = v18;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoQueryResults);
  result = sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoQueryResults);
  *a3 = v19;
  return result;
}

uint64_t sub_22C1DC700(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoActionParameterContext(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F7B8, type metadata accessor for TranscriptProtoActionParameterContext);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionParameterContext.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoActionParameterContext);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DC8E4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoActionConfirmation(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F618, type metadata accessor for TranscriptProtoActionConfirmation);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionConfirmation.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoActionConfirmation);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DCAC8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyle(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F630, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionConfirmation.SystemStyle.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoActionConfirmationSystemStyle);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DCCAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v6 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C26FB14();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C270524();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F648, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v33 = v9;
  sub_22C1EE064();
  v24 = *v18;
  v23 = *(v18 + 1);
  v25 = *(v15 + 24);

  sub_22C101A48();
  v32 = v23;
  v26 = *v39;
  if (v26 == 4)
  {
    *&v36 = &type metadata for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSourceEnum;
    sub_22BE5CE4C(&qword_27D9155C0, &unk_22C2CC7C0);
    v27 = sub_22C273074();
    v29 = v28;
    sub_22C108598();
    swift_allocError();
    *v30 = v27;
    *(v30 + 8) = v29;
    *(v30 + 16) = 0;
    swift_willThrow();
    sub_22C1EE0BC(v39, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  }

  else
  {
    sub_22C1EE0BC(v39, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
    (*(v34 + 104))(v12, **(&unk_278725C38 + v26), v33);
    v31 = v18[16];
    sub_22C26FAE4();
  }

  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v18, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
  return sub_22C1EE0BC(v21, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablement);
}

uint64_t sub_22C1DD08C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F660, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  sub_22C270734();
  if (!v3)
  {
    sub_22C1EE064();
    v16 = *v12;
    if (v16 == 4)
    {
      *&v23[0] = &type metadata for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSourceEnum;
      sub_22BE5CE4C(&qword_27D9155C0, &unk_22C2CC7C0);
      v17 = sub_22C273074();
      v19 = v18;
      sub_22C108598();
      swift_allocError();
      *v20 = v17;
      *(v20 + 8) = v19;
      *(v20 + 16) = 0;
      swift_willThrow();
      sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
    }

    else
    {
      sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
      v21 = sub_22C26FB14();
      (*(*(v21 - 8) + 104))(a3, **(&unk_278725C38 + v16), v21);
    }

    sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoActionConfirmationSystemStyleMontaraEnablementSource);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DD350(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoParameterValue(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E6B8, type metadata accessor for TranscriptProtoParameterValue);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ParameterValue.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoParameterValue);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DD534@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoPromptSelection(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F600, type metadata accessor for TranscriptProtoPromptSelection);
  sub_22C270734();
  if (!v3)
  {
    sub_22C1EE064();
    if (v12[9])
    {
      *&v28[0] = &type metadata for TranscriptProtoPromptSelectionEnum;
      sub_22BE5CE4C(&qword_27D911FB8, &unk_22C2B5D60);
      v16 = sub_22C273074();
      v18 = v17;
      sub_22C108598();
      swift_allocError();
      *v19 = v16;
      *(v19 + 8) = v18;
      *(v19 + 16) = 0;
      swift_willThrow();
      sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoPromptSelection);
      v20 = v15;
    }

    else
    {
      v21 = *v12;
      v22 = v12[8];
      sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoPromptSelection);
      if (v22)
      {
        v23 = sub_22C26F7C4();
        if (v21)
        {
          v24 = MEMORY[0x277D1CAF8];
        }

        else
        {
          v24 = MEMORY[0x277D1CB00];
        }

        (*(*(v23 - 8) + 104))(a3, *v24, v23);
      }

      else
      {
        *a3 = v21;
        v25 = *MEMORY[0x277D1CAF0];
        v26 = sub_22C26F7C4();
        (*(*(v26 - 8) + 104))(a3, v25, v26);
      }

      v20 = v15;
    }

    sub_22C1EE0BC(v20, type metadata accessor for TranscriptProtoPromptSelection);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DD85C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoParameterNeedsValue(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FA38, type metadata accessor for TranscriptProtoParameterNeedsValue);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ParameterNeedsValue.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoParameterNeedsValue);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DDA40(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoParameterNeedsValueContext(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FA50, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ParameterNeedsValue.Context.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoParameterNeedsValueContext);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DDC24(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FA68, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v16 = v10[1];

  sub_22C26ED04();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoParameterNeedsValuePhotosSearch);
}

uint64_t sub_22C1DDE30(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoParameterConfirmation(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F9E8, type metadata accessor for TranscriptProtoParameterConfirmation);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ParameterConfirmation.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoParameterConfirmation);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DE014@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoParameterDisambiguation(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v30 - v14;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FA00, type metadata accessor for TranscriptProtoParameterDisambiguation);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v32 = a3;
  sub_22C1EE064();
  v18 = *v12;
  v17 = *(v12 + 1);
  v19 = v12[32];
  v20 = *(v12 + 2);
  v21 = *(v12 + 3);

  sub_22C0F2F3C(v22, v23, v24, v25, v26, v27, v28, v29);
  sub_22C26FFB4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoParameterDisambiguation);
  return sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoParameterDisambiguation);
}

uint64_t sub_22C1DE268(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoParameterNotAllowed(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FA80, type metadata accessor for TranscriptProtoParameterNotAllowed);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ParameterNotAllowed.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoParameterNotAllowed);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DE44C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoCandidate(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EA50, type metadata accessor for TranscriptProtoCandidate);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Candidate.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoCandidate);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DE630@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoCandidatePromptStatus(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F6F8, type metadata accessor for TranscriptProtoCandidatePromptStatus);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v11 = *v8;
    v12 = v8[8];
    v13 = v8[9];
    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoCandidatePromptStatus);
    if (v13)
    {
      v14 = 0;
      v15 = 1;
    }

    else
    {
      v14 = v11 != 0;
      if (v12)
      {
        v15 = 1;
      }

      else
      {
        v14 = v11;
        v15 = 0;
      }
    }

    *a1 = v14;
    *(a1 + 8) = v15;
  }

  return result;
}

uint64_t sub_22C1DE824@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoPlan(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  v20 = 0;
  memset(&v19[2], 0, 32);
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FAD0, type metadata accessor for TranscriptProtoPlan);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  Session.Plan.init(transcript:)(v12, v18);
  sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoPlan);
  result = sub_22BE29DD4(a1, a2);
  v17 = v18[1];
  *a3 = v18[0];
  a3[1] = v17;
  a3[2] = v19[0];
  *(a3 + 41) = *(v19 + 9);
  return result;
}

uint64_t sub_22C1DEA34(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoRecoverableError(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FAE8, type metadata accessor for TranscriptProtoRecoverableError);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Session.RecoverableError.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoRecoverableError);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DEC18(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoPlanGenerationError(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FB00, type metadata accessor for TranscriptProtoPlanGenerationError);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Session.PlanGenerationError.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoPlanGenerationError);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DEDFC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v41 = a3;
  v6 = type metadata accessor for TranscriptProtoIntelligenceFlowError(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22C26E5D4();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C270524();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = type metadata accessor for TranscriptProtoPlanGenerationModelOutputError(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FB18, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v39 = v9;
  sub_22C1EE064();
  v23 = *v18;
  v24 = v18[1];
  v25 = v18[3];
  v37 = v18[2];
  v38 = v23;
  v26 = *(v15 + 24);

  sub_22C103214();
  v36 = v25;
  v27 = v45;
  v28 = *v45;
  v29 = v45[1];
  v34 = v45[2];
  v35 = v28;
  objc_allocWithZone(MEMORY[0x277CCA9B8]);

  sub_22C24F544(v35, v29, v34, 0);
  sub_22C26E5E4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v27, type metadata accessor for TranscriptProtoIntelligenceFlowError);
  sub_22C1EE0BC(v18, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  sub_22C1EE0BC(v21, type metadata accessor for TranscriptProtoPlanGenerationModelOutputError);
  v30 = v41;
  v31 = v37;
  *v41 = v38;
  *(v30 + 1) = v24;
  v32 = v36;
  *(v30 + 2) = v31;
  *(v30 + 3) = v32;
  v33 = type metadata accessor for Session.PlanGenerationModelOutputError(0);
  return (*(v40 + 32))(&v30[*(v33 + 24)], v12, v39);
}

uint64_t sub_22C1DF1D8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoExpression(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910248, type metadata accessor for TranscriptProtoExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Expression.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DF3BC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoAnswerSynthesisExpression(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910590, type metadata accessor for TranscriptProtoAnswerSynthesisExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AnswerSynthesisExpression.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoAnswerSynthesisExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DF5A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoValueExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910278, type metadata accessor for TranscriptProtoValueExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  ValueExpression.init(transcript:)(v12, v17, v18, v19, v20, v21, v22, v23, v25, *(&v25 + 1));
  sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoValueExpression);
  result = sub_22BE29DD4(a1, a2);
  v24 = v26;
  *a3 = v25;
  *(a3 + 16) = v24;
  return result;
}

uint64_t sub_22C1DF7A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v35 = a3;
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22C26E684();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_22C270524();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = type metadata accessor for TranscriptProtoPrefixExpression(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v31[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v31[-v20];
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9102A8, type metadata accessor for TranscriptProtoPrefixExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v33 = v9;
  sub_22C1EE064();
  v23 = *v18;
  v24 = &v18[*(v15 + 20)];
  sub_22C1026C4();
  v25 = v39;
  v26 = *v39;
  v32 = v23;
  v27 = *(v39 + 1);
  v28 = *(v39 + 2);

  sub_22C26E664();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v25, type metadata accessor for TranscriptProtoStatementID);
  sub_22C1EE0BC(v18, type metadata accessor for TranscriptProtoPrefixExpression);
  sub_22C1EE0BC(v21, type metadata accessor for TranscriptProtoPrefixExpression);
  v29 = v35;
  *v35 = v32;
  v30 = type metadata accessor for PrefixExpression(0);
  return (*(v34 + 32))(&v29[*(v30 + 20)], v12, v33);
}

uint64_t sub_22C1DFB38(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoInfixExpression(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9102C0, type metadata accessor for TranscriptProtoInfixExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    InfixExpression.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoInfixExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DFD1C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoIndexExpression(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9102F0, type metadata accessor for TranscriptProtoIndexExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    IndexExpression.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoIndexExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1DFF00(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  updated = type metadata accessor for TranscriptProtoUpdateParametersExpression(0);
  v8 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910308, type metadata accessor for TranscriptProtoUpdateParametersExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    UpdateParametersExpression.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoUpdateParametersExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E00E4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v36 = a3;
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C26E684();
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C270524();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  updated = type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter(0);
  v16 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v31 - v20;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EF18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v34 = v9;
  sub_22C1EE064();
  v23 = *(v18 + 1);
  v33 = *v18;
  v24 = v18[16];
  v25 = *(updated + 24);

  sub_22C1026C4();
  v32 = v24;
  v26 = v40;
  v31[2] = *v40;
  v27 = *(v40 + 1);
  v28 = *(v40 + 2);

  sub_22C26E664();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v26, type metadata accessor for TranscriptProtoStatementID);
  sub_22C1EE0BC(v18, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
  sub_22C1EE0BC(v21, type metadata accessor for TranscriptProtoUpdateParameterExpression_UpdateParameter);
  v29 = v36;
  *v36 = v33;
  v29[1] = v23;
  v29[2] = 0;
  *(v29 + 24) = 1;
  *(v29 + 25) = v32;
  v30 = type metadata accessor for UpdateParametersExpression.UpdateParameter(0);
  return (*(v35 + 32))(v29 + *(v30 + 28), v12, v34);
}

uint64_t sub_22C1E04A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EFA8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = *(v8 + 1);
    v14 = *(v8 + 3);
    v13 = *(v8 + 4);
    v15 = v8[16];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoGlobalToolIdentifier);
    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = v14;
    *(a1 + 24) = v13;
    *(a1 + 32) = v15;
  }

  return result;
}

uint64_t sub_22C1E0684@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoCallExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910340, type metadata accessor for TranscriptProtoCallExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  CallExpression.init(transcript:)();
  sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoCallExpression);
  result = sub_22BE29DD4(a1, a2);
  v15 = *(&v18 + 1);
  v16 = v20;
  v17 = v21;
  *a3 = v18;
  *(a3 + 8) = v15;
  *(a3 + 16) = v19;
  *(a3 + 32) = v16;
  *(a3 + 40) = v17;
  return result;
}

uint64_t sub_22C1E089C()
{
  v1 = sub_22C270524();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  ContextExpression = type metadata accessor for TranscriptProtoRetrieveContextExpression(0);
  v4 = *(*(ContextExpression - 8) + 64);
  MEMORY[0x28223BE20](ContextExpression);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910358, type metadata accessor for TranscriptProtoRetrieveContextExpression);
  result = sub_22C270734();
  if (!v0)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoRetrieveContextExpression);
  }

  return result;
}

uint64_t sub_22C1E0A08(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  SpansExpression = type metadata accessor for TranscriptProtoRetrieveSpansExpression(0);
  v8 = *(*(SpansExpression - 8) + 64);
  MEMORY[0x28223BE20](SpansExpression);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910370, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RetrieveSpansExpression.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoRetrieveSpansExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E0BEC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  ToolsExpression = type metadata accessor for TranscriptProtoRetrieveToolsExpression(0);
  v8 = *(*(ToolsExpression - 8) + 64);
  MEMORY[0x28223BE20](ToolsExpression);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910388, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RetrieveToolsExpression.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoRetrieveToolsExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E0DD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoSayExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9103A0, type metadata accessor for TranscriptProtoSayExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  SayExpression.init(transcript:)();
  sub_22BE29DD4(a1, a2);
  result = sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoSayExpression);
  *a3 = *&v15[0];
  return result;
}

uint64_t sub_22C1E0FC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = type metadata accessor for TranscriptProtoStatementID(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22C26E684();
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C270524();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = type metadata accessor for TranscriptProtoPickExpression(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9103B8, type metadata accessor for TranscriptProtoPickExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v31 = v9;
  sub_22C1EE064();
  v23 = v18 + *(v15 + 20);
  sub_22C1026C4();
  v24 = v37;
  v25 = *v37;
  v26 = *(v37 + 1);
  v27 = *(v37 + 2);

  sub_22C26E664();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v24, type metadata accessor for TranscriptProtoStatementID);
  sub_22C1EE0BC(v21, type metadata accessor for TranscriptProtoPickExpression);
  v28 = *v18;
  sub_22C1EE0BC(v18, type metadata accessor for TranscriptProtoPickExpression);
  v29 = v33;
  (*(v32 + 32))(v33, v12, v31);
  result = type metadata accessor for PickExpression(0);
  *(v29 + *(result + 20)) = v28;
  return result;
}

uint64_t sub_22C1E134C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoConfirmExpression(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9103D0, type metadata accessor for TranscriptProtoConfirmExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ConfirmExpression.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoConfirmExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E1530@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoSearchExpression(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9103E8, type metadata accessor for TranscriptProtoSearchExpression);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = *(v8 + 1);
    v13 = v8[16];
    v14 = v8[17];
    v15 = v8[18];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoSearchExpression);
    *a1 = v12;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13;
    *(a1 + 17) = v14;
    *(a1 + 18) = v15;
  }

  return result;
}

uint64_t sub_22C1E1710@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v5 = sub_22C26E684();
  v106 = *(v5 - 8);
  v6 = *(v106 + 64);
  MEMORY[0x28223BE20](v5);
  v103 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TranscriptProtoStatementID(0);
  v105 = *(v8 - 8);
  v9 = *(v105 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v104 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v102 = &v87 - v12;
  v13 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v87 - v15;
  v17 = sub_22BE5CE4C(&qword_27D9092E8, &qword_22C288A90);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v87 - v19;
  v21 = sub_22C270524();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = type metadata accessor for TranscriptProtoStructuredSearchExpression(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (&v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v29 = &v87 - v28;
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910400, type metadata accessor for TranscriptProtoStructuredSearchExpression);
  v30 = v112;
  sub_22C270734();
  if (v30)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v101 = v23;
  v88 = 0;
  v93 = v16;
  v90 = v20;
  v91 = a1;
  v92 = a2;
  sub_22C1EE064();
  v89 = v26;
  v32 = *v26;
  sub_22BE5CE4C(&qword_27D9155B8, &unk_22C2CC7B0);
  result = sub_22C273D04();
  v100 = result;
  v33 = 0;
  v34 = v32 + 64;
  v35 = 1 << *(v32 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v32 + 64);
  v38 = (v35 + 63) >> 6;
  v97 = result + 64;
  v98 = v32;
  v95 = v29;
  v96 = v106 + 32;
  v39 = v29;
  v99 = v5;
  while (1)
  {
    v40 = v104;
    if (!v37)
    {
      break;
    }

    v41 = __clz(__rbit64(v37));
    v107 = (v37 - 1) & v37;
LABEL_13:
    v45 = v41 | (v33 << 6);
    v46 = *(v98 + 56);
    v47 = (*(v98 + 48) + 16 * v45);
    v48 = v47[1];
    v112 = *v47;
    v108 = v48;
    v49 = *(v105 + 72);
    v50 = v102;
    sub_22C1EE064();
    sub_22C1EE064();
    v51 = *v40;
    v53 = *(v40 + 1);
    v52 = *(v40 + 2);

    v54 = v103;
    sub_22C26E664();
    sub_22C1EE0BC(v40, type metadata accessor for TranscriptProtoStatementID);
    sub_22C1EE0BC(v50, type metadata accessor for TranscriptProtoStatementID);
    *(v97 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v55 = v99;
    v56 = v100;
    v57 = (*(v100 + 48) + 16 * v45);
    v58 = v108;
    *v57 = v112;
    v57[1] = v58;
    result = (*(v106 + 32))(*(v56 + 56) + *(v106 + 72) * v45, v54, v55);
    v59 = *(v56 + 16);
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    *(v56 + 16) = v61;
    v39 = v95;
    v37 = v107;
  }

  v42 = v33;
  v43 = v93;
  while (1)
  {
    v33 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v33 >= v38)
    {
      break;
    }

    v44 = *(v34 + 8 * v33);
    ++v42;
    if (v44)
    {
      v41 = __clz(__rbit64(v44));
      v107 = (v44 - 1) & v44;
      goto LABEL_13;
    }
  }

  v62 = *(v101 + 24);
  v63 = v89;
  sub_22BE22868();
  v64 = v88;
  sub_22C0FE908(v43, v65, v66, v67, v68, v69, v70, v71, v87, v88);
  if (v64)
  {

    sub_22BE29DD4(v91, v92);
    sub_22C1EE0BC(v39, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    return sub_22C1EE0BC(v63, type metadata accessor for TranscriptProtoStructuredSearchExpression);
  }

  else
  {
    v72 = *(v63 + 8);

    sub_22C0F92F4(v73, v74, v75, v76, v77, v78, v79, v80, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98);
    v82 = v81;
    sub_22BE29DD4(v91, v92);
    sub_22C1EE0BC(v39, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    sub_22C1EE0BC(v63, type metadata accessor for TranscriptProtoStructuredSearchExpression);
    v83 = type metadata accessor for StructuredSearchExpression(0);
    v84 = v83[5];
    v85 = sub_22C2728A4();
    v86 = v94;
    sub_22BE19DC4(v94 + v84, 1, 1, v85);
    *v86 = v100;
    result = sub_22C193480();
    *(v86 + v83[7]) = v82;
    *(v86 + v83[6]) = 0;
  }

  return result;
}

uint64_t sub_22C1E1E14@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_22C270524();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EF88, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
  v19 = v33;
  sub_22C270734();
  if (v19)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v33 = *v15;
  v27 = a1;
  v28 = a2;
  v21 = v15[1];
  v29 = v15[2];
  v22 = v15[3];
  v23 = *(v12 + 24);
  sub_22BE22868();

  sub_22C0FD140();
  sub_22BE29DD4(v27, v28);
  sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
  sub_22C1EE0BC(v18, type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty);
  v24 = *(type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0) + 24);
  v25 = sub_22C26E684();
  sub_22BE19DC4(a3 + v24, 1, 1, v25);
  *a3 = v33;
  a3[1] = v21;
  a3[2] = v29;
  a3[3] = v22;
  return sub_22C193480();
}

uint64_t sub_22C1E2150(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoPickOneExpression(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910428, type metadata accessor for TranscriptProtoPickOneExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    PickOneExpression.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoPickOneExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E2334@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoResolveToolExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910440, type metadata accessor for TranscriptProtoResolveToolExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v17 = *v12;

  sub_22C0F45F8(v18, v19, v20, v21, v22, v23, v24, v25, *&v28[0], *(&v28[0] + 1));
  v27 = v26;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoResolveToolExpression);
  result = sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoResolveToolExpression);
  *a3 = v27;
  return result;
}

uint64_t sub_22C1E2540(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoUndoExpression(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910458, type metadata accessor for TranscriptProtoUndoExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    UndoExpression.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoUndoExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E2724(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoRejectExpression(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910470, type metadata accessor for TranscriptProtoRejectExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RejectExpression.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoRejectExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E2908(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoCancelExpression(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910488, type metadata accessor for TranscriptProtoCancelExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    CancelExpression.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoCancelExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E2AEC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoOpenExpression(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910500, type metadata accessor for TranscriptProtoOpenExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    OpenExpression.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoOpenExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E2CD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoPayloadExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910530, type metadata accessor for TranscriptProtoPayloadExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  PayloadExpression.init(transcript:)();
  sub_22BE29DD4(a1, a2);
  result = sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoPayloadExpression);
  *a3 = *&v15[0];
  return result;
}

uint64_t sub_22C1E2EC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoFormatExpression(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = v28 - v14;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910548, type metadata accessor for TranscriptProtoFormatExpression);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v17 = *v12;

  sub_22C0F4874(v18, v19, v20, v21, v22, v23, v24, v25, *&v28[0], *(&v28[0] + 1));
  v27 = v26;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoFormatExpression);
  result = sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoFormatExpression);
  *a3 = v27;
  return result;
}

uint64_t sub_22C1E30D0(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoSiriXFallbackExpression(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910260, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    SiriXFallbackExpression.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoSiriXFallbackExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E32B4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoUserConfirmExpression(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910560, type metadata accessor for TranscriptProtoUserConfirmExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    UserConfirmExpression.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoUserConfirmExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E3498(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoUserDisambiguateExpression(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910578, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    UserDisambiguateExpression.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoUserDisambiguateExpression);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E367C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoProgramStatement(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E9F8, type metadata accessor for TranscriptProtoProgramStatement);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ProgramStatement.init(transcript:)(v10);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoProgramStatement);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E3860(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoStatementID(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&unk_281077F40, type metadata accessor for TranscriptProtoStatementID);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v16 = *(v10 + 1);
  v17 = *(v10 + 2);

  sub_22C26E664();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoStatementID);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_22C1E3A74(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoActionRequirement(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F848, type metadata accessor for TranscriptProtoActionRequirement);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionRequirement.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoActionRequirement);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E3C58(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoStatementOutcome(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_2810744D0, type metadata accessor for TranscriptProtoStatementOutcome);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    StatementOutcome.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoStatementOutcome);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E3E3C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoActionSuccess(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&unk_281076F30, type metadata accessor for TranscriptProtoActionSuccess);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionSuccess.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoActionSuccess);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E4020(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoSnippetStream(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F970, type metadata accessor for TranscriptProtoSnippetStream);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    SnippetStream.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoSnippetStream);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E4204(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoResponseManifest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90CAE8, type metadata accessor for TranscriptProtoResponseManifest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseManifest.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoResponseManifest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E43E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoResponseParameter(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EC00, type metadata accessor for TranscriptProtoResponseParameter);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v17 = *v12;
  v18 = *(v12 + 1);
  v20 = *(v12 + 2);
  v23 = *(v12 + 3);
  v19 = v23;
  v21 = *(v12 + 5);
  v27 = *(v12 + 4);
  v28 = v17;
  v32 = *(v12 + 7);
  v25 = a3;
  v22 = *(v12 + 8);
  v24 = v12[72];
  v26 = v12[48];

  sub_22BF1C1E4(v20, v19);

  sub_22C26F9A4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoResponseParameter);
  return sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoResponseParameter);
}

uint64_t sub_22C1E4670(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoResponseDialog(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v20 - v12;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FBE8, type metadata accessor for TranscriptProtoResponseDialog);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = v10[1];
  v24 = *v10;
  v16 = v10[2];
  v17 = v10[3];
  v18 = v10[5];
  v20[2] = v10[4];
  v20[3] = v16;
  v20[1] = v10[6];
  v19 = v10[7];

  sub_22C26F2D4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoResponseDialog);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoResponseDialog);
}

uint64_t sub_22C1E48D0(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoResponseVisual(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FE28, type metadata accessor for TranscriptProtoResponseVisual);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseVisual.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoResponseVisual);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E4AB4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoUIType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EC48, type metadata accessor for TranscriptProtoUIType);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseVisual.UIType.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoUIType);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E4C98(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoUILabel(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EC50, type metadata accessor for TranscriptProtoUILabel);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseVisual.UILabel.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoUILabel);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E4E7C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoResponseVisualOptions(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v16 - v12;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FE40, type metadata accessor for TranscriptProtoResponseVisualOptions);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  sub_22C26F534();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoResponseVisualOptions);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoResponseVisualOptions);
}

uint64_t sub_22C1E5078(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoUIConfirmationLabel(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FE78, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v16 = v10[1];
  v17 = v10[2];
  v18 = v10[3];

  MEMORY[0x2318A7D90](v15, v16, v17, v18);
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoUIConfirmationLabel);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoUIConfirmationLabel);
}

uint64_t sub_22C1E52A0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoArchiveViewPayload(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FE90, type metadata accessor for TranscriptProtoArchiveViewPayload);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v17 = *v12;
  v18 = v12[1];
  v25 = v12[2];
  v21[0] = a3;
  v19 = v12[3];
  v21[1] = v12[4];
  v20 = v12[5];
  sub_22BE29D7C(v17, v18);

  sub_22C26F5E4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoArchiveViewPayload);
  return sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoArchiveViewPayload);
}

uint64_t sub_22C1E54EC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoLiveActivityPayload(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FEA8, type metadata accessor for TranscriptProtoLiveActivityPayload);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v16 = v10[1];

  sub_22C26F604();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoLiveActivityPayload);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoLiveActivityPayload);
}

uint64_t sub_22C1E56F8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoPluginSnippetPayload(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FEC0, type metadata accessor for TranscriptProtoPluginSnippetPayload);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v16 = v10[1];
  v17 = v10[3];
  v20 = v10[2];
  sub_22BE29D7C(v15, v16);

  MEMORY[0x2318A7D40](v15, v16, v20, v17);
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoPluginSnippetPayload);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoPluginSnippetPayload);
}

uint64_t sub_22C1E5928@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v6 = sub_22C2729D4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_22BE5CE4C(&qword_27D911E40, &qword_22C2B5AD8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  v12 = sub_22C270524();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = type metadata accessor for TranscriptProtoControlPayload(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v22 - v19;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FED8, type metadata accessor for TranscriptProtoControlPayload);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  sub_22BE29D7C(*v17, *(v17 + 1));
  sub_22C2729C4();
  sub_22C101768();
  sub_22BE33928(v11, &qword_27D911E40, &qword_22C2B5AD8);
  sub_22C26F594();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoControlPayload);
  return sub_22C1EE0BC(v20, type metadata accessor for TranscriptProtoControlPayload);
}

uint64_t sub_22C1E5C30(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoVisualOutput(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EAD8, type metadata accessor for TranscriptProtoVisualOutput);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseOutput.VisualOutput.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoVisualOutput);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E5E14(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoAceCommandOutputPayload(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FCA0, type metadata accessor for TranscriptProtoAceCommandOutputPayload);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseOutput.VisualOutput.AceCommandOutputPayload.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoAceCommandOutputPayload);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E5FF8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoAceCommandOutputData(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FCB8, type metadata accessor for TranscriptProtoAceCommandOutputData);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseOutput.VisualOutput.AceCommandOutputPayload.AceCommandOutputData.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoAceCommandOutputData);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E61DC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoLiveActivityOutputPayload(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FC40, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v16 = v10[1];

  sub_22C26F374();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoLiveActivityOutputPayload);
}

uint64_t sub_22C1E63E8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoInAppResponseOutputPayload(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FC58, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v16 = v10[1];

  sub_22C26F374();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoInAppResponseOutputPayload);
}

uint64_t sub_22C1E65F4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoPluginSnippetOutputPayload(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FC88, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v16 = v10[1];
  v17 = v10[3];
  v20 = v10[2];
  sub_22BE29D7C(v15, v16);

  sub_22C26F3B4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoPluginSnippetOutputPayload);
}

uint64_t sub_22C1E6824(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoDialogType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FD60, type metadata accessor for TranscriptProtoDialogType);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ResponseOutput.DialogType.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoDialogType);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E6A08(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoASTFlatExpr(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9101C0, type metadata accessor for TranscriptProtoASTFlatExpr);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AST.FlatExpr.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25, v26, v27, v28, v29, v30, v31);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoASTFlatExpr);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E6BEC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v8 = *(*(updated - 8) + 64);
  MEMORY[0x28223BE20](updated);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90EE10, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AST.Update.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E6DD0(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoASTPickType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9100F0, type metadata accessor for TranscriptProtoASTPickType);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = v10[8];
  if (v15 == 255)
  {
    *&v21[0] = &type metadata for TranscriptProtoAstpickTypeEnum;
    sub_22BE5CE4C(&qword_27D9155B0, &unk_22C2CC7A0);
    v17 = sub_22C273074();
    v19 = v18;
    sub_22C108598();
    swift_allocError();
    *v20 = v17;
    *(v20 + 8) = v19;
    *(v20 + 16) = 0;
    swift_willThrow();
    sub_22BE29DD4(a1, a2);
    sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoASTPickType);
    return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoASTPickType);
  }

  else
  {
    v16 = *v10;
    sub_22BE29DD4(a1, a2);
    sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoASTPickType);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoASTPickType);
    if (v15)
    {
      return 0;
    }

    else
    {
      return v16;
    }
  }
}

uint64_t sub_22C1E7074(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoASTFlatValue(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90ED98, type metadata accessor for TranscriptProtoASTFlatValue);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AST.FlatValue.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoASTFlatValue);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E7258(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoActionParameterValue(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90E660, type metadata accessor for TranscriptProtoActionParameterValue);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    Action.ParameterValue.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoActionParameterValue);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E743C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoContextRetrieved(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FF38, type metadata accessor for TranscriptProtoContextRetrieved);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v17 = *v12;

  sub_22C0F67EC(v18, v19, v20, v21, v22, v23, v24, v25, v39, *(&v39 + 1), v40, *(&v40 + 1), v41, v42, v43, v44, v45, v46, v47, v48);
  v27 = v26;
  v28 = v12[1];

  sub_22C0F67EC(v29, v30, v31, v32, v33, v34, v35, v36, v39, *(&v39 + 1), v40, *(&v40 + 1), v41, v42, v43, v44, v45, v46, v47, v48);
  v38 = v37;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoContextRetrieved);
  result = sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoContextRetrieved);
  *a3 = v27;
  a3[1] = v38;
  return result;
}

uint64_t sub_22C1E76AC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90ED10, type metadata accessor for TranscriptProtoRetrievedContextStatement);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RetrievedContextStatement.init(transcript:)(v10);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoRetrievedContextStatement);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E7890(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F128, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    DynamicEnumerationEntityStatement.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E7A74(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F058, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    SpanMatchedEntityStatement.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoSpanMatchedEntityStatement);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E7C58@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  matched = type metadata accessor for TranscriptProtoEntitySpanMatchResult(0);
  v10 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9105E0, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v17 = *v12;

  sub_22C0F751C();
  v19 = v18;
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v12, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
  result = sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoEntitySpanMatchResult);
  *a3 = v19;
  return result;
}

uint64_t sub_22C1E7E68@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for TranscriptProtoToolRetrievalResponse(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9105F8, type metadata accessor for TranscriptProtoToolRetrievalResponse);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  ToolRetrievalResponse.init(transcript:)(v12, &v19);
  sub_22C1EE0BC(v15, type metadata accessor for TranscriptProtoToolRetrievalResponse);
  result = sub_22BE29DD4(a1, a2);
  v17 = v20;
  v18 = v21;
  *a3 = v19;
  *(a3 + 16) = v17;
  *(a3 + 32) = v18;
  *(a3 + 40) = v22;
  return result;
}

uint64_t sub_22C1E8080(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoToolParameterValue(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9105B8, type metadata accessor for TranscriptProtoToolParameterValue);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ToolParameterValue.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoToolParameterValue);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E8264(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoExternalAgentOutcome(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_281072E88, type metadata accessor for TranscriptProtoExternalAgentOutcome);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ExternalAgentOutcome.init(transcript:)(v10);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoExternalAgentOutcome);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E8448@<X0>(void *a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F4D8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = v8[1];
    v13 = v8[2];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoExternalAgentRequestRewriteMetadata);
    *a1 = v12;
    a1[1] = v11;
    a1[2] = v13;
  }

  return result;
}

uint64_t sub_22C1E8620@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v6 = sub_22C26E1D4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - v10;
  v12 = sub_22C270524();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = type metadata accessor for TranscriptProtoUndoContext(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = v28 - v19;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F988, type metadata accessor for TranscriptProtoUndoContext);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v22 = *v17;
  v23 = v17[1];
  sub_22C26E174();
  sub_22C101298();
  sub_22BE33928(v11, &qword_27D9082F0, &qword_22C27AB00);
  v25 = v17[2];
  v24 = v17[3];
  v26 = v17[4];
  v27 = v17[5];

  sub_22C26E944();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v20, type metadata accessor for TranscriptProtoUndoContext);
  return sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoUndoContext);
}

uint64_t sub_22C1E893C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoFollowUpAction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F9A0, type metadata accessor for TranscriptProtoFollowUpAction);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionSuccess.FollowUpAction.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoFollowUpAction);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E8B20(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoFollowUpActionExecutableAction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F9B8, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionSuccess.FollowUpAction.ExecutableAction.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoFollowUpActionExecutableAction);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E8D04@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v6 = sub_22BE5CE4C(&qword_27D9155A0, &unk_22C2CC790);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22C270524();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F9D0, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v22[3] = v6;
  sub_22C1EE064();
  v18 = v13[1];
  v22[1] = *v13;
  v22[2] = v18;
  v19 = v13[2];
  v20 = v13[3];

  sub_22BE29D7C(v19, v20);
  if (qword_27D906E30 != -1)
  {
    swift_once();
  }

  sub_22C1EDF60();
  sub_22C26DB54();
  sub_22BE29DD4(v19, v20);
  v21 = v13[4];
  sub_22C26E884();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
  return sub_22C1EE0BC(v16, type metadata accessor for TranscriptProtoFollowUpActionExecutableActionLinkAction);
}

uint64_t sub_22C1E9000(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FA18, type metadata accessor for TranscriptProtoValueDisambiguation);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;

  sub_22C0F2F3C(v16, v17, v18, v19, v20, v21, v22, v23);
  sub_22C26FD74();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoValueDisambiguation);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoValueDisambiguation);
}

uint64_t sub_22C1E9210(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoActionFailure(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F908, type metadata accessor for TranscriptProtoActionFailure);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    ActionFailure.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoActionFailure);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E93F4@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FFF0, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v11 = *v8;
    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoSystemPromptResolutionRequirementResolution);
    *a1 = v11;
  }

  return result;
}

uint64_t sub_22C1E95B4()
{
  v1 = sub_22C270524();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90FFD8, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
  result = sub_22C270734();
  if (!v0)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoSystemPromptResolutionActionCancellation);
  }

  return result;
}

uint64_t sub_22C1E9720(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoTypeConversionRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910700, type metadata accessor for TranscriptProtoTypeConversionRequest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    TypeConversionRequest.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoTypeConversionRequest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E9904(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoTypeConversionResult(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910718, type metadata accessor for TranscriptProtoTypeConversionResult);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    TypeConversionResult.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoTypeConversionResult);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E9AE8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  DecorationResult = type metadata accessor for TranscriptProtoQueryDecorationResult(0);
  v8 = *(*(DecorationResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationResult);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910730, type metadata accessor for TranscriptProtoQueryDecorationResult);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    QueryDecorationResult.init(transcript:)(v10);
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoQueryDecorationResult);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E9CCC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  DecorationPrePlannerResult = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult(0);
  v8 = *(*(DecorationPrePlannerResult - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResult);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910748, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    QueryDecorationPrePlannerResult.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResult);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1E9EB0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22C270524();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  DecorationPrePlannerResultPayload = type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload(0);
  v10 = *(*(DecorationPrePlannerResultPayload - 8) + 64);
  MEMORY[0x28223BE20](DecorationPrePlannerResultPayload);
  MEMORY[0x28223BE20](v11);
  v13 = v16 - v12;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9107F0, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  QueryDecorationPrePlannerResultPayload.init(transcript:)();
  sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoQueryDecorationPrePlannerResultPayload);
  result = sub_22BE29DD4(a1, a2);
  v15 = BYTE8(v16[0]);
  *a3 = *&v16[0];
  *(a3 + 8) = v15;
  return result;
}

uint64_t sub_22C1EA0B8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F938, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v16 = v10[1];
  v17 = v10[2];
  v18 = v10[3];
  v21 = v10[4];

  MEMORY[0x2318A6EA0](v15, v16, v17, v18, v21);
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoActionFailureDeveloperDefinedError);
}

uint64_t sub_22C1EA2EC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v17 - v12;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D90F950, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
  sub_22C270734();
  if (v2)
  {
    return sub_22BE29DD4(a1, a2);
  }

  sub_22C1EE064();
  v15 = *v10;
  v16 = v10[1];

  sub_22C26E7F4();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v10, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
  return sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoActionFailureUnableToHandleRequest);
}

uint64_t sub_22C1EA4F8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoRequestAmendment(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910868, type metadata accessor for TranscriptProtoRequestAmendment);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    RequestAmendment.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoRequestAmendment);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1EA6DC@<X0>(void *a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for TranscriptProtoToolRetrievalRequest(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910880, type metadata accessor for TranscriptProtoToolRetrievalRequest);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = v8[1];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoToolRetrievalRequest);
    *a1 = v12;
    a1[1] = v11;
  }

  return result;
}

uint64_t sub_22C1EA8A4()
{
  v1 = sub_22C270524();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for TranscriptProtoContextRetrievalRequest(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910898, type metadata accessor for TranscriptProtoContextRetrievalRequest);
  result = sub_22C270734();
  if (!v0)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoContextRetrievalRequest);
  }

  return result;
}

uint64_t sub_22C1EAA10@<X0>(void *a1@<X8>)
{
  v3 = sub_22C270524();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  matched = type metadata accessor for TranscriptProtoSpanMatchRequest(0);
  v6 = *(*(matched - 8) + 64);
  MEMORY[0x28223BE20](matched);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9108B0, type metadata accessor for TranscriptProtoSpanMatchRequest);
  result = sub_22C270734();
  if (!v1)
  {
    sub_22C1EDFC4();
    v12 = *v8;
    v11 = v8[1];

    result = sub_22C1EE0BC(v8, type metadata accessor for TranscriptProtoSpanMatchRequest);
    *a1 = v12;
    a1[1] = v11;
  }

  return result;
}

uint64_t sub_22C1EABD8(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoIntermediateSystemResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9108C8, type metadata accessor for TranscriptProtoIntermediateSystemResponse);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    IntermediateSystemResponse.init(transcript:)(v10, v14, v15, v16, v17, v18, v19, v20, *&v22[0], *(&v22[0] + 1));
    sub_22C1EE0BC(v13, type metadata accessor for TranscriptProtoIntermediateSystemResponse);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1EADBC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9108E0, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    IntermediateSystemResponseRendered.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoIntermediateSystemResponseRendered);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1EAFA0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v31 = a3;
  v6 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for AgentPrimitiveAction.PrimitiveAction(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C270524();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = type metadata accessor for TranscriptProtoAgentPrimitiveAction(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = v27 - v19;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910958, type metadata accessor for TranscriptProtoAgentPrimitiveAction);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v27[1] = v11;
  sub_22C1EE064();
  v23 = *v17;
  v22 = v17[1];
  v24 = *(v14 + 20);

  sub_22C103D4C();
  v27[0] = v23;
  AgentPrimitiveAction.PrimitiveAction.init(transcript:)();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoAgentPrimitiveAction);
  sub_22C1EE0BC(v20, type metadata accessor for TranscriptProtoAgentPrimitiveAction);
  v25 = v31;
  *v31 = v27[0];
  v25[1] = v22;
  v26 = *(type metadata accessor for AgentPrimitiveAction(0) + 20);
  return sub_22C1EDFC4();
}

uint64_t sub_22C1EB2E4(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoPrimitiveAction(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910970, type metadata accessor for TranscriptProtoPrimitiveAction);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AgentPrimitiveAction.PrimitiveAction.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoPrimitiveAction);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1EB4C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v31 = a3;
  v6 = type metadata accessor for TranscriptProtoAgentRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for AgentRequest(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22C270524();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = type metadata accessor for TranscriptProtoAgentHandoffRequest(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = v27 - v19;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910910, type metadata accessor for TranscriptProtoAgentHandoffRequest);
  sub_22C270734();
  if (v3)
  {
    return sub_22BE29DD4(a1, a2);
  }

  v27[1] = v11;
  sub_22C1EE064();
  v23 = *v17;
  v22 = v17[1];
  v24 = *(v14 + 20);

  sub_22C103E3C();
  v27[0] = v23;
  AgentRequest.init(transcript:)();
  sub_22BE29DD4(a1, a2);
  sub_22C1EE0BC(v17, type metadata accessor for TranscriptProtoAgentHandoffRequest);
  sub_22C1EE0BC(v20, type metadata accessor for TranscriptProtoAgentHandoffRequest);
  v25 = v31;
  *v31 = v27[0];
  v25[1] = v22;
  v26 = *(type metadata accessor for AgentHandoffRequest(0) + 20);
  return sub_22C1EDFC4();
}

uint64_t sub_22C1EB80C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoAgentPassRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910928, type metadata accessor for TranscriptProtoAgentPassRequest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AgentPassRequest.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoAgentPassRequest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t sub_22C1EB9F0()
{
  v1 = sub_22C270524();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for TranscriptProtoAgentYieldRequest(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_22C270514();
  sub_22C1EE01C(&qword_27D910940, type metadata accessor for TranscriptProtoAgentYieldRequest);
  result = sub_22C270734();
  if (!v0)
  {
    return sub_22C1EE0BC(v6, type metadata accessor for TranscriptProtoAgentYieldRequest);
  }

  return result;
}

uint64_t sub_22C1EBB5C(uint64_t a1, unint64_t a2)
{
  v5 = sub_22C270524();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for TranscriptProtoAgentRequest(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE01C(&qword_27D9108F8, type metadata accessor for TranscriptProtoAgentRequest);
  sub_22C270734();
  if (!v2)
  {
    sub_22C1EE064();
    AgentRequest.init(transcript:)();
    sub_22C1EE0BC(v11, type metadata accessor for TranscriptProtoAgentRequest);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t TranscriptBidirectionalConvertibleProtocol.init(protoBytes:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = a5;
  v10 = sub_22C270524();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BE17C68();
  v24 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE18928();
  MEMORY[0x28223BE20](v18);
  v20 = v23 - v19;
  swift_getAssociatedConformanceWitness();
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  v21 = v28;
  sub_22C270734();
  if (!v21)
  {
    (*(v24 + 16))(v5, v20, AssociatedTypeWitness);
    (*(v12 + 16))(v5, a3, v12);
    (*(v24 + 8))(v20, AssociatedTypeWitness);
  }

  return sub_22BE29DD4(a1, a2);
}

uint64_t ConvertibleFromTranscriptTypeProtocol.init(transcript:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  sub_22BE17C68();
  v37 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v9;
  v41 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_22C273844();
  sub_22BE17C68();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  sub_22BE17C68();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE18928();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v35 - v27;
  (*(v14 + 16))(v19, a1, v12, v26);
  if (sub_22BE1AEA8(v19, 1, AssociatedTypeWitness) == 1)
  {
    v29 = *(v14 + 8);
    v29(a1, v12);
    v29(v19, v12);
    v30 = 1;
    v31 = v40;
    v32 = v41;
  }

  else
  {
    v36 = a1;
    (*(v21 + 32))(v28, v19, AssociatedTypeWitness);
    (*(v21 + 16))(v2, v28, AssociatedTypeWitness);
    v33 = v42;
    v32 = v41;
    (*(v38 + 16))(v2, v41);
    if (v33)
    {
      (*(v14 + 8))(v36, v12);
      return (*(v21 + 8))(v28, AssociatedTypeWitness);
    }

    (*(v14 + 8))(v36, v12);
    (*(v21 + 8))(v28, AssociatedTypeWitness);
    v31 = v40;
    (*(v37 + 32))(v40, v39, v32);
    v30 = 0;
  }

  return sub_22BE19DC4(v31, v30, 1, v32);
}

void sub_22C1EC374(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_22C1D05E4(a1, a2);
  if (!v3)
  {
    *a3 = v5;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8;
  }
}

uint64_t sub_22C1EC524@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22C1D2A3C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22C1EC550@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22C1D2C3C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22C1EC57C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22C1D2E3C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_22C1EC5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v19 - v15;
  (*(v17 + 16))(&v19 - v15, a1, v14);
  result = (*(a5 + 16))(v16, a3, a5);
  if (v7)
  {
    *a7 = v7;
  }

  return result;
}

uint64_t Set<>.init(transcript:)()
{
  swift_getAssociatedTypeWitness();
  sub_22C2735B4();
  sub_22BE5CE4C(&qword_27D9078B0, &qword_22C275BB0);
  swift_getWitnessTable();
  sub_22C194C60();

  if (!v0)
  {
    sub_22C2735B4();
    sub_22BE17E90();
    swift_getWitnessTable();
    return sub_22C2736A4();
  }

  return result;
}

uint64_t sub_22C1EC848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  result = (*(a4 + 16))(v15, a3, a4);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t Dictionary<>.init(transcript:)()
{
  swift_getAssociatedTypeWitness();
  v0 = sub_22C272EB4();

  return v0;
}

uint64_t sub_22C1ECA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = v16 - v12;
  (*(v14 + 16))(v16 - v12, a1, v11);
  return (*(a6 + 16))(v13, a4, a6);
}

uint64_t sub_22C1ECBFC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for TranscriptConversion(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22C1ECD74(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22C1ECD90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C1ECDD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22C1ECE14(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22C1ECE84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C1D35E8();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_22C1ECEB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C1D37B4();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_22C1EDB9C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_22C1E6DD0(a1, a2);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v6 & 1;
  }

  return result;
}

unint64_t sub_22C1EDF60()
{
  result = qword_27D9155A8;
  if (!qword_27D9155A8)
  {
    sub_22BE7431C(&qword_27D9155A0, &unk_22C2CC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9155A8);
  }

  return result;
}

uint64_t sub_22C1EDFC4()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE18000(v2);
  v4 = *(v3 + 32);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

uint64_t sub_22C1EE01C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C1EE064()
{
  sub_22BE18378();
  v2 = v1(0);
  sub_22BE18000(v2);
  v4 = *(v3 + 16);
  v5 = sub_22BE19454();
  v6(v5);
  return v0;
}

uint64_t sub_22C1EE0BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BE18000(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t TranscriptProtoTranscript.fsf_serialize()()
{
  v0 = sub_22C2720A4();
  v1 = sub_22BE179D8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  type metadata accessor for TranscriptProtoTranscript(0);
  sub_22C1EE2D4();
  return sub_22C270744();
}

unint64_t sub_22C1EE2D4()
{
  result = qword_27D90F360;
  if (!qword_27D90F360)
  {
    type metadata accessor for TranscriptProtoTranscript(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D90F360);
  }

  return result;
}

uint64_t static TranscriptProtoTranscript.fsf_deserialize(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22C2720A4();
  v7 = sub_22BE179D8(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v10 = sub_22C270524();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_22BE179EC();
  v12 = type metadata accessor for TranscriptProtoTranscript(0);
  sub_22BE29D7C(a1, a2);
  sub_22C270514();
  sub_22C1EE2D4();
  sub_22C270754();
  return sub_22BE19DC4(a3, 0, 1, v12);
}

uint64_t sub_22C1EE5C8(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_22BE5CE4C(a2, a3);
    sub_22BE1ACEC();
    v5 = sub_22C273D24();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_22C1EE678(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoParameterSet(0);
  v42 = *(v2 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v41 = v6;
  v47 = MEMORY[0x277D84F90];
  v43 = v4;
  sub_22BE70C9C(0, v7, 0);
  v8 = v47;
  result = sub_22C259254(v43);
  v10 = result;
  v11 = v43;
  v13 = v12;
  v15 = v14;
  v16 = 0;
  v45 = v43 + 56;
  v39 = v43 + 64;
  v40 = v7;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v10 < 1 << *(v11 + 32))
    {
      v17 = v10 >> 6;
      if ((*(v45 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v11 + 36) != v13)
      {
        goto LABEL_28;
      }

      v44 = v16;
      v18 = *(*(v11 + 48) + 8 * v10);
      swift_bridgeObjectRetain_n();
      v19 = v41;
      v20 = v46;
      TranscriptProtoParameterSet.init(handwritten:)(v18, v21, v22, v23, v24, v25, v26, v27, v39, v40);
      if (v20)
      {

        return v8;
      }

      v46 = 0;

      v47 = v8;
      v28 = *(v8 + 16);
      v29 = *(v8 + 24);
      if (v28 >= v29 >> 1)
      {
        sub_22BE70C9C(v29 > 1, v28 + 1, 1);
        v8 = v47;
      }

      *(v8 + 16) = v28 + 1;
      result = sub_22BE3B620(v19, v8 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v28);
      if (v15)
      {
        goto LABEL_32;
      }

      v11 = v43;
      v30 = 1 << *(v43 + 32);
      if (v10 >= v30)
      {
        goto LABEL_29;
      }

      v31 = *(v45 + 8 * v17);
      if ((v31 & (1 << v10)) == 0)
      {
        goto LABEL_30;
      }

      if (*(v43 + 36) != v13)
      {
        goto LABEL_31;
      }

      v32 = v31 & (-2 << (v10 & 0x3F));
      if (v32)
      {
        v30 = __clz(__rbit64(v32)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v33 = v40;
      }

      else
      {
        v34 = v17 << 6;
        v35 = v17 + 1;
        v33 = v40;
        v36 = (v39 + 8 * v17);
        while (v35 < (v30 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            result = sub_22BE2FC64(v10, v13, 0);
            v11 = v43;
            v30 = __clz(__rbit64(v37)) + v34;
            goto LABEL_20;
          }
        }

        result = sub_22BE2FC64(v10, v13, 0);
        v11 = v43;
      }

LABEL_20:
      v16 = v44 + 1;
      if (v44 + 1 == v33)
      {
        return v8;
      }

      v15 = 0;
      v13 = *(v11 + 36);
      v10 = v30;
      if (v30 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22C1EE9C4(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoGlobalToolIdentifier(0);
  v19 = *(v2 - 8);
  v20 = v2;
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v21 = MEMORY[0x277D84F90];
  sub_22BE706FC(0, v6, 0);
  v7 = v21;
  if (v6)
  {
    v8 = (a1 + 64);
    do
    {
      v9 = *(v8 - 4);
      v10 = *(v8 - 3);
      v11 = *(v8 - 2);
      v12 = *(v8 - 1);
      v13 = *v8;
      v14 = *(v20 + 28);

      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      *v5 = v9;
      *(v5 + 1) = v10;
      *(v5 + 3) = v11;
      *(v5 + 4) = v12;
      v5[16] = v13;
      v21 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_22BE706FC(v15 > 1, v16 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v16 + 1;
      sub_22BE3B620(v5, v7 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16);
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_22C1EEB74(uint64_t a1)
{
  Results = type metadata accessor for TranscriptProtoQueryResults(0);
  v4 = *(Results - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](Results);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 16);
  v26 = MEMORY[0x277D84F90];
  sub_22BE70C24(0, v8, 0);
  v9 = v26;
  if (v8)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v11 = *i;
      swift_bridgeObjectRetain_n();
      sub_22C1C2144(v11, v12, v13, v14, v15, v16, v17, v18, v25, v26);
      if (v1)
      {
        break;
      }

      v20 = v19;
      v21 = v7 + *(Results + 20);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

      *v7 = v20;
      v26 = v9;
      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22BE70C24(v22 > 1, v23 + 1, 1);
        v9 = v26;
      }

      *(v9 + 16) = v23 + 1;
      sub_22BE3B620(v7, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23);
      if (!--v8)
      {
        return v9;
      }
    }
  }

  return v9;
}

void StatementOutcome.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v26;
  a20 = v27;
  v281 = v20;
  v29 = v28;
  v30 = type metadata accessor for TranscriptProtoValueDisambiguation(0);
  v31 = sub_22BE19448(v30);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE17A44();
  v264 = v34;
  v35 = sub_22BE183BC();
  v36 = type metadata accessor for TranscriptProtoActionFailure(v35);
  v37 = sub_22BE19448(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE17B98();
  v279 = v40;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v41);
  sub_22BE19E94();
  sub_22BE183BC();
  v42 = sub_22C272594();
  v43 = sub_22BE18910(v42, &a11);
  v257 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v47);
  sub_22BE19E94();
  sub_22BE18950(v48);
  v49 = sub_22C272874();
  v50 = sub_22BE19448(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE17A44();
  v54 = sub_22BE18950(v53);
  v280 = type metadata accessor for TranscriptProtoParameterCandidatesNotFound(v54);
  v55 = sub_22BE18000(v280);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22BE17B98();
  v262 = v58;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v59);
  sub_22BE19E94();
  v263 = v60;
  v61 = sub_22BE183BC();
  v62 = type metadata accessor for TranscriptProtoParameterNotAllowed(v61);
  v63 = sub_22BE19448(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BE28A70(v66, v252);
  MEMORY[0x28223BE20](v67);
  sub_22BE19E94();
  v69 = sub_22BE18950(v68);
  v70 = type metadata accessor for TranscriptProtoParameterDisambiguation(v69);
  v71 = sub_22BE19448(v70);
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v74);
  sub_22BE19E94();
  v76 = sub_22BE18950(v75);
  v77 = type metadata accessor for TranscriptProtoParameterConfirmation(v76);
  v78 = sub_22BE19448(v77);
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v78);
  sub_22BE29178(v81, v253);
  MEMORY[0x28223BE20](v82);
  sub_22BE19E94();
  v84 = sub_22BE18950(v83);
  v85 = type metadata accessor for TranscriptProtoParameterNeedsValue(v84);
  v86 = sub_22BE19448(v85);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v86);
  sub_22BE17B98();
  sub_22BE181F4();
  v90 = MEMORY[0x28223BE20](v89);
  sub_22C259838(v90, v91, v92, v93, v94, v95, v96, v97, v254);
  v270 = sub_22C272674();
  v98 = sub_22BE179D8(v270);
  v271 = v99;
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v98);
  sub_22BE17B98();
  v268 = v102;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v103);
  sub_22BE19E94();
  sub_22C259DF0(v104);
  v266 = sub_22C272224();
  v105 = sub_22BE179D8(v266);
  v107 = *(v106 + 64);
  MEMORY[0x28223BE20](v105);
  sub_22BE17A44();
  v267 = v108;
  v109 = sub_22BE183BC();
  v110 = type metadata accessor for TranscriptProtoToolDisambiguation(v109);
  v111 = sub_22BE19448(v110);
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](v111);
  sub_22BE17A44();
  v265 = v114;
  v115 = sub_22BE183BC();
  v116 = type metadata accessor for TranscriptProtoActionRequirement(v115);
  v117 = sub_22BE19448(v116);
  v119 = *(v118 + 64);
  MEMORY[0x28223BE20](v117);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v120);
  sub_22BE19E94();
  v274 = v121;
  v122 = sub_22BE183BC();
  v123 = type metadata accessor for TranscriptProtoActionConfirmation(v122);
  v124 = sub_22BE19448(v123);
  v126 = *(v125 + 64);
  MEMORY[0x28223BE20](v124);
  sub_22BE17B98();
  v272 = v127;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v128);
  v129 = sub_22BE41E38();
  v130 = type metadata accessor for TranscriptProtoSnippetStream(v129);
  v131 = sub_22BE19448(v130);
  v133 = *(v132 + 64);
  MEMORY[0x28223BE20](v131);
  sub_22BE1958C();
  MEMORY[0x28223BE20](v134);
  v135 = sub_22C2595B4();
  v136 = type metadata accessor for TranscriptProtoActionSuccess(v135);
  v137 = sub_22BE19448(v136);
  v139 = *(v138 + 64);
  MEMORY[0x28223BE20](v137);
  sub_22BE18928();
  MEMORY[0x28223BE20](v140);
  v141 = sub_22BE2558C();
  v142 = type metadata accessor for TranscriptProtoStatementOutcomeEnum(v141);
  v143 = sub_22BE18000(v142);
  v145 = *(v144 + 64);
  MEMORY[0x28223BE20](v143);
  sub_22BE19338();
  sub_22C104B5C();
  v281 = v20;
  if (v20)
  {
    sub_22BE18768();
    sub_22BE1AE58();
  }

  else
  {
    sub_22BE291B0();
    v146 = v280;
    v147 = v276;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v199 = sub_22C1088E8();
        sub_22BE3B620(v199, v25);
        v200 = sub_22C259FB8();
        sub_22BE1AA68(v200, v272);
        sub_22C25A098();
        ActionConfirmation.init(transcript:)(v272, v201, v202, v203, v204, v205, v206, v207, v22, v23, v24, v29, v21, v255, v256, v257, v258, v259, v260, v261);
        sub_22BE18768();
        sub_22C25A664();
        sub_22BE351F8();
        sub_22BE1AE58();
        v160 = MEMORY[0x277D1CBA8];
        goto LABEL_24;
      case 2u:
        v183 = sub_22C1088E8();
        sub_22BE3B620(v183, v276);
        sub_22BE19EBC();
        sub_22BE22944(&a13);
        sub_22BE1AA68(v184, v185);
        sub_22BE33BD0();
        ParameterNeedsValue.init(transcript:)();
        sub_22BE18768();
        sub_22C25A664();
        sub_22C2594E8();
        sub_22BE1AE58();
        v160 = MEMORY[0x277D1CBB8];
        goto LABEL_24;
      case 3u:
        sub_22C1088E8();
        sub_22BEE94A4(&a14);
        sub_22BE3B620(v186, v187);
        v188 = sub_22BE19EBC();
        sub_22BE1AA68(v188, v277);
        sub_22C25A098();
        ParameterConfirmation.init(transcript:)(v277, v189, v190, v191, v192, v193, v194, v195, v22, v23);
        sub_22BE18768();
        sub_22C25A664();
        sub_22BE41688();
        sub_22BE1AE58();
        v160 = MEMORY[0x277D1CBD0];
        goto LABEL_24;
      case 4u:
        sub_22C1088E8();
        sub_22BE46048(&a17);
        sub_22BE3B620(v165, v166);
        sub_22C1088AC();
        sub_22C25ABA8(&a16);
        sub_22BE1AA68(v167, v168);
        v169 = *v278;
        v147 = v278[1];
        v170 = *(v278 + 32);
        v171 = v278[2];
        v146 = v278[3];

        sub_22C0F2F3C(v172, v173, v174, v175, v176, v177, v178, v179);
        sub_22C25A098();
        sub_22BE18944();
        sub_22C26FFB4();
        sub_22BE18768();
        sub_22C25A664();
        sub_22C25A23C();
        sub_22BE1AE58();
        sub_22BE39EAC();
        sub_22BE1AE58();
        v160 = MEMORY[0x277D1CBD8];
        goto LABEL_24;
      case 5u:
        sub_22C1088E8();
        sub_22BEE94A4(&a15);
        sub_22BE3B620(v208, v209);
        v210 = sub_22BE19EBC();
        sub_22BE1AA68(v210, v278);
        sub_22C25A098();
        ParameterNotAllowed.init(transcript:)();
        sub_22BE18768();
        sub_22C25A664();
        sub_22C2599C0();
        sub_22BE1AE58();
        v160 = MEMORY[0x277D1CBC0];
        goto LABEL_24;
      case 6u:
        v211 = sub_22C1088E8();
        sub_22BE3B620(v211, v263);
        v212 = sub_22BE44744();
        sub_22BE1AA68(v212, v262);
        v213 = *v262;
        v147 = v262[1];
        v214 = *(v280 + 20);

        sub_22C101488();
        v281 = v213;
        sub_22BE36288();
        v244 = sub_22BE261AC();
        v146 = v258;
        v245(v244);
        sub_22BE3C6E0(&v282);
        sub_22C272864();
        v249 = *(v257 + 8);
        v250 = sub_22BE2684C();
        v251(v250);
        sub_22C25A098();
        sub_22BE36674();
        sub_22C270194();
        sub_22BE18768();
        sub_22BE1AE58();
        sub_22C25A17C();
        sub_22BE1AE58();
        sub_22BE33FCC();
        sub_22BE1AE58();
        v160 = MEMORY[0x277D1CBE0];
        goto LABEL_24;
      case 7u:
        v196 = sub_22C1088E8();
        v147 = v274;
        sub_22BE3B620(v196, v274);
        sub_22BE385E4();
        sub_22BE22944(&a12);
        sub_22BE1AA68(v197, v198);
        sub_22BE33BD0();
        ActionRequirement.init(transcript:)();
        sub_22BE18768();
        sub_22C25A664();
        sub_22C259470();
        sub_22BE1AE58();
        v160 = MEMORY[0x277D1CBA0];
        goto LABEL_24;
      case 8u:
        v225 = sub_22C1088E8();
        v147 = v265;
        sub_22BE3B620(v225, v265);
        v227 = v265[1];
        v226 = v265[2];
        v228 = *v265;
        v146 = *(*v265 + 16);
        if (v146)
        {
          v273 = v265[1];
          v283 = MEMORY[0x277D84F90];
          v275 = v265[2];

          v229 = sub_22C25A000();
          sub_22BE711C4(v229, v146, 0);
          v230 = 0;
          sub_22BE25AD8();
          v278 = (v228 + v232);
          v279 = (v231 + 8);
          v280 = v283;
          v277 = v231 + 16;
          do
          {
            if (v230 >= *(v228 + 16))
            {
              __break(1u);
              return;
            }

            v233 = *(v231 + 16);
            v233(v269, v278 + *(v231 + 72) * v230, v270);
            v234 = sub_22BE41FB4();
            (v233)(v234);
            ToolDefinition.init(transcript:)(v268, v267);
            (*v279)(v269, v270);
            v236 = *(v280 + 16);
            v235 = *(v280 + 24);
            if (v236 >= v235 >> 1)
            {
              sub_22BE3D1E4(v235);
              sub_22BE447E4();
              sub_22BE711C4(v241, v242, v243);
            }

            ++v230;
            *(v280 + 16) = v236 + 1;
            sub_22BE25AD8();
            v239 = sub_22C25AB34(v238 + v237);
            (*(v240 + 32))(v239, v267, v266);
            v231 = v271;
          }

          while (v146 != v230);
          v147 = v265;
          v227 = v273;
        }

        else
        {
          v246 = v265[2];

          v280 = MEMORY[0x277D84F90];
        }

        sub_22C25A098();
        MEMORY[0x2318A8290](v227, v226, v280);
        sub_22BE18768();
        sub_22C25A664();
        sub_22BE26148();
        sub_22BE1AE58();
        v160 = MEMORY[0x277D1CBB0];
LABEL_24:
        sub_22C25A6B8(v160);
        v247 = sub_22C26F894();
        sub_22BE1834C(v247);
        (*(v248 + 104))(v146, v147);
        break;
      case 9u:
        sub_22C1088E8();
        sub_22C25AB7C();
        sub_22BE3B620(v180, v181);
        v182 = sub_22BE19EBC();
        sub_22BE1AA68(v182, v279);
        sub_22BE33BD0();
        ActionFailure.init(transcript:)();
        sub_22BE18768();
        sub_22C25A664();
        sub_22BE26148();
        sub_22BE1AE58();
        v160 = MEMORY[0x277D1CBE8];
        goto LABEL_24;
      case 0xAu:
        v215 = sub_22C1088E8();
        v147 = v264;
        sub_22BE3B620(v215, v264);
        v216 = *v264;

        sub_22C0F2F3C(v217, v218, v219, v220, v221, v222, v223, v224);
        sub_22C25A098();
        sub_22C26FD74();
        sub_22BE18768();
        sub_22C25A664();
        sub_22BE26148();
        sub_22BE1AE58();
        v160 = MEMORY[0x277D1CBC8];
        goto LABEL_24;
      case 0xBu:
        sub_22C1088E8();
        sub_22BEE94A4(&v279);
        sub_22BE3B620(v161, v162);
        sub_22BE19EBC();
        sub_22BE22944(&v278);
        sub_22BE1AA68(v163, v164);
        sub_22BE33BD0();
        SnippetStream.init(transcript:)();
        sub_22BE18768();
        sub_22C25A664();
        sub_22BE26148();
        sub_22BE1AE58();
        v160 = MEMORY[0x277D1CB98];
        goto LABEL_24;
      default:
        v148 = sub_22C1088E8();
        v147 = v149;
        sub_22BE3B620(v148, v149);
        sub_22BE19EBC();
        sub_22BE22944(&v277);
        sub_22BE1AA68(v150, v151);
        v152 = sub_22BE33BD0();
        ActionSuccess.init(transcript:)(v152, v153, v154, v155, v156, v157, v158, v159, v22, v23);
        sub_22BE18768();
        sub_22C25A664();
        sub_22BE3BFF4();
        sub_22BE1AE58();
        v160 = MEMORY[0x277D1CBF0];
        goto LABEL_24;
    }
  }

  sub_22BE467E4();
  sub_22BE18478();
}

void ConvertibleFromHandwrittenProtocol.init(handwritten:)()
{
  sub_22BE19130();
  v4 = v3;
  v51 = v5;
  sub_22BE17C68();
  v48 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE3C444(v10, v46);
  v49 = v11;
  v52 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_22C273844();
  sub_22BE179D8(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1B72C();
  sub_22BE17C68();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE18928();
  MEMORY[0x28223BE20](v25);
  sub_22BE181E4();
  sub_22C116380();
  v26(v0, v4, v14);
  v27 = sub_22BE391E8();
  sub_22BE1AB5C(v27, v28, AssociatedTypeWitness);
  if (v29)
  {
    v30 = *(v16 + 8);
    v31 = sub_22BE261AC();
    v30(v31);
    v32 = sub_22BE41FB4();
    v30(v32);
    v33 = 1;
    v34 = v51;
    v39 = v52;
LABEL_7:
    sub_22BE19DC4(v34, v33, 1, v39);
    goto LABEL_8;
  }

  v47 = v4;
  sub_22C25A35C();
  v35 = sub_22BE200D4();
  v36(v35);
  sub_22C1CF23C();
  v37 = sub_22BE33560();
  v38(v37);
  v39 = v52;
  (*(v49 + 16))(v2, v52);
  if (!v1)
  {
    (*(v16 + 8))(v47, v14);
    v43 = *(v21 + 8);
    v44 = sub_22BE22DF4();
    v45(v44);
    v34 = v51;
    (*(v48 + 32))(v51, v50, v52);
    v33 = 0;
    goto LABEL_7;
  }

  (*(v16 + 8))(v47, v14);
  v40 = *(v21 + 8);
  v41 = sub_22BE22DF4();
  v42(v41);
LABEL_8:
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t sub_22C1EFFD8()
{
  v2 = sub_22C270B74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  ContextProtoRetrievedTool.Definition.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C560, type metadata accessor for ContextProtoRetrievedTool.Definition);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

char *sub_22C1F0190()
{
  v2 = v0;
  v3 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38 - v5;
  v7 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  v11 = sub_22C270C84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ContextProtoUIControlTool(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v15, v2, v11, v18);
  v40 = sub_22C270C34();
  v42 = v21;
  v39 = sub_22C270C44();
  v41 = v22;
  v38 = sub_22C270C74();
  v24 = v23;
  sub_22C270C54();
  sub_22C1058C4(v6, v25, v26, v27, v28, v29, v30, v31, v38, v39);
  if (v1)
  {
    (*(v12 + 8))(v15, v11);
  }

  else
  {
    v32 = *(v16 + 28);
    v33 = sub_22C272674();
    sub_22BE19DC4(v20 + v32, 1, 1, v33);
    v34 = v20 + *(v16 + 32);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v12 + 8))(v15, v11);
    v35 = v42;
    *v20 = v40;
    v20[1] = v35;
    v36 = v41;
    v20[2] = v39;
    v20[3] = v36;
    v20[4] = v38;
    v20[5] = v24;
    sub_22BE2343C();
    sub_22C259290(&qword_27D90C578, type metadata accessor for ContextProtoUIControlTool);
    v10 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v10;
}

uint64_t sub_22C1F04D4()
{
  v2 = sub_22C270C24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContextProtoRetrievedTool(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  ContextProtoRetrievedTool.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C1B8, type metadata accessor for ContextProtoRetrievedTool);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C1F068C()
{
  v2 = type metadata accessor for ToolQuery.Output();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Output = type metadata accessor for ContextProtoToolQueryOutput(0);
  v7 = *(*(Output - 8) + 64);
  MEMORY[0x28223BE20](Output);
  sub_22BE1AA68(v0, v5);
  ContextProtoToolQueryOutput.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C5C8, type metadata accessor for ContextProtoToolQueryOutput);
    Output = sub_22C270744();
    sub_22BE1AE58();
  }

  return Output;
}

uint64_t sub_22C1F080C()
{
  v2 = sub_22C271A34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationToolRetrievalResponse = type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
  v8 = *(*(DecorationToolRetrievalResponse - 8) + 64);
  v9 = MEMORY[0x28223BE20](DecorationToolRetrievalResponse);
  (*(v3 + 16))(v6, v0, v2, v9);
  ContextProtoQueryDecorationToolRetrievalResponse.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C5E0, type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse);
    DecorationToolRetrievalResponse = sub_22C270744();
    sub_22BE1AE58();
  }

  return DecorationToolRetrievalResponse;
}

uint64_t sub_22C1F09C4()
{
  v2 = sub_22C271904();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  ContextProtoDynamicEnumerationEntity.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C0F0, type metadata accessor for ContextProtoDynamicEnumerationEntity);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C1F0B7C()
{
  v2 = sub_22C271784();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  ContextProtoToolRetrievalType.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C1C0, type metadata accessor for ContextProtoToolRetrievalType);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C1F0D34()
{
  v1 = sub_22C270F64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContextProtoSampleInvocation(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = sub_22C270F44();
  v13 = v12;
  sub_22C270F54();
  v15 = v14;
  v16 = &v10[*(v6 + 24)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v5, v1);
  *v10 = v11;
  *(v10 + 1) = v13;
  *(v10 + 4) = v15;
  sub_22C259290(&qword_27D90C158, type metadata accessor for ContextProtoSampleInvocation);
  v17 = sub_22C270744();
  sub_22BE1AE58();
  return v17;
}

char *sub_22C1F0F28()
{
  v2 = v0;
  v3 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v40 - v5;
  v7 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_22C270FD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, v2, v9, v16);
  sub_22C270FB4();
  sub_22C105684(v6, v19, v20, v21, v22, v23, v24, v25, v40, v41);
  if (v1)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v26 = sub_22C270FC4();
    sub_22C1C4190(v26, v27, v28, v29, v30, v31, v32, v33, v40, v41);
    v36 = v35;
    v37 = *(v14 + 20);
    v38 = sub_22C272594();
    sub_22BE19DC4(v18 + v37, 1, 1, v38);
    v39 = v18 + *(v14 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v10 + 8))(v13, v9);
    sub_22BE2343C();
    *v18 = v36;
    sub_22C259290(&qword_27D90C0E8, type metadata accessor for ContextProtoSpanMatchedEntity);
    v13 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v13;
}

uint64_t sub_22C1F1240()
{
  v2 = sub_22C270AF4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContextProtoEntityMatch(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  ContextProtoEntityMatch.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C1D0, type metadata accessor for ContextProtoEntityMatch);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C1F13F8()
{
  v1 = v0;
  v2 = sub_22BE5CE4C(&qword_27D9073C0, &qword_22C275330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_22C270E54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v13 = *(*(matched - 8) + 64);
  v14 = MEMORY[0x28223BE20](matched);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v1, v8, v14);
  v32 = sub_22C270E24();
  v18 = v17;
  v19 = sub_22C270E44();
  v21 = v20;
  sub_22C270E34();
  v34 = v7;
  v22 = v35;
  sub_22C107944();
  if (v22)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    LODWORD(v35) = v21 & 1;
    if (v21)
    {
      v23 = 0;
    }

    else
    {
      v23 = v19;
    }

    v31 = v23;
    v24 = v18 & 1;
    v25 = matched;
    if (v18)
    {
      v26 = 0;
    }

    else
    {
      v26 = v32;
    }

    v27 = *(matched + 24);
    v28 = type metadata accessor for ContextProtoAliasTypes(0);
    sub_22BE19DC4(&v16[v27], 1, 1, v28);
    v29 = &v16[*(v25 + 28)];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v9 + 8))(v12, v8);
    *v16 = v26;
    v16[8] = v24;
    *(v16 + 2) = v31;
    v16[24] = v35;
    sub_22BE2343C();
    sub_22C259290(&qword_27D90C618, type metadata accessor for ContextProtoMatchProperties);
    v19 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v19;
}

uint64_t sub_22C1F1730()
{
  v2 = sub_22C270944();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContextProtoAliasTypes(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  (*(v3 + 16))(v6, v0, v2, v9);
  ContextProtoAliasTypes.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C630, type metadata accessor for ContextProtoAliasTypes);
    v7 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v7;
}

uint64_t sub_22C1F18E8()
{
  DecorationInput = type metadata accessor for ContextProtoQueryDecorationInput(0);
  v3 = *(*(DecorationInput - 8) + 64);
  MEMORY[0x28223BE20](DecorationInput);
  v4 = v0;
  ContextProtoQueryDecorationInput.init(handwritten:)(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  if (!v1)
  {
    sub_22C259290(&qword_27D90C508, type metadata accessor for ContextProtoQueryDecorationInput);
    DecorationInput = sub_22C270744();
    sub_22BE1AE58();
  }

  return DecorationInput;
}

uint64_t sub_22C1F1A04()
{
  DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
  v3 = *(*(DecorationOutput - 8) + 64);
  MEMORY[0x28223BE20](DecorationOutput);
  v4 = v0;
  ContextProtoVersionedQueryDecorationOutput.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C4C8, type metadata accessor for ContextProtoVersionedQueryDecorationOutput);
    DecorationOutput = sub_22C270744();
    sub_22BE1AE58();
  }

  return DecorationOutput;
}

uint64_t sub_22C1F1B20()
{
  DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
  v3 = *(*(DecorationOutput - 8) + 64);
  MEMORY[0x28223BE20](DecorationOutput);
  v4 = v0;
  ContextProtoQueryDecorationOutput.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90C4F0, type metadata accessor for ContextProtoQueryDecorationOutput);
    DecorationOutput = sub_22C270744();
    sub_22BE1AE58();
  }

  return DecorationOutput;
}

uint64_t sub_22C1F1C3C()
{
  v2 = type metadata accessor for Session.Event(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoEvent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoEvent.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&unk_28107AB68, type metadata accessor for TranscriptProtoEvent);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F1DBC()
{
  v2 = type metadata accessor for Session.Transcript(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoTranscript(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoTranscript.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F360, type metadata accessor for TranscriptProtoTranscript);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F1F3C()
{
  v1 = v0;
  v2 = sub_22C26E164();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for Timepoint();
  v12 = (v11 - 8);
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TranscriptProtoTimepoint(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v1, v15);
  (*(v3 + 16))(v6, v15, v2);
  sub_22C270444();
  v20 = sub_22C270454();
  sub_22BE19DC4(v10, 0, 1, v20);
  v21 = v12[8];
  v31 = *&v15[v12[7]];
  v22 = *&v15[v21];
  v23 = &v15[v12[9]];
  v24 = sub_22C26E184();
  v26 = v25;
  sub_22BE19DC4(v19 + *(v16 + 28), 1, 1, v20);
  v27 = v19 + *(v16 + 32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v19 = v31;
  v19[1] = v22;
  v19[2] = v24;
  v19[3] = v26;
  sub_22C259290(&qword_281078C68, type metadata accessor for TranscriptProtoTimepoint);
  v28 = sub_22C270744();
  sub_22BE1AE58();
  return v28;
}

uint64_t sub_22C1F2254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoParticipantID(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v8 + 20);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v7 = a1;
  v7[1] = a2;
  sub_22C259290(&unk_281076C00, type metadata accessor for TranscriptProtoParticipantID);
  v10 = sub_22C270744();
  sub_22BE1AE58();
  return v10;
}

uint64_t sub_22C1F2374(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptProtoSpanID(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v5 + *(v6 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v5 = a1;
  sub_22C259290(&unk_28107A328, type metadata accessor for TranscriptProtoSpanID);
  v8 = sub_22C270744();
  sub_22BE1AE58();
  return v8;
}

uint64_t sub_22C1F2600()
{
  v1 = type metadata accessor for SessionStart(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TranscriptProtoSessionStart(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE1AA68(v0, v4);
  TranscriptProtoSessionStart.init(handwritten:)();
  sub_22C259290(&qword_2810773C0, type metadata accessor for TranscriptProtoSessionStart);
  v7 = sub_22C270744();
  sub_22BE1AE58();
  return v7;
}

uint64_t sub_22C1F2770()
{
  v1 = sub_22C26EA34();
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BE5CE4C(&qword_27D90F0E8, &qword_22C2B5C90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v28 - v7);
  v9 = sub_22C26EA84();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoDeviceDetails(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v13, v0, v9, v16);
  v19 = sub_22C26EA54();
  v28 = v20;
  v29 = v19;
  sub_22C26EA64();
  v21 = sub_22C26EA24();
  v22 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  v23 = v8 + *(v22 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v30 + 8))(v4, v31);
  *v8 = v21;
  sub_22BE19DC4(v8, 0, 1, v22);
  sub_22BE19DC4(v18 + *(v14 + 20), 1, 1, v22);
  v24 = v18 + *(v14 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v10 + 8))(v13, v9);
  v25 = v28;
  *v18 = v29;
  v18[1] = v25;
  sub_22BE2343C();
  sub_22C259290(&qword_27D910698, type metadata accessor for TranscriptProtoDeviceDetails);
  v26 = sub_22C270744();
  sub_22BE1AE58();
  return v26;
}

uint64_t sub_22C1F2AA4()
{
  v1 = sub_22C26EA34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoDeviceDetailsDeviceType(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = sub_22C26EA24();
  v12 = v10 + *(v6 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v5, v1);
  *v10 = v11;
  sub_22C259290(&qword_27D910680, type metadata accessor for TranscriptProtoDeviceDetailsDeviceType);
  v13 = sub_22C270744();
  sub_22BE1AE58();
  return v13;
}

uint64_t sub_22C1F2C78()
{
  v42 = sub_22C26E244();
  v1 = *(v42 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v42);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = sub_22C26ECA4();
  v40 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TranscriptProtoLocaleSettings(0);
  v16 = *(*(v41 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v41);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v15, v0, v11, v17);
  sub_22C26EC64();
  v20 = sub_22C26E1F4();
  v38 = v21;
  v39 = v20;
  v22 = *(v1 + 8);
  v23 = v10;
  v24 = v42;
  v22(v23, v42);
  sub_22C26EC44();
  v25 = sub_22C26E1F4();
  v36 = v26;
  v37 = v25;
  v22(v7, v24);
  sub_22C26EC74();
  v27 = sub_22C26E1F4();
  v29 = v28;
  v22(v4, v24);
  v30 = v19 + *(v41 + 28);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v12 + 8))(v15, v40);
  v31 = v38;
  *v19 = v39;
  v19[1] = v31;
  v32 = v36;
  v19[2] = v37;
  v19[3] = v32;
  v19[4] = v27;
  v19[5] = v29;
  sub_22C259290(&unk_281075FE0, type metadata accessor for TranscriptProtoLocaleSettings);
  v33 = sub_22C270744();
  sub_22BE1AE58();
  return v33;
}

uint64_t sub_22C1F2FAC()
{
  v1 = sub_22C26EC34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoGenderSettings(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  (*(v2 + 16))(v5, v0, v1, v8);
  TranscriptProtoGenderSettings.init(handwritten:)();
  sub_22C259290(&qword_27D910668, type metadata accessor for TranscriptProtoGenderSettings);
  v9 = sub_22C270744();
  sub_22BE1AE58();
  return v9;
}

uint64_t sub_22C1F3154()
{
  v28 = sub_22C26E164();
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v28);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22BE5CE4C(&qword_27D90E470, &unk_22C2AE480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for DateTimeContext();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TranscriptProtoDateTimeContext(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v0, v13);
  v18 = *(v14 + 20);
  v19 = sub_22C270454();
  sub_22BE19DC4(v17 + v18, 1, 1, v19);
  v20 = v17 + *(v14 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v1 + 16))(v4, v13, v28);
  sub_22C270444();
  sub_22BE19DC4(v8, 0, 1, v19);
  sub_22BE2343C();
  v21 = &v13[*(v10 + 28)];
  v22 = sub_22C26E264();
  v24 = v23;
  sub_22BE1AE58();
  *v17 = v22;
  v17[1] = v24;
  sub_22C259290(&qword_27D90F388, type metadata accessor for TranscriptProtoDateTimeContext);
  v25 = sub_22C270744();
  sub_22BE1AE58();
  return v25;
}

uint64_t sub_22C1F3450()
{
  v2 = type metadata accessor for UserTurnStarted(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoUserTurnStarted(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoUserTurnStarted.init(handwritten:)(v5, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D90F3A0, type metadata accessor for TranscriptProtoUserTurnStarted);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F35D0()
{
  v0 = sub_22BE5CE4C(&qword_27D90E4F0, &qword_22C2CC7E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v15 - v2;
  v4 = type metadata accessor for TranscriptProtoUserTurn(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  v11 = type metadata accessor for TranscriptProtoUserTurnEnum(0);
  sub_22BE19DC4(v7, 1, 1, v11);
  v12 = &v7[*(v4 + 20)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  swift_storeEnumTagMultiPayload();
  sub_22BE19DC4(v3, 0, 1, v11);
  sub_22BE2343C();
  sub_22BE3B620(v7, v10);
  sub_22C259290(&qword_27D90F3B8, type metadata accessor for TranscriptProtoUserTurn);
  v13 = sub_22C270744();
  sub_22BE1AE58();
  return v13;
}

uint64_t sub_22C1F37E4()
{
  v0 = type metadata accessor for TranscriptProtoUserTurnSpeech(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D90F3D0, type metadata accessor for TranscriptProtoUserTurnSpeech);
  v2 = sub_22C270744();
  sub_22BE1AE58();
  return v2;
}

uint64_t sub_22C1F38E4()
{
  v0 = type metadata accessor for TranscriptProtoUserTurnText(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D90F3E8, type metadata accessor for TranscriptProtoUserTurnText);
  v2 = sub_22C270744();
  sub_22BE1AE58();
  return v2;
}

uint64_t sub_22C1F39E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoSpeechPartialResult(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_22C1C36F4();
  v9 = v8;
  v10 = v7 + *(v4 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v7 = a1;
  v7[1] = a2;
  v7[2] = v9;
  sub_22C259290(&qword_27D90F400, type metadata accessor for TranscriptProtoSpeechPartialResult);
  v11 = sub_22C270744();
  sub_22BE1AE58();
  return v11;
}

uint64_t sub_22C1F3B2C()
{
  v2 = type metadata accessor for Request(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoRequest.init(handwritten:)(v5, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1]);
  if (!v1)
  {
    sub_22C259290(&qword_27D90F418, type metadata accessor for TranscriptProtoRequest);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F3CAC()
{
  v2 = type metadata accessor for RequestContent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoRequestContent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoRequestContent.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_281075D50, type metadata accessor for TranscriptProtoRequestContent);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F3E2C()
{
  v0 = type metadata accessor for TranscriptProtoRequestContentStopContent(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C259290(&qword_27D90F450, type metadata accessor for TranscriptProtoRequestContentStopContent);
  v2 = sub_22C270744();
  sub_22BE1AE58();
  return v2;
}

uint64_t sub_22C1F3F2C()
{
  v1 = v0;
  v2 = sub_22C26E684();
  v30 = *(v2 - 8);
  v3 = v30;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for RequestContent.TextContent(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TranscriptProtoRequestContentTextContent(0);
  v16 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22BE1AA68(v1, v15);
  v19 = *v15;
  v31 = *(v15 + 1);
  v32 = v19;
  (*(v3 + 16))(v6, &v15[*(v12 + 28)], v2);

  LODWORD(v12) = sub_22C26E674();
  v20 = sub_22C26E654();
  v22 = v21;
  v23 = type metadata accessor for TranscriptProtoStatementID(0);
  v24 = &v10[*(v23 + 24)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v30 + 8))(v6, v2);
  *v10 = v12;
  *(v10 + 1) = v20;
  *(v10 + 2) = v22;
  sub_22BE19DC4(v10, 0, 1, v23);
  v25 = v33;
  sub_22BE19DC4(v18 + *(v33 + 20), 1, 1, v23);
  v26 = v18 + *(v25 + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  v27 = v31;
  *v18 = v32;
  v18[1] = v27;
  sub_22BE2343C();
  sub_22C259290(&unk_28107DC10, type metadata accessor for TranscriptProtoRequestContentTextContent);
  v28 = sub_22C270744();
  sub_22BE1AE58();
  return v28;
}

uint64_t sub_22C1F4274()
{
  v2 = type metadata accessor for RequestContent.SpeechContent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoRequestContentSpeechContent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoRequestContentSpeechContent.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F470, type metadata accessor for TranscriptProtoRequestContentSpeechContent);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F43F4()
{
  v1 = sub_22C26EBC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoSpeechPackage(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = sub_22C26EAE4();
  sub_22C1C3E60(v11, v12, v13, v14, v15, v16, v17, v18, v24[0], v24[1]);
  v20 = v19;
  v21 = v10 + *(v6 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v5, v1);
  *v10 = v20;
  sub_22C259290(&qword_27D90F488, type metadata accessor for TranscriptProtoSpeechPackage);
  v22 = sub_22C270744();
  sub_22BE1AE58();
  return v22;
}

uint64_t sub_22C1F45D4()
{
  v1 = sub_22C26EB94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v8);
  v11 = sub_22C26EAE4();
  sub_22C1C3B30(v11, v12, v13, v14, v15, v16, v17, v18, v24[0], v24[1]);
  v20 = v19;
  v21 = v10 + *(v6 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v5, v1);
  *v10 = v20;
  sub_22C259290(&qword_27D90E5C8, type metadata accessor for TranscriptProtoSpeechPackage.Phrase);
  v22 = sub_22C270744();
  sub_22BE1AE58();
  return v22;
}

uint64_t sub_22C1F47B4()
{
  v1 = sub_22C26EAF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v8);
  sub_22C26EAE4();
  sub_22C1C36F4();
  v12 = v11;
  v13 = v10 + *(v6 + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v2 + 8))(v5, v1);
  *v10 = v12;
  sub_22C259290(&qword_27D90E5D8, type metadata accessor for TranscriptProtoSpeechPackage.Interpretation);
  v14 = sub_22C270744();
  sub_22BE1AE58();
  return v14;
}

uint64_t sub_22C1F4994()
{
  v1 = v0;
  v2 = sub_22C26EB64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TranscriptProtoSpeechPackage.Token(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2, v9);
  v12 = sub_22C26EB34();
  v14 = v13;
  v15 = sub_22C26EB04();
  sub_22C26EB54();
  v17 = v16;
  sub_22C26EB14();
  v19 = v18;
  sub_22C26EB44();
  v21 = v20;
  v22 = v11 + *(v7 + 36);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v3 + 8))(v6, v2);
  *v11 = v12;
  v11[1] = v14;
  v11[2] = v15;
  v11[3] = v17;
  v11[4] = v19;
  v11[5] = v21;
  sub_22C259290(&qword_27D90E518, type metadata accessor for TranscriptProtoSpeechPackage.Token);
  v23 = sub_22C270744();
  sub_22BE1AE58();
  return v23;
}

uint64_t sub_22C1F4BB0()
{
  v2 = type metadata accessor for ExternalAgentRequest(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoExternalAgentRequest(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoExternalAgentRequest.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_281072DC0, type metadata accessor for TranscriptProtoExternalAgentRequest);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F4D30()
{
  v2 = type metadata accessor for RequestPrescribedPlan(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlan(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoRequestPrescribedPlan.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F4F0, type metadata accessor for TranscriptProtoRequestPrescribedPlan);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F4EB0(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v9[*(v10 + 28)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v9 = a1;
  *(v9 + 1) = a2;
  v9[16] = a3 & 1;
  v9[17] = HIBYTE(a3) & 1;
  sub_22C259290(&qword_27D90F508, type metadata accessor for TranscriptProtoRequestPrescribedPlanSearchTool);

  v12 = sub_22C270744();
  sub_22BE1AE58();
  return v12;
}

uint64_t sub_22C1F4FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v8 + 20);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v7 = a1;
  v7[1] = a2;
  sub_22C259290(&qword_27D90F520, type metadata accessor for TranscriptProtoRequestPrescribedPlanLowConfidenceKnowledgeTool);
  v10 = sub_22C270744();
  sub_22BE1AE58();
  return v10;
}

uint64_t sub_22C1F5108()
{
  v1 = type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  v6 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = v5;
  v8 = *(v7 + 28);
  sub_22C2591A4(&v14, v12);
  sub_22BE22814();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v9 = v13;
  *v4 = v14;
  v4[16] = v6;
  *(v4 + 24) = v9;
  sub_22C259290(&qword_27D90F538, type metadata accessor for TranscriptProtoRequestPrescribedPlanTextTool);
  v10 = sub_22C270744();
  sub_22BE1AE58();
  return v10;
}

uint64_t sub_22C1F5260()
{
  v1 = type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  v6 = *(v0 + 16);
  v14 = *(v0 + 24);
  v15 = v5;
  v13 = *(v0 + 40);
  v8 = *(v7 + 32);
  sub_22C2591A4(&v15, v12);
  sub_22BE22814();
  sub_22BE22814();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v9 = v14;
  *v4 = v15;
  v4[16] = v6;
  *(v4 + 24) = v9;
  *(v4 + 40) = v13;
  sub_22C259290(&qword_27D90F550, type metadata accessor for TranscriptProtoRequestPrescribedPlanConvertTool);
  v10 = sub_22C270744();
  sub_22BE1AE58();
  return v10;
}

uint64_t sub_22C1F53EC()
{
  v1 = type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  v6 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = v5;
  v8 = *(v7 + 28);
  sub_22C2591A4(&v14, v12);
  sub_22BE22814();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v9 = v13;
  *v4 = v14;
  v4[16] = v6;
  *(v4 + 24) = v9;
  sub_22C259290(&qword_27D90F568, type metadata accessor for TranscriptProtoRequestPrescribedPlanDisplayTool);
  v10 = sub_22C270744();
  sub_22BE1AE58();
  return v10;
}

uint64_t sub_22C1F5544()
{
  v1 = type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  v6 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = v5;
  v8 = *(v7 + 28);
  sub_22C2591A4(&v14, v12);
  sub_22BE22814();
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v9 = v13;
  *v4 = v14;
  v4[16] = v6;
  *(v4 + 24) = v9;
  sub_22C259290(&qword_27D90F580, type metadata accessor for TranscriptProtoRequestPrescribedPlanKnowledgeTool);
  v10 = sub_22C270744();
  sub_22BE1AE58();
  return v10;
}

uint64_t sub_22C1F569C()
{
  v1 = v0;
  v2 = sub_22C26E684();
  v3 = *(v2 - 8);
  v4 = v3;
  v33 = v2;
  v34 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for RequestPrescribedPlan.OpenTool(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool(0);
  v17 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1AA68(v1, v16);
  (*(v4 + 16))(v7, v16, v2);
  LODWORD(v1) = sub_22C26E674();
  v20 = sub_22C26E654();
  v22 = v21;
  v23 = type metadata accessor for TranscriptProtoStatementID(0);
  v24 = &v11[*(v23 + 24)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  (*(v34 + 8))(v7, v33);
  *v11 = v1;
  *(v11 + 1) = v20;
  *(v11 + 2) = v22;
  sub_22BE19DC4(v11, 0, 1, v23);
  v25 = &v16[*(v13 + 28)];
  v26 = v25[8];
  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = *v25;
  }

  sub_22BE19DC4(v19, 1, 1, v23);
  v28 = &v19[*(v35 + 20)];
  v29 = &v19[*(v35 + 24)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22BE1AE58();
  sub_22BE2343C();
  *v28 = v27;
  v28[8] = v26;
  sub_22C259290(&qword_27D90F598, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenTool);
  v30 = sub_22C270744();
  sub_22BE1AE58();
  return v30;
}

uint64_t sub_22C1F59E4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 & 1;
  if (v9)
  {
    a1 = 0;
  }

  v10 = &v8[*(v6 + 20)];
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v8 = a1;
  v8[8] = v9;
  sub_22C259290(&qword_27D90F5B0, type metadata accessor for TranscriptProtoRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  v11 = sub_22C270744();
  sub_22BE1AE58();
  return v11;
}

uint64_t sub_22C1F5B08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptProtoRequestSuggestedInvocation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v8 + 20);

  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  *v7 = a1;
  v7[1] = a2;
  sub_22C259290(&qword_27D90F438, type metadata accessor for TranscriptProtoRequestSuggestedInvocation);
  v10 = sub_22C270744();
  sub_22BE1AE58();
  return v10;
}

uint64_t sub_22C1F5DA8()
{
  v2 = type metadata accessor for ActionCancellation(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoActionCancellation(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoActionCancellation.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90F5E8, type metadata accessor for TranscriptProtoActionCancellation);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}

uint64_t sub_22C1F60A8()
{
  v2 = type metadata accessor for ClientAction.ShimParameter(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TranscriptProtoShimParameter(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE1AA68(v0, v5);
  TranscriptProtoShimParameter.init(handwritten:)();
  if (!v1)
  {
    sub_22C259290(&qword_27D90E790, type metadata accessor for TranscriptProtoShimParameter);
    v6 = sub_22C270744();
    sub_22BE1AE58();
  }

  return v6;
}