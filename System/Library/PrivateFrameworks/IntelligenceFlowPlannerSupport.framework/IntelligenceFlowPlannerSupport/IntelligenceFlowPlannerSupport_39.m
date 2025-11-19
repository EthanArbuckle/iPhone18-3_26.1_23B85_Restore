uint64_t StructuredContext.NowPlayingMediaItemContext.MediaRemotePlaybackState.init(transcript:)(char *a1)
{
  sub_22BE367EC(a1);
  v1 = sub_22C2713B4();
  sub_22BE1834C(v1);
  v3 = *(v2 + 104);
  v4 = sub_22BE27C4C();
  return v5(v4);
}

void ContextProtoStructedContextNowPlayingMediaRemotePlaybackState.init(context:)()
{
  sub_22BE4111C();
  v0 = sub_22C2713B4();
  v1 = sub_22BE179D8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = sub_22BE18B58(v4, v12);
  v6(v5);
  v7 = sub_22C1CEBF4();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D1EFC8] || v9 == *MEMORY[0x277D1EF98] || v9 == *MEMORY[0x277D1EFB0] || v9 == *MEMORY[0x277D1EFC0] || v9 == *MEMORY[0x277D1EFA0] || v9 == *MEMORY[0x277D1EFB8] || v9 == *MEMORY[0x277D1EFA8])
  {
    v10 = sub_22BE2942C();
    v11(v10);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

uint64_t StructuredContext.NowPlayingMediaItemContext.MediaRemoteContentItemMediaType.init(transcript:)(char *a1)
{
  sub_22BE367EC(a1);
  v1 = sub_22C2713C4();
  sub_22BE1834C(v1);
  v3 = *(v2 + 104);
  v4 = sub_22BE27C4C();
  return v5(v4);
}

void ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaType.init(context:)()
{
  sub_22BE4111C();
  v0 = sub_22C2713C4();
  v1 = sub_22BE179D8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = sub_22BE18B58(v4, v12);
  v6(v5);
  v7 = sub_22C1CEBF4();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D1EFD8] || v9 == *MEMORY[0x277D1EFE0] || v9 == *MEMORY[0x277D1EFE8] || v9 == *MEMORY[0x277D1EFD0])
  {
    v10 = sub_22BE2942C();
    v11(v10);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

uint64_t StructuredContext.NowPlayingMediaItemContext.MediaRemoteContentItemMediaSubType.init(transcript:)(char *a1)
{
  sub_22BE367EC(a1);
  v1 = sub_22C2713D4();
  sub_22BE1834C(v1);
  v3 = *(v2 + 104);
  v4 = sub_22BE27C4C();
  return v5(v4);
}

void ContextProtoStructedContextNowPlayingMediaRemoteContentItemMediaSubType.init(context:)()
{
  sub_22BE4111C();
  v0 = sub_22C2713D4();
  v1 = sub_22BE179D8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = sub_22BE18B58(v4, v12);
  v6(v5);
  v7 = sub_22C1CEBF4();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D1F000] || v9 == *MEMORY[0x277D1F010] || v9 == *MEMORY[0x277D1F018] || v9 == *MEMORY[0x277D1F008] || v9 == *MEMORY[0x277D1F028] || v9 == *MEMORY[0x277D1F030] || v9 == *MEMORY[0x277D1F020] || v9 == *MEMORY[0x277D1EFF0] || v9 == *MEMORY[0x277D1EFF8])
  {
    v10 = sub_22BE2942C();
    v11(v10);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

uint64_t ContextProtoStructuredContextSiriRequestContextDeviceIdiom.init(context:)()
{
  sub_22BE38A98();
  v1 = v0;
  v2 = sub_22C271074();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = sub_22BE18B58(v8, v25);
  v10(v9);
  v11 = *(v5 + 88);
  v12 = sub_22BE36680();
  v14 = v13(v12);
  if (v14 == *MEMORY[0x277D1EF38])
  {
    v15 = 0;
LABEL_23:
    v16 = *(v5 + 8);
    v17 = sub_22BE3C5E4();
    result = v18(v17);
    *v1 = v15;
    return result;
  }

  if (v14 == *MEMORY[0x277D1EF28])
  {
    v15 = 1;
    goto LABEL_23;
  }

  if (v14 == *MEMORY[0x277D1EF40])
  {
    v15 = 2;
    goto LABEL_23;
  }

  if (v14 == *MEMORY[0x277D1EF30])
  {
    v15 = 3;
    goto LABEL_23;
  }

  if (v14 == *MEMORY[0x277D1EEF8])
  {
    v15 = 4;
    goto LABEL_23;
  }

  if (v14 == *MEMORY[0x277D1EF20])
  {
    v15 = 5;
    goto LABEL_23;
  }

  if (v14 == *MEMORY[0x277D1EF10])
  {
    v15 = 6;
    goto LABEL_23;
  }

  if (v14 == *MEMORY[0x277D1EF00])
  {
    v15 = 7;
    goto LABEL_23;
  }

  if (v14 == *MEMORY[0x277D1EF08])
  {
    v15 = 8;
    goto LABEL_23;
  }

  if (v14 == *MEMORY[0x277D1EEF0])
  {
    v15 = 9;
    goto LABEL_23;
  }

  if (v14 == *MEMORY[0x277D1EF18])
  {
    v15 = 10;
    goto LABEL_23;
  }

  sub_22C108358();
  v20 = sub_22BE196B4();
  sub_22BE3C74C(v20, v21);
  v22 = *(v5 + 8);
  v23 = sub_22BE3C5E4();
  v22(v23);
  v24 = sub_22BE36680();
  return (v22)(v24);
}

void ContextProtoStructuredContextSiriRequestContextUserClassification.init(context:)()
{
  sub_22BE4111C();
  v0 = sub_22C2711F4();
  v1 = sub_22BE179D8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = sub_22BE18B58(v4, v12);
  v6(v5);
  v7 = sub_22C1CEBF4();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D1EF50] || v9 == *MEMORY[0x277D1EF58] || v9 == *MEMORY[0x277D1EF60] || v9 == *MEMORY[0x277D1EF48] || v9 == *MEMORY[0x277D1EF68])
  {
    v10 = sub_22BE2942C();
    v11(v10);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

void StructuredContext.UIMetadata.Window.init(transcript:)()
{
  sub_22BE19130();
  v3 = v2;
  v5 = v4;
  v6 = sub_22BE289D8();
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE234F4();
  v12 = type metadata accessor for ContextProtoCGRect(0);
  v13 = sub_22BE18000(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v16);
  sub_22BE26800();
  v17 = *v3;
  sub_22C271604();
  v18 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
  sub_22BE3BB64(&v3[v18[5]], v1, &qword_27D90BF90, &unk_22C294AD0);
  sub_22BE1AB5C(v1, 1, v12);
  if (v19)
  {
    sub_22BE233E8(v1, &qword_27D90BF90, &unk_22C294AD0);
LABEL_7:
    v28 = &v3[v18[7]];
    v30 = *v28;
    v29 = *(v28 + 1);

    sub_22C2715B4();
    v31 = &v3[v18[6]];
    v32 = *v31;
    v33 = v31[8];
    sub_22C2715F4();
    sub_22BE379D8();
    sub_22C1CEAFC();
    goto LABEL_8;
  }

  v20 = sub_22BE18240();
  sub_22C1CEB4C(v20, v21, v22);
  v23 = sub_22BE36318();
  sub_22C1CEAA4(v23, v24, v25);
  sub_22BE37D44();
  CGRect.init(transcript:)();
  if (!v0)
  {
    sub_22C2715D4();
    sub_22BE3C42C();
    sub_22C1CEAFC();
    goto LABEL_7;
  }

  sub_22BE379D8();
  sub_22C1CEAFC();
  sub_22BE3C42C();
  sub_22C1CEAFC();
  v26 = sub_22C271624();
  sub_22BE18524(v26);
  (*(v27 + 8))(v5);
LABEL_8:
  sub_22BE18478();
}

void ContextProtoStructuredContextOnScreenUITextUIMetadataWindow.init(context:)()
{
  sub_22BE19130();
  sub_22C1CECFC();
  v7 = sub_22BE5CE4C(&qword_27D90BF90, &unk_22C294AD0);
  v8 = sub_22BE19448(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v11);
  sub_22BE486EC();
  MEMORY[0x28223BE20](v12);
  sub_22BE26800();
  sub_22C2715C4();
  if (v37)
  {
    v13 = type metadata accessor for ContextProtoCGRect(0);
    v14 = 1;
LABEL_6:
    sub_22BE19DC4(v6, v14, 1, v13);
    sub_22BEF88B8(v6, v4, &qword_27D90BF90, &unk_22C294AD0);
    v32 = sub_22C271614();
    v17 = sub_22BE1AB1C();
    sub_22BE3BB64(v17, v18, &qword_27D90BF90, &unk_22C294AD0);
    v31 = sub_22C2715E4();
    v30 = v19;
    v29 = sub_22C2715A4();
    v21 = v20;
    v22 = type metadata accessor for ContextProtoStructuredContextOnScreenUITextUIMetadataWindow(0);
    v23 = sub_22C1CF0A4(v22);
    type metadata accessor for ContextProtoCGRect(v23);
    sub_22BE1A140();
    sub_22BE19DC4(v24, v25, v26, v13);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v27 = sub_22C271624();
    sub_22BE18524(v27);
    (*(v28 + 8))(v1);
    sub_22BE233E8(v4, &qword_27D90BF90, &unk_22C294AD0);
    *v2 = v32 & 1;
    sub_22C1CF344(v3, &v2[v5]);
    *v2 = v31;
    v2[8] = v30 & 1;
    *v2 = v29;
    *(v2 + 1) = v21;
    goto LABEL_7;
  }

  ContextProtoCGRect.init(context:)(v6, v33, v34, v35, v36);
  if (!v0)
  {
    v13 = type metadata accessor for ContextProtoCGRect(0);
    v14 = 0;
    goto LABEL_6;
  }

  v15 = sub_22C271624();
  sub_22BE18524(v15);
  (*(v16 + 8))(v1);
LABEL_7:
  sub_22BE22978();
  sub_22BE18478();
}

void sub_22C1BB758(void *a1@<X8>)
{
  CGRect.init(transcript:)();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

uint64_t Confidence.init(transcript:)(int *a1)
{
  v1 = *a1;
  sub_22C270954();
  sub_22BE26148();
  return sub_22C1CEAFC();
}

uint64_t ContextProtoConfidence.init(context:)()
{
  sub_22C1CECFC();
  v3 = sub_22C270EA4();
  v4 = sub_22BE179D8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE18928();
  MEMORY[0x28223BE20](v9);
  sub_22BE26800();
  sub_22C270964();
  v11 = v10;
  sub_22C270974();
  sub_22C1CF23C();
  sub_22BE25300();
  v12();
  v13 = (*(v6 + 88))(v2, v3);
  if (v13 == *MEMORY[0x277D1EDD8])
  {
    v14 = 0;
LABEL_7:
    v15 = *(v6 + 8);
    v16 = sub_22BE1AB1C();
    v17(v16);
    v18 = v1 + *(type metadata accessor for ContextProtoConfidence(0) + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v19 = sub_22C270984();
    sub_22BE18524(v19);
    result = (*(v20 + 8))(v0);
    *v1 = v11;
    *(v1 + 4) = v14;
    return result;
  }

  if (v13 == *MEMORY[0x277D1EDE8])
  {
    v14 = 1;
    goto LABEL_7;
  }

  if (v13 == *MEMORY[0x277D1EDE0])
  {
    v14 = 2;
    goto LABEL_7;
  }

  result = sub_22BE3FFAC();
  __break(1u);
  return result;
}

uint64_t ContextDataSource.init(transcript:)(char *a1)
{
  sub_22BE367EC(a1);
  v1 = sub_22C270F74();
  sub_22BE1834C(v1);
  v3 = *(v2 + 104);
  v4 = sub_22BE27C4C();
  return v5(v4);
}

void ContextProtoContextDataSource.init(context:)()
{
  sub_22BE4111C();
  v0 = sub_22C270F74();
  v1 = sub_22BE179D8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = sub_22BE18B58(v4, v12);
  v6(v5);
  v7 = sub_22C1CEBF4();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D1EE60] || v9 == *MEMORY[0x277D1EE48] || v9 == *MEMORY[0x277D1EE58] || v9 == *MEMORY[0x277D1EE38] || v9 == *MEMORY[0x277D1EE40] || v9 == *MEMORY[0x277D1EE50])
  {
    v10 = sub_22BE2942C();
    v11(v10);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

uint64_t ContextualEntityDisplayRepresentation.init(transcript:)(uint64_t *a1)
{
  if (a1[1])
  {
    v1 = *a1;
    v2 = a1[2];
    v3 = a1[3];

    sub_22C271A44();
  }

  else
  {
    sub_22BE5CE4C(&qword_27D912050, &unk_22C2B5E70);
    v4 = sub_22C273074();
    v6 = v5;
    sub_22C108598();
    sub_22BE196B4();
    *v7 = v4;
    *(v7 + 8) = v6;
    *(v7 + 16) = 0;
    swift_willThrow();
  }

  sub_22BE26148();
  return sub_22C1CEAFC();
}

uint64_t ContextProtoContextualEntityDisplayRepresentation.init(context:)()
{
  sub_22C1CECFC();
  v4 = sub_22C271A54();
  v6 = v5;
  sub_22C271A64();
  sub_22C1CF16C();
  v7 = v1 + *(type metadata accessor for ContextProtoContextualEntityDisplayRepresentation(0) + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v8 = sub_22C271A74();
  sub_22BE18524(v8);
  result = (*(v9 + 8))(v0);
  *v1 = v4;
  v1[1] = v6;
  v1[2] = v2;
  v1[3] = v3;
  return result;
}

uint64_t ConfidenceBucket.init(transcript:)(char *a1)
{
  sub_22BE367EC(a1);
  v1 = sub_22C270EA4();
  sub_22BE1834C(v1);
  v3 = *(v2 + 104);
  v4 = sub_22BE27C4C();
  return v5(v4);
}

uint64_t BoundingBox.init(transcript:)(unsigned int *a1)
{
  sub_22C101EF8(*a1 | (*(a1 + 4) << 32));
  if (!v1)
  {
    v6 = *(a1 + 12);
    sub_22C1CF1CC(a1[2]);
    v5 = *(a1 + 20);
    sub_22C1CF1CC(a1[4]);
    v4 = *(a1 + 28);
    sub_22C1CF1CC(a1[6]);
    sub_22C2709A4();
  }

  sub_22BE2B930();
  return sub_22C1CEAFC();
}

uint64_t ContextProtoBoundingBox.init(context:)()
{
  sub_22C1CECFC();
  sub_22C2709B4();
  v3 = v2;
  sub_22C2709C4();
  v5 = v4;
  sub_22C2709D4();
  v7 = v6;
  sub_22C2709E4();
  v9 = v8;
  v10 = v1 + *(type metadata accessor for ContextProtoBoundingBox(0) + 32);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v11 = sub_22C2709F4();
  sub_22BE18524(v11);
  result = (*(v12 + 8))(v0);
  *v1 = v3;
  *(v1 + 4) = 0;
  *(v1 + 8) = v5;
  *(v1 + 12) = 0;
  *(v1 + 16) = v7;
  *(v1 + 20) = 0;
  *(v1 + 24) = v9;
  *(v1 + 28) = 0;
  return result;
}

uint64_t SurroundingText.init(transcript:)(uint64_t *a1)
{
  v6 = v1;
  v8 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v12);
  sub_22BE486EC();
  MEMORY[0x28223BE20](v13);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v14);
  sub_22BE39EE8();
  v15 = sub_22C2709F4();
  v16 = sub_22BE19448(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE19338();
  v19 = *a1;
  v20 = a1[1];

  sub_22C101F78(v19, v20);
  if (v6)
  {
    sub_22BE3F4E0();
  }

  else
  {

    v35 = *(type metadata accessor for ContextProtoSurroundingText(0) + 20);
    sub_22BE3BB64(a1 + v35, v3, &qword_27D9092A0, &unk_22C294AC0);
    v36 = type metadata accessor for ContextProtoBoundingBox(0);
    sub_22BE1AB5C(v3, 1, v36);
    if (v21)
    {
      sub_22BE233E8(v3, &qword_27D9092A0, &unk_22C294AC0);
      v22 = 0;
      v23 = 1;
    }

    else
    {
      v22 = *v3;
      v23 = *(v3 + 4);
      sub_22BE2B930();
      sub_22C1CEAFC();
    }

    sub_22C101EF8(v22 | (v23 << 32));
    sub_22BE3BB64(a1 + v35, v2, &qword_27D9092A0, &unk_22C294AC0);
    v24 = sub_22BE2BA98();
    sub_22BE1AB5C(v24, v25, v36);
    if (v21)
    {
      sub_22BE233E8(v2, &qword_27D9092A0, &unk_22C294AC0);
      v26 = 0;
      v27 = 1;
    }

    else
    {
      v26 = *(v2 + 8);
      v27 = *(v2 + 12);
      sub_22BE2B930();
      sub_22C1CEAFC();
    }

    sub_22C101EF8(v26 | (v27 << 32));
    sub_22BE3BB64(a1 + v35, v5, &qword_27D9092A0, &unk_22C294AC0);
    v28 = sub_22BE3C598();
    sub_22BE1AB5C(v28, v29, v36);
    if (v21)
    {
      sub_22BE233E8(v5, &qword_27D9092A0, &unk_22C294AC0);
      v30 = 0;
      v31 = 1;
    }

    else
    {
      v30 = *(v5 + 16);
      v31 = *(v5 + 20);
      sub_22BE2B930();
      sub_22C1CEAFC();
    }

    sub_22C101EF8(v30 | (v31 << 32));
    sub_22BE3BB64(a1 + v35, v4, &qword_27D9092A0, &unk_22C294AC0);
    sub_22BE1AB5C(v4, 1, v36);
    if (v21)
    {
      sub_22BE233E8(v4, &qword_27D9092A0, &unk_22C294AC0);
      v32 = 0;
      v33 = 1;
    }

    else
    {
      v32 = *(v4 + 24);
      v33 = *(v4 + 28);
      sub_22BE2B930();
      sub_22C1CEAFC();
    }

    sub_22C101EF8(v32 | (v33 << 32));
    sub_22C2709A4();
    sub_22C270E74();
    return sub_22BE3F4E0();
  }
}

void ContextProtoSurroundingText.init(context:)()
{
  sub_22BE19130();
  sub_22BE1B254();
  v4 = sub_22C2709F4();
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  sub_22BE3AC88();
  v8 = sub_22BE5CE4C(&qword_27D9092A0, &unk_22C294AC0);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE35AE8();
  v12 = sub_22C270E84();
  v14 = v13;
  sub_22C270E64();
  ContextProtoBoundingBox.init(context:)();
  if (v2)
  {
    v15 = sub_22C270E94();
    sub_22BE18524(v15);
    (*(v16 + 8))(v1);
  }

  else
  {
    v17 = type metadata accessor for ContextProtoBoundingBox(0);
    sub_22BE187DC();
    v21 = sub_22C18F17C(v18, v19, v20, v17);
    v22 = type metadata accessor for ContextProtoSurroundingText(v21);
    v23 = *(v22 + 20);
    sub_22BE1A140();
    sub_22BE19DC4(v24, v25, v26, v17);
    v27 = v0 + *(v22 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v28 = sub_22C270E94();
    sub_22BE18524(v28);
    (*(v29 + 8))(v1);
    *v0 = v12;
    v0[1] = v14;
    sub_22BE23490(v3, v0 + v23, &qword_27D9092A0, &unk_22C294AC0);
  }

  sub_22BE19650();
  sub_22BE18478();
}

void RetrievedTool.Definition.init(transcript:)()
{
  sub_22BE19130();
  v98 = v1;
  v2 = type metadata accessor for ContextProtoUIControlTool(0);
  v3 = sub_22BE19448(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE193B0(v6, v90);
  MEMORY[0x28223BE20](v7);
  sub_22BE22D7C(v8, v9, v10, v11, v12, v13, v14, v15, v91);
  v95 = sub_22C272634();
  v16 = sub_22BE179D8(v95);
  v93 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v20);
  sub_22C1CECC4(v21, v22, v23, v24, v25, v26, v27, v28, v92);
  MEMORY[0x28223BE20](v29);
  sub_22BE19E94();
  sub_22BE183BC();
  v30 = sub_22C272674();
  v31 = sub_22BE179D8(v30);
  v94 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v35);
  sub_22BE23858();
  MEMORY[0x28223BE20](v36);
  sub_22BE486EC();
  MEMORY[0x28223BE20](v37);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v38);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v39);
  v40 = sub_22BE39EE8();
  v41 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(v40);
  v42 = sub_22BE18000(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BE179EC();
  sub_22C10497C();
  if (v0)
  {
    sub_22BE17E78();
    sub_22C1CEAFC();
  }

  else
  {
    sub_22BE260B8();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v69 = v93[4];
        v70 = sub_22BE33FCC();
        v71(v70);
        v41 = v93[2];
        v72 = sub_22BE3EA80();
        v41(v72);
        v73 = sub_22BE27A44();
        v41(v73);
        sub_22BE35CEC();
        sub_22C272C94();
        v84 = v93[1];
        v85 = sub_22BE1B18C();
        v84(v85);
        sub_22BE17E78();
        sub_22C1CEAFC();
        v86 = sub_22BE196A8();
        v84(v86);
        v83 = MEMORY[0x277D1ECE8];
        break;
      case 2u:
        sub_22BE47DF4();
        v55 = sub_22BE291B0();
        v56(v55);
        sub_22BE36288();
        sub_22BE25300();
        v59(v57, v58);
        v60 = sub_22BE35CEC();
        ToolDefinition.init(transcript:)(v60, v61);
        sub_22BE17E78();
        sub_22C1CEAFC();
        v74 = *(v94 + 8);
        v75 = sub_22BE291B0();
        v76(v75);
        v83 = MEMORY[0x277D1ECD8];
        break;
      case 3u:
        v62 = *(v94 + 32);
        v63 = sub_22BE33FCC();
        v64(v63);
        sub_22C116380();
        v65 = sub_22BE37B20();
        v66(v65);
        v41 = v98;
        v67 = sub_22BE37D44();
        ToolDefinition.init(transcript:)(v67, v68);
        sub_22BE17E78();
        sub_22C1CEAFC();
        v77 = *(v94 + 8);
        v78 = sub_22BE33FCC();
        v79(v78);
        v83 = MEMORY[0x277D1ECD0];
        break;
      case 4u:
        v52 = sub_22BE29264();
        sub_22C1CEB4C(v52, v53, v54);
        sub_22C1CEAA4(v96, v97, type metadata accessor for ContextProtoUIControlTool);
        sub_22BE35CEC();
        UIControlTool.init(transcript:)();
        sub_22BE17E78();
        sub_22C1CEAFC();
        sub_22BE2600C();
        sub_22C1CEAFC();
        v83 = MEMORY[0x277D1ECF8];
        break;
      default:
        v45 = *(v94 + 32);
        v46 = sub_22BE39EAC();
        v47(v46);
        sub_22C116380();
        v48 = sub_22BE1B73C();
        v49(v48);
        v50 = sub_22BE35CEC();
        ToolDefinition.init(transcript:)(v50, v51);
        sub_22BE17E78();
        sub_22C1CEAFC();
        v80 = *(v94 + 8);
        v81 = sub_22BE39EAC();
        v82(v81);
        v83 = MEMORY[0x277D1ECE0];
        break;
    }

    v87 = *v83;
    v88 = sub_22C270B74();
    sub_22BE1834C(v88);
    (*(v89 + 104))(v41, v87);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void UIControlTool.init(transcript:)()
{
  sub_22BE19130();
  v4 = v0;
  v6 = v5;
  v7 = sub_22BE1AEE4();
  v9 = sub_22BE5CE4C(v7, v8);
  v10 = sub_22BE19448(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v13);
  sub_22BE32374();
  v14 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  sub_22BE19448(v14);
  v16 = *(v15 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE19E64();
  v18 = *(type metadata accessor for ContextProtoUIControlTool(0) + 28);
  sub_22BE3BB64(v6 + v18, v3, &qword_27D90C180, &unk_22C296C40);
  sub_22C272674();
  v19 = sub_22BE3C598();
  v22 = sub_22BE1AEA8(v19, v20, v21);
  sub_22BE233E8(v3, &qword_27D90C180, &unk_22C296C40);
  if (v22 == 1)
  {
    sub_22C272224();
    sub_22BE1A140();
    sub_22BE19DC4(v23, v24, v25, v26);
  }

  else
  {
    sub_22BE3BB64(v6 + v18, v2, &qword_27D90C180, &unk_22C296C40);
    sub_22C1CF27C();
    sub_22C0FD2BC();
    v4 = v0;
    if (v0)
    {
      goto LABEL_4;
    }
  }

  sub_22C101F78(*v6, v6[1]);
  if (v4)
  {
    sub_22BE2600C();
    sub_22C1CEAFC();
    sub_22BE233E8(v1, &qword_27D90B2D8, &qword_22C2B5080);
    goto LABEL_8;
  }

  sub_22C101F78(v6[2], v6[3]);
  sub_22C101F78(v6[4], v6[5]);
  sub_22C270C64();
LABEL_4:
  sub_22BE2600C();
  sub_22C1CEAFC();
LABEL_8:
  sub_22BE22978();
  sub_22BE18478();
}

void ContextProtoRetrievedTool.Definition.init(handwritten:)()
{
  sub_22BE19130();
  v168 = v5;
  v164 = v6;
  v7 = sub_22C270C84();
  v8 = sub_22BE179D8(v7);
  v157 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22BE17B98();
  sub_22BE4201C();
  MEMORY[0x28223BE20](v12);
  sub_22BE19E94();
  sub_22BE183BC();
  v13 = sub_22C272CA4();
  v14 = sub_22BE179D8(v13);
  v161 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  v160 = v18;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v19);
  sub_22BE19E94();
  sub_22BE183BC();
  v20 = sub_22C272674();
  v21 = sub_22BE179D8(v20);
  v162 = v22;
  v163 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE17B98();
  v156 = v25;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v26);
  sub_22BE19490();
  sub_22BE1B99C();
  v28 = MEMORY[0x28223BE20](v27);
  sub_22BE22D7C(v28, v29, v30, v31, v32, v33, v34, v35, v152);
  v36 = sub_22C272224();
  v37 = sub_22BE179D8(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BE17B98();
  v155 = v42;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v43);
  sub_22C1CEC9C();
  MEMORY[0x28223BE20](v44);
  sub_22C1CEC88();
  MEMORY[0x28223BE20](v45);
  sub_22BE19490();
  v159 = v46;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v47);
  sub_22BE2937C();
  MEMORY[0x28223BE20](v48);
  sub_22BE1C17C();
  v49 = sub_22C270B74();
  v50 = sub_22BE179D8(v49);
  v52 = v51;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  sub_22BE179EC();
  v55 = sub_22BE3A208();
  v166 = type metadata accessor for ContextProtoRetrievedTool.ContextProtoDefinitionEnum(v55);
  v56 = sub_22BE18000(v166);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v59);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v60);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v61);
  sub_22BE2017C();
  v63 = MEMORY[0x28223BE20](v62);
  sub_22C1CEC08(v63, v64, v65, v66, v67, v68, v69, v70, v153);
  (*(v52 + 16))(v4, v168, v49);
  v71 = *(v52 + 88);
  v72 = sub_22BE33BE8();
  v74 = v73(v72);
  if (v74 == *MEMORY[0x277D1ECE0])
  {
    v75 = sub_22BE3CE68();
    v76(v75);
    sub_22BE47DF4();
    v77 = sub_22BE289D8();
    v78(v77);
    sub_22BE36288();
    v79 = sub_22BE31038();
    v80(v79);
    sub_22C2721F4();
    if (v1)
    {
      v81 = sub_22C1CF094();
      v82(v81);
      v83 = *(v39 + 8);
      v84 = sub_22BE261AC();
      v83(v84);
      v85 = sub_22BE2BA80();
LABEL_4:
      v83(v85);
LABEL_14:
      sub_22BE18478();
      return;
    }

    v106 = *(v39 + 8);
    v107 = sub_22BE261AC();
    v106(v107);
    v108 = sub_22BE2BA80();
    v86 = v52;
    v106(v108);
    (*(v162 + 32))(v2, v167, v163);
    sub_22C1CF2EC();
    swift_storeEnumTagMultiPayload();
    sub_22BE25814();
    v110 = v2;
    goto LABEL_11;
  }

  if (v74 == *MEMORY[0x277D1ECE8])
  {
    v86 = v52;
    v87 = sub_22BE3CE68();
    v88(v87);
    v89 = *(v161 + 32);
    v90 = sub_22BE22DF4();
    v91(v90);
    sub_22C1CF23C();
    v0 = v160;
    v92 = sub_22BE336E8();
    v93(v92);
    sub_22C272C84();
    v94 = *(v161 + 8);
    v95 = sub_22BE1B73C();
    v94(v95);
    v96 = sub_22BE3AF28();
    v94(v96);
    sub_22C1CF2EC();
    swift_storeEnumTagMultiPayload();
LABEL_13:
    sub_22BE1A140();
    v115 = sub_22C18F17C(v112, v113, v114, v0);
    v116 = v164 + *(type metadata accessor for ContextProtoRetrievedTool.Definition(v115) + 20);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v86 + 8))(v168, v49);
    sub_22BE233E8(v164, &qword_27D9090C0, &qword_22C27FCC8);
    sub_22BE25814();
    v117 = sub_22BE291B0();
    sub_22C1CEB4C(v117, v118, v119);
    sub_22BE187DC();
    sub_22BE19DC4(v120, v121, v122, v0);
    goto LABEL_14;
  }

  if (v74 == *MEMORY[0x277D1ECD8])
  {
    v97 = sub_22BE3CE68();
    v98(v97);
    sub_22BE47DF4();
    v99 = v36;
    v100();
    sub_22BE36288();
    v0 = v158;
    v101 = sub_22BE261AC();
    v102(v101);
    sub_22C2721F4();
    if (v1)
    {
      v103 = sub_22C1CF094();
      v104(v103);
      v83 = *(v39 + 8);
      v105 = sub_22BE31038();
      v83(v105);
      v85 = sub_22BE37B20();
      goto LABEL_4;
    }

    v86 = v52;
    v142 = *(v39 + 8);
    v143 = sub_22BE31038();
    v142(v143);
    (v142)(v159, v99);
    v144 = *(v162 + 32);
    v145 = sub_22BE1AB1C();
    v146(v145);
    sub_22C1CF2EC();
    swift_storeEnumTagMultiPayload();
    sub_22BE25814();
    v110 = v3;
    goto LABEL_11;
  }

  if (v74 == *MEMORY[0x277D1ECD0])
  {
    v123 = sub_22BE3CE68();
    v124(v123);
    sub_22BE47DF4();
    v125 = sub_22BE22DF4();
    v126 = v36;
    v127(v125);
    sub_22BE36288();
    v0 = v155;
    v128 = sub_22BE336E8();
    v129(v128);
    sub_22C2721F4();
    if (v1)
    {
      v130 = sub_22C1CF094();
      v131(v130);
      v83 = *(v39 + 8);
      v132 = sub_22BE27A44();
      v83(v132);
      v85 = sub_22BE29454();
      goto LABEL_4;
    }

    v86 = v52;
    v147 = *(v39 + 8);
    v147(v155, v126);
    v148 = sub_22BE29454();
    (v147)(v148);
    (*(v162 + 32))(v154, v156, v163);
    sub_22C1CF2EC();
    swift_storeEnumTagMultiPayload();
    sub_22BE25814();
    v110 = v154;
LABEL_11:
    v111 = v165;
LABEL_12:
    sub_22C1CEB4C(v110, v111, v109);
    goto LABEL_13;
  }

  if (v74 == *MEMORY[0x277D1ECF8])
  {
    v86 = v52;
    v133 = sub_22BE3CE68();
    v134(v133);
    sub_22BE47DF4();
    v135 = sub_22BE289D8();
    v136(v135);
    sub_22BE36288();
    v137 = sub_22BE31038();
    v138(v137);
    sub_22C1CF2A0();
    ContextProtoUIControlTool.init(handwritten:)();
    v111 = v165;
    v0 = v166;
    if (v1)
    {
      (*(v52 + 8))(v168, v49);
      v139 = *(v157 + 8);
      v140 = sub_22BE33FCC();
      v141(v140);
      goto LABEL_14;
    }

    v149 = *(v157 + 8);
    v150 = sub_22BE33FCC();
    v151(v150);
    sub_22BE431C0();
    swift_storeEnumTagMultiPayload();
    sub_22BE25814();
    v110 = v2;
    goto LABEL_12;
  }

  sub_22C274004();
  __break(1u);
}

void ContextProtoUIControlTool.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE460C8();
  v5 = sub_22BE5CE4C(&qword_27D90B2D8, &qword_22C2B5080);
  sub_22BE19448(v5);
  v7 = *(v6 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE2C64C();
  v9 = sub_22BE5CE4C(&qword_27D90C180, &unk_22C296C40);
  sub_22BE19448(v9);
  v11 = *(v10 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A8B4();
  v13 = sub_22C270C34();
  v15 = v14;
  v42 = sub_22C270C44();
  v17 = v16;
  v40 = sub_22C270C74();
  v19 = v18;
  sub_22C270C54();
  sub_22C1058C4(v4, v20, v21, v22, v23, v24, v25, v26, v38, v40);
  if (v2)
  {
    v27 = sub_22C270C84();
    sub_22BE18524(v27);
    (*(v28 + 8))(v1);
  }

  else
  {
    v29 = type metadata accessor for ContextProtoUIControlTool(0);
    v39 = v13;
    v30 = *(v29 + 28);
    sub_22C272674();
    sub_22BE1A140();
    sub_22BE19DC4(v31, v32, v33, v34);
    v35 = v0 + *(v29 + 32);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v36 = sub_22C270C84();
    sub_22BE18524(v36);
    (*(v37 + 8))(v1);
    *v0 = v39;
    v0[1] = v15;
    v0[2] = v42;
    v0[3] = v17;
    v0[4] = v41;
    v0[5] = v19;
    sub_22BE23490(v3, v0 + v30, &qword_27D90C180, &unk_22C296C40);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t ContextProtoToolQueryOutput.init(handwritten:)()
{
  sub_22BE1B254();
  v2 = sub_22C270B74();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE22DB8();
  v8 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25CD0();
  v12 = *(v5 + 16);
  v13 = sub_22BE35838();
  v14(v13);
  ContextProtoRetrievedTool.Definition.init(handwritten:)();
  if (v1)
  {
    return sub_22C1CEF3C();
  }

  v16 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  sub_22BE187DC();
  sub_22BE19DC4(v17, v18, v19, v16);
  sub_22BE1A140();
  v23 = sub_22C18F17C(v20, v21, v22, v16);
  v24 = v0 + *(type metadata accessor for ContextProtoToolQueryOutput(v23) + 20);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C1CEF3C();
  v25 = sub_22BE200D4();
  return sub_22BE23490(v25, v26, v27, v28);
}

uint64_t RetrievedTool.Stage.init(transcript:)(char *a1)
{
  sub_22BE367EC(a1);
  v1 = sub_22C270BC4();
  sub_22BE1834C(v1);
  v3 = *(v2 + 104);
  v4 = sub_22BE27C4C();
  return v5(v4);
}

uint64_t StructuredContext.SiriRequestContext.User.Classification.init(transcript:)(char *a1)
{
  sub_22BE367EC(a1);
  v1 = sub_22C2711F4();
  sub_22BE1834C(v1);
  v3 = *(v2 + 104);
  v4 = sub_22BE27C4C();
  return v5(v4);
}

uint64_t StructuredContext.SiriRequestContext.DeviceIdiom.init(transcript:)(char *a1)
{
  sub_22BE367EC(a1);
  v1 = sub_22C271074();
  sub_22BE1834C(v1);
  v3 = *(v2 + 104);
  v4 = sub_22BE27C4C();
  return v5(v4);
}

void RetrievedTool.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE3F494();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  sub_22C1CEFB0(v28);
  v107 = sub_22C270BC4();
  v29 = sub_22BE179D8(v107);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  sub_22BE190A8(v33);
  v121 = sub_22BE5CE4C(&qword_27D915470, &qword_22C2CB808);
  v34 = sub_22BE18000(v121);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE17B98();
  v112 = v37;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v38);
  sub_22BE409D8();
  MEMORY[0x28223BE20](v39);
  sub_22C1CEC74(v40, v41, v42, v43, v44, v45, v46, v47, v105);
  v48 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  v49 = sub_22BE19448(v48);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BE17A44();
  sub_22BE18950(v52);
  v53 = sub_22C270B74();
  v54 = sub_22BE19448(v53);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22BE17A44();
  sub_22BE18950(v57);
  v58 = sub_22C270C14();
  v59 = sub_22BE179D8(v58);
  v109 = v60;
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v59);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v63);
  sub_22BE23858();
  MEMORY[0x28223BE20](v64);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v65);
  sub_22C1CEC88();
  MEMORY[0x28223BE20](v66);
  sub_22BE19490();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v67);
  sub_22BE32374();
  sub_22BE28ECC();
  sub_22C1CE8AC(v68, v69);
  v119 = v58;
  sub_22C2742B4();
  v108 = v27;
  v70 = *(v27 + 3);
  v71 = *(v70 + 16);
  if (v71)
  {
    v72 = (v70 + 32);
    v73 = (v109 + 16);
    v116 = (v109 + 8);
    v117 = v22;
    v120 = v23;
    v115 = v21;
    do
    {
      if (*v72)
      {
        sub_22C270C04();
        v74 = *v73;
        v75 = sub_22BE23108();
        v113 = v76;
        (v76)(v75);
        sub_22BE46174();
        sub_22C1CE8AC(&qword_27D915480, v73);
        sub_22BE3D5BC();
        sub_22C273984();
        sub_22BE32DB8();
        sub_22C1CE8AC(&qword_27D915488, v73);
        sub_22BE36658();
        sub_22C272FD4();
        sub_22C1CF1B4();
        *v112 = v77;
        v78 = *v116;
        if (v79)
        {
          (v78)(v21, v58);
          sub_22BE3C6BC();
          v113();
          sub_22BE3C6BC();
          v113();
          sub_22C273994();
          v90 = sub_22BE2BA80();
          v78(v90);
          v21 = v115;
        }

        else
        {
          v80 = sub_22BE2BA80();
          v78(v80);
          sub_22C108D54();
          v81(&v112[v58], v21, v58);
        }

        sub_22BEF88B8(v112, v118, &qword_27D915470, &qword_22C2CB808);
        v91 = sub_22C1CF228();
        v78(v91);
        v23 = v120;
        v22 = v117;
      }

      else
      {
        sub_22C270BF4();
        v82 = *v73;
        v83 = sub_22BE23108();
        v114 = v84;
        (v84)(v83);
        sub_22BE46174();
        sub_22C1CE8AC(&qword_27D915480, v73);
        sub_22BE2BA80();
        sub_22C273984();
        sub_22BE32DB8();
        sub_22C1CE8AC(&qword_27D915488, v73);
        sub_22BE3EA80();
        sub_22C272FD4();
        sub_22C1CF1B4();
        *v111 = v85;
        v86 = *v116;
        if (v87)
        {
          v92 = sub_22BE36318();
          v86(v92);
          sub_22BE3C6BC();
          v114();
          v22 = v117;
          sub_22BE3C6BC();
          v114();
          sub_22C273994();
          v93 = sub_22BE2BA80();
          v86(v93);
        }

        else
        {
          v88 = sub_22BE2BA80();
          v86(v88);
          sub_22C108D54();
          v89(&v111[v58], v110, v58);
          v22 = v117;
        }

        sub_22BEF88B8(v111, v118, &qword_27D915470, &qword_22C2CB808);
        v94 = sub_22C1CF228();
        v86(v94);
        v23 = v120;
        v21 = v115;
      }

      ++v72;
      --v71;
      v73 = (v109 + 16);
    }

    while (v71);
  }

  v95 = v108 + *(type metadata accessor for ContextProtoRetrievedTool(0) + 32);
  sub_22C1CF2A0();
  sub_22C1025DC();
  if (!v20)
  {
    sub_22C1CF148();
    sub_22BE3E778();
    RetrievedTool.Definition.init(transcript:)();
    v96 = *v108;
    v97 = *(v108 + 1);

    sub_22C0FAC80(v98);
    sub_22BE236D4(&a14);
    (*(v99 + 104))(v106, **(&unk_278725BD0 + *(v108 + 16)), v107);
    v100 = *(v22 + 32);
    v101 = sub_22BE1AEE4();
    v102(v101);
    sub_22BE29400();
    v103 = sub_22BE261AC();
    v104(v103);
    sub_22BE3974C();
    sub_22C270B84();
  }

  sub_22BE379D8();
  sub_22C1CEAFC();
  (*(v109 + 8))(v23, v119);
  sub_22BE22978();
  sub_22BE3CAD8();
}

uint64_t ToolQuery.Output.init(transcript:)()
{
  v3 = sub_22BE1B254();
  v4 = type metadata accessor for ContextProtoRetrievedTool.Definition(v3);
  v5 = sub_22BE19448(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE19338();
  v8 = sub_22C270B74();
  v9 = sub_22BE179D8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  sub_22BE22DB8();
  sub_22C1025DC();
  if (v1)
  {
    return sub_22BE425AC();
  }

  RetrievedTool.Definition.init(transcript:)();
  sub_22BE425AC();
  return (*(v11 + 32))(v0, v2, v8);
}

void ContextProtoRetrievedTool.Stage.init(handwritten:)()
{
  sub_22BE4111C();
  v0 = sub_22C270BC4();
  v1 = sub_22BE179D8(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = sub_22BE18B58(v4, v12);
  v6(v5);
  v7 = sub_22C1CEBF4();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x277D1ED28] || v9 == *MEMORY[0x277D1ED30] || v9 == *MEMORY[0x277D1ED40] || v9 == *MEMORY[0x277D1ED38])
  {
    v10 = sub_22BE2942C();
    v11(v10);
    sub_22BE25CC0();
  }

  else
  {
    sub_22BE3FFAC();
    __break(1u);
  }
}

void ContextProtoRetrievedTool.init(handwritten:)()
{
  sub_22BE3F494();
  v3 = v2;
  v82 = v4;
  v81 = sub_22C270BC4();
  v5 = sub_22BE179D8(v81);
  v84 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  sub_22BE3E334();
  v10 = MEMORY[0x28223BE20](v9);
  sub_22C1CEC08(v10, v11, v12, v13, v14, v15, v16, v17, v79);
  v18 = sub_22C270B74();
  v19 = sub_22BE19448(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22BE17A44();
  sub_22BE3BF90(v22);
  v23 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
  sub_22BE19448(v23);
  v25 = *(v24 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v26);
  sub_22BE1A174();
  v85 = v27;
  sub_22BE183BC();
  v28 = sub_22C270C14();
  v29 = sub_22BE179D8(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v34);
  sub_22BE1C17C();
  sub_22C270BE4();
  sub_22C270BF4();
  sub_22BE28ECC();
  sub_22C1CE8AC(v35, v36);
  v37 = sub_22C1CF30C();
  v38 = *(v31 + 8);
  v39 = sub_22BE3CC34();
  v38(v39);
  (v38)(v1, v28);
  if (v37)
  {
    v80 = v3;
    sub_22BE66A18();
    v41 = v40;
    v43 = *(v40 + 16);
    v42 = *(v40 + 24);
    if (v43 >= v42 >> 1)
    {
      sub_22BE1AAE4(v42);
      sub_22BE66A18();
      v41 = v75;
    }

    *(v41 + 16) = v43 + 1;
    *(v41 + v43 + 32) = 0;
    v3 = v80;
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  sub_22C270BE4();
  sub_22C270C04();
  v44 = sub_22C1CF30C();
  v45 = sub_22BE3CC34();
  v38(v45);
  (v38)(v1, v28);
  if (v44)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = *(v41 + 16);
      sub_22BE66A18();
      v41 = v77;
    }

    v47 = *(v41 + 16);
    v46 = *(v41 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_22BE1AAE4(v46);
      sub_22BE31778();
      sub_22BE66A18();
      v41 = v78;
    }

    *(v41 + 16) = v47 + 1;
    *(v41 + v47 + 32) = 1;
  }

  sub_22C270B94();
  ContextProtoRetrievedTool.Definition.init(handwritten:)();
  if (v0)
  {
    v48 = sub_22C270C24();
    sub_22BE18524(v48);
    (*(v49 + 8))(v3);

LABEL_22:
    sub_22BE3CAD8();
    return;
  }

  v50 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
  sub_22BE187DC();
  sub_22BE19DC4(v51, v52, v53, v50);
  sub_22C270BA4();
  v55 = v54;
  v56 = sub_22C270BB4();
  sub_22C1C05C8(v56);
  v58 = v57;
  sub_22C270BD4();
  v59 = *(v84 + 16);
  v60 = sub_22BE18240();
  v61(v60);
  v62 = *(v84 + 88);
  v63 = sub_22BE35838();
  v65 = v64(v63);
  v66 = 0;
  if (v65 == *MEMORY[0x277D1ED28])
  {
LABEL_21:
    (*(v84 + 8))(v83, v81);
    v67 = type metadata accessor for ContextProtoRetrievedTool(0);
    v68 = *(v67 + 32);
    sub_22BE1A140();
    sub_22BE19DC4(v69, v70, v71, v50);
    v72 = v82 + *(v67 + 36);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v73 = sub_22C270C24();
    sub_22BE18524(v73);
    (*(v74 + 8))(v3);
    sub_22BE23490(v85, v82 + v68, &qword_27D9090D0, &unk_22C294B30);
    *v82 = v55;
    *(v82 + 8) = v58;
    *(v82 + 16) = v66;
    *(v82 + 24) = v41;
    goto LABEL_22;
  }

  if (v65 == *MEMORY[0x277D1ED30])
  {
    v66 = 1;
    goto LABEL_21;
  }

  if (v65 == *MEMORY[0x277D1ED40])
  {
    v66 = 2;
    goto LABEL_21;
  }

  if (v65 == *MEMORY[0x277D1ED38])
  {
    v66 = 3;
    goto LABEL_21;
  }

  sub_22C274004();
  __break(1u);
}

void sub_22C1BEC10()
{
  sub_22BE19130();
  v2 = v0;
  v4 = v3;
  v5 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v6 = sub_22BE19448(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  v123 = v9;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E94();
  v11 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE17B98();
  v131 = v15;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E94();
  v125 = v17;
  v18 = sub_22BE183BC();
  v19 = type metadata accessor for ContextProtoSpanMatchedEntity(v18);
  v126 = sub_22BE179D8(v19);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v126);
  sub_22BE17B98();
  v119 = v22;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v23);
  sub_22BE19E94();
  v112 = v24;
  sub_22BE183BC();
  v25 = sub_22C270FD4();
  v26 = sub_22BE179D8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE18928();
  MEMORY[0x28223BE20](v31);
  sub_22BE19490();
  v132 = v32;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v33);
  sub_22C1CEBCC();
  MEMORY[0x28223BE20](v34);
  sub_22BE19E94();
  sub_22BE38A28(v35);
  v36 = *(v4 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22C1CF078();
  sub_22BE7038C(v37, v38, v39);
  sub_22C1CF050();
  v127 = v25;
  v128 = v4;
  v130 = v28;
  v124 = v36;
  if (v36)
  {
    v40 = 0;
    v120 = v4 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v121 = (v28 + 8);
    v122 = *(v4 + 16);
    v115 = v1;
    while (v122 != v40)
    {
      if (v40 >= *(v4 + 16))
      {
        goto LABEL_22;
      }

      v41 = *(v28 + 16);
      v41(v132, v120 + *(v28 + 72) * v40, v25);
      v41(v1, v132, v25);
      sub_22C270FB4();
      v0 = v2;
      sub_22C105684(v123, v42, v43, v44, v45, v46, v47, v48, v112, v115);
      if (v2)
      {
        v109 = *v121;
        v110 = sub_22BE33B3C();
        v109(v110);

        (v109)(v132, v25);
        goto LABEL_19;
      }

      v49 = sub_22C270FC4();
      sub_22C1C4190(v49, v50, v51, v52, v53, v54, v55, v56, v113, v116);
      v58 = v57;
      v59 = *(v126 + 20);
      sub_22C272594();
      v60 = v119;
      sub_22BE1A140();
      sub_22BE19DC4(v61, v62, v63, v64);
      v65 = v119 + *(v126 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v66 = *v121;
      (*v121)(v1, v25);
      sub_22BE23490(v131, v119 + v59, &qword_27D909128, &qword_22C294AA0);
      *v119 = v58;
      (v66)(v132, v25);
      v68 = *(v134 + 16);
      v67 = *(v134 + 24);
      if (v68 >= v67 >> 1)
      {
        v72 = sub_22BE3D1E4(v67);
        sub_22BE7038C(v72, v68 + 1, 1);
        v60 = v119;
        sub_22C1CF050();
      }

      ++v40;
      *(v134 + 16) = v68 + 1;
      sub_22BE25AD8();
      sub_22BE3C5C0(v69);
      sub_22C1CEB4C(v60, v70, v71);
      v25 = v127;
      v4 = v128;
      v28 = v130;
      v1 = v115;
      if (v124 == v40)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_9:
    v133 = (v28 + 8);
    for (i = v124; ; ++i)
    {
      v74 = *(v4 + 16);
      if (i == v74)
      {

        goto LABEL_20;
      }

      if (i >= v74)
      {
        goto LABEL_23;
      }

      sub_22BE25AD8();
      sub_22BE46DDC(v4 + v75);
      v77 = *(v76 + 16);
      v77();
      sub_22BE39EA0();
      v77();
      sub_22C270FB4();
      v78 = sub_22C1CF27C();
      sub_22C105684(v78, v79, v80, v81, v82, v83, v84, v85, v112, v115);
      if (v0)
      {
        break;
      }

      v86 = sub_22C270FC4();
      sub_22C1C4190(v86, v87, v88, v89, v90, v91, v92, v93, v114, v117);
      v95 = v94;
      v96 = *(v126 + 20);
      sub_22C272594();
      sub_22BE1A140();
      sub_22BE19DC4(v97, v98, v99, v100);
      v101 = v112 + *(v126 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v102 = *v133;
      (*v133)(v118, v25);
      sub_22BE23490(v125, v112 + v96, &qword_27D909128, &qword_22C294AA0);
      *v112 = v95;
      v102(v129, v25);
      v104 = *(v134 + 16);
      v103 = *(v134 + 24);
      if (v104 >= v103 >> 1)
      {
        v108 = sub_22BE3D1E4(v103);
        sub_22BE7038C(v108, v104 + 1, 1);
        sub_22C1CF050();
      }

      *(v134 + 16) = v104 + 1;
      sub_22BE25AD8();
      sub_22BE3C5C0(v105);
      sub_22C1CEB4C(v112, v106, v107);
      v25 = v127;
      v4 = v128;
    }

    v111 = sub_22C1CF05C();
    (v77)(v111);

    (v77)(v129, v25);
LABEL_19:

LABEL_20:
    sub_22BE22978();
    sub_22BE18478();
  }
}

void sub_22C1BF26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = sub_22BE25D84();
  v15 = type metadata accessor for ContextProtoRetrievedTool(v14);
  v16 = sub_22BE17A18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE193B0(v19, v75);
  v21 = MEMORY[0x28223BE20](v20);
  sub_22BE22D7C(v21, v22, v23, v24, v25, v26, v27, v28, v76);
  v29 = sub_22C270C24();
  v30 = sub_22BE179D8(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v35);
  sub_22BE25ED0();
  v37 = MEMORY[0x28223BE20](v36);
  sub_22BE23730(v37, v38, v39, v40, v41, v42, v43, v44, v77);
  MEMORY[0x28223BE20](v45);
  sub_22BE26800();
  v46 = *(v13 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE2C294();
  sub_22BE703E4(v47, v48, v49);
  sub_22BE3E47C();
  if (v46)
  {
    sub_22BE1C3D4();
    while (1)
    {
      sub_22C1CF13C();
      if (v50)
      {
        break;
      }

      sub_22BE39418();
      if (v61)
      {
        goto LABEL_22;
      }

      v51 = sub_22BE25BB8();
      v32(v51);
      v52 = sub_22C1CEC40();
      v32(v52);
      sub_22BE23360();
      ContextProtoRetrievedTool.init(handwritten:)();
      if (v11)
      {
LABEL_17:

        v73 = sub_22BE203E8();
        v74(v73);

LABEL_19:
        sub_22C1CED0C();
        sub_22BE18478();
        return;
      }

      v53 = sub_22BE2902C();
      v54(v53);
      sub_22BE1B698();
      if (v61)
      {
        sub_22BE3D1E4(v55);
        sub_22C1CF178();
        sub_22BE703E4(v58, v59, v60);
        v10 = a10;
      }

      v12 = (v12 + 1);
      *(v10 + 16) = v13;
      sub_22BE197A0();
      sub_22BE37B68();
      sub_22C1CEB4C(v79, v56, v57);
      sub_22BE323D0();
      v32 = v78;
      if (v50)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    sub_22BE40C98();
    while (1)
    {
      sub_22BE447AC();
      if (v50)
      {

        goto LABEL_19;
      }

      if (v61)
      {
        break;
      }

      v62 = sub_22BE1A084();
      v12(v62);
      v63 = sub_22C1CEC40();
      v12(v63);
      sub_22C1CF124();
      ContextProtoRetrievedTool.init(handwritten:)();
      if (v11)
      {
        goto LABEL_17;
      }

      v64 = sub_22BE203E8();
      v65(v64);
      sub_22C1CEC50();
      if (v61)
      {
        v70 = sub_22BE19808(v66);
        sub_22BE703E4(v70, v71, v72);
        v10 = a10;
      }

      *(v10 + 16) = v12;
      sub_22BE197A0();
      sub_22BE37B68();
      sub_22C1CEB4C(v67, v68, v69);
      sub_22BE27AB8();
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_22C1BF534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = v13;
  v106 = sub_22C270B74();
  v15 = sub_22BE179D8(v106);
  v95 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v19);
  sub_22BE19E94();
  v100 = v20;
  v21 = sub_22BE5CE4C(&qword_27D9090D0, &unk_22C294B30);
  v22 = sub_22BE19448(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v25);
  sub_22BE32374();
  Output = type metadata accessor for ContextProtoToolQueryOutput(0);
  v105 = sub_22BE179D8(Output);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v105);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v29);
  sub_22BE19E94();
  v99 = v30;
  sub_22BE183BC();
  v31 = type metadata accessor for ToolQuery.Output();
  v32 = sub_22BE17A18(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  sub_22BE183AC();
  sub_22BE2351C();
  MEMORY[0x28223BE20](v37);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v38);
  sub_22BE255B8();
  MEMORY[0x28223BE20](v39);
  sub_22BE19E94();
  sub_22BEC03A4(v40);
  v41 = *(v14 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE34198();
  sub_22BE7043C(v42, v43, v44);
  v103 = v14;
  v104 = v34;
  if (v41)
  {
    v97 = v10;
    v45 = v14;
    v46 = 0;
    v98 = *(v45 + 16);
    v47 = *(v34 + 80);
    sub_22BE19E14();
    v96 = v49 + v48;
    v50 = v95;
    while (v98 != v46)
    {
      if (v46 >= *(v103 + 16))
      {
        goto LABEL_23;
      }

      sub_22C1CEAA4(v96 + *(v34 + 72) * v46, v97, type metadata accessor for ToolQuery.Output);
      v51 = sub_22BE3EA80();
      sub_22C1CEAA4(v51, v52, type metadata accessor for ToolQuery.Output);
      sub_22C108D54();
      v53 = sub_22BE1AEE4();
      v54(v53);
      ContextProtoRetrievedTool.Definition.init(handwritten:)();
      if (v11)
      {
LABEL_19:

        sub_22C1CEAFC();
        sub_22BE25C08();
        sub_22C1CEAFC();

LABEL_20:
        sub_22BE29F1C();
        sub_22BE18478();
        return;
      }

      v55 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
      sub_22BE187DC();
      sub_22BE19DC4(v56, v57, v58, v55);
      sub_22BE1A140();
      sub_22BE19DC4(v59, v60, v61, v55);
      v62 = v12 + *(v105 + 20);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22C1CEAFC();
      sub_22BE23108();
      sub_22C1CEAFC();
      v63 = sub_22BE196A8();
      sub_22BE23490(v63, v64, &qword_27D9090D0, &unk_22C294B30);
      v66 = *(a10 + 16);
      v65 = *(a10 + 24);
      if (v66 >= v65 >> 1)
      {
        v70 = sub_22BE3D1E4(v65);
        sub_22BE7043C(v70, v66 + 1, 1);
      }

      ++v46;
      *(a10 + 16) = v66 + 1;
      sub_22BE197A0();
      sub_22C1CEF64(v69, v67 + v68 * v66);
      v34 = v104;
      if (v41 == v46)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v50 = v95;
LABEL_11:
    v71 = v101;
    while (1)
    {
      sub_22BE39418();
      if (v73)
      {

        goto LABEL_20;
      }

      if (v72)
      {
        break;
      }

      v74 = *(v34 + 80);
      sub_22C1CEC64();
      sub_22C1CEAA4(v75 + *(v34 + 72) * v41, v71, type metadata accessor for ToolQuery.Output);
      v76 = sub_22BE1AB1C();
      sub_22C1CEAA4(v76, v77, type metadata accessor for ToolQuery.Output);
      (*(v50 + 16))(v100, v102, v106);
      ContextProtoRetrievedTool.Definition.init(handwritten:)();
      if (v11)
      {
        goto LABEL_19;
      }

      v78 = type metadata accessor for ContextProtoRetrievedTool.Definition(0);
      v79 = sub_22BE360A0();
      sub_22BE19DC4(v79, v80, v81, v78);
      sub_22BE28D2C();
      sub_22BE19DC4(v82, v83, v84, v85);
      v86 = v99 + *(v105 + 20);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v71 = v101;
      sub_22C1CEAFC();
      sub_22BE1B18C();
      sub_22C1CEAFC();
      v87 = sub_22BF6AC14();
      sub_22BE23490(v87, v88, &qword_27D9090D0, &unk_22C294B30);
      v90 = *(a10 + 16);
      v89 = *(a10 + 24);
      if (v90 >= v89 >> 1)
      {
        v94 = sub_22BE3D1E4(v89);
        sub_22BE7043C(v94, v90 + 1, 1);
      }

      *(a10 + 16) = v90 + 1;
      sub_22BE197A0();
      sub_22C1CEF64(v93, v91 + v92 * v90);
      ++v41;
      v34 = v104;
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_22C1BFAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v10;
  v14 = v13;
  v235 = type metadata accessor for TranscriptProtoProgramStatement.ExecutionSupportType(0);
  v15 = sub_22BE18000(v235);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v18);
  sub_22BE19E94();
  sub_22BE190A8(v19);
  v20 = sub_22BE5CE4C(&qword_27D90F098, &unk_22C2AE7E0);
  v21 = sub_22BE19448(v20);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v24);
  sub_22BE19E94();
  v26 = sub_22BE18950(v25);
  v27 = type metadata accessor for Expression(v26);
  v28 = sub_22BE19448(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v31);
  sub_22BE19E94();
  sub_22BE190A8(v32);
  v33 = sub_22BE5CE4C(&qword_27D90F0A8, &qword_22C2B5B70);
  v34 = sub_22BE19448(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE17B98();
  v222 = v37;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v38);
  sub_22BE19E94();
  v233 = v39;
  sub_22BE183BC();
  v230 = sub_22C26E684();
  v40 = sub_22BE179D8(v230);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17A44();
  v229 = v45;
  v46 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v47 = sub_22BE19448(v46);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE17B98();
  v226 = v50;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v51);
  sub_22BE19E94();
  v234 = v52;
  v53 = sub_22BE183BC();
  v54 = type metadata accessor for TranscriptProtoProgramStatement(v53);
  v225 = sub_22BE179D8(v54);
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v225);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v57);
  sub_22BE19E94();
  v59 = sub_22BE18950(v58);
  v60 = type metadata accessor for ProgramStatement(v59);
  v61 = sub_22BE179D8(v60);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22BE17B98();
  v220 = v66;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v67);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v68);
  sub_22BE255B8();
  MEMORY[0x28223BE20](v69);
  sub_22BE19E94();
  sub_22BE190A8(v70);
  v71 = *(v14 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE34198();
  sub_22BE70494(v72, v73, v74);
  v75 = a10;
  v231 = v14;
  v228 = v60;
  v224 = v63;
  if (v71)
  {
    v76 = 0;
    v77 = *(v63 + 80);
    sub_22BE19E14();
    v202 = v14 + v78;
    v204 = *(v14 + 16);
    v201 = v42 + 16;
    v200 = v42 + 8;
    v236 = v71;
    v199 = v42;
    v203 = v11;
    while (1)
    {
      sub_22C1CF130();
      if (v79 == v76)
      {
        break;
      }

      if (v76 >= *(v14 + 16))
      {
        goto LABEL_27;
      }

      v238 = v75;
      v80 = *(v63 + 72);
      v218 = v76;
      sub_22BE426A4();
      sub_22C1CEAA4(v81, v11, v82);
      v239 = v12;
      sub_22C1CEAA4(v11, v220, v63);
      sub_22BE33554(&v239);
      v83(v229, v220, v230);
      v84 = sub_22C26E674();
      v85 = sub_22C26E654();
      v87 = v86;
      v88 = type metadata accessor for TranscriptProtoStatementID(0);
      v89 = v226 + *(v88 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE33554(&v238);
      v90 = sub_22BE33BE8();
      v91(v90);
      *v226 = v84;
      *(v226 + 8) = v85;
      *(v226 + 16) = v87;
      sub_22BE187DC();
      sub_22BE19DC4(v92, v93, v94, v88);
      v95 = v60[5];
      sub_22C1CEECC();
      sub_22C1CEAA4(v220 + v96, v206, v97);
      v98 = v239;
      TranscriptProtoExpression.init(handwritten:)(v206, v99, v100, v101, v102, v103, v104, v105, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);
      if (v98)
      {
        v196 = v226;
LABEL_23:
        sub_22BE1B13C();
        sub_22C1CEAFC();
        sub_22BE233E8(v196, &qword_27D9090F8, &unk_22C2AE4A0);

        sub_22C1CEAFC();

LABEL_24:
        sub_22BE18478();
        return;
      }

      v239 = 0;
      v106 = type metadata accessor for TranscriptProtoExpression(0);
      v107 = 1;
      sub_22BE187DC();
      sub_22BE19DC4(v108, v109, v110, v106);
      v217 = *(v220 + v60[6]);
      v111 = v220 + v60[8];
      v214 = *v111;
      v215 = *(v220 + v60[7]);
      v213 = *(v111 + 4);
      v112 = *(v220 + v60[9]);
      if (v112 != 2)
      {
        *v197 = 2;
        v113 = &v197[*(v235 + 20)];
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        *v197 = v112 & 1;
        sub_22BE29210();
        sub_22C1CEB4C(v197, v210, v114);
        v107 = 0;
      }

      sub_22BE19DC4(v210, v107, 1, v235);
      sub_22BE1A140();
      sub_22BE19DC4(v115, v116, v117, v88);
      v118 = v225[5];
      sub_22BE1A140();
      sub_22BE19DC4(v119, v120, v121, v106);
      v122 = v225[7];
      sub_22BE417A8(v225[6]);
      v123 = v225[9];
      v124 = v205 + v225[8];
      sub_22BE1A140();
      sub_22BE19DC4(v125, v126, v127, v235);
      v128 = v205 + v225[10];
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1B13C();
      sub_22C1CEAFC();
      sub_22BE23490(v226, v205, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE23490(v222, v205 + v118, &qword_27D90F0A8, &qword_22C2B5B70);
      *(v205 + v212) = v217;
      *(v205 + v122) = v215;
      *v124 = v214;
      *(v124 + 4) = v213;
      sub_22BE23490(v210, v205 + v123, &qword_27D90F098, &unk_22C2AE7E0);
      v11 = v203;
      sub_22BE200D4();
      sub_22C1CEAFC();
      v75 = v238;
      a10 = v238;
      v130 = *(v238 + 16);
      v129 = *(v238 + 24);
      if (v130 >= v129 >> 1)
      {
        sub_22BE3D1E4(v129);
        sub_22BE31778();
        sub_22BE70494(v133, v134, v135);
        v75 = a10;
      }

      v76 = v218 + 1;
      *(v75 + 16) = v130 + 1;
      sub_22BE197A0();
      sub_22C1CEEB4();
      sub_22C1CEB4C(v205, v131, v132);
      v71 = v236;
      v12 = v239;
      v14 = v231;
      v63 = v224;
      v42 = v199;
      if (v236 == v218 + 1)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v216 = (v42 + 8);
    v136 = v209;
    while (1)
    {
      v137 = *(v14 + 16);
      if (v71 == v137)
      {

        goto LABEL_24;
      }

      if (v71 >= v137)
      {
        break;
      }

      v237 = v71;
      v238 = v75;
      v138 = *(v63 + 80);
      sub_22BE19E14();
      v139 = *(v63 + 72);
      sub_22BE426A4();
      sub_22C1CEAA4(v140, v136, v141);
      sub_22C1CEAA4(v136, v232, v63);
      sub_22C1CF1E8();
      v142 = sub_22BE336E8();
      v239 = v12;
      v143(v142);
      v144 = sub_22C26E674();
      v145 = sub_22C26E654();
      v146 = sub_22C1CF35C();
      v147 = v234 + *(v146 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v148 = *v216;
      v149 = sub_22BE31038();
      v150(v149);
      *v234 = v144;
      *(v234 + 8) = v145;
      *(v234 + 16) = v12;
      sub_22BE187DC();
      sub_22BE19DC4(v151, v152, v153, v146);
      v154 = v228[5];
      sub_22C1CEECC();
      sub_22C1CEAA4(v232 + v155, v208, v156);
      v157 = v239;
      TranscriptProtoExpression.init(handwritten:)(v208, v158, v159, v160, v161, v162, v163, v164, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207, v208);
      if (v157)
      {
        v196 = v234;
        goto LABEL_23;
      }

      v239 = 0;
      v165 = type metadata accessor for TranscriptProtoExpression(0);
      v166 = 1;
      sub_22BE187DC();
      sub_22BE19DC4(v167, v168, v169, v165);
      v227 = *(v232 + v228[6]);
      v223 = *(v232 + v228[7]);
      v170 = v232 + v228[8];
      v221 = *v170;
      v219 = *(v170 + 4);
      v171 = *(v232 + v228[9]);
      if (v171 != 2)
      {
        *v198 = 2;
        v172 = &v198[*(v235 + 20)];
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        *v198 = v171 & 1;
        sub_22BE29210();
        sub_22C1CEB4C(v198, v211, v173);
        v166 = 0;
      }

      sub_22BE19DC4(v211, v166, 1, v235);
      sub_22BE1A140();
      sub_22BE19DC4(v174, v175, v176, v146);
      v177 = v225[5];
      sub_22BE1A140();
      sub_22BE19DC4(v178, v179, v180, v165);
      v181 = v225[6];
      v182 = v225[7];
      v183 = v225[9];
      v184 = v207 + v225[8];
      sub_22BE1A140();
      sub_22BE19DC4(v185, v186, v187, v235);
      v188 = v207 + v225[10];
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1B13C();
      sub_22C1CEAFC();
      sub_22BE23490(v234, v207, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE23490(v233, v207 + v177, &qword_27D90F0A8, &qword_22C2B5B70);
      *(v207 + v181) = v227;
      *(v207 + v182) = v223;
      *v184 = v221;
      *(v184 + 4) = v219;
      sub_22BE23490(v211, v207 + v183, &qword_27D90F098, &unk_22C2AE7E0);
      v136 = v209;
      sub_22BE291B0();
      sub_22C1CEAFC();
      v75 = v238;
      sub_22BE35D84();
      sub_22BE3FFA0();
      if (v190)
      {
        sub_22BE3D1E4(v189);
        sub_22BE31778();
        sub_22BE70494(v193, v194, v195);
        v75 = a10;
      }

      *(v75 + 16) = v235;
      sub_22BE197A0();
      sub_22C1CEEB4();
      sub_22C1CEB4C(v207, v191, v192);
      v71 = v237 + 1;
      v14 = v231;
      v12 = v239;
      v63 = v224;
    }

    __break(1u);
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_22C1C05C8(uint64_t a1)
{
  v2 = type metadata accessor for ContextProtoSampleInvocation(0);
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = *(v63 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = v51 - v7;
  v62 = sub_22C270F64();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v55 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v61 = v51 - v13;
  MEMORY[0x28223BE20](v12);
  v57 = v51 - v14;
  v15 = *(a1 + 16);
  v65 = MEMORY[0x277D84F90];
  sub_22BE7059C(0, v15, 0);
  v16 = v65;
  v59 = a1;
  if (v15)
  {
    v17 = 0;
    v18 = *(a1 + 16);
    v53 = v15;
    v54 = v18;
    v52 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v51[2] = v8 + 8;
    v51[3] = v8 + 16;
    v19 = v61;
    while (v54 != v17)
    {
      v20 = *(v8 + 16);
      v21 = v6;
      v22 = v62;
      v20(v19, v52 + *(v8 + 72) * v17, v62);
      v23 = v55;
      v20(v55, v19, v22);
      v60 = sub_22C270F44();
      v25 = v24;
      sub_22C270F54();
      v27 = v26;
      v28 = v21 + *(v64 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v29 = *(v8 + 8);
      v29(v23, v22);
      v30 = v22;
      v6 = v21;
      v29(v19, v30);
      *v21 = v60;
      *(v21 + 8) = v25;
      *(v21 + 16) = v27;
      v65 = v16;
      v32 = *(v16 + 16);
      v31 = *(v16 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22BE7059C(v31 > 1, v32 + 1, 1);
        v16 = v65;
      }

      ++v17;
      *(v16 + 16) = v32 + 1;
      sub_22C1CEB4C(v21, v16 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v32, type metadata accessor for ContextProtoSampleInvocation);
      v15 = v53;
      if (v53 == v17)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v60 = v8 + 16;
    v55 = (v8 + 8);
    for (i = v8; ; v8 = i)
    {
      v33 = *(v59 + 16);
      if (v15 == v33)
      {

        return;
      }

      if (v15 >= v33)
      {
        break;
      }

      v34 = v59 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v15;
      v35 = *(v8 + 16);
      v36 = v8;
      v37 = v15;
      v38 = v57;
      v39 = v62;
      v35(v57, v34, v62);
      v40 = v61;
      v35(v61, v38, v39);
      v41 = sub_22C270F44();
      v43 = v42;
      sub_22C270F54();
      v45 = v44;
      v46 = v58;
      v47 = &v58[*(v64 + 24)];
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v48 = *(v36 + 8);
      v48(v40, v39);
      v48(v38, v39);
      *v46 = v41;
      *(v46 + 8) = v43;
      *(v46 + 16) = v45;
      v65 = v16;
      v50 = *(v16 + 16);
      v49 = *(v16 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_22BE7059C(v49 > 1, v50 + 1, 1);
        v46 = v58;
        v16 = v65;
      }

      *(v16 + 16) = v50 + 1;
      sub_22C1CEB4C(v46, v16 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v50, type metadata accessor for ContextProtoSampleInvocation);
      v15 = v37 + 1;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C1C0A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v24;
  a20 = v25;
  sub_22BE48298();
  v26 = sub_22C26E684();
  v27 = sub_22BE179D8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v32);
  sub_22C1CEBCC();
  MEMORY[0x28223BE20](v33);
  sub_22BE19E94();
  sub_22BE190A8(v34);
  v35 = sub_22BE5CE4C(&qword_27D907240, &unk_22C2B5B80);
  v36 = sub_22BE19448(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  sub_22BE17B98();
  v202 = v39;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v40);
  sub_22BE19490();
  v200 = v41;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v42);
  sub_22BE19490();
  sub_22BE181F4();
  v44 = MEMORY[0x28223BE20](v43);
  sub_22C1CEC08(v44, v45, v46, v47, v48, v49, v50, v51, v21);
  v52 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v53 = sub_22BE19448(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22BE186D4();
  v57 = MEMORY[0x28223BE20](v56);
  sub_22BE3E3EC(v57, v58, v59, v60, v61, v62, v63, v64, v184);
  v65 = type metadata accessor for TranscriptProtoStructuredSearchExpression.StructuredSearchProperty(0);
  v207 = sub_22BE179D8(v65);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v207);
  sub_22BE17B98();
  sub_22BE181F4();
  v69 = MEMORY[0x28223BE20](v68);
  sub_22BE2BC40(v69, v70, v71, v72, v73, v74, v75, v76, v185);
  v206 = type metadata accessor for StructuredSearchExpression.StructuredSearchProperty(0);
  v77 = sub_22BE179D8(v206);
  v79 = v78;
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v77);
  sub_22BE17B98();
  v214 = v82;
  sub_22BE1B99C();
  v84 = MEMORY[0x28223BE20](v83);
  sub_22C1CECC4(v84, v85, v86, v87, v88, v89, v90, v91, v186);
  v93 = MEMORY[0x28223BE20](v92);
  sub_22BE23730(v93, v94, v95, v96, v97, v98, v99, v100, v187);
  MEMORY[0x28223BE20](v101);
  sub_22BE19E94();
  v217 = v102;
  v103 = *(v22 + 16);
  v104 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE706A4(v104, v103, 0);
  v105 = a10;
  v194 = v22;
  v223 = v26;
  v205 = v79;
  if (v103)
  {
    v106 = 0;
    sub_22BE3766C();
    sub_22BE417A8(v22 + v107);
    v198 = *(v22 + 16);
    v189 = (v29 + 8);
    v196 = v29;
    v108 = v79;
    v109 = v191;
    v188 = v23;
    while (v198 != v106)
    {
      v110 = *(v108 + 72);
      sub_22BE32574();
      sub_22C1CEAA4(v111, v212, v112);
      sub_22C1CEAA4(v212, v214, v20);
      v221 = v214[1];
      v208 = v214[2];
      v210 = *v214;
      v215 = v214[3];
      sub_22BE3BB64(v214 + *(v206 + 24), v200, &qword_27D907240, &unk_22C2B5B80);
      sub_22BE3BB64(v200, v202, &qword_27D907240, &unk_22C2B5B80);
      sub_22BE1AB5C(v202, 1, v26);
      if (v113)
      {

        sub_22BE233E8(v200, &qword_27D907240, &unk_22C2B5B80);
        v114 = sub_22BE1A8C4();
        sub_22BE233E8(v114, v115, &unk_22C2B5B80);
        v20 = type metadata accessor for TranscriptProtoStatementID(0);
        v126 = v23;
        v127 = 1;
      }

      else
      {
        sub_22BE33554(&a9);
        v116 = sub_22BE35838();
        v117(v116);
        sub_22BE33554(&v224);
        sub_22C1CF288();
        v118();

        v195 = sub_22C26E674();
        v119 = sub_22C26E654();
        sub_22C1CF270(v119);
        v20 = type metadata accessor for TranscriptProtoStatementID(0);
        v120 = v23 + *(v20 + 24);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v121 = v105;
        v122 = v103;
        v123 = *v189;
        (*v189)(v201, v26);
        v123(v190, v26);
        v103 = v122;
        v105 = v121;
        v23 = v188;
        v109 = v191;
        sub_22BE233E8(v200, &qword_27D907240, &unk_22C2B5B80);
        *v188 = v195;
        sub_22BE2BCA8();
        *(v188 + 8) = v125;
        *(v188 + 16) = v124;
        v126 = v188;
        v127 = 0;
      }

      sub_22BE19DC4(v126, v127, 1, v20);
      v128 = *(v207 + 24);
      type metadata accessor for TranscriptProtoStatementID(0);
      sub_22BE1A140();
      sub_22BE19DC4(v129, v130, v131, v20);
      v132 = v109 + *(v207 + 28);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22C1CEE3C();
      sub_22C1CEAFC();
      sub_22C1CEAFC();
      *v109 = v210;
      v109[1] = v221;
      v109[2] = v208;
      v109[3] = v215;
      sub_22BE23490(v23, v109 + v128, &qword_27D9090F8, &unk_22C2AE4A0);
      a10 = v105;
      v134 = *(v105 + 16);
      v133 = *(v105 + 24);
      if (v134 >= v133 >> 1)
      {
        sub_22BE3D1E4(v133);
        sub_22BE39E18();
        sub_22BE706A4(v139, v140, v141);
        v105 = a10;
      }

      ++v106;
      *(v105 + 16) = v134 + 1;
      sub_22BE25AD8();
      v136 = *(v135 + 72);
      sub_22BE41748();
      sub_22C1CEB4C(v109, v137, v138);
      v29 = v196;
      v108 = v205;
      if (v103 == v106)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v199 = (v29 + 16);
    v197 = (v29 + 8);
    v142 = v194;
    v143 = v193;
    v144 = v220;
    while (1)
    {
      v145 = *(v142 + 16);
      if (v103 == v145)
      {

        sub_22BE18478();
        return;
      }

      if (v103 >= v145)
      {
        break;
      }

      sub_22BE25AD8();
      v147 = *(v146 + 72);
      sub_22BE32574();
      sub_22C1CEAA4(v148, v217, v149);
      sub_22BE354D0();
      sub_22C1CEAA4(v150, v151, v152);
      v153 = v218[1];
      v213 = *v218;
      v209 = v218[2];
      v222 = v218[3];
      sub_22BE3BB64(v218 + *(v206 + 24), v219, &qword_27D907240, &unk_22C2B5B80);
      v154 = sub_22BE260B8();
      sub_22BE3BB64(v154, v155, &qword_27D907240, &unk_22C2B5B80);
      v156 = sub_22BE2BA98();
      sub_22BE1AB5C(v156, v157, v223);
      v216 = v103;
      v211 = v153;
      if (v113)
      {

        sub_22BE233E8(v219, &qword_27D907240, &unk_22C2B5B80);
        sub_22BE233E8(v143, &qword_27D907240, &unk_22C2B5B80);
        v165 = type metadata accessor for TranscriptProtoStatementID(0);
        v168 = sub_22BE3C598();
      }

      else
      {
        sub_22C1CF1E8();
        v158 = sub_22BE260B8();
        v159(v158);
        v160 = *v199;
        sub_22BE354D0();
        v161();

        v203 = sub_22C26E674();
        v162 = sub_22C26E654();
        v164 = v163;
        v165 = type metadata accessor for TranscriptProtoStatementID(0);
        v166 = v220 + *(v165 + 24);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v167 = *v197;
        (*v197)(v201, v223);
        v167(v192, v223);
        sub_22BE233E8(v219, &qword_27D907240, &unk_22C2B5B80);
        *v220 = v203;
        *(v220 + 8) = v162;
        v144 = v220;
        v143 = v193;
        v142 = v194;
        *(v220 + 16) = v164;
        v168 = v220;
        v169 = 0;
      }

      sub_22BE19DC4(v168, v169, 1, v165);
      v170 = *(v207 + 24);
      type metadata accessor for TranscriptProtoStatementID(0);
      sub_22BE1A140();
      sub_22BE19DC4(v171, v172, v173, v165);
      v174 = v204 + *(v207 + 28);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22C1CEE3C();
      sub_22C1CEAFC();
      sub_22C1CEAFC();
      *v204 = v213;
      v204[1] = v211;
      v204[2] = v209;
      v204[3] = v222;
      sub_22BE23490(v144, v204 + v170, &qword_27D9090F8, &unk_22C2AE4A0);
      a10 = v105;
      v176 = *(v105 + 16);
      v175 = *(v105 + 24);
      if (v176 >= v175 >> 1)
      {
        sub_22BE3D1E4(v175);
        sub_22BE39E18();
        sub_22BE706A4(v181, v182, v183);
        v105 = a10;
      }

      *(v105 + 16) = v176 + 1;
      sub_22BE25AD8();
      v178 = *(v177 + 72);
      sub_22BE41748();
      sub_22C1CEB4C(v204, v179, v180);
      v103 = v216 + 1;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C1C1424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v13 = type metadata accessor for TranscriptProtoStatementID(0);
  v79 = sub_22BE179D8(v13);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v79);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v16);
  sub_22BE19E94();
  v74 = v17;
  sub_22BE183BC();
  v77 = sub_22C26E684();
  v18 = sub_22BE179D8(v77);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v23);
  sub_22BE19490();
  v78 = v24;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v25);
  sub_22BE19E94();
  v73 = v26;
  v27 = *(v12 + 16);
  v28 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE705F4(v28, v27, 0);
  v80 = v12;
  if (v27)
  {
    v30 = 0;
    v31 = *(v12 + 16);
    sub_22BE3766C();
    v70 = v12 + v32;
    v71 = v33;
    sub_22BE487F0();
    v81 = v27;
    while (v71 != v30)
    {
      v34 = v20[2];
      v34(v78, v70 + v20[9] * v30, v77);
      v35 = sub_22BE31038();
      (v34)(v35);
      v76 = a10;
      v75 = sub_22C26E674();
      v36 = sub_22C26E654();
      v38 = v37;
      v39 = v10 + *(v79 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v40 = v10;
      v41 = v20[1];
      v42 = sub_22BE261AC();
      v41(v42);
      v43 = sub_22BE2BA80();
      v41(v43);
      v10 = v40;
      *v40 = v75;
      *(v40 + 8) = v36;
      a10 = v76;
      *(v10 + 16) = v38;
      v45 = *(v76 + 16);
      v44 = *(v76 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_22BE3D1E4(v44);
        sub_22BE31778();
        sub_22BE705F4(v49, v50, v51);
        a10 = v76;
      }

      ++v30;
      *(a10 + 16) = v45 + 1;
      sub_22BE25AD8();
      sub_22C1CEF14(v48, a10 + v46 + *(v47 + 72) * v45);
      v12 = v80;
      v27 = v81;
      if (v81 == v30)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    sub_22BE487F0();
    for (i = v20; ; v20 = i)
    {
      v52 = *(v12 + 16);
      if (v27 == v52)
      {

        sub_22BE18478();
        return;
      }

      if (v27 >= v52)
      {
        break;
      }

      sub_22BE3766C();
      v54 = v12 + v53 + v20[9] * v27;
      v82 = v27;
      v55 = v20[2];
      v55(v73, v54, v77);
      v55(v78, v73, v77);
      LODWORD(v55) = sub_22C26E674();
      v56 = sub_22C26E654();
      v58 = v57;
      v59 = v74 + *(v79 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v60 = v20[1];
      v61 = sub_22BE261AC();
      v60(v61);
      (v60)(v73, v77);
      *v74 = v55;
      *(v74 + 8) = v56;
      *(v74 + 16) = v58;
      v63 = *(a10 + 16);
      v62 = *(a10 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_22BE3D1E4(v62);
        sub_22BE31778();
        sub_22BE705F4(v67, v68, v69);
      }

      *(a10 + 16) = v63 + 1;
      sub_22BE25AD8();
      sub_22C1CEF14(v66, a10 + v64 + *(v65 + 72) * v63);
      v12 = v80;
      v27 = v82 + 1;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C1C1808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v15 = sub_22BE17BC4();
  v16 = type metadata accessor for TranscriptProtoASTFlatValue(v15);
  v17 = sub_22BE17A18(v16);
  v67 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v21);
  sub_22BE25A90();
  v22 = type metadata accessor for AST.FlatValue(0);
  v23 = sub_22BE17A18(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE17B98();
  v66 = v28;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v29);
  sub_22BE23858();
  MEMORY[0x28223BE20](v30);
  sub_22BE32374();
  v31 = *(v10 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22C1CF078();
  sub_22BE707AC(v32, v33, v34);
  v35 = a10;
  if (!v31)
  {
    goto LABEL_7;
  }

  v36 = 0;
  v65 = *(v10 + 16);
  v37 = *(v25 + 80);
  sub_22BE19E14();
  v38 = v25;
  while (v65 != v36)
  {
    v39 = *(v38 + 72);
    sub_22BE295A0();
    sub_22C1CEAA4(v40, v13, v41);
    sub_22C1CEAA4(v13, v66, v10);
    TranscriptProtoASTFlatValue.init(handwritten:)();
    sub_22C1CEE0C();
    sub_22C1CEAFC();
    sub_22BE35D84();
    sub_22BE3FFA0();
    if (v43)
    {
      sub_22BE3D1E4(v42);
      sub_22BE31778();
      sub_22BE707AC(v46, v47, v48);
      v35 = a10;
    }

    ++v36;
    *(v35 + 16) = v10;
    sub_22BE197A0();
    sub_22C1CED38();
    sub_22C1CEB4C(v12, v44, v45);
    v38 = v25;
    if (v31 == v36)
    {
      while (1)
      {
LABEL_7:
        v49 = *(v10 + 16);
        if (v31 == v49)
        {

          sub_22BE18478();
          return;
        }

        if (v31 >= v49)
        {
          break;
        }

        sub_22BE25AD8();
        v51 = *(v50 + 72);
        sub_22BE295A0();
        sub_22C1CEAA4(v52, v14, v53);
        sub_22C1CEAA4(v14, v13, v10);
        TranscriptProtoASTFlatValue.init(handwritten:)();
        sub_22C1CEE0C();
        sub_22C1CEAFC();
        v54 = v11;
        v56 = *(v35 + 16);
        v55 = *(v35 + 24);
        sub_22BE3FFA0();
        if (v43)
        {
          sub_22BE3D1E4(v57);
          sub_22BE31778();
          sub_22BE707AC(v62, v63, v64);
        }

        *(v35 + 16) = v10;
        v58 = *(v67 + 80);
        sub_22BE2C704();
        v59 = *(v67 + 72);
        sub_22C1CED38();
        sub_22C1CEB4C(v54, v60, v61);
        ++v31;
        v11 = v54;
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
}

void sub_22C1C1AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = v12;
  v14 = type metadata accessor for AST.FlatValue(0);
  v15 = sub_22BE19448(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE17A44();
  sub_22BEC03A4(v18);
  v19 = sub_22BE5CE4C(&qword_27D90EE30, &unk_22C2AE760);
  v20 = sub_22BE19448(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE17B98();
  sub_22BE4201C();
  MEMORY[0x28223BE20](v23);
  sub_22BE23730(v24, v25, v26, v27, v28, v29, v30, v31, v159);
  MEMORY[0x28223BE20](v32);
  sub_22BE19490();
  v169 = v33;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v34);
  sub_22BE2BC40(v35, v36, v37, v38, v39, v40, v41, v42, v160);
  updated = type metadata accessor for TranscriptProtoASTFlatExprUpdateVariant(0);
  v174 = sub_22BE179D8(updated);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v174);
  sub_22BE18928();
  MEMORY[0x28223BE20](v46);
  sub_22C1CEC08(v47, v48, v49, v50, v51, v52, v53, v54, v161);
  v173 = type metadata accessor for AST.Update(0);
  v55 = sub_22BE179D8(v173);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v55);
  sub_22BE17B98();
  v165 = v60;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v61);
  sub_22BE409D8();
  MEMORY[0x28223BE20](v62);
  sub_22C1CEC1C();
  MEMORY[0x28223BE20](v63);
  sub_22BE3E3EC(v64, v65, v66, v67, v68, v69, v70, v71, v162);
  v72 = *(v13 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE34198();
  sub_22BE70804(v73, v74, v75);
  v172 = v57;
  v176 = v13;
  if (!v72)
  {
    goto LABEL_7;
  }

  v76 = 0;
  v77 = *(v13 + 16);
  v78 = *(v57 + 80);
  sub_22BE19E14();
  v163 = v13 + v79;
  v164 = v80;
  v182 = v72;
  while (v164 != v76)
  {
    v81 = *(v57 + 72);
    sub_22BE36014();
    sub_22C1CEAA4(v82, v177, v83);
    sub_22C1CEAA4(v177, v165, v11);
    sub_22BE295A0();
    sub_22C1CEAA4(v165, v175, v84);
    TranscriptProtoASTFlatValue.init(handwritten:)();
    v85 = v10;
    v86 = type metadata accessor for TranscriptProtoASTFlatValue(0);
    sub_22BE187DC();
    sub_22BE19DC4(v87, v88, v89, v86);
    v90 = *(v165 + v173[5]);

    sub_22C1C1808(v91, v92, v93, v94, v95, v96, v97, v98, v163, v164);
    v171 = v99;
    sub_22C1CEAA4(v165 + v173[7], v175, v177);
    TranscriptProtoASTFlatValue.init(handwritten:)();
    sub_22BE187DC();
    sub_22BE3A034(v100, v101, v102, v86);
    v170 = *(v165 + v103);
    v104 = v174[6];
    sub_22BE28D2C();
    sub_22BE19DC4(v105, v106, v107, v108);
    v11 = v174[7];
    sub_22BE28D2C();
    v10 = v85;
    sub_22BE19DC4(v109, v110, v111, v112);
    v113 = v85 + v174[8];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22C1CEAFC();
    sub_22C1CEAFC();
    sub_22BE23490(v179, v85 + v104, &qword_27D90EE30, &unk_22C2AE760);
    *v85 = v171;
    sub_22BE23490(v166, v85 + v11, &qword_27D90EE30, &unk_22C2AE760);
    *(v85 + 8) = v170;
    sub_22C1CF084();
    if (v115)
    {
      sub_22BE3D1E4(v114);
      sub_22C1CF294();
      sub_22BE70804(v118, v119, v120);
    }

    ++v76;
    *(a10 + 16) = v11;
    sub_22BE197A0();
    sub_22BE389CC();
    sub_22C1CEB4C(v85, v116, v117);
    v72 = v182;
    v13 = v176;
    v57 = v172;
    if (v182 == v76)
    {
      while (1)
      {
LABEL_7:
        v121 = *(v13 + 16);
        if (v72 == v121)
        {

          sub_22BE18478();
          return;
        }

        if (v72 >= v121)
        {
          break;
        }

        v122 = *(v57 + 80);
        sub_22BE19E14();
        v123 = *(v57 + 72);
        sub_22BE36014();
        sub_22C1CEAA4(v124, v181, v125);
        sub_22C1CEAA4(v181, v167, v11);
        sub_22C1CEAA4(v167, v175, type metadata accessor for AST.FlatValue);
        v11 = v168;
        TranscriptProtoASTFlatValue.init(handwritten:)();
        v126 = type metadata accessor for TranscriptProtoASTFlatValue(0);
        sub_22BE187DC();
        sub_22BE19DC4(v127, v128, v129, v126);
        v130 = *(v167 + v173[5]);

        sub_22C1C1808(v131, v132, v133, v134, v135, v136, v137, v138, v163, v164);
        v178 = v139;
        sub_22C1CEAA4(v167 + v173[7], v175, type metadata accessor for AST.FlatValue);
        TranscriptProtoASTFlatValue.init(handwritten:)();
        sub_22BE187DC();
        sub_22BE19DC4(v140, v141, v142, v126);
        v143 = *(v167 + v173[6]);
        v144 = v174[6];
        sub_22BE1A140();
        sub_22BE19DC4(v145, v146, v147, v126);
        v148 = v174[7];
        sub_22BE1A140();
        sub_22BE19DC4(v149, v150, v151, v126);
        v152 = v180 + v174[8];
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        sub_22C1CEAFC();
        sub_22C1CEAFC();
        sub_22BE23490(v168, v180 + v144, &qword_27D90EE30, &unk_22C2AE760);
        *v180 = v178;
        sub_22BE23490(v169, v180 + v148, &qword_27D90EE30, &unk_22C2AE760);
        *(v180 + 8) = v143;
        sub_22C1CF084();
        if (v115)
        {
          sub_22BE3D1E4(v153);
          sub_22C1CF294();
          sub_22BE70804(v156, v157, v158);
        }

        *(a10 + 16) = v168;
        sub_22BE197A0();
        sub_22BE389CC();
        sub_22C1CEB4C(v180, v154, v155);
        ++v72;
        v57 = v172;
        v13 = v176;
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
}

void sub_22C1C2144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE38A98();
  v14 = type metadata accessor for TranscriptProtoCandidate(0);
  v15 = sub_22BE17A18(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE193B0(v20, v84);
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  v91 = v22;
  v23 = sub_22BE183BC();
  v24 = type metadata accessor for Candidate(v23);
  v25 = sub_22BE17A18(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v30);
  sub_22BE23858();
  v32 = MEMORY[0x28223BE20](v31);
  sub_22BE23730(v32, v33, v34, v35, v36, v37, v38, v39, v85);
  v41 = MEMORY[0x28223BE20](v40);
  sub_22BE3E3EC(v41, v42, v43, v44, v45, v46, v47, v48, v86);
  v49 = *(v12 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22C1CF078();
  sub_22BE708B4(v50, v51, v52);
  sub_22BE35CC8();
  if (v49)
  {
    v53 = 0;
    v54 = *(v12 + 16);
    v55 = *(v27 + 80);
    sub_22C1CEC30();
    v87 = v56;
    while (v87 != v53)
    {
      sub_22BE27A88();
      if (v70)
      {
        goto LABEL_21;
      }

      sub_22BE36598();
      sub_22C1CEDC4();
      sub_22C1CEAA4(v57, v13, v58);
      v59 = sub_22BE289D8();
      sub_22C1CEAA4(v59, v60, v27);
      sub_22BE351D8();
      TranscriptProtoCandidate.init(handwritten:)();
      if (v11)
      {
LABEL_17:

        sub_22BE23650();
        sub_22C1CEAFC();

LABEL_18:
        sub_22BE29F1C();
        sub_22BE18478();
        return;
      }

      sub_22BE23650();
      sub_22C1CEAFC();
      sub_22BE182F0();
      if (v70)
      {
        v66 = sub_22BE1A028(v61);
        sub_22BE708B4(v66, v67, v68);
        v10 = a10;
      }

      ++v53;
      *(v10 + 16) = v27;
      v62 = *(v17 + 80);
      sub_22BE2C704();
      v63 = *(v17 + 72);
      sub_22C1CED70();
      sub_22C1CEB4C(v90, v64, v65);
      if (v49 == v53)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    for (i = v89; ; i = sub_22BE3C654())
    {
      sub_22BE47E0C(i);
      if (v71)
      {

        goto LABEL_18;
      }

      if (v70)
      {
        break;
      }

      sub_22BE3766C();
      sub_22C1CEF8C(v72, v73);
      sub_22C1CEDC4();
      sub_22C1CEAA4(v74, v88, v75);
      sub_22C1CEFE0();
      sub_22BE3E778();
      TranscriptProtoCandidate.init(handwritten:)();
      if (v11)
      {
        goto LABEL_17;
      }

      sub_22BE23650();
      sub_22C1CEAFC();
      sub_22BE182F0();
      if (v70)
      {
        v81 = sub_22BE1A028(v76);
        sub_22BE708B4(v81, v82, v83);
        v10 = a10;
      }

      *(v10 + 16) = v27;
      v77 = *(v17 + 80);
      sub_22BE2C704();
      v78 = *(v17 + 72);
      sub_22C1CED70();
      sub_22C1CEB4C(v91, v79, v80);
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22C1C241C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  sub_22BE38A98();
  v282 = sub_22BE5CE4C(&qword_27D909040, &qword_22C2CC990);
  v25 = sub_22BE18000(v282);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE17B98();
  sub_22BE181F4();
  v29 = MEMORY[0x28223BE20](v28);
  sub_22BE23730(v29, v30, v31, v32, v33, v34, v35, v36, v247);
  MEMORY[0x28223BE20](v37);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v38);
  sub_22BE19490();
  v281 = v39;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v40);
  sub_22BE19E94();
  v275 = v41;
  sub_22BE183BC();
  v290 = sub_22C272594();
  v42 = sub_22BE179D8(v290);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  sub_22BE17B98();
  sub_22BE3CFC4();
  MEMORY[0x28223BE20](v47);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v48);
  sub_22BE255B8();
  MEMORY[0x28223BE20](v49);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v50);
  sub_22C1CEC9C();
  MEMORY[0x28223BE20](v51);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v52);
  sub_22BE3913C();
  MEMORY[0x28223BE20](v53);
  sub_22BE19E94();
  sub_22BE18950(v54);
  v55 = sub_22C272874();
  v56 = sub_22BE179D8(v55);
  v58 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v56);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v61);
  sub_22BE26800();
  v62 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v63 = sub_22BE19448(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v66);
  sub_22BE19E94();
  v68 = sub_22BE18950(v67);
  v255 = type metadata accessor for TranscriptProtoVariableSetter(v68);
  v69 = sub_22BE179D8(v255);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v72);
  sub_22BE19E94();
  v74 = sub_22BE18950(v73);
  v258 = type metadata accessor for VariableSetter(v74);
  v75 = sub_22BE179D8(v258);
  v77 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x28223BE20](v75);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v80);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v81);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v82);
  sub_22BE19E94();
  sub_22BE190A8(v83);
  v84 = *(v21 + 16);
  v85 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE7090C(v85, v84, 0);
  v257 = v21;
  v292 = v55;
  v278 = v58;
  v279 = v44;
  v265 = v22;
  v254 = v77;
  if (v84)
  {
    v86 = *(v77 + 80);
    sub_22C1CEC30();
    v250 = *(v21 + 16);
    sub_22BE36638(v58 + 16);
    v280 = (v44 + 32);
    v261 = v84;
    while (v87 != v250)
    {
      if (v87 >= *(v21 + 16))
      {
        goto LABEL_67;
      }

      v88 = *(v77 + 72);
      sub_22C1CEEFC();
      v90 = v89;
      sub_22C1CEAA4(v91, v260, v92);
      sub_22C1CF288();
      sub_22C1CEAA4(v93, v94, v95);
      sub_22BE32C24();
      (*v270)(v251, &v271[*(v96 + 20)], v55);
      sub_22BE236D4(&v275);
      v97 = v20;
      sub_22C272854();
      if (v20)
      {

        sub_22BE33554(&a16);
        v241 = sub_22BE261AC();
        v242(v241);
        sub_22BE1A420();
        sub_22C1CEAFC();
        v243 = &v286;
        goto LABEL_58;
      }

      v291 = 0;
      v256 = v90 + 1;
      sub_22BE3974C();
      v268 = *v98;
      v99 = sub_22BE261AC();
      v100(v99);
      v101 = *v280;
      v102 = sub_22BE27A44();
      v103 = v290;
      v277 = v104;
      (v104)(v102);
      sub_22BE187DC();
      sub_22BE19DC4(v105, v106, v107, v103);
      v108 = *v271;

      v109 = sub_22C272E84();
      sub_22C1CEE84();
      v111 = v110 >> 6;
      v276 = v108;

      v112 = 0;
      v267 = v111;
      if (!v103)
      {
        goto LABEL_8;
      }

      do
      {
        v286 = v109;
        v113 = v58;
LABEL_12:
        v115 = __clz(__rbit64(v103)) | (v112 << 6);
        v116 = v276;
        v117 = *(v276 + 48);
        v118 = sub_22C26E684();
        sub_22BE179D8(v118);
        v120 = v119;
        v122 = v117 + *(v121 + 72) * v115;
        v123 = v289;
        (*(v121 + 16))(v289, v122, v118);
        v124 = *(v116 + 56) + *(v113 + 72) * v115;
        v125 = v282;
        v126 = *(v282 + 48);
        v127 = v292;
        sub_22C1CF148();
        sub_22BE3CB90();
        v128();
        v129 = v281;
        sub_22BE3BB64(v123, v281, &qword_27D909040, &qword_22C2CC990);
        v130 = *(v125 + 48);
        LODWORD(v283) = sub_22C26E674();
        v284 = *(v120 + 8);
        v285 = v118;
        (v284)(v129, v118);
        v268(v129 + v130, v127);
        sub_22BE3BB64(v123, v266, &qword_27D909040, &qword_22C2CC990);
        v131 = *(v125 + 48);
        v132 = v266 + v131;
        v133 = v291;
        sub_22C272854();
        v291 = v133;
        if (v133)
        {

          sub_22BE233E8(v289, &qword_27D909040, &qword_22C2CC990);
          sub_22BE233E8(v259, &qword_27D909128, &qword_22C294AA0);
          sub_22BE1A420();
          sub_22C1CEAFC();
          sub_22BE36404(&v286);

          v268(v266 + v131, v292);
          (v284)(v266, v285);
LABEL_54:

          goto LABEL_59;
        }

        v268(v266 + v131, v292);
        v134 = v287;
        sub_22BE22DF4();
        sub_22C1CF028();
        v277();
        (v284)(v266, v285);
        sub_22BE33554(&a9);
        v135(v288, v134, v132);
        v136 = v286;
        swift_isUniquelyReferenced_nonNull_native();
        v293 = v136;
        v137 = v283;
        sub_22BE60364(v283);
        sub_22C1CF0B4();
        v44 = v140 + v141;
        v55 = v292;
        if (__OFADD__(v140, v141))
        {
          goto LABEL_62;
        }

        v142 = v138;
        v143 = v139;
        sub_22BE5CE4C(&qword_27D915598, &qword_22C2CC610);
        if (sub_22C273C44())
        {
          v144 = sub_22BE60364(v137);
          v111 = v267;
          if ((v143 & 1) != (v145 & 1))
          {
            goto LABEL_69;
          }

          v142 = v144;
        }

        else
        {
          v111 = v267;
        }

        v109 = v293;
        if (v143)
        {
          sub_22C1CF2F8();
          v146 = *(v44 + 40);
          sub_22C1CF028();
          v147();
          v148 = sub_22C1CF184();
          v149(v148);
          sub_22BE233E8(v289, &qword_27D909040, &qword_22C2CC990);
        }

        else
        {
          sub_22BE45B78(v293 + 8 * (v142 >> 6));
          *(*(v109 + 48) + 4 * v142) = v150;
          sub_22C1CF2F8();
          sub_22C1CF028();
          v277();
          v151 = sub_22C1CF184();
          v152(v151);
          sub_22BE233E8(v289, &qword_27D909040, &qword_22C2CC990);
          v153 = *(v109 + 16);
          v154 = __OFADD__(v153, 1);
          v155 = v153 + 1;
          if (v154)
          {
            goto LABEL_64;
          }

          *(v109 + 16) = v155;
        }

        v103 &= v103 - 1;
        v58 = v278;
        v97 = 0;
      }

      while (v103);
      while (1)
      {
LABEL_8:
        v114 = v112 + 1;
        if (__OFADD__(v112, 1))
        {
          __break(1u);
          goto LABEL_61;
        }

        if (v114 >= v111)
        {
          break;
        }

        v103 = *(v97 + 8 * v114);
        ++v112;
        if (v103)
        {
          v286 = v109;
          v113 = v58;
          v112 = v114;
          goto LABEL_12;
        }
      }

      v156 = v255;
      v157 = *(v255 + 20);
      sub_22BE1A140();
      sub_22BE3A034(v158, v159, v160, v290);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1A420();
      sub_22C1CEAFC();
      sub_22BE36404(&v286);
      sub_22BE23490(v259, v249 + v157, &qword_27D909128, &qword_22C294AA0);
      *v249 = v109;
      sub_22C1CF000();
      if (v162)
      {
        v165 = sub_22BE19808(v161);
        sub_22BE7090C(v165, v166, v167);
        v156 = a10;
      }

      *(v156 + 16) = v109;
      sub_22BE197A0();
      sub_22BE42758();
      sub_22C1CEB4C(v249, v163, v164);
      v84 = v261;
      v87 = v256;
      v20 = v291;
      v21 = v257;
      v22 = v265;
      v77 = v254;
      if (v256 == v261)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_66;
  }

LABEL_27:
  v277 = (v58 + 16);
  v285 = (v44 + 32);
  v280 = (v58 + 8);
LABEL_28:
  v168 = *(v21 + 16);
  if (v84 == v168)
  {

    goto LABEL_59;
  }

  if (v84 < v168)
  {
    v169 = *(v77 + 80);
    sub_22C1CEC30();
    v170 = *(v77 + 72);
    sub_22C1CEEFC();
    sub_22C1CEAA4(v171, v253, v172);
    sub_22C1CF288();
    sub_22C1CEAA4(v173, v174, v175);
    sub_22BE32C24();
    v177 = v264 + *(v176 + 20);
    v276 = *v277;
    (v276)(v22, v177, v55);
    v178 = v20;
    sub_22C272854();
    if (!v20)
    {
      v291 = 0;
      v262 = v84 + 1;
      v272 = *v280;
      v179 = sub_22BE36318();
      v180(v179);
      v181 = *v285;
      v182 = sub_22BE336E8();
      v183 = v290;
      v284 = v184;
      (v184)(v182);
      sub_22BE187DC();
      sub_22BE19DC4(v185, v186, v187, v183);
      v188 = *v264;

      v189 = sub_22C272E84();
      sub_22C1CEE84();
      v191 = v190 >> 6;
      v283 = v188;

      v192 = 0;
      v269 = v191;
      if (!v183)
      {
        goto LABEL_33;
      }

      do
      {
        v193 = v58;
        v289 = v189;
LABEL_37:
        v195 = __clz(__rbit64(v183)) | (v192 << 6);
        v196 = v283;
        v197 = *(v283 + 48);
        v198 = sub_22C26E684();
        sub_22BE179D8(v198);
        v200 = v199;
        v202 = v275;
        (*(v201 + 16))(v275, v197 + *(v201 + 72) * v195, v198);
        v203 = *(v196 + 56) + *(v193 + 72) * v195;
        v204 = v282;
        v205 = v292;
        (v276)(v202 + *(v282 + 48), v203, v292);
        v206 = v281;
        sub_22BE3BB64(v202, v281, &qword_27D909040, &qword_22C2CC990);
        v207 = *(v204 + 48);
        LODWORD(v286) = sub_22C26E674();
        v287 = *(v200 + 8);
        v288 = v198;
        v287(v206, v198);
        v272(v206 + v207, v205);
        sub_22BE3BB64(v202, v263, &qword_27D909040, &qword_22C2CC990);
        v208 = *(v204 + 48);
        sub_22BE204A4(&v288);
        v209 = v291;
        sub_22C272854();
        v291 = v209;
        if (v209)
        {

          sub_22BE233E8(v275, &qword_27D909040, &qword_22C2CC990);
          sub_22BE233E8(v252, &qword_27D909128, &qword_22C294AA0);
          sub_22BE1A420();
          sub_22C1CEAFC();
          sub_22BE36404(&v277);

          v272(v263 + v208, v292);
          v287(v263, v288);
          goto LABEL_54;
        }

        v272(v263 + v208, v292);
        sub_22BE1B18C();
        sub_22C1CF028();
        v284();
        v287(v263, v288);
        sub_22BE33554(&a15);
        v210(v274, v273, v263 + v208);
        v211 = v289;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v293 = v211;
        v213 = v286;
        sub_22BE60364(v286);
        sub_22C1CF0B4();
        if (__OFADD__(v216, v217))
        {
          goto LABEL_63;
        }

        v218 = v214;
        v219 = v215;
        sub_22BE5CE4C(&qword_27D915598, &qword_22C2CC610);
        if (sub_22C273C44())
        {
          v220 = sub_22BE60364(v213);
          v22 = v265;
          if ((v219 & 1) != (v221 & 1))
          {
            goto LABEL_69;
          }

          v218 = v220;
        }

        else
        {
          v22 = v265;
        }

        v189 = v293;
        if (v219)
        {
          sub_22C1CF2B8();
          v222 = *(isUniquelyReferenced_nonNull_native + 40);
          sub_22C1CF028();
          v223();
          v224 = sub_22C1CF19C();
          v225(v224);
          sub_22BE233E8(v275, &qword_27D909040, &qword_22C2CC990);
        }

        else
        {
          sub_22BE45B78(v293 + 8 * (v218 >> 6));
          *(*(v189 + 48) + 4 * v218) = v213;
          sub_22C1CF2B8();
          sub_22C1CF028();
          v284();
          v226 = sub_22C1CF19C();
          v227(v226);
          sub_22BE233E8(v275, &qword_27D909040, &qword_22C2CC990);
          v228 = *(v189 + 16);
          v154 = __OFADD__(v228, 1);
          v229 = v228 + 1;
          if (v154)
          {
            goto LABEL_65;
          }

          *(v189 + 16) = v229;
        }

        v183 &= v183 - 1;
        v58 = v278;
        v178 = 0;
        v191 = v269;
      }

      while (v183);
LABEL_33:
      while (1)
      {
        v194 = v192 + 1;
        if (__OFADD__(v192, 1))
        {
          break;
        }

        if (v194 >= v191)
        {

          v230 = v255;
          v231 = *(v255 + 20);
          sub_22BE1A140();
          sub_22BE3A034(v232, v233, v234, v290);
          _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
          sub_22BE1A420();
          sub_22C1CEAFC();
          sub_22BE36404(&v277);
          sub_22BE23490(v252, v248 + v231, &qword_27D909128, &qword_22C294AA0);
          *v248 = v189;
          sub_22C1CF000();
          if (v162)
          {
            v238 = sub_22BE19808(v235);
            sub_22BE7090C(v238, v239, v240);
            v230 = a10;
          }

          *(v230 + 16) = v189;
          sub_22BE197A0();
          sub_22BE42758();
          sub_22C1CEB4C(v248, v236, v237);
          v20 = v291;
          v55 = v292;
          v21 = v257;
          v77 = v254;
          v84 = v262;
          goto LABEL_28;
        }

        v183 = *(v178 + 8 * v194);
        ++v192;
        if (v183)
        {
          v193 = v58;
          v289 = v189;
          v192 = v194;
          goto LABEL_37;
        }
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v244 = *v280;
    v245 = sub_22BE36318();
    v246(v245);
    sub_22BE1A420();
    sub_22C1CEAFC();
    v243 = &v277;
LABEL_58:
    sub_22BE36404(v243);

LABEL_59:
    sub_22BE29F1C();
    sub_22BE18478();
    return;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  sub_22C2740B4();
  __break(1u);
}

void sub_22C1C36F4()
{
  v4 = sub_22BE48298();
  v5 = type metadata accessor for TranscriptProtoSpeechPackage.Token(v4);
  v92 = sub_22BE179D8(v5);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v92);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v8);
  sub_22BE39EE8();
  v91 = sub_22C26EB64();
  v9 = sub_22BE179D8(v91);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v14);
  sub_22BE41674();
  v16 = MEMORY[0x28223BE20](v15);
  sub_22C1CEC74(v16, v17, v18, v19, v20, v21, v22, v23, v81);
  v24 = *(v1 + 16);
  v94 = MEMORY[0x277D84F90];
  sub_22C1CF078();
  sub_22BE70964(v25, v26, v27);
  v28 = v94;
  v85 = v1;
  v90 = v11;
  if (!v24)
  {
    goto LABEL_7;
  }

  v29 = 0;
  v30 = *(v1 + 16);
  v31 = *(v11 + 80);
  sub_22BE19E14();
  v82 = v1 + v32;
  v83 = v33;
  v93 = v24;
  while (v83 != v29)
  {
    v88 = v28;
    v34 = v11[2];
    v35 = v11;
    v34(v89, v82 + v11[9] * v29, v91);
    v34(v0, v89, v91);
    v36 = sub_22C26EB34();
    v86 = v37;
    v87 = v36;
    v38 = sub_22C26EB04();
    sub_22C26EB54();
    v40 = v39;
    sub_22C26EB14();
    v42 = v41;
    sub_22C26EB44();
    v44 = v43;
    v45 = v2 + *(v92 + 36);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v46 = v35[1];
    v47 = sub_22BE3CC34();
    v46(v47);
    v48 = sub_22BE2684C();
    v46(v48);
    v28 = v88;
    *v2 = v87;
    v2[1] = v86;
    v2[2] = v38;
    v2[3] = v40;
    v2[4] = v42;
    v2[5] = v44;
    v50 = *(v88 + 16);
    v49 = *(v88 + 24);
    if (v50 >= v49 >> 1)
    {
      sub_22BE1AAE4(v49);
      sub_22BE39E18();
      sub_22BE70964(v53, v54, v55);
      v28 = v88;
    }

    ++v29;
    *(v28 + 16) = v50 + 1;
    sub_22BE197A0();
    sub_22BE39368();
    sub_22C1CEB4C(v2, v51, v52);
    v24 = v93;
    v11 = v90;
    if (v93 == v29)
    {
      while (1)
      {
LABEL_7:
        sub_22BE47E0C(v85);
        if (v57)
        {

          return;
        }

        if (v56)
        {
          break;
        }

        sub_22BE3766C();
        v60 = v90[2];
        v60(v84, v58 + v59 + v90[9] * v24, v91);
        v61 = sub_22BE1B73C();
        (v60)(v61);
        v62 = sub_22C26EB34();
        v64 = v63;
        v65 = sub_22C26EB04();
        sub_22C26EB54();
        v67 = v66;
        sub_22C26EB14();
        v69 = v68;
        sub_22C26EB44();
        v71 = v70;
        v72 = v3 + *(v92 + 36);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v73 = v90[1];
        v73(v89, v91);
        v73(v84, v91);
        *v3 = v62;
        v3[1] = v64;
        v3[2] = v65;
        v3[3] = v67;
        v3[4] = v69;
        v3[5] = v71;
        v75 = *(v28 + 16);
        v74 = *(v28 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_22BE1AAE4(v74);
          sub_22BE31778();
          sub_22BE70964(v78, v79, v80);
        }

        *(v28 + 16) = v75 + 1;
        sub_22BE197A0();
        sub_22BE39368();
        sub_22C1CEB4C(v3, v76, v77);
        ++v24;
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
}

void sub_22C1C3B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v13 = type metadata accessor for TranscriptProtoSpeechPackage.Interpretation(0);
  v14 = sub_22BE179D8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  sub_22BE3CFC4();
  v18 = MEMORY[0x28223BE20](v17);
  sub_22C1CEC74(v18, v19, v20, v21, v22, v23, v24, v25, v68);
  v26 = sub_22C26EAF4();
  v27 = sub_22BE179D8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v32);
  sub_22C1CECB0();
  MEMORY[0x28223BE20](v33);
  sub_22BE19E94();
  sub_22BE38A28(v34);
  v35 = *(v12 + 16);
  v36 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE709BC(v36, v35, 0);
  v37 = a10;
  v73 = v12;
  if (v35)
  {
    v38 = 0;
    v70 = v35;
    v71 = *(v12 + 16);
    sub_22BE3766C();
    sub_22BE487F0();
    while (v71 != v38)
    {
      v39 = sub_22C1CF034();
      v10(v39);
      v40 = sub_22C1CF25C();
      v10(v40);
      v10 = v35;
      sub_22C26EAE4();
      sub_22C1C36F4();
      sub_22BE34048();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v41 = sub_22C1CF248();
      (v12)(v41);
      v42 = sub_22BE37B20();
      (v12)(v42);
      sub_22BE391B4();
      if (v44)
      {
        v49 = sub_22BE1A028(v43);
        sub_22BE709BC(v49, v50, v51);
        v37 = a10;
      }

      ++v38;
      *(v37 + 16) = v72;
      sub_22BE25AD8();
      sub_22BE46DDC(v37 + v45);
      sub_22BE32EC8();
      sub_22C1CEB4C(v46, v47, v48);
      v35 = v70;
      if (v70 == v38)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    sub_22BE487F0();
    while (1)
    {
      v52 = *(v73 + 16);
      if (v35 == v52)
      {

        sub_22BE18478();
        return;
      }

      if (v35 >= v52)
      {
        break;
      }

      sub_22BE3766C();
      v55 = sub_22BE3CFD4(v53, v54);
      v10(v55);
      v56 = sub_22BE2684C();
      v10(v56);
      v10 = v74;
      sub_22C26EAE4();
      sub_22C1C36F4();
      sub_22BE34048();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v57 = *(v29 + 8);
      v58 = sub_22BE37B20();
      v57(v58);
      v59 = sub_22BE36658();
      v57(v59);
      sub_22C1CF154();
      if (v44)
      {
        v65 = sub_22BE19808(v60);
        sub_22BE709BC(v65, v66, v67);
        v37 = a10;
      }

      *(v37 + 16) = v57;
      sub_22BE25AD8();
      v62 = *(v61 + 72);
      sub_22BE32EC8();
      sub_22C1CEB4C(v69, v63, v64);
      ++v35;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C1C3E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v13 = type metadata accessor for TranscriptProtoSpeechPackage.Phrase(0);
  v14 = sub_22BE179D8(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22BE17B98();
  sub_22BE3CFC4();
  v18 = MEMORY[0x28223BE20](v17);
  sub_22C1CEC74(v18, v19, v20, v21, v22, v23, v24, v25, v86);
  v26 = sub_22C26EB94();
  v27 = sub_22BE179D8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v32);
  sub_22C1CECB0();
  MEMORY[0x28223BE20](v33);
  sub_22BE19E94();
  sub_22BE38A28(v34);
  v35 = *(v12 + 16);
  v36 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE70A14(v36, v35, 0);
  v37 = a10;
  v92 = v12;
  if (v35)
  {
    v38 = 0;
    v89 = v35;
    v90 = *(v12 + 16);
    sub_22BE3766C();
    sub_22BE487F0();
    v88 = v39;
    while (v90 != v38)
    {
      v40 = sub_22C1CF034();
      v10(v40);
      v41 = sub_22C1CF25C();
      v10(v41);
      v10 = v35;
      v42 = sub_22C26EAE4();
      sub_22C1C3B30(v42, v43, v44, v45, v46, v47, v48, v49, v87, v88);
      sub_22BE34048();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v50 = sub_22C1CF248();
      (v12)(v50);
      v51 = sub_22BE37B20();
      (v12)(v51);
      sub_22BE391B4();
      if (v53)
      {
        v58 = sub_22BE1A028(v52);
        sub_22BE70A14(v58, v59, v60);
        v37 = a10;
      }

      ++v38;
      *(v37 + 16) = v91;
      sub_22BE25AD8();
      sub_22BE46DDC(v37 + v54);
      sub_22C1CEE6C();
      sub_22C1CEB4C(v55, v56, v57);
      v35 = v89;
      if (v89 == v38)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    sub_22BE487F0();
    v61 = v87;
    while (1)
    {
      v62 = *(v92 + 16);
      if (v35 == v62)
      {

        sub_22BE18478();
        return;
      }

      if (v35 >= v62)
      {
        break;
      }

      sub_22BE3766C();
      v65 = sub_22BE3CFD4(v63, v64);
      v10(v65);
      v66 = sub_22BE2684C();
      v10(v66);
      v10 = v93;
      v67 = sub_22C26EAE4();
      sub_22C1C3B30(v67, v68, v69, v70, v71, v72, v73, v74, v87, v88);
      sub_22BE34048();
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v75 = *(v29 + 8);
      v76 = sub_22BE37B20();
      v75(v76);
      v77 = sub_22BE36658();
      v75(v77);
      sub_22C1CF154();
      if (v53)
      {
        v83 = sub_22BE19808(v78);
        sub_22BE70A14(v83, v84, v85);
        v37 = a10;
      }

      *(v37 + 16) = v75;
      sub_22BE25AD8();
      v80 = *(v79 + 72);
      sub_22C1CEE6C();
      sub_22C1CEB4C(v61, v81, v82);
      ++v35;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C1C4190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = sub_22BE25D84();
  v15 = type metadata accessor for ContextProtoEntityMatch(v14);
  v16 = sub_22BE17A18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE193B0(v19, v75);
  v21 = MEMORY[0x28223BE20](v20);
  sub_22BE22D7C(v21, v22, v23, v24, v25, v26, v27, v28, v76);
  v29 = sub_22C270AF4();
  v30 = sub_22BE179D8(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v35);
  sub_22BE25ED0();
  v37 = MEMORY[0x28223BE20](v36);
  sub_22BE23730(v37, v38, v39, v40, v41, v42, v43, v44, v77);
  MEMORY[0x28223BE20](v45);
  sub_22BE26800();
  v46 = *(v13 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE2C294();
  sub_22BE70A6C(v47, v48, v49);
  sub_22BE3E47C();
  if (v46)
  {
    sub_22BE1C3D4();
    while (1)
    {
      sub_22C1CF13C();
      if (v50)
      {
        break;
      }

      sub_22BE39418();
      if (v61)
      {
        goto LABEL_22;
      }

      v51 = sub_22BE25BB8();
      v32(v51);
      v52 = sub_22C1CEC40();
      v32(v52);
      sub_22BE23360();
      ContextProtoEntityMatch.init(handwritten:)();
      if (v11)
      {
LABEL_17:

        v73 = sub_22BE203E8();
        v74(v73);

LABEL_19:
        sub_22C1CED0C();
        sub_22BE18478();
        return;
      }

      v53 = sub_22BE2902C();
      v54(v53);
      sub_22BE1B698();
      if (v61)
      {
        sub_22BE3D1E4(v55);
        sub_22C1CF178();
        sub_22BE70A6C(v58, v59, v60);
        v10 = a10;
      }

      v12 = (v12 + 1);
      *(v10 + 16) = v13;
      sub_22BE197A0();
      sub_22BE41538();
      sub_22C1CEB4C(v79, v56, v57);
      sub_22BE323D0();
      v32 = v78;
      if (v50)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    sub_22BE40C98();
    while (1)
    {
      sub_22BE447AC();
      if (v50)
      {

        goto LABEL_19;
      }

      if (v61)
      {
        break;
      }

      v62 = sub_22BE1A084();
      v12(v62);
      v63 = sub_22C1CEC40();
      v12(v63);
      sub_22C1CF124();
      ContextProtoEntityMatch.init(handwritten:)();
      if (v11)
      {
        goto LABEL_17;
      }

      v64 = sub_22BE203E8();
      v65(v64);
      sub_22C1CEC50();
      if (v61)
      {
        v70 = sub_22BE19808(v66);
        sub_22BE70A6C(v70, v71, v72);
        v10 = a10;
      }

      *(v10 + 16) = v12;
      sub_22BE197A0();
      sub_22BE41538();
      sub_22C1CEB4C(v67, v68, v69);
      sub_22BE27AB8();
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_22C1C4458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE38A98();
  v14 = type metadata accessor for TranscriptProtoShimParameter(0);
  v15 = sub_22BE17A18(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE193B0(v20, v84);
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  v91 = v22;
  v23 = sub_22BE183BC();
  v24 = type metadata accessor for ClientAction.ShimParameter(v23);
  v25 = sub_22BE17A18(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v30);
  sub_22BE23858();
  v32 = MEMORY[0x28223BE20](v31);
  sub_22BE23730(v32, v33, v34, v35, v36, v37, v38, v39, v85);
  v41 = MEMORY[0x28223BE20](v40);
  sub_22BE3E3EC(v41, v42, v43, v44, v45, v46, v47, v48, v86);
  v49 = *(v12 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22C1CF078();
  sub_22BE70B74(v50, v51, v52);
  sub_22BE35CC8();
  if (v49)
  {
    v53 = 0;
    v54 = *(v12 + 16);
    v55 = *(v27 + 80);
    sub_22C1CEC30();
    v87 = v56;
    while (v87 != v53)
    {
      sub_22BE27A88();
      if (v70)
      {
        goto LABEL_21;
      }

      sub_22BE36598();
      sub_22C1CEE54();
      sub_22C1CEAA4(v57, v13, v58);
      v59 = sub_22BE289D8();
      sub_22C1CEAA4(v59, v60, v27);
      sub_22BE351D8();
      TranscriptProtoShimParameter.init(handwritten:)();
      if (v11)
      {
LABEL_17:

        sub_22BE287E4();
        sub_22C1CEAFC();

LABEL_18:
        sub_22BE29F1C();
        sub_22BE18478();
        return;
      }

      sub_22BE287E4();
      sub_22C1CEAFC();
      sub_22BE182F0();
      if (v70)
      {
        v66 = sub_22BE1A028(v61);
        sub_22BE70B74(v66, v67, v68);
        v10 = a10;
      }

      ++v53;
      *(v10 + 16) = v27;
      v62 = *(v17 + 80);
      sub_22BE2C704();
      v63 = *(v17 + 72);
      sub_22BE38570();
      sub_22C1CEB4C(v90, v64, v65);
      if (v49 == v53)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    for (i = v89; ; i = sub_22BE3C654())
    {
      sub_22BE47E0C(i);
      if (v71)
      {

        goto LABEL_18;
      }

      if (v70)
      {
        break;
      }

      sub_22BE3766C();
      sub_22C1CEF8C(v72, v73);
      sub_22C1CEE54();
      sub_22C1CEAA4(v74, v88, v75);
      sub_22C1CEFE0();
      sub_22BE3E778();
      TranscriptProtoShimParameter.init(handwritten:)();
      if (v11)
      {
        goto LABEL_17;
      }

      sub_22BE287E4();
      sub_22C1CEAFC();
      sub_22BE182F0();
      if (v70)
      {
        v81 = sub_22BE1A028(v76);
        sub_22BE70B74(v81, v82, v83);
        v10 = a10;
      }

      *(v10 + 16) = v27;
      v77 = *(v17 + 80);
      sub_22BE2C704();
      v78 = *(v17 + 72);
      sub_22BE38570();
      sub_22C1CEB4C(v91, v79, v80);
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22C1C4730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v25;
  a20 = v26;
  sub_22BE48298();
  v205 = sub_22C270F24();
  v27 = sub_22BE179D8(v205);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17B98();
  sub_22BE4201C();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  sub_22BEC07BC(v33);
  v34 = sub_22BE5CE4C(&qword_27D9091A8, &qword_22C27FDA0);
  v35 = sub_22BE19448(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE183AC();
  sub_22BE486EC();
  v39 = MEMORY[0x28223BE20](v38);
  sub_22BE2BC40(v39, v40, v41, v42, v43, v44, v45, v46, v184);
  v204 = sub_22C26E684();
  v47 = sub_22BE179D8(v204);
  v198 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  sub_22BE17A44();
  sub_22BEC03A4(v51);
  v52 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v53 = sub_22BE19448(v52);
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22BE17B98();
  v192 = v56;
  sub_22BE1B99C();
  v58 = MEMORY[0x28223BE20](v57);
  sub_22C1CEC08(v58, v59, v60, v61, v62, v63, v64, v65, v185);
  v66 = type metadata accessor for TranscriptProtoRetrievedContextStatement(0);
  v67 = sub_22BE179D8(v66);
  v69 = *(v68 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22BE17B98();
  v191 = v70;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v71);
  sub_22BE19E94();
  v193 = v72;
  v73 = sub_22BE183BC();
  v202 = type metadata accessor for RetrievedContextStatement(v73);
  v74 = sub_22BE179D8(v202);
  v76 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v79);
  sub_22BE19490();
  v81 = v80;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v82);
  sub_22C1CEC1C();
  MEMORY[0x28223BE20](v83);
  sub_22BE1C17C();
  v84 = *(v22 + 16);
  v85 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE70BCC(v85, v84, 0);
  v86 = a10;
  v206 = v22;
  v201 = v76;
  if (v84)
  {
    v189 = v20;
    v87 = *(v76 + 80);
    sub_22BE19E14();
    sub_22BE41EA0(v22 + v88);
    sub_22BE417A8(*(v22 + 16));
    sub_22C1CEFD4(v198 + 8);
    sub_22BE271B0(v29 + 16);
    v89 = v21;
    v208 = v84;
    v188 = v29;
    v187 = v23;
    v190 = v81;
    while (1)
    {
      sub_22C1CF2AC();
      if (v91 == v90)
      {
        break;
      }

      if (v90 >= *(v22 + 16))
      {
        goto LABEL_25;
      }

      v92 = *(v76 + 72);
      v199 = v90;
      sub_22BE3CB90();
      sub_22BE23F2C();
      sub_22C1CEAA4(v93, v81, v94);
      sub_22C1CEAA4(v81, v189, v86);
      sub_22BE33554(&a14);
      v95 = sub_22BE261AC();
      v96(v95);
      v97 = sub_22C26E674();
      v98 = sub_22C26E654();
      v210 = v89;
      v100 = v99;
      v101 = type metadata accessor for TranscriptProtoStatementID(0);
      v102 = v192 + *(v101 + 24);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE33554(&a13);
      v103(v203, v204);
      *v192 = v97;
      *(v192 + 8) = v98;
      *(v192 + 16) = v100;
      sub_22BE187DC();
      sub_22BE19DC4(v104, v105, v106, v101);
      sub_22BE46818(v202);
      v108(v194, v189 + v107, v205);
      ContextProtoRetrievedContext.init(context:)(v194, v109, v110, v111, v112, v113, v114, v115, v186, v187, SWORD2(v187), SBYTE6(v187), SHIBYTE(v187));
      v89 = v210;
      if (v210)
      {
        v151 = v192;
LABEL_21:

        sub_22BE1813C();
        sub_22C1CEAFC();
        sub_22BE2565C();
        sub_22C1CEAFC();
        sub_22BE233E8(v151, &qword_27D9090F8, &unk_22C2AE4A0);

LABEL_22:
        sub_22BE18478();
        return;
      }

      v116 = type metadata accessor for ContextProtoRetrievedContext(0);
      v117 = sub_22BE360A0();
      sub_22BE19DC4(v117, v118, v119, v116);
      sub_22BE28D2C();
      sub_22BE19DC4(v120, v121, v122, v123);
      sub_22BE43214();
      sub_22BE1A140();
      sub_22BE3A034(v124, v125, v126, v116);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1813C();
      sub_22C1CEAFC();
      v81 = v190;
      sub_22C1CEAFC();
      v127 = sub_22BE36658();
      sub_22BE23490(v127, v128, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE23490(v24, v191 + v97, &qword_27D9091A8, &qword_22C27FDA0);
      sub_22BE182F0();
      if (v130)
      {
        v134 = sub_22BE1A028(v129);
        sub_22BE70BCC(v134, v135, v136);
        v86 = a10;
      }

      *(v86 + 16) = v97;
      sub_22BE197A0();
      sub_22C1CEE24();
      sub_22C1CEB4C(v191, v131, v132);
      v84 = v208;
      v22 = v206;
      v76 = v201;
      v23 = v187;
      v29 = v188;
      v133 = v198;
      if (v208 == v199 + 1)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v133 = v198;
    v89 = v21;
LABEL_11:
    v200 = (v133 + 16);
    while (1)
    {
      v137 = *(v22 + 16);
      if (v84 == v137)
      {

        goto LABEL_22;
      }

      if (v84 >= v137)
      {
        break;
      }

      v209 = v84;
      v138 = *(v76 + 80);
      sub_22BE19E14();
      v139 = *(v76 + 72);
      sub_22BE23F2C();
      sub_22C1CEAA4(v140, v23, v141);
      v142 = sub_22BE2BA80();
      sub_22C1CEAA4(v142, v143, v86);
      v144 = *v200;
      v145 = sub_22BE261AC();
      v146(v145);
      v147 = sub_22C26E674();
      v148 = sub_22C26E654();
      v149 = sub_22C1CF35C();
      sub_22C1CF2CC(v149);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v150 = sub_22BE2BD4C();
      v151 = v207;
      v152(v150, v204);
      *v207 = v147;
      *(v207 + 8) = v148;
      *(v207 + 16) = v29;
      v29 = v196;
      v153 = sub_22BE360A0();
      sub_22BE19DC4(v153, v154, v155, v76);
      sub_22C1CF1F4();
      v157(v197, v195 + v156, v205);
      ContextProtoRetrievedContext.init(context:)(v197, v158, v159, v160, v161, v162, v163, v164, v186, v187, SWORD2(v187), SBYTE6(v187), SHIBYTE(v187));
      if (v89)
      {
        goto LABEL_21;
      }

      v165 = type metadata accessor for ContextProtoRetrievedContext(0);
      sub_22BE187DC();
      sub_22BE19DC4(v166, v167, v168, v165);
      sub_22BE1A140();
      sub_22BE19DC4(v169, v170, v171, v76);
      sub_22BE43214();
      sub_22BE1A140();
      sub_22BE3A034(v172, v173, v174, v165);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      sub_22BE1813C();
      sub_22C1CEAFC();
      sub_22BE2565C();
      sub_22C1CEAFC();
      v175 = sub_22BE3C968();
      sub_22BE23490(v175, v176, &qword_27D9090F8, &unk_22C2AE4A0);
      sub_22BE23490(v196, v193 + v148, &qword_27D9091A8, &qword_22C27FDA0);
      v178 = *(v86 + 16);
      v177 = *(v86 + 24);
      if (v178 >= v177 >> 1)
      {
        sub_22BE3D1E4(v177);
        sub_22BE39E18();
        sub_22BE70BCC(v181, v182, v183);
      }

      *(v86 + 16) = v178 + 1;
      sub_22BE197A0();
      sub_22C1CEE24();
      sub_22C1CEB4C(v193, v179, v180);
      v84 = v209 + 1;
      v22 = v206;
      v76 = v201;
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_22C1C4F4C(uint64_t a1)
{
  v2 = sub_22C271944();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v56 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v47 - v7;
  MEMORY[0x28223BE20](v8);
  v59 = &v47 - v9;
  MEMORY[0x28223BE20](v10);
  v58 = &v47 - v11;
  MEMORY[0x28223BE20](v12);
  v64 = &v47 - v13;
  MEMORY[0x28223BE20](v14);
  v65 = &v47 - v15;
  v16 = *(a1 + 16);
  v67 = MEMORY[0x277D84F90];
  result = sub_22BE70C7C(0, v16, 0);
  v18 = v67;
  v62 = *MEMORY[0x277D1F170];
  v57 = *MEMORY[0x277D1F188];
  v51 = *MEMORY[0x277D1F180];
  v50 = *MEMORY[0x277D1F198];
  v49 = *MEMORY[0x277D1F178];
  v48 = *MEMORY[0x277D1F1A0];
  v61 = a1;
  if (v16)
  {
    v19 = 0;
    v20 = *(a1 + 16);
    v54 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v55 = v20;
    v52 = v3 + 88;
    v53 = v3 + 16;
    v63 = (v3 + 8);
    v66 = v16;
    while (v55 != v19)
    {
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_45;
      }

      v21 = *(v3 + 16);
      v22 = v59;
      v21(v59, v54 + *(v3 + 72) * v19, v2);
      v23 = v60;
      v21(v60, v22, v2);
      v24 = v56;
      v21(v56, v23, v2);
      v25 = (*(v3 + 88))(v24, v2);
      if (v25 == v62)
      {
        v26 = 0;
      }

      else if (v25 == v57)
      {
        v26 = 1;
      }

      else if (v25 == v51)
      {
        v26 = 2;
      }

      else if (v25 == v50)
      {
        v26 = 3;
      }

      else if (v25 == v49)
      {
        v26 = 4;
      }

      else
      {
        if (v25 != v48)
        {
          v44 = v60;
          v65 = v59;
          v43 = v56;
LABEL_42:

          sub_22C108358();
          swift_allocError();
          *v45 = 0;
          swift_willThrow();
          v46 = *v63;
          (*v63)(v44, v2);
          v46(v65, v2);
          v46(v43, v2);

          return v18;
        }

        v26 = 5;
      }

      v27 = *v63;
      (*v63)(v60, v2);
      result = (v27)(v59, v2);
      v67 = v18;
      v29 = *(v18 + 16);
      v28 = *(v18 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_22BE70C7C(v28 > 1, v29 + 1, 1);
        v18 = v67;
      }

      ++v19;
      *(v18 + 16) = v29 + 1;
      *(v18 + v29 + 32) = v26;
      v16 = v66;
      a1 = v61;
      if (v66 == v19)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
LABEL_20:
    v60 = (v3 + 88);
    v63 = (v3 + 8);
    v30 = v64;
    while (1)
    {
      v31 = *(a1 + 16);
      if (v16 == v31)
      {

        return v18;
      }

      if (v16 >= v31)
      {
        break;
      }

      v32 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v33 = *(v3 + 72);
      v66 = v16;
      v34 = v32 + v33 * v16;
      v35 = *(v3 + 16);
      v36 = v65;
      v35(v65, v34, v2);
      v35(v30, v36, v2);
      v37 = v58;
      v35(v58, v30, v2);
      v38 = (*(v3 + 88))(v37, v2);
      if (v38 == v62)
      {
        v39 = 0;
      }

      else if (v38 == v57)
      {
        v39 = 1;
      }

      else if (v38 == v51)
      {
        v39 = 2;
      }

      else if (v38 == v50)
      {
        v39 = 3;
      }

      else if (v38 == v49)
      {
        v39 = 4;
      }

      else
      {
        if (v38 != v48)
        {
          v43 = v58;
          v44 = v64;
          goto LABEL_42;
        }

        v39 = 5;
      }

      v40 = *v63;
      (*v63)(v64, v2);
      result = (v40)(v65, v2);
      v67 = v18;
      v42 = *(v18 + 16);
      v41 = *(v18 + 24);
      if (v42 >= v41 >> 1)
      {
        result = sub_22BE70C7C(v41 > 1, v42 + 1, 1);
        v18 = v67;
      }

      *(v18 + 16) = v42 + 1;
      *(v18 + v42 + 32) = v39;
      v16 = v66 + 1;
      a1 = v61;
    }

    __break(1u);
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void sub_22C1C557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v23;
  a20 = v24;
  v248 = v21;
  v26 = v25;
  v27 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  v28 = sub_22BE19448(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE17B98();
  v230 = v31;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E94();
  sub_22BE190A8(v33);
  v34 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  v35 = sub_22BE19448(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v38);
  sub_22BE19E94();
  v231 = v39;
  sub_22BE183BC();
  v247 = sub_22C270FD4();
  v40 = sub_22BE179D8(v247);
  v42 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v45);
  sub_22BE19E94();
  sub_22BE190A8(v46);
  v47 = sub_22BE5CE4C(&qword_27D909138, &qword_22C2B5A80);
  v48 = sub_22BE19448(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v51);
  sub_22BE19E94();
  sub_22BE18950(v52);
  v240 = sub_22C26E684();
  v53 = sub_22BE179D8(v240);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v53);
  sub_22BE17A44();
  v239 = v58;
  v59 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v60 = sub_22BE19448(v59);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v60);
  sub_22BE17B98();
  v244 = v63;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v64);
  sub_22BE1C17C();
  v65 = type metadata accessor for TranscriptProtoSpanMatchedEntityStatement(0);
  v233 = sub_22BE179D8(v65);
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v233);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v68);
  sub_22BE19E94();
  v70 = sub_22BE18950(v69);
  v238 = type metadata accessor for SpanMatchedEntityStatement(v70);
  v71 = sub_22BE179D8(v238);
  v73 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  sub_22BE17B98();
  sub_22BE3BF80();
  MEMORY[0x28223BE20](v76);
  sub_22BE409D8();
  MEMORY[0x28223BE20](v77);
  sub_22BE19490();
  v235 = v78;
  sub_22BE1B99C();
  v80 = MEMORY[0x28223BE20](v79);
  sub_22BE2BC40(v80, v81, v82, v83, v84, v85, v86, v87, v217);
  v88 = *(v26 + 16);
  v89 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE70CF4(v89, v88, 0);
  v90 = a10;
  v241 = v26;
  v237 = v22;
  v232 = v73;
  if (!v88)
  {
    goto LABEL_9;
  }

  v91 = 0;
  sub_22BE3766C();
  sub_22BE41EA0(v26 + v92);
  sub_22C1CEFB0(*(v26 + 16));
  sub_22C1CEFD4(v55 + 8);
  sub_22BE271B0(v42 + 16);
  v245 = v88;
  v225 = v42;
  do
  {
    sub_22BE3974C();
    if (v93 == v91)
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return;
    }

    if (v91 >= *(v26 + 16))
    {
      goto LABEL_21;
    }

    v94 = *(v73 + 72);
    v236 = v91;
    sub_22BE3CB90();
    sub_22BE36D0C();
    sub_22C1CEAA4(v95, v242, v96);
    sub_22C1CEAA4(v242, v243, v91);
    sub_22BE33554(&a14);
    sub_22BE25300();
    v97();
    v98 = sub_22C26E674();
    v99 = sub_22C26E654();
    v100 = sub_22C1CF35C();
    sub_22C1CF2CC(v100);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE33554(&a13);
    v101 = sub_22BE336E8();
    v102(v101);
    *v244 = v98;
    *(v244 + 8) = v99;
    *(v244 + 16) = v26;
    sub_22BE187DC();
    sub_22BE19DC4(v103, v104, v105, v42);
    sub_22BE46818(v238);
    v107(v228, v243 + v106, v247);
    sub_22C270FB4();
    sub_22C105684(v230, v108, v109, v110, v111, v112, v113, v114, v218, v221);
    if (v248)
    {

      v22 = v244;
      goto LABEL_18;
    }

    v115 = sub_22C270FC4();
    sub_22C1C4190(v115, v116, v117, v118, v119, v120, v121, v122, v219, v222);
    v248 = 0;
    v123 = sub_22BE17BC4();
    v124 = type metadata accessor for ContextProtoSpanMatchedEntity(v123);
    sub_22C1CF0A4(v124);
    sub_22C272594();
    sub_22BE1A140();
    sub_22BE19DC4(v125, v126, v127, v128);
    v129 = v227 + *(v26 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v130 = sub_22BE2BD4C();
    v131(v130, v247);
    sub_22BE23490(v229, v227 + v98, &qword_27D909128, &qword_22C294AA0);
    *v227 = v244;
    sub_22BE187DC();
    sub_22BE19DC4(v132, v133, v134, v26);
    sub_22BE1A140();
    sub_22BE19DC4(v135, v136, v137, v42);
    v138 = *(v233 + 20);
    sub_22BE28D2C();
    sub_22BE3A034(v139, v140, v141, v142);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE272F4();
    sub_22C1CEAFC();
    sub_22C1CEAFC();
    sub_22BE23490(v244, v20, &qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE23490(v227, v20 + v138, &qword_27D909138, &qword_22C2B5A80);
    a10 = v90;
    v144 = *(v90 + 16);
    v143 = *(v90 + 24);
    if (v144 >= v143 >> 1)
    {
      v148 = sub_22BE19808(v143);
      sub_22BE70CF4(v148, v149, v150);
      v90 = a10;
    }

    v91 = (v91 + 1);
    *(v90 + 16) = v144 + 1;
    sub_22BE25AD8();
    sub_22BE3CBF8(v145);
    sub_22C1CEB4C(v20, v146, v147);
    v88 = v245;
    v26 = v241;
    v22 = v237;
    v73 = v232;
    v42 = v225;
  }

  while (v245 != (v236 + 1));
  while (1)
  {
LABEL_9:
    v151 = *(v26 + 16);
    if (v88 == v151)
    {

      goto LABEL_19;
    }

    if (v88 >= v151)
    {
      goto LABEL_22;
    }

    sub_22BE3766C();
    v152 = *(v73 + 72);
    v246 = v88;
    sub_22BE36D0C();
    sub_22C1CEAA4(v153, v234, v154);
    sub_22BE354D0();
    sub_22C1CEAA4(v155, v156, v157);
    v158 = *(v55 + 16);
    v159 = sub_22BE200D4();
    v160(v159);
    v161 = sub_22C26E674();
    v162 = sub_22C26E654();
    v164 = v163;
    v165 = type metadata accessor for TranscriptProtoStatementID(0);
    v166 = v22 + *(v165 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    (*(v55 + 8))(v239, v240);
    *v22 = v161;
    *(v22 + 8) = v162;
    *(v22 + 16) = v164;
    sub_22BE187DC();
    sub_22BE19DC4(v167, v168, v169, v165);
    (*(v42 + 16))(v226, v235 + *(v238 + 20), v247);
    sub_22BE204A4(&a9);
    sub_22C270FB4();
    sub_22C105684(v161, v170, v171, v172, v173, v174, v175, v176, v218, v221);
    if (v248)
    {
      break;
    }

    v177 = sub_22C270FC4();
    sub_22C1C4190(v177, v178, v179, v180, v181, v182, v183, v184, v220, v223);
    v248 = 0;
    v186 = v185;
    v187 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
    v188 = *(v187 + 20);
    sub_22C272594();
    sub_22BE1A140();
    sub_22BE19DC4(v189, v190, v191, v192);
    v193 = v224 + *(v187 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v194 = sub_22BE2BD4C();
    v195(v194, v247);
    sub_22BE23490(v231, v224 + v188, &qword_27D909128, &qword_22C294AA0);
    *v224 = v186;
    sub_22BE187DC();
    sub_22BE19DC4(v196, v197, v198, v187);
    sub_22BE1A140();
    sub_22BE19DC4(v199, v200, v201, v165);
    v202 = *(v233 + 20);
    sub_22BE28D2C();
    sub_22BE3A034(v203, v204, v205, v206);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE272F4();
    sub_22C1CEAFC();
    sub_22C1CEAFC();
    v22 = v237;
    sub_22BE23490(v237, v221, &qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE23490(v224, v221 + v202, &qword_27D909138, &qword_22C2B5A80);
    a10 = v90;
    v208 = *(v90 + 16);
    v207 = *(v90 + 24);
    if (v208 >= v207 >> 1)
    {
      v212 = sub_22BE1A028(v207);
      sub_22BE70CF4(v212, v213, v214);
      v90 = a10;
    }

    *(v90 + 16) = v208 + 1;
    sub_22BE25AD8();
    sub_22BE3CBF8(v209);
    sub_22C1CEB4C(v221, v210, v211);
    v88 = v246 + 1;
    v26 = v241;
    v73 = v232;
  }

LABEL_18:
  v215 = sub_22BE2BD4C();
  v216(v215, v247);
  sub_22BE272F4();
  sub_22C1CEAFC();
  sub_22BE35838();
  sub_22C1CEAFC();
  sub_22BE233E8(v22, &qword_27D9090F8, &unk_22C2AE4A0);

LABEL_19:
  sub_22BE18478();
}

void sub_22C1C5FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  sub_22BE38A98();
  v14 = type metadata accessor for TranscriptProtoStatementResult(0);
  v15 = sub_22BE17A18(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BE193B0(v20, v84);
  MEMORY[0x28223BE20](v21);
  sub_22BE19E94();
  v91 = v22;
  v23 = sub_22BE183BC();
  v24 = type metadata accessor for StatementResult(v23);
  v25 = sub_22BE17A18(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE183AC();
  sub_22BE486EC();
  MEMORY[0x28223BE20](v30);
  sub_22BE23858();
  v32 = MEMORY[0x28223BE20](v31);
  sub_22BE23730(v32, v33, v34, v35, v36, v37, v38, v39, v85);
  v41 = MEMORY[0x28223BE20](v40);
  sub_22BE3E3EC(v41, v42, v43, v44, v45, v46, v47, v48, v86);
  v49 = *(v12 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22C1CF078();
  sub_22BE70DA4(v50, v51, v52);
  sub_22BE35CC8();
  if (v49)
  {
    v53 = 0;
    v54 = *(v12 + 16);
    v55 = *(v27 + 80);
    sub_22C1CEC30();
    v87 = v56;
    while (v87 != v53)
    {
      sub_22BE27A88();
      if (v70)
      {
        goto LABEL_21;
      }

      sub_22BE36598();
      sub_22BE3CD58();
      sub_22C1CEAA4(v57, v13, v58);
      v59 = sub_22BE289D8();
      sub_22C1CEAA4(v59, v60, v27);
      sub_22BE351D8();
      TranscriptProtoStatementResult.init(handwritten:)();
      if (v11)
      {
LABEL_17:

        sub_22BE29F54();
        sub_22C1CEAFC();

LABEL_18:
        sub_22BE29F1C();
        sub_22BE18478();
        return;
      }

      sub_22BE29F54();
      sub_22C1CEAFC();
      sub_22BE182F0();
      if (v70)
      {
        v66 = sub_22BE1A028(v61);
        sub_22BE70DA4(v66, v67, v68);
        v10 = a10;
      }

      ++v53;
      *(v10 + 16) = v27;
      v62 = *(v17 + 80);
      sub_22BE2C704();
      v63 = *(v17 + 72);
      sub_22C1CED1C();
      sub_22C1CEB4C(v90, v64, v65);
      if (v49 == v53)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    for (i = v89; ; i = sub_22BE3C654())
    {
      sub_22BE47E0C(i);
      if (v71)
      {

        goto LABEL_18;
      }

      if (v70)
      {
        break;
      }

      sub_22BE3766C();
      sub_22C1CEF8C(v72, v73);
      sub_22BE3CD58();
      sub_22C1CEAA4(v74, v88, v75);
      sub_22C1CEFE0();
      sub_22BE3E778();
      TranscriptProtoStatementResult.init(handwritten:)();
      if (v11)
      {
        goto LABEL_17;
      }

      sub_22BE29F54();
      sub_22C1CEAFC();
      sub_22BE182F0();
      if (v70)
      {
        v81 = sub_22BE1A028(v76);
        sub_22BE70DA4(v81, v82, v83);
        v10 = a10;
      }

      *(v10 + 16) = v27;
      v77 = *(v17 + 80);
      sub_22BE2C704();
      v78 = *(v17 + 72);
      sub_22C1CED1C();
      sub_22C1CEB4C(v91, v79, v80);
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22C1C62D0(uint64_t a1)
{
  v3 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v33 - v7;
  v8 = sub_22C271904();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v15);
  v41 = &v33 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  v20 = *(a1 + 16);
  v47 = MEMORY[0x277D84F90];
  sub_22BE70DFC(0, v20, 0);
  v21 = v47;
  v42 = v19;
  v40 = v20;
  if (v20)
  {
    v37 = v14;
    v22 = 0;
    v38 = *(a1 + 16);
    v36 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v34 = v9;
    v35 = v9 + 16;
    v46 = (v9 + 8);
    while (v38 != v22)
    {
      if (v22 >= *(a1 + 16))
      {
        goto LABEL_20;
      }

      v19 = v37;
      v23 = v36 + *(v9 + 72) * v22;
      v24 = *(v9 + 16);
      v24(v37, v23, v8);
      v24(v39, v19, v8);
      ContextProtoDynamicEnumerationEntity.init(handwritten:)();
      if (v1)
      {
LABEL_16:

        (*v46)(v19, v8);

        return;
      }

      (*v46)(v19, v8);
      v47 = v21;
      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_22BE70DFC(v25 > 1, v26 + 1, 1);
        v21 = v47;
      }

      ++v22;
      *(v21 + 16) = v26 + 1;
      sub_22C1CEB4C(v45, v21 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v26, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      v19 = v42;
      v9 = v34;
      if (v40 == v22)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v39 = (v9 + 16);
    v45 = v1;
    v46 = (v9 + 8);
    for (i = v40; ; ++i)
    {
      v28 = *(a1 + 16);
      if (i == v28)
      {

        return;
      }

      if (i >= v28)
      {
        break;
      }

      v29 = *(v9 + 16);
      v29(v19, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * i, v8);
      v29(v41, v19, v8);
      v30 = v45;
      ContextProtoDynamicEnumerationEntity.init(handwritten:)();
      if (v30)
      {
        goto LABEL_16;
      }

      v45 = 0;
      (*v46)(v19, v8);
      v47 = v21;
      v32 = *(v21 + 16);
      v31 = *(v21 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22BE70DFC(v31 > 1, v32 + 1, 1);
        v21 = v47;
      }

      *(v21 + 16) = v32 + 1;
      sub_22C1CEB4C(v44, v21 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v32, type metadata accessor for ContextProtoDynamicEnumerationEntity);
      v19 = v42;
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_22C1C67A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v25;
  a20 = v26;
  v28 = v27;
  v180 = sub_22C271904();
  v29 = sub_22BE179D8(v180);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  sub_22BE17B98();
  v172 = v34;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v35);
  sub_22BE19E94();
  v175 = v36;
  v37 = sub_22BE5CE4C(&qword_27D9090E8, &qword_22C2B5A90);
  v38 = sub_22BE19448(v37);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE17B98();
  sub_22BE4201C();
  MEMORY[0x28223BE20](v41);
  sub_22BE19E94();
  v174 = v42;
  sub_22BE183BC();
  v179 = sub_22C26E684();
  v43 = sub_22BE179D8(v179);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  sub_22BE17A44();
  sub_22BEC03A4(v46);
  v47 = sub_22BE5CE4C(&qword_27D9090F8, &unk_22C2AE4A0);
  v48 = sub_22BE19448(v47);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v48);
  sub_22BE3C8B8();
  v52 = MEMORY[0x28223BE20](v51);
  sub_22C1CEC08(v52, v53, v54, v55, v56, v57, v58, v59, v165);
  v60 = type metadata accessor for TranscriptProtoDynamicEnumerationEntityStatement(0);
  v61 = sub_22BE179D8(v60);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v64);
  sub_22BE19E94();
  v170 = v65;
  v66 = sub_22BE183BC();
  v177 = type metadata accessor for DynamicEnumerationEntityStatement(v66);
  v67 = sub_22BE179D8(v177);
  v69 = v68;
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v67);
  sub_22BE17B98();
  v169 = v72;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v73);
  sub_22BE23858();
  MEMORY[0x28223BE20](v74);
  sub_22BE19490();
  v173 = v75;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v76);
  sub_22BE25A90();
  v77 = *(v28 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE2C294();
  sub_22BE70E54(v78, v79, v80);
  sub_22C1CF050();
  v181 = v28;
  v176 = v69;
  if (!v77)
  {
    goto LABEL_9;
  }

  v167 = v20;
  v81 = 0;
  v82 = *(v69 + 80);
  sub_22C1CEC64();
  sub_22BE41EA0(v83);
  sub_22BE417A8(*(v28 + 16));
  sub_22C1CF214();
  sub_22C1CEFD4(v84);
  sub_22BE271B0(v31 + 16);
  v166 = v23;
  v183 = v77;
  v168 = v24;
  while (1)
  {
    sub_22C1CF2AC();
    if (v85 == v81)
    {
      goto LABEL_19;
    }

    if (v81 >= *(v28 + 16))
    {
      goto LABEL_20;
    }

    v86 = *(v69 + 72);
    sub_22BE3CB90();
    sub_22C1CEDF4();
    sub_22C1CEAA4(v87, v24, v88);
    sub_22C1CEAA4(v24, v169, v21);
    sub_22BE33554(&a14);
    v89 = sub_22BE31038();
    v90(v89);
    v91 = sub_22C26E674();
    v92 = sub_22C26E654();
    v94 = v93;
    v95 = type metadata accessor for TranscriptProtoStatementID(0);
    v96 = v167;
    v97 = v167 + *(v95 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE33554(&a13);
    v98 = sub_22BE336E8();
    v99(v98);
    *v167 = v91;
    *(v167 + 8) = v92;
    *(v167 + 16) = v94;
    v100 = sub_22BE360A0();
    sub_22BE19DC4(v100, v101, v102, v95);
    sub_22BE46818(v177);
    v21 = v172;
    v104(v172, v169 + v103, v180);
    ContextProtoDynamicEnumerationEntity.init(handwritten:)();
    if (v22)
    {
      break;
    }

    v105 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
    sub_22BE187DC();
    sub_22BE19DC4(v106, v107, v108, v105);
    sub_22BE28D2C();
    v110 = v109;
    sub_22BE19DC4(v109, v111, v112, v113);
    sub_22BE43214();
    sub_22BE1A140();
    sub_22BE3A034(v114, v115, v116, v105);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    sub_22BE3E9A8();
    sub_22C1CEAFC();
    sub_22BE23490(v167, v110, &qword_27D9090F8, &unk_22C2AE4A0);
    sub_22BE23490(v171, v110 + v91, &qword_27D9090E8, &qword_22C2B5A90);
    v24 = v168;
    sub_22BE2565C();
    sub_22C1CEAFC();
    v118 = *(v184 + 16);
    v117 = *(v184 + 24);
    if (v118 >= v117 >> 1)
    {
      v123 = sub_22BE1A028(v117);
      sub_22BE70E54(v123, v124, v125);
      sub_22C1CF050();
    }

    ++v81;
    *(v184 + 16) = v118 + 1;
    sub_22BE25AD8();
    sub_22BE46DDC(v120 + v119);
    sub_22BE3C518();
    sub_22C1CEB4C(v110, v121, v122);
    v77 = v183;
    v28 = v181;
    v23 = v166;
    v69 = v176;
    if (v183 == v81)
    {
      while (1)
      {
LABEL_9:
        sub_22BE447AC();
        if (v127)
        {

          goto LABEL_17;
        }

        if (v126)
        {
          break;
        }

        v128 = *(v69 + 80);
        sub_22C1CEC64();
        v129 = *(v69 + 72);
        sub_22C1CEDF4();
        sub_22C1CEAA4(v130, v23, v131);
        sub_22C1CEAA4(v23, v173, v21);
        sub_22C108D54();
        v21 = v178;
        v132 = sub_22BE31038();
        v133(v132);
        v134 = sub_22C26E674();
        v135 = sub_22C26E654();
        v136 = sub_22C1CF35C();
        sub_22C1CF2CC(v136);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        v137 = sub_22BE2BD4C();
        v96 = v182;
        v138(v137, v179);
        *v182 = v134;
        *(v182 + 8) = v135;
        *(v182 + 16) = v77;
        v139 = sub_22BE360A0();
        sub_22BE19DC4(v139, v140, v141, v23);
        sub_22C1CF1F4();
        v143(v175, v173 + v142, v180);
        ContextProtoDynamicEnumerationEntity.init(handwritten:)();
        if (v22)
        {
          goto LABEL_16;
        }

        v144 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
        sub_22BE187DC();
        sub_22BE19DC4(v145, v146, v147, v144);
        sub_22BE1A140();
        sub_22BE19DC4(v148, v149, v150, v23);
        sub_22BE43214();
        sub_22BE1A140();
        sub_22BE3A034(v151, v152, v153, v144);
        _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
        sub_22BE3E9A8();
        sub_22C1CEAFC();
        v154 = sub_22BE3C968();
        sub_22BE23490(v154, v155, &qword_27D9090F8, &unk_22C2AE4A0);
        sub_22BE23490(v174, v170 + v135, &qword_27D9090E8, &qword_22C2B5A90);
        sub_22C1CEAFC();
        v157 = *(v184 + 16);
        v156 = *(v184 + 24);
        if (v157 >= v156 >> 1)
        {
          sub_22BE3D1E4(v156);
          sub_22BE39E18();
          sub_22BE70E54(v162, v163, v164);
          sub_22C1CF050();
        }

        *(v184 + 16) = v157 + 1;
        sub_22BE25AD8();
        v159 = *(v158 + 72);
        sub_22BE3C518();
        sub_22C1CEB4C(v170, v160, v161);
        ++v77;
        v69 = v176;
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }
  }

LABEL_16:
  sub_22BE3E9A8();
  sub_22C1CEAFC();
  sub_22BE233E8(v96, &qword_27D9090F8, &unk_22C2AE4A0);

  sub_22C1CEAFC();

LABEL_17:
  sub_22BE18478();
}

void sub_22C1C6FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v13 = v12;
  v14 = type metadata accessor for TranscriptProtoResponseParameter(0);
  v87 = sub_22BE179D8(v14);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v87);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v17);
  sub_22BE39EE8();
  v86 = sub_22C26FA04();
  v18 = sub_22BE179D8(v86);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v23);
  sub_22C1CEC88();
  MEMORY[0x28223BE20](v24);
  sub_22BE19E94();
  v82 = v25;
  v26 = *(v13 + 16);
  v27 = sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE70EAC(v27, v26, 0);
  v28 = a10;
  v29 = &unk_22C28E000;
  v85 = v20;
  if (v26)
  {
    v30 = 0;
    v81 = *(v13 + 16);
    v31 = *(v20 + 80);
    sub_22C1CEC30();
    v79 = v32;
    sub_22BE36638(v20 + 16);
    sub_22C1CEFB0(v20 + 8);
    v77 = *(v33 + 1696);
    v78 = v26;
    while (v81 != v30)
    {
      v104 = v28;
      v34 = *(v20 + 16);
      v34(v84, v79 + *(v20 + 72) * v30, v86);
      v35 = sub_22BE260B8();
      (v34)(v35);
      v36 = sub_22C26F9B4();
      v96 = v37;
      v98 = v36;
      v38 = sub_22C26F9D4();
      v100 = v39;
      v102 = v38;
      v40 = sub_22C26F9C4();
      v92 = v41;
      v94 = v40;
      v90 = sub_22C26F9F4();
      v88 = sub_22C26F9E4();
      v83 = v42;
      LOBYTE(v34) = sub_22C26F994();
      *(v10 + 16) = v77;
      v43 = v10 + *(v87 + 40);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v44 = *(v20 + 8);
      v45 = sub_22BE29264();
      v44(v45);
      (v44)(v84, v86);
      *v10 = v98;
      *(v10 + 8) = v96;
      sub_22BF158B4(*(v10 + 16), *(v10 + 24));
      *(v10 + 16) = v102;
      *(v10 + 24) = v100;
      *(v10 + 32) = v94;
      *(v10 + 40) = v92;
      *(v10 + 48) = v90;
      *(v10 + 56) = v88;
      *(v10 + 64) = v83;
      *(v10 + 72) = v34;
      v28 = v104;
      sub_22BE35D84();
      if (v84 >= v46 >> 1)
      {
        sub_22BE3D1E4(v46);
        sub_22BE39E18();
        sub_22BE70EAC(v49, v50, v51);
        v28 = a10;
      }

      ++v30;
      *(v28 + 16) = v84 + 1;
      sub_22BE197A0();
      sub_22C1CED54();
      sub_22C1CEB4C(v10, v47, v48);
      v26 = v78;
      v20 = v85;
      v29 = &unk_22C28E000;
      if (v78 == v30)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v80 = v29[106];
    while (1)
    {
      v52 = *(v13 + 16);
      if (v26 == v52)
      {

        sub_22BE18478();
        return;
      }

      if (v26 >= v52)
      {
        break;
      }

      v53 = *(v85 + 80);
      sub_22BE19E14();
      v56 = *(v85 + 16);
      v56(v82, v54 + v55 + *(v85 + 72) * v26, v86);
      v57 = sub_22BE261AC();
      (v56)(v57);
      v58 = sub_22C26F9B4();
      v97 = v59;
      v99 = v58;
      v60 = sub_22C26F9D4();
      v101 = v61;
      v103 = v60;
      v62 = sub_22C26F9C4();
      v93 = v63;
      v95 = v62;
      v91 = sub_22C26F9F4();
      v64 = sub_22C26F9E4();
      v89 = v65;
      v66 = sub_22C26F994();
      *(v11 + 16) = v80;
      v67 = v11 + *(v87 + 40);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
      v68 = *(v85 + 8);
      v68(v84, v86);
      v69 = sub_22BE2684C();
      (v68)(v69);
      *v11 = v99;
      *(v11 + 8) = v97;
      sub_22BF158B4(*(v11 + 16), *(v11 + 24));
      *(v11 + 16) = v103;
      *(v11 + 24) = v101;
      *(v11 + 32) = v95;
      *(v11 + 40) = v93;
      *(v11 + 48) = v91;
      *(v11 + 56) = v64;
      *(v11 + 64) = v89;
      *(v11 + 72) = v66;
      sub_22BE35D84();
      sub_22BE3FFA0();
      if (v71)
      {
        sub_22BE3D1E4(v70);
        sub_22BE31778();
        sub_22BE70EAC(v74, v75, v76);
        v28 = a10;
      }

      *(v28 + 16) = v68;
      sub_22BE197A0();
      sub_22C1CED54();
      sub_22C1CEB4C(v11, v72, v73);
      ++v26;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22C1C7468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = sub_22BE25D84();
  v15 = type metadata accessor for TranscriptProtoInterpretedStatementResult(v14);
  v16 = sub_22BE17A18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE193B0(v19, v75);
  v21 = MEMORY[0x28223BE20](v20);
  sub_22BE22D7C(v21, v22, v23, v24, v25, v26, v27, v28, v76);
  v29 = sub_22C2700F4();
  v30 = sub_22BE179D8(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v35);
  sub_22BE25ED0();
  v37 = MEMORY[0x28223BE20](v36);
  sub_22BE23730(v37, v38, v39, v40, v41, v42, v43, v44, v77);
  MEMORY[0x28223BE20](v45);
  sub_22BE26800();
  v46 = *(v13 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE2C294();
  sub_22BE70F5C(v47, v48, v49);
  sub_22BE3E47C();
  if (v46)
  {
    sub_22BE1C3D4();
    while (1)
    {
      sub_22C1CF13C();
      if (v50)
      {
        break;
      }

      sub_22BE39418();
      if (v61)
      {
        goto LABEL_22;
      }

      v51 = sub_22BE25BB8();
      v32(v51);
      v52 = sub_22C1CEC40();
      v32(v52);
      sub_22BE23360();
      TranscriptProtoInterpretedStatementResult.init(handwritten:)();
      if (v11)
      {
LABEL_17:

        v73 = sub_22BE203E8();
        v74(v73);

LABEL_19:
        sub_22C1CED0C();
        sub_22BE18478();
        return;
      }

      v53 = sub_22BE2902C();
      v54(v53);
      sub_22BE1B698();
      if (v61)
      {
        sub_22BE3D1E4(v55);
        sub_22C1CF178();
        sub_22BE70F5C(v58, v59, v60);
        v10 = a10;
      }

      v12 = (v12 + 1);
      *(v10 + 16) = v13;
      sub_22BE197A0();
      sub_22BE22B70();
      sub_22C1CEB4C(v79, v56, v57);
      sub_22BE323D0();
      v32 = v78;
      if (v50)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    sub_22BE40C98();
    while (1)
    {
      sub_22BE447AC();
      if (v50)
      {

        goto LABEL_19;
      }

      if (v61)
      {
        break;
      }

      v62 = sub_22BE1A084();
      v12(v62);
      v63 = sub_22C1CEC40();
      v12(v63);
      sub_22C1CF124();
      TranscriptProtoInterpretedStatementResult.init(handwritten:)();
      if (v11)
      {
        goto LABEL_17;
      }

      v64 = sub_22BE203E8();
      v65(v64);
      sub_22C1CEC50();
      if (v61)
      {
        v70 = sub_22BE19808(v66);
        sub_22BE70F5C(v70, v71, v72);
        v10 = a10;
      }

      *(v10 + 16) = v12;
      sub_22BE197A0();
      sub_22BE22B70();
      sub_22C1CEB4C(v67, v68, v69);
      sub_22BE27AB8();
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_22C1C7730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v14 = sub_22BE25D84();
  v15 = type metadata accessor for TranscriptProtoVisualOutput(v14);
  v16 = sub_22BE17A18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BE193B0(v19, v75);
  v21 = MEMORY[0x28223BE20](v20);
  sub_22BE22D7C(v21, v22, v23, v24, v25, v26, v27, v28, v76);
  v29 = sub_22C26F444();
  v30 = sub_22BE179D8(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v35);
  sub_22BE25ED0();
  v37 = MEMORY[0x28223BE20](v36);
  sub_22BE23730(v37, v38, v39, v40, v41, v42, v43, v44, v77);
  MEMORY[0x28223BE20](v45);
  sub_22BE26800();
  v46 = *(v13 + 16);
  sub_22BE3122C(MEMORY[0x277D84F90]);
  sub_22BE2C294();
  sub_22BE7100C(v47, v48, v49);
  sub_22BE3E47C();
  if (v46)
  {
    sub_22BE1C3D4();
    while (1)
    {
      sub_22C1CF13C();
      if (v50)
      {
        break;
      }

      sub_22BE39418();
      if (v61)
      {
        goto LABEL_22;
      }

      v51 = sub_22BE25BB8();
      v32(v51);
      v52 = sub_22C1CEC40();
      v32(v52);
      sub_22BE23360();
      TranscriptProtoVisualOutput.init(handwritten:)();
      if (v11)
      {
LABEL_17:

        v73 = sub_22BE203E8();
        v74(v73);

LABEL_19:
        sub_22C1CED0C();
        sub_22BE18478();
        return;
      }

      v53 = sub_22BE2902C();
      v54(v53);
      sub_22BE1B698();
      if (v61)
      {
        sub_22BE3D1E4(v55);
        sub_22C1CF178();
        sub_22BE7100C(v58, v59, v60);
        v10 = a10;
      }

      v12 = (v12 + 1);
      *(v10 + 16) = v13;
      sub_22BE197A0();
      sub_22C1CEDA8();
      sub_22C1CEB4C(v79, v56, v57);
      sub_22BE323D0();
      v32 = v78;
      if (v50)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    sub_22BE40C98();
    while (1)
    {
      sub_22BE447AC();
      if (v50)
      {

        goto LABEL_19;
      }

      if (v61)
      {
        break;
      }

      v62 = sub_22BE1A084();
      v12(v62);
      v63 = sub_22C1CEC40();
      v12(v63);
      sub_22C1CF124();
      TranscriptProtoVisualOutput.init(handwritten:)();
      if (v11)
      {
        goto LABEL_17;
      }

      v64 = sub_22BE203E8();
      v65(v64);
      sub_22C1CEC50();
      if (v61)
      {
        v70 = sub_22BE19808(v66);
        sub_22BE7100C(v70, v71, v72);
        v10 = a10;
      }

      *(v10 + 16) = v12;
      sub_22BE197A0();
      sub_22C1CEDA8();
      sub_22C1CEB4C(v67, v68, v69);
      sub_22BE27AB8();
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void QueryDecorationToolRetrievalResponse.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE3F494();
  a19 = v24;
  a20 = v25;
  v26 = v20;
  v28 = v27;
  v29 = sub_22BE5CE4C(&qword_27D909270, &unk_22C2CB810);
  sub_22BE19448(v29);
  v31 = *(v30 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  sub_22BE19E64();
  v33 = sub_22C2725B4();
  v34 = sub_22BE179D8(v33);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v37);
  sub_22BE1C17C();
  v147 = sub_22C2728E4();
  v38 = sub_22BE179D8(v147);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BE17B98();
  sub_22BE3BF80();
  MEMORY[0x28223BE20](v43);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v44);
  sub_22BE19E94();
  v145 = v45;
  v46 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  sub_22BE19448(v46);
  v48 = *(v47 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v49);
  sub_22BE1A174();
  v141 = v50;
  sub_22BE183BC();
  v142 = sub_22C2725C4();
  v51 = sub_22BE179D8(v142);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v56);
  sub_22BE19E94();
  sub_22BE183BC();
  v148 = sub_22C272984();
  v57 = sub_22BE179D8(v148);
  v59 = v58;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v57);
  sub_22BE17B98();
  v140 = v62;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v63);
  v72 = sub_22BE22D7C(v64, v65, v66, v67, v68, v69, v70, v71, v131);
  v138 = type metadata accessor for ContextProtoToolRetrievalType(v72);
  v73 = sub_22BE179D8(v138);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22BE179EC();
  sub_22BE22DB8();
  v132 = v28;
  v143 = *(v28[6] + 16);
  v139 = (v53 + 16);
  v137 = (v59 + 32);
  sub_22C1CF214();
  sub_22C1CEFB0(v76);
  sub_22BE271B0(v40 + 16);
  v77 = MEMORY[0x277D84F98];
  v133 = v59;
  sub_22BE417A8(v59 + 8);
  v136 = v21;
  v135 = v23;
  for (i = v79; ; v79 = i)
  {
    if (v143 == v78)
    {
      v117 = *v132;
      v116 = v132[1];
      v119 = v132[2];
      v118 = v132[3];
      v120 = *(v132 + 8);
      v121 = v132[5];

      sub_22C0F3228(v122);
      if (v26)
      {
        sub_22BE3842C();
        sub_22C1CEAFC();

        goto LABEL_23;
      }

      sub_22BE1AB1C();
      sub_22C2719D4();
      sub_22BE3842C();
      goto LABEL_22;
    }

    if (v78 >= *(v79 + 16))
    {
      break;
    }

    sub_22BE25AD8();
    v144 = v83;
    sub_22C1CEAA4(v81 + v80 + *(v82 + 72) * v83, v22, type metadata accessor for ContextProtoToolRetrievalType);
    sub_22BE3BB64(v22, v141, &qword_27D909280, &unk_22C294B50);
    v84 = sub_22BE391E8();
    sub_22BE1AB5C(v84, v85, v142);
    if (v86)
    {

      sub_22BE233E8(v141, &qword_27D909280, &unk_22C294B50);
      v150 = v142;
      sub_22BE5CE4C(&qword_27D912030, &unk_22C2B5E40);
      sub_22C273074();
      sub_22C108598();
      v123 = sub_22BE196B4();
      sub_22BE29564(v123, v124);
      sub_22BE3842C();
      sub_22C1CF32C();
      goto LABEL_21;
    }

    sub_22C108D54();
    v87 = sub_22BE3C968();
    v88(v87);
    v89 = *v139;
    v90 = sub_22BE29264();
    v91(v90);
    sub_22C272974();
    if (v26)
    {
      sub_22BE3842C();
      sub_22C1CF32C();
      sub_22C1CF1E8();
      v125 = sub_22BF6AC14();
      v130(v125, v129);
      sub_22BE1B52C();
      sub_22C1CEAFC();
LABEL_23:

LABEL_24:
      sub_22BE22978();
      sub_22BE3CAD8();
      return;
    }

    sub_22C1CF1E8();
    v92 = sub_22BF6AC14();
    v93(v92);
    (*v137)(v149, v140, v148);
    sub_22BE3BB64(v22 + *(v138 + 20), v21, &qword_27D909270, &unk_22C2CB810);
    sub_22BE19FE0(v21);
    if (v86)
    {

      sub_22BE233E8(v21, &qword_27D909270, &unk_22C2CB810);
      v150 = v33;
      sub_22BE5CE4C(&qword_27D912038, &unk_22C2B5E50);
      sub_22C273074();
      sub_22C108598();
      v126 = sub_22BE196B4();
      sub_22BE29564(v126, v127);
      sub_22BE3842C();
      sub_22C1CF32C();
      sub_22BE33554(&a18);
      v128(v149, v148);
LABEL_21:
      sub_22BE1B52C();
LABEL_22:
      sub_22C1CEAFC();
      goto LABEL_24;
    }

    sub_22BE33554(&a15);
    v94(v23, v21, v33);
    sub_22BE33554(&a14);
    v95 = sub_22BE36658();
    v96(v95);
    sub_22BE3E778();
    sub_22C2728D4();
    sub_22BE33554(&a16);
    v97 = v33;
    v98(v23, v33);
    v99 = *(v40 + 32);
    v100 = sub_22BE1AB1C();
    v99(v100);
    sub_22BE33554(&a12);
    sub_22BE25300();
    v101();
    swift_isUniquelyReferenced_nonNull_native();
    v150 = v77;
    sub_22BE603AC();
    sub_22C1CF0B4();
    if (__OFADD__(v104, v105))
    {
      goto LABEL_27;
    }

    v106 = v102;
    v107 = v103;
    sub_22BE5CE4C(&qword_27D915490, &unk_22C2CB820);
    if (sub_22C273C44())
    {
      sub_22BE603AC();
      if ((v107 & 1) != (v109 & 1))
      {
        goto LABEL_29;
      }

      v106 = v108;
    }

    v77 = v150;
    if (v107)
    {
      v110 = v147;
      (*(v40 + 40))(v150[7] + *(v40 + 72) * v106, v146, v147);
    }

    else
    {
      sub_22BE45B78(&v150[v106 >> 6]);
      (*(v133 + 16))(v77[6] + *(v133 + 72) * v106, v149, v148);
      v110 = v147;
      (v99)(v77[7] + *(v40 + 72) * v106, v146, v147);
      v111 = v77[2];
      v112 = __OFADD__(v111, 1);
      v113 = v111 + 1;
      if (v112)
      {
        goto LABEL_28;
      }

      v77[2] = v113;
    }

    sub_22BE33554(&v150);
    v114(v145, v110);
    sub_22BE33554(&a18);
    v115(v149, v148);
    sub_22BE1B52C();
    sub_22C1CEAFC();
    v26 = 0;
    v78 = v144 + 1;
    v33 = v97;
    v21 = v136;
    v23 = v135;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_22C2740B4();
  __break(1u);
}

void ContextProtoQueryDecorationToolRetrievalResponse.init(handwritten:)()
{
  sub_22BE3F494();
  v6 = v5;
  sub_22BE36638(v7);
  v8 = sub_22C271784();
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE17A44();
  v12 = sub_22BE5CE4C(&qword_27D909060, &qword_22C27FC88);
  v13 = sub_22BE18000(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BE17B98();
  v99 = v16;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v17);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v18);
  sub_22BE19490();
  v107 = v19;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v20);
  sub_22BE181E4();
  v21 = type metadata accessor for ContextProtoToolRetrievalType(0);
  v22 = sub_22BE17A18(v21);
  v98 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE179EC();
  v28 = v27 - v26;
  sub_22C2719E4();
  sub_22C1CF16C();
  v29 = sub_22C2719F4();
  v31 = v30;
  sub_22C271A04();
  v33 = v32;
  v34 = sub_22C271A14();
  sub_22C1BF26C(v34, v35, v36, v37, v38, v39, v40, v41, v85, v86);
  if (v0)
  {
    v43 = sub_22C271A34();
    sub_22BE18524(v43);
    (*(v44 + 8))(v6);

LABEL_15:
    sub_22BE3CAD8();
    return;
  }

  v95 = v28;
  v96 = v2;
  v97 = v1;
  sub_22C1CF270(v42);
  v45 = sub_22C271A24();
  v46 = *(v45 + 16);
  if (!v46)
  {

    v80 = MEMORY[0x277D84F90];
    v79 = v89;
LABEL_14:
    v81 = v79 + *(type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0) + 36);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v82 = sub_22C271A34();
    sub_22BE18524(v82);
    (*(v83 + 8))(v6);
    *v79 = v3;
    *(v79 + 8) = v4;
    *(v79 + 16) = v29;
    *(v79 + 24) = v31;
    *(v79 + 32) = v33;
    sub_22BE3974C();
    *(v79 + 40) = v84;
    *(v79 + 48) = v80;
    goto LABEL_15;
  }

  v87 = v31;
  v88 = v6;
  v108 = MEMORY[0x277D84F90];
  sub_22BE34198();
  sub_22BE70D4C(v47, v48, v49);
  v106 = v108;
  v52 = sub_22C259374(v45);
  v94 = v45 + 64;
  v53 = &qword_27D909060;
  v54 = v97;
  v91 = v29;
  v92 = v3;
  v90 = v12;
  v93 = v45;
  while ((v52 & 0x8000000000000000) == 0 && v52 < 1 << *(v45 + 32))
  {
    if (((*(v94 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
    {
      goto LABEL_17;
    }

    if (*(v45 + 36) != v50)
    {
      goto LABEL_18;
    }

    v100 = v51;
    v101 = v50;
    v102 = v46;
    v104 = *(v12 + 48);
    v55 = v52;
    v56 = *(v45 + 48);
    v57 = v53;
    v58 = sub_22C272984();
    sub_22BE179D8(v58);
    v59 = v12;
    v103 = v60;
    (*(v61 + 16))(v54, v56 + *(v61 + 72) * v55, v58);
    v62 = *(v45 + 56);
    v63 = sub_22C2728E4();
    sub_22BE179D8(v63);
    v65 = v64;
    (*(v64 + 16))(v54 + v104, v62 + *(v66 + 72) * v55, v63);
    (*(v103 + 32))(v107, v54, v58);
    (*(v65 + 32))(v107 + *(v59 + 48), v54 + v104, v63);
    sub_22BE3BB64(v107, v96, v57, &qword_22C27FC88);
    v105 = *(v59 + 48);
    sub_22BE3BB64(v107, v99, v57, &qword_22C27FC88);
    v67 = v99 + *(v59 + 48);
    sub_22C271774();
    (*(v103 + 8))(v99, v58);
    (*(v65 + 8))(v96 + v105, v63);
    ContextProtoToolRetrievalType.init(handwritten:)();
    v53 = v57;
    sub_22BE233E8(v107, v57, &qword_22C27FC88);
    v68 = v106;
    v70 = *(v106 + 16);
    v69 = *(v106 + 24);
    if (v70 >= v69 >> 1)
    {
      v75 = sub_22BE1AAE4(v69);
      sub_22BE70D4C(v75, v70 + 1, 1);
      v68 = v106;
    }

    *(v68 + 16) = v70 + 1;
    v71 = *(v98 + 80);
    sub_22BE19E14();
    v106 = v72;
    sub_22C1CEB4C(v95, v72 + v73 + *(v74 + 72) * v70, type metadata accessor for ContextProtoToolRetrievalType);
    v45 = v93;
    v52 = sub_22C18DDA4(v55, v101, v100 & 1, v93);
    v46 = v102 - 1;
    v12 = v90;
    v29 = v91;
    v3 = v92;
    v54 = v97;
    if (v102 == 1)
    {

      v76 = sub_22BE1A8C4();
      sub_22BE2FC64(v76, v77, v78);
      v6 = v88;
      v79 = v89;
      v31 = v87;
      v80 = v106;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void ContextProtoToolRetrievalType.init(handwritten:)()
{
  sub_22BE19130();
  v66 = v2;
  v4 = v3;
  v65 = sub_22C2725B4();
  v5 = sub_22BE179D8(v65);
  v63 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  sub_22BE3A208();
  v67 = sub_22C2728E4();
  v9 = sub_22BE179D8(v67);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v16 = v15 - v14;
  v17 = sub_22BE5CE4C(&qword_27D909270, &unk_22C2CB810);
  sub_22BE19448(v17);
  v19 = *(v18 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1A174();
  v64 = v21;
  sub_22BE183BC();
  v22 = sub_22C272984();
  v23 = sub_22BE179D8(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  sub_22BE1BC40();
  v28 = sub_22BE5CE4C(&qword_27D909280, &unk_22C294B50);
  sub_22BE19448(v28);
  v30 = *(v29 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v31);
  sub_22BE2C64C();
  sub_22C271764();
  sub_22C272964();
  v32 = *(v25 + 8);
  v33 = sub_22BE36658();
  v34(v33);
  v35 = sub_22C2725C4();
  sub_22BE187DC();
  sub_22BE19DC4(v36, v37, v38, v35);
  sub_22C271754();
  sub_22C2728C4();
  if (v0)
  {
    v39 = sub_22C271784();
    sub_22BE18524(v39);
    (*(v40 + 8))(v4);
    (*(v11 + 8))(v16, v67);
    sub_22BE233E8(v1, &qword_27D909280, &unk_22C294B50);
  }

  else
  {
    (*(v11 + 8))(v16, v67);
    v41 = *(v63 + 32);
    v42 = sub_22BE29264();
    v43(v42);
    sub_22BE187DC();
    sub_22BE19DC4(v44, v45, v46, v65);
    sub_22BE1A140();
    v50 = sub_22C18F17C(v47, v48, v49, v35);
    v51 = type metadata accessor for ContextProtoToolRetrievalType(v50);
    v52 = *(v51 + 20);
    sub_22BE1A140();
    sub_22BE19DC4(v53, v54, v55, v65);
    v56 = v66 + *(v51 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v57 = sub_22C271784();
    sub_22BE18524(v57);
    (*(v58 + 8))(v4);
    v59 = sub_22BE2684C();
    sub_22BE23490(v59, v60, v61, v62);
    sub_22BE23490(v64, v66 + v52, &qword_27D909270, &unk_22C2CB810);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void DynamicEnumerationEntity.init(transcript:)()
{
  sub_22BE19130();
  v51 = v0;
  v2 = v1;
  v3 = sub_22C272594();
  v4 = sub_22BE179D8(v3);
  v48 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17B98();
  sub_22BE3E334();
  MEMORY[0x28223BE20](v8);
  sub_22BE22D7C(v9, v10, v11, v12, v13, v14, v15, v16, v47);
  v17 = sub_22C272874();
  v18 = sub_22BE19448(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE17A44();
  sub_22BE183BC();
  v21 = sub_22C2725A4();
  v49 = sub_22BE179D8(v21);
  v50 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v49);
  sub_22BE18928();
  MEMORY[0x28223BE20](v25);
  sub_22BE32374();
  v26 = sub_22C2728A4();
  v27 = sub_22BE179D8(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE19338();
  v31 = *v2;
  v30 = v2[1];
  v32 = type metadata accessor for ContextProtoDynamicEnumerationEntity(0);
  v33 = *(v32 + 20);

  sub_22C1024DC();
  if (v51)
  {
    sub_22BE25104();
    sub_22C1CEAFC();
  }

  else
  {
    v34 = *(v50 + 16);
    v35 = sub_22BE33B3C();
    v36(v35);
    sub_22C272894();
    v37 = *(v50 + 8);
    v38 = sub_22BF6AC14();
    v39(v38);
    v40 = v2 + *(v32 + 24);
    sub_22C101488();
    v41 = *(v48 + 16);
    v42 = sub_22BE3AF28();
    v43(v42);
    sub_22C272864();
    v44 = *(v48 + 8);
    v45 = sub_22BE35838();
    v46(v45);
    sub_22C2718C4();
    sub_22BE25104();
    sub_22C1CEAFC();
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void ContextProtoDynamicEnumerationEntity.init(handwritten:)()
{
  sub_22BE19130();
  v3 = v2;
  v74 = v4;
  v5 = sub_22C272594();
  v6 = sub_22BE179D8(v5);
  v72 = v7;
  v73 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17A44();
  sub_22BE183BC();
  v10 = sub_22C272874();
  v11 = sub_22BE179D8(v10);
  v78 = v12;
  v79 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22BE17A44();
  v77 = v15;
  v16 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  v75 = v20;
  sub_22BE183BC();
  v80 = sub_22C2725A4();
  v21 = sub_22BE179D8(v80);
  v76 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE179EC();
  sub_22BE3A208();
  v25 = sub_22C2728A4();
  v26 = sub_22BE179D8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22BE19338();
  v31 = sub_22BE5CE4C(&qword_27D90C138, &qword_22C2CB830);
  sub_22BE19448(v31);
  v33 = *(v32 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v34);
  sub_22BE1A174();
  v36 = v35;
  v37 = sub_22C270C34();
  v39 = v38;
  sub_22C2718F4();
  sub_22C272884();
  if (v0)
  {

    v40 = sub_22C271904();
    sub_22BE18524(v40);
    (*(v41 + 8))(v3);
    v42 = *(v28 + 8);
    v43 = sub_22BE3EA80();
    v44(v43);
  }

  else
  {
    v71 = v37;
    v45 = *(v28 + 8);
    v46 = sub_22BE3EA80();
    v47(v46);
    (*(v76 + 32))(v36, v1, v80);
    sub_22BE187DC();
    sub_22BE19DC4(v48, v49, v50, v80);
    v51 = v3;
    sub_22C2718E4();
    sub_22C272854();
    (*(v78 + 8))(v77, v79);
    v52 = *(v72 + 32);
    v53 = sub_22BE39EAC();
    v54(v53);
    sub_22BE187DC();
    v58 = sub_22C18F17C(v55, v56, v57, v73);
    v59 = type metadata accessor for ContextProtoDynamicEnumerationEntity(v58);
    v60 = v59[5];
    sub_22BE1A140();
    sub_22BE19DC4(v61, v62, v63, v80);
    v64 = v59[6];
    sub_22BE1A140();
    sub_22BE19DC4(v65, v66, v67, v73);
    v68 = v59[7];
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v69 = sub_22C271904();
    sub_22BE18524(v69);
    (*(v70 + 8))(v51);
    *v74 = v71;
    v74[1] = v39;
    sub_22BE23490(v36, v74 + v60, &qword_27D90C138, &qword_22C2CB830);
    sub_22BE23490(v75, v74 + v64, &qword_27D909128, &qword_22C294AA0);
  }

  sub_22BEE94B0();
  sub_22BE18478();
}

void ToolRetrievalType.init(transcript:)()
{
  sub_22BE19130();
  v2 = v1;
  v44 = sub_22C2725B4();
  v3 = sub_22BE179D8(v44);
  v43 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE193B0(v7, v41);
  MEMORY[0x28223BE20](v8);
  sub_22BE22D7C(v9, v10, v11, v12, v13, v14, v15, v16, v42);
  v17 = sub_22C2728E4();
  v18 = sub_22BE19448(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE179EC();
  sub_22BE3A208();
  v21 = sub_22C2725C4();
  v22 = sub_22BE179D8(v21);
  v45 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22BE18928();
  MEMORY[0x28223BE20](v26);
  sub_22BE1C17C();
  v27 = sub_22C272984();
  v28 = sub_22BE179D8(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22BE179EC();
  sub_22BE1BC40();
  sub_22C1022DC();
  if (!v0)
  {
    v31 = *(v45 + 16);
    sub_22BE3C6BC();
    v32();
    sub_22C272974();
    v33 = *(v45 + 8);
    v34 = sub_22BE2BA80();
    v35(v34);
    v36 = v2 + *(type metadata accessor for ContextProtoToolRetrievalType(0) + 20);
    sub_22C1023DC();
    sub_22BE29400();
    sub_22BE260B8();
    sub_22C1CEFBC();
    v37();
    sub_22C2728D4();
    v38 = *(v43 + 8);
    v39 = sub_22BE3C5E4();
    v40(v39);
    sub_22C271774();
  }

  sub_22BE1B52C();
  sub_22C1CEAFC();
  sub_22BE18478();
}

uint64_t SampleInvocation.init(transcript:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 4);

  sub_22C270F34();
  sub_22BE26148();
  return sub_22C1CEAFC();
}

uint64_t ContextProtoSampleInvocation.init(handwritten:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C270F44();
  v6 = v5;
  sub_22C270F54();
  v8 = v7;
  v9 = a2 + *(type metadata accessor for ContextProtoSampleInvocation(0) + 24);
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  v10 = sub_22C270F64();
  sub_22BE18524(v10);
  result = (*(v11 + 8))(a1);
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  return result;
}

uint64_t SpanMatchedEntity.init(transcript:)(uint64_t *a1)
{
  v4 = sub_22BE1B18C();
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A8B4();
  v10 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE25CD0();
  v14 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
  sub_22BE3BB64(a1 + *(v14 + 20), v2, &qword_27D909128, &qword_22C294AA0);
  v15 = sub_22BE3D5BC();
  sub_22C0FC7A8(v15, v16, v17, v18, v19, v20, v21, v22, v25, v26);
  if (!v1)
  {
    v24 = *a1;

    sub_22C0F436C();
    sub_22C270FA4();
  }

  sub_22BE26148();
  return sub_22C1CEAFC();
}

uint64_t ContextProtoSpanMatchedEntity.init(handwritten:)()
{
  sub_22C1CECFC();
  v6 = sub_22BE5CE4C(&qword_27D907400, &unk_22C274F90);
  sub_22BE19448(v6);
  v8 = *(v7 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE35AE8();
  v10 = sub_22BE5CE4C(&qword_27D909128, &qword_22C294AA0);
  sub_22BE19448(v10);
  v12 = *(v11 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE25CD0();
  sub_22C270FB4();
  v14 = sub_22C1CF27C();
  sub_22C105684(v14, v15, v16, v17, v18, v19, v20, v21, v43, v45);
  if (v1)
  {
    v22 = sub_22C270FD4();
    sub_22BE18524(v22);
    return (*(v23 + 8))(v0);
  }

  else
  {
    v25 = sub_22C270FC4();
    sub_22C1C4190(v25, v26, v27, v28, v29, v30, v31, v32, v44, v46);
    v34 = v33;
    v35 = type metadata accessor for ContextProtoSpanMatchedEntity(0);
    sub_22C1CF0A4(v35);
    sub_22C272594();
    sub_22BE1A140();
    sub_22BE19DC4(v36, v37, v38, v39);
    v40 = v2 + *(v4 + 24);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v41 = sub_22C270FD4();
    sub_22BE18524(v41);
    (*(v42 + 8))(v0);
    result = sub_22BE23490(v3, v2 + v5, &qword_27D909128, &qword_22C294AA0);
    *v2 = v34;
  }

  return result;
}

void EntityMatch.init(transcript:)()
{
  sub_22BE3F494();
  v56 = v0;
  v3 = v2;
  v4 = sub_22C270F94();
  v5 = sub_22BE179D8(v4);
  v52 = v6;
  v53 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22BE17B98();
  v51 = v9;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v10);
  sub_22BE19E94();
  v11 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  sub_22BE19448(v11);
  v13 = *(v12 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v14);
  sub_22BE1A174();
  sub_22BE3BF90(v15);
  v16 = sub_22BE5CE4C(&qword_27D9073C0, &qword_22C275330);
  sub_22BE19448(v16);
  v18 = *(v17 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v19);
  sub_22BE1A174();
  v20 = sub_22BE183BC();
  matched = type metadata accessor for ContextProtoMatchProperties(v20);
  v21 = sub_22BE18000(matched);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BE179EC();
  sub_22BE3A208();
  v24 = sub_22C270E54();
  v25 = sub_22BE19448(v24);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE179EC();
  sub_22BE3AC88();
  v28 = type metadata accessor for ContextProtoEntityMatch(0);
  v29 = *(v28 + 48);
  v30 = (v3 + *(v28 + 52));
  v31 = v30[1];
  v32 = v3[1];
  v49 = v3[4];
  v50 = *v3;
  v48 = v3[5];
  v33 = v3[10];
  v46 = *v30;
  v47 = v3[9];
  v35 = v3[2];
  v34 = v3[3];
  v36 = *(v3 + 12);

  sub_22C104A6C();
  if (v56)
  {
    sub_22BE3EB20();
    sub_22C1CEAFC();
  }

  else
  {
    v37 = *v1;
    v38 = *(v1 + 8);
    v45 = v1[2];
    v39 = *(v1 + 24);
    sub_22BE3BB64(v1 + *(matched + 24), v55, &qword_27D909108, &unk_22C2B5E20);
    (sub_22C0FFB8C)();
    sub_22C270E14();
    sub_22BE22EE0();
    sub_22C1CEAFC();
    (*(v52 + 104))(v51, **(&unk_278725BF0 + *(v3 + 52)), v53);
    v40 = *(v52 + 32);
    v41 = sub_22BE22DF4();
    v42(v41);
    v43 = v3[8];
    v44 = v3[7];

    sub_22C270A24();
    sub_22BE3EB20();
    sub_22C1CEAFC();
  }

  sub_22BEE94B0();
  sub_22BE3CAD8();
}

void MatchProperties.init(transcript:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE2C64C();
  v8 = sub_22BE5CE4C(&qword_27D9073C0, &qword_22C275330);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25CD0();
  v12 = *v3;
  v13 = *(v3 + 8);
  v14 = v3[2];
  v15 = *(v3 + 24);
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  sub_22BE3BB64(v3 + *(matched + 24), v1, &qword_27D909108, &unk_22C2B5E20);
  sub_22C0FFB8C(v1);
  if (!v0)
  {
    sub_22C270E14();
  }

  sub_22BE22EE0();
  sub_22C1CEAFC();
  sub_22BE19650();
  sub_22BE18478();
}

uint64_t EntityMatcherType.init(transcript:)(char *a1)
{
  sub_22BE367EC(a1);
  v1 = sub_22C270F94();
  sub_22BE1834C(v1);
  v3 = *(v2 + 104);
  v4 = sub_22BE27C4C();
  return v5(v4);
}

void ContextProtoEntityMatch.init(handwritten:)()
{
  sub_22BE3F494();
  sub_22BE1B254();
  v5 = sub_22C270F94();
  v6 = sub_22BE179D8(v5);
  v63 = v7;
  v65 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BE17B98();
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v10);
  sub_22BE32374();
  v11 = sub_22C270E54();
  v12 = sub_22BE19448(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  sub_22BE1BC40();
  v15 = sub_22BE5CE4C(&qword_27D909118, &unk_22C294B60);
  sub_22BE19448(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE234F4();
  v60 = sub_22C270AD4();
  v20 = v19;
  v21 = sub_22C270A14();
  v23 = v22;
  v24 = sub_22C270A64();
  v61 = sub_22C270AE4();
  sub_22C270A54();
  v26 = v25;
  sub_22C270AA4();
  ContextProtoMatchProperties.init(handwritten:)();
  if (v2)
  {
    v27 = sub_22C270AF4();
    sub_22BE18524(v27);
    (*(v28 + 8))(v1);

LABEL_9:
    sub_22BE3CAD8();
    return;
  }

  v58 = v21;
  v59 = v23;
  v67 = v20;
  matched = type metadata accessor for ContextProtoMatchProperties(0);
  v57 = v3;
  sub_22BE187DC();
  sub_22BE19DC4(v29, v30, v31, v32);
  sub_22C270A84();
  sub_22BE29400();
  v33 = sub_22BE23108();
  v34(v33);
  v35 = *(v63 + 88);
  v36 = sub_22BE25C08();
  v38 = v37(v36);
  v39 = 0;
  if (v38 == *MEMORY[0x277D1EE88])
  {
LABEL_8:
    (*(v63 + 8))(v4, v65);
    v40 = sub_22C270AB4();
    v64 = v41;
    v66 = v40;
    v42 = sub_22C270A94();
    v62 = v43;
    v44 = sub_22C270A44();
    v46 = v45;
    v47 = type metadata accessor for ContextProtoEntityMatch(0);
    v48 = v47[12];
    sub_22BE1A140();
    sub_22BE19DC4(v49, v50, v51, matched);
    v52 = v47[14];
    v53 = (v0 + v47[13]);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v54 = sub_22C270AF4();
    sub_22BE18524(v54);
    (*(v55 + 8))(v1);
    *v0 = v60;
    *(v0 + 8) = v67;
    *(v0 + 16) = v58;
    *(v0 + 24) = v59;
    *(v0 + 32) = v24;
    *(v0 + 40) = v61;
    *(v0 + 48) = v26;
    sub_22BE23490(v57, v0 + v48, &qword_27D909118, &unk_22C294B60);
    *(v0 + 52) = v39;
    *(v0 + 56) = v66;
    *(v0 + 64) = v64;
    *(v0 + 72) = v42;
    *(v0 + 80) = v62;
    *v53 = v44;
    v53[1] = v46;
    goto LABEL_9;
  }

  if (v38 == *MEMORY[0x277D1EE78])
  {
    v39 = 1;
    goto LABEL_8;
  }

  if (v38 == *MEMORY[0x277D1EE80])
  {
    v39 = 2;
    goto LABEL_8;
  }

  sub_22C274004();
  __break(1u);
}

void ContextProtoMatchProperties.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE460C8();
  v4 = sub_22BE5CE4C(&qword_27D9073C0, &qword_22C275330);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE2C64C();
  v8 = sub_22BE5CE4C(&qword_27D909108, &unk_22C2B5E20);
  sub_22BE19448(v8);
  v10 = *(v9 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  sub_22BE25CD0();
  v12 = sub_22C270E24();
  v14 = v13;
  v15 = sub_22C270E44();
  v17 = v16;
  sub_22C270E34();
  sub_22C107944();
  if (v2)
  {
    v18 = sub_22C270E54();
    sub_22BE18524(v18);
    (*(v19 + 8))(v1);
  }

  else
  {
    v31 = v17 & 1;
    if (v17)
    {
      v15 = 0;
    }

    v20 = v14 & 1;
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v12;
    }

    matched = type metadata accessor for ContextProtoMatchProperties(0);
    v23 = *(matched + 24);
    type metadata accessor for ContextProtoAliasTypes(0);
    sub_22BE1A140();
    sub_22BE19DC4(v24, v25, v26, v27);
    v28 = v0 + *(matched + 28);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
    v29 = sub_22C270E54();
    sub_22BE18524(v29);
    (*(v30 + 8))(v1);
    *v0 = v21;
    *(v0 + 8) = v20;
    *(v0 + 16) = v15;
    *(v0 + 24) = v31;
    sub_22BE23490(v3, v0 + v23, &qword_27D909108, &unk_22C2B5E20);
  }

  sub_22BE19650();
  sub_22BE18478();
}

void sub_22C1CA974()
{
  sub_22BE19130();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_22BE4111C();
  v10 = v9(v8);
  sub_22BE179D8(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE23E58();
  v16 = *(v12 + 16);
  v17 = sub_22BE33BE8();
  v18(v17);
  v19 = *(v12 + 88);
  v20 = sub_22BF6AC14();
  v22 = v21(v20);
  if (v22 == *v7)
  {
    v23 = 0;
LABEL_7:
    (*(v12 + 8))(v1, v10);
    *v0 = v23;
    sub_22BE22978();
    sub_22BE18478();
    return;
  }

  if (v22 == *v5)
  {
    v23 = 1;
    goto LABEL_7;
  }

  if (v22 == *v3)
  {
    v23 = 2;
    goto LABEL_7;
  }

  sub_22BE3FFAC();
  __break(1u);
}

void AliasTypes.init(transcript:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v22;
  a20 = v23;
  v180 = v24;
  v26 = v25;
  v199 = sub_22BE5CE4C(&qword_27D915498, &unk_22C2CB840);
  v27 = sub_22BE18000(v199);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22BE17B98();
  v185 = v30;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v31);
  sub_22C1CEC9C();
  MEMORY[0x28223BE20](v32);
  sub_22BE3913C();
  MEMORY[0x28223BE20](v33);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v34);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v35);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v36);
  sub_22BE41674();
  MEMORY[0x28223BE20](v37);
  sub_22BE19E94();
  sub_22BE18950(v38);
  v39 = sub_22C270944();
  v40 = sub_22BE179D8(v39);
  v198 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  sub_22BE17B98();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v44);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v45);
  v47 = v178 - v46;
  MEMORY[0x28223BE20](v48);
  sub_22BE2017C();
  MEMORY[0x28223BE20](v49);
  sub_22BE409D8();
  MEMORY[0x28223BE20](v50);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v51);
  sub_22BE255B8();
  MEMORY[0x28223BE20](v52);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v53);
  v55 = v178 - v54;
  MEMORY[0x28223BE20](v56);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v57);
  sub_22BE3A4D8();
  MEMORY[0x28223BE20](v58);
  sub_22BE19490();
  sub_22BE181F4();
  MEMORY[0x28223BE20](v59);
  sub_22BE23730(v60, v61, v62, v63, v64, v65, v66, v67, v178[0]);
  MEMORY[0x28223BE20](v68);
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v69);
  sub_22BE25A90();
  HIDWORD(a10) = 0;
  sub_22C1CEEE4();
  sub_22C1CE8AC(v70, v71);
  sub_22C2742B4();
  v72 = v55;
  v73 = *(*v180 + 16);
  if (v73)
  {
    v74 = v20;
    v75 = (*v180 + 32);
    v76 = v198 + 16;
    v190 = (v198 + 8);
    v188 = (v198 + 32);
    v189 = v21;
    v196 = v198 + 16;
    v197 = v26;
    v191 = v74;
    v192 = v72;
    v193 = v47;
    do
    {
      v77 = *v75;
      v198 = v75 + 1;
      v78 = v195;
      switch(v77)
      {
        case 1:
          sub_22BE204A4(&a9);
          sub_22C270934();
          v111 = sub_22BE361E4();
          v112(v111);
          sub_22BE18750();
          v113 = sub_22C1CE8AC(&qword_27D9154A0, v26);
          sub_22C1CF0D4(v113);
          sub_22BE1C0B0();
          sub_22C1CE8AC(&qword_27D9154A8, v26);
          sub_22BE3AF28();
          sub_22C1CEFBC();
          sub_22C272FD4();
          sub_22BE1831C();
          sub_22BE3FF54();
          if (v114)
          {
            v160 = sub_22BE22DF4();
            v26(v160);
            sub_22C1CEFA0();
            v78();
            v161 = sub_22BE1B18C();
            (v78)(v161);
            sub_22BE3D6E0();
            v162 = sub_22BE33B3C();
            v26(v162);
          }

          else
          {
            v115 = sub_22BE33B3C();
            v26(v115);
            sub_22C1CECEC();
            sub_22BE358FC();
            v116();
          }

          sub_22C1CF208();
          sub_22BEF88B8(v163, v164, &qword_27D915498, &unk_22C2CB840);
          v165 = sub_22C1CEBE0();
          v26(v165);
          v21 = v189;
          v47 = v193;
          goto LABEL_29;
        case 2:
          sub_22BE236D4(&a10);
          sub_22C270904();
          v94 = sub_22BE361E4();
          v95(v94);
          sub_22BE18750();
          v96 = sub_22C1CE8AC(&qword_27D9154A0, v26);
          sub_22C1CF0FC(v96);
          sub_22BE1C0B0();
          sub_22C1CE8AC(&qword_27D9154A8, v26);
          sub_22BE29454();
          sub_22C1CEFBC();
          sub_22C272FD4();
          sub_22BE1831C();
          v97 = v182;
          sub_22BE3FF54();
          if (v98)
          {
            v145 = sub_22BE22DF4();
            v26(v145);
            sub_22C1CEFA0();
            v78();
            v146 = sub_22BE18240();
            (v78)(v146);
            sub_22BE3D6E0();
            v147 = sub_22BE23108();
            v26(v147);
          }

          else
          {
            v99 = sub_22BE23108();
            v26(v99);
            sub_22C1CECEC();
            sub_22BE358FC();
            v100();
          }

          v47 = v193;
          sub_22BEF88B8(v97, v194, &qword_27D915498, &unk_22C2CB840);
          v148 = sub_22C1CEBE0();
          v26(v148);
          goto LABEL_24;
        case 3:
          sub_22BE236D4(&a11);
          sub_22C2708F4();
          v101 = sub_22BE361E4();
          v102(v101);
          sub_22BE18750();
          v103 = sub_22C1CE8AC(&qword_27D9154A0, v26);
          sub_22C1CF0FC(v103);
          sub_22BE1C0B0();
          sub_22C1CE8AC(&qword_27D9154A8, v26);
          sub_22BE29454();
          sub_22C1CEFBC();
          sub_22C272FD4();
          sub_22BE1831C();
          v104 = v183;
          *v183 = v105;
          v106 = *v190;
          if (v107)
          {
            v149 = sub_22BE22DF4();
            v106(v149);
            sub_22C1CEFA0();
            v78();
            v150 = sub_22BE18240();
            (v78)(v150);
            sub_22BE3D6E0();
            v151 = sub_22BE23108();
            v106(v151);
          }

          else
          {
            v108 = sub_22BE23108();
            v106(v108);
            v109 = *v188;
            sub_22BE358FC();
            v110();
          }

          v47 = v193;
          sub_22BEF88B8(v104, v194, &qword_27D915498, &unk_22C2CB840);
          v152 = sub_22C1CEBE0();
          v106(v152);
LABEL_24:
          v21 = v189;
          v75 = v198;
          break;
        case 4:
          sub_22BE204A4(&a12);
          sub_22C270924();
          v88 = sub_22BE361E4();
          v89(v88);
          sub_22BE18750();
          v90 = sub_22C1CE8AC(&qword_27D9154A0, v26);
          sub_22C1CF0D4(v90);
          sub_22BE1C0B0();
          sub_22C1CE8AC(&qword_27D9154A8, v26);
          sub_22BE3AF28();
          sub_22C1CEFBC();
          sub_22C272FD4();
          sub_22BE1831C();
          sub_22BE3FF54();
          if (v91)
          {
            v139 = sub_22BE22DF4();
            v26(v139);
            sub_22C1CEFA0();
            v78();
            v140 = sub_22BE1B18C();
            (v78)(v140);
            sub_22BE3D6E0();
            v141 = sub_22BE33B3C();
            v26(v141);
          }

          else
          {
            v92 = sub_22BE33B3C();
            v26(v92);
            sub_22C1CECEC();
            sub_22BE358FC();
            v93();
          }

          sub_22C1CF208();
          sub_22BEF88B8(v142, v143, &qword_27D915498, &unk_22C2CB840);
          v144 = sub_22C1CEBE0();
          v26(v144);
          v47 = v193;
          v21 = v189;
          v75 = v198;
          break;
        case 5:
          sub_22C270914();
          v117 = v76;
          v118 = v47;
          v119 = v184;
          v120 = *v117;
          v121 = sub_22BE31038();
          v187 = v122;
          (v122)(v121);
          sub_22BE18750();
          sub_22C1CE8AC(&qword_27D9154A0, v26);
          sub_22BE22DF4();
          v186 = v123;
          sub_22C273984();
          sub_22BE1C0B0();
          sub_22C1CE8AC(&qword_27D9154A8, v26);
          sub_22BE3CC34();
          sub_22C1CEFBC();
          sub_22C272FD4();
          sub_22BE1831C();
          *v119 = v124;
          v125 = *v190;
          if (v126)
          {
            v166 = sub_22BE29264();
            v125(v166);
            sub_22BE358FC();
            v167 = v187;
            v187();
            sub_22BE358FC();
            v167();
            sub_22BE3D6E0();
            v168 = sub_22BE22DF4();
            v125(v168);
          }

          else
          {
            v127 = sub_22BE22DF4();
            v125(v127);
            v128 = sub_22C1CECEC();
            v129(v128, v118, v39);
          }

          sub_22C1CF208();
          sub_22BEF88B8(v169, v170, &qword_27D915498, &unk_22C2CB840);
          v171 = sub_22C1CEBE0();
          v125(v171);
          v21 = v189;
          v47 = v193;
          goto LABEL_34;
        case 6:
          sub_22BE236D4(&a13);
          sub_22C2708E4();
          v130 = sub_22BE361E4();
          v131(v130);
          sub_22BE18750();
          sub_22C1CE8AC(&qword_27D9154A0, v26);
          sub_22BE204A4(&a14);
          v186 = v132;
          sub_22C273984();
          sub_22BE1C0B0();
          sub_22C1CE8AC(&qword_27D9154A8, v26);
          sub_22BE18240();
          sub_22C1CEFBC();
          sub_22C272FD4();
          sub_22BE1831C();
          *v185 = v133;
          v134 = *v190;
          if (v135)
          {
            v172 = sub_22BE33B3C();
            v134(v172);
            sub_22BE39EA0();
            v173 = v187;
            v187();
            sub_22BE39EA0();
            v173();
            sub_22BE3D6E0();
            v174 = sub_22BE23108();
            v134(v174);
          }

          else
          {
            v136 = sub_22BE23108();
            v134(v136);
            v137 = sub_22C1CECEC();
            v138(v137, v47, v39);
          }

          sub_22C1CF208();
          sub_22BEF88B8(v175, v176, &qword_27D915498, &unk_22C2CB840);
          v177 = sub_22C1CEBE0();
          v134(v177);
          v47 = v193;
          v21 = v189;
LABEL_34:
          v75 = v198;
          break;
        default:
          sub_22C2708D4();
          v79 = sub_22BE361E4();
          v80(v79);
          sub_22BE18750();
          v81 = v21;
          v186 = sub_22C1CE8AC(&qword_27D9154A0, v26);
          sub_22C273984();
          sub_22BE1C0B0();
          sub_22C1CE8AC(&qword_27D9154A8, v26);
          sub_22BE25C08();
          sub_22C1CEFBC();
          sub_22C272FD4();
          sub_22BE1831C();
          v82 = v181;
          *v181 = v83;
          v84 = *v190;
          if (v85)
          {
            v153 = sub_22BE23108();
            v84(v153);
            v154 = v78 + v82;
            v155 = v187;
            v179 = v84;
            (v187)(v154, v81, v39);
            v156 = sub_22BE33FCC();
            (v155)(v156);
            v84 = v179;
            sub_22BE3D6E0();
            v157 = sub_22BE29264();
            v84(v157);
          }

          else
          {
            v86 = sub_22BE29264();
            v84(v86);
            sub_22C1CECEC();
            sub_22BE39EA0();
            v87();
          }

          v158 = v82;
          v21 = v81;
          v47 = v193;
          sub_22BEF88B8(v158, v194, &qword_27D915498, &unk_22C2CB840);
          v159 = sub_22C1CEBE0();
          v84(v159);
LABEL_29:
          v75 = v198;
          break;
      }

      --v73;
      v76 = v196;
      v26 = v197;
    }

    while (v73);
  }

  sub_22C1CEAFC();
  sub_22BE18478();
}

void ContextProtoAliasTypes.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE1B254();
  v1 = sub_22C270944();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE19338();
  v7 = *(type metadata accessor for ContextProtoAliasTypes(0) + 20);
  v51 = v0;
  _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();
  sub_22C2708D4();
  sub_22C1CEEE4();
  sub_22C1CE8AC(v8, v9);
  sub_22BE415C8();
  v10 = sub_22C273974();
  v11 = *(v4 + 8);
  v12 = sub_22BE1AB1C();
  v11(v12);
  if (v10)
  {
    sub_22BE66A04();
    v14 = v13;
    if (*(v13 + 16) >= *(v13 + 24) >> 1)
    {
      sub_22BE3CB24();
      v14 = v38;
    }

    sub_22C1CF01C();
    *(v15 + 32) = 0;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  sub_22C270934();
  sub_22BE415C8();
  v16 = sub_22C273974();
  v17 = sub_22BE1AB1C();
  v11(v17);
  if (v16)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE46BC0();
      v14 = v39;
    }

    sub_22BE37518();
    if (v18)
    {
      sub_22BE3CB24();
      v14 = v40;
    }

    sub_22C1CF01C();
    *(v19 + 32) = 1;
  }

  sub_22C270904();
  sub_22BE415C8();
  v20 = sub_22C273974();
  v21 = sub_22BE1AB1C();
  v11(v21);
  if (v20)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE46BC0();
      v14 = v41;
    }

    sub_22BE37518();
    if (v18)
    {
      sub_22BE3CB24();
      v14 = v42;
    }

    sub_22C1CF01C();
    *(v22 + 32) = 2;
  }

  sub_22C2708F4();
  sub_22BE415C8();
  v23 = sub_22C273974();
  v24 = sub_22BE1AB1C();
  v11(v24);
  if (v23)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE46BC0();
      v14 = v43;
    }

    sub_22BE37518();
    if (v18)
    {
      sub_22BE3CB24();
      v14 = v44;
    }

    sub_22C1CF01C();
    *(v25 + 32) = 3;
  }

  sub_22C270924();
  sub_22BE415C8();
  v26 = sub_22C273974();
  v27 = sub_22BE1AB1C();
  v11(v27);
  if (v26)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE46BC0();
      v14 = v45;
    }

    sub_22BE37518();
    if (v18)
    {
      sub_22BE3CB24();
      v14 = v46;
    }

    sub_22C1CF01C();
    *(v28 + 32) = 4;
  }

  sub_22C270914();
  sub_22BE415C8();
  v29 = sub_22C273974();
  v30 = sub_22BE1AB1C();
  v11(v30);
  if (v29)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE46BC0();
      v14 = v47;
    }

    sub_22BE37518();
    if (v18)
    {
      sub_22BE3CB24();
      v14 = v48;
    }

    sub_22C1CF01C();
    *(v31 + 32) = 5;
  }

  sub_22C2708E4();
  sub_22BE415C8();
  v32 = sub_22C273974();
  v33 = sub_22BE1AB1C();
  v11(v33);
  if (v32)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22BE46BC0();
      v14 = v49;
    }

    v35 = *(v14 + 16);
    v34 = *(v14 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_22BE1AAE4(v34);
      sub_22BE66A04();
      v14 = v50;
    }

    v36 = sub_22BE336E8();
    v11(v36);
    *(v14 + 16) = v35 + 1;
    *(v14 + v35 + 32) = 6;
  }

  else
  {
    v37 = sub_22BE336E8();
    v11(v37);
  }

  *v51 = v14;
  sub_22BE18478();
}

void QueryDecorationInput.init(transcript:)()
{
  sub_22BE19130();
  v3 = v1;
  sub_22BE48298();
  v56 = sub_22C271844();
  v4 = sub_22BE179D8(v56);
  v58 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22BE17B98();
  v55 = v8;
  sub_22BE1B99C();
  MEMORY[0x28223BE20](v9);
  sub_22BE355FC(v10, v11, v12, v13, v14, v15, v16, v17, v47[0]);
  v18 = sub_22BE5CE4C(&qword_27D9082F0, &qword_22C27AB00);
  sub_22BE19448(v18);
  v20 = *(v19 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v21);
  v23 = v47 - v22;
  v24 = sub_22C26E1D4();
  v25 = sub_22BE179D8(v24);
  v59 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  sub_22BE3C8B8();
  MEMORY[0x28223BE20](v29);
  v31 = v47 - v30;
  v32 = v2[6];
  v33 = v2[7];

  sub_22C101F78(v32, v33);
  if (v3)
  {
    sub_22BE358B0();
    sub_22C1CEAFC();
  }

  else
  {
    v53 = v0;
    v54 = v24;

    sub_22C26E174();

    sub_22C101298();
    sub_22BE233E8(v23, &qword_27D9082F0, &qword_22C27AB00);
    v34 = sub_22C101F78(v2[8], v2[9]);
    v50 = v35;
    v51 = v34;
    v52 = 0;
    v36 = *v2;
    v37 = v2[1];
    v48 = v31;
    v49 = v36;
    v38 = v2[5];
    v47[1] = v2[4];
    v39 = v59;
    sub_22C1CF23C();
    v40 = v54;
    v41(v53, v31, v54);
    v42 = *(v2 + 16);

    if (v42)
    {
      v44 = v55;
      v43 = v56;
      if (v42 == 1)
      {
        sub_22C270934();
      }

      else
      {
        sub_22C270904();
      }
    }

    else
    {
      v44 = v55;
      sub_22C2708D4();
      v43 = v56;
    }

    (*(v58 + 32))(v57, v44, v43);
    v45 = v2[11];
    v46 = v2[10];

    sub_22C2717C4();
    sub_22BE358B0();
    sub_22C1CEAFC();
    (*(v39 + 8))(v48, v40);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t QueryDecorationCaller.init(transcript:)(_BYTE *a1)
{
  if (!*a1)
  {
    return sub_22C2708D4();
  }

  if (*a1 == 1)
  {
    return sub_22C270934();
  }

  return sub_22C270904();
}

void sub_22C1CC080(void *a1@<X8>)
{
  QueryDecorationInput.init(transcript:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void ContextProtoQueryDecorationInput.init(handwritten:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_22BE19130();
  v15 = v14;
  v46 = v16;
  v17 = sub_22C26E1D4();
  v18 = sub_22BE179D8(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  sub_22BE179EC();
  sub_22BE3AC88();
  v23 = sub_22C271844();
  v24 = sub_22BE19448(v23);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BE179EC();
  v27 = sub_22C2717D4();
  v47 = v28;
  v29 = sub_22C271804();
  v48 = v30;
  sub_22C2717E4();
  ContextProtoQueryDecorationCaller.init(handwritten:)();
  if (v13)
  {
  }

  else
  {
    sub_22C2717F4();
    v44 = sub_22C26E184();
    v45 = v31;
    v32 = *(v20 + 8);
    v33 = sub_22BE2BA80();
    v34(v33);
    v35 = sub_22C2717A4();
    v37 = v36;
    v38 = sub_22C2717B4();
    v39 = sub_22C1C4F4C(v38);
    v40 = sub_22C271794();
    v43 = v41;
    v42 = v46 + *(type metadata accessor for ContextProtoQueryDecorationInput(0) + 44);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

    *v46 = v27;
    *(v46 + 8) = v47;
    *(v46 + 16) = a13;
    *(v46 + 40) = v48;
    *(v46 + 48) = v44;
    *(v46 + 56) = v45;
    *(v46 + 64) = v35;
    *(v46 + 24) = v39;
    *(v46 + 32) = v29;
    *(v46 + 72) = v37;
    *(v46 + 80) = v40;
    *(v46 + 88) = v43;
  }

  sub_22BE18478();
}

void ContextProtoQueryDecorationCaller.init(handwritten:)()
{
  sub_22BE19130();
  v28 = v0;
  v1 = sub_22C271844();
  v2 = sub_22BE179D8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22BE18928();
  MEMORY[0x28223BE20](v7);
  sub_22BE26800();
  v8 = *(v4 + 16);
  v9 = sub_22BE1AB1C();
  v10(v9);
  sub_22C2708D4();
  sub_22C1CE8AC(&qword_27D9154B0, MEMORY[0x277D1F0F8]);
  sub_22BE18240();
  v11 = sub_22C272FD4();
  v12 = *(v4 + 8);
  v13 = sub_22BE35838();
  v12(v13);
  if (v11)
  {
    v14 = sub_22BE431C0();
    v12(v14);
    v15 = sub_22BE36680();
    v12(v15);
    v16 = 0;
  }

  else
  {
    sub_22C270934();
    sub_22BE18240();
    v17 = sub_22C272FD4();
    v18 = sub_22BE35838();
    v12(v18);
    if (v17)
    {
      v19 = sub_22BE431C0();
      v12(v19);
      v20 = sub_22BE36680();
      v12(v20);
      v16 = 1;
    }

    else
    {
      sub_22C270904();
      sub_22BE18240();
      v21 = sub_22C272FD4();
      v22 = sub_22BE35838();
      v12(v22);
      v23 = sub_22BE36680();
      v12(v23);
      if ((v21 & 1) == 0)
      {
        sub_22C108358();
        v25 = sub_22BE196B4();
        sub_22BE3C74C(v25, v26);
        v27 = sub_22BE431C0();
        v12(v27);
        goto LABEL_8;
      }

      v24 = sub_22BE431C0();
      v12(v24);
      v16 = 2;
    }
  }

  *v28 = v16;
LABEL_8:
  sub_22BE22978();
  sub_22BE18478();
}

uint64_t QueryDecorationCoreService.init(transcript:)(char *a1)
{
  sub_22BE367EC(a1);
  v1 = sub_22C271944();
  sub_22BE1834C(v1);
  v3 = *(v2 + 104);
  v4 = sub_22BE27C4C();
  return v5(v4);
}

uint64_t ContextProtoQueryDecorationCoreService.init(handwritten:)()
{
  sub_22BE38A98();
  v1 = v0;
  v2 = sub_22C271944();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = sub_22BE18B58(v8, v25);
  v10(v9);
  v11 = *(v5 + 88);
  v12 = sub_22BE36680();
  v14 = v13(v12);
  if (v14 == *MEMORY[0x277D1F170])
  {
    v15 = 0;
LABEL_13:
    v16 = *(v5 + 8);
    v17 = sub_22BE3C5E4();
    result = v18(v17);
    *v1 = v15;
    return result;
  }

  if (v14 == *MEMORY[0x277D1F188])
  {
    v15 = 1;
    goto LABEL_13;
  }

  if (v14 == *MEMORY[0x277D1F180])
  {
    v15 = 2;
    goto LABEL_13;
  }

  if (v14 == *MEMORY[0x277D1F198])
  {
    v15 = 3;
    goto LABEL_13;
  }

  if (v14 == *MEMORY[0x277D1F178])
  {
    v15 = 4;
    goto LABEL_13;
  }

  if (v14 == *MEMORY[0x277D1F1A0])
  {
    v15 = 5;
    goto LABEL_13;
  }

  sub_22C108358();
  v20 = sub_22BE196B4();
  sub_22BE3C74C(v20, v21);
  v22 = *(v5 + 8);
  v23 = sub_22BE3C5E4();
  v22(v23);
  v24 = sub_22BE36680();
  return (v22)(v24);
}

uint64_t VersionedQueryDecorationOutput.Version.init(transcript:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D1F1B8];
  v3 = sub_22C271994();
  sub_22BE1834C(v3);
  return (*(v4 + 104))(a1, v2);
}

uint64_t sub_22C1CCB24@<X0>(uint64_t *a1@<X8>)
{
  result = VersionedQueryDecorationOutput.init(transcript:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void ContextProtoVersionedQueryDecorationOutput.init(handwritten:)()
{
  sub_22BE19130();
  v6 = v5;
  v66 = v7;
  v8 = sub_22C271994();
  v9 = sub_22BE179D8(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE186D4();
  MEMORY[0x28223BE20](v14);
  sub_22BE26800();
  v15 = sub_22BE5CE4C(&qword_27D912018, &unk_22C2B7810);
  sub_22BE19448(v15);
  v17 = *(v16 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v18);
  sub_22BE1A8B4();
  v19 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  v20 = sub_22BE19448(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22BE2582C();
  MEMORY[0x28223BE20](v23);
  sub_22BE25A90();
  sub_22C271984();
  sub_22C1BEC10();
  if (v0)
  {
  }

  else
  {
    v62 = v2;
    v63 = v11;
    v64 = v3;
    v65 = v24;
    v25 = sub_22C271984();
    if (v25)
    {
    }

    sub_22C271954();
    v26 = v1;
    sub_22C105F94();
    v27 = v4;
    v28 = sub_22C271974();
    v29 = MEMORY[0x277D84F90];
    if (!v28)
    {
      v28 = MEMORY[0x277D84F90];
    }

    sub_22C1C62D0(v28);
    v31 = v30;
    v32 = sub_22C271974();
    if (v32)
    {
    }

    v33 = sub_22C2719A4();
    if (!v33)
    {
      v33 = v29;
    }

    sub_22C1B27C4(v33, v34, v35, v36, v37, v38, v39, v40, v58, v59);
    v60 = v41;
    v61 = v31;
    v42 = sub_22C2719A4();
    if (v42)
    {
    }

    sub_22C2719C4();
    (*(v63 + 16))(v27, v64, v8);
    v43 = *(v63 + 88);
    v44 = sub_22BE33BE8();
    if (v45(v44) == *MEMORY[0x277D1F1B8])
    {
      (*(v63 + 8))(v64, v8);
      sub_22BE3BB64(v26, v62, &qword_27D90C100, &unk_22C294B20);
      sub_22C271964();
      sub_22C1CF16C();
      DecorationOutput = type metadata accessor for ContextProtoVersionedQueryDecorationOutput(0);
      v47 = DecorationOutput[11];
      type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
      sub_22BE1A140();
      sub_22BE19DC4(v48, v49, v50, v51);
      v52 = DecorationOutput[13];
      v53 = (v66 + DecorationOutput[12]);
      _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

      sub_22BE233E8(v26, &qword_27D90C100, &unk_22C294B20);
      *v66 = v65;
      *(v66 + 8) = v25 != 0;
      sub_22C1CF344(v62, v66 + v47);
      *(v66 + 16) = v61;
      *(v66 + 24) = v32 != 0;
      *(v66 + 32) = v60;
      *(v66 + 40) = v42 != 0;
      *v53 = v63 + 8;
      v53[1] = v42;
    }

    else
    {

      sub_22C108358();
      v54 = sub_22BE196B4();
      sub_22BE3C74C(v54, v55);

      v56 = *(v63 + 8);
      v56(v64, v8);
      sub_22BE233E8(v26, &qword_27D90C100, &unk_22C294B20);
      v57 = sub_22BE33BE8();
      (v56)(v57);
    }
  }

  sub_22BE22978();
  sub_22BE18478();
}

uint64_t ContextProtoVersionedQueryDecorationOutput.Version.init(handwritten:)()
{
  sub_22BE38A98();
  v2 = sub_22C271994();
  v3 = sub_22BE179D8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE1BC40();
  sub_22C116380();
  v8(v1, v0, v2);
  v9 = *(v5 + 88);
  v10 = sub_22BE431C0();
  if (v11(v10) == *MEMORY[0x277D1F1B8])
  {
    v12 = *(v5 + 8);
    v13 = sub_22BE3C5E4();
    return v14(v13);
  }

  else
  {
    sub_22C108358();
    v16 = sub_22BE196B4();
    sub_22BE3C74C(v16, v17);
    v18 = *(v5 + 8);
    v19 = sub_22BE3C5E4();
    v18(v19);
    v20 = sub_22BE431C0();
    return (v18)(v20);
  }
}

uint64_t sub_22C1CD32C@<X0>(uint64_t *a1@<X8>)
{
  result = QueryDecorationOutput.init(transcript:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void ContextProtoQueryDecorationOutput.init(handwritten:)()
{
  sub_22BE19130();
  sub_22BE460C8();
  v4 = sub_22BE5CE4C(&qword_27D912018, &unk_22C2B7810);
  sub_22BE19448(v4);
  v6 = *(v5 + 64);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE1A8B4();
  v8 = sub_22BE5CE4C(&qword_27D90C100, &unk_22C294B20);
  v9 = sub_22BE19448(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22BE183AC();
  sub_22BE1AF10();
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = sub_22C271894();
  sub_22C1CF0C4(v15);
  sub_22C1BEC10();
  if (v2)
  {
  }

  else
  {
    v17 = v16;
    v18 = sub_22C271894();
    if (v18)
    {
    }

    sub_22C271854();
    sub_22C105F94();
    v19 = sub_22C271874();
    v20 = sub_22C1CF0C4(v19);
    sub_22C1C62D0(v20);
    v54 = v21;
    v22 = sub_22C271874();
    if (v22)
    {
    }

    v23 = sub_22C2718A4();
    v24 = sub_22C1CF0C4(v23);
    sub_22C1B27C4(v24, v25, v26, v27, v28, v29, v30, v31, v49, v50);
    v53 = v32;
    v33 = sub_22C2718A4();
    if (v33)
    {
    }

    v51 = v22 != 0;
    v52 = v33 != 0;
    HIDWORD(v50) = v18 != 0;
    v34 = sub_22BE18240();
    sub_22BE3BB64(v34, v35, v36, v37);
    v38 = sub_22C271864();
    v49 = v39;
    DecorationOutput = type metadata accessor for ContextProtoQueryDecorationOutput(0);
    v41 = DecorationOutput[10];
    type metadata accessor for ContextProtoQueryDecorationToolRetrievalResponse(0);
    sub_22BE1A140();
    sub_22BE19DC4(v42, v43, v44, v45);
    v46 = DecorationOutput[12];
    v47 = (v0 + DecorationOutput[11]);
    _s30IntelligenceFlowPlannerSupport033TranscriptProtoRequestContentStopH0VACycfC_0();

    sub_22BE233E8(v14, &qword_27D90C100, &unk_22C294B20);
    *v0 = v17;
    *(v0 + 8) = BYTE4(v50);
    sub_22BE23490(v3, v0 + v41, &qword_27D90C100, &unk_22C294B20);
    *(v0 + 16) = v54;
    *(v0 + 24) = v51;
    *(v0 + 32) = v53;
    *(v0 + 40) = v52;
    v48 = v49;
    *v47 = v38;
    v47[1] = v48;
  }

  sub_22BE19650();
  sub_22BE18478();
}

unint64_t sub_22C1CD634()
{
  result = qword_27D9154B8;
  if (!qword_27D9154B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9154B8);
  }

  return result;
}

uint64_t sub_22C1CD694(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154C0, MEMORY[0x277D1EE00]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CD740(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154C8, MEMORY[0x277D1EDC0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CD7EC(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154D0, MEMORY[0x277D1F0A8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CD898(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154D8, MEMORY[0x277D1F038]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CD944(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154E0, MEMORY[0x277D1EF78]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CD9F0(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154E8, MEMORY[0x277D1F058]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDA9C(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154F0, MEMORY[0x277D1F040]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDB48(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D9154F8, type metadata accessor for CGRect);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDBF4(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915500, MEMORY[0x277D1EA08]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDCA0(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915508, MEMORY[0x277D1F1F8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDD4C(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915510, MEMORY[0x277D1EA48]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDDF8(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915518, MEMORY[0x277D1EDD0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDEA4(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915520, MEMORY[0x277D1ED00]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDF50(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915528, MEMORY[0x277D1EDB8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CDFFC(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915530, MEMORY[0x277D1ED90]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE0A8(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915538, type metadata accessor for ToolQuery.Output);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE154(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915540, MEMORY[0x277D1F1D8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE200(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915548, MEMORY[0x277D1F138]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE2AC(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915550, MEMORY[0x277D1F0B0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE358(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915558, MEMORY[0x277D1EE20]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE404(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915560, MEMORY[0x277D1EEB0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE4B0(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915568, MEMORY[0x277D1EB88]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE55C(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915570, MEMORY[0x277D1EDC8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE608(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915578, MEMORY[0x277D1E9E8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE6B4(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915580, MEMORY[0x277D1F0C0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE760(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915588, MEMORY[0x277D1F1C0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE80C(uint64_t a1)
{
  result = sub_22C1CE8AC(&qword_27D915590, MEMORY[0x277D1F118]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C1CE8AC(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for ContextConversion(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for ContextConversion.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22C1CEAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BE1834C(v4);
  v6 = *(v5 + 16);
  v7 = sub_22BE19454();
  v8(v7);
  return a2;
}

uint64_t sub_22C1CEAFC()
{
  v1 = sub_22BE17BC4();
  v3 = v2(v1);
  sub_22BE18524(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22C1CEB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22BE1834C(v4);
  v6 = *(v5 + 32);
  v7 = sub_22BE19454();
  v8(v7);
  return a2;
}

uint64_t sub_22C1CEBA4()
{

  return sub_22C1CEAFC();
}

void sub_22C1CEC50()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

void sub_22C1CEE84()
{
  v1 = 1 << *(v0 + 32);
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  else
  {
    v2 = -1;
  }

  v3 = v2 & *(v0 + 64);
}

uint64_t sub_22C1CEF14(uint64_t a1, uint64_t a2)
{

  return sub_22C1CEB4C(v2, a2, type metadata accessor for TranscriptProtoStatementID);
}

uint64_t sub_22C1CEF3C()
{

  return sub_22C1CEAFC();
}

uint64_t sub_22C1CEF64(uint64_t a1, uint64_t a2)
{

  return sub_22C1CEB4C(v2, a2, type metadata accessor for ContextProtoToolQueryOutput);
}

uint64_t sub_22C1CEFE0()
{
  v4 = *(v2 - 128);

  return sub_22C1CEAA4(v0, v4, v1);
}

void sub_22C1CF000()
{
  v1 = *(v0 - 368);
  *(v0 - 72) = v1;
  v2 = *(v1 + 24);
  v3 = *(v1 + 16) + 1;
}

uint64_t sub_22C1CF034()
{
  v4 = *(v3 - 176);
  v5 = *(v3 - 168) + *(v1 + 72) * v0;
  v6 = *(v1 + 16);
  return v2;
}

uint64_t sub_22C1CF0C4(uint64_t result)
{
  if (!result)
  {
    return v1;
  }

  return result;
}

uint64_t sub_22C1CF0D4(uint64_t a1)
{
  *(v1 - 232) = a1;

  return sub_22C273984();
}

uint64_t sub_22C1CF0FC(uint64_t a1)
{
  *(v1 - 232) = a1;

  return sub_22C273984();
}

uint64_t sub_22C1CF124()
{
  v2 = *(v1 - 104);
  v3 = *(v1 - 96);
  return v0;
}

void sub_22C1CF154()
{
  *v1 = v0;
  *(v3 - 72) = v2;
  v4 = *(v2 + 24);
  v5 = *(v2 + 16) + 1;
}

uint64_t sub_22C1CF184()
{
  v2 = *(v0 + 8);
  result = *(v1 - 144);
  v4 = *(v1 - 344);
  return result;
}