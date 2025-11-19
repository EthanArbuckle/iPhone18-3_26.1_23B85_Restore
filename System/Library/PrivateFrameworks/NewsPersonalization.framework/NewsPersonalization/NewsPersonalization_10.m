uint64_t sub_1C6C00468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 28);
  sub_1C6C02F44(a2 + v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 28);
  sub_1C6C02F44(v1 + v3, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C03250(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 28);
  *(v5 + 12) = v16;
  sub_1C6C02EC4(v1 + v16, v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C02F44(v9, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6C008A8;
}

void sub_1C6C008A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B3E660((*a1)[5], v4);
    sub_1C6C02F44(v9 + v3, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    sub_1C6B3E2B0(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6C02E68(v5);
  }

  else
  {
    sub_1C6C02F44(v9 + v3, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
    sub_1C6B3E2B0(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.hasMetadata.getter()
{
  sub_1C6C03250(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  sub_1C6C02EC4(v0 + *(v5 + 28), v4, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6C02F44(v4, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 28);
  sub_1C6C02F44(v0 + v1, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AAB70];
  sub_1C6C03250(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  sub_1C6C02EC4(v1 + *(v8 + 32), v7, &qword_1EDCDFD00, v3);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6C02F44(v7, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6C00D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AAB70];
  sub_1C6C03250(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  sub_1C6C02EC4(a1 + *(v9 + 32), v8, &qword_1EDCDFD00, v4);
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D789F0();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6C02F44(v8, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  return result;
}

uint64_t sub_1C6C00EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 32);
  sub_1C6C02F44(a2 + v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 32);
  sub_1C6C02F44(v1 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C03250(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 32);
  *(v5 + 12) = v16;
  sub_1C6C02EC4(v1 + v16, v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C02F44(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6C01320;
}

void sub_1C6C01320(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6C02F44(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6C02F44(v9 + v3, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.hasDuration.getter()
{
  v1 = MEMORY[0x1E69AAB70];
  sub_1C6C03250(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  sub_1C6C02EC4(v0 + *(v6 + 32), v5, &qword_1EDCDFD00, v1);
  v7 = sub_1C6D78A00();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6C02F44(v5, &qword_1EDCDFD00, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 32);
  sub_1C6C02F44(v0 + v1, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.scrollData.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C01800()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D79B8);
  __swift_project_value_buffer(v0, qword_1EC1D79B8);
  sub_1C6C03250(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D80210;
  v6 = v5 + v4;
  v7 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  v13 = (v6 + 2 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "duration";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v10();
  v15 = (v6 + 3 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "scroll_data";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D79B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.decodeMessage<A>(decoder:)()
{
  result = sub_1C6D78AD0();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1C6C01D20();
        }

        else if (result == 4)
        {
          type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData();
          sub_1C6C03388(&unk_1EDCE4FA0, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
          sub_1C6D78BA0();
        }
      }

      else if (result == 1)
      {
        sub_1C6D78B50();
      }

      else if (result == 2)
      {
        sub_1C6C01C6C();
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6C01C6C()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 28);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6C03388(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6C01D20()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 32);
  sub_1C6D78A00();
  sub_1C6C03388(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6C01F08(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1C6C0212C(v3, a1, a2, a3);
      if (*(*(v3 + 8) + 16))
      {
        type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData();
        sub_1C6C03388(&unk_1EDCE4FA0, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
        sub_1C6D78CE0();
      }

      v9 = v3 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead() + 24);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C01F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  sub_1C6C03250(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  sub_1C6C02EC4(a1 + *(v14 + 28), v8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6C02F44(v8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6C03388(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6C02E68(v13);
}

uint64_t sub_1C6C0212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AAB70];
  sub_1C6C03250(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  sub_1C6C02EC4(a1 + *(v15 + 32), v9, &qword_1EDCDFD00, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6C02F44(v9, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6C03388(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  sub_1C6C03388(&qword_1EC1D79D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C02400@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  v4 = a2 + a1[6];
  sub_1C6D78A30();
  v5 = a1[7];
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[8];
  v8 = sub_1C6D78A00();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_1C6C02528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C03388(&unk_1EC1D79E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C025A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D79B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C0264C(uint64_t a1)
{
  v2 = sub_1C6C03388(qword_1EDCE38C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C026B8()
{
  sub_1C6C03388(qword_1EDCE38C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B41Storage_CompressedSessionEventArticleReadV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v63 = sub_1C6D78A00();
  v4 = *(v63 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69AAB70];
  v8 = MEMORY[0x1E69E6720];
  sub_1C6C03250(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v54 - v11;
  sub_1C6C032B4(0, &qword_1EC1D6F60, &qword_1EDCDFD00, v7);
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v54 - v15;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C03250(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, v8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v54 - v23;
  sub_1C6C032B4(0, &qword_1EC1D68C8, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v26 = v25;
  v27 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v54 - v28;
  if (*a1 != *a2)
  {
    goto LABEL_16;
  }

  v55 = v13;
  v59 = v4;
  v30 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead();
  v31 = *(v30 + 28);
  v32 = *(v26 + 48);
  v56 = v30;
  v57 = a1;
  sub_1C6C02EC4(a1 + v31, v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v58 = a2;
  sub_1C6C02EC4(a2 + v31, &v29[v32], qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  v33 = *(v17 + 48);
  if (v33(v29, 1, v16) == 1)
  {
    if (v33(&v29[v32], 1, v16) == 1)
    {
      sub_1C6C02F44(v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
      goto LABEL_9;
    }

LABEL_7:
    v34 = &qword_1EC1D68C8;
    v35 = qword_1EDCE2DF8;
    v36 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata;
LABEL_15:
    sub_1C6C0332C(v29, v34, v35, v36);
    goto LABEL_16;
  }

  sub_1C6C02EC4(v29, v24, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  if (v33(&v29[v32], 1, v16) == 1)
  {
    sub_1C6C02E68(v24);
    goto LABEL_7;
  }

  sub_1C6B3E2B0(&v29[v32], v20);
  v37 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v24, v20);
  sub_1C6C02E68(v20);
  sub_1C6C02E68(v24);
  sub_1C6C02F44(v29, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  if ((v37 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v38 = v56;
  v39 = *(v56 + 32);
  v40 = *(v55 + 48);
  v41 = MEMORY[0x1E69AAB70];
  v42 = v57;
  v29 = v62;
  sub_1C6C02EC4(v57 + v39, v62, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  sub_1C6C02EC4(v58 + v39, &v29[v40], &qword_1EDCDFD00, v41);
  v43 = *(v59 + 48);
  v44 = v63;
  if (v43(v29, 1, v63) != 1)
  {
    v45 = v61;
    sub_1C6C02EC4(v29, v61, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
    if (v43(&v29[v40], 1, v44) != 1)
    {
      v48 = v59;
      v49 = &v29[v40];
      v50 = v60;
      (*(v59 + 32))(v60, v49, v44);
      sub_1C6C03388(&qword_1EC1D6F68, MEMORY[0x1E69AAB70]);
      v51 = sub_1C6D79560();
      v52 = *(v48 + 8);
      v52(v50, v44);
      v52(v45, v44);
      sub_1C6C02F44(v29, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
      if ((v51 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    (*(v59 + 8))(v45, v44);
    goto LABEL_14;
  }

  if (v43(&v29[v40], 1, v44) != 1)
  {
LABEL_14:
    v34 = &qword_1EC1D6F60;
    v35 = &qword_1EDCDFD00;
    v36 = MEMORY[0x1E69AAB70];
    goto LABEL_15;
  }

  sub_1C6C02F44(v29, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
LABEL_19:
  if (sub_1C6B5A9B0(*(v42 + 1), *(v58 + 1)))
  {
    v53 = *(v38 + 24);
    sub_1C6D78A40();
    sub_1C6C03388(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
    v46 = sub_1C6D79560();
    return v46 & 1;
  }

LABEL_16:
  v46 = 0;
  return v46 & 1;
}

uint64_t sub_1C6C02E68(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6C02EC4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C03250(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6C02F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6C03250(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C6C030FC()
{
  sub_1C6C03250(319, &qword_1EDCDFA70, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v1 <= 0x3F)
    {
      sub_1C6C03250(319, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1C6C03250(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C6C03250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6C032B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6C03250(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6C0332C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C032B4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6C03388(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Collection<>.mean.getter(uint64_t a1, uint64_t a2)
{
  result = sub_1C6D799F0();
  if ((result & 1) == 0)
  {
    v4 = *(a2 + 8);
    sub_1C6D796B0();
    return sub_1C6D799E0();
  }

  return result;
}

void *sub_1C6C03494@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

void Collection<>.standardDeviation.getter(uint64_t a1, uint64_t a2)
{
  if (sub_1C6D799E0() >= 2)
  {
    v4 = Collection<>.mean.getter(a1, a2);
    MEMORY[0x1EEE9AC00](v4);
    v5 = *(a2 + 8);
    sub_1C6D796B0();
    v6 = sub_1C6D799E0();
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
    }

    else
    {
      sqrt(v7 / (v6 - 1));
    }
  }
}

double sub_1C6C0359C@<D0>(double *a1@<X0>, unint64_t *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + (*a2 - *(v3 + 16)) * (*a2 - *(v3 + 16));
  *a3 = result;
  return result;
}

uint64_t sub_1C6C035E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(*v2 + 16);
  v6 = type metadata accessor for ExtensionUserContext();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  sub_1C6C03890(v5, a1);
  a2[3] = v6;
  a2[4] = sub_1C6C04FF0();
  *a2 = v9;
  v10 = a1;

  return swift_unknownObjectRetain();
}

uint64_t sub_1C6C03698@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 16) userEmbeddingData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C6D75E60();
    v7 = v6;

    v8 = sub_1C6D75B10();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6C05048();
    sub_1C6D75AF0();
    sub_1C6B1C9F0(v5, v7);

    v12 = v14;
    v13 = v15;
  }

  else
  {
    if (qword_1EDCEA6A0 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    result = sub_1C6D78D30();
    v12 = 0;
    v13 = 0;
  }

  *a1 = v12;
  *(a1 + 8) = v13;
  return result;
}

uint64_t sub_1C6C03890(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v5 = OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___subscriptionState;
  v6 = sub_1C6D76330();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___bundled) = 0;
  *(v2 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___read) = 0;
  *(v2 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___listened) = 0;
  *(v2 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___seen) = 0;
  v7 = OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___location;
  sub_1C6C04D28(0);
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  *(v2 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___newlySubscribed) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1C6C03998()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v2 = [*(v0 + 16) rankedAllSubscribedTagIDs];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1C6D79780();
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v1 = sub_1C6B1E610(v4);

    v5 = *(v0 + 32);
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_1C6C03A44()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = [*(v0 + 16) autoFavoriteTagIDs];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1C6D79780();
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v1 = sub_1C6B1E610(v4);

    v5 = *(v0 + 40);
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t sub_1C6C03AF0()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
    *(v0 + 48) = MEMORY[0x1E69E7CD0];
  }

  return v1;
}

uint64_t sub_1C6C03B30()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = [*(v0 + 16) groupableTagIDs];
    if (v2)
    {
      v3 = v2;
      v1 = sub_1C6D79960();
    }

    else
    {
      v1 = MEMORY[0x1E69E7CD0];
    }

    v4 = *(v0 + 56);
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_1C6C03BD0@<X0>(uint64_t a1@<X8>)
{
  sub_1C6C04C94(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___subscriptionState;
  swift_beginAccess();
  sub_1C6C053DC(v1 + v10, v9, sub_1C6C04C94);
  v11 = sub_1C6D76330();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1C6C0525C(v9, sub_1C6C04C94);
  sub_1C6C03DD0(v1, a1);
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_1C6C05444(v6, v1 + v10, sub_1C6C04C94);
  return swift_endAccess();
}

uint64_t sub_1C6C03DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*(a1 + 16) bundleSubscription];
  if (!v3)
  {
    v9 = *MEMORY[0x1E69E32A0];
    v10 = sub_1C6D76330();
    v7 = *(*(v10 - 8) + 104);
    v6 = v10;
    v11 = a2;
    v12 = v9;
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 unprotectedSubscriptionState];

  v6 = sub_1C6D76330();
  v7 = *(*(v6 - 8) + 104);
  if (v5 > 1)
  {
    goto LABEL_7;
  }

  if (!v5)
  {
    v8 = MEMORY[0x1E69E32B0];
    goto LABEL_9;
  }

  if (v5 == 1)
  {
    v8 = MEMORY[0x1E69E32A8];
  }

  else
  {
LABEL_7:
    v8 = MEMORY[0x1E69E32A0];
  }

LABEL_9:
  v12 = *v8;
  v11 = a2;
LABEL_10:

  return v7(v11, v12, v6);
}

uint64_t sub_1C6C03EF0(uint64_t a1)
{
  v1 = [*(a1 + 16) bundleSubscription];
  v2 = MEMORY[0x1E69E7CD0];
  if (v1)
  {
    v3 = v1;
    v4 = [v1 bundleChannelIDs];
    v5 = [v4 set];

    v6 = sub_1C6D79960();
    v7 = sub_1C6C03FB4(v6);

    if (v7)
    {
      return v7;
    }
  }

  return v2;
}

uint64_t sub_1C6C03FB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C6C05384();
    v2 = sub_1C6D79D30();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v13 = v2;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_11:
      sub_1C6B68D84(*(a1 + 48) + 40 * (__clz(__rbit64(v5)) | (v9 << 6)), &v12);
      if ((swift_dynamicCast() & 1) == 0 || !v11)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_1C6C05104(v10, v11);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 56 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_1C6C0414C(uint64_t a1)
{
  v1 = [*(a1 + 16) recentlySeenHistoryItems];
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v2 = v1;
  sub_1C6C05320();
  v3 = sub_1C6D79780();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v19 = MEMORY[0x1E69E7CC0];
      result = sub_1C6B39280(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        break;
      }

      v6 = 0;
      v7 = v19;
      v18 = v3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1CCA56240](v6, v3);
        }

        else
        {
          if (v6 >= *(v18 + 16))
          {
            goto LABEL_18;
          }

          v9 = *(v3 + 8 * v6 + 32);
          swift_unknownObjectRetain();
        }

        result = [v9 articleID];
        if (!result)
        {
          goto LABEL_23;
        }

        v10 = result;
        v11 = sub_1C6D795A0();
        v13 = v12;
        swift_unknownObjectRelease();

        v15 = *(v19 + 16);
        v14 = *(v19 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1C6B39280((v14 > 1), v15 + 1, 1);
        }

        *(v19 + 16) = v15 + 1;
        v16 = v19 + 16 * v15;
        *(v16 + 32) = v11;
        *(v16 + 40) = v13;
        ++v6;
        if (v8 == v4)
        {

          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v4 = sub_1C6D79E90();
      if (!v4)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    v7 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v17 = sub_1C6B1E610(v7);

    return v17;
  }

  return result;
}

uint64_t sub_1C6C04348()
{
  if (*(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___listened))
  {
    v1 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___listened);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
    *(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___listened) = MEMORY[0x1E69E7CD0];
  }

  return v1;
}

uint64_t sub_1C6C04390()
{
  v1 = OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___seen;
  if (*(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___seen))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___seen);
  }

  else
  {
    v3 = [*(v0 + 16) recentlyReadHistoryItems];
    if (v3)
    {
      v4 = v3;
      sub_1C6C05320();
      v5 = sub_1C6D79490();

      v2 = sub_1C6B69168(v5);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CD0];
    }

    v6 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1C6C04454@<X0>(uint64_t a1@<X8>)
{
  sub_1C6C04CB4(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___location;
  swift_beginAccess();
  sub_1C6C053DC(v1 + v10, v9, sub_1C6C04CB4);
  sub_1C6C04D28(0);
  v12 = v11;
  v13 = *(v11 - 8);
  if ((*(v13 + 48))(v9, 1, v11) != 1)
  {
    return sub_1C6C052BC(v9, a1);
  }

  sub_1C6C0525C(v9, sub_1C6C04CB4);
  v14 = sub_1C6D770E0();
  (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  sub_1C6C053DC(a1, v6, sub_1C6C04D28);
  (*(v13 + 56))(v6, 0, 1, v12);
  swift_beginAccess();
  sub_1C6C05444(v6, v1 + v10, sub_1C6C04CB4);
  return swift_endAccess();
}

uint64_t sub_1C6C04678(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

void sub_1C6C046E0(uint64_t a1)
{
  sub_1C6C0509C();
  v37 = v2;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 16);
    v38 = v6;
    v8 = [v7 rankedAllSubscribedTagIDs];
    if (v8)
    {
      v9 = v8;
      v10 = sub_1C6D79780();
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v11 = [v7 rankedAllSubscriptionDates];
    if (v11)
    {
      v12 = v11;
      sub_1C6D75F50();
      v13 = sub_1C6D79780();

      v14 = *(v10 + 16);
      if (v14)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      v14 = *(v10 + 16);
      if (v14)
      {
LABEL_8:
        v15 = 0;
        v16 = v10 + 40;
        v34 = v14 - 1;
        v35 = v10 + 40;
        v36 = MEMORY[0x1E69E7CC0];
        do
        {
          v17 = (v16 + 16 * v15);
          v18 = v15;
          while (1)
          {
            if (v18 >= *(v10 + 16))
            {
              __break(1u);
LABEL_26:
              __break(1u);
              return;
            }

            v19 = *(v13 + 16);
            if (v18 == v19)
            {
              goto LABEL_24;
            }

            if (v18 >= v19)
            {
              goto LABEL_26;
            }

            v20 = *(v17 - 1);
            v21 = *v17;
            v22 = sub_1C6D75F50();
            v23 = *(v22 - 8);
            v24 = *(v23 + 16);
            v25 = v13 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v18;
            v26 = *(v37 + 48);
            *v5 = v20;
            *(v5 + 1) = v21;
            v24(&v5[v26], v25, v22);

            v27 = sub_1C6D75ED0();
            v28 = [v38 containsDate_];

            if (v28)
            {
              break;
            }

            ++v18;
            sub_1C6C0525C(v5, sub_1C6C0509C);
            v17 += 2;
            if (v14 == v18)
            {
              goto LABEL_24;
            }
          }

          sub_1C6C0525C(v5, sub_1C6C0509C);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_1C6B6592C(0, *(v36 + 2) + 1, 1, v36);
          }

          v30 = *(v36 + 2);
          v29 = *(v36 + 3);
          if (v30 >= v29 >> 1)
          {
            v36 = sub_1C6B6592C((v29 > 1), v30 + 1, 1, v36);
          }

          v15 = v18 + 1;
          v16 = v35;
          v31 = v36;
          *(v36 + 2) = v30 + 1;
          v32 = &v31[16 * v30];
          *(v32 + 4) = v20;
          *(v32 + 5) = v21;
        }

        while (v34 != v18);
        goto LABEL_24;
      }
    }

    v36 = MEMORY[0x1E69E7CC0];
LABEL_24:

    sub_1C6B1E610(v36);
  }
}

uint64_t sub_1C6C04A1C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  sub_1C6C0525C(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___subscriptionState, sub_1C6C04C94);
  v6 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___bundled);

  v7 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___read);

  v8 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___listened);

  v9 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___seen);

  sub_1C6C0525C(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___location, sub_1C6C04CB4);
  v10 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization20ExtensionUserContext____lazy_storage___newlySubscribed);

  return v0;
}

uint64_t sub_1C6C04AFC()
{
  sub_1C6C04A1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExtensionUserContext()
{
  result = qword_1EDCE72A0;
  if (!qword_1EDCE72A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6C04BA8()
{
  sub_1C6C04C94(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C6C04CB4(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C6C04CD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6C04D90()
{
  v1 = [*(*v0 + 16) mutedTagIDs];
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v2 = v1;
  v3 = sub_1C6D79960();

  return v3;
}

uint64_t sub_1C6C04EA8()
{
  v1 = [*(*v0 + 16) purchasedTagIDs];
  v2 = sub_1C6D79960();

  return v2;
}

unint64_t sub_1C6C04FF0()
{
  result = qword_1EDCE72B0;
  if (!qword_1EDCE72B0)
  {
    type metadata accessor for ExtensionUserContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE72B0);
  }

  return result;
}

unint64_t sub_1C6C05048()
{
  result = qword_1EC1D7A58;
  if (!qword_1EC1D7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7A58);
  }

  return result;
}

void sub_1C6C0509C()
{
  if (!qword_1EDCE6690)
  {
    sub_1C6D75F50();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE6690);
    }
  }
}

uint64_t sub_1C6C05104(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1C6D7A260();
  sub_1C6D79610();
  result = sub_1C6D7A2B0();
  v8 = v5 + 56;
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  v11 = v10 >> 6;
  v12 = *(v5 + 56 + 8 * (v10 >> 6));
  v13 = 1 << v10;
  if (((1 << v10) & v12) != 0)
  {
    v14 = ~v9;
    while (1)
    {
      v15 = (*(v5 + 48) + 16 * v10);
      if (*v15 == a1 && v15[1] == a2)
      {
        break;
      }

      result = sub_1C6D7A130();
      if (result)
      {
        v21 = v15[1];
        break;
      }

      v10 = (v10 + 1) & v14;
      v11 = v10 >> 6;
      v12 = *(v8 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_9;
      }
    }

    *v15 = a1;
    v15[1] = a2;
  }

  else
  {
LABEL_9:
    if (*(v5 + 16) >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v8 + 8 * v11) = v13 | v12;
      v17 = (*(v5 + 48) + 16 * v10);
      *v17 = a1;
      v17[1] = a2;
      v18 = *(v5 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v5 + 16) = v20;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6C0525C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6C052BC(uint64_t a1, uint64_t a2)
{
  sub_1C6C04D28(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6C05320()
{
  result = qword_1EDCE6568;
  if (!qword_1EDCE6568)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCE6568);
  }

  return result;
}

void sub_1C6C05384()
{
  if (!qword_1EDCEA490)
  {
    v0 = sub_1C6D79D40();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA490);
    }
  }
}

uint64_t sub_1C6C053DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C05444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened();
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[*(v8 + 24)];
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened()
{
  result = qword_1EDCE4528;
  if (!qword_1EDCE4528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6C0568C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened();
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[*(v9 + 24)];
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6C05824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened() + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened() + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventTrackListened.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened() + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    v20 = &v15[*(v10 + 24)];
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

BOOL Com_Apple_News_Personalization_SessionEventTrackListened.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened();
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventTrackListened.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened() + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened() + 20);
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_1C6C05EFC()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7A60);
  __swift_project_value_buffer(v0, qword_1EC1D7A60);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "article";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTrackListened._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7A60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6C0619C();
    }
  }

  return result;
}

uint64_t sub_1C6C0619C()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened() + 20);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6C06BEC(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.traverse<A>(visitor:)()
{
  result = sub_1C6C062A8(v0);
  if (!v1)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6C062A8(uint64_t a1)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened();
  sub_1C6B482A8(a1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B4833C(v5);
  }

  sub_1C6B483C8(v5, v10);
  sub_1C6C06BEC(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventTrackListened.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened();
  sub_1C6C06BEC(&qword_1EC1D7A78, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C06588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C06BEC(&qword_1EC1D7A98, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C06604@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7A60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C066AC(uint64_t a1)
{
  v2 = sub_1C6C06BEC(&qword_1EC1D7A88, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C06718()
{
  sub_1C6C06BEC(&qword_1EC1D7A88, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventTrackListenedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  sub_1C6B49A50();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened() + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6C06BEC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6C06BEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t URL.validDirectory.getter()
{
  v1 = sub_1C6D75CA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C06DC4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6D7E630;
  v7 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v8 = v7;
  sub_1C6B20798(inited);
  swift_setDeallocating();
  sub_1C6B229D4(inited + 32);
  sub_1C6D75CE0();

  if (!v0)
  {
    v10 = sub_1C6D75C50();
    (*(v2 + 8))(v5, v1);
    if (v10 == 2 || (v10 & 1) == 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = sub_1C6D75D70();
    }
  }

  return v9 & 1;
}

void sub_1C6C06DC4()
{
  if (!qword_1EDCE7CE0)
  {
    type metadata accessor for URLResourceKey(255);
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7CE0);
    }
  }
}

uint64_t URL.directoryExits.getter()
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v0 = [objc_opt_self() defaultManager];
  sub_1C6D75DB0();
  v1 = sub_1C6D79570();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v5];

  v3 = *MEMORY[0x1E69E9840];
  return (v2 & v5);
}

void *URL.directoryAllocatedSize.getter()
{
  v43[6] = *MEMORY[0x1E69E9840];
  v1 = sub_1C6D75CA0();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D75DE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = URL.validDirectory.getter();
  if (!v0)
  {
    if (v11)
    {
      v40 = v2;
      v32[3] = v11;
      v42 = 0;
      v12 = [objc_opt_self() defaultManager];
      v13 = sub_1C6D75D30();
      v43[0] = 0;
      v14 = [v12 contentsOfDirectoryAtURL:v13 includingPropertiesForKeys:0 options:0 error:v43];

      v2 = v43[0];
      if (v14)
      {
        v15 = sub_1C6D79780();
        v16 = v2;

        v41 = *(v15 + 16);
        if (v41)
        {
          v34 = v1;
          v17 = v7;
          v18 = 0;
          v2 = 0;
          v19 = *MEMORY[0x1E695DC58];
          v37 = v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
          v38 = v19;
          v36 = v17 + 16;
          v33 = (v40 + 1);
          v39 = (v17 + 8);
          v40 = v17;
          v35 = xmmword_1C6D7E630;
          while (1)
          {
            if (v18 >= *(v15 + 16))
            {
              __break(1u);
LABEL_21:
              __break(1u);
            }

            (v40[2])(v10, v37 + v40[9] * v18, v6);
            sub_1C6C06DC4();
            inited = swift_initStackObject();
            *(inited + 16) = v35;
            v21 = v38;
            *(inited + 32) = v38;
            v22 = v21;
            sub_1C6B20798(inited);
            swift_setDeallocating();
            sub_1C6B229D4(inited + 32);
            v23 = v42;
            sub_1C6D75CE0();
            v42 = v23;
            if (v23)
            {
              break;
            }

            v24 = sub_1C6D75C70();
            v26 = v25;
            (*v33)(v5, v34);
            (*v39)(v10, v6);
            if (v26)
            {
              v27 = 0;
            }

            else
            {
              v27 = v24;
            }

            v28 = __OFADD__(v27, v2);
            v2 = (v2 + v27);
            if (v28)
            {
              goto LABEL_21;
            }

            if (v41 == ++v18)
            {
              goto LABEL_17;
            }
          }

          (*v39)(v10, v6);
        }

        else
        {
          v2 = 0;
LABEL_17:
        }
      }

      else
      {
        v29 = v43[0];
        sub_1C6D75CC0();

        swift_willThrow();
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v2;
}

id sub_1C6C072E4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v0 setAllowedUnits_];
  result = [v0 setCountStyle_];
  qword_1EC1D7AA0 = v0;
  return result;
}

uint64_t URL.directorySize.getter()
{
  URL.directoryAllocatedSize.getter();
  if (!v1)
  {
    if (v2)
    {
      return 0;
    }

    else
    {
      if (qword_1EC1D59D8 != -1)
      {
        swift_once();
      }

      v3 = qword_1EC1D7AA0;
      v4 = sub_1C6D799A0();
      v5 = [v3 stringForObjectValue_];

      if (v5)
      {
        v0 = sub_1C6D795A0();
      }

      else
      {
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1C6C0742C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6C07A2C(0, &qword_1EDCE7D70);
    v3 = sub_1C6D79D30();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      v12 = *(v3 + 40);
      result = sub_1C6D7A250();
      v14 = result & v7;
      v15 = (result & v7) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v7);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v7;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C6C07550(uint64_t a1)
{
  v2 = sub_1C6D783E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1C6C07864();
    v10 = sub_1C6D79D30();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1C6C07A7C(&qword_1EDCE7A68, MEMORY[0x1E6996088]);
      v18 = sub_1C6D79500();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1C6C07A7C(&qword_1EDCE5D20, MEMORY[0x1E6996088]);
          v25 = sub_1C6D79560();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1C6C07864()
{
  if (!qword_1EC1D7AA8)
  {
    sub_1C6D783E0();
    sub_1C6C07A7C(&qword_1EDCE7A68, MEMORY[0x1E6996088]);
    v0 = sub_1C6D79D40();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D7AA8);
    }
  }
}

uint64_t sub_1C6C078F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6C07A2C(0, &qword_1EC1D7AB0);
    v3 = sub_1C6D79D30();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x1CCA56710](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1C6C07A2C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C6D79D40();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1C6C07A7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.tagID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.tagID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted()
{
  result = qword_1EDCE4EF0;
  if (!qword_1EDCE4EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted() + 20);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C07D30()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7AC0);
  __swift_project_value_buffer(v0, qword_1EC1D7AC0);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "tag_id";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagMuted._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7AC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6D78CC0(), !v1))
  {
    v6 = v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted() + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagMuted.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted() + 20);
  sub_1C6D78A40();
  sub_1C6C085D4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagMuted.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted();
  sub_1C6C085D4(&qword_1EC1D7AD8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C081C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C085D4(&qword_1EC1D7AF8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C08240@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7AC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C082E8(uint64_t a1)
{
  v2 = sub_1C6C085D4(&qword_1EC1D7AE8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C08354()
{
  sub_1C6C085D4(&qword_1EC1D7AE8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);

  return sub_1C6D78C20();
}

uint64_t sub_1C6C084F0(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_1C6D78A40();
  sub_1C6C085D4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6C085D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6C0861C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= a1)
  {

    return v2;
  }

  sub_1C6C0B764();
  v7 = sub_1C6B75C84(a1, a2);
  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v9 = v6;
  v10 = v5;
  v11 = v4;
  sub_1C6D7A190();
  swift_unknownObjectRetain_n();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v9 >> 1, v10))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v13 != (v9 >> 1) - v10)
  {
LABEL_13:
    swift_unknownObjectRelease();
    v6 = v9;
    v5 = v10;
    v4 = v11;
LABEL_3:
    sub_1C6B6E3BC(v7, v4, v5, v6);
    v2 = v8;
    swift_unknownObjectRelease();
    return v2;
  }

  v2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1C6C08754(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  v5 = a1;
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      goto LABEL_3;
    }

LABEL_33:

    return v4;
  }

  if (sub_1C6D79E90() <= a1)
  {
    goto LABEL_33;
  }

LABEL_3:

  v22 = sub_1C6BF4544(v6);
  v7 = &v22;
  sub_1C6C0B8F0();
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = v22;
    v3 = v22 < 0 || (v22 & 0x4000000000000000) != 0;
    if (!v3)
    {
      v8 = *(v22 + 16);
      if (v8 >= v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = *(v22 + 16);
      }

      if (v5)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      if (v8 >= v10)
      {
        goto LABEL_15;
      }

      goto LABEL_46;
    }
  }

  v7 = sub_1C6D79E90();
  result = sub_1C6D79E90();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v7 >= v5)
    {
      v21 = v5;
    }

    else
    {
      v21 = v7;
    }

    if (v7 < 0)
    {
      v21 = v5;
    }

    if (v5)
    {
      v10 = v21;
    }

    else
    {
      v10 = 0;
    }

    if (sub_1C6D79E90() >= v10)
    {
LABEL_15:
      if ((v2 & 0xC000000000000001) != 0 && v10)
      {
        sub_1C6B0C69C(0, &qword_1EC1D6EA8, 0x1E69B6CC8);

        v11 = 0;
        do
        {
          v12 = v11 + 1;
          sub_1C6D79D60();
          v11 = v12;
        }

        while (v10 != v12);
      }

      else
      {
      }

      if (v3)
      {
        v13 = sub_1C6D79EE0();
        v5 = v14;
        v7 = v15;
        v10 = v16;

        v2 = v13;
        if (v10)
        {
LABEL_26:
          sub_1C6D7A190();
          swift_unknownObjectRetain_n();
          v18 = swift_dynamicCastClass();
          if (!v18)
          {
            swift_unknownObjectRelease();
            v18 = MEMORY[0x1E69E7CC0];
          }

          v19 = *(v18 + 16);

          if (!__OFSUB__(v10 >> 1, v7))
          {
            if (v19 == (v10 >> 1) - v7)
            {
              v4 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (!v4)
              {
                swift_unknownObjectRelease();
                return MEMORY[0x1E69E7CC0];
              }

              return v4;
            }

            goto LABEL_48;
          }

LABEL_47:
          __break(1u);
LABEL_48:
          swift_unknownObjectRelease_n();
        }
      }

      else
      {
        v7 = 0;
        v5 = v2 + 32;
        v10 = (2 * v10) | 1;
        if (v10)
        {
          goto LABEL_26;
        }
      }

      sub_1C6B6E4AC(v2, v5, v7, v10);
      v4 = v17;
      swift_unknownObjectRelease();
      return v4;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  __break(1u);
  return result;
}

uint64_t NotificationScoringServiceType.score(items:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D75F80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  v11 = (*(a3 + 8))(a1, v10, a2, a3);
  (*(v7 + 8))(v10, v6);
  return v11;
}

uint64_t sub_1C6C08B00(__n128 *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v49 = *a1;
  v6 = sub_1C6C08FC4(a2, a3, a4);
  v7 = v4;
  if (v4)
  {
    if (qword_1EC1D5A98 != -1)
    {
LABEL_35:
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1D314();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1C6D7E630;
    v51[0] = 0;
    v51[1] = 0xE000000000000000;
    v51[3] = v7;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    *(v8 + 56) = MEMORY[0x1E69E6158];
    *(v8 + 64) = sub_1C6B2064C();
    *(v8 + 32) = 0;
    *(v8 + 40) = 0xE000000000000000;
    sub_1C6D78D30();

    sub_1C6C0B6E4();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    return sub_1C6D782F0();
  }

  v45 = v6;
  if (v5 >> 62)
  {
    v6 = sub_1C6D79E90();
    v13 = v6;
  }

  else
  {
    v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v49;
  if (!v13)
  {
LABEL_27:
    MEMORY[0x1EEE9AC00](v6);
    v39 = sub_1C6C0BE14(v45, sub_1C6C0B758);

    if (*(v39 + 16))
    {
      sub_1C6C0C0AC(0, &qword_1EDCEA470, MEMORY[0x1E69E6EC8]);
      v40 = sub_1C6D79F20();
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC8];
    }

    v51[0] = v40;

    sub_1C6C0BA94(v41, 1, v51);

    sub_1C6C0B6E4();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    swift_allocObject();
    return sub_1C6D78300();
  }

  v7 = 0;
  v47 = v5 & 0xFFFFFFFFFFFFFF8;
  v48 = v5 & 0xC000000000000001;
  v15 = MEMORY[0x1E69E7CC8];
  v46 = v5;
  while (1)
  {
    if (v48)
    {
      v18 = MEMORY[0x1CCA56240](v7, v5, v14);
    }

    else
    {
      if (v7 >= *(v47 + 16))
      {
        goto LABEL_32;
      }

      v18 = *(v5 + 8 * v7 + 32);
    }

    v19 = v18;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v50 = v7 + 1;
    v20 = [v18 identifier];
    if (!v20)
    {
      break;
    }

    v21 = v20;
    v22 = sub_1C6D795A0();
    v24 = v23;

    v25 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = v15;
    v28 = sub_1C6B5DEA8(v22, v24);
    v29 = v15[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_33;
    }

    v32 = v27;
    if (v15[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v27)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1C6B741AC();
        if (v32)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_1C6B70E28(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_1C6B5DEA8(v22, v24);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_38;
      }

      v28 = v33;
      if (v32)
      {
LABEL_8:

        v15 = v51[0];
        v16 = *(v51[0] + 56);
        v17 = *(v16 + 8 * v28);
        *(v16 + 8 * v28) = v25;

        goto LABEL_9;
      }
    }

    v15 = v51[0];
    *(v51[0] + 8 * (v28 >> 6) + 64) |= 1 << v28;
    v35 = (v15[6] + 16 * v28);
    *v35 = v22;
    v35[1] = v24;
    *(v15[7] + 8 * v28) = v25;

    v36 = v15[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_34;
    }

    v15[2] = v38;
LABEL_9:
    ++v7;
    v14 = v49;
    v5 = v46;
    if (v50 == v13)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_38:
  sub_1C6D7A1C0();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_1C6C08FC4(void *a1, uint64_t a2, uint64_t a3)
{
  v70 = a3;
  v6 = sub_1C6D783E0();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[15];
  v14 = a1[16];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1 + 12, v13);
  v72 = (*(v14 + 8))(v13, v14);
  v75 = a2;
  sub_1C6C0C114();
  sub_1C6C0C338(0, &qword_1EDCE6698, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  sub_1C6C0C28C(&qword_1EC1D7B10, sub_1C6C0C114);
  sub_1C6C0C17C();
  isUniquelyReferenced_nonNull_native = sub_1C6D79680();
  v16 = isUniquelyReferenced_nonNull_native;
  v68 = v3;
  v17 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_44:
    isUniquelyReferenced_nonNull_native = sub_1C6D79E90();
    v18 = isUniquelyReferenced_nonNull_native;
  }

  else
  {
    v18 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = v12;
  if (v18)
  {
    v19 = 0;
    v73 = MEMORY[0x1E69E7CC0];
    v12 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
    do
    {
      v20 = v19;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1CCA56240](v20, v16);
          v19 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v20 >= *(v17 + 16))
          {
            goto LABEL_43;
          }

          v21 = *(v16 + 8 * v20 + 32);
          v19 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        v22 = v21;
        v23 = [v22 identifier];
        if (v23)
        {
          break;
        }

        ++v20;
        if (v19 == v18)
        {
          goto LABEL_22;
        }
      }

      v24 = v23;
      v25 = sub_1C6D795A0();
      v62 = v26;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1C6B6592C(0, *(v73 + 2) + 1, 1, v73);
        v73 = isUniquelyReferenced_nonNull_native;
      }

      v28 = *(v73 + 2);
      v27 = *(v73 + 3);
      if (v28 >= v27 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1C6B6592C((v27 > 1), v28 + 1, 1, v73);
        v73 = isUniquelyReferenced_nonNull_native;
      }

      v29 = v73;
      *(v73 + 2) = v28 + 1;
      v30 = &v29[16 * v28];
      v31 = v62;
      *(v30 + 4) = v25;
      *(v30 + 5) = v31;
    }

    while (v19 != v18);
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

LABEL_22:
  v32 = v69[23];
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  *(&v61 - 6) = v73;
  *(&v61 - 40) = v72 & 1;
  *(&v61 - 4) = v33;
  *(&v61 - 3) = v16;
  v34 = v71;
  *(&v61 - 2) = v70;
  v35 = v68;
  sub_1C6D784F0();
  if (v35)
  {
  }

  else
  {

    v36 = v67;
    sub_1C6D78500();
    v32 = v77;

    v37 = [v32 notificationScoringConfiguration];

    if (v37)
    {
      v38 = &selRef_bundleOutputConfiguration;
      if ((v72 & 1) == 0)
      {
        v38 = &selRef_nonBundleOutputConfiguration;
      }

      v39 = [v37 *v38];
      v40 = [v39 notificationScoresOutputName];

      sub_1C6D795A0();
      v41 = v63;
      sub_1C6D783C0();
      sub_1C6C0C28C(&qword_1EDCE7A60, sub_1C6B7A08C);
      v44 = sub_1C6D786D0();
      (*(v64 + 8))(v41, v65);
      v45 = *(v44 + 16);
      if (v45)
      {
        v75 = MEMORY[0x1E69E7CC0];
        sub_1C6B39260(0, v45, 0);
        v46 = v75;
        v47 = *(v75 + 16);
        v48 = 32;
        do
        {
          v49 = *(v44 + v48);
          v75 = v46;
          v50 = v46[3];
          if (v47 >= v50 >> 1)
          {
            sub_1C6B39260((v50 > 1), v47 + 1, 1);
            v46 = v75;
          }

          v46[2] = v47 + 1;
          *&v46[v47 + 4] = v49;
          v48 += 4;
          ++v47;
          --v45;
        }

        while (v45);
      }

      else
      {

        v46 = MEMORY[0x1E69E7CC0];
      }

      v51 = v46[2];
      v52 = *(v73 + 2);
      v53 = v71;
      if (v51 == v52)
      {
        if (qword_1EC1D5A98 != -1)
        {
          swift_once();
        }

        sub_1C6B1D314();
        v54 = swift_allocObject();
        v55 = MEMORY[0x1E69E6530];
        *(v54 + 16) = xmmword_1C6D7E630;
        v56 = MEMORY[0x1E69E65A8];
        *(v54 + 56) = v55;
        *(v54 + 64) = v56;
        *(v54 + 32) = v51;
        sub_1C6D79AC0();
        sub_1C6D78D30();

        v32 = sub_1C6C2BFB0(v73, v46);

        (*(v66 + 8))(v53, v67);
      }

      else
      {

        v75 = 0;
        v76 = 0xE000000000000000;
        sub_1C6D79D50();

        v75 = 0x20646E756F46;
        v76 = 0xE600000000000000;
        v74 = v51;
        v57 = sub_1C6D7A0E0();
        MEMORY[0x1CCA55B00](v57);

        MEMORY[0x1CCA55B00](0xD000000000000015, 0x80000001C6D9F880);
        v74 = v52;
        v58 = sub_1C6D7A0E0();
        MEMORY[0x1CCA55B00](v58);

        v59 = v75;
        v32 = v76;
        sub_1C6C0C238();
        swift_allocError();
        *v60 = v59;
        v60[1] = v32;
        swift_willThrow();

        (*(v66 + 8))(v53, v67);
      }
    }

    else
    {

      sub_1C6C0C238();
      swift_allocError();
      *v42 = 0;
      v42[1] = 0;
      swift_willThrow();
      (*(v66 + 8))(v34, v36);
    }
  }

  return v32;
}

void sub_1C6C09854(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1C6D795A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1C6C098CC(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = sub_1C6D78810();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [*(a1 + 24) notificationScoringConfiguration];
  if (v20)
  {
    v21 = v20;
    v37 = a4;
    v38 = a6;
    v39 = a7;
    v40 = v7;
    if (qword_1EC1D5A98 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v22 = swift_allocObject();
    v36 = xmmword_1C6D7E630;
    *(v22 + 16) = xmmword_1C6D7E630;
    v23 = *(a2 + 16);
    v24 = MEMORY[0x1E69E65A8];
    *(v22 + 56) = MEMORY[0x1E69E6530];
    *(v22 + 64) = v24;
    *(v22 + 32) = v23;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v25 = &selRef_bundleOutputConfiguration;
    if ((a3 & 1) == 0)
    {
      v25 = &selRef_nonBundleOutputConfiguration;
    }

    v26 = [v21 *v25];
    v27 = [v26 notificationScoresOutputName];

    sub_1C6D795A0();
    sub_1C6C09C3C(v21, a3 & 1, a5, v19);
    v28 = sub_1C6D75F60();
    v37 = v29;
    v38 = v28;
    sub_1C6C0C2D4(0, &qword_1EDCE64A0, MEMORY[0x1E6996088], MEMORY[0x1E69E6F90]);
    v30 = sub_1C6D783E0();
    v31 = *(v30 - 8);
    v32 = *(v31 + 72);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v36;
    sub_1C6D783C0();
    sub_1C6B68E34(v34);
    swift_setDeallocating();
    (*(v31 + 8))(v34 + v33, v30);
    swift_deallocClassInstance();
    sub_1C6D78790();
  }

  else
  {
    sub_1C6C0C238();
    swift_allocError();
    *v35 = 0;
    v35[1] = 0;
    swift_willThrow();
  }
}

id sub_1C6C09C3C@<X0>(char *a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a2;
  v78 = a4;
  sub_1C6C0C2D4(0, &qword_1EDCEA320, MEMORY[0x1E6996150], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = (&v69 - v8);
  v9 = sub_1C6D783E0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D78810();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v12;
  if (a3 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C6D79E90())
  {
    v18 = MEMORY[0x1E69E7CC0];
    v74 = i & ~(i >> 63);
    v73 = v13;
    v72 = v14;
    if (i)
    {
      break;
    }

LABEL_18:
    v45 = v77[10];
    v13 = v77[11];
    __swift_project_boxed_opaque_existential_1(v77 + 7, v45);
    v14 = [a1 fullBodyEmbeddingDimension];
    (v13[2])(v18, v14, [a1 titleEmbeddingDimension], v45, v13);

    if ([a1 maxNotabilityScores] <= 0)
    {
      if (qword_1EC1D5A98 != -1)
      {
        goto LABEL_53;
      }

      goto LABEL_27;
    }

    v46 = [a1 maxNotabilityScores];
    v47 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
LABEL_32:
      v52 = v73;
      v53 = v72;
      v54 = v71;
      sub_1C6C0A648(v46, v47);

      sub_1C6D787F0();
      (*(v53 + 8))(v54, v52);
      while (1)
      {
        sub_1C6D783C0();
        v55 = MEMORY[0x1E69E7CC0];
        if (!i)
        {
          break;
        }

        *&v84[0] = MEMORY[0x1E69E7CC0];
        sub_1C6B392F0(0, v74, 0);
        if ((i & 0x8000000000000000) == 0)
        {
          v55 = *&v84[0];
          if ((a3 & 0xC000000000000001) != 0)
          {
            for (j = 0; j != i; ++j)
            {
              v57 = [MEMORY[0x1CCA56240](j a3)];
              swift_unknownObjectRelease();
              *&v84[0] = v55;
              v59 = *(v55 + 16);
              v58 = *(v55 + 24);
              if (v59 >= v58 >> 1)
              {
                sub_1C6B392F0((v58 > 1), v59 + 1, 1);
                v55 = *&v84[0];
              }

              *(v55 + 16) = v59 + 1;
              *(v55 + 4 * v59 + 32) = v57;
            }
          }

          else
          {
            v60 = (a3 + 32);
            do
            {
              v61 = [*v60 source];
              *&v84[0] = v55;
              v63 = *(v55 + 16);
              v62 = *(v55 + 24);
              if (v63 >= v62 >> 1)
              {
                v64 = v61;
                sub_1C6B392F0((v62 > 1), v63 + 1, 1);
                v61 = v64;
                v55 = *&v84[0];
              }

              *(v55 + 16) = v63 + 1;
              *(v55 + 4 * v63 + 32) = v61;
              ++v60;
              --i;
            }

            while (i);
          }

          break;
        }

LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        swift_once();
LABEL_27:
        sub_1C6D79AC0();
        sub_1C6D78D30();
      }

      v65 = v75;
      *v75 = v55;
      v66 = *MEMORY[0x1E6996140];
      v67 = sub_1C6D78760();
      v68 = *(v67 - 8);
      (*(v68 + 104))(v65, v66, v67);
      (*(v68 + 56))(v65, 0, 1, v67);
      return sub_1C6D78830();
    }

    v48 = v46;
    *&v84[0] = MEMORY[0x1E69E7CC0];
    sub_1C6D79DF0();
    if (i < 0)
    {
      goto LABEL_52;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v49 = 0;
      while (1)
      {
        v13 = [MEMORY[0x1CCA56240](v49 a3)];
        swift_unknownObjectRelease();
        if (!v13)
        {
          break;
        }

        ++v49;
        sub_1C6D79DC0();
        v14 = *(*&v84[0] + 16);
        sub_1C6D79E00();
        sub_1C6D79E10();
        sub_1C6D79DD0();
        if (i == v49)
        {
          goto LABEL_31;
        }
      }

LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    else
    {
      v14 = a3 + 32;
      a1 = i;
      while (1)
      {
        v50 = *v14;
        v51 = [v50 notabilityScores];

        if (!v51)
        {
          break;
        }

        sub_1C6D79DC0();
        v13 = *(*&v84[0] + 16);
        sub_1C6D79E00();
        sub_1C6D79E10();
        sub_1C6D79DD0();
        v14 += 8;
        if (!--a1)
        {
LABEL_31:
          v47 = *&v84[0];
          v46 = v48;
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_49:
    ;
  }

  v86 = MEMORY[0x1E69E7CC0];
  sub_1C6B39464(0, i & ~(i >> 63), 0);
  if (i < 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  v14 = 0;
  v18 = v86;
  v82 = a3 & 0xC000000000000001;
  v81 = v77[17];
  v79 = a3 & 0xFFFFFFFFFFFFFF8;
  v80 = i - 1;
  v70 = i;
  while (1)
  {
    if (v82)
    {
      v19 = MEMORY[0x1CCA56240](v14, a3);
    }

    else
    {
      if (v14 >= *(v79 + 16))
      {
        goto LABEL_47;
      }

      v19 = *(a3 + 8 * v14 + 32);
    }

    v20 = v19;
    v21 = a3;
    v22 = [objc_msgSend(v81 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v23 = [v20 feedItem];
    v24 = [v22 containsItem_];

    result = [v20 feedItem];
    if (!result)
    {
      break;
    }

    v26 = result;
    v27 = [a1 fullBodyEmbeddingDimension];
    v28 = [a1 maxTopicIds];
    v29 = [a1 titleEmbeddingDimension];
    v30 = v26;
    sub_1C6C33510(v27, v28, v29, v30, v24, COERCE_FLOAT(v83 & 1), v84);

    v86 = v18;
    v32 = *(v18 + 16);
    v31 = *(v18 + 24);
    v13 = (v32 + 1);
    if (v32 >= v31 >> 1)
    {
      sub_1C6B39464((v31 > 1), v32 + 1, 1);
      v18 = v86;
    }

    *(v18 + 16) = v13;
    v33 = v18 + 232 * v32;
    v34 = v84[0];
    v35 = v84[2];
    *(v33 + 48) = v84[1];
    *(v33 + 64) = v35;
    *(v33 + 32) = v34;
    v36 = v84[3];
    v37 = v84[4];
    v38 = v84[6];
    *(v33 + 112) = v84[5];
    *(v33 + 128) = v38;
    *(v33 + 80) = v36;
    *(v33 + 96) = v37;
    v39 = v84[7];
    v40 = v84[8];
    v41 = v84[10];
    *(v33 + 176) = v84[9];
    *(v33 + 192) = v41;
    *(v33 + 144) = v39;
    *(v33 + 160) = v40;
    v42 = v84[11];
    v43 = v84[12];
    v44 = v84[13];
    *(v33 + 256) = v85;
    *(v33 + 224) = v43;
    *(v33 + 240) = v44;
    *(v33 + 208) = v42;
    a3 = v21;
    if (v80 == v14)
    {
      i = v70;
      goto LABEL_18;
    }

    if (__OFADD__(++v14, 1))
    {
      __break(1u);
      goto LABEL_46;
    }
  }

  __break(1u);
  return result;
}

double sub_1C6C0A594(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*(a3 + 16) && (v6 = sub_1C6B5DEA8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(a3 + 56) + 8 * v6);

    v9 = v8;
    sub_1C6C2C2F0(v9);
    v11 = v10;

    return v11 * a4;
  }

  else
  {
  }

  return a4;
}

uint64_t sub_1C6C0A648(void *a1, char *a2)
{
  if (qword_1EC1D5A98 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    sub_1C6B1D314();
    v4 = swift_allocObject();
    v5 = MEMORY[0x1E69E6530];
    *(v4 + 16) = xmmword_1C6D7E630;
    v6 = MEMORY[0x1E69E65A8];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = a1;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v7 = a2 >> 62 ? sub_1C6D79E90() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = MEMORY[0x1E69E7CC0];
    if (!v7)
    {
      break;
    }

    v9 = 0;
    v77 = a1;
    v78 = a2 & 0xC000000000000001;
    v74 = a2 & 0xFFFFFFFFFFFFFF8;
    v75 = a2;
    v73 = a2 + 32;
    a2 = MEMORY[0x1E69E7CC0];
    v10 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
    v76 = v7;
    while (1)
    {
      if (v78)
      {
        v13 = MEMORY[0x1CCA56240](v9, v75);
      }

      else
      {
        if (v9 >= *(v74 + 16))
        {
          goto LABEL_64;
        }

        v13 = *&v73[8 * v9];
      }

      v14 = v13;
      v15 = __OFADD__(v9, 1);
      v16 = v9 + 1;
      if (v15)
      {
        break;
      }

      v17 = [v13 tagScores];
      sub_1C6B0C69C(0, &qword_1EC1D6EA8, 0x1E69B6CC8);
      sub_1C6D79770();

      v18 = sub_1C6C08754(a1, v8);

      v19 = sub_1C6C0AF00();
      v20 = sub_1C6C08754(a1, v18);

      if (v20 >> 62)
      {
        v21 = sub_1C6D79E90();
        if (v21 == a1)
        {
LABEL_14:

          v22 = v20;
          goto LABEL_18;
        }
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21 == a1)
        {
          goto LABEL_14;
        }
      }

      v23 = a1 - v21;
      if (__OFSUB__(a1, v21))
      {
        goto LABEL_63;
      }

      v24 = v19;
      a1 = sub_1C6BFE2BC(v24, v23);

      sub_1C6B38B9C(a1);
      v22 = v20;
LABEL_18:
      if (v22 >> 62)
      {
        v53 = v22;
        v25 = sub_1C6D79E90();
        v22 = v53;
        v79 = v14;
        v80 = v16;
        if (!v25)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v79 = v14;
        v80 = v16;
        if (!v25)
        {
          goto LABEL_6;
        }
      }

      if (v25 < 1)
      {
        goto LABEL_62;
      }

      v26 = 0;
      v82 = v22 & 0xC000000000000001;
      v84 = v25;
      v86 = v22;
      do
      {
        if (v82)
        {
          v27 = MEMORY[0x1CCA56240](v26);
        }

        else
        {
          v27 = *(v22 + 8 * v26 + 32);
        }

        v28 = v27;
        v29 = [v27 tagId];
        if (v29)
        {
          v30 = v29;
          v31 = sub_1C6D795A0();
          v33 = v32;
        }

        else
        {
          v31 = 0;
          v33 = 0xE000000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_1C6B6592C(0, *(a2 + 2) + 1, 1, a2);
        }

        v35 = *(a2 + 2);
        v34 = *(a2 + 3);
        if (v35 >= v34 >> 1)
        {
          a2 = sub_1C6B6592C((v34 > 1), v35 + 1, 1, a2);
        }

        *(a2 + 2) = v35 + 1;
        v36 = &a2[16 * v35];
        *(v36 + 4) = v31;
        *(v36 + 5) = v33;
        v37 = sub_1C6C0B120(v28);
        v38 = 0;
        if (*(v37 + 16))
        {
          v39 = sub_1C6B6502C(1);
          if (v40)
          {
            v38 = *(*(v37 + 56) + 4 * v39);
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1C6B656C8(0, *(v12 + 2) + 1, 1, v12);
        }

        v42 = *(v12 + 2);
        v41 = *(v12 + 3);
        if (v42 >= v41 >> 1)
        {
          v12 = sub_1C6B656C8((v41 > 1), v42 + 1, 1, v12);
        }

        *(v12 + 2) = v42 + 1;
        *&v12[4 * v42 + 32] = v38;
        v43 = 0;
        if (*(v37 + 16))
        {
          v44 = sub_1C6B6502C(2);
          if (v45)
          {
            v43 = *(*(v37 + 56) + 4 * v44);
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1C6B656C8(0, *(v11 + 2) + 1, 1, v11);
        }

        v47 = *(v11 + 2);
        v46 = *(v11 + 3);
        if (v47 >= v46 >> 1)
        {
          v11 = sub_1C6B656C8((v46 > 1), v47 + 1, 1, v11);
        }

        *(v11 + 2) = v47 + 1;
        *&v11[4 * v47 + 32] = v43;
        v48 = 0;
        if (*(v37 + 16))
        {
          v49 = sub_1C6B6502C(3);
          if (v50)
          {
            v48 = *(*(v37 + 56) + 4 * v49);
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1C6B656C8(0, *(v10 + 2) + 1, 1, v10);
        }

        v52 = *(v10 + 2);
        v51 = *(v10 + 3);
        if (v52 >= v51 >> 1)
        {
          v10 = sub_1C6B656C8((v51 > 1), v52 + 1, 1, v10);
        }

        ++v26;

        *(v10 + 2) = v52 + 1;
        *&v10[4 * v52 + 32] = v48;
        v22 = v86;
      }

      while (v84 != v26);
LABEL_6:

      a1 = v77;
      v9 = v80;
      v8 = MEMORY[0x1E69E7CC0];
      if (v80 == v76)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

  a2 = MEMORY[0x1E69E7CC0];
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
LABEL_58:
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C6D80210;
  v55 = *(a2 + 2);
  v56 = MEMORY[0x1E69E6530];
  *(v54 + 56) = MEMORY[0x1E69E6530];
  v57 = MEMORY[0x1E69E65A8];
  *(v54 + 64) = MEMORY[0x1E69E65A8];
  *(v54 + 32) = v55;
  v58 = *(v12 + 2);
  *(v54 + 96) = v56;
  *(v54 + 104) = v57;
  *(v54 + 72) = v58;
  v59 = *(v11 + 2);
  *(v54 + 136) = v56;
  *(v54 + 144) = v57;
  *(v54 + 112) = v59;
  v60 = *(v10 + 2);
  *(v54 + 176) = v56;
  *(v54 + 184) = v57;
  *(v54 + 152) = v60;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  sub_1C6C0C2D4(0, &qword_1EDCE7D20, sub_1C6B9F304, MEMORY[0x1E69E6F90]);
  sub_1C6B9F304();
  v62 = v61 - 8;
  v83 = *(*(v61 - 8) + 72);
  v63 = (*(*(v61 - 8) + 80) + 32) & ~*(*(v61 - 8) + 80);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_1C6D80210;
  v64 = v85 + v63;
  v65 = *(v62 + 56);
  sub_1C6D783C0();
  *(v64 + v65) = v12;
  v66 = *MEMORY[0x1E6996138];
  v67 = sub_1C6D78760();
  v87 = *(*(v67 - 8) + 104);
  v81 = v66;
  v87(v64 + v65, v66, v67);
  v68 = *(v62 + 56);
  sub_1C6D783C0();
  *(v64 + v83 + v68) = v11;
  v87(v64 + v83 + v68, v66, v67);
  v69 = v64 + 2 * v83;
  v70 = *(v62 + 56);
  sub_1C6D783C0();
  *(v69 + v70) = v10;
  v87(v69 + v70, v81, v67);
  v71 = *(v62 + 56);
  sub_1C6D783C0();
  sub_1C6D78740();

  return sub_1C6D787D0();
}

id sub_1C6C0AF00()
{
  result = [objc_allocWithZone(MEMORY[0x1E69B6CC8]) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  v2 = sub_1C6D79570();
  [v1 setTagId_];

  sub_1C6C0C338(0, &qword_1EC1D7B28, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D807C0;
  result = [objc_allocWithZone(MEMORY[0x1E69B6CB8]) init];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  [v4 setScore_];
  [v4 setType_];

  v5 = sub_1C6B0C69C(0, &qword_1EC1D7B20, 0x1E69B6CB8);
  *(v3 + 56) = v5;
  *(v3 + 32) = v4;
  result = [objc_allocWithZone(MEMORY[0x1E69B6CB8]) init];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  [v6 setScore_];
  [v6 setType_];

  *(v3 + 88) = v5;
  *(v3 + 64) = v6;
  result = [objc_allocWithZone(MEMORY[0x1E69B6CB8]) init];
  if (result)
  {
    v7 = result;
    [v7 setScore_];
    [v7 setType_];

    *(v3 + 120) = v5;
    *(v3 + 96) = v7;
    sub_1C6B0C69C(0, &unk_1EC1D7408, 0x1E695DF70);
    v8 = MEMORY[0x1CCA56040](v3);
    [v1 setScores_];

    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_1C6C0B120(void *a1)
{
  v1 = [a1 scores];
  if (v1)
  {
    v2 = v1;
    sub_1C6B0C69C(0, &qword_1EC1D7B20, 0x1E69B6CB8);
    sub_1C6D79770();
  }

  v3 = MEMORY[0x1E69E7CC0];

  return sub_1C6B60FAC(v3);
}

uint64_t sub_1C6C0B3C4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[17];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v2 = v0[23];

  return swift_deallocClassInstance();
}

uint64_t sub_1C6C0B424(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C6D75F80();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = *v2;
  sub_1C6D783A0();
  (*(v6 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = a1;
  (*(v6 + 32))(v10 + v9, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  v11 = sub_1C6D78210();
  sub_1C6C0C0AC(0, &qword_1EDCE7F70, MEMORY[0x1E69E5E28]);
  v12 = sub_1C6D782A0();

  return v12;
}

uint64_t sub_1C6C0B618()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

void sub_1C6C0B6E4()
{
  if (!qword_1EC1D7B00)
  {
    sub_1C6C0C0AC(255, &qword_1EDCE7F70, MEMORY[0x1E69E5E28]);
    v0 = sub_1C6D78360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D7B00);
    }
  }
}

double sub_1C6C0B758(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3[3];
  v5 = v3[4];
  return sub_1C6C0A594(a1, a2, v3[2], a3);
}

void sub_1C6C0B764()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v21 = 0;
      MEMORY[0x1CCA57120](&v21, 8);
      v6 = (v21 * v2) >> 64;
      if (v2 > v21 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v21 * v2)
        {
          do
          {
            v21 = 0;
            MEMORY[0x1CCA57120](&v21, 8);
          }

          while (v7 > v21 * v2);
          v6 = (v21 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v10 = &v1[16 * v4 + 32];
        v12 = *v10;
        v11 = *(v10 + 1);
        v13 = &v1[16 * v8 + 32];
        v15 = *v13;
        v14 = *(v13 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1C6C73F6C(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v16 = &v1[16 * v4 + 32];
        v17 = *(v16 + 1);
        *v16 = v15;
        *(v16 + 1) = v14;

        if (v8 >= *(v1 + 2))
        {
          goto LABEL_22;
        }

        v18 = &v1[16 * v8 + 32];
        v19 = *(v18 + 1);
        *v18 = v12;
        *(v18 + 1) = v11;

        *v20 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_1C6C0B8F0()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v20 = 0;
      MEMORY[0x1CCA57120](&v20, 8);
      v5 = (v20 * v1) >> 64;
      if (v1 > v20 * v1)
      {
        v6 = -v1 % v1;
        if (v6 > v20 * v1)
        {
          do
          {
            v20 = 0;
            MEMORY[0x1CCA57120](&v20, 8);
          }

          while (v6 > v20 * v1);
          v5 = (v20 * v1) >> 64;
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_21;
        }

        if (v7 >= v9)
        {
          goto LABEL_22;
        }

        v10 = *(v8 + 32 + 8 * v7);
        v11 = *(v8 + 32 + 8 * v3);
        v12 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_1C6C750C0(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v14 = v8 + 8 * v3;
        v15 = *(v14 + 32);
        *(v14 + 32) = v12;

        sub_1C6D79DD0();
        v16 = *v0;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v16;
        if ((v17 & 1) == 0)
        {
          v16 = sub_1C6C750C0(v16);
          *v0 = v16;
        }

        if (v7 >= *(v16 + 16))
        {
          goto LABEL_24;
        }

        v18 = v16 + 8 * v7;
        v19 = *(v18 + 32);
        *(v18 + 32) = v11;

        sub_1C6D79DD0();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_1C6C0BA94(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = sub_1C6B5DEA8(v8, v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_1C6B6E868(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_1C6B5DEA8(v8, v7);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_1C6D7A1C0();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_1C6B72BD8();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v8;
  v24[1] = v7;
  *(v23[7] + 8 * v11) = v9;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v15)
  {
    v23[2] = v26;
    if (v4 != 1)
    {
      v6 = a1 + 9;
      v27 = 1;
      while (v27 < a1[2])
      {
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *v6;
        v28 = *a3;

        v29 = sub_1C6B5DEA8(v8, v7);
        v31 = v28[2];
        v32 = (v30 & 1) == 0;
        v15 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v15)
        {
          goto LABEL_22;
        }

        v17 = v30;
        if (v28[3] < v33)
        {
          sub_1C6B6E868(v33, 1);
          v34 = *a3;
          v29 = sub_1C6B5DEA8(v8, v7);
          if ((v17 & 1) != (v35 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v17)
        {
          goto LABEL_8;
        }

        v36 = *a3;
        *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        v37 = (v36[6] + 16 * v29);
        *v37 = v8;
        v37[1] = v7;
        *(v36[7] + 8 * v29) = v9;
        v38 = v36[2];
        v15 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        ++v27;
        v36[2] = v39;
        v6 += 3;
        if (v4 == v27)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD00000000000001BLL, 0x80000001C6D9F860);
  sub_1C6D79E60();
  MEMORY[0x1CCA55B00](39, 0xE100000000000000);
  sub_1C6D79EB0();
  __break(1u);
}

uint64_t sub_1C6C0BE14(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, double))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1C6B394A4(0, v3, 0);
    v5 = v39;
    v6 = v2 + 64;
    v7 = -1 << *(v2 + 32);
    result = sub_1C6D79CC0();
    v8 = result;
    v9 = 0;
    v38 = *(v2 + 36);
    v33 = v2 + 72;
    v34 = v3;
    v35 = v2 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v2 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (v38 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v37 = v9;
      v12 = (*(v2 + 48) + 16 * v8);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(v2 + 56) + 8 * v8);

      v16 = a2(v13, v14, v15);
      v18 = v17;
      v20 = v19;

      v21 = v5;
      v40 = v5;
      v22 = v2;
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        result = sub_1C6B394A4((v23 > 1), v24 + 1, 1);
        v21 = v40;
      }

      *(v21 + 16) = v24 + 1;
      v25 = (v21 + 24 * v24);
      v25[4] = v16;
      v25[5] = v18;
      v25[6] = v20;
      v10 = 1 << *(v22 + 32);
      if (v8 >= v10)
      {
        goto LABEL_25;
      }

      v6 = v35;
      v26 = *(v35 + 8 * v11);
      if ((v26 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      v2 = v22;
      v5 = v21;
      if (v38 != *(v2 + 36))
      {
        goto LABEL_27;
      }

      v27 = v26 & (-2 << (v8 & 0x3F));
      if (v27)
      {
        v10 = __clz(__rbit64(v27)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v11 << 6;
        v29 = v11 + 1;
        v30 = (v33 + 8 * v11);
        while (v29 < (v10 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_1C6B360A8(v8, v38, 0);
            v10 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_1C6B360A8(v8, v38, 0);
      }

LABEL_4:
      v9 = v37 + 1;
      v8 = v10;
      if (v37 + 1 == v34)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void sub_1C6C0C0AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0], MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6C0C114()
{
  if (!qword_1EC1D7B08)
  {
    sub_1C6B0C69C(255, &qword_1EC1D6EA0, 0x1E69B6EC8);
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D7B08);
    }
  }
}

unint64_t sub_1C6C0C17C()
{
  result = qword_1EDCDFB50;
  if (!qword_1EDCDFB50)
  {
    sub_1C6C0C338(255, &qword_1EDCE6698, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFB50);
  }

  return result;
}

unint64_t sub_1C6C0C238()
{
  result = qword_1EC1D7B18;
  if (!qword_1EC1D7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7B18);
  }

  return result;
}

uint64_t sub_1C6C0C28C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6C0C2D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6C0C338(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1C6C0C388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6C0C3D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C6C0C42C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C6C0C444(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1C6C0C474()
{
  if (*(v0 + 16))
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = 0xD00000000000001BLL;
  }

  *(v0 + 16);
  return result;
}

id sub_1C6C0C4AC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 8))(v14, v5, v6);
  v7 = v14[0];
  if (v14[0])
  {
    v8 = *&v14[2];
    v9 = objc_allocWithZone(MEMORY[0x1E69B5258]);
    sub_1C6B6976C();
    v10 = sub_1C6D79480();
    v11 = [v9 initWithAggregates:v10 scoringType:3 decayRate:v8];

    sub_1C6C0CD4C(v7);
    result = [objc_allocWithZone(MEMORY[0x1E69B5568]) initWithGenerator_];
  }

  else
  {
    v13 = objc_allocWithZone(MEMORY[0x1E69B5568]);
    v11 = a2;
    result = [v13 initWithGenerator_];
  }

  *a3 = v11;
  *(a3 + 8) = result;
  *(a3 + 16) = v7 != 0;
  return result;
}

uint64_t sub_1C6C0C5F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization43EventHistoryAggregateStoreStateModeResolver_lazyMode);
  sub_1C6D781A0();
  if (qword_1EDCDFFE8 != -1)
  {
    swift_once();
  }

  sub_1C6B16AC8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C6D7E630;
  if (v7)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v7)
  {
    v4 = "ateModeResolver";
  }

  else
  {
    v4 = "Resolved mode %{public}@";
  }

  MEMORY[0x1CCA55B00](v3, v4 | 0x8000000000000000);

  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1C6B2064C();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  return v6;
}

uint64_t sub_1C6C0C804@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1C6C0C5F0();
  if (v6)
  {
    v7 = MEMORY[0x1E69B48B0];
  }

  else
  {
    v7 = MEMORY[0x1E69B48A8];
  }

  sub_1C6C0CD8C(v4, v5);
  v8 = *v7;
  v9 = sub_1C6D779F0();
  v10 = *(*(v9 - 8) + 104);

  return v10(a1, v8, v9);
}

id sub_1C6C0C894()
{
  v0 = sub_1C6C0C5F0();
  v2 = v1;
  v3 = swift_unknownObjectRetain();
  sub_1C6C0CD8C(v3, v2);
  v4 = [v0 generateDerivedData];
  swift_unknownObjectRelease();
  if (qword_1EDCDFFE8 != -1)
  {
    swift_once();
  }

  sub_1C6B16AC8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  [v4 scoringType];
  v6 = NSStringFromFCScoringType();
  v7 = sub_1C6D795A0();
  v9 = v8;

  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1C6B2064C();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  return v4;
}

uint64_t sub_1C6C0CAC0()
{
  v1 = OBJC_IVAR____TtC19NewsPersonalization36KnownAggregateStoreStateModeResolver_mode;
  v2 = sub_1C6D779F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for KnownAggregateStoreStateModeResolver()
{
  result = qword_1EC1D7C08;
  if (!qword_1EC1D7C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6C0CBB0()
{
  result = sub_1C6D779F0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C6C0CC60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C6C0CCC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC19NewsPersonalization36KnownAggregateStoreStateModeResolver_mode;
  v5 = sub_1C6D779F0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1C6C0CD4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1C6C0CD8C(uint64_t a1, void *a2)
{
  swift_unknownObjectRelease();
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe() + 24);
  sub_1C6C0CEB4(v1 + v3);
  sub_1C6C0CF40(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionRecipe()
{
  result = qword_1EDCE5460;
  if (!qword_1EDCE5460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6C0CEB4(uint64_t a1)
{
  sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6C0CF40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  sub_1C6C0D334(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6C0CF40(v6, a1);
  }

  *a1 = xmmword_1C6D7F510;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v10 = a1 + *(v8 + 32);
  sub_1C6D78A30();
  v11 = (a1 + *(v8 + 36));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6C0CEB4(v6);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C6C0D238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C0D708(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe() + 24);
  sub_1C6C0CEB4(a2 + v9);
  sub_1C6C0CF40(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t sub_1C6C0D334(uint64_t a1, uint64_t a2)
{
  sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*Com_Apple_News_Personalization_SessionRecipe.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe() + 24);
  *(v5 + 12) = v16;
  sub_1C6C0D334(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = xmmword_1C6D7F510;
    *(v15 + 16) = 0;
    *(v15 + 24) = 1;
    *(v15 + 32) = 0;
    *(v15 + 40) = 1;
    *(v15 + 48) = 0;
    *(v15 + 56) = 1;
    v18 = v15 + *(v10 + 32);
    sub_1C6D78A30();
    v19 = (v15 + *(v10 + 36));
    *v19 = 0;
    v19[1] = 0;
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6C0CEB4(v9);
    }
  }

  else
  {
    sub_1C6C0CF40(v9, v15);
  }

  return sub_1C6C0D5FC;
}

void sub_1C6C0D5FC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6C0D708((*a1)[5], v4);
    sub_1C6C0CEB4(v9 + v3);
    sub_1C6C0CF40(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6C0D76C(v5, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  }

  else
  {
    sub_1C6C0CEB4(v9 + v3);
    sub_1C6C0CF40(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C6C0D708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C0D76C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_News_Personalization_SessionRecipe.hasMetadata.getter()
{
  sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  sub_1C6C0D334(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6C0CEB4(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionRecipe.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe() + 24);
  sub_1C6C0CEB4(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C0DA9C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7C18);
  __swift_project_value_buffer(v0, qword_1EC1D7C18);
  sub_1C6C0EAAC(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "id";
  *(v7 + 8) = 2;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionRecipe._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7C18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }

    else if (result == 2)
    {
      sub_1C6C0DDB0();
    }
  }

  return result;
}

uint64_t sub_1C6C0DDB0()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe() + 24);
  type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  sub_1C6C0EA64(&qword_1EC1D7138, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6D78CC0(), !v1))
  {
    result = sub_1C6C0DF10(v0);
    if (!v1)
    {
      v6 = v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipe() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C0DF10(uint64_t a1)
{
  sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  sub_1C6C0D334(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6C0CEB4(v5);
  }

  sub_1C6C0CF40(v5, v10);
  sub_1C6C0EA64(&qword_1EC1D7138, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6D78CF0();
  return sub_1C6C0D76C(v10, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
}

uint64_t Com_Apple_News_Personalization_SessionRecipe.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  sub_1C6C0EA64(&qword_1EC1D7C30, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C0E1A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  sub_1C6D78A30();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C6C0E278(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C0EA64(&qword_1EC1D7C48, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C0E2F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7C18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C0E39C(uint64_t a1)
{
  v2 = sub_1C6C0EA64(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C0E408()
{
  sub_1C6C0EA64(&qword_1EC1D7140, type metadata accessor for Com_Apple_News_Personalization_SessionRecipe);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B14_SessionRecipeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C0EAAC(0, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  sub_1C6C0E9D0();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_10;
  }

  v18 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipe();
  v19 = *(v18 + 24);
  v20 = *(v14 + 48);
  sub_1C6C0D334(a1 + v19, v17);
  sub_1C6C0D334(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1C6C0CEB4(v17);
LABEL_12:
      v24 = *(v18 + 20);
      sub_1C6D78A40();
      sub_1C6C0EA64(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v22 = sub_1C6D79560();
      return v22 & 1;
    }

    goto LABEL_9;
  }

  sub_1C6C0D334(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_1C6C0D76C(v12, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
LABEL_9:
    sub_1C6C0D76C(v17, sub_1C6C0E9D0);
    goto LABEL_10;
  }

  sub_1C6C0CF40(&v17[v20], v8);
  v23 = _s19NewsPersonalization010Com_Apple_a1_B22_SessionRecipeMetadataV2eeoiySbAC_ACtFZ_0(v12, v8);
  sub_1C6C0D76C(v8, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6C0D76C(v12, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6C0CEB4(v17);
  if (v23)
  {
    goto LABEL_12;
  }

LABEL_10:
  v22 = 0;
  return v22 & 1;
}

void sub_1C6C0E90C()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6C0EAAC(319, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6C0E9D0()
{
  if (!qword_1EC1D7C50)
  {
    sub_1C6C0EAAC(255, qword_1EDCE4D70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D7C50);
    }
  }
}

uint64_t sub_1C6C0EA64(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6C0EAAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.groupBackingTagID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata() + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata()
{
  result = qword_1EDCE4DB0;
  if (!qword_1EDCE4DB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1C6D7F510;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v3 = a1 + *(v2 + 32);
  result = sub_1C6D78A30();
  v5 = (a1 + *(v2 + 36));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.personalizationData.getter()
{
  v1 = *v0;
  sub_1C6B1CD10(*v0, *(v0 + 8));
  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.personalizationData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C6B1C9F0(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

void Com_Apple_News_Personalization_SessionRecipeMetadata.group.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.group.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void Com_Apple_News_Personalization_SessionRecipeMetadata.feed.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.feed.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

void Com_Apple_News_Personalization_SessionRecipeMetadata.viewAction.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.viewAction.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.groupBackingTagID.getter()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata() + 36));
  if (v1[1])
  {
    v2 = *v1;
    v3 = v1[1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C6C0EDC8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata() + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1C6C0EE2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata() + 36));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*Com_Apple_News_Personalization_SessionRecipeMetadata.groupBackingTagID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata() + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1C6C0EF30;
}

void sub_1C6C0EF30(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionRecipeMetadata.clearGroupBackingTagID()()
{
  v1 = (v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata() + 36));
  v2 = v1[1];

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata() + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata() + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C0F17C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7C58);
  __swift_project_value_buffer(v0, qword_1EC1D7C58);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C6D7F520;
  v5 = v18 + v4;
  v6 = v18 + v4 + *(v2 + 56);
  *(v18 + v4) = 1;
  *v6 = "personalizationData";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "group";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "feed";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "view_action";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v9();
  v16 = v5 + 4 * v3 + *(v2 + 56);
  *(v5 + 4 * v3) = 5;
  *v16 = "group_backing_tag_id";
  *(v16 + 8) = 20;
  *(v16 + 16) = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionRecipeMetadata._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7C58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.decodeMessage<A>(decoder:)()
{
  result = sub_1C6D78AD0();
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
          sub_1C6D78B20();
        }

        else if (result == 2)
        {
          v3 = v0;
          sub_1C6C0FB94();
          goto LABEL_5;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            sub_1C6C0FBE8();
LABEL_5:
            v0 = v3;
            sub_1C6D78B00();
            break;
          case 4:
            v3 = v0;
            sub_1C6C0FC3C();
            goto LABEL_5;
          case 5:
            v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata() + 36);
            sub_1C6D78B70();
            break;
        }
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v5 = v2;
    v6 = v2 >> 32;
  }

  if (v5 == v6)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_1C6D78C80();
  if (v1)
  {
    return result;
  }

LABEL_10:
  v8 = v1;
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  if (Com_Apple_News_Personalization_GroupType.rawValue.getter())
  {
    sub_1C6C0FB94();
    result = sub_1C6D78C70();
    if (v1)
    {
      return result;
    }

    v8 = 0;
  }

  if (*(v0 + 32))
  {
    v13 = *(v0 + 32);
    v14 = *(v0 + 40);
    sub_1C6C0FBE8();
    v11 = v8;
    result = sub_1C6D78C70();
    if (v8)
    {
      return result;
    }

    if (!*(v0 + 48))
    {
      goto LABEL_19;
    }

LABEL_18:
    v15 = *(v0 + 56);
    sub_1C6C0FC3C();
    result = sub_1C6D78C70();
    if (v11)
    {
      return result;
    }

    goto LABEL_19;
  }

  v11 = v8;
  if (*(v0 + 48))
  {
    goto LABEL_18;
  }

LABEL_19:
  result = sub_1C6C0F7D0(v0);
  if (!v11)
  {
    v12 = v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata() + 32);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6C0F7D0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  v3 = (a1 + *(result + 36));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1C6D78CC0();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionRecipeMetadata.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
  sub_1C6C0FFFC(&qword_1EC1D7C70, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C0F8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_1C6D7F510;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v4 = a2 + *(a1 + 32);
  result = sub_1C6D78A30();
  v6 = (a2 + *(a1 + 36));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1C6C0F984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C0FFFC(&qword_1EC1D7C88, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C0FA00@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7C58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C0FAA8(uint64_t a1)
{
  v2 = sub_1C6C0FFFC(&qword_1EC1D7138, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C0FB14()
{
  sub_1C6C0FFFC(&qword_1EC1D7138, type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata);

  return sub_1C6D78C20();
}

unint64_t sub_1C6C0FB94()
{
  result = qword_1EDCE5758;
  if (!qword_1EDCE5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5758);
  }

  return result;
}

unint64_t sub_1C6C0FBE8()
{
  result = qword_1EDCE2A68;
  if (!qword_1EDCE2A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2A68);
  }

  return result;
}

unint64_t sub_1C6C0FC3C()
{
  result = qword_1EDCE5230;
  if (!qword_1EDCE5230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5230);
  }

  return result;
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B22_SessionRecipeMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1C6B5E090(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    v17 = *(a2 + 16);
    v18 = *(a2 + 24);
    v4 = Com_Apple_News_Personalization_GroupType.rawValue.getter();
    if (v4 == Com_Apple_News_Personalization_GroupType.rawValue.getter())
    {
      v5 = *(a2 + 40);
      if (sub_1C6B69164(*(a1 + 32), *(a1 + 40), *(a2 + 32)))
      {
        v6 = *(a2 + 56);
        if (sub_1C6B69164(*(a1 + 48), *(a1 + 56), *(a2 + 48)))
        {
          v7 = type metadata accessor for Com_Apple_News_Personalization_SessionRecipeMetadata();
          v8 = *(v7 + 36);
          v9 = (a1 + v8);
          v10 = *(a1 + v8 + 8);
          v11 = (a2 + v8);
          v12 = v11[1];
          if (v10)
          {
            if (v12)
            {
              if (*v9 == *v11 && v10 == v12)
              {
                goto LABEL_10;
              }

              v13 = v7;
              v14 = sub_1C6D7A130();
              v7 = v13;
              if (v14)
              {
                goto LABEL_10;
              }
            }
          }

          else if (!v12)
          {
LABEL_10:
            v15 = *(v7 + 32);
            sub_1C6D78A40();
            sub_1C6C0FFFC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
            return sub_1C6D79560() & 1;
          }
        }
      }
    }
  }

  return 0;
}

void sub_1C6C0FF4C()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6B95D68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C6C0FFFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  sub_1C6B3E190(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked()
{
  result = qword_1EDCE2CD0;
  if (!qword_1EDCE2CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1C6C102D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  sub_1C6B3E190(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6C10464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked() + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked() + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked() + 24);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked() + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C10B04()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7C90);
  __swift_project_value_buffer(v0, qword_1EC1D7C90);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7C90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6C10E24();
    }
  }

  return result;
}

uint64_t sub_1C6C10E24()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked() + 24);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6C118D0(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    result = sub_1C6C10F74(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C10F74(uint64_t a1)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  sub_1C6B3E190(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B3E224(v5);
  }

  sub_1C6B3E2B0(v5, v10);
  sub_1C6C118D0(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  sub_1C6C118D0(&qword_1EC1D7CA8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C11250(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C118D0(&qword_1EC1D7CC0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C112CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7C90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C11374(uint64_t a1)
{
  v2 = sub_1C6C118D0(&qword_1EC1D7688, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C113E0()
{
  sub_1C6C118D0(&qword_1EC1D7688, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B47Storage_CompressedSessionEventArticleUndislikedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  sub_1C6B3FB88();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked();
  v19 = *(v18 + 24);
  v20 = *(v14 + 48);
  sub_1C6B3E190(a1 + v19, v17);
  sub_1C6B3E190(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
LABEL_11:
      v25 = *(v18 + 20);
      sub_1C6D78A40();
      sub_1C6C118D0(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v22 = sub_1C6D79560();
      return v22 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
    goto LABEL_8;
  }

  sub_1C6B3E2B0(&v17[v20], v8);
  v24 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if (v24)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C6C118D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_Personalization_VerticalScrollData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData() + 28);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData()
{
  result = qword_1EDCE4F88;
  if (!qword_1EDCE4F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_VerticalScrollData.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData() + 28);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_VerticalScrollData.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData() + 28);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C11B8C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE4FB8);
  __swift_project_value_buffer(v0, qword_1EDCE4FB8);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D807C0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "startYPosition";
  *(v7 + 8) = 14;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "endYPosition";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v10();
  v12 = v6 + 2 * v3 + *(v2 + 56);
  *(v6 + 2 * v3) = 3;
  *v12 = "velocity";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_VerticalScrollData._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4FB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4FB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_VerticalScrollData.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1C6D78B30();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_VerticalScrollData.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78C90(), !v1))
  {
    if (!v0[1] || (result = sub_1C6D78C90(), !v1))
    {
      if (!v0[2] || (result = sub_1C6D78C90(), !v1))
      {
        v3 = v0 + *(type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData() + 28);
        return sub_1C6D78A20();
      }
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_VerticalScrollData.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData();
  sub_1C6C12640(&qword_1EC1D7CC8, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C1201C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = a2 + *(a1 + 28);
  return sub_1C6D78A30();
}

uint64_t sub_1C6C12060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6C120D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6C12148(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1C6C1219C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C12640(&qword_1EC1D7CD8, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C12218@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4FB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4FB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C122C0(uint64_t a1)
{
  v2 = sub_1C6C12640(&unk_1EDCE4FA0, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C1232C()
{
  sub_1C6C12640(&unk_1EDCE4FA0, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B19_VerticalScrollDataV2eeoiySbAC_ACtFZ_0(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData() + 28);
  sub_1C6D78A40();
  sub_1C6C12640(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6C125BC()
{
  result = sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6C12640(unint64_t *a1, void (*a2)(uint64_t))
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

NewsPersonalization::ArticleFeaturesFactoryConfiguration __swiftcall ArticleFeaturesFactoryConfiguration.init(fullBodyEmbeddingDimension:titleEmbeddingDimension:)(Swift::Int fullBodyEmbeddingDimension, Swift::Int titleEmbeddingDimension)
{
  *v2 = fullBodyEmbeddingDimension;
  v2[1] = titleEmbeddingDimension;
  result.titleEmbeddingDimension = titleEmbeddingDimension;
  result.fullBodyEmbeddingDimension = fullBodyEmbeddingDimension;
  return result;
}

unint64_t sub_1C6C12690()
{
  if (*v0)
  {
    result = 0xD000000000000017;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_1C6C126CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001ALL && 0x80000001C6DA0430 == a2;
  if (v6 || (sub_1C6D7A130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C6DA0450 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1C6C127AC(uint64_t a1)
{
  v2 = sub_1C6C1299C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C127E8(uint64_t a1)
{
  v2 = sub_1C6C1299C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArticleFeaturesFactoryConfiguration.encode(to:)(void *a1)
{
  sub_1C6C12BA0(0, &qword_1EC1D7CE0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v13 - v8;
  v10 = *v1;
  v13[1] = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6C1299C();
  sub_1C6D7A300();
  v15 = 0;
  sub_1C6D7A080();
  if (!v2)
  {
    v14 = 1;
    sub_1C6D7A080();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C6C1299C()
{
  result = qword_1EC1D7CE8;
  if (!qword_1EC1D7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7CE8);
  }

  return result;
}

uint64_t ArticleFeaturesFactoryConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C6C12BA0(0, &qword_1EC1D7CF0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6C1299C();
  sub_1C6D7A2D0();
  if (!v2)
  {
    v17 = 0;
    v12 = sub_1C6D79FE0();
    v16 = 1;
    v14 = sub_1C6D79FE0();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1C6C12BA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1C6C1299C();
    v7 = a3(a1, &type metadata for ArticleFeaturesFactoryConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t ArticleFeaturesFactory.features(articleFeatures:fullBodyEmbeddingDimension:titleEmbeddingDimension:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v348 = a3;
  v349 = a2;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v351 = *(v6 - 8);
  v7 = *(v351 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v350 = &v341 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v358 = &v341 - v10;
  sub_1C6C14FA0(0, &qword_1EDCEA320, MEMORY[0x1E6996150], MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v343 = (&v341 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v342 = (&v341 - v15);
  v16 = sub_1C6D783E0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v355 = &v341 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v354 = &v341 - v20;
  v21 = sub_1C6D75F50();
  v346 = *(v21 - 8);
  v347 = v21;
  v22 = *(v346 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v345 = &v341 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C14FA0(0, &qword_1EDCE7D20, sub_1C6B9F304, MEMORY[0x1E69E6F90]);
  sub_1C6B9F304();
  v367 = v24;
  v25 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
  v366 = *(*(v24 - 8) + 72);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C6D85AA0;
  v344 = v26;
  v365 = v26 + v25;
  sub_1C6D783C0();
  v27 = *(a1 + 16);
  v368 = a1;
  v360 = v27;
  if (v27)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v27, 0);
    v28 = v370;
    v29 = (a1 + 40);
    v30 = v27;
    do
    {
      v32 = *(v29 - 1);
      v31 = *v29;
      *&v370 = v28;
      v33 = *(v28 + 16);
      v34 = *(v28 + 24);

      if (v33 >= v34 >> 1)
      {
        sub_1C6B39280((v34 > 1), v33 + 1, 1);
        v28 = v370;
      }

      *(v28 + 16) = v33 + 1;
      v35 = v28 + 16 * v33;
      *(v35 + 32) = v32;
      *(v35 + 40) = v31;
      v29 += 29;
      --v30;
    }

    while (v30);
    a1 = v368;
    v27 = v360;
  }

  v352 = a4;
  v36 = v365;
  v37 = v365 + *(v367 + 48);
  sub_1C6D78740();
  v38 = v36 + v366;
  result = sub_1C6D783C0();
  v361 = *(a1 + 16);
  if (v361)
  {
    v364 = v38;
    v40 = 0;
    v41 = (a1 + 32);
    v42 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v43 = *(a1 + 16);
      if (v40 >= v43)
      {
        break;
      }

      v44 = v41[13];
      v382 = v41[12];
      v383 = v44;
      v384 = *(v41 + 28);
      v45 = v41[9];
      v378 = v41[8];
      v379 = v45;
      v46 = v41[11];
      v380 = v41[10];
      v381 = v46;
      v47 = v41[5];
      v374 = v41[4];
      v375 = v47;
      v48 = v41[7];
      v376 = v41[6];
      v377 = v48;
      v49 = v41[1];
      v370 = *v41;
      v371 = v49;
      v50 = v41[3];
      v372 = v41[2];
      v373 = v50;
      v369[29] = v49;
      sub_1C6C15004(&v370, v369);
      sub_1C6B18CB8(0, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1C6B98654();

      v51 = sub_1C6D79530();
      v53 = v52;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1C6B6592C(0, *(v42 + 2) + 1, 1, v42);
      }

      v55 = *(v42 + 2);
      v54 = *(v42 + 3);
      if (v55 >= v54 >> 1)
      {
        v42 = sub_1C6B6592C((v54 > 1), v55 + 1, 1, v42);
      }

      ++v40;
      result = sub_1C6C15060(&v370);
      *(v42 + 2) = v55 + 1;
      v56 = &v42[16 * v55];
      *(v56 + 4) = v51;
      *(v56 + 5) = v53;
      v41 = (v41 + 232);
      a1 = v368;
      if (v361 == v40)
      {
        v27 = v360;
        v38 = v364;
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_223;
  }

  v43 = 0;
LABEL_17:
  v57 = v38 + *(v367 + 48);
  sub_1C6D78740();
  v58 = v365 + 2 * v366;
  sub_1C6D783C0();
  if (v27)
  {
    v364 = v58;
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v27, 0);
    v59 = v370;
    v60 = (a1 + 64);
    v61 = v27;
    do
    {
      v63 = *(v60 - 1);
      v62 = *v60;
      *&v370 = v59;
      v65 = *(v59 + 16);
      v64 = *(v59 + 24);

      if (v65 >= v64 >> 1)
      {
        sub_1C6B39280((v64 > 1), v65 + 1, 1);
        v59 = v370;
      }

      *(v59 + 16) = v65 + 1;
      v66 = v59 + 16 * v65;
      *(v66 + 32) = v63;
      *(v66 + 40) = v62;
      v60 += 29;
      --v61;
    }

    while (v61);
    a1 = v368;
    v27 = v360;
    v58 = v364;
  }

  v67 = v58 + *(v367 + 48);
  sub_1C6D78740();
  v68 = v365 + 3 * v366;
  sub_1C6D783C0();
  v69 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v27, 0);
    v69 = v370;
    v70 = *(v370 + 16);
    v71 = (a1 + 72);
    v72 = v27;
    do
    {
      v74 = *v71;
      v71 += 58;
      v73 = v74;
      *&v370 = v69;
      v75 = *(v69 + 24);
      if (v70 >= v75 >> 1)
      {
        sub_1C6B392F0((v75 > 1), v70 + 1, 1);
        v69 = v370;
      }

      *(v69 + 16) = v70 + 1;
      *(v69 + 4 * v70++ + 32) = v73;
      --v72;
    }

    while (v72);
    a1 = v368;
    v27 = v360;
  }

  v76 = *(v367 + 48);
  *(v68 + v76) = v69;
  v77 = *MEMORY[0x1E6996140];
  v78 = sub_1C6D78760();
  v353 = *(v78 - 8);
  v79 = *(v353 + 104);
  v357 = v77;
  v363 = v353 + 104;
  v364 = v78;
  v362 = v79;
  (v79)(v68 + v76, v77);
  v80 = v365 + 4 * v366;
  sub_1C6D783C0();
  v81 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v27, 0);
    v81 = v370;
    v82 = *(v370 + 16);
    v83 = (a1 + 76);
    v84 = v27;
    do
    {
      v86 = *v83;
      v83 += 58;
      v85 = v86;
      *&v370 = v81;
      v87 = *(v81 + 24);
      if (v82 >= v87 >> 1)
      {
        sub_1C6B392F0((v87 > 1), v82 + 1, 1);
        v81 = v370;
      }

      *(v81 + 16) = v82 + 1;
      *(v81 + 4 * v82++ + 32) = v85;
      --v84;
    }

    while (v84);
    a1 = v368;
    v27 = v360;
  }

  v88 = *(v367 + 48);
  *(v80 + v88) = v81;
  (v362)(v80 + v88, v357, v364);
  v89 = v365 + 5 * v366;
  sub_1C6D783C0();
  v90 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v27, 0);
    v90 = v370;
    v91 = *(v370 + 16);
    v92 = (a1 + 80);
    v93 = v27;
    do
    {
      v95 = *v92;
      v92 += 58;
      v94 = v95;
      *&v370 = v90;
      v96 = *(v90 + 24);
      if (v91 >= v96 >> 1)
      {
        sub_1C6B392F0((v96 > 1), v91 + 1, 1);
        v90 = v370;
      }

      *(v90 + 16) = v91 + 1;
      *(v90 + 4 * v91++ + 32) = v94;
      --v93;
    }

    while (v93);
    a1 = v368;
    v27 = v360;
  }

  v97 = *(v367 + 48);
  *(v89 + v97) = v90;
  (v362)(v89 + v97, v357, v364);
  v98 = v365 + 6 * v366;
  sub_1C6D783C0();
  v99 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v27, 0);
    v99 = v370;
    v100 = *(v370 + 16);
    v101 = (a1 + 84);
    v102 = v27;
    do
    {
      v104 = *v101;
      v101 += 58;
      v103 = v104;
      *&v370 = v99;
      v105 = *(v99 + 24);
      if (v100 >= v105 >> 1)
      {
        sub_1C6B392F0((v105 > 1), v100 + 1, 1);
        v99 = v370;
      }

      *(v99 + 16) = v100 + 1;
      *(v99 + 4 * v100++ + 32) = v103;
      --v102;
    }

    while (v102);
    a1 = v368;
    v27 = v360;
  }

  v106 = *(v367 + 48);
  *(v98 + v106) = v99;
  (v362)(v98 + v106, v357, v364);
  v356 = v365 - v366;
  v107 = v365 - v366 + 8 * v366;
  sub_1C6D783C0();
  v108 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v27, 0);
    v108 = v370;
    v109 = *(v370 + 16);
    v110 = (a1 + 88);
    v111 = v27;
    do
    {
      v113 = *v110;
      v110 += 58;
      v112 = v113;
      *&v370 = v108;
      v114 = *(v108 + 24);
      if (v109 >= v114 >> 1)
      {
        sub_1C6B392F0((v114 > 1), v109 + 1, 1);
        v108 = v370;
      }

      *(v108 + 16) = v109 + 1;
      *(v108 + 4 * v109++ + 32) = v112;
      --v111;
    }

    while (v111);
    a1 = v368;
    v27 = v360;
  }

  v115 = *(v367 + 48);
  *(v107 + v115) = v108;
  (v362)(v107 + v115, v357, v364);
  v116 = v365 + 8 * v366;
  sub_1C6D783C0();
  v117 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v27, 0);
    v117 = v370;
    v118 = *(v370 + 16);
    v119 = (a1 + 92);
    v120 = v27;
    do
    {
      v122 = *v119;
      v119 += 58;
      v121 = v122;
      *&v370 = v117;
      v123 = *(v117 + 24);
      if (v118 >= v123 >> 1)
      {
        sub_1C6B392F0((v123 > 1), v118 + 1, 1);
        v117 = v370;
      }

      *(v117 + 16) = v118 + 1;
      *(v117 + 4 * v118++ + 32) = v121;
      --v120;
    }

    while (v120);
    a1 = v368;
    v27 = v360;
  }

  v124 = *(v367 + 48);
  *(v116 + v124) = v117;
  (v362)(v116 + v124, v357, v364);
  v125 = v365 + 9 * v366;
  sub_1C6D783C0();
  v126 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v27, 0);
    v126 = v370;
    v127 = *(v370 + 16);
    v128 = (a1 + 96);
    v129 = v27;
    do
    {
      v131 = *v128;
      v128 += 58;
      v130 = v131;
      *&v370 = v126;
      v132 = *(v126 + 24);
      if (v127 >= v132 >> 1)
      {
        sub_1C6B392F0((v132 > 1), v127 + 1, 1);
        v126 = v370;
      }

      *(v126 + 16) = v127 + 1;
      *(v126 + 4 * v127++ + 32) = v130;
      --v129;
    }

    while (v129);
    a1 = v368;
    v27 = v360;
  }

  v133 = *(v367 + 48);
  *(v125 + v133) = v126;
  (v362)(v125 + v133, v357, v364);
  v134 = v365 + 10 * v366;
  sub_1C6D783C0();
  v135 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B392F0(0, v27, 0);
    v135 = v370;
    v136 = *(v370 + 16);
    v137 = (a1 + 100);
    v138 = v27;
    do
    {
      v140 = *v137;
      v137 += 58;
      v139 = v140;
      *&v370 = v135;
      v141 = *(v135 + 24);
      if (v136 >= v141 >> 1)
      {
        sub_1C6B392F0((v141 > 1), v136 + 1, 1);
        v135 = v370;
      }

      *(v135 + 16) = v136 + 1;
      *(v135 + 4 * v136++ + 32) = v139;
      --v138;
    }

    while (v138);
    a1 = v368;
  }

  v142 = *(v367 + 48);
  *(v134 + v142) = v135;
  (v362)(v134 + v142, v357, v364);
  v143 = v365 + 11 * v366;
  sub_1C6D783C0();
  v144 = MEMORY[0x1E69E7CC0];
  v145 = v360;
  if (v360)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B3922C(0, v360, 0);
    v144 = v370;
    v146 = *(v370 + 16);
    v147 = (a1 + 104);
    do
    {
      v148 = *v147;
      *&v370 = v144;
      v149 = *(v144 + 24);
      if (v146 >= v149 >> 1)
      {
        sub_1C6B3922C((v149 > 1), v146 + 1, 1);
        v144 = v370;
      }

      *(v144 + 16) = v146 + 1;
      *(v144 + 4 * v146 + 32) = v148;
      v147 += 58;
      ++v146;
      --v145;
    }

    while (v145);
    a1 = v368;
  }

  v150 = *(v367 + 48);
  *(v143 + v150) = v144;
  v359 = *MEMORY[0x1E6996138];
  v362(v143 + v150);
  v151 = v365 + 12 * v366;
  sub_1C6D783C0();
  v152 = MEMORY[0x1E69E7CC0];
  v153 = v360;
  if (v360)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B3922C(0, v360, 0);
    v152 = v370;
    v154 = *(v370 + 16);
    v155 = (a1 + 108);
    do
    {
      v156 = *v155;
      *&v370 = v152;
      v157 = *(v152 + 24);
      if (v154 >= v157 >> 1)
      {
        sub_1C6B3922C((v157 > 1), v154 + 1, 1);
        v152 = v370;
      }

      *(v152 + 16) = v154 + 1;
      *(v152 + 4 * v154 + 32) = v156;
      v155 += 58;
      ++v154;
      --v153;
    }

    while (v153);
    a1 = v368;
  }

  v158 = *(v367 + 48);
  *(v151 + v158) = v152;
  (v362)(v151 + v158, v359, v364);
  v159 = v365 + 13 * v366;
  sub_1C6D783C0();
  v160 = MEMORY[0x1E69E7CC0];
  v161 = v360;
  if (v360)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B3922C(0, v360, 0);
    v160 = v370;
    v162 = *(v370 + 16);
    v163 = (a1 + 112);
    do
    {
      v164 = *v163;
      *&v370 = v160;
      v165 = *(v160 + 24);
      if (v162 >= v165 >> 1)
      {
        sub_1C6B3922C((v165 > 1), v162 + 1, 1);
        v160 = v370;
      }

      *(v160 + 16) = v162 + 1;
      *(v160 + 4 * v162 + 32) = v164;
      v163 += 58;
      ++v162;
      --v161;
    }

    while (v161);
    a1 = v368;
  }

  v166 = *(v367 + 48);
  *(v159 + v166) = v160;
  (v362)(v159 + v166, v359, v364);
  v167 = v365 + 14 * v366;
  sub_1C6D783C0();
  v168 = MEMORY[0x1E69E7CC0];
  v169 = v360;
  if (v360)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B3922C(0, v360, 0);
    v168 = v370;
    v170 = *(v370 + 16);
    v171 = (a1 + 116);
    do
    {
      v172 = *v171;
      *&v370 = v168;
      v173 = *(v168 + 24);
      if (v170 >= v173 >> 1)
      {
        sub_1C6B3922C((v173 > 1), v170 + 1, 1);
        v168 = v370;
      }

      *(v168 + 16) = v170 + 1;
      *(v168 + 4 * v170 + 32) = v172;
      v171 += 58;
      ++v170;
      --v169;
    }

    while (v169);
    a1 = v368;
  }

  v174 = *(v367 + 48);
  *(v167 + v174) = v168;
  (v362)(v167 + v174, v359, v364);
  v175 = v356 + 16 * v366;
  sub_1C6D783C0();
  v176 = MEMORY[0x1E69E7CC0];
  v177 = v360;
  if (v360)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B3922C(0, v360, 0);
    v176 = v370;
    v178 = *(v370 + 16);
    v179 = (a1 + 120);
    do
    {
      v180 = *v179;
      *&v370 = v176;
      v181 = *(v176 + 24);
      if (v178 >= v181 >> 1)
      {
        sub_1C6B3922C((v181 > 1), v178 + 1, 1);
        v176 = v370;
      }

      *(v176 + 16) = v178 + 1;
      *(v176 + 4 * v178 + 32) = v180;
      v179 += 58;
      ++v178;
      --v177;
    }

    while (v177);
  }

  v182 = *(v367 + 48);
  *(v175 + v182) = v176;
  (v362)(v175 + v182, v359, v364);
  v183 = v365 + 16 * v366;
  sub_1C6D783C0();
  v184 = MEMORY[0x1E69E7CC0];
  v185 = v360;
  if (v360)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B39154(v360);
    v186 = v370;
    v187 = (v368 + 124);
    do
    {
      v188 = *v187;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B3922C(0, *(v186 + 16) + 1, 1);
        v186 = v370;
      }

      v190 = *(v186 + 16);
      v189 = *(v186 + 24);
      if (v190 >= v189 >> 1)
      {
        sub_1C6B3922C((v189 > 1), v190 + 1, 1);
        v186 = v370;
      }

      *(v186 + 16) = v190 + 1;
      *(v186 + 4 * v190 + 32) = v188;
      v187 += 58;
      --v185;
    }

    while (v185);
  }

  else
  {
    v186 = MEMORY[0x1E69E7CC0];
  }

  v191 = *(v367 + 48);
  *(v183 + v191) = v186;
  (v362)(v183 + v191, v359, v364);
  v192 = v365 + 17 * v366;
  result = sub_1C6D783C0();
  *&v370 = v184;
  v193 = v361;
  if (v361)
  {
    v194 = (v368 + 128);
    v195 = v43;
    while (v195)
    {
      v196 = *v194;
      v194 += 29;

      result = sub_1C6B38474(v197);
      --v195;
      if (!--v193)
      {
        v198 = v370;
        v193 = v361;
        goto LABEL_115;
      }
    }

LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
    return result;
  }

  v198 = v184;
LABEL_115:
  v199 = *(v367 + 48);
  *(v192 + v199) = v198;
  (v362)(v192 + v199, v359, v364);
  v200 = v365 + 18 * v366;
  result = sub_1C6D783C0();
  *&v370 = v184;
  if (v193)
  {
    v201 = (v368 + 136);
    v202 = v43;
    while (v202)
    {
      v203 = *v201;
      v201 += 29;

      result = sub_1C6B38474(v204);
      --v202;
      if (!--v193)
      {
        v205 = v370;
        v193 = v361;
        goto LABEL_121;
      }
    }

    goto LABEL_224;
  }

  v205 = v184;
LABEL_121:
  v206 = *(v367 + 48);
  *(v200 + v206) = v205;
  (v362)(v200 + v206, v359, v364);
  v207 = v365 + 19 * v366;
  result = sub_1C6D783C0();
  *&v370 = v184;
  if (v193)
  {
    v208 = (v368 + 144);
    v209 = v193;
    v210 = v43;
    while (v210)
    {
      v211 = *v208;
      v208 += 29;

      result = sub_1C6B38474(v212);
      --v210;
      if (!--v209)
      {
        v184 = v370;
        goto LABEL_126;
      }
    }

    goto LABEL_225;
  }

LABEL_126:
  v213 = *(v367 + 48);
  *(v207 + v213) = v184;
  (v362)(v207 + v213, v359, v364);
  v214 = v365 + 20 * v366;
  sub_1C6D783C0();
  v215 = MEMORY[0x1E69E7CC0];
  v216 = v360;
  if (v360)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B39154(v360);
    v215 = v370;
    v217 = (v368 + 152);
    do
    {
      v218 = *v217;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B3922C(0, *(v215 + 16) + 1, 1);
        v215 = v370;
      }

      v220 = *(v215 + 16);
      v219 = *(v215 + 24);
      if (v220 >= v219 >> 1)
      {
        sub_1C6B3922C((v219 > 1), v220 + 1, 1);
        v215 = v370;
      }

      *(v215 + 16) = v220 + 1;
      *(v215 + 4 * v220 + 32) = v218;
      v217 += 58;
      --v216;
    }

    while (v216);
  }

  v221 = v368;
  v222 = *(v367 + 48);
  *(v214 + v222) = v215;
  (v362)(v214 + v222, v359, v364);
  v223 = v365 + 21 * v366;
  sub_1C6D783C0();
  v224 = MEMORY[0x1E69E7CC0];
  v225 = v360;
  if (v360)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B39154(v360);
    v224 = v370;
    v226 = (v221 + 156);
    do
    {
      v227 = *v226;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B3922C(0, *(v224 + 16) + 1, 1);
        v224 = v370;
      }

      v229 = *(v224 + 16);
      v228 = *(v224 + 24);
      if (v229 >= v228 >> 1)
      {
        sub_1C6B3922C((v228 > 1), v229 + 1, 1);
        v224 = v370;
      }

      *(v224 + 16) = v229 + 1;
      *(v224 + 4 * v229 + 32) = v227;
      v226 += 58;
      --v225;
    }

    while (v225);
    v221 = v368;
  }

  v230 = *(v367 + 48);
  *(v223 + v230) = v224;
  (v362)(v223 + v230, v359, v364);
  v231 = v365 + 22 * v366;
  sub_1C6D783C0();
  v232 = MEMORY[0x1E69E7CC0];
  v233 = v360;
  if (v360)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B39154(v360);
    v232 = v370;
    v234 = (v221 + 160);
    do
    {
      v235 = *v234;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B3922C(0, *(v232 + 16) + 1, 1);
        v232 = v370;
      }

      v237 = *(v232 + 16);
      v236 = *(v232 + 24);
      if (v237 >= v236 >> 1)
      {
        sub_1C6B3922C((v236 > 1), v237 + 1, 1);
        v232 = v370;
      }

      *(v232 + 16) = v237 + 1;
      *(v232 + 4 * v237 + 32) = v235;
      v234 += 58;
      --v233;
    }

    while (v233);
  }

  v238 = *(v367 + 48);
  *(v231 + v238) = v232;
  (v362)(v231 + v238, v359, v364);
  v239 = v365 + 23 * v366;
  sub_1C6D783C0();
  v240 = MEMORY[0x1E69E7CC0];
  v241 = v360;
  if (v360)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B39154(v360);
    v242 = v370;
    v243 = (v368 + 164);
    do
    {
      v244 = *v243;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B3922C(0, *(v242 + 16) + 1, 1);
        v242 = v370;
      }

      v246 = *(v242 + 16);
      v245 = *(v242 + 24);
      if (v246 >= v245 >> 1)
      {
        sub_1C6B3922C((v245 > 1), v246 + 1, 1);
        v242 = v370;
      }

      *(v242 + 16) = v246 + 1;
      *(v242 + 4 * v246 + 32) = v244;
      v243 += 58;
      --v241;
    }

    while (v241);
  }

  else
  {
    v242 = MEMORY[0x1E69E7CC0];
  }

  v247 = *(v367 + 48);
  *(v239 + v247) = v242;
  (v362)(v239 + v247, v359, v364);
  v248 = v365 + 24 * v366;
  result = sub_1C6D783C0();
  *&v370 = v240;
  v249 = v361;
  if (v361)
  {
    v250 = (v368 + 168);
    v251 = v43;
    while (v251)
    {
      v252 = *v250;
      v250 += 29;

      result = sub_1C6B38474(v253);
      --v251;
      if (!--v249)
      {
        v254 = v370;
        v249 = v361;
        goto LABEL_163;
      }
    }

    goto LABEL_226;
  }

  v254 = v240;
LABEL_163:
  v255 = *(v367 + 48);
  *(v248 + v255) = v254;
  (v362)(v248 + v255, v359, v364);
  v256 = v365 + 25 * v366;
  result = sub_1C6D783C0();
  *&v370 = v240;
  if (v249)
  {
    v257 = (v368 + 176);
    v258 = v249;
    v259 = v43;
    while (v259)
    {
      v260 = *v257;
      v257 += 29;

      result = sub_1C6B38474(v261);
      --v259;
      if (!--v258)
      {
        v240 = v370;
        goto LABEL_168;
      }
    }

    goto LABEL_227;
  }

LABEL_168:
  v262 = *(v367 + 48);
  *(v256 + v262) = v240;
  (v362)(v256 + v262, v359, v364);
  v263 = v365 + 26 * v366;
  sub_1C6D783C0();
  v264 = MEMORY[0x1E69E7CC0];
  v265 = v360;
  if (v360)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B39184(v360);
    v264 = v370;
    v266 = (v368 + 188);
    do
    {
      v268 = *v266;
      v266 += 58;
      v267 = v268;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B392F0(0, *(v264 + 16) + 1, 1);
        v264 = v370;
      }

      v270 = *(v264 + 16);
      v269 = *(v264 + 24);
      if (v270 >= v269 >> 1)
      {
        sub_1C6B392F0((v269 > 1), v270 + 1, 1);
        v264 = v370;
      }

      *(v264 + 16) = v270 + 1;
      *(v264 + 4 * v270 + 32) = v267;
      --v265;
    }

    while (v265);
  }

  v271 = *(v367 + 48);
  *(v263 + v271) = v264;
  (v362)(v263 + v271, v357, v364);
  v272 = v365 + 27 * v366;
  sub_1C6D783C0();
  v273 = MEMORY[0x1E69E7CC0];
  v274 = v360;
  if (v360)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B39184(v360);
    v275 = v370;
    v276 = (v368 + 192);
    do
    {
      v278 = *v276;
      v276 += 58;
      v277 = v278;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B392F0(0, *(v275 + 16) + 1, 1);
        v275 = v370;
      }

      v280 = *(v275 + 16);
      v279 = *(v275 + 24);
      if (v280 >= v279 >> 1)
      {
        sub_1C6B392F0((v279 > 1), v280 + 1, 1);
        v275 = v370;
      }

      *(v275 + 16) = v280 + 1;
      *(v275 + 4 * v280 + 32) = v277;
      --v274;
    }

    while (v274);
  }

  else
  {
    v275 = MEMORY[0x1E69E7CC0];
  }

  v281 = *(v367 + 48);
  *(v272 + v281) = v275;
  (v362)(v272 + v281, v357, v364);
  v282 = v365 + 28 * v366;
  result = sub_1C6D783C0();
  *&v370 = v273;
  v283 = v361;
  if (v361)
  {
    v284 = (v368 + 200);
    v285 = v43;
    while (v285)
    {
      v286 = *v284;
      v284 += 29;

      result = sub_1C6B38654(v287);
      --v285;
      if (!--v283)
      {
        v288 = v370;
        v283 = v361;
        goto LABEL_190;
      }
    }

    goto LABEL_228;
  }

  v288 = v273;
LABEL_190:
  v289 = *(v367 + 48);
  *(v282 + v289) = v288;
  (v362)(v282 + v289, v357, v364);
  v290 = v365 + 29 * v366;
  result = sub_1C6D783C0();
  *&v370 = v273;
  if (v283)
  {
    v291 = (v368 + 208);
    while (v43)
    {
      v292 = *v291;
      v291 += 29;

      result = sub_1C6B38654(v293);
      --v43;
      if (!--v283)
      {
        v273 = v370;
        goto LABEL_195;
      }
    }

    goto LABEL_229;
  }

LABEL_195:
  v294 = *(v367 + 48);
  *(v290 + v294) = v273;
  (v362)(v290 + v294, v357, v364);
  v295 = v365 + 30 * v366;
  sub_1C6D783C0();
  v296 = MEMORY[0x1E69E7CC0];
  v298 = v350;
  v297 = v351;
  v299 = v360;
  if (v360)
  {
    *&v370 = MEMORY[0x1E69E7CC0];
    sub_1C6B39154(v360);
    v296 = v370;
    v300 = (v368 + 184);
    do
    {
      v301 = *v300;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6B3922C(0, *(v296 + 16) + 1, 1);
        v296 = v370;
      }

      v303 = *(v296 + 16);
      v302 = *(v296 + 24);
      if (v303 >= v302 >> 1)
      {
        sub_1C6B3922C((v302 > 1), v303 + 1, 1);
        v296 = v370;
      }

      *(v296 + 16) = v303 + 1;
      *(v296 + 4 * v303 + 32) = v301;
      v300 += 58;
      --v299;
    }

    while (v299);
  }

  v304 = v367;
  v305 = *(v367 + 48);
  *(v295 + v305) = v296;
  v306 = v364;
  v307 = v362;
  (v362)(v295 + v305, v359, v364);
  v308 = v356 + 32 * v366;
  v309 = *(v304 + 48);
  sub_1C6D783C0();
  sub_1C6B18CB8(0, &qword_1EDCE7CF0, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
  v310 = swift_allocObject();
  *(v310 + 16) = xmmword_1C6D7E630;
  v311 = v345;
  sub_1C6D75F40();
  sub_1C6D75F10();
  v313 = v312;
  (*(v346 + 8))(v311, v347);
  v314 = v313;
  *(v310 + 32) = v314;
  *(v308 + v309) = v310;
  v307(v308 + v309, v359, v306);
  result = sub_1C6D787D0();
  v315 = v368;
  v316 = v360;
  if (v348 >= 1)
  {
    sub_1C6D783C0();
    v317 = MEMORY[0x1E69E7CC0];
    if (v316)
    {
      v369[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B3916C(v316);
      v318 = (v315 + 32);
      v317 = v369[0];
      do
      {
        v319 = v318[13];
        v382 = v318[12];
        v383 = v319;
        v384 = *(v318 + 28);
        v320 = v318[9];
        v378 = v318[8];
        v379 = v320;
        v321 = v318[11];
        v380 = v318[10];
        v381 = v321;
        v322 = v318[5];
        v374 = v318[4];
        v375 = v322;
        v323 = v318[7];
        v376 = v318[6];
        v377 = v323;
        v324 = v318[1];
        v370 = *v318;
        v371 = v324;
        v325 = v318[3];
        v372 = v318[2];
        v373 = v325;
        sub_1C6CE5F8C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6B39414(0, *(v317 + 16) + 1, 1);
          v317 = v369[0];
        }

        v327 = *(v317 + 16);
        v326 = *(v317 + 24);
        if (v327 >= v326 >> 1)
        {
          sub_1C6B39414(v326 > 1, v327 + 1, 1);
          v317 = v369[0];
        }

        *(v317 + 16) = v327 + 1;
        sub_1C6C150B4(v358, v317 + ((*(v297 + 80) + 32) & ~*(v297 + 80)) + *(v297 + 72) * v327);
        v318 = (v318 + 232);
        --v316;
      }

      while (v316);
      v315 = v368;
      v316 = v360;
    }

    v328 = v342;
    sub_1C6B9EDFC(v317, v342);

    (*(v353 + 56))(v328, 0, 1, v364);
    result = sub_1C6D78830();
  }

  if (v349 >= 1)
  {
    sub_1C6D783C0();
    v329 = MEMORY[0x1E69E7CC0];
    if (v316)
    {
      v369[0] = MEMORY[0x1E69E7CC0];
      sub_1C6B3916C(v316);
      v330 = (v315 + 32);
      v329 = v369[0];
      do
      {
        v331 = v330[13];
        v382 = v330[12];
        v383 = v331;
        v384 = *(v330 + 28);
        v332 = v330[9];
        v378 = v330[8];
        v379 = v332;
        v333 = v330[11];
        v380 = v330[10];
        v381 = v333;
        v334 = v330[5];
        v374 = v330[4];
        v375 = v334;
        v335 = v330[7];
        v376 = v330[6];
        v377 = v335;
        v336 = v330[1];
        v370 = *v330;
        v371 = v336;
        v337 = v330[3];
        v372 = v330[2];
        v373 = v337;
        sub_1C6CE6240();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6B39414(0, *(v329 + 16) + 1, 1);
          v329 = v369[0];
        }

        v339 = *(v329 + 16);
        v338 = *(v329 + 24);
        if (v339 >= v338 >> 1)
        {
          sub_1C6B39414(v338 > 1, v339 + 1, 1);
          v329 = v369[0];
        }

        *(v329 + 16) = v339 + 1;
        sub_1C6C150B4(v298, v329 + ((*(v297 + 80) + 32) & ~*(v297 + 80)) + *(v297 + 72) * v339);
        v330 = (v330 + 232);
        --v316;
      }

      while (v316);
    }

    v340 = v343;
    sub_1C6B9EDFC(v329, v343);

    (*(v353 + 56))(v340, 0, 1, v364);
    return sub_1C6D78830();
  }

  return result;
}

void sub_1C6C14FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6C150B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6C15190()
{
  result = qword_1EC1D7CF8;
  if (!qword_1EC1D7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7CF8);
  }

  return result;
}

unint64_t sub_1C6C151E8()
{
  result = qword_1EC1D7D00;
  if (!qword_1EC1D7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7D00);
  }

  return result;
}

unint64_t sub_1C6C15240()
{
  result = qword_1EC1D7D08;
  if (!qword_1EC1D7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7D08);
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  sub_1C6B3E190(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked()
{
  result = qword_1EDCE3610;
  if (!qword_1EDCE3610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1C6C15528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  sub_1C6B3E190(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6C156B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked() + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked() + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked() + 24);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked() + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C15D54()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7D10);
  __swift_project_value_buffer(v0, qword_1EC1D7D10);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A08 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7D10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6C16074();
    }
  }

  return result;
}

uint64_t sub_1C6C16074()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked() + 24);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6C16B20(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    result = sub_1C6C161C4(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C161C4(uint64_t a1)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  sub_1C6B3E190(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B3E224(v5);
  }

  sub_1C6B3E2B0(v5, v10);
  sub_1C6C16B20(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  sub_1C6C16B20(&qword_1EC1D7D28, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C164A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C16B20(&qword_1EC1D7D40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C1651C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A08 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7D10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C165C4(uint64_t a1)
{
  v2 = sub_1C6C16B20(&qword_1EC1D7640, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C16630()
{
  sub_1C6C16B20(&qword_1EC1D7640, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B42Storage_CompressedSessionEventArticleLikedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  sub_1C6B3FB88();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked();
  v19 = *(v18 + 24);
  v20 = *(v14 + 48);
  sub_1C6B3E190(a1 + v19, v17);
  sub_1C6B3E190(a2 + v19, &v17[v20]);
  v21 = *(v5 + 48);
  if (v21(v17, 1, v4) == 1)
  {
    if (v21(&v17[v20], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
LABEL_11:
      v25 = *(v18 + 20);
      sub_1C6D78A40();
      sub_1C6C16B20(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v22 = sub_1C6D79560();
      return v22 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v21(&v17[v20], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
    goto LABEL_8;
  }

  sub_1C6B3E2B0(&v17[v20], v8);
  v24 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if (v24)
  {
    goto LABEL_11;
  }

LABEL_8:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1C6C16B20(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6C16B68(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a2;
  v6 = sub_1C6D77E40();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1C6D774C0();
  v37 = *(v42 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C17000();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6D77290();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  (*(v22 + 16))(&v36 - v21, a1, v18, v20);
  if (swift_dynamicCast())
  {
    (*(v14 + 8))(v17, v13);
    v23 = sub_1C6D77270();
    v24 = sub_1C6D77330();
    v26 = v25;

    if (!v3)
    {
      sub_1C6C17094(&unk_1EC1D7D48, MEMORY[0x1E69B45C8]);
      v27 = v42;
      sub_1C6D75AF0();
      v29 = v38;
      sub_1C6D774B0();
      v30 = sub_1C6D77E30();
      v32 = v31;
      sub_1C6B1C9F0(v24, v26);
      (*(v39 + 8))(v29, v40);
      (*(v37 + 8))(v11, v27);
      *a3 = v30;
      a3[1] = v32;
      v33 = *MEMORY[0x1E69E3638];
      v34 = sub_1C6D76F90();
      v35 = *(v34 - 8);
      (*(v35 + 104))(a3, v33, v34);
      (*(v35 + 56))(a3, 0, 1, v34);
    }
  }

  else
  {
    v28 = sub_1C6D76F90();
    (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
  }
}

void sub_1C6C17000()
{
  if (!qword_1EDCE6030)
  {
    sub_1C6D774D0();
    sub_1C6C17094(&qword_1EDCE5FB8, MEMORY[0x1E69B45D8]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6030);
    }
  }
}

uint64_t sub_1C6C17094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6C170DC(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D7A2C0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_1C6D7A160();
    __swift_destroy_boxed_opaque_existential_1(v4);
    return sub_1C6D75F00();
  }

  return result;
}

uint64_t sub_1C6C171A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C6D77430();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1C6D77A60();
  v40 = *(v43 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C18C48();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6D77290();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  (*(v21 + 16))(&v38 - v20, a1, v17, v19);
  if (swift_dynamicCast())
  {
    v22 = v2;
    (*(v13 + 8))(v16, v12);
    v23 = sub_1C6D77270();
    v25 = sub_1C6D77330();
    v27 = v26;

    v28 = *(v22 + OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_jsonDecoder);
    sub_1C6C18CFC(&qword_1EDCE5EF8, 255, MEMORY[0x1E69B48E0]);
    sub_1C6D75AF0();
    sub_1C6C183C4();
    v30 = v29;
    v31 = (a2 + *(v29 + 48));
    v32 = type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData();
    MEMORY[0x1EEE9AC00](v32);
    *(&v38 - 2) = v10;
    sub_1C6C18CFC(&unk_1EDCE4FA0, 255, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
    sub_1C6D78C30();
    v33 = v39;
    sub_1C6D77A30();
    v34 = sub_1C6D77420();
    v36 = v35;
    sub_1C6B1C9F0(v25, v27);
    (*(v41 + 8))(v33, v42);
    *v31 = v34;
    v31[1] = v36;
    (*(*(v30 - 8) + 56))(a2, 0, 1, v30);
    return (*(v40 + 8))(v10, v43);
  }

  else
  {
    sub_1C6C183C4();
    return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
  }
}