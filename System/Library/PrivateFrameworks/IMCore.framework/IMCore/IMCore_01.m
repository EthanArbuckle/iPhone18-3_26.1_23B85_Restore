BOOL sub_1A8264770(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1A82647C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1A8264800@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1A84E5DBC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1A8264834(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A826497C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
  swift_beginAccess();
  return sub_1A840888C(v3 + v4, a2, type metadata accessor for ImportExport.Conversation);
}

uint64_t sub_1A82649F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1A8264A50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1A8264AA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1A8264B78(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[21];
    goto LABEL_9;
  }

  v14 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[24];

  return v15(v16, a2, v14);
}

uint64_t sub_1A8264D08(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[21];
    goto LABEL_7;
  }

  v14 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[24];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1A8264F18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8264F50()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8264F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 80);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 84);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A82650CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 80);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 84);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A8265264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 80);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A8265320(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 80);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8265420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 84);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1A826555C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 84);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1A8265780()
{
  MEMORY[0x1AC56D490](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A82657C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8265818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A82658E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A82659A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ImportExport.Conversation();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A8265A60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ImportExport.Conversation();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A8265B18()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8265B58()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8265B94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8265C54()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8265C8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8265CD8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1A8265D18(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  *a2 = v3;
  return result;
}

uint64_t sub_1A8265D5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8265D94()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8265DD4()
{
  MEMORY[0x1AC56D490](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8265E0C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8265E44()
{
  v1 = sub_1A84E56DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1A8266020@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1A8266080@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  swift_beginAccess();
  return sub_1A8243D74(v3 + v4, a2, &qword_1EB2E7CF8, &qword_1A8509020);
}

uint64_t sub_1A8266120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ImportExport.Conversation();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1A82661DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ImportExport.Conversation();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1A8266294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ImportExport.Message();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ImportExport.Attachment();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A8266384(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ImportExport.Message();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ImportExport.Attachment();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A8266488(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ImportExport.ArchivingOptions() + 24));

  return sub_1A84E529C();
}

uint64_t sub_1A82664D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ImportExport.ExportOptions();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1A84E558C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A82665C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ImportExport.ExportOptions();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1A84E558C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A82666C8@<X0>(uint64_t *a1@<X8>)
{
  sub_1A84E544C();
  result = sub_1A84E543C();
  *a1 = result;
  return result;
}

uint64_t sub_1A8266714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A84E558C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ImportExport.Conversation();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A8266804(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A84E558C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ImportExport.Conversation();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A8266900(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A84E558C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A82669AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1A84E558C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8266A54()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8266A98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8266AD8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1A84E558C();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1A8266B84(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1A84E558C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8266C24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.MessageBatch();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A8266C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.MessageBatch();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1A8266D00()
{
  MEMORY[0x1AC56D490](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8266D38()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8266D70()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8266DA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1A8266DE0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A8266E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A8266EE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1A8266F94()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8266FDC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A8267014()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8267054()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E9068, &unk_1A850BFF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1A82670F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A84E58DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1A84E57AC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1A82671E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1A84E58DC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1A84E57AC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1A8267348()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

__CFString *sub_1A8267378(int a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Downgraded";
  }

  if (a1 == 2)
  {
    return @"Upgraded";
  }

  else
  {
    return v1;
  }
}

uint64_t _IMChatServiceForSendingAvailabilityErrorFromReachabilityResults(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v1 = a1;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v28, v32, 16);
  if (!v3)
  {

    v15 = 0;
    goto LABEL_34;
  }

  v6 = v3;
  v27 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = *v29;
  v11 = MEMORY[0x1E69A7AE0];
  do
  {
    v12 = 0;
    do
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(v1);
      }

      v13 = *(*(&v28 + 1) + 8 * v12);
      v14 = objc_msgSend_error(v13, v4, v5);
      v15 = v14;
      if (v14 > 4)
      {
        if (v14 > 6)
        {
          if (v14 == 8)
          {
            v21 = objc_msgSend_service(v13, v4, v5);
            LODWORD(v13) = objc_msgSend_isEqualToString_(v21, v22, *v11);

            v8 |= v13;
LABEL_16:
            v9 |= v13;
            goto LABEL_19;
          }

          if (v14 == 7)
          {
            v15 = 6;
LABEL_33:

            goto LABEL_34;
          }
        }

        else
        {
          if (v14 != 6)
          {
            goto LABEL_33;
          }

          v18 = objc_msgSend_service(v13, v4, v5);
          isEqualToString = objc_msgSend_isEqualToString_(v18, v19, *v11);

          v8 |= isEqualToString;
        }
      }

      else if (v14)
      {
        if (v14 != 1)
        {
          if (v14 != 3)
          {
            goto LABEL_19;
          }

          v16 = objc_msgSend_service(v13, v4, v5);
          LOBYTE(v13) = objc_msgSend_isEqualToString_(v16, v17, *v11);

          goto LABEL_16;
        }

        v27 = 1;
      }

      else
      {
        v7 |= objc_msgSend_allAreReachable(v13, v4, v5);
      }

LABEL_19:
      ++v12;
    }

    while (v6 != v12);
    v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v4, &v28, v32, 16);
    v6 = v23;
  }

  while (v23);

  v24 = 3;
  if ((v8 & 1) == 0)
  {
    v24 = 0;
  }

  if (v9)
  {
    v15 = 2;
  }

  else
  {
    v15 = v24;
  }

  if ((v7 | v27))
  {
    v15 = ~v7 & 1;
  }

LABEL_34:

  v25 = *MEMORY[0x1E69E9840];
  return v15;
}

void IMChatCalculateServiceForSendingNewComposeMaybeForce(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned __int8 a9, void *a10, void *a11)
{
  v16 = a11;
  v17 = MEMORY[0x1E69A8240];
  v18 = a10;
  v19 = a4;
  v20 = a3;
  v21 = a2;
  v22 = a1;
  v23 = objc_alloc_init(v17);
  v26 = objc_msgSend_chatIdentifier(v21, v24, v25);
  objc_msgSend_setChatIdentifier_(v23, v27, v26);

  v30 = objc_msgSend_chatStyle(v21, v28, v29);
  objc_msgSend_setChatStyle_(v23, v31, v30);
  v34 = objc_msgSend__stripFZIDPrefix(v20, v32, v33);

  objc_msgSend_setSenderLastAddressedHandle_(v23, v35, v34);
  objc_msgSend_setSenderLastAddressedSIMID_(v23, v36, v19);

  objc_msgSend_setForceMMS_(v23, v37, a5);
  objc_msgSend_setShouldForceServerStatusRefresh_(v23, v38, a7);
  objc_msgSend_setConversationWasDowngraded_(v23, v39, a8);
  objc_msgSend_setHasConversationHistory_(v23, v40, a9);
  v43 = objc_msgSend_internalName(v18, v41, v42);

  objc_msgSend_setLastUsedServiceName_(v23, v44, v43);
  v47 = objc_msgSend_sharedController(IMServiceReachabilityController, v45, v46);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = sub_1A8268B48;
  v52[3] = &unk_1E780FC88;
  v53 = v16;
  v48 = v16;
  objc_msgSend_calculateServiceForSendingToHandles_withContext_completionBlock_(v47, v49, v22, v23, v52);
}

void sub_1A8268B48(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_smsService(IMService, v4, v5);
  v9 = objc_msgSend_bestResult(v3, v7, v8);

  if (v9)
  {
    v12 = objc_msgSend_bestResult(v3, v10, v11);
    v15 = objc_msgSend_service(v12, v13, v14);
    v17 = objc_msgSend_serviceWithName_(IMService, v16, v15);

    v6 = v17;
  }

  else
  {
    v12 = objc_msgSend_resultsByAccountID(v3, v10, v11);
    v15 = objc_msgSend_allValues(v12, v18, v19);
    _IMChatServiceForSendingAvailabilityErrorFromReachabilityResults(v15);
  }

  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = objc_msgSend_resultsForServiceName_(v3, v21, *MEMORY[0x1E69A7AF0]);
  v25 = objc_msgSend_firstObject(v22, v23, v24);

  if (v25)
  {
    v28 = objc_msgSend_ktData(v25, v26, v27);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = sub_1A8268D38;
    v34[3] = &unk_1E780FC60;
    v35 = v20;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v28, v29, v34);

    objc_msgSend_didCheckServer(v25, v30, v31);
    objc_msgSend_allAreReachable(v25, v32, v33);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1A8268D38(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v9 = objc_msgSend_status(a3, v7, v8);
  v12 = objc_msgSend_numberWithInteger_(v5, v10, v9);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v11, v12, v6);
}

uint64_t sub_1A8268E7C(uint64_t a1)
{
  v2 = [IMSWHighlightCenterController alloc];
  qword_1EB2EA130 = objc_msgSend_initWithAppIdentifier_(v2, v3, *(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

id sub_1A8269278()
{
  if (qword_1EB2EA148 != -1)
  {
    sub_1A84DEC70();
  }

  v1 = qword_1EB2EA140;

  return v1;
}

uint64_t sub_1A82692BC(uint64_t a1, const char *a2)
{
  qword_1EB2EA140 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x1E696AE70], a2, @"\\$\\(([^\\$]|\\$[^\\(])*?\\)"), 0, 0;

  return MEMORY[0x1EEE66BB8]();
}

id sub_1A826930C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___im_handleIdentifierRegex(MEMORY[0x1E696AEC0], a2, a3);
  v7 = objc_msgSend_length(a1, v5, v6);
  v9 = objc_msgSend_matchesInString_options_range_(v4, v8, a1, 0, 0, v7);

  v11 = objc_msgSend___imArrayByApplyingBlock_(v9, v10, &unk_1F1B6DAE0);

  return v11;
}

uint64_t sub_1A826939C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = MEMORY[0x1E696B098];
  v5 = objc_msgSend_range(a2, a2, a3);

  return objc_msgSend_valueWithRange_(v3, v4, v5, v4);
}

id sub_1A82693E4(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend___im_handleIdentifierRegex(MEMORY[0x1E696AEC0], a2, a3);
  v7 = objc_msgSend_length(a1, v5, v6);
  v9 = objc_msgSend_firstMatchInString_options_range_(v4, v8, a1, 0, 0, v7);

  if (v9 && !objc_msgSend_range(v9, v10, v11) && v12 == objc_msgSend_length(a1, v12, v13))
  {
    v16 = objc_msgSend_length(a1, v14, v15);
    v18 = objc_msgSend_substringWithRange_(a1, v17, 2, v16 - 3);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id sub_1A82694B0(void *a1, const char *a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend___im_handleIdentifierRegex(MEMORY[0x1E696AEC0], a2, a3);
  v7 = objc_msgSend_length(a1, v5, v6);
  v9 = objc_msgSend_matchesInString_options_range_(v4, v8, a1, 0, 0, v7);

  v12 = objc_msgSend_set(MEMORY[0x1E695DFA8], v10, v11);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = v9;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v30, v34, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = objc_msgSend_range(*(*(&v30 + 1) + 8 * i), v16, v17, v30);
        v23 = objc_msgSend_substringWithRange_(a1, v22, v21, v22);
        objc_msgSend_addObject_(v12, v24, v23);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v30, v34, 16);
    }

    while (v18);
  }

  v27 = objc_msgSend_copy(v12, v25, v26);
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

id sub_1A8269648(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_1A8259A90;
  v18[4] = sub_1A825AE74;
  v19 = &stru_1F1B76F98;
  v8 = objc_msgSend_length(a1, v6, v7);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A82697A4;
  v13[3] = &unk_1E780FD40;
  v16 = v18;
  v17 = a3;
  v9 = v5;
  v14 = v9;
  v15 = a1;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(a1, v10, 0, v8, 2, v13);
  v11 = v9;

  _Block_object_dispose(v18, 8);

  return v11;
}

void sub_1A826978C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82697A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v8 = objc_msgSend_lengthOfBytesUsingEncoding_(*(*(*(a1 + 48) + 8) + 40), v7, 4);
  if ((objc_msgSend_lengthOfBytesUsingEncoding_(v19, v9, 4) + v8) > *(a1 + 56))
  {
    objc_msgSend_addObject_(*(a1 + 32), v10, *(*(*(a1 + 48) + 8) + 40));
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = &stru_1F1B76F98;
  }

  v13 = objc_msgSend_stringByAppendingString_(*(*(*(a1 + 48) + 8) + 40), v10, v19);
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (a3 + a4 >= objc_msgSend_length(*(a1 + 40), v16, v17))
  {
    objc_msgSend_addObject_(*(a1 + 32), v18, *(*(*(a1 + 48) + 8) + 40));
  }
}

BOOL sub_1A82698B0(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AFB0]);
  v4 = objc_msgSend_initWithUUIDString_(v2, v3, a1);
  v5 = v4 != 0;

  return v5;
}

void sub_1A8269A04()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.messages.pinning-ubiquity", v2);
  v1 = qword_1EB2E9110;
  qword_1EB2E9110 = v0;
}

void sub_1A826C348()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v0 = dispatch_queue_create("com.apple.messages.pinning-sync", v2);
  v1 = qword_1EB2EA150;
  qword_1EB2EA150 = v0;
}

void sub_1A826C624(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A826C640(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3 == 2)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_19;
    }

    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[IMPinnedConversationsController synchronizeLocalDataStore]_block_invoke_2";
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "%s Determined that the local store already has a more up-to-date pin config. localPinConfig: %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  if (a3 == 1)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v5;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Syncing pin config from NSUbiquitousKeyValueStore to local store %@", buf, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    objc_msgSend__updateLocalStoreWithPinConfiguration_(WeakRetained, v9, v5);

    if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v10, v11))
    {
      v12 = objc_loadWeakRetained((a1 + 32));
      objc_msgSend_fetchPinnedConversationIdentifiersFromLocalStore(v12, v13, v14);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A826C8C8;
      block[3] = &unk_1E780FDC8;
      objc_copyWeak(&v17, (a1 + 32));
      dispatch_async(MEMORY[0x1E69E96A0], block);
      objc_destroyWeak(&v17);
    }
  }

  else if (!a3 && IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Not synchronizing data stores because we could not determine which store has the more recent change.", buf, 2u);
    }

LABEL_7:
  }

LABEL_19:

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1A826C8C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_fetchPinnedConversationIdentifiersFromLocalStore(WeakRetained, v1, v2);
}

void sub_1A826CAF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_msgSend_dataStore(WeakRetained, v3, v4);
  v8 = objc_msgSend_synchronize(v5, v6, v7);

  if (v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v24 = 0;
        v10 = "Ubiquitous data store synchronization completed successfully.";
        v11 = &v24;
LABEL_12:
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, v10, v11, 2u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v12 = objc_loadWeakRetained((a1 + 32));
    v15 = objc_msgSend_dataStore(v12, v13, v14);

    v16 = IMOSLoggingEnabled();
    if (v15)
    {
      if (v16)
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v22 = 0;
          v10 = "Ubiquitous data store synchronization failed for an unknown reason.";
          v11 = &v22;
          goto LABEL_12;
        }

LABEL_13:
      }
    }

    else if (v16)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v10 = "Ubiquitous data store synchronization failed because the store was nil.";
        v11 = buf;
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  v17 = objc_loadWeakRetained((a1 + 32));
  v20 = objc_msgSend_numberOfPendingForceSyncs(v17, v18, v19);
  objc_msgSend_setNumberOfPendingForceSyncs_(v17, v21, v20 - 1);
}

void sub_1A826CC68(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A826CC34);
  }

  _Unwind_Resume(a1);
}

void sub_1A826D138(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A826CE20);
  }

  _Unwind_Resume(a1);
}

void sub_1A826D318(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0 && IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Did not update ubiquitous store for pin config when updating the stores %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1A826D5D8(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = objc_msgSend_shouldWriteProposedPinConfiguration_toUbiquitousStoreWithExistingPinConfiguration_(WeakRetained, v5, *(a1 + 32), v3);

  if (v6 && (v7 = objc_loadWeakRetained((a1 + 48)), shouldUpdateExistingPinConfig_withProposedPinConfig = objc_msgSend_shouldUpdateExistingPinConfig_withProposedPinConfig_(v7, v8, v3, *(a1 + 32)), v7, shouldUpdateExistingPinConfig_withProposedPinConfig))
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v27 = 138412290;
        v28 = v3;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Saving new pin configuration to ubiquitous store. Old: %@ ", &v27, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v27 = 138412290;
        v28 = v12;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Saving new pin configuration to ubiquitous store. New: %@", &v27, 0xCu);
      }
    }

    if (IMIsRunningInUnitTesting())
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v27 = 136315138;
          v28 = "[IMPinnedConversationsController _updateUbiquitousStoreWithPinConfiguration:completion:]_block_invoke";
          _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "%s Didn't actually update ubiquitous store because we're running a unit test.", &v27, 0xCu);
        }
      }
    }

    else
    {
      v17 = objc_loadWeakRetained((a1 + 48));
      v20 = objc_msgSend_dataStore(v17, v18, v19);
      objc_msgSend_setDictionary_forKey_(v20, v21, *(a1 + 32), @"pD");

      v22 = objc_loadWeakRetained((a1 + 48));
      objc_msgSend_forceSynchronizeUbiquitousStore(v22, v23, v24);
    }

    v16 = 1;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v27 = 138412290;
        v28 = v15;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "shouldUpdate == NO. Not saving new pin configuration to ubiquitous store: %@", &v27, 0xCu);
      }
    }

    v16 = 0;
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    (*(v25 + 16))(v25, v16);
  }

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1A826E228(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A826E14CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A826EA5C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A826E980);
  }

  _Unwind_Resume(a1);
}

void sub_1A826EB98(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1A8259AA0;
  v23 = sub_1A825AE7C;
  v2 = objc_loadWeakRetained((a1 + 40));
  v5 = objc_msgSend_dataStore(v2, v3, v4);
  v7 = objc_msgSend__ubiquitousPinConfigurationInStore_(v2, v6, v5);

  v24 = v7;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = v20[5];
      *buf = 138412290;
      v26 = v9;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Got PinConfigurationInStore: %@", buf, 0xCu);
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A826EE2C;
  aBlock[3] = &unk_1E780FE68;
  v17 = *(a1 + 32);
  v18 = &v19;
  v10 = _Block_copy(aBlock);
  if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v11, v12))
  {
    v10[2](v10);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A826EE54;
    block[3] = &unk_1E780FE90;
    v15 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  _Block_object_dispose(&v19, 8);
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A826EE2C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_1A826EEF8(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend__locallyStoredPinConfiguration(*(a1 + 32), v4, v5);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[IMPinnedConversationsController fetchMostUpToDatePinConfiguration:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v3;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "%s ubiquitousPinConfig {%@}", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[IMPinnedConversationsController fetchMostUpToDatePinConfiguration:]_block_invoke";
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "%s localPinConfig {%@}", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = sub_1A8259AA0;
  v31 = sub_1A825AE7C;
  v32 = objc_msgSend_mostUpToDatePinConfigurationByComparingPinConfiguration_toOtherPinConfiguration_(*(a1 + 32), v8, v6, v3);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (objc_msgSend_isEqualToDictionary_(*(*&buf[8] + 40), v10, v6))
  {
    v12 = v26;
    v13 = 2;
LABEL_13:
    v12[3] = v13;
    goto LABEL_15;
  }

  isEqualToDictionary = objc_msgSend_isEqualToDictionary_(*(*&buf[8] + 40), v11, v3);
  v12 = v26;
  if (isEqualToDictionary)
  {
    v13 = 1;
    goto LABEL_13;
  }

  v26[3] = 0;
LABEL_15:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A826F2A0;
  aBlock[3] = &unk_1E780FEE0;
  v22 = *(a1 + 40);
  v23 = buf;
  v24 = &v25;
  v15 = _Block_copy(aBlock);
  if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v16, v17))
  {
    v15[2](v15);
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A826F2D0;
    v19[3] = &unk_1E780FE90;
    v20 = v15;
    dispatch_async(MEMORY[0x1E69E96A0], v19);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(buf, 8);

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A826F2A0(void *a1)
{
  result = a1[4];
  if (result)
  {
    return (*(result + 16))(result, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 24));
  }

  return result;
}

void sub_1A826F6C8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1A826FD94(uint64_t a1)
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_1A84DEE7C(a1, v2, v3);
  }
}

void sub_1A8270784(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A8270750);
  }

  _Block_object_dispose(&a17, 8);
  _Block_object_dispose((v17 - 48), 8);
  _Unwind_Resume(exc_buf);
}

uint64_t sub_1A82707C8(uint64_t a1, const char *a2, void *a3)
{
  result = objc_msgSend_integerValue(a3, a2, a3);
  v5 = 40;
  if (result == 1)
  {
    v5 = 32;
  }

  ++*(*(*(a1 + v5) + 8) + 24);
  return result;
}

id IMPersonStatusComparator(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_copy(qword_1EB2E4828, a2, a3);
  v4 = qword_1EB2E4828;
  qword_1EB2E4828 = v3;

  v5 = _Block_copy(qword_1EB2E4828);

  return v5;
}

uint64_t sub_1A8271D00(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_status(a2, v5, v6);
  v10 = objc_msgSend_status(v4, v8, v9);

  v11 = qword_1A84FFD28[v7];
  v12 = qword_1A84FFD28[v10];
  v13 = v11 == v12;
  v14 = v11 <= v12;
  v15 = 1;
  if (v14)
  {
    v15 = -1;
  }

  if (v13)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

id IMPersonStatusReverseComparator(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_copy(qword_1EB2E4830, a2, a3);
  v4 = qword_1EB2E4830;
  qword_1EB2E4830 = v3;

  v5 = _Block_copy(qword_1EB2E4830);

  return v5;
}

uint64_t sub_1A8271DB8(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_status(a2, v5, v6);
  v10 = objc_msgSend_status(v4, v8, v9);
  v11 = qword_1A84FFD28[v7];
  v12 = qword_1A84FFD28[v10];
  v13 = 1;
  if (v11 <= v12)
  {
    v13 = -1;
  }

  if (v11 == v12)
  {
    v13 = 0;
  }

  if (v13 == -1)
  {
    v13 = 1;
  }

  if (v11 > v12)
  {
    v14 = -1;
  }

  else
  {
    v14 = v13;
  }

  return v14;
}

void sub_1A8272310(void *a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v96 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v11 = objc_msgSend_service(v8, v9, v10);
  isEqualToString = objc_msgSend_isEqualToString_(v11, v12, *MEMORY[0x1E69A7AD8]);

  v89 = a5;
  if (isEqualToString)
  {
    v16 = a4 == 45;
    v17 = 10;
    goto LABEL_5;
  }

  v18 = objc_msgSend_subject(v8, v14, v15);
  if (objc_msgSend_length(v18, v19, v20))
  {

    v16 = a4 == 45;
    v17 = 2;
LABEL_5:
    if (!v16)
    {
      ++v17;
    }

    goto LABEL_7;
  }

  v81 = objc_msgSend_fileTransferGUIDs(v8, v21, v22);
  v84 = objc_msgSend_count(v81, v82, v83);

  v17 = 2;
  if (a4 == 45)
  {
    if (!v84)
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 3;
  }

LABEL_7:
  v87 = v17;
  v23 = objc_msgSend_destinationCallerID(v8, v14, v15);
  v25 = objc_msgSend_userInHomeCountryWithDestinationCallerID_(a1, v24, v23);

  v28 = 4;
  if (!v25)
  {
    v28 = 5;
  }

  v86 = v28;
  v29 = MEMORY[0x1E69A7F58];
  v30 = objc_msgSend_destinationCallerID(v8, v26, v27);
  v88 = objc_msgSend_carrierNameForPhoneNumber_(v29, v31, v30);

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v34 = objc_msgSend_fileTransferGUIDs(v8, v32, v33);
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v91, v95, 16);
  if (v36)
  {
    v39 = v36;
    v40 = 0;
    v41 = *v92;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v92 != v41)
        {
          objc_enumerationMutation(v34);
        }

        v43 = *(*(&v91 + 1) + 8 * i);
        v44 = objc_msgSend_sharedInstance(IMFileTransferCenter, v37, v38);
        v46 = objc_msgSend_transferForGUID_(v44, v45, v43);

        v40 += objc_msgSend_totalBytes(v46, v47, v48);
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v91, v95, 16);
    }

    while (v39);
  }

  else
  {
    v40 = 0;
  }

  v90 = v8;
  v51 = objc_msgSend_body(v8, v49, v50);
  v54 = objc_msgSend_string(v51, v52, v53);
  v57 = objc_msgSend_length(v54, v55, v56);

  v85 = objc_alloc(MEMORY[0x1E695DF90]);
  v59 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v58, v89);
  v60 = *MEMORY[0x1E69A7368];
  v62 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v61, v87);
  v63 = *MEMORY[0x1E69A7358];
  v65 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v64, v57);
  v66 = *MEMORY[0x1E69A7370];
  v68 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v67, v40);
  v69 = *MEMORY[0x1E69A7340];
  v71 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v70, v86);
  v73 = objc_msgSend_initWithObjectsAndKeys_(v85, v72, v59, v60, v62, v63, v65, v66, v68, v69, v71, *MEMORY[0x1E69A7360], 0);

  if (objc_msgSend_length(v88, v74, v75))
  {
    objc_msgSend_setObject_forKey_(v73, v76, v88, *MEMORY[0x1E69A7348]);
  }

  v78 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v76, v77);
  objc_msgSend_trackEvent_withDictionary_(v78, v79, *MEMORY[0x1E69A7338], v73);

  v80 = *MEMORY[0x1E69E9840];
}

void sub_1A82726E8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v8 = objc_msgSend_fileTransferGUIDs(v5, v6, v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v51, v55, 16);
  if (v10)
  {
    v13 = v10;
    v14 = 0;
    v15 = *v52;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(v8);
        }

        v17 = *(*(&v51 + 1) + 8 * i);
        v18 = objc_msgSend_sharedInstance(IMFileTransferCenter, v11, v12);
        v20 = objc_msgSend_transferForGUID_(v18, v19, v17);

        v14 += objc_msgSend_totalBytes(v20, v21, v22);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v51, v55, 16);
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  v25 = objc_msgSend_body(v5, v23, v24);
  v28 = objc_msgSend_string(v25, v26, v27);
  v31 = objc_msgSend_length(v28, v29, v30);

  v32 = objc_alloc(MEMORY[0x1E695DF90]);
  v34 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v33, a4);
  v35 = *MEMORY[0x1E69A7368];
  v37 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v36, 12);
  v38 = *MEMORY[0x1E69A7358];
  v40 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v39, v31);
  v41 = *MEMORY[0x1E69A7370];
  v43 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v42, v14);
  v45 = objc_msgSend_initWithObjectsAndKeys_(v32, v44, v34, v35, v37, v38, v40, v41, v43, *MEMORY[0x1E69A7340], 0);

  v48 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v46, v47);
  objc_msgSend_trackEvent_withDictionary_(v48, v49, *MEMORY[0x1E69A7338], v45);

  v50 = *MEMORY[0x1E69E9840];
}

id sub_1A8272E1C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_ID(a2, a2, a3);
  v4 = IMChatCanonicalIDSIDsForAddress();

  return v4;
}

void sub_1A8272E6C(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = objc_msgSend_allKeys(v2, v4, v5);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v41, v49, 16);
  if (v9)
  {
    v10 = *v42;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        v13 = objc_msgSend_objectForKeyedSubscript_(v2, v8, v12);
        v16 = objc_msgSend_integerValue(v13, v14, v15);

        if (v16 == 1)
        {
          v19 = MEMORY[0x1E69D8C00];
          v20 = objc_msgSend__stripFZIDPrefix(v12, v17, v18);
          v22 = objc_msgSend_normalizedHandleWithDestinationID_(v19, v21, v20);

          if (v22)
          {
            v23 = objc_alloc(MEMORY[0x1E69D8B80]);
            v25 = objc_msgSend_initWithHandle_(v23, v24, v22);
            objc_msgSend_addObject_(v3, v26, v25);
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v46 = v12;
            v47 = 2048;
            v48 = v16;
            _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "Destination not registered for Group FaceTime: %@ (%ld)", buf, 0x16u);
          }
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v41, v49, 16);
    }

    while (v9);
  }

  if (objc_msgSend_count(v3, v28, v29))
  {
    if (IMOSLoggingEnabled())
    {
      v32 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = *(a1 + 32);
        *buf = 138412546;
        v46 = v3;
        v47 = 2112;
        v48 = v33;
        _os_log_impl(&dword_1A823F000, v32, OS_LOG_TYPE_INFO, "Adding member to Group FaceTime: %@ in conversaton %@", buf, 0x16u);
      }
    }

    v34 = objc_msgSend_sharedRegistry(IMChatRegistry, v30, v31);
    v37 = objc_msgSend_conversationManager(v34, v35, v36);
    objc_msgSend_addRemoteMembers_toConversation_(v37, v38, v3, *(a1 + 32));
  }

  v39 = *MEMORY[0x1E69E9840];
}

void sub_1A82738BC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A8273888);
  }

  _Unwind_Resume(a1);
}

void sub_1A82744A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A8274398);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A8274504(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_checkForAllowedByScreenTime(WeakRetained, v1, v2);
}

id sub_1A82794D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedInstance(IMAccountController, a2, a3);
  v7 = objc_msgSend_activeAccounts(v4, v5, v6);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = v7;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v36, v41, 16);
  if (v30)
  {
    v12 = *v37;
    v29 = *v37;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v15 = objc_msgSend_aliases(v14, v10, v11, v29);
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v32, v40, 16);
        if (v17)
        {
          v18 = *v33;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v33 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v32 + 1) + 8 * j);
              if (MEMORY[0x1AC56C3C0](v20))
              {
                v21 = IMCanonicalizeFormattedString();
              }

              else
              {
                v21 = v20;
              }

              v23 = v21;
              v24 = objc_msgSend_objectForKey_(*(a1 + 32), v22, v21);

              if (v24)
              {

                goto LABEL_25;
              }
            }

            v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v25, &v32, v40, 16);
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        v12 = v29;
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v36, v41, 16);
      v12 = v29;
    }

    while (v30);
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "Unable to find handle in the token dictionary", buf, 2u);
    }
  }

  v24 = 0;
LABEL_25:

  v27 = *MEMORY[0x1E69E9840];

  return v24;
}

uint64_t sub_1A827A8F0(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, &unk_1F1BA16B0);
  qword_1EB2EA168 = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

void sub_1A827B288(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A827B34C;
  v9[3] = &unk_1E78101B8;
  v10 = v5;
  v11 = v4;
  v6 = v4;
  v7 = v5;
  objc_msgSend_fetchRecentStickersWithCompletion_(a1, v8, v9);
}

void sub_1A827B34C(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A827B40C;
  block[3] = &unk_1E7810190;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t sub_1A827B40C(uint64_t a1, const char *a2)
{
  objc_msgSend_addObjectsFromArray_(*(a1 + 32), a2, *(a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void sub_1A827B458(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A827B538;
  v13[3] = &unk_1E7810258;
  v16 = a2;
  v17 = a3;
  v14 = v9;
  v15 = v8;
  v10 = v8;
  v11 = v9;
  objc_msgSend_fetchRecentItemsForDomain_completion_(a1, v12, @"com.apple.Handwriting.HandwritingProvider", v13);
}

void sub_1A827B538(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = dispatch_group_create();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v33, v37, 16);
  if (v6)
  {
    v7 = v6;
    v26 = *v34;
    do
    {
      v8 = 0;
      do
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = objc_alloc_init(IMPluginPayload);
        v14 = objc_msgSend_payloadData(v9, v12, v13);
        objc_msgSend_setData_(v11, v15, v14);

        objc_msgSend_setPluginBundleID_(v11, v16, @"com.apple.Handwriting.HandwritingProvider");
        v19 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v17, v18);
        v21 = objc_msgSend_dataSourceForPluginPayload_(v19, v20, v11);

        dispatch_group_enter(v4);
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = sub_1A827B7E8;
        v30[3] = &unk_1E7810208;
        v30[4] = v9;
        v31 = *(a1 + 32);
        v32 = v4;
        objc_msgSend_thumbnailURLWithSize_completion_(v21, v22, v30, *(a1 + 48), *(a1 + 56));

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v7 != v8);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v33, v37, 16);
    }

    while (v7);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A827B8F8;
  block[3] = &unk_1E7810230;
  v29 = *(a1 + 40);
  v28 = *(a1 + 32);
  dispatch_group_notify(v4, MEMORY[0x1E69E96A0], block);

  v24 = *MEMORY[0x1E69E9840];
}

void sub_1A827B7E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A827B8AC;
  v7[3] = &unk_1E78101E0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 48);
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void sub_1A827B8AC(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_setFileURL_(*(a1 + 40), a2, v3);
    objc_msgSend_addObject_(*(a1 + 48), v4, *(a1 + 40));
  }

  v5 = *(a1 + 56);

  dispatch_group_leave(v5);
}

void sub_1A827B90C(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_1A8259AB0;
  v24[4] = sub_1A825AE84;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1A827BB28;
  v21[3] = &unk_1E7810280;
  v23 = v24;
  v10 = v9;
  v22 = v10;
  objc_msgSend_loadRecentHandwritingsWithThumbnailSize_completion_(a1, v11, v21, a2, a3);
  dispatch_group_enter(v10);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A827BB70;
  v18[3] = &unk_1E7810280;
  v20 = v24;
  v12 = v10;
  v19 = v12;
  objc_msgSend_loadRecentStickers_(a1, v13, v18);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A827BBB8;
  v15[3] = &unk_1E780FE68;
  v16 = v8;
  v17 = v24;
  v14 = v8;
  dispatch_group_notify(v12, MEMORY[0x1E69E96A0], v15);

  _Block_object_dispose(v24, 8);
}

void sub_1A827BB28(uint64_t a1, const char *a2)
{
  objc_msgSend_addObjectsFromArray_(*(*(*(a1 + 40) + 8) + 40), a2, a2);
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void sub_1A827BB70(uint64_t a1, const char *a2)
{
  objc_msgSend_addObjectsFromArray_(*(*(*(a1 + 40) + 8) + 40), a2, a2);
  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

id IMAttributedStringByRemovingTrackingInformation(void *a1)
{
  v1 = a1;
  if (!objc_msgSend_length(v1, v2, v3))
  {
    goto LABEL_7;
  }

  if (qword_1EB2E9D48 != -1)
  {
    sub_1A84DF098();
  }

  if (byte_1EB2E9D40)
  {
    v6 = objc_msgSend__wp_stringByRemovingTrackingInformationFromURLs(v1, v4, v5);
    if (objc_msgSend_isEqual_(v6, v7, v1))
    {
      v8 = v1;
    }

    else
    {
      v14 = 0;
      v9 = sub_1A827BCD0(v6, &v14);
      v10 = v14;
      v8 = objc_msgSend_mutableCopy(v6, v11, v12);
      sub_1A827BEB0(v8, v9, v10);
    }
  }

  else
  {
LABEL_7:
    v8 = v1;
  }

  return v8;
}

id sub_1A827BCD0(void *a1, void *a2)
{
  v3 = a1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1A8259AC0;
  v26 = sub_1A825AE8C;
  v27 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1A8259AC0;
  v20 = sub_1A825AE8C;
  v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v6, v7);
  v10 = objc_msgSend_length(v3, v8, v9);
  v11 = *MEMORY[0x1E69A5FB0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A827C2C0;
  v15[3] = &unk_1E78102E0;
  v15[4] = &v22;
  v15[5] = &v16;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v3, v12, v11, 0, v10, 0, v15);
  if (a2)
  {
    *a2 = v23[5];
  }

  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);

  return v13;
}

void sub_1A827BE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A827BEB0(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (objc_msgSend_count(v6, v8, v9))
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = v7;
    obj = v7;
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v28, v32, 16);
    if (v11)
    {
      v14 = v11;
      v15 = 0;
      v16 = *v29;
      v17 = *MEMORY[0x1E69A5FB0];
      do
      {
        v18 = 0;
        do
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = objc_msgSend_rangeValue(*(*(&v28 + 1) + 8 * v18), v12, v13, v26);
          v21 = v20;
          objc_msgSend_removeAttribute_range_(v5, v20, v17, v19, v20);
          v23 = objc_msgSend_objectAtIndexedSubscript_(v6, v22, v15);
          objc_msgSend_addAttribute_value_range_(v5, v24, v17, v23, v19, v21);

          ++v15;
          ++v18;
        }

        while (v14 != v18);
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v28, v32, 16);
      }

      while (v14);
    }

    v7 = v26;
  }

  v25 = *MEMORY[0x1E69E9840];
}

void IMRemoveTrackingInformationFromMutableAttributedString(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3))
  {
    if (qword_1EB2E9D48 != -1)
    {
      sub_1A84DF098();
    }

    if (byte_1EB2E9D40 == 1)
    {
      objc_msgSend__wp_removeTrackingInformationFromURLs(v1, v4, v5);
      v8 = 0;
      v6 = sub_1A827BCD0(v1, &v8);
      v7 = v8;
      sub_1A827BEB0(v1, v6, v7);
    }
  }
}

uint64_t sub_1A827C0F8()
{
  result = sub_1A827C118();
  byte_1EB2E9D40 = result;
  return result;
}

uint64_t sub_1A827C118()
{
  result = sub_1A827C17C();
  if (result)
  {
    v3 = 0;
    if (!sub_1A827C17C())
    {
      sub_1A84DF0AC(&v3, v1, v2);
    }

    return objc_msgSend_instancesRespondToSelector_(MEMORY[0x1E696AEC0], v1, sel__wp_stringByRemovingTrackingInformationFromURLs);
  }

  return result;
}

uint64_t sub_1A827C17C()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!qword_1EB2E9D88)
  {
    qword_1EB2E9D88 = _sl_dlopen();
  }

  result = qword_1EB2E9D88;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A827C24C(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EB2E9D88 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A827C2C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v10 = objc_msgSend__wp_urlByRemovingTrackingInformation(v16, v7, v8);
  if (v10 && (objc_msgSend_isEqual_(v16, v9, v10) & 1) == 0)
  {
    v12 = *(*(*(a1 + 32) + 8) + 40);
    v13 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v11, a3, a4);
    objc_msgSend_addObject_(v12, v14, v13);

    objc_msgSend_addObject_(*(*(*(a1 + 40) + 8) + 40), v15, v10);
  }
}

void -[IMServiceImpl _blockUntilInitialSyncPerformed](IMServiceImpl *self, SEL a2)
{
  v37 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_initialSyncPerformed(self, a2, v2) & 1) == 0)
  {
    v29 = objc_msgSend_currentRunLoop(MEMORY[0x1E695DFD0], v4, v5);
    v28 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v8 = *MEMORY[0x1E69A6040];
    do
    {
      v9 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v6, v7, 0.005, v28);
      objc_msgSend_runMode_beforeDate_(v29, v10, v8, v9);

      if (objc_msgSend_initialSyncPerformed(self, v11, v12))
      {
        break;
      }

      objc_msgSend_timeIntervalSinceNow(v28, v6, v7);
    }

    while (v13 > -1.0);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = objc_msgSend_sharedInstance(IMAccountController, v6, v7);
    v16 = objc_msgSend_activeAccountsForService_(v14, v15, self);

    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v30, v36, 16);
    if (v20)
    {
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v30 + 1) + 8 * i);
          if ((objc_msgSend_hasSyncedWithRemoteBuddies(v23, v18, v19) & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v26 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v35 = self;
                _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "   *** Account %@  has not sync'd yet, forcing the mark", buf, 0xCu);
              }
            }

            objc_msgSend__markHasSyncedWithRemoteBuddies(v23, v24, v25);
          }
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v30, v36, 16);
      }

      while (v20);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A827E70C()
{
  v0 = objc_alloc(MEMORY[0x1E69A48A8]);
  v2 = objc_msgSend_initWithService_(v0, v1, *MEMORY[0x1E69A4818]);
  qword_1ED7676A0 = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

uint64_t sub_1A827E888()
{
  result = MEMORY[0x1AC56C550](@"IDSServerBag", @"IDSFoundation");
  qword_1EB2EA188 = result;
  return result;
}

id IMCoreMomentShareURLForMessage(void *a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v4 = objc_msgSend_fileTransferGUIDs(v1, v2, v3);
  v7 = objc_msgSend_sharedInstance(IMFileTransferCenter, v5, v6);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = v4;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v38, v42, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v39;
    v14 = *MEMORY[0x1E69A6FB8];
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v16 = objc_msgSend_transferForGUID_(v7, v11, *(*(&v38 + 1) + 8 * i), v38);
        v19 = objc_msgSend_attributionInfo(v16, v17, v18);
        v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v14);
        if (v21)
        {
          v24 = v21;
          v23 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v22, v21);

          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v38, v42, 16);
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_11:

  if (!v23)
  {
    v27 = objc_msgSend_balloonBundleID(v1, v25, v26);
    v30 = objc_msgSend_text(v1, v28, v29);
    v33 = objc_msgSend_payloadData(v1, v31, v32);
    v42[0] = 0;
    v35 = objc_msgSend_photoShareURLFromPluginBundleID_contentString_payload_shouldAccept_(MEMORY[0x1E69A8170], v34, v27, v30, v33, v42);
    v23 = v35;
    if ((v42[0] & 1) == 0)
    {

      v23 = 0;
    }
  }

  v36 = *MEMORY[0x1E69E9840];

  return v23;
}

uint64_t sub_1A8280928(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v3 | v4)
  {
    isEqualToAttributedString = 0;
    if (v3 && v4)
    {
      isEqualToAttributedString = objc_msgSend_isEqualToAttributedString_(v3, v5, v4);
    }
  }

  else
  {
    isEqualToAttributedString = 1;
  }

  return isEqualToAttributedString;
}

uint64_t sub_1A8280998(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v3 | v4)
  {
    isEqual = 0;
    if (v3 && v4)
    {
      isEqual = objc_msgSend_isEqual_(v3, v5, v4);
    }
  }

  else
  {
    isEqual = 1;
  }

  return isEqual;
}

uint64_t sub_1A8280A08(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v3 | v4)
  {
    isEqualToString = 0;
    if (v3 && v4)
    {
      isEqualToString = objc_msgSend_isEqualToString_(v3, v5, v4);
    }
  }

  else
  {
    isEqualToString = 1;
  }

  return isEqualToString;
}

uint64_t sub_1A8280A78(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v3 | v4)
  {
    isEqualToDictionary = 0;
    if (v3 && v4)
    {
      isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v3, v5, v4);
    }
  }

  else
  {
    isEqualToDictionary = 1;
  }

  return isEqualToDictionary;
}

uint64_t sub_1A8280AE8(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = v4;
  if (v3 | v4)
  {
    isEqualToArray = 0;
    if (v3 && v4)
    {
      isEqualToArray = objc_msgSend_isEqualToArray_(v3, v5, v4);
    }
  }

  else
  {
    isEqualToArray = 1;
  }

  return isEqualToArray;
}

id sub_1A8281F7C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_length(a1, a2, a3);
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1A8259AD0;
  v14 = sub_1A825AE94;
  v15 = 0;
  v5 = *MEMORY[0x1E69A5FB0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A82820A0;
  v9[3] = &unk_1E7810360;
  v9[4] = &v10;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(a1, v6, v5, 0, v4, 0, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void sub_1A8282088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82820A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a2;
  if (v8)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v8 = v9;
    *a5 = 1;
  }
}

id IMWatermarkMessageIDCache()
{
  if (qword_1ED7676D8 != -1)
  {
    sub_1A84DF154();
  }

  v1 = qword_1ED7676D0;

  return v1;
}

uint64_t sub_1A8282158()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  qword_1ED7676D0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id sub_1A8282194()
{
  if (qword_1ED7676E8 != -1)
  {
    sub_1A84DF168();
  }

  v1 = qword_1ED7676E0;

  return v1;
}

uint64_t sub_1A82821D8()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  qword_1ED7676E0 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A828225C()
{
  v0 = qword_1EB2EA198;
  qword_1EB2EA198 = &unk_1F1B6DCA0;
}

uint64_t sub_1A8282274(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ((objc_msgSend__hasJustSentAMessage(v4, v6, v7) & 1) != 0 || objc_msgSend__hasJustSentAMessage(v5, v8, v9))
  {
    v12 = objc_msgSend_watermarkDate(v4, v8, v9);
    if (!v12)
    {
      v12 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v10, v11);
    }

    v15 = objc_msgSend_watermarkDate(v5, v10, v11);
    if (!v15)
    {
      v15 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v13, v14);
    }

    v16 = objc_msgSend_compare_(v15, v13, v12);
  }

  else
  {
    v16 = objc_msgSend_compareChatByDate_(v4, v8, v5);
  }

  return v16;
}

uint64_t sub_1A8282DF8()
{
  result = MEMORY[0x1AC56C550](@"NPSManager", @"NanoPreferencesSync");
  qword_1EB2EA1A8 = result;
  return result;
}

uint64_t sub_1A8282EBC()
{
  result = IMGetDomainBoolForKey();
  byte_1EB2FEFF0 = result;
  return result;
}

void sub_1A8282F98(uint64_t a1, void *a2)
{
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Daemon launch detected while process was running", v6, 2u);
    }
  }

  objc_msgSend__reconnectIfNeeded(v2, v3, v4);
}

uint64_t sub_1A828322C(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Calling client completion handler after completing connection and setup", v4, 2u);
    }
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1A8283D8C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A8283CECLL);
  }

  objc_destroyWeak(&a13);
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(exc_buf);
}

void sub_1A8283DE0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__invalidateMultiplexedConnectionWithUniqueID_(WeakRetained, v2, *(a1 + 32));
}

void sub_1A8283E30(uint64_t a1)
{
  v2 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8283EDC;
  block[3] = &unk_1E780FDC8;
  objc_copyWeak(&v4, (a1 + 32));
  dispatch_async(v2, block);

  objc_destroyWeak(&v4);
}

void sub_1A8283EDC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__capabilitiesDidChange(WeakRetained, v1, v2);
}

uint64_t sub_1A8284B90()
{
  v0 = objc_alloc_init(IMBalloonPluginAttributionController);
  qword_1ED7678B8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

id sub_1A8284DE8()
{
  if (qword_1EB2E9FE8 != -1)
  {
    sub_1A84DF1CC();
  }

  v1 = qword_1EB2E46F0;

  return v1;
}

void sub_1A8285088(uint64_t a1, const char *a2, uint64_t a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = *(a1 + 32);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v52, v57, 16);
  if (v7)
  {
    v10 = v7;
    v11 = *v53;
    do
    {
      v12 = 0;
      do
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v52 + 1) + 8 * v12);
        v14 = objc_msgSend_bundleIDsDisplayingAttribution(*(a1 + 40), v8, v9);
        v16 = objc_msgSend_objectForKey_(v14, v15, v13);
        v19 = objc_msgSend_BOOLValue(v16, v17, v18);

        if (v19)
        {
          v20 = objc_msgSend_bundleIDsDisplayingAttribution(*(a1 + 40), v8, v9);
          objc_msgSend_removeObjectForKey_(v20, v21, v13);

          objc_msgSend_addObject_(v4, v22, v13);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v52, v57, 16);
    }

    while (v10);
  }

  if (objc_msgSend_count(v4, v23, v24))
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v25 = v4;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v48, v56, 16);
    if (v27)
    {
      v30 = v27;
      v31 = *v49;
      do
      {
        v32 = 0;
        do
        {
          if (*v49 != v31)
          {
            objc_enumerationMutation(v25);
          }

          v33 = *(*(&v48 + 1) + 8 * v32);
          v34 = objc_msgSend_expiredBundleIDToTimestampMap(*(a1 + 40), v28, v29, v48);
          v37 = objc_msgSend__currentTimestamp(*(a1 + 40), v35, v36);
          objc_msgSend_setObject_forKey_(v34, v38, v37, v33);

          ++v32;
        }

        while (v30 != v32);
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v48, v56, 16);
      }

      while (v30);
    }

    objc_msgSend__purgeLeastRecentlySeenAppBundleIDsIfNecessary(*(a1 + 40), v39, v40);
    objc_msgSend__saveToFile(*(a1 + 40), v41, v42);
    v45 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v43, v44);
    objc_msgSend___mainThreadPostNotificationName_object_(v45, v46, @"__kIMBalloonPluginAttributionChangedNotification", 0);
  }

  v47 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A8285890(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v10 = objc_msgSend_expiredBundleIDToTimestampMap(v5, v8, v9);
  v12 = objc_msgSend_objectForKey_(v10, v11, v7);

  objc_msgSend_doubleValue(v12, v13, v14);
  v16 = v15;

  v19 = objc_msgSend_expiredBundleIDToTimestampMap(*(a1 + 32), v17, v18);
  v21 = objc_msgSend_objectForKey_(v19, v20, v6);

  objc_msgSend_doubleValue(v21, v22, v23);
  v25 = v24;

  v26 = -1;
  if (v16 >= v25)
  {
    v26 = 1;
  }

  if (v16 == v25)
  {
    return 0;
  }

  else
  {
    return v26;
  }
}

id sub_1A8285BCC(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_identifier(v2, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1A8285CB8(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_stringByAppendingPathComponent_(qword_1EB2E46F0, a2, @"/");
  v3 = qword_1EB2E46F0;
  qword_1EB2E46F0 = v2;

  v5 = objc_msgSend_stringByAppendingPathComponent_(qword_1EB2E46F0, v4, @"var");
  v6 = qword_1EB2E46F0;
  qword_1EB2E46F0 = v5;

  v8 = objc_msgSend_stringByAppendingPathComponent_(qword_1EB2E46F0, v7, @"mobile");
  v9 = qword_1EB2E46F0;
  qword_1EB2E46F0 = v8;

  v11 = objc_msgSend_stringByAppendingPathComponent_(qword_1EB2E46F0, v10, @"Library");
  v12 = qword_1EB2E46F0;
  qword_1EB2E46F0 = v11;

  v14 = objc_msgSend_stringByAppendingPathComponent_(qword_1EB2E46F0, v13, @"SMS");
  v15 = qword_1EB2E46F0;
  qword_1EB2E46F0 = v14;

  v17 = objc_msgSend_stringByAppendingPathComponent_(qword_1EB2E46F0, v16, @"AppAttributionRecord.plist");
  qword_1EB2E46F0 = v17;

  return MEMORY[0x1EEE66BB8](v17);
}

uint64_t IMRichLinkUtilitiesHasKnownSchemesForRichLinkURL(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v7 = objc_msgSend_scheme(v3, v5, v6);
  if (objc_msgSend_length(v7, v8, v9))
  {
    v12 = objc_msgSend_host(v3, v10, v11);
    v15 = objc_msgSend_length(v12, v13, v14);

    if (v15)
    {
      v18 = objc_msgSend_scheme(v3, v16, v17);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F1BA16C8, v19, &v36, v41, 16);
      if (v20)
      {
        v22 = v20;
        v23 = *v37;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v37 != v23)
            {
              objc_enumerationMutation(&unk_1F1BA16C8);
            }

            if (!objc_msgSend_compare_options_(v18, v21, *(*(&v36 + 1) + 8 * i), 3))
            {
              v15 = 1;
              goto LABEL_24;
            }
          }

          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(&unk_1F1BA16C8, v21, &v36, v41, 16);
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v25 = v4;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v32, v40, 16);
      if (v15)
      {
        v28 = *v33;
        while (2)
        {
          for (j = 0; j != v15; ++j)
          {
            if (*v33 != v28)
            {
              objc_enumerationMutation(v25);
            }

            if (!objc_msgSend_compare_options_(v18, v27, *(*(&v32 + 1) + 8 * j), 3, v32))
            {
              v15 = 1;
              goto LABEL_23;
            }
          }

          v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v32, v40, 16);
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:

LABEL_24:
    }
  }

  else
  {

    v15 = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t IMRichLinkUtilitiesIsSupportedRichLinkURL(void *a1, void *a2)
{
  v3 = a1;
  if (IMRichLinkUtilitiesHasKnownSchemesForRichLinkURL(v3, a2))
  {
    v6 = 1;
  }

  else
  {
    v7 = objc_msgSend_sharedInstance(IMBalloonPluginManager, v4, v5);
    v9 = objc_msgSend_dataSourceClassForBundleID_(v7, v8, *MEMORY[0x1E69A6A18]);

    v10 = v9;
    v6 = objc_msgSend_supportsURL_(v10, v11, v3);
  }

  return v6;
}

id IMRichLinkUtilitiesDetermineRichLinksInMessage(void *a1, void *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v7 = objc_msgSend_length(v3, v5, v6);
  v10 = objc_msgSend_string(v3, v8, v9);
  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = sub_1A8286958;
  v72[3] = &unk_1E78104E8;
  v13 = v4;
  v73 = v13;
  v14 = v12;
  v74 = v14;
  objc_msgSend_enumerateAttributesInRange_options_usingBlock_(v3, v15, 0, v7, 0, v72);
  if (objc_msgSend_count(v14, v16, v17))
  {
    v61 = v7;
    v62 = v3;
    v63 = v13;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v18 = v14;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v68, v76, 16);
    if (v20)
    {
      v23 = v20;
      v24 = 0;
      v25 = *v69;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v69 != v25)
          {
            objc_enumerationMutation(v18);
          }

          v27 = objc_msgSend_rangeValue(*(*(&v68 + 1) + 8 * i), v21, v22);
          v29 = v28;
          if ((sub_1A8286A68(v10, v24, v27 - v24) & 1) == 0)
          {

            v32 = v61;
            goto LABEL_22;
          }

          v24 = (v27 + v29);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v68, v76, 16);
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v24 = 0;
    }

    v32 = v61;
    if (sub_1A8286A68(v10, v24, v61 - v24))
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v33 = v18;
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v64, v75, 16);
      v13 = v63;
      if (v35)
      {
        v38 = v35;
        v39 = *v65;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v65 != v39)
            {
              objc_enumerationMutation(v33);
            }

            v41 = objc_msgSend_rangeValue(*(*(&v64 + 1) + 8 * j), v36, v37);
            v43 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v42, v41, v42);
            objc_msgSend_addObject_(v11, v44, v43);
          }

          v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v36, &v64, v75, 16);
        }

        while (v38);
      }

      v3 = v62;
      goto LABEL_31;
    }

LABEL_22:
    v3 = v62;
    v13 = v63;
    if (objc_msgSend_count(v18, v30, v31) != 1)
    {
      goto LABEL_32;
    }

    v47 = objc_msgSend_firstObject(v18, v45, v46);
    v50 = objc_msgSend_rangeValue(v47, v48, v49);
    v52 = v51;

    v53 = v10;
    v33 = v53;
    if (!v52)
    {
      goto LABEL_31;
    }

    if (objc_msgSend_rangeOfString_options_range_(v53, v54, @"http://", 9, v50, v52) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v56 = objc_msgSend_rangeOfString_options_range_(v33, v55, @"https://", 9, v50, v52);

      v13 = v63;
      if (v56 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_32;
      }
    }

    else
    {

      v13 = v63;
    }

    if ((sub_1A8286A68(v33, 0, v50) & 1) != 0 || sub_1A8286A68(v33, (v50 + v52), v32 - (v50 + v52)))
    {
      v33 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v57, v50, v52);
      objc_msgSend_addObject_(v11, v58, v33);
LABEL_31:
    }
  }

LABEL_32:

  v59 = *MEMORY[0x1E69E9840];

  return v11;
}

void sub_1A8286958(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v9 = objc_msgSend_objectForKeyedSubscript_(v20, v7, *MEMORY[0x1E69A5FB0]);
  if (v9)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(v20, v8, *MEMORY[0x1E69A7CF8]);
    if (!v11)
    {
      v12 = objc_msgSend_objectForKeyedSubscript_(v20, v10, *MEMORY[0x1E69A70A8]);
      v15 = v12;
      if ((!v12 || objc_msgSend_BOOLValue(v12, v13, v14)) && IMRichLinkUtilitiesIsSupportedRichLinkURL(v9, *(a1 + 32)))
      {
        v17 = *(a1 + 40);
        v18 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v16, a3, a4);
        objc_msgSend_addObject_(v17, v19, v18);
      }
    }
  }
}

uint64_t sub_1A8286A68(void *a1, const char *a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = objc_msgSend_substringWithRange_(a1, a2, a2, a3);
  v6 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v4, v5);
  v9 = objc_msgSend_invertedSet(v6, v7, v8);
  objc_msgSend_rangeOfCharacterFromSet_(v3, v10, v9);
  v12 = v11 == 0;

  return v12;
}

void IMRichLinkUtilitiesEnumerateRichLinksInAttributedString(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v9 = v5;
  v10 = v9;
  if ((a2 & 1) == 0)
  {
    v10 = v9;
    if (objc_msgSend_supportsDataDetectors(MEMORY[0x1E69A8020], v7, v8))
    {
      v10 = objc_msgSend_mutableCopy(v9, v7, v8);
      v13 = objc_msgSend_string(v9, v11, v12);
      v16 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v14, v15);
      v19 = objc_msgSend_date(MEMORY[0x1E695DF00], v17, v18);
      IMDDScanAttributedStringWithContext();
    }
  }

  v20 = objc_msgSend_length(v10, v7, v8);
  v23 = objc_msgSend_mutableCopy(v10, v21, v22);
  v24 = IMRichLinkUtilitiesDetermineRichLinksInMessage(v10, 0);
  v25 = *MEMORY[0x1E69A5FB0];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1A8286D1C;
  v33[3] = &unk_1E7810510;
  v34 = v24;
  v35 = v23;
  v26 = v23;
  v27 = v24;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v10, v28, v25, 0, v20, 0, v33);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1A8286DDC;
  v31[3] = &unk_1E7810538;
  v32 = v6;
  v29 = v6;
  objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v26, v30, v25, 0, v20, 0, v31);
}

void sub_1A8286D1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if (v7)
  {
    v9 = *(a1 + 32);
    v14 = v7;
    v10 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v8, a3, a4);
    v12 = objc_msgSend_member_(v9, v11, v10);

    v7 = v14;
    if (!v12)
    {
      objc_msgSend_removeAttribute_range_(*(a1 + 40), v13, *MEMORY[0x1E69A5FB0], a3, a4);
      v7 = v14;
    }
  }
}

BOOL IMIsInternationalFilteringAccount(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = qword_1EB2E46F8;
  if (qword_1EB2E46F8 == -1)
  {
    v4 = objc_msgSend_sharedInstance(IMAccountController, a2, a3);
    qword_1EB2E46F8 = objc_msgSend_activeAccountsAreEligibleForInternationalFiltering(v4, v5, v6);

    v3 = qword_1EB2E46F8;
  }

  return v3 == 1;
}

uint64_t IMKeyTransparencyStatusFromKTUIStatus(uint64_t a1, int a2)
{
  if (_os_feature_enabled_impl())
  {
    result = 15;
    switch(a1)
    {
      case 0:
        goto LABEL_23;
      case 1:
        return 0;
      case 2:
        return 1;
      case 3:
        return 2;
      case 4:
        return 3;
      case 5:
        goto LABEL_16;
      case 6:
        return 6;
      case 7:
      case 13:
        return 5;
      case 8:
        return 7;
      case 9:
        goto LABEL_13;
      case 10:
        goto LABEL_12;
      case 11:
        goto LABEL_10;
      case 12:
        goto LABEL_6;
      case 14:
        return result;
      case 15:
        result = 16;
        break;
      case 16:
        result = 17;
        break;
      case 17:
        if (a2)
        {
          result = 18;
        }

        else
        {
          result = 19;
        }

        break;
      default:
        goto LABEL_20;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        goto LABEL_23;
      case 1:
        return 0;
      case 2:
        return 1;
      case 3:
        return 2;
      case 4:
        return 3;
      case 5:
LABEL_16:
        v5 = a2 == 0;
        v6 = 13;
        v7 = 4;
        goto LABEL_17;
      case 6:
        return 6;
      case 7:
      case 13:
        return 5;
      case 8:
        return 7;
      case 9:
LABEL_13:
        v5 = a2 == 0;
        v6 = 14;
        v7 = 8;
LABEL_17:
        if (v5)
        {
          result = v6;
        }

        else
        {
          result = v7;
        }

        break;
      case 10:
LABEL_12:
        result = 9;
        break;
      case 11:
LABEL_10:
        result = 10;
        break;
      case 12:
LABEL_6:
        result = 12;
        break;
      default:
LABEL_20:
        v8 = IMLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1A84DF1E0(a1, v8);
        }

LABEL_23:
        result = 11;
        break;
    }
  }

  return result;
}

void sub_1A8286FB8(uint64_t a1, void *a2, uint64_t a3)
{
  if (objc_msgSend_count(a2, a2, a3))
  {
    v4 = *(a1 + 32);
    v5 = v4[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8287054;
    block[3] = &unk_1E780FCB0;
    v7 = v4;
    dispatch_async(v5, block);
  }
}

void sub_1A8287054(uint64_t a1, const char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_allObjects(*(*(a1 + 32) + 48), a2, a3);
  objc_msgSend_removeAllObjects(*(*(a1 + 32) + 48), v5, v6);
  objc_msgSend_removeAllObjects(*(*(a1 + 32) + 16), v7, v8);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v4;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v17, v21, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_scheduleFetchIfNecessaryForHandle_(*(a1 + 32), v12, *(*(&v17 + 1) + 8 * v15++), v17);
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v17, v21, 16);
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A828727C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(a1 + 40), a2, a3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v9 = *(*(a1 + 32) + 16);

  return objc_msgSend_removeAllObjects(v9, v7, v8);
}

uint64_t sub_1A8287340(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v6 = *(*(a1 + 32) + 16);

  return objc_msgSend_removeAllObjects(v6, v4, v5);
}

void sub_1A8287664(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 64);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A828773C;
  v6[3] = &unk_1E7810588;
  v7 = v2;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  objc_msgSend_namesForDetail_limitTo_prependMaybe_onlySignificant_withCompletion_(v3, v5, v7, 1, v4, 0, v6);
}

void sub_1A828773C(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "displayName %@ names %@", buf, 0x16u);
    }
  }

  if (v6 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Error getting names for phone number: %@", buf, 0xCu);
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A8287934;
  v14[3] = &unk_1E7810230;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v15 = v5;
  v16 = v11;
  v12 = v5;
  dispatch_async(v10, v14);

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1A8287934(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_firstObject(*(a1 + 32), a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_1A8287C54(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = objc_msgSend_null(MEMORY[0x1E695DFB0], a2, a3);
  if (v5 == v7)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  (*(v4 + 16))(v4, v6);
}

void sub_1A8287CD4(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  if (v4)
  {
    v7 = objc_msgSend_objectForKey_(v4, a2, *(a1 + 40));
    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    if (v7)
    {
      objc_msgSend_setObject_forKey_(*(v8 + 16), v5, v7, *(a1 + 40));
    }

    else
    {
      v15 = objc_msgSend_null(MEMORY[0x1E695DFB0], v5, v6);
      objc_msgSend_setObject_forKey_(v9, v16, v15, *(a1 + 40));
    }

    v17 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8287EB8;
    block[3] = &unk_1E7810230;
    v18 = *(a1 + 64);
    v29 = v7;
    v30 = v18;
    v19 = v7;
    dispatch_async(v17, block);
  }

  else
  {
    v27 = objc_msgSend_objectForKey_(*(v3 + 32), a2, *(a1 + 40));
    v12 = objc_msgSend_copy(*(a1 + 64), v10, v11);
    if (v27)
    {
      v13 = _Block_copy(v12);
      objc_msgSend_addObject_(v27, v14, v13);
    }

    else
    {
      v20 = *(*(a1 + 32) + 32);
      v21 = MEMORY[0x1E695DF70];
      v22 = _Block_copy(v12);
      v24 = objc_msgSend_arrayWithObject_(v21, v23, v22);
      objc_msgSend_setObject_forKey_(v20, v25, v24, *(a1 + 40));

      objc_msgSend__startRequestForDisplayName_messageUID_queue_(*(a1 + 32), v26, *(a1 + 40), *(a1 + 56), *(a1 + 48));
    }
  }
}

void sub_1A8288028(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = a1[4];
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "displayName %@ names %@", &v16, 0x16u);
    }
  }

  if (v6 && IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Error getting names for phone number: %@", &v16, 0xCu);
    }
  }

  v12 = a1[5];
  v13 = objc_msgSend_firstObject(v5, v7, v8);
  objc_msgSend__startRequestForDisplayNameCallbackWithSuggestedName_displayName_queue_(v12, v14, v13, a1[4], a1[6]);

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1A82882BC(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 32), a2, *(a1 + 40));
  objc_msgSend_removeObjectForKey_(*(*(a1 + 32) + 32), v4, *(a1 + 40));
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v8 = *(a1 + 48);
  if (v8)
  {
    objc_msgSend_setObject_forKey_(*(v6 + 16), v5, v8, *(a1 + 40));
  }

  else
  {
    v9 = objc_msgSend_null(MEMORY[0x1E695DFB0], v5, 0);
    objc_msgSend_setObject_forKey_(v7, v10, v9, *(a1 + 40));
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A82883D0;
  v13[3] = &unk_1E7810140;
  v14 = v3;
  v11 = *(a1 + 56);
  v15 = *(a1 + 48);
  v12 = v3;
  dispatch_async(v11, v13);
}

void sub_1A82883D0(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v11, v15, 16);
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(a1 + 40);
        (*(*(*(&v11 + 1) + 8 * v7) + 16))(*(*(&v11 + 1) + 8 * v7));
        ++v7;
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v9, &v11, v15, 16);
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1A8288574(uint64_t a1)
{
  v19 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_immediateNameWithNeedsSuggestedNameFetch_useSuggestedName_(WeakRetained, v3, &v19, 1);

  if (v19 == 1)
  {
    v5 = *(a1 + 32);
    v6 = objc_loadWeakRetained((a1 + 40));
    v9 = objc_msgSend_displayID(v6, v7, v8);
    v10 = objc_loadWeakRetained((a1 + 40));
    v13 = objc_msgSend_ID(v10, v11, v12);
    v14 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A82886D0;
    v17[3] = &unk_1E7810650;
    objc_copyWeak(&v18, (a1 + 40));
    v17[4] = *(a1 + 32);
    objc_msgSend_fetchSuggestedRealNameForDisplayName_messageUID_queue_block_(v5, v16, v9, v13, v14, v17);

    objc_destroyWeak(&v18);
  }
}

void sub_1A82886D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      objc_msgSend_setSuggestedName_(WeakRetained, v5, v3);
      if (!*(*(a1 + 32) + 64))
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1A828886C;
        block[3] = &unk_1E7810628;
        objc_copyWeak(&v17, (a1 + 40));
        v7 = v6;
        v8 = *(a1 + 32);
        v15 = v7;
        v16 = v8;
        *(*(a1 + 32) + 64) = CFRunLoopObserverCreateWithHandler(0, 0x20uLL, 0, 0, block);
        Main = CFRunLoopGetMain();
        CFRunLoopAddObserver(Main, *(*(a1 + 32) + 64), *MEMORY[0x1E695E8E0]);

        objc_destroyWeak(&v17);
      }
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = *(v10 + 24);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1A82889AC;
      v12[3] = &unk_1E7810140;
      v12[4] = v10;
      v13 = WeakRetained;
      dispatch_async(v11, v12);
    }
  }
}

void sub_1A828886C(uint64_t a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17[0] = *MEMORY[0x1E69A6868];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_msgSend_ID(WeakRetained, v3, v4);
  v17[1] = *MEMORY[0x1E69A6858];
  v18[0] = v5;
  v18[1] = *MEMORY[0x1E69A6860];
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v18, v17, 2);

  v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v10, v11, *MEMORY[0x1E69A6870], *(a1 + 32), v7);

  v14 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v12, v13);
  objc_msgSend___mainThreadPostNotificationName_object_userInfo_(v14, v15, *MEMORY[0x1E69A6838], *(a1 + 32), v7);

  CFRelease(*(*(a1 + 40) + 64));
  *(*(a1 + 40) + 64) = 0;

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A8288A48(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_contact(v4, v6, v7);
  v11 = objc_msgSend_recordId(v8, v9, v10);
  v14 = objc_msgSend_numericValue(v11, v12, v13);
  v17 = objc_msgSend_contact(v5, v15, v16);
  v20 = objc_msgSend_recordId(v17, v18, v19);
  v23 = objc_msgSend_numericValue(v20, v21, v22);

  if (v14 >= v23)
  {
    v27 = objc_msgSend_contact(v4, v24, v25);
    v30 = objc_msgSend_recordId(v27, v28, v29);
    v33 = objc_msgSend_numericValue(v30, v31, v32);
    v36 = objc_msgSend_contact(v5, v34, v35);
    v39 = objc_msgSend_recordId(v36, v37, v38);
    v26 = v33 > objc_msgSend_numericValue(v39, v40, v41);
  }

  else
  {
    v26 = -1;
  }

  return v26;
}

uint64_t sub_1A828962C()
{
  v0 = dispatch_queue_create("FTNotificationQueue", 0);
  qword_1ED767988 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A828966C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (qword_1ED767978 != -1)
  {
    sub_1A84DF324();
  }

  if (qword_1ED767718 != -1)
  {
    sub_1A84DF338();
  }

  if (qword_1ED767710 != -1)
  {
    sub_1A84DF34C();
  }

  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, a3);
  objc_msgSend_addObserver_selector_name_object_(v4, v5, *(a1 + 32), sel__registrationStatusChanged_, qword_1ED767838, 0);

  v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7);
  objc_msgSend_addObserver_selector_name_object_(v8, v9, *(a1 + 32), sel__registrationStatusChanged_, qword_1ED767800, 0);

  v12 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v10, v11);
  objc_msgSend_addObserver_selector_name_object_(v12, v13, *(a1 + 32), sel__registrationStatusChanged_, @"NotificationActiveAccountChanged", 0);

  v16 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v14, v15);
  objc_msgSend_addObserver_selector_name_object_(v16, v17, *(a1 + 32), sel__registrationStatusChanged_, @"__kIMAccountRegistrationStatusChangedNotification", 0);

  v21 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v18, v19);
  objc_msgSend_addObserver_selector_name_object_(v21, v20, *(a1 + 32), sel__registrationStatusChanged_, @"__kIMAccountAliasesChangedNotification", 0);
}

void sub_1A828981C()
{
  v0 = MEMORY[0x1AC56C560]("FaceTimeDeviceRegistrationCapabilityChangedNotification", @"FTServices");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED767838, v1);
}

void sub_1A828986C()
{
  v0 = MEMORY[0x1AC56C560]("FTCTRegistrationStatusChangedNotification", @"FTServices");
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&qword_1ED767800, v1);
}

void sub_1A828B818(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_registration(MEMORY[0x1E69A6138], v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = IMGetEnvironmentName();
    v15 = 138413058;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 1024;
    v20 = a5;
    v21 = 2112;
    v22 = v13;
    _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEFAULT, "Successfully updated password for account (%@:%@): %{BOOL}d  (Environment: %@)", &v15, 0x26u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1A828BEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A828BED8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v15 = objc_msgSend_registration(MEMORY[0x1E69A6138], v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412802;
    v20 = v10;
    v21 = 2112;
    v22 = v11;
    v23 = 1024;
    v24 = v12 != 0;
    _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "Successfully read temporary password for account (%@:%@): %{BOOL}d", &v19, 0x1Cu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v12;

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1A828C120(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_registration(MEMORY[0x1E69A6138], v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 1024;
    v19 = a5;
    _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEFAULT, "Successfully updated temporary password for account (%@:%@): %{BOOL}d", &v14, 0x1Cu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1A828C534(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == v2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A828C4E8);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

void sub_1A828DEFC(void *exc_buf, int a2)
{
  if (a2 == v2)
  {

    objc_end_catch();
    JUMPOUT(0x1A828DEE0);
  }

  objc_end_catch();
  JUMPOUT(0x1A828DF34);
}

void sub_1A8291E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int buf, int a40, int a41, __int16 a42, int a43, __int16 a44, __int16 a45, uint64_t a46, __int16 a47, int a48, __int16 a49, __int16 a50, __int16 a51)
{
  if (a2 == 1)
  {
    v52 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v53 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v56 = objc_msgSend_name(v52, v54, v55);
        v59 = objc_msgSend_reason(v52, v57, v58);
        v62 = objc_msgSend_userInfo(v52, v60, v61);
        buf = 138413314;
        *(v51 + 4) = v52;
        a42 = 2112;
        *(v51 + 14) = v56;
        a45 = 2112;
        a46 = v59;
        a47 = 2112;
        *(v51 + 34) = v62;
        a50 = 2080;
        *(v51 + 44) = "[IMAccount setBuddyProperties:buddyPictures:]";
        _os_log_impl(&dword_1A823F000, v53, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A8291E3CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A82925EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, __int16 a11, uint64_t a12, __int16 a13, uint64_t a14, __int16 a15, uint64_t a16, __int16 a17, uint64_t a18)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1A8292488);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A8292AF8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == v2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A8292AACLL);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

void sub_1A8292D98(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == v2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A8292D4CLL);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

void sub_1A8293CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int buf, int a46, int a47, __int16 a48, int a49, __int16 a50, __int16 a51, uint64_t a52, __int16 a53, int a54, __int16 a55, __int16 a56, __int16 a57)
{
  if (a2 == 1)
  {
    v58 = objc_begin_catch(exception_object);
    if (IMOSLoggingEnabled())
    {
      v59 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v62 = objc_msgSend_name(v58, v60, v61);
        v65 = objc_msgSend_reason(v58, v63, v64);
        v68 = objc_msgSend_userInfo(v58, v66, v67);
        buf = 138413314;
        *(v57 + 4) = v58;
        a48 = 2112;
        *(v57 + 14) = v62;
        a51 = 2112;
        a52 = v65;
        a53 = 2112;
        *(v57 + 34) = v68;
        a56 = 2080;
        *(v57 + 44) = "[IMAccount groupsChanged:error:]";
        _os_log_impl(&dword_1A823F000, v59, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", &buf, 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A8293C3CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A8295DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A8295DD8(uint64_t a1, int a2, int a3, int a4, int a5, int a6, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v9 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_1A8297438(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_typeForAlias_(*(a1 + 32), v4, v3) == *(a1 + 40))
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1A8297918(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_lowercaseString(a2, a2, a3);
  v7 = objc_msgSend_sharedInstance(MEMORY[0x1E699BE70], v5, v6);
  if (objc_msgSend_supportsSMS(v7, v8, v9))
  {
  }

  else
  {
    isEqualToIgnoringCase = objc_msgSend_isEqualToIgnoringCase_(v4, v10, *MEMORY[0x1E69A5630]);

    if (isEqualToIgnoringCase)
    {
LABEL_8:
      v20 = 0;
      goto LABEL_10;
    }
  }

  if (MEMORY[0x1AC56C3C0](v4))
  {
    v14 = IMCanonicalizeFormattedString();

    v4 = v14;
  }

  if (!objc_msgSend_length(v4, v12, v13))
  {
    goto LABEL_8;
  }

  v17 = objc_msgSend_aliases(*(a1 + 32), v15, v16);
  v19 = objc_msgSend_containsObject_(v17, v18, v4);

  if (v19)
  {
    goto LABEL_8;
  }

  v20 = v4;
  v4 = v20;
LABEL_10:

  return v20;
}

id sub_1A8297A18(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_trimmedString(a2, a2, a3);
  v7 = objc_msgSend_lowercaseString(v4, v5, v6);

  if (objc_msgSend_containsObject_(*(a1 + 32), v8, v7))
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

id sub_1A8297F44(uint64_t a1, void *a2)
{
  v2 = a2;
  if (MEMORY[0x1AC56C3C0]())
  {
    v3 = IMCanonicalizeFormattedString();

    v2 = v3;
  }

  return v2;
}

id sub_1A8297FA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x1E69A63C0]);
  if (MEMORY[0x1AC56C3C0]())
  {
    v7 = IMCanonicalizeFormattedString();

    v5 = v7;
  }

  if (objc_msgSend_containsObject_(*(a1 + 32), v6, v5))
  {
    v8 = 0;
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

id sub_1A8298280(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_lowercaseString(a2, a2, a3);
  if (!objc_msgSend_length(v4, v5, v6) || IMStringIsEmail() && (v7 = *(a1 + 32), (IMAreEmailsLogicallyTheSame() & 1) != 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

id sub_1A829857C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_lowercaseString(a2, a2, a3);
  if (objc_msgSend_length(v3, v4, v5))
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1A82989B8()
{
  v0 = *MEMORY[0x1E69A64E8];
  v1 = *MEMORY[0x1E69A6508];
  v2 = *MEMORY[0x1E69A64C0];
  v3 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], *MEMORY[0x1E69A6458], *MEMORY[0x1E69A6410], @"AccountSignedOut", *MEMORY[0x1E69A64E8], *MEMORY[0x1E69A64E0], *MEMORY[0x1E69A64D8], *MEMORY[0x1E69A64D0], *MEMORY[0x1E69A6520], *MEMORY[0x1E69A63F8], *MEMORY[0x1E69A63E8], *MEMORY[0x1E69A6500], *MEMORY[0x1E69A64F8], *MEMORY[0x1E69A6440], *MEMORY[0x1E69A6458], *MEMORY[0x1E69A6460], *MEMORY[0x1E69A6508], *MEMORY[0x1E69A6530], *MEMORY[0x1E69A64C0], *MEMORY[0x1E69A6430], *MEMORY[0x1E69A64F0], *MEMORY[0x1E69A6510], *MEMORY[0x1E69A6518], *MEMORY[0x1E69A6480], *MEMORY[0x1E69A6488], *MEMORY[0x1E69A6490], *MEMORY[0x1E69A6498], 0);
  qword_1EB2EA1B8 = v3;

  return MEMORY[0x1EEE66BB8](v3);
}

void sub_1A829B950(void *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A829B6ECLL);
  }

  JUMPOUT(0x1A829B948);
}

void sub_1A829EAC8(void *exc_buf, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exc_buf);
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v7 = objc_msgSend_name(v3, v5, v6);
        v10 = objc_msgSend_reason(v3, v8, v9);
        v13 = objc_msgSend_userInfo(v3, v11, v12);
        *(v2 - 160) = 138413314;
        v14 = v2 - 160;
        *(v14 + 4) = v3;
        *(v2 - 148) = 2112;
        *(v14 + 14) = v7;
        *(v2 - 138) = 2112;
        *(v2 - 136) = v10;
        *(v2 - 128) = 2112;
        *(v14 + 34) = v13;
        *(v2 - 118) = 2080;
        *(v14 + 44) = "[_IMLegacyDaemonListener account:postedError:]";
        _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Caught exception: %@   name: %@   reason: %@   userInfo: %@ in function: %s", (v2 - 160), 0x34u);
      }
    }

    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A829E8C4);
  }

  JUMPOUT(0x1A829EAC0);
}

void sub_1A829EBEC(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == v2)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A829EBD0);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

void sub_1A82A1E68(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *exc_buf)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    IMLogBacktrace();
    IMLogSimulateCrashForException();

    objc_end_catch();
    JUMPOUT(0x1A82A1C70);
  }

  objc_end_catch();
  _Unwind_Resume(v10);
}

void sub_1A82A2B74(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82A2B08);
  }

  _Unwind_Resume(a1);
}

void sub_1A82A3974(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69A8190];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v11 = objc_msgSend_initWithDictionaryRepresentation_(v8, v9, v6);

  objc_msgSend_setObject_forKey_(*(a1 + 32), v10, v11, v7);
}

void sub_1A82A3A00(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69A8190];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v11 = objc_msgSend_initWithDictionaryRepresentation_(v8, v9, v6);

  objc_msgSend_setObject_forKey_(*(a1 + 32), v10, v11, v7);
}

void sub_1A82A3A8C(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69A8190];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v11 = objc_msgSend_initWithDictionaryRepresentation_(v8, v9, v6);

  objc_msgSend_setObject_forKey_(*(a1 + 32), v10, v11, v7);
}

id sub_1A82A43DC(void *a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = objc_msgSend_remoteMembers(a1, v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v29, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = objc_msgSend_handle(*(*(&v25 + 1) + 8 * i), v10, v11);
        v20 = objc_msgSend_value(v15, v16, v17);
        if (v20)
        {
          objc_msgSend_addObject_(v4, v18, v20);
        }

        else
        {
          v21 = objc_msgSend_value(v15, v18, v19);
          objc_msgSend_addObject_(v4, v22, v21);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v25, v29, 16);
    }

    while (v12);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1A82A4CC4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_cloudKitEventNotificationManager_syncStateDidChange_(v4, v3, *(a1 + 32), *(a1 + 40));
  }
}

void sub_1A82A4FB0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_cloudKitHooks(a2, a2, a3);
  objc_msgSend_broadcastCloudKitState(v5, v3, v4);
}

void sub_1A82A4FF4(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_userInfo(a4, a2, a3);
  v9 = objc_msgSend_syncStateWithDictionary_(v5, v7, v6);

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9);
  }
}

void sub_1A82A515C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Fetching latest ramp state", v12, 2u);
    }
  }

  v9 = objc_msgSend_cloudKitHooks(v4, v6, v7);
  objc_msgSend_fetchLatestRampState(v9, v10, v11);
}

void sub_1A82A5228(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Fetched latest ramp state", v17, 2u);
    }
  }

  v13 = objc_msgSend_userInfo(v9, v10, v11);
  v15 = objc_msgSend_objectForKey_(v13, v14, @"IMCloudKitRampStateKey");

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))(v16, v15);
  }
}

void sub_1A82A54E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_cloudKitHooks(a2, a2, a3);
  objc_msgSend_broadcastCloudKitStateAfterClearingErrors(v5, v3, v4);
}

void sub_1A82A5528(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_userInfo(a4, a2, a3);
  v9 = objc_msgSend_syncStateWithDictionary_(v5, v7, v6);

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v9);
  }
}

void sub_1A82A5734(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = objc_msgSend_userInfo(v8, v12, v13);
      *buf = 138412290;
      v32 = v14;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "setEnabledDidReturned with response: %@", buf, 0xCu);
    }
  }

  if (objc_msgSend_didSucceed(v8, v9, v10))
  {
    v17 = objc_msgSend_userInfo(v8, v15, v16);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, @"ResultSuccess");
    v22 = objc_msgSend_BOOLValue(v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1A82A5910;
  v27[3] = &unk_1E7810AA8;
  v30 = v22;
  v28 = v6;
  v29 = v8;
  v23 = v8;
  v24 = v6;
  objc_msgSend_visitEventHandlers_(v24, v25, v27);

  v26 = *MEMORY[0x1E69E9840];
}

void sub_1A82A5910(uint64_t a1, void *a2)
{
  v9 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = objc_msgSend_error(*(a1 + 40), v3, v4);
    objc_msgSend_cloudKitEventNotificationManager_didChangeEnabled_error_(v9, v8, v6, v5, v7);
  }
}

void sub_1A82A5998(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_cloudKitHooks(a2, a2, a3);
  objc_msgSend_setEnabled_(v5, v4, *(a1 + 32));
}

void sub_1A82A5B94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_cloudKitHooks(a2, a2, a3);
  objc_msgSend_setEnabled_(v5, v4, *(a1 + 32));
}

void sub_1A82A5BE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = a4;
    v8 = objc_msgSend_didSucceed(v5, v6, v7);
    v11 = objc_msgSend_error(v5, v9, v10);

    (*(v4 + 16))(v4, v8, v11);
  }
}

void sub_1A82A6068(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v8;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "tryToDisableAllDeviceReturned with response: %@", buf, 0xCu);
    }
  }

  if (objc_msgSend_didSucceed(v8, v9, v10))
  {
    v14 = objc_msgSend_userInfo(v8, v12, v13);
    v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, @"ResultSuccess");
    v19 = objc_msgSend_BOOLValue(v16, v17, v18);
  }

  else
  {
    v19 = 0;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = sub_1A82A622C;
  v24[3] = &unk_1E7810AA8;
  v27 = v19;
  v25 = v6;
  v26 = v8;
  v20 = v8;
  v21 = v6;
  objc_msgSend_visitEventHandlers_(v21, v22, v24);

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1A82A622C(uint64_t a1, void *a2)
{
  v9 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 32);
    v7 = objc_msgSend_error(*(a1 + 40), v3, v4);
    objc_msgSend_cloudKitEventNotificationManager_didDisableAllDevices_error_(v9, v8, v6, v5, v7);
  }
}

void sub_1A82A62B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_cloudKitHooks(a2, a2, a3);
  objc_msgSend_tryToDisableAllDevices(v5, v3, v4);
}

void sub_1A82A63E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v8;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Did check if additional storage is required with response: %@", buf, 0xCu);
    }
  }

  v12 = objc_msgSend_didSucceed(v8, v9, v10);
  v15 = v12;
  if (v12)
  {
    v16 = objc_msgSend_userInfo(v8, v13, v14);
    v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, @"ResultAdditionalStorageRequired");
    v21 = objc_msgSend_longLongValue(v18, v19, v20);

    v24 = objc_msgSend_userInfo(v8, v22, v23);
    v26 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"ResultiCloudAccountId");
  }

  else
  {
    v21 = 0;
    v26 = 0;
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = sub_1A82A65FC;
  v32[3] = &unk_1E7810B10;
  v37 = v15;
  v33 = v6;
  v34 = v26;
  v35 = v8;
  v36 = v21;
  v27 = v8;
  v28 = v26;
  v29 = v6;
  objc_msgSend_visitEventHandlers_(v29, v30, v32);

  v31 = *MEMORY[0x1E69E9840];
}

void sub_1A82A65FC(uint64_t a1, void *a2)
{
  v11 = a2;
  if (objc_opt_respondsToSelector())
  {
    v5 = *(a1 + 64);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 56);
    v9 = objc_msgSend_error(*(a1 + 48), v3, v4);
    objc_msgSend_cloudKitEventNotificationManager_didPerformAdditionalStorageRequiredCheck_additionalStorageRequired_forAccountId_error_(v11, v10, v6, v5, v8, v7, v9);
  }
}

void sub_1A82A6698(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_cloudKitHooks(a2, a2, a3);
  objc_msgSend_performAdditionalStorageRequiredCheck(v5, v3, v4);
}

void sub_1A82A6800(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  if (objc_msgSend_didSucceed(v5, v6, v7))
  {
    v10 = objc_msgSend_userInfo(v5, v8, v9);
    v12 = objc_msgSend_objectForKey_(v10, v11, @"IMCloudKitSyncStatisticsKey");

    if (v12)
    {
      v15 = [IMCloudKitSyncStatistics alloc];
      v17 = objc_msgSend_initWithStatisticsDictionary_(v15, v16, v12);
      v20 = objc_msgSend_logHandle(*(a1 + 32), v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_1A84DF5F4(v17, v20, v21);
      }
    }

    else
    {
      v20 = objc_msgSend_logHandle(*(a1 + 32), v13, v14);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DF68C(v20);
      }

      v17 = 0;
    }
  }

  else
  {
    v12 = objc_msgSend_logHandle(*(a1 + 32), v8, v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DF55C(v5, v12, v22);
    }

    v17 = 0;
  }

  v25 = *(a1 + 40);
  if (v25)
  {
    v26 = objc_msgSend_error(v5, v23, v24);
    (*(v25 + 16))(v25, v17, v26);
  }
}

void sub_1A82A6958(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_cloudKitHooks(a2, a2, a3);
  objc_msgSend_fetchSyncStateStatistics(v5, v3, v4);
}

void sub_1A82A6A5C(uint64_t *a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_cloudKitEventNotificationManager_didFetchSyncStatistics_error_(v4, v3, a1[4], a1[5], a1[6]);
  }
}

void sub_1A82A6BD0(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  objc_msgSend__sendSyncStatisticsToEventHandlers_error_(*(a1 + 32), v5, v7, a3);
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
  }
}

uint64_t sub_1A82A6D1C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_1A82A700C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_cloudKitEventNotificationManager_syncProgressDidUpdate_(v4, v3, *(a1 + 32), *(a1 + 40));
  }
}

void sub_1A82A7430(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_userInfo(v8, v9, v10);
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v39 = v11;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Fetched sync state debugging info: %@", buf, 0xCu);
    }
  }

  v15 = objc_msgSend_mutableCopy(v11, v12, v13);
  v18 = objc_msgSend_objectForKey_(v11, v16, @"sync-statistics-from-database");
  if (v18)
  {
    v19 = [IMCloudKitSyncStatistics alloc];
    v21 = objc_msgSend_initWithStatisticsDictionary_(v19, v20, v18);
    objc_msgSend_setObject_forKey_(v15, v22, v21, @"sync-statistics");
  }

  v23 = objc_msgSend_objectForKey_(v11, v17, @"sync-state-user-defaults");
  if (v23)
  {
    v24 = [IMCloudKitSyncState alloc];
    v27 = objc_msgSend_accountHasiMessageEnabled(v6, v25, v26);
    v29 = objc_msgSend_initWithAccountEnabled_stateDictionary_(v24, v28, v27, v23);
    objc_msgSend_setObject_forKey_(v15, v30, v29, @"sync-state");
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_1A82A7680;
  v35[3] = &unk_1E7810BD8;
  v36 = v6;
  v37 = v15;
  v31 = v15;
  v32 = v6;
  objc_msgSend_visitEventHandlers_(v32, v33, v35);

  v34 = *MEMORY[0x1E69E9840];
}

void sub_1A82A7680(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    objc_msgSend_cloudKitEventNotificationManager_didFetchSyncDebuggingInfo_(v4, v3, *(a1 + 32), *(a1 + 40));
  }
}

void sub_1A82A76E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_cloudKitHooks(a2, a2, a3);
  objc_msgSend_fetchCloudKitSyncStateDebuggingInfo_(v5, v4, *(a1 + 32));
}

uint64_t sub_1A82A7AE0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_time(v4, v6, v7);
  v11 = objc_msgSend_time(v5, v9, v10);
  v13 = objc_msgSend_compare_(v8, v12, v11);

  if (!v13)
  {
    v16 = objc_msgSend_messageID(v4, v14, v15);
    if (v16 >= objc_msgSend_messageID(v5, v17, v18))
    {
      v21 = objc_msgSend_messageID(v4, v19, v20);
      v13 = v21 > objc_msgSend_messageID(v5, v22, v23);
    }

    else
    {
      v13 = -1;
    }
  }

  return v13;
}

void sub_1A82A9228(uint64_t a1, const char *a2)
{
  if (!qword_1EB2E9FF8)
  {
    v2 = MEMORY[0x1E696AB08];
    v6 = objc_msgSend_stringByAppendingString_(*MEMORY[0x1E69A5F00], a2, *MEMORY[0x1E69A5F20]);
    v4 = objc_msgSend_characterSetWithCharactersInString_(v2, v3, v6);
    v5 = qword_1EB2E9FF8;
    qword_1EB2E9FF8 = v4;
  }
}

uint64_t sub_1A82A9C68(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_service(a2, a2, a3);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *(a1 + 32));

  return isEqualToString;
}

uint64_t sub_1A82A9D5C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_service(a2, a2, a3);
  v6 = objc_msgSend_serviceWithInternalName_(IMServiceImpl, v5, v4);

  v8 = objc_msgSend_supportsCapability_(v6, v7, *(a1 + 32));
  return v8;
}

id sub_1A82A9DF4(void *a1, const char *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1A8259AF0;
  v9 = sub_1A825AEA4;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A82A9EF8;
  v4[3] = &unk_1E7810CB8;
  v4[4] = &v5;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(a1, a2, 0, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1A82A9EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82A9EF8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if (!objc_msgSend_type(v9, v7, v8))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

id sub_1A82A9F70(void *a1, const char *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1A8259AF0;
  v9 = sub_1A825AEA4;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A82AA074;
  v4[3] = &unk_1E7810CB8;
  v4[4] = &v5;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(a1, a2, 2, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1A82AA05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82AA074(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if (!objc_msgSend_type(v9, v7, v8))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1A82AA0EC(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v15 = a3;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v22 = a1;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Logging GUIDs of chat %p due to: %@", buf, 0x16u);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = a1;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v16, v20, 16);
  if (v9)
  {
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = objc_msgSend_guid(*(*(&v16 + 1) + 8 * i), v7, v8);
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v22 = v12;
            _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v16, v20, 16);
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1A82AA4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82AA4F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_map(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_objectForKey_(v8, v4, *(a1 + 40));
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1A82AA634(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_map(*(a1 + 32), a2, a3);
  objc_msgSend_setObject_forKey_(v5, v4, *(a1 + 40), *(a1 + 48));
}

uint64_t sub_1A82AA73C(uint64_t a1, const char *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A82AA7B0;
  v4[3] = &unk_1E7810D30;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v2, a2, v4);
}

void sub_1A82AA7B0(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v10 = objc_msgSend_map(v4, v7, v8);
  objc_msgSend_setObject_forKey_(v10, v9, v5, v6);
}

void sub_1A82AA8E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_map(*(a1 + 32), a2, a3);
  objc_msgSend_removeObjectForKey_(v5, v4, *(a1 + 40));
}

void sub_1A82AA9E8(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v14, v18, 16);
  if (v4)
  {
    v7 = v4;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = objc_msgSend_map(*(a1 + 40), v5, v6, v14);
        objc_msgSend_removeObjectForKey_(v11, v12, v10);

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v5, &v14, v18, 16);
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1A82AABB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82AABD0(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_map(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_count(v6, v4, v5);
}

void sub_1A82AB16C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    if (!v2)
    {
      JUMPOUT(0x1A82AB100);
    }

    JUMPOUT(0x1A82AB0ECLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A82AB6D4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82AB644);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1A82AC1A0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_service(a2, a2, a3);
  v6 = objc_msgSend_supportsCapability_(v4, v5, *(a1 + 32));

  return v6;
}

uint64_t sub_1A82AC504(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_accountActive_(*(a1 + 32), v4, v3))
  {
    v7 = objc_msgSend_service(v3, v5, v6);
    v9 = objc_msgSend_supportsCapability_(v7, v8, *(a1 + 40));
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1A82ACD84(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82ACD20);
  }

  _Unwind_Resume(a1);
}

void sub_1A82ADF40(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, __int16 a11, uint64_t a12, __int16 a13, uint64_t a14, __int16 a15, uint64_t a16, __int16 a17, uint64_t a18)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A82ADF24);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

void sub_1A82B0EC0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82B0DC4);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1A82B1ED0(id a1, uint64_t a2, void *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1 == v5 || (objc_msgSend_isEqualToArray_(a1, v4, v5) & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v11 = objc_msgSend_count(a1, v6, v7);
    if (v11 == objc_msgSend_count(v5, v12, v13))
    {
      v14 = objc_alloc(MEMORY[0x1E695DFA8]);
      v16 = objc_msgSend_initWithArray_(v14, v15, a1);
      v17 = objc_alloc(MEMORY[0x1E695DFA8]);
      v19 = objc_msgSend_initWithArray_(v17, v18, v5);
      v22 = objc_msgSend_count(v16, v20, v21);
      if (v22 == objc_msgSend_count(v19, v23, v24))
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v25 = a1;
        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v63, v69, 16);
        if (v28)
        {
          v29 = *v64;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v64 != v29)
              {
                objc_enumerationMutation(v25);
              }

              v31 = *(*(&v63 + 1) + 8 * i);
              if (objc_msgSend_containsObject_(v19, v27, v31))
              {
                objc_msgSend_removeObject_(v19, v27, v31);
                objc_msgSend_removeObject_(v16, v32, v31);
              }
            }

            v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v27, &v63, v69, 16);
          }

          while (v28);
        }

        if (objc_msgSend_count(v16, v33, v34))
        {
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          obj = objc_msgSend_allObjects(v16, v35, v36);
          v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v59, v68, 16);
          if (v54)
          {
            v53 = *v60;
            while (2)
            {
              for (j = 0; j != v54; ++j)
              {
                if (*v60 != v53)
                {
                  objc_enumerationMutation(obj);
                }

                v39 = *(*(&v59 + 1) + 8 * j);
                v55 = 0u;
                v56 = 0u;
                v57 = 0u;
                v58 = 0u;
                v40 = v19;
                v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v55, v67, 16);
                if (!v43)
                {
LABEL_41:

LABEL_42:
                  goto LABEL_43;
                }

                v44 = *v56;
LABEL_24:
                v45 = 0;
                while (1)
                {
                  if (*v56 != v44)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v46 = *(*(&v55 + 1) + 8 * v45);
                  if (objc_msgSend__isChatSiblingOf_(v46, v42, v39))
                  {
                    break;
                  }

                  if (v43 == ++v45)
                  {
                    v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v42, &v55, v67, 16);
                    if (v43)
                    {
                      goto LABEL_24;
                    }

                    goto LABEL_41;
                  }
                }

                v47 = v46;

                if (!v47)
                {
                  goto LABEL_42;
                }

                objc_msgSend_removeObject_(v40, v48, v47);
                objc_msgSend_removeObject_(v16, v49, v39);
              }

              v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v59, v68, 16);
              if (v54)
              {
                continue;
              }

              break;
            }
          }
        }

        v8 = objc_msgSend_count(v16, v35, v36) == 0;
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v51 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v71 = a1;
            v72 = 2112;
            v73 = v5;
            _os_log_impl(&dword_1A823F000, v51, OS_LOG_TYPE_INFO, "IMHandle+Utilities: equivalentToRecipients - self or recipient array has duplicate values! self: %@; recipients: %@", buf, 0x16u);
          }
        }

LABEL_43:
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1A82B4550(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82B4518);
  }

  _Unwind_Resume(a1);
}

void sub_1A82B48B0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82B4878);
  }

  _Unwind_Resume(a1);
}

void sub_1A82B4FC4(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A82B5078;
  block[3] = &unk_1E7810E88;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = v4;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t sub_1A82B5078(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v5 = a1[4];
  v4 = a1[5];

  return objc_msgSend_updatePersonalNickname_(v4, v3, v5);
}

void sub_1A82B71EC(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69A8190];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v11 = objc_msgSend_initWithDictionaryRepresentation_(v8, v9, v6);

  objc_msgSend_setObject_forKey_(*(a1 + 32), v10, v11, v7);
}

void sub_1A82B7278(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69A8190];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v11 = objc_msgSend_initWithDictionaryRepresentation_(v8, v9, v6);

  objc_msgSend_setObject_forKey_(*(a1 + 32), v10, v11, v7);
}

void sub_1A82B7304(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E69A8190];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v11 = objc_msgSend_initWithDictionaryRepresentation_(v8, v9, v6);

  objc_msgSend_setObject_forKey_(*(a1 + 32), v10, v11, v7);
}

void sub_1A82B7390(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A82B7458;
  block[3] = &unk_1E7810D08;
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_1A82B7468(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A824DC90;
  v5[3] = &unk_1E7810140;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t sub_1A82B9EB8(uint64_t result, const char *a2, uint64_t a3)
{
  if (*(result + 32) == a3)
  {
    return objc_msgSend_addObject_(*(result + 40), a2, a2);
  }

  return result;
}

uint64_t sub_1A82B9ED4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v10 = objc_msgSend_chatIdentifier(v6, v8, v9);
  v12 = objc_msgSend_containsString_(v7, v11, v10);

  if (v12)
  {
    v15 = -1;
  }

  else
  {
    v16 = objc_msgSend_chatIdentifier(*(a1 + 32), v13, v14);
    v18 = objc_msgSend_containsString_(v5, v17, v16);

    v15 = v18;
  }

  return v15;
}

void sub_1A82BA19C(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_daemonController(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_synchronousRemoteDaemon(v6, v7, v8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A82BA270;
  v13[3] = &unk_1E7810FC8;
  v10 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v3;
  v11 = v3;
  objc_msgSend_loadChatWithGUID_reply_(v9, v12, v10, v13);
}

id sub_1A82BA7D0(uint64_t a1, char *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v7 = objc_msgSend_set(MEMORY[0x1E695DFA8], v5, v6);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = *(a1 + 32);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v32, v36, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend__cachedChatWithGUID_(*(a1 + 40), v11, *(*(&v32 + 1) + 8 * i));
        v18 = objc_msgSend_guid(v15, v16, v17);
        v20 = objc_msgSend_containsObject_(v7, v19, v18);

        if ((v20 & 1) == 0)
        {
          if (v15)
          {
            v23 = objc_msgSend_guid(v15, v21, v22);
            objc_msgSend_addObject_(v7, v24, v23);

            objc_msgSend_addObject_(v4, v25, v15);
          }

          else if (a2)
          {
            *a2 = 1;
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v32, v36, 16);
    }

    while (v12);
  }

  v28 = objc_msgSend_copy(v4, v26, v27);
  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

void sub_1A82BA9A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1A82BAB14;
  v23[3] = &unk_1E7811040;
  v24 = v6;
  v8 = v6;
  v10 = objc_msgSend___imArrayByFilteringWithBlock_(v7, v9, v23);
  v12 = objc_msgSend__chatPredicateForGUIDs_(*(a1 + 40), v11, v10);
  v15 = objc_msgSend_daemonController(*(a1 + 40), v13, v14);
  v18 = objc_msgSend_synchronousRemoteDaemon(v15, v16, v17);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1A82BAB38;
  v21[3] = &unk_1E7810FC8;
  v21[4] = *(a1 + 40);
  v22 = v5;
  v19 = v5;
  objc_msgSend_loadChatsFilteredUsingPredicate_reply_(v18, v20, v12, v21);
}

uint64_t sub_1A82BAFEC(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 65);
  v5 = *(a1 + 66);
  return MEMORY[0x1EEE66B58](*(a1 + 32), sel__cachedChatWithHandles_allowAlternativeService_groupID_displayName_joinedChatsOnly_findMatchingNamedGroups_, *(a1 + 40));
}

void sub_1A82BB008(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 64);
    v8 = *(a1 + 65);
    v9 = *(a1 + 48);
    *buf = 138413314;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    v29 = 1024;
    v30 = v7;
    v31 = 1024;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Cache miss looking up chat with groupID: %@ displayName: %@ joinedChatsOnly: %{BOOL}d allowAlternativeService: %{BOOL}d handles: %@", buf, 0x2Cu);
  }

  v11 = objc_msgSend___imArrayByApplyingBlock_(*(a1 + 48), v10, &unk_1F1B6E1A0);
  v14 = objc_msgSend_daemonController(*(a1 + 56), v12, v13);
  v17 = objc_msgSend_synchronousRemoteDaemon(v14, v15, v16);
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1A82BB1CC;
  v23[3] = &unk_1E7810FC8;
  v23[4] = *(a1 + 56);
  v24 = v3;
  v20 = v3;
  objc_msgSend_loadChatsWithHandleIDs_groupID_displayName_style_reply_(v17, v21, v11, v18, v19, 43, v23);

  v22 = *MEMORY[0x1E69E9840];
}

id sub_1A82BB314(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend__cachedChatWithIdentifier_(*(a1 + 32), a2, *(a1 + 40));
  v3 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_DEFAULT, "Returning cached chat %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_1A82BB3DC(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v19 = v5;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Cache miss looking up chat with identifier: %@ ", buf, 0xCu);
  }

  v8 = objc_msgSend_daemonController(*(a1 + 40), v6, v7);
  v11 = objc_msgSend_synchronousRemoteDaemon(v8, v9, v10);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A82BB530;
  v16[3] = &unk_1E7810FC8;
  v12 = *(a1 + 32);
  v16[4] = *(a1 + 40);
  v17 = v3;
  v13 = v3;
  objc_msgSend_loadChatsWithIdentifier_reply_(v11, v14, v12, v16);

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1A82BB674(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_daemonController(*(a1 + 32), v4, v5);
  v9 = objc_msgSend_synchronousRemoteDaemon(v6, v7, v8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A82BB748;
  v13[3] = &unk_1E7810FC8;
  v10 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v3;
  v11 = v3;
  objc_msgSend_loadChatsWithGroupID_reply_(v9, v12, v10, v13);
}

void sub_1A82BB8EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E69A6B48];
  v6 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v5, @"%K = %@", *MEMORY[0x1E69A6B48], *(a1 + 32));
  v9 = objc_msgSend_daemonController(*(a1 + 40), v7, v8);
  v12 = objc_msgSend_synchronousRemoteDaemon(v9, v10, v11);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1A82BB9F4;
  v15[3] = &unk_1E7810FC8;
  v15[4] = *(a1 + 40);
  v16 = v3;
  v13 = v3;
  objc_msgSend_loadChatsFilteredUsingPredicate_reply_(v12, v14, v6, v15);
}

void sub_1A82BBD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82BBD70(uint64_t a1, const char *a2)
{
  v8 = objc_msgSend__processLoadedChatDictionaries_(*(a1 + 32), a2, a2);
  v5 = objc_msgSend_firstObject(v8, v3, v4);
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1A82BBF18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E69A6B18];
  v5 = *MEMORY[0x1E69A6B78];
  v7 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v6, @"%K = %@ OR %K = %@", *MEMORY[0x1E69A6B18], *(a1 + 32), *MEMORY[0x1E69A6B78], *(a1 + 32));
  v10 = objc_msgSend_daemonController(*(a1 + 40), v8, v9);
  v13 = objc_msgSend_synchronousRemoteDaemon(v10, v11, v12);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A82BC030;
  v16[3] = &unk_1E7810FC8;
  v16[4] = *(a1 + 40);
  v17 = v3;
  v14 = v3;
  objc_msgSend_loadChatsFilteredUsingPredicate_reply_(v13, v15, v7, v16);
}

void sub_1A82BC498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82BC4B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v169 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v138 = a3;
  v139 = a4;
  v140 = a1;
  v146 = v7;
  if (objc_msgSend_count(v7, v8, v9))
  {
    v12 = objc_msgSend_count(v7, v10, v11);
    if (v12 == objc_msgSend_count(*(a1 + 32), v13, v14))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
      if (*(a1 + 48))
      {
        **(a1 + 48) = objc_msgSend_allValues(v7, v15, v16);
      }
    }

    else
    {
      v60 = objc_alloc(MEMORY[0x1E695DF70]);
      v63 = objc_msgSend_count(*(a1 + 32), v61, v62);
      v145 = objc_msgSend_initWithCapacity_(v60, v64, v63);
      v65 = objc_alloc(MEMORY[0x1E695DF70]);
      v68 = objc_msgSend_count(*(a1 + 32), v66, v67);
      obja = objc_msgSend_initWithCapacity_(v65, v69, v68);
      v70 = objc_alloc(MEMORY[0x1E695DF70]);
      v73 = objc_msgSend_count(*(a1 + 32), v71, v72);
      v75 = objc_msgSend_initWithCapacity_(v70, v74, v73);
      v151 = 0u;
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      v76 = *(a1 + 32);
      v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v77, &v151, v164, 16);
      if (v80)
      {
        v81 = *v152;
        do
        {
          for (i = 0; i != v80; ++i)
          {
            if (*v152 != v81)
            {
              objc_enumerationMutation(v76);
            }

            v83 = *(*(&v151 + 1) + 8 * i);
            v84 = objc_msgSend_identifier(v83, v78, v79);
            v86 = objc_msgSend_objectForKey_(v146, v85, v84);

            if (v86)
            {
              objc_msgSend_addObject_(v75, v87, v86);
              v90 = objc_msgSend_ID(v86, v88, v89);
              objc_msgSend_addObject_(v145, v91, v90);
            }

            else
            {
              v90 = objc_msgSend_IDsFromCNContact_(MEMORY[0x1E69A7FD0], v87, v83);
              v92 = _IDSCopyOrderedAliasStrings();
              v95 = objc_msgSend_firstObject(v92, v93, v94);

              if (v95)
              {
                objc_msgSend_addObject_(v145, v96, v95);
                objc_msgSend_addObject_(obja, v97, v95);
              }

              else if (IMOSLoggingEnabled())
              {
                v98 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v167 = v83;
                  _os_log_impl(&dword_1A823F000, v98, OS_LOG_TYPE_INFO, "Failed to find best address for contact %@", buf, 0xCu);
                }
              }
            }
          }

          v80 = objc_msgSend_countByEnumeratingWithState_objects_count_(v76, v78, &v151, v164, 16);
        }

        while (v80);
      }

      v101 = objc_msgSend_count(v145, v99, v100) != 0;
      v102 = IMFindExistingChatForAddresses(v145, 0, v101, 1);
      v103 = *(*(v140 + 40) + 8);
      v104 = *(v103 + 40);
      *(v103 + 40) = v102;

      if (*(v140 + 48))
      {
        if (objc_msgSend_count(obja, v105, v106))
        {
          v109 = objc_msgSend_iMessageService(IMServiceImpl, v107, v108);
          v110 = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService(v145, 1, v109);

          if ((objc_msgSend__isUsableForSending(v110, v111, v112) & 1) == 0)
          {
            v117 = objc_msgSend_smsService(IMServiceImpl, v113, v114);
            if (v117)
            {
              v118 = objc_msgSend_sharedInstance(IMAccountController, v115, v116);
              v120 = objc_msgSend_accountsForService_(v118, v119, v117);
              v123 = objc_msgSend___imFirstObject(v120, v121, v122);

              v110 = v123;
            }
          }

          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          v124 = obja;
          v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v125, &v147, v163, 16);
          if (v126)
          {
            v127 = *v148;
            do
            {
              for (j = 0; j != v126; ++j)
              {
                if (*v148 != v127)
                {
                  objc_enumerationMutation(v124);
                }

                v129 = *(*(&v147 + 1) + 8 * j);
                v130 = IMStripFormattingFromAddress();
                v132 = objc_msgSend_imHandleWithID_(v110, v131, v130);

                if (v132)
                {
                  objc_msgSend_addObject_(v75, v133, v132);
                }
              }

              v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(v124, v134, &v147, v163, 16);
            }

            while (v126);
          }
        }

        v135 = v75;
        **(v140 + 48) = v75;
        v136 = IMChatRegistryLogHandle();
        if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v167 = v75;
          _os_log_impl(&dword_1A823F000, v136, OS_LOG_TYPE_DEFAULT, "best handles: %@", buf, 0xCu);
        }
      }
    }

    goto LABEL_75;
  }

  v17 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_DEFAULT, "IMHandle bestHandlesForContacts returned nil", buf, 2u);
  }

  v141 = objc_msgSend_array(MEMORY[0x1E695DF70], v18, v19);
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  obj = *(a1 + 32);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, &v159, v168, 16);
  if (v22)
  {
    v144 = *v160;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v160 != v144)
        {
          objc_enumerationMutation(obj);
        }

        v24 = objc_msgSend_IDsFromCNContact_(MEMORY[0x1E69A7FD0], v21, *(*(&v159 + 1) + 8 * k));
        v27 = objc_msgSend_iMessageService(IMServiceImpl, v25, v26);
        v28 = IMPreferredSendingAccountForAddressesWantsGroupWithFallbackService(v24, 0, v27);

        if (objc_msgSend__isUsableForSending(v28, v29, v30))
        {
          v33 = v28;
        }

        else
        {
          v36 = objc_msgSend_smsService(IMServiceImpl, v31, v32);
          if (v36)
          {
            v37 = objc_msgSend_sharedInstance(IMAccountController, v34, v35);
            v39 = objc_msgSend_accountsForService_(v37, v38, v36);
            v33 = objc_msgSend___imFirstObject(v39, v40, v41);

            v42 = IMChatRegistryLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v167 = v33;
              _os_log_impl(&dword_1A823F000, v42, OS_LOG_TYPE_DEFAULT, "preferredAccount isn't usable for sending, falling back to smsAccount: %@", buf, 0xCu);
            }
          }

          else
          {
            v33 = v28;
          }
        }

        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        v43 = v24;
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v155, v165, 16);
        v46 = v43;
        if (!v45)
        {
          goto LABEL_31;
        }

        v46 = 0;
        v47 = *v156;
        do
        {
          for (m = 0; m != v45; ++m)
          {
            if (*v156 != v47)
            {
              objc_enumerationMutation(v43);
            }

            v49 = *(*(&v155 + 1) + 8 * m);
            v50 = IMStripFormattingFromAddress();
            v52 = objc_msgSend_imHandleWithID_(v33, v51, v50);

            if (objc_msgSend_isBetterThanIMHandle_nonPhoneNumbersPreferred_(v52, v53, v46, 0))
            {
              v54 = v52;

              v46 = v54;
            }
          }

          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v55, &v155, v165, 16);
        }

        while (v45);

        if (v46)
        {
          objc_msgSend_addObject_(v141, v56, v46);
LABEL_31:
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v159, v168, 16);
    }

    while (v22);
  }

  v57 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v167 = v141;
    _os_log_impl(&dword_1A823F000, v57, OS_LOG_TYPE_DEFAULT, "Best handles: %@", buf, 0xCu);
  }

  v58 = v141;
  if (*(v140 + 48))
  {
    v59 = v141;
    v58 = v141;
    **(v140 + 48) = v141;
  }

LABEL_75:
  v137 = *MEMORY[0x1E69E9840];
}

void sub_1A82BD0F0(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v8 = objc_msgSend_objectForKey_(*(a1 + 32), v5, a3);
  if (v8)
  {
    v9 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v6, v7);
    isMergeFilteredThreadsEnabled = objc_msgSend_isMergeFilteredThreadsEnabled(v9, v10, v11);

    if (!isMergeFilteredThreadsEnabled)
    {
      goto LABEL_6;
    }

    if (*(a1 + 48) < 1)
    {
      goto LABEL_6;
    }

    v15 = objc_msgSend_chatGUIDToInfoMap(*(a1 + 40), v13, v14);
    v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, v24);

    if (v17)
    {
      v20 = MEMORY[0x1E69A8210];
      isFiltered = objc_msgSend_isFiltered(v17, v18, v19);
      isFilterMode_subsetOf = objc_msgSend_isFilterMode_subsetOf_(v20, v22, isFiltered, *(a1 + 48));

      if (isFilterMode_subsetOf)
      {
LABEL_6:
        objc_msgSend_addObject_(v8, v13, v24);
      }
    }
  }
}

void sub_1A82BD374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82BD39C(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v36 = a2;
  v4 = a3;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = objc_msgSend_allValues(v4, v5, v6);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v37, v41, 16);
  if (v9)
  {
    v12 = v9;
    v13 = 0;
    v14 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        if (v13)
        {
          v17 = objc_msgSend_time(*(*(&v37 + 1) + 8 * i), v10, v11);
          v20 = objc_msgSend_time(v13, v18, v19);
          v22 = objc_msgSend_compare_(v17, v21, v20);

          if (v22 != 1)
          {
            continue;
          }
        }

        v23 = v16;

        v13 = v23;
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v37, v41, 16);
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  v25 = objc_msgSend__cachedChatWithGUID_(*(a1 + 32), v24, v36);
  v28 = v25;
  if (v13)
  {
    v29 = objc_msgSend_account(v25, v26, v27);
    v32 = objc_msgSend_uniqueID(v29, v30, v31);
    v33 = _IMBestAccountForIMItem(v13, v28, v32, 0, 0);

    _ConfigureContextForIMItem(v13, v33, 1);
  }

  objc_msgSend__clearHistoryAndReplaceLastMessage_(v28, v26, v13, a1);

  v34 = *MEMORY[0x1E69E9840];
}

void sub_1A82BD8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82BD8FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v8 = objc_msgSend__earliestLastMessageDateFromChatDictionaries_(v3, v5, v4);
  v7 = objc_msgSend__processLoadedChatDictionaries_(*(a1 + 32), v6, v4);

  (*(*(a1 + 40) + 16))();
}

void sub_1A82BD998(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 48) == 1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1A82BDA74;
    v5[3] = &unk_1E7810230;
    v7 = *(a1 + 32);
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void sub_1A82BDBA4(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_1A82BDCE0;
  aBlock[3] = &unk_1E7810190;
  aBlock[4] = *(a1 + 32);
  v4 = v3;
  v10 = v4;
  v11 = *(a1 + 40);
  v5 = _Block_copy(aBlock);
  v6 = v5;
  if (*(a1 + 48))
  {
    v5[2](v5);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1A82BDD60;
    v7[3] = &unk_1E780FE90;
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

void sub_1A82BDCE0(uint64_t a1, const char *a2)
{
  v5 = objc_msgSend__earliestLastMessageDateFromChatDictionaries_(*(a1 + 32), a2, *(a1 + 40));
  v4 = objc_msgSend__processLoadedChatDictionaries_(*(a1 + 32), v3, *(a1 + 40));
  (*(*(a1 + 48) + 16))();
}

uint64_t sub_1A82BDF6C(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend__lastMessageDateForQueryFromChatDictionary_(*(a1 + 32), a2, *(a1 + 40));
  v4 = v3;
  if (v3)
  {
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    if (v6)
    {
      v7 = objc_msgSend_earlierDate_(v6, v4, v4);
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    else
    {
      v10 = v4;
      v9 = *(v5 + 40);
      *(v5 + 40) = v10;
    }
  }

  return MEMORY[0x1EEE66BB8](v3);
}

void sub_1A82BE254(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_guid(a2, a2, a3);
  objc_msgSend_addObject_(v3, v4, v5);
}

void sub_1A82BE2AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A82BE344;
  v7[3] = &unk_1E7811238;
  v8 = v3;
  v5 = v3;
  objc_msgSend_enumerateObjectsUsingBlock_(v4, v6, v7);
}

void sub_1A82BE344(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v9 = objc_msgSend_guid(v3, v4, v5);
  v7 = objc_msgSend_objectForKeyedSubscript_(v2, v6, v9);
  objc_msgSend_setEarliestCachedMessageDate_(v3, v8, v7);
}

id sub_1A82BECB4(uint64_t a1, _BYTE *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = (*(*(a1 + 32) + 16))();
  v5 = v3;
  if (!a2 || v3)
  {
    if (v3)
    {
      v9[0] = v3;
      v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v9, 1);
      goto LABEL_7;
    }
  }

  else
  {
    *a2 = 1;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_7:

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_1A82BF224(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1A82BF1A4);
  }

  _Block_object_dispose((v2 - 144), 8);
  _Unwind_Resume(exc_buf);
}

void sub_1A82BF298(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_DEFAULT, "Processing chat cache miss.", v7, 2u);
  }

  objc_msgSend_setProcessingChatCacheMiss_(*(a1 + 32), v5, 1);
  v6 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

void sub_1A82BF338(uint64_t a1, int a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = (*(*(a1 + 48) + 16))();
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      v14 = *(*(*(a1 + 56) + 8) + 40);
      v22 = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_DEFAULT, "Chat cache miss complete with key: %@ results %@", &v22, 0x16u);
    }

    v15 = *(a1 + 40);
    v17 = objc_msgSend_objectForKeyedSubscript_(v8, v16, @"chats");
    objc_msgSend__validateChatQueryResults_matchCurrentCacheResults_(v15, v18, v17, *(*(*(a1 + 56) + 8) + 40));
  }

  else
  {
    v17 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DF8B0(v7, v17);
    }
  }

  v19 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_DEFAULT, "Ended processing chat cache miss.", &v22, 2u);
  }

  objc_msgSend_setProcessingChatCacheMiss_(*(a1 + 40), v20, 0);
  v21 = *MEMORY[0x1E69E9840];
}

void sub_1A82BFCE0()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = qword_1EB2EA1D0;
  qword_1EB2EA1D0 = v0;

  v4 = objc_msgSend_iMessageService(IMServiceImpl, v2, v3);

  if (v4)
  {
    v7 = qword_1EB2EA1D0;
    v8 = objc_msgSend_iMessageService(IMServiceImpl, v5, v6);
    objc_msgSend_addObject_(v7, v9, v8);
  }

  v10 = objc_msgSend_smsService(IMServiceImpl, v5, v6);

  if (v10)
  {
    v13 = qword_1EB2EA1D0;
    v15 = objc_msgSend_smsService(IMServiceImpl, v11, v12);
    objc_msgSend_addObject_(v13, v14, v15);
  }
}

void sub_1A82C0388(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 48))
  {
    v6 = objc_msgSend__processLoadedChatDictionaries_(*(a1 + 32), v4, v3);
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v6);
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A82C0480;
    block[3] = &unk_1E7810190;
    block[4] = *(a1 + 32);
    v9 = v3;
    v10 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t sub_1A82C0480(uint64_t a1, const char *a2)
{
  objc_msgSend__processLoadedChatDictionaries_(*(a1 + 32), a2, *(a1 + 40));
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 48);
  if (v3)
  {
    v3 = (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8](v3);
}

void sub_1A82C0658(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 48))
  {
    v6 = objc_msgSend__processLoadedChatDictionaries_(*(a1 + 32), v4, v3);
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, v6);
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A82C0750;
    block[3] = &unk_1E7810190;
    block[4] = *(a1 + 32);
    v9 = v3;
    v10 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t sub_1A82C0750(uint64_t a1, const char *a2)
{
  objc_msgSend__processLoadedChatDictionaries_(*(a1 + 32), a2, *(a1 + 40));
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 48);
  if (v3)
  {
    v3 = (*(v3 + 16))();
  }

  return MEMORY[0x1EEE66BB8](v3);
}

void sub_1A82C0940(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = objc_msgSend_daemonController(v4, v6, v7);
  v11 = v8;
  if (v3)
  {
    objc_msgSend_synchronousReplyingRemoteDaemon(v8, v9, v10);
  }

  else
  {
    objc_msgSend_replyingRemoteDaemon(v8, v9, v10);
  }
  v13 = ;

  objc_msgSend_moveMessagesWithGUIDsToRecentlyDeleted_deleteDate_queryID_(v13, v12, *(a1 + 40), *(a1 + 48), v5);
}

void sub_1A82C09D8(uint64_t a1, char a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ((a2 & 1) == 0 && IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = objc_msgSend_count(*(a1 + 32), v10, v11);
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v17 = 134218754;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v7;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Recently Deleted | QueryController: query to move %lu message GUIDs [%@] to recently deleted at time:%@ gave error: %@", &v17, 0x2Au);
    }
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))();
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1A82C0CC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = objc_msgSend_daemonController(v4, v6, v7);
  v11 = v8;
  if (v3)
  {
    objc_msgSend_synchronousReplyingRemoteDaemon(v8, v9, v10);
  }

  else
  {
    objc_msgSend_replyingRemoteDaemon(v8, v9, v10);
  }
  v13 = ;

  objc_msgSend_moveMessagesInChatsWithGUIDsToRecentlyDeleted_deleteDate_queryID_(v13, v12, *(a1 + 40), *(a1 + 48), v5);
}

void sub_1A82C0D5C(uint64_t a1, int a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A82C0F04;
    v19[3] = &unk_1E7811238;
    v9 = *(a1 + 32);
    v20 = *(a1 + 40);
    objc_msgSend_enumerateObjectsUsingBlock_(v9, v10, v19);
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = objc_msgSend_count(*(a1 + 32), v12, v13);
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      *buf = 134218754;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Recently Deleted | QueryController: query to move messages from %lu chats GUIDs [%@] to recently deleted at time:%@ gave error: %@", buf, 0x2Au);
    }
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))();
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1A82C0F04(uint64_t a1, void *a2)
{
  v10 = a2;
  objc_msgSend_setRecoverableMessagesCount_(v10, v3, 1);
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_setEarliestRecoverableMessageDeletionDate_(v10, v4, v5);
    objc_msgSend_setLatestRecoverableMessageDeletionDate_(v10, v6, *(a1 + 32));
  }

  v7 = objc_msgSend_numberOfMessagesToKeepLoaded(v10, v4, v5);
  v9 = objc_msgSend_loadMessagesBeforeDate_limit_loadImmediately_(v10, v8, 0, v7, 0);
}

void sub_1A82C117C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v4 = objc_msgSend_allGUIDsForChat_(*(a1 + 40), a2, a2);
  objc_msgSend_addObjectsFromArray_(v2, v3, v4);
}

void sub_1A82C11D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = objc_msgSend_daemonController(v4, v6, v7);
  v11 = v8;
  if (v3)
  {
    objc_msgSend_synchronousReplyingRemoteDaemon(v8, v9, v10);
  }

  else
  {
    objc_msgSend_replyingRemoteDaemon(v8, v9, v10);
  }
  v13 = ;

  objc_msgSend_recoverMessagesWithChatGUIDs_queryID_(v13, v12, *(a1 + 40), v5);
}

void sub_1A82C126C(uint64_t a1, int a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v9 = a4;
  if (a2)
  {
    objc_msgSend__completedRecoveringChatsFromRecentlyDeleted_(*(a1 + 32), v8, *(a1 + 40));
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | QueryController: query to recover messages for chatGUIDs: [%@] with error: %@", &v14, 0x16u);
    }
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1A82C1544(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = objc_msgSend_daemonController(v3, v5, v6);
  v10 = v7;
  if (v2)
  {
    objc_msgSend_synchronousReplyingRemoteDaemon(v7, v8, v9);
  }

  else
  {
    objc_msgSend_replyingRemoteDaemon(v7, v8, v9);
  }
  v12 = ;

  objc_msgSend_loadRecoverableMessagesMetadataWithQueryID_(v12, v11, v4);
}

void sub_1A82C15D4(uint64_t a1, int a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v10 = v8;
  if (a2)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(v8, v9, @"recoverableMessagesMetadata");
    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A82C17A8;
    v16[3] = &unk_1E7811410;
    v17 = *(a1 + 48);
    v16[4] = *(a1 + 32);
    v16[5] = &buf;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v11, v12, v16);
    _Block_object_dispose(&buf, 8);
  }

  else if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Recently Deleted | QueryController: query to retrieve recoverable message count: %@", &buf, 0xCu);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1A82C17A8(uint64_t a1, void *a2, void *a3)
{
  v40 = a2;
  v5 = *MEMORY[0x1E69A7898];
  v6 = a3;
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, v5);
  v11 = objc_msgSend_unsignedLongValue(v8, v9, v10);
  v13 = objc_msgSend_objectForKeyedSubscript_(v6, v12, *MEMORY[0x1E69A78A0]);
  v16 = objc_msgSend_unsignedLongValue(v13, v14, v15);

  v18 = objc_msgSend_objectForKeyedSubscript_(v6, v17, *MEMORY[0x1E69A7888]);
  v21 = objc_msgSend_unsignedLongLongValue(v18, v19, v20);
  v24 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v22, v23, v21);
  v26 = objc_msgSend_objectForKeyedSubscript_(v6, v25, *MEMORY[0x1E69A7890]);

  v29 = objc_msgSend_unsignedLongLongValue(v26, v27, v28);
  v33 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v30, v31, v29);
  if ((*(a1 + 48) & 1) != 0 || *(*(*(a1 + 40) + 8) + 24) != 1)
  {
    v34 = objc_msgSend_existingChatWithGUID_(*(a1 + 32), v32, v40);
  }

  else
  {
    v34 = objc_msgSend__cachedChatWithGUID_(*(a1 + 32), v32, v40);
  }

  v36 = v34;
  objc_msgSend_setRecoverableMessagesCount_(v34, v35, v11);
  objc_msgSend_setUnreadRecoverableMessagesCount_(v36, v37, v16);
  objc_msgSend_setEarliestRecoverableMessageDeletionDate_(v36, v38, v24);
  objc_msgSend_setLatestRecoverableMessageDeletionDate_(v36, v39, v33);
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

void sub_1A82C1B4C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v4 = objc_msgSend_allGUIDsForChat_(*(a1 + 40), a2, a2);
  objc_msgSend_addObjectsFromArray_(v2, v3, v4);
}

void sub_1A82C1BA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = a2;
  v8 = objc_msgSend_daemonController(v4, v6, v7);
  v11 = v8;
  if (v3)
  {
    objc_msgSend_synchronousReplyingRemoteDaemon(v8, v9, v10);
  }

  else
  {
    objc_msgSend_replyingRemoteDaemon(v8, v9, v10);
  }
  v13 = ;

  objc_msgSend_permanentlyDeleteRecoverableMessagesInChatsWithGUIDs_queryID_(v13, v12, *(a1 + 40), v5);
}

void sub_1A82C1C3C(uint64_t a1, int a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v9 = a4;
  if (a2)
  {
    objc_msgSend_enumerateObjectsUsingBlock_(*(a1 + 32), v8, &unk_1F1B6E220);
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v13 = objc_msgSend_count(*(a1 + 32), v11, v12);
      v14 = *(a1 + 32);
      v17 = 134218498;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | QueryController: query to permanently delete recoverable messages from %lu chats GUIDs [%@] gave error: %@", &v17, 0x20u);
    }
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))();
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1A82C1D80(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_msgSend_setRecoverableMessagesCount_(v5, v2, 0);
  objc_msgSend_setEarliestRecoverableMessageDeletionDate_(v5, v3, 0);
  objc_msgSend_setLatestRecoverableMessageDeletionDate_(v5, v4, 0);
}

void sub_1A82C1EAC(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = objc_msgSend_allGUIDsForChat_(*(a1 + 32), v4, v3);
  v8 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v6, v7);
  isMergeFilteredThreadsEnabled = objc_msgSend_isMergeFilteredThreadsEnabled(v8, v9, v10);

  if (isMergeFilteredThreadsEnabled && objc_msgSend_canBeMessageLevelFiltered(v3, v12, v13))
  {
    v31 = v5;
    v32 = v3;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = v5;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v33, v37, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v34;
      do
      {
        v21 = 0;
        do
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = *(*(&v33 + 1) + 8 * v21);
          v23 = objc_msgSend_chatGUIDToInfoMap(*(a1 + 32), v17, v18, v31, v32, v33);
          v25 = objc_msgSend_objectForKey_(v23, v24, v22);
          isFiltered = objc_msgSend_isFiltered(v25, v26, v27);

          if (objc_msgSend_isFilterMode_subsetOf_(MEMORY[0x1E69A8210], v29, isFiltered, *(a1 + 48)))
          {
            objc_msgSend_addObject_(*(a1 + 40), v17, v22);
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v33, v37, 16);
      }

      while (v19);
    }

    v5 = v31;
    v3 = v32;
  }

  else
  {
    objc_msgSend_addObjectsFromArray_(*(a1 + 40), v12, v5);
  }

  v30 = *MEMORY[0x1E69E9840];
}

BOOL sub_1A82C2288(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5, uint64_t a6, void *a7, void *a8)
{
  v13 = a2;
  v16 = objc_msgSend_sharedInstance(IMFileTransferCenter, v14, v15);
  v18 = objc_msgSend_transferForGUID_(v16, v17, v13);

  if (v18)
  {
    *a3 = objc_msgSend_localURL(v18, v19, v20);
    *a4 = objc_msgSend_type(v18, v21, v22);
    *a5 = objc_msgSend_isSticker(v18, v23, v24);
    if (a7)
    {
      *a7 = objc_msgSend_adaptiveImageGlyphContentDescription(v18, v25, v26);
    }

    if (a8)
    {
      v27 = objc_msgSend_attributionInfo(v18, v25, v26);
      *a8 = objc_msgSend_objectForKeyedSubscript_(v27, v28, *MEMORY[0x1E69A6F98]);
    }
  }

  return v18 != 0;
}

BOOL sub_1A82C2438(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5, uint64_t a6, void *a7, void *a8)
{
  v13 = a2;
  v16 = objc_msgSend_sharedInstance(IMFileTransferCenter, v14, v15);
  v18 = objc_msgSend_transferForGUID_(v16, v17, v13);

  if (v18)
  {
    if (a3)
    {
      *a3 = objc_msgSend_localURL(v18, v19, v20);
    }

    if (a4)
    {
      *a4 = objc_msgSend_type(v18, v19, v20);
    }

    if (a5)
    {
      *a5 = objc_msgSend_isSticker(v18, v19, v20);
    }

    if (a7)
    {
      *a7 = objc_msgSend_adaptiveImageGlyphContentDescription(v18, v19, v20);
    }

    if (a8)
    {
      v21 = objc_msgSend_attributionInfo(v18, v19, v20);
      *a8 = objc_msgSend_objectForKeyedSubscript_(v21, v22, *MEMORY[0x1E69A6F98]);
    }
  }

  return v18 != 0;
}

id sub_1A82C2558(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a6;
  v12 = objc_msgSend_associatedMessageType(a1, v8, v9) & 0xFFFFFFFFFFFFFFF8;
  if (v12 == 3000 || v12 == 2000)
  {
    v13 = MEMORY[0x1E69A8138];
    v14 = objc_msgSend_sender(a1, v10, v11);
    v16 = objc_msgSend_displayNameForAddress_(v13, v15, v14);
  }

  else
  {
    v16 = 0;
  }

  v20 = v7;
  v17 = v7;
  v18 = IMSharedMessageSummaryCreate();

  return v18;
}

uint64_t sub_1A82C2680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a7)
  {
    *a7 = 0;
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_1A82C26A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a7;
  v7 = v10;
  v8 = IMSharedMessageSummaryCreate();

  return v8;
}

uint64_t sub_1A82C276C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a7)
  {
    *a7 = 0;
  }

  return (*(*(a1 + 32) + 16))();
}

id sub_1A82C2790(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = objc_msgSend_iMessageService(IMServiceImpl, v4, v5);
  v7 = IMPreferredSendingAccountForAddressWithFallbackService(v3, v6);

  if ((objc_msgSend__isUsableForSending(v7, v8, v9) & 1) == 0)
  {
    v14 = objc_msgSend_smsService(IMServiceImpl, v10, v11);
    if (v14)
    {
      v15 = objc_msgSend_sharedInstance(IMAccountController, v12, v13);
      v17 = objc_msgSend_accountsForService_(v15, v16, v14);
      v20 = objc_msgSend___imFirstObject(v17, v18, v19);

      v7 = v20;
    }
  }

  return v7;
}

id sub_1A82C2870(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5 && (objc_msgSend_bestAccountForAddress_(a1, v4, v5), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    v8 = IMStripFormattingFromAddress();
    v10 = objc_msgSend_imHandleWithID_(v7, v9, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

BOOL sub_1A82C2908(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_handleForAddress_(a1, a2, a3);
  v7 = v4;
  v8 = v4 && (objc_msgSend_isLoginIMHandle(v4, v5, v6) & 1) != 0 || a3 == 0;

  return v8;
}

id sub_1A82C295C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6 = objc_msgSend_handleForAddress_(a1, v5, v4);
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend__displayNameWithAbbreviation(v6, v7, v8);
    v11 = v10;
    if (v10)
    {
      v12 = v10;

      v4 = v12;
    }
  }

  return v4;
}

uint64_t sub_1A82C2A28()
{
  v0 = objc_alloc_init(IMSyncedSettingsManager);
  qword_1EB2E9FA8 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A82C2B64()
{
  v0 = IMLogHandleForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84DF950(v0);
  }
}

void sub_1A82C2C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1A82C323C()
{
  if (qword_1EB2EA110 != -1)
  {
    sub_1A84DF994();
  }

  v1 = qword_1EB2EA118;

  return v1;
}

uint64_t sub_1A82C3280()
{
  v0 = os_log_create("com.apple.Messages", "Chat");
  qword_1EB2EA118 = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1A82C7360(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  v6 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, a3);
  v9 = objc_msgSend_length(v6, v7, v8);

  if (v9)
  {
    v11 = objc_msgSend_transferForGUID_(*(a1 + 40), v10, v20);
    v12 = MEMORY[0x1E695DFF8];
    v13 = *(a1 + 40);
    v15 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v14, a3);
    v17 = objc_msgSend_fileURLWithPath_(v12, v16, v15);
    objc_msgSend_registerGUID_forNewOutgoingTransferWithLocalURL_(v13, v18, v20, v17);

    objc_msgSend__setTransferState_(v11, v19, 5);
  }
}

void sub_1A82C994C(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A82C99D8;
  v5[3] = &unk_1E78116A8;
  v6 = *(a1 + 32);
  objc_msgSend_enumerateObjectsUsingBlock_(a3, v4, v5);
}

void sub_1A82C99FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A82C9AB4;
  v8[3] = &unk_1E78116F8;
  v9 = v5;
  v10 = *(a1 + 32);
  v6 = v5;
  objc_msgSend_enumerateObjectsUsingBlock_(a3, v7, v8);
}

void sub_1A82CACF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v8 = a3;
  if (v5)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v9 = qword_1EB2EA1E8;
    v35 = qword_1EB2EA1E8;
    if (!qword_1EB2EA1E8)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = sub_1A82CB1F4;
      v30 = &unk_1E7811770;
      v31 = &v32;
      sub_1A82CB1F4(&v27, v6, v7);
      v9 = v33[3];
    }

    v10 = v9;
    _Block_object_dispose(&v32, 8);
    v11 = [v9 alloc];
    v15 = objc_msgSend_initWithPhotoKitMomentShare_(v11, v12, v5);
    v32 = 0;
    v33 = &v32;
    v34 = 0x2050000000;
    v16 = qword_1EB2EA1F8;
    v35 = qword_1EB2EA1F8;
    if (!qword_1EB2EA1F8)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = sub_1A82CB3B4;
      v30 = &unk_1E7811770;
      v31 = &v32;
      sub_1A82CB3B4(&v27, v13, v14);
      v16 = v33[3];
    }

    v17 = v16;
    _Block_object_dispose(&v32, 8);
    v18 = [v16 alloc];
    v20 = objc_msgSend_initWithMomentShareStatus_presentationStyle_(v18, v19, v15, 3);
    objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 8), v21, v20, *(a1 + 40));
    objc_msgSend_registerChangeObserver_context_(v20, v22, *(a1 + 32), qword_1EB2E4C78);
    v25 = objc_msgSend_delegate(*(a1 + 32), v23, v24);
    objc_msgSend_momentSharePresentationCacheDidChange_(v25, v26, *(a1 + 32));
  }
}

void sub_1A82CAEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82CB0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A82CB0C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_containsObject_(*(a1 + 32), v4, v3))
  {
    v6 = *(*(a1 + 40) + 16);
    v10 = 0;
    v7 = objc_msgSend_momentShareForURLString_error_(v6, v5, v3, &v10);
    v9 = v10;
    if (!v7)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 40) + 8), v8, 0, v3);
    }
  }
}

Class sub_1A82CB1F4(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1A82CB24C(a1, a2, a3);
  result = objc_getClass("PXPhotoKitMomentShareStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A84DF9A8(result, v5, v6);
  }

  qword_1EB2EA1E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A82CB24C(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!qword_1EB2EA1F0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = sub_1A82CB340;
    v4[4] = &unk_1E78102B8;
    v4[5] = v4;
    v5 = xmmword_1E7811790;
    v6 = 0;
    qword_1EB2EA1F0 = _sl_dlopen();
  }

  if (!qword_1EB2EA1F0)
  {
    sub_1A84DFA24(v4, a2, a3);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1A82CB340(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1EB2EA1F0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1A82CB3B4(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1A82CB24C(a1, a2, a3);
  result = objc_getClass("PXMomentShareStatusPresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A84DFAA4(result, v5, v6);
  }

  qword_1EB2EA1F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A82CBB1C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A82CBA3CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A82CD02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1A82CD044(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v15 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v15;
    v9 = *(a1 + 32);
    v12 = objc_msgSend_guid(v8, v10, v11);
    LODWORD(v9) = objc_msgSend_isEqualToString_(v9, v13, v12);

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass);
}

uint64_t IMTranscriptChatItemEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    isEqualToString = 1;
  }

  else
  {
    Class = object_getClass(v3);
    if (Class == object_getClass(v4))
    {
      isEqualToString = objc_msgSend_isEqualToString_(v3[5], v6, v4[5]);
    }

    else
    {
      isEqualToString = 0;
    }
  }

  return isEqualToString;
}

void sub_1A82D22D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1A82D22FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a3 == *(a1 + 80) && a4 == *(a1 + 88);
  v10 = objc_msgSend_integerValue(a2, a2, a3);
  v11 = *(a1 + 32);
  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = objc_msgSend_attributedSubstringFromRange_(v11, v9, a3, a4);
  }

  v27 = v12;
  v13 = [IMDetonatedMessagePartChatItem alloc];
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  HIBYTE(v26) = objc_msgSend_showTranslationAlternateText(*(a1 + 56), v16, v17);
  LOBYTE(v26) = 0;
  isShowingEditHistory_showTranslationAlternateText = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_isShowingEditHistory_showTranslationAlternateText_(v13, v18, v14, v27, 0, v10, a3, a4, v15, v26);
  v21 = isShowingEditHistory_showTranslationAlternateText;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), isShowingEditHistory_showTranslationAlternateText);
  }

  else if (isShowingEditHistory_showTranslationAlternateText)
  {
    v22 = *(*(*(a1 + 72) + 8) + 40);
    if (!v22)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = *(*(a1 + 72) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      v22 = *(*(*(a1 + 72) + 8) + 40);
    }

    objc_msgSend_addObject_(v22, v20, v21);
  }
}

void sub_1A82D3868()
{
  _Block_object_dispose((v0 - 144), 8);
  _Block_object_dispose(&v1, 8);
  _Block_object_dispose(&v2, 8);
  JUMPOUT(0x1A82D394CLL);
}

void sub_1A82D3954(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_rangeValue(a2, a2, a3);
  v6 = v5;
  if (&v5[v4] <= objc_msgSend_length(*(a1 + 32), v5, v7))
  {
    v12 = objc_msgSend_substringWithRange_(*(a1 + 32), v8, v4, v6);
    v10 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v9, v12);
    if (objc_msgSend__isAllowlistedURL_(*(a1 + 48), v11, v10))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

void sub_1A82D3A24(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = a3;
  v334 = *MEMORY[0x1E69E9840];
  v288 = a2;
  v7 = *(a1 + 96) == a3 && *(a1 + 104) == a4;
  v8 = v7;
  v281 = v8;
  v9 = *(a1 + 32);
  v286 = a4;
  if (v7)
  {
    v284 = v9;
  }

  else
  {
    v284 = sub_1A82D4C80(v9, v5, a4);
    v5 = a3;
  }

  v328 = 0;
  v329 = 0;
  v290 = objc_msgSend_attribute_atIndex_effectiveRange_(*(a1 + 32), v10, *MEMORY[0x1E69A5F68], v5, &v328);
  if (!v290)
  {
    v289 = 0;
    v290 = 0;
    goto LABEL_26;
  }

  v13 = a4 > v329;
  v14 = objc_msgSend_sharedInstance(IMFileTransferCenter, v11, v12);
  v289 = objc_msgSend_transferForGUID_(v14, v15, v290);

  if (v13)
  {
    if (!v289)
    {
      v19 = IMLogHandleForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DFCC8();
      }

      v18 = v290;
      v289 = 0;
      v290 = 0;
      goto LABEL_25;
    }

    if (!objc_msgSend_isAdaptiveImageGlyph(v289, v16, v17))
    {
      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DFC8C();
      }

      goto LABEL_25;
    }
  }

  else
  {
    if (!v289)
    {
      v18 = IMLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DFC50();
      }

      goto LABEL_24;
    }

    if (!objc_msgSend_isAdaptiveImageGlyph(v289, v16, v17))
    {
      goto LABEL_26;
    }
  }

  v290 = 0;
  v18 = v289;
LABEL_24:
  v289 = 0;
LABEL_25:

LABEL_26:
  v285 = objc_msgSend_integerValue(v288, v11, v12);
  v22 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v20, v21);
  isAutomaticIncomingTranslationEnabled = objc_msgSend_isAutomaticIncomingTranslationEnabled(v22, v23, v24);

  if (isAutomaticIncomingTranslationEnabled)
  {
    v28 = objc_msgSend_translationsForMessagePart_(*(a1 + 40), v26, v285);
    if (objc_msgSend_count(v28, v29, v30))
    {
      v33 = objc_msgSend_firstObject(v28, v31, v32);
      v34 = objc_alloc(MEMORY[0x1E69A8308]);
      v36 = objc_msgSend_initWithDictionaryRepresentation_(v34, v35, v33);
      v39 = objc_msgSend_translatedText(v36, v37, v38);
      v42 = objc_msgSend_string(v39, v40, v41);
      v45 = objc_msgSend_length(v42, v43, v44) == 0;

      if (v45)
      {
        v282 = 0;
        v283 = 0;
      }

      else
      {
        v283 = v39;
        v46 = objc_alloc(MEMORY[0x1E695DF58]);
        v49 = objc_msgSend_sourceLanguage(v36, v47, v48);
        v282 = objc_msgSend_initWithLocaleIdentifier_(v46, v50, v49);
      }
    }

    else
    {
      v282 = 0;
      v283 = 0;
    }
  }

  else
  {
    v282 = 0;
    v283 = 0;
  }

  v51 = objc_msgSend_balloonBundleID(*(a1 + 40), v26, v27);
  v52 = *MEMORY[0x1E69A6A18];
  isEqualToString = objc_msgSend_isEqualToString_(v51, v53, *MEMORY[0x1E69A6A18]);

  v57 = objc_msgSend_balloonBundleID(*(a1 + 40), v55, v56);
  v58 = *MEMORY[0x1E69A6A38];
  v60 = objc_msgSend_containsString_(v57, v59, *MEMORY[0x1E69A6A38]);

  v62 = objc_msgSend_containsIndex_(*(a1 + 48), v61, v285);
  v65 = objc_msgSend_string(*(a1 + 32), v63, v64);
  v67 = objc_msgSend_substringWithRange_(v65, v66, a3, v286);
  v69 = objc_msgSend_isEqualToString_(v67, v68, *MEMORY[0x1E69A6CF0]);

  if (objc_msgSend_scheduleType(*(a1 + 40), v70, v71) == 2)
  {
    v74 = 0;
  }

  else
  {
    v74 = v62;
  }

  if (v74 == 1)
  {
    v75 = IMLogHandleForCategory();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DFD04();
    }

    goto LABEL_41;
  }

  if (v69)
  {
    v77 = objc_msgSend_attributesAtIndex_effectiveRange_(*(a1 + 32), v72, a3, 0);
    isShowingEditHistory_showTranslationAlternateText = objc_msgSend_suggestedRepliesMessagePartChatItemForMessageItem_attributes_(*(a1 + 112), v78, *(a1 + 40), v77);

    goto LABEL_71;
  }

  if ((*(a1 + 136) & 1) != 0 || (*(a1 + 137) & 1) != 0 || *(a1 + 138) == 1)
  {
    v79 = *(*(a1 + 72) + 8);
    if (*(v79 + 24))
    {
      goto LABEL_42;
    }

    *(v79 + 24) = 1;
    v80 = objc_msgSend_message(*(a1 + 40), v72, v73);
    v81 = IMCoreMomentShareURLForMessage(v80);

    if (*(a1 + 138) == 1 && v81)
    {
      v84 = objc_alloc(MEMORY[0x1E696AAB0]);
      v87 = objc_msgSend_absoluteString(v81, v85, v86);
      v89 = objc_msgSend_initWithString_(v84, v88, v87);

      v90 = [IMTextMessagePartChatItem alloc];
      BYTE2(v277) = 0;
      LOWORD(v277) = 0;
      isShowingEditHistory_showTranslationAlternateText = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_shouldDisplayLink_isShowingEditHistory_showTranslationAlternateText_(v90, v91, *(a1 + 40), v89, v283, v285, a3, v286, 0, v277);
      v290 = 0;
LABEL_70:

      v284 = v89;
      goto LABEL_71;
    }

    if (*(a1 + 137) == 1)
    {
      v92 = [IMUnavailableMomentShareMessagePartChatItem alloc];
      v94 = objc_msgSend__initWithItem_text_index_messagePartRange_transferGUID_chatContext_(v92, v93, *(a1 + 40), v284, v285, a3, v286, 0, *(a1 + 56));
LABEL_69:
      isShowingEditHistory_showTranslationAlternateText = v94;
      v89 = v284;
      goto LABEL_70;
    }

    if (v81)
    {
      v98 = objc_msgSend_absoluteString(v81, v82, v83);
      v101 = objc_msgSend_sharedInstance(IMMomentShareCache, v99, v100);
      v327 = 0;
      v103 = objc_msgSend_momentShareForURLString_error_(v101, v102, v98, &v327);
      v104 = v327;

      if (v103)
      {
      }

      else
      {
        IsPermanent = IMMomentShareCacheErrorIsPermanent(v104);

        if (IsPermanent)
        {
          v114 = [IMDeletedMomentShareMessagePartChatItem alloc];
          v94 = objc_msgSend__initWithItem_text_index_messagePartRange_transferGUID_chatContext_(v114, v115, *(a1 + 40), v284, v285, a3, v286, 0, *(a1 + 56));
          goto LABEL_69;
        }
      }
    }

    v116 = [IMPendingMomentShareMessagePartChatItem alloc];
    v94 = objc_msgSend__initWithItem_text_index_messagePartRange_transferGUID_chatContext_(v116, v117, *(a1 + 40), v284, v285, a3, v286, 0, *(a1 + 56));
    goto LABEL_69;
  }

  if (v290)
  {
    if ((isEqualToString & ~*(a1 + 139) | v60))
    {
      v75 = objc_msgSend_balloonBundleID(*(a1 + 40), v72, v73);
      if (objc_msgSend_isEqualToString_(v75, v95, v52))
      {
LABEL_41:

LABEL_42:
        isShowingEditHistory_showTranslationAlternateText = 0;
        goto LABEL_71;
      }

      v124 = objc_msgSend_balloonBundleID(*(a1 + 40), v96, v97);
      v126 = objc_msgSend_containsString_(v124, v125, v58);

      if (v126)
      {
        goto LABEL_42;
      }

      goto LABEL_82;
    }

    if (!v289)
    {
      if (IMOSLoggingEnabled())
      {
        v196 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v196, OS_LOG_TYPE_INFO))
        {
          v197 = *(a1 + 40);
          *buf = 138412546;
          *&buf[4] = v290;
          *&buf[12] = 2112;
          *&buf[14] = v197;
          _os_log_impl(&dword_1A823F000, v196, OS_LOG_TYPE_INFO, "Couldn't associate fileTransfer with guid: %@ for message: %@", buf, 0x16u);
        }
      }

      v198 = [IMErrorMessagePartChatItem alloc];
      v112 = objc_msgSend__initWithItem_text_index_messagePartRange_transferGUID_chatContext_(v198, v199, *(a1 + 40), v284, v285, a3, v286, v290, *(a1 + 56));
      goto LABEL_110;
    }

    if (objc_msgSend_transferState(v289, v72, v73) == 8)
    {
      v107 = [IMDetonatedMessagePartChatItem alloc];
      v108 = *(a1 + 40);
      HIBYTE(v278) = objc_msgSend_showTranslationAlternateText(*(a1 + 56), v109, v110);
      LOBYTE(v278) = 0;
      v112 = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_isShowingEditHistory_showTranslationAlternateText_(v107, v111, v108, v284, v283, v285, a3, v286, 0, v278);
LABEL_110:
      isShowingEditHistory_showTranslationAlternateText = v112;
      goto LABEL_71;
    }

    if (objc_msgSend_isAudioMessage(*(a1 + 40), v105, v106) && (objc_msgSend_type(v289, v200, v201), v202 = objc_claimAutoreleasedReturnValue(), IsAudio = IMUTTypeIsAudio(), v202, IsAudio))
    {
      v204 = objc_msgSend__newAudioMessagePartsForMessageItem_text_chatContext_retractedPartIndexes_singlePart_(*(a1 + 112), v200, *(a1 + 40), *(a1 + 32), *(a1 + 56), *(a1 + 48), *(*(*(a1 + 80) + 8) + 40));
      if (objc_msgSend_count(v204, v205, v206) == 1)
      {
        isShowingEditHistory_showTranslationAlternateText = objc_msgSend_firstObject(v204, v207, v208);
      }

      else
      {
        v262 = *(*(*(a1 + 88) + 8) + 40);
        if (!v262)
        {
          v263 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v264 = *(*(a1 + 88) + 8);
          v265 = *(v264 + 40);
          *(v264 + 40) = v263;

          v262 = *(*(*(a1 + 88) + 8) + 40);
        }

        objc_msgSend_addObjectsFromArray_(v262, v207, v204);
        isShowingEditHistory_showTranslationAlternateText = 0;
      }
    }

    else
    {
      if (objc_msgSend_isExpirable(*(a1 + 40), v200, v201))
      {
        v210 = [IMExpirableMessageChatItem alloc];
        v112 = objc_msgSend__initWithItem_text_index_messagePartRange_transferGUID_chatContext_(v210, v211, *(a1 + 40), v284, v285, a3, v286, v290, *(a1 + 56));
        goto LABEL_110;
      }

      if (*(a1 + 139) == 1)
      {
        v212 = objc_msgSend_attributionInfo(v289, v72, v209);
        v214 = objc_msgSend_objectForKey_(v212, v213, *MEMORY[0x1E69A6FC0]);
        v215 = v214 == 0;

        if (v215)
        {
          goto LABEL_42;
        }
      }

      v204 = objc_msgSend_attribute_atIndex_effectiveRange_(*(a1 + 32), v72, *MEMORY[0x1E69A5EF8], a3, 0);
      if (objc_msgSend_BOOLValue(v204, v216, v217))
      {
        v218 = [IMAnimatedEmojiMessagePartChatItem alloc];
        isShowingEditHistory_showTranslationAlternateText = objc_msgSend__initWithItem_text_index_messagePartRange_transferGUID_chatContext_(v218, v219, *(a1 + 40), v284, v285, a3, v286, v290, *(a1 + 56));
      }

      else
      {
        v226 = [IMAttachmentMessagePartChatItem alloc];
        isShowingEditHistory_showTranslationAlternateText = objc_msgSend__initWithItem_text_index_messagePartRange_transferGUID_chatContext_(v226, v227, *(a1 + 40), v284, v285, a3, v286, v290, *(a1 + 56));
        objc_msgSend_setChipListFromText_(isShowingEditHistory_showTranslationAlternateText, v228, *(a1 + 32));
      }
    }

    goto LABEL_71;
  }

LABEL_82:
  v280 = objc_msgSend_isFromMe(*(a1 + 40), v72, v73);
  if (*(a1 + 120) <= *(a1 + 128) && *(a1 + 140) == 1)
  {
    v129 = 1;
    if (objc_msgSend_hasDataDetectorResults(*(a1 + 40), v127, v128))
    {
      v323 = 0;
      v324 = &v323;
      v325 = 0x2020000000;
      v326 = 1;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3010000000;
      v332 = 0;
      v333 = 0;
      v331 = &unk_1A8573D95;
      v317 = 0;
      v318 = &v317;
      v319 = 0x3032000000;
      v320 = sub_1A8259B40;
      v321 = sub_1A825AECC;
      v322 = 0;
      v311 = 0;
      v312 = &v311;
      v313 = 0x3032000000;
      v314 = sub_1A8259B40;
      v315 = sub_1A825AECC;
      v316 = 0;
      v130 = *(a1 + 32);
      v131 = *MEMORY[0x1E69A5FB0];
      v291[0] = MEMORY[0x1E69E9820];
      v291[1] = 3221225472;
      v291[2] = sub_1A82D4D24;
      v291[3] = &unk_1E7811828;
      v297 = &v323;
      v302 = a3;
      v303 = v286;
      v132 = v130;
      v133 = *(a1 + 112);
      v292 = v132;
      v304 = v133;
      v293 = *(a1 + 40);
      v306 = *(a1 + 141);
      v134 = *(a1 + 64);
      v307 = *(a1 + 142);
      v308 = v280;
      v294 = v134;
      v305 = v285;
      v309 = *(a1 + 143);
      v295 = *(a1 + 56);
      v310 = 1;
      v279 = v283;
      v296 = v279;
      v298 = &v317;
      v299 = buf;
      v300 = *(a1 + 88);
      v301 = &v311;
      objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v132, v135, v131, a3, v286, 0, v291);
      if (*(v324 + 24) == 1)
      {
        v138 = objc_msgSend_scheme(v312[5], v136, v137);
        v141 = objc_msgSend_lowercaseString(v138, v139, v140);
        v144 = objc_msgSend_trimmedString(v141, v142, v143);
        v146 = objc_msgSend_isEqualToString_(v144, v145, @"http");

        v149 = objc_msgSend_body(*(a1 + 40), v147, v148);
        v152 = objc_msgSend_string(v149, v150, v151);
        LODWORD(v138) = objc_msgSend_im_matchesSOSMapURL(v152, v153, v154);

        v156 = objc_msgSend_locationInfoFromURL_(MEMORY[0x1E69A8100], v155, v312[5]);
        v159 = v156;
        if (((v138 | v146) & 1) != 0 && (objc_msgSend_location(v156, v157, v158), (v160 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend_address(v159, v157, v158), v161 = objc_claimAutoreleasedReturnValue(), v162 = v161 == 0, v161, v160, v162))
        {
          v274 = [IMTranscriptLocationChatItem alloc];
          isShowingEditHistory_showTranslationAlternateText = objc_msgSend__initWithItem_text_index_messagePartRange_visibleAssociatedMessageChatItems_(v274, v275, *(a1 + 40), v284, v285, a3, v286, 0);
          objc_msgSend_setLocationInfo_(isShowingEditHistory_showTranslationAlternateText, v276, v159);
        }

        else
        {
          v163 = *(a1 + 112);
          v164 = v312[5];
          v165 = objc_msgSend_sender(*(a1 + 40), v157, v158);
          isAllowlistedRichLinkSender = objc_msgSend__supportsRichLinkURL_forSender_isAllowlistedRichLinkSender_(v163, v166, v164, v165, *(a1 + 141));

          v168 = *(a1 + 64);
          v170 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v169, a3, v286);
          v172 = objc_msgSend_member_(v168, v171, v170);

          LODWORD(v170) = objc_msgSend__isSenderUnknown(*(a1 + 40), v173, v174);
          hasResponded = objc_msgSend_hasResponded(*(a1 + 56), v175, v176);
          if (v170)
          {
            v179 = *(a1 + 142) | v280 | hasResponded;
          }

          else
          {
            v179 = 1;
          }

          isAllowlistedURL = objc_msgSend__isAllowlistedURL_(*(a1 + 112), v178, v312[5]);
          if (v172)
          {
            v232 = isAllowlistedRichLinkSender;
          }

          else
          {
            v232 = 0;
          }

          if (v232 == 1 && ((v179 | isAllowlistedURL) & 1) != 0)
          {
            v233 = objc_alloc_init(IMPluginPayload);
            v236 = objc_msgSend_guid(*(a1 + 40), v234, v235);
            objc_msgSend_setMessageGUID_(v233, v237, v236);

            objc_msgSend_setPluginBundleID_(v233, v238, v52);
            objc_msgSend_setUrl_(v233, v239, v312[5]);
            v242 = objc_msgSend_fileTransferGUIDs(*(a1 + 40), v240, v241);
            objc_msgSend_addAttachmentsFromFileTransferGUIDs_(v233, v243, v242);

            v244 = [IMTranscriptPluginChatItem alloc];
            if (*(a1 + 143))
            {
              v246 = 1;
            }

            else
            {
              v246 = *(a1 + 142) | v280;
            }

            isShowingEditHistory_showTranslationAlternateText = objc_msgSend__initWithItem_initialPayload_index_messagePartRange_parentChatHasKnownParticipants_(v244, v245, *(a1 + 40), v233, v285, a3, v286, v246 & 1);
            objc_msgSend_setAllowlistedRichLinkSender_(isShowingEditHistory_showTranslationAlternateText, v272, *(a1 + 141));
            objc_msgSend_setChipListFromText_(isShowingEditHistory_showTranslationAlternateText, v273, *(a1 + 32));
          }

          else
          {
            v247 = objc_msgSend_guid(*(a1 + 40), v230, v231);
            v233 = objc_msgSend_chatItemGUIDForMessageGUID_partIndex_(IMMessagePartChatItem, v248, v247, v285);

            v251 = objc_msgSend_showingEditHistoryForChatItemGUIDs(*(a1 + 56), v249, v250);
            v253 = objc_msgSend_containsObject_(v251, v252, v233);

            v254 = v280 ^ 1;
            if (!v279)
            {
              v254 = 0;
            }

            if (v254)
            {
              v266 = [IMTextMessagePartChatItem alloc];
              v267 = *(a1 + 40);
              BYTE2(v277) = objc_msgSend_showTranslationAlternateText(*(a1 + 56), v268, v269);
              BYTE1(v277) = v253;
              LOBYTE(v277) = 1;
              v260 = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_shouldDisplayLink_isShowingEditHistory_showTranslationAlternateText_(v266, v270, v267, v279, v284, v285, a3, v286, 0, v277);
            }

            else
            {
              v255 = [IMTextMessagePartChatItem alloc];
              v256 = *(a1 + 40);
              BYTE2(v277) = objc_msgSend_showTranslationAlternateText(*(a1 + 56), v257, v258);
              BYTE1(v277) = v253;
              LOBYTE(v277) = 1;
              v260 = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_shouldDisplayLink_isShowingEditHistory_showTranslationAlternateText_(v255, v259, v256, v284, v279, v285, a3, v286, 0, v277);
            }

            isShowingEditHistory_showTranslationAlternateText = v260;
            objc_msgSend_setChipListFromText_(v260, v261, *(a1 + 32));
            objc_msgSend_setTranslationSourceLanguage_(isShowingEditHistory_showTranslationAlternateText, v271, v282);
          }
        }
      }

      else
      {
        v220 = v318[5];
        if (!v220)
        {
          isShowingEditHistory_showTranslationAlternateText = 0;
LABEL_143:

          _Block_object_dispose(&v311, 8);
          _Block_object_dispose(&v317, 8);

          _Block_object_dispose(buf, 8);
          _Block_object_dispose(&v323, 8);
          goto LABEL_71;
        }

        v221 = *(*(*(a1 + 88) + 8) + 40);
        if (!v221)
        {
          v222 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v223 = *(*(a1 + 88) + 8);
          v224 = *(v223 + 40);
          *(v223 + 40) = v222;

          v221 = *(*(*(a1 + 88) + 8) + 40);
          v220 = v318[5];
        }

        objc_msgSend_addObject_(v221, v136, v220);
        isShowingEditHistory_showTranslationAlternateText = 0;
        v225 = *&buf[8];
        *(*&buf[8] + 32) = 0;
        *(v225 + 40) = 0;
        v159 = v318[5];
        v318[5] = 0;
      }

      goto LABEL_143;
    }
  }

  else
  {
    v129 = 0;
  }

  v180 = objc_msgSend_guid(*(a1 + 40), v127, v128);
  v182 = objc_msgSend_chatItemGUIDForMessageGUID_partIndex_(IMMessagePartChatItem, v181, v180, v285);

  v185 = objc_msgSend_showingEditHistoryForChatItemGUIDs(*(a1 + 56), v183, v184);
  v187 = objc_msgSend_containsObject_(v185, v186, v182);

  if (v283)
  {
    v188 = v280;
  }

  else
  {
    v188 = 1;
  }

  v189 = [IMTextMessagePartChatItem alloc];
  v190 = *(a1 + 40);
  BYTE2(v277) = objc_msgSend_showTranslationAlternateText(*(a1 + 56), v191, v192);
  BYTE1(v277) = v187;
  LOBYTE(v277) = v129;
  if (v188)
  {
    v194 = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_shouldDisplayLink_isShowingEditHistory_showTranslationAlternateText_(v189, v193, v190, v284, v283, v285, a3, v286, 0, v277);
  }

  else
  {
    v194 = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_shouldDisplayLink_isShowingEditHistory_showTranslationAlternateText_(v189, v193, v190, v283, v284, v285, a3, v286, 0, v277);
  }

  isShowingEditHistory_showTranslationAlternateText = v194;
  objc_msgSend_setChipListFromText_(v194, v195, *(a1 + 32));

LABEL_71:
  if (v281)
  {
    if (objc_msgSend_count(*(*(*(a1 + 88) + 8) + 40), v72, v73) && isShowingEditHistory_showTranslationAlternateText)
    {
      objc_msgSend_addObject_(*(*(*(a1 + 88) + 8) + 40), v118, isShowingEditHistory_showTranslationAlternateText);
    }

    else
    {
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), isShowingEditHistory_showTranslationAlternateText);
    }
  }

  else if (isShowingEditHistory_showTranslationAlternateText)
  {
    v119 = *(*(*(a1 + 88) + 8) + 40);
    if (!v119)
    {
      v120 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v121 = *(*(a1 + 88) + 8);
      v122 = *(v121 + 40);
      *(v121 + 40) = v120;

      v119 = *(*(*(a1 + 88) + 8) + 40);
    }

    objc_msgSend_addObject_(v119, v72, isShowingEditHistory_showTranslationAlternateText);
  }

  v123 = *MEMORY[0x1E69E9840];
}

void sub_1A82D4BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose((v48 - 160), 8);
  _Block_object_dispose((v48 - 216), 8);
  _Unwind_Resume(a1);
}

id sub_1A82D4C80(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = _IMDDResultAttributeName();
  v8 = objc_msgSend_attribute_existsInRange_(v5, v7, v6, a2, a3);

  if (v8)
  {
    objc_msgSend_dd_attributedSubstringFromRange_(v5, v9, a2, a3);
  }

  else
  {
    objc_msgSend_attributedSubstringFromRange_(v5, v9, a2, a3);
  }
  v10 = ;

  return v10;
}

void sub_1A82D4D24(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, _BYTE *a5)
{
  v130 = a2;
  v11 = a3 == *(a1 + 112) && a4 == *(a1 + 120);
  *(*(*(a1 + 72) + 8) + 24) = v11;
  if (*(*(*(a1 + 72) + 8) + 24))
  {
    objc_storeStrong((*(*(a1 + 104) + 8) + 40), a2);
    *a5 = 1;
    goto LABEL_41;
  }

  v12 = sub_1A82D4C80(*(a1 + 32), a3, a4);
  v13 = *(a1 + 32);
  v14 = _IMDDResultAttributeName();
  LOBYTE(v13) = objc_msgSend_attribute_existsInRange_(v13, v15, v14, a3, a4);

  if ((v13 & 1) == 0)
  {
    v18 = objc_msgSend_attributedSubstringFromRange_(*(a1 + 32), v16, a3, a4);
    v21 = objc_msgSend_trimmedString(v18, v19, v20);

    v25 = objc_msgSend_string(v21, v22, v23);
    if (!v130 && objc_msgSend_characterAtIndex_(v25, v24, 0) == 46)
    {
      if (objc_msgSend_length(v25, v26, v27) < 2)
      {
        v35 = 0;
      }

      else
      {
        v30 = objc_msgSend_length(v21, v28, v29);
        v32 = objc_msgSend_attributedSubstringFromRange_(v21, v31, 1, v30 - 1);
        v35 = objc_msgSend_trimmedString(v32, v33, v34);

        v21 = v32;
      }

      v21 = v35;
    }

    v12 = v21;
  }

  v36 = objc_msgSend_string(v12, v16, v17);
  v39 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v37, v38);
  v41 = objc_msgSend_stringByTrimmingCharactersInSet_(v36, v40, v39);
  v44 = objc_msgSend_length(v41, v42, v43);

  if (v44)
  {
    v47 = *(a1 + 128);
    v48 = objc_msgSend_sender(*(a1 + 40), v45, v46);
    if (objc_msgSend__supportsRichLinkURL_forSender_isAllowlistedRichLinkSender_(v47, v49, v130, v48, *(a1 + 144)))
    {
      v51 = *(a1 + 48);
      v52 = objc_msgSend_valueWithRange_(MEMORY[0x1E696B098], v50, a3, a4);
      v54 = objc_msgSend_member_(v51, v53, v52);
      if (v54)
      {
        v57 = v54;
        if (!objc_msgSend__isSenderUnknown(*(a1 + 40), v55, v56) || *(a1 + 145) == 1)
        {

          goto LABEL_23;
        }

        v116 = *(a1 + 146);

        if (v116 == 1)
        {
LABEL_23:
          v59 = objc_msgSend__guidForMessage_url_(*(a1 + 128), v58, *(a1 + 40), v130);
          v60 = objc_alloc_init(IMPluginPayload);
          objc_msgSend_setMessageGUID_(v60, v61, v59);
          objc_msgSend_setPluginBundleID_(v60, v62, *MEMORY[0x1E69A6A18]);
          objc_msgSend_setUrl_(v60, v63, v130);
          v66 = objc_msgSend_fileTransferGUIDs(*(a1 + 40), v64, v65);
          objc_msgSend_addAttachmentsFromFileTransferGUIDs_(v60, v67, v66);

          v68 = [IMTranscriptPluginChatItem alloc];
          if (*(a1 + 147) & 1) != 0 || (*(a1 + 145))
          {
            v70 = 1;
          }

          else
          {
            v70 = *(a1 + 146);
          }

          HasKnownParticipants = objc_msgSend__initWithItem_initialPayload_index_messagePartRange_parentChatHasKnownParticipants_(v68, v69, *(a1 + 40), v60, *(a1 + 136), a3, a4, v70 & 1);
          objc_msgSend_setAllowlistedRichLinkSender_(HasKnownParticipants, v117, *(a1 + 144));

          v119 = *(a1 + 96);
          if (!*(*(v119 + 8) + 40))
          {
            v120 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v121 = *(*(a1 + 96) + 8);
            v122 = *(v121 + 40);
            *(v121 + 40) = v120;

            v119 = *(a1 + 96);
          }

          v123 = *(*(*(a1 + 80) + 8) + 40);
          if (v123)
          {
            objc_msgSend_addObject_(*(*(v119 + 8) + 40), v118, v123);
            v124 = *(*(a1 + 88) + 8);
            *(v124 + 32) = 0;
            *(v124 + 40) = 0;
            v125 = *(*(a1 + 80) + 8);
            v126 = *(v125 + 40);
            *(v125 + 40) = 0;

            v119 = *(a1 + 96);
          }

          objc_msgSend_addObject_(*(*(v119 + 8) + 40), v118, HasKnownParticipants);
          goto LABEL_39;
        }

LABEL_28:
        v72 = objc_msgSend_guid(*(a1 + 40), v58, v71);
        v74 = objc_msgSend_chatItemGUIDForMessageGUID_partIndex_(IMMessagePartChatItem, v73, v72, *(a1 + 136));

        v77 = objc_msgSend_showingEditHistoryForChatItemGUIDs(*(a1 + 56), v75, v76);
        LOBYTE(v72) = objc_msgSend_containsObject_(v77, v78, v74);

        v79 = [IMTextMessagePartChatItem alloc];
        v80 = *(a1 + 40);
        v81 = *(a1 + 136);
        v129 = v12;
        v82 = *(a1 + 148);
        v83 = *(a1 + 64);
        BYTE2(v127) = objc_msgSend_showTranslationAlternateText(*(a1 + 56), v84, v85);
        BYTE1(v127) = v72;
        LOBYTE(v127) = v82;
        v12 = v129;
        HasKnownParticipants = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_shouldDisplayLink_isShowingEditHistory_showTranslationAlternateText_(v79, v86, v80, v129, v83, v81, a3, a4, 0, v127);
        objc_msgSend_setChipListFromText_(HasKnownParticipants, v88, *(a1 + 32));

        v89 = *(*(a1 + 88) + 8);
        if (*(*(*(a1 + 80) + 8) + 40))
        {
          v132.location = a3;
          v132.length = a4;
          *(*(*(a1 + 88) + 8) + 32) = NSUnionRange(v89[2], v132);
          v90 = sub_1A82D4C80(*(a1 + 32), *(*(*(a1 + 88) + 8) + 32), *(*(*(a1 + 88) + 8) + 40));
          v93 = objc_msgSend_guid(*(a1 + 40), v91, v92);
          v95 = objc_msgSend_chatItemGUIDForMessageGUID_partIndex_(IMMessagePartChatItem, v94, v93, *(a1 + 136));

          v98 = objc_msgSend_showingEditHistoryForChatItemGUIDs(*(a1 + 56), v96, v97);
          v100 = objc_msgSend_containsObject_(v98, v99, v95);

          v101 = [IMTextMessagePartChatItem alloc];
          v102 = *(a1 + 40);
          v103 = *(a1 + 136);
          v104 = *(*(a1 + 88) + 8);
          v105 = *(a1 + 64);
          v108 = objc_msgSend_showTranslationAlternateText(*(a1 + 56), v106, v107);
          v109 = *(v104 + 32);
          v110 = *(v104 + 40);
          v12 = v129;
          BYTE1(v128) = v108;
          LOBYTE(v128) = v100;
          isShowingEditHistory_showTranslationAlternateText = objc_msgSend__initWithItem_text_translationSecondaryText_index_messagePartRange_subject_isShowingEditHistory_showTranslationAlternateText_(v101, v111, v102, v90, v105, v103, v109, v110, 0, v128);
          v113 = *(*(a1 + 80) + 8);
          v114 = *(v113 + 40);
          *(v113 + 40) = isShowingEditHistory_showTranslationAlternateText;

          objc_msgSend_setChipListFromText_(*(*(*(a1 + 80) + 8) + 40), v115, *(a1 + 32));
        }

        else
        {
          v89[2].location = a3;
          v89[2].length = a4;
          objc_storeStrong((*(*(a1 + 80) + 8) + 40), HasKnownParticipants);
        }

LABEL_39:

        goto LABEL_40;
      }
    }

    goto LABEL_28;
  }

LABEL_40:

LABEL_41:
}