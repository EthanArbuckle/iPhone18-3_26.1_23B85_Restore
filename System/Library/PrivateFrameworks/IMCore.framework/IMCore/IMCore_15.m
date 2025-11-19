uint64_t sub_1A84AFD60(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A82505F4;

  return sub_1A84AE84C(a1);
}

uint64_t sub_1A84AFDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A84E605C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A84AFE94, v6, v8);
}

uint64_t sub_1A84AFE94()
{
  v1 = **(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1A84065F4;
  v3 = *(v0 + 24);

  return sub_1A84AE84C(v3);
}

uint64_t sub_1A84AFF30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ImportExport.ConversationArchiver();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = ImportExport.ConversationArchiver.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1A84AFFB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84B0018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A84B0078()
{
  result = qword_1EB2E89B8;
  if (!qword_1EB2E89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E89B8);
  }

  return result;
}

uint64_t type metadata accessor for ImportExport.ConversationArchiver()
{
  result = qword_1EB2E89D8;
  if (!qword_1EB2E89D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A84B0118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84B0180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A84B01D0()
{
  result = type metadata accessor for ImportExport.Conversation();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for ImportExport.ArchivingOptions();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = sub_1A84E558C();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = type metadata accessor for ImportExport.ArchivedConversationDirectories();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ImportExport.ConversationArchiver.next()(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A82505F4;

  return v8(a1);
}

unint64_t sub_1A84B0528()
{
  result = qword_1EB2E89E8;
  if (!qword_1EB2E89E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E89E8);
  }

  return result;
}

unint64_t sub_1A84B0580()
{
  result = qword_1EB2E89F0;
  if (!qword_1EB2E89F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E89F0);
  }

  return result;
}

unint64_t sub_1A84B05D8()
{
  result = qword_1EB2E89F8;
  if (!qword_1EB2E89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E89F8);
  }

  return result;
}

uint64_t sub_1A84B062C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A85323B0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001A8533B40 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8531A50 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8533B60 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A84B0824(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1A83EA2FC(&qword_1EB2E7FA8, &qword_1A8506D10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30[-v8];
  v10 = *a2;
  v11 = a2[1];
  sub_1A84B28F4(a2, &v30[-v8], type metadata accessor for ImportExport.Message);
  v12 = type metadata accessor for ImportExport.Message();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  swift_beginAccess();

  sub_1A845EA08(v9, v10, v11);
  swift_endAccess();
  swift_beginAccess();
  v13 = *(v3 + 40);

  LOBYTE(v9) = sub_1A84535C0(v10, v11, v13);

  if ((v9 & 1) == 0)
  {
    swift_beginAccess();

    sub_1A82493D0(&v31, v10, v11);
    swift_endAccess();

    v14 = *(v3 + 16);
    v15 = OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress;
    swift_beginAccess();
    v16 = *(v14 + v15);
    result = swift_beginAccess();
    v18 = *(v16 + 40);
    v19 = __CFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_9;
    }

    *(v16 + 40) = v20;
  }

  v21 = *(v3 + 16);
  v22 = OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress;
  swift_beginAccess();
  v23 = *(v21 + v22);
  result = swift_beginAccess();
  v24 = *(v23 + 48);
  v19 = __CFADD__(v24, 1);
  v25 = v24 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 48) = v25;
    v26 = *(a1 + *(type metadata accessor for ImportExport.Attachment() + 60));
    result = swift_beginAccess();
    v27 = *(v23 + 56);
    v28 = __OFADD__(v27, v26);
    v29 = v27 + v26;
    if (!v28)
    {
      *(v23 + 56) = v29;
      return result;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t ImportExport.MessageAttachmentPair.init(withMessage:attachment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A84B27EC(a1, a3, type metadata accessor for ImportExport.Message);
  v5 = type metadata accessor for ImportExport.MessageAttachmentPair(0);
  return sub_1A84B27EC(a2, a3 + *(v5 + 20), type metadata accessor for ImportExport.Attachment);
}

uint64_t ImportExport.DownloadableAttachmentBatch.progress.getter()
{
  v1 = OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t ImportExport.DownloadableAttachmentBatch.makeIterator()()
{
  type metadata accessor for ImportExport.AttachmentDownloadIterator();
  v0 = swift_allocObject();

  ImportExport.AttachmentDownloadIterator.init(withDownloadableAttachmentBatch:)(v1);
  return v0;
}

uint64_t ImportExport.AttachmentDownloadIterator.__allocating_init(withDownloadableAttachmentBatch:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ImportExport.AttachmentDownloadIterator.init(withDownloadableAttachmentBatch:)(a1);
  return v2;
}

unint64_t sub_1A84B0C94()
{
  v1 = 0x704F74726F707865;
  v2 = 0x73736572676F7270;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A84B0D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84B53FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84B0D48(uint64_t a1)
{
  v2 = sub_1A84B272C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84B0D84(uint64_t a1)
{
  v2 = sub_1A84B272C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.DownloadableAttachmentBatch.deinit()
{
  sub_1A84B29B0(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs);

  v2 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportStatistics);

  v3 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress);

  return v0;
}

uint64_t ImportExport.DownloadableAttachmentBatch.__deallocating_deinit()
{
  sub_1A84B29B0(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs);

  v2 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportStatistics);

  v3 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ImportExport.DownloadableAttachmentBatch.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8A00, &qword_1A8509F20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B272C();
  sub_1A84E68AC();
  LOBYTE(v16) = 0;
  type metadata accessor for ImportExport.ExportOptions();
  sub_1A84B2780(&qword_1EB2E7D10, 255, type metadata accessor for ImportExport.ExportOptions);
  sub_1A84E672C();
  if (!v2)
  {
    v16 = *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs);
    LOBYTE(v15) = 1;
    sub_1A83EA2FC(&qword_1EB2E8A10, &qword_1A8509F28);
    sub_1A84B2854(&qword_1EB2E8A18, &qword_1EB2E8A20);
    sub_1A84E672C();
    v16 = *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportStatistics);
    LOBYTE(v15) = 2;
    type metadata accessor for ImportExport.ExportStatistics();
    sub_1A84B2780(&qword_1EB2E7DE0, 255, type metadata accessor for ImportExport.ExportStatistics);
    sub_1A84E672C();
    v11 = OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress;
    swift_beginAccess();
    v15 = *(v3 + v11);
    v14[15] = 3;
    type metadata accessor for ImportExport.AttachmentDownloadBatchProgress();
    sub_1A84B2780(&qword_1EB2E8A28, v12, type metadata accessor for ImportExport.AttachmentDownloadBatchProgress);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImportExport.DownloadableAttachmentBatch.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ImportExport.DownloadableAttachmentBatch.init(from:)(a1);
  return v5;
}

uint64_t *ImportExport.DownloadableAttachmentBatch.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v5 = type metadata accessor for ImportExport.ExportOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v22 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E8A30, &qword_1A8509F30);
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B272C();
  v23 = v11;
  sub_1A84E689C();
  if (v2)
  {
    v15 = *(*v1 + 48);
    v16 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    sub_1A8244788(a1);
    return v1;
  }

  else
  {
    v13 = v20;
    LOBYTE(v25) = 0;
    sub_1A84B2780(&qword_1EB2E7D40, 255, type metadata accessor for ImportExport.ExportOptions);
    sub_1A84E666C();
    v19 = v1;
    sub_1A84B27EC(v22, v1 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportOptions, type metadata accessor for ImportExport.ExportOptions);
    sub_1A83EA2FC(&qword_1EB2E8A10, &qword_1A8509F28);
    v24 = 1;
    sub_1A84B2854(&qword_1EB2E8A38, &qword_1EB2E8A40);
    sub_1A84E666C();
    *(v19 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs) = v25;
    type metadata accessor for ImportExport.ExportStatistics();
    v24 = 2;
    sub_1A84B2780(&qword_1EB2E7DF0, 255, type metadata accessor for ImportExport.ExportStatistics);
    sub_1A84E666C();
    *(v19 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_exportStatistics) = v25;
    type metadata accessor for ImportExport.AttachmentDownloadBatchProgress();
    v24 = 3;
    sub_1A84B2780(&qword_1EB2E8A48, v14, type metadata accessor for ImportExport.AttachmentDownloadBatchProgress);
    sub_1A84E666C();
    (*(v13 + 8))(v23, v21);
    v17 = v19;
    *(v19 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress) = v25;
    sub_1A8244788(a1);
    return v17;
  }
}

uint64_t sub_1A84B1778@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ImportExport.AttachmentDownloadIterator();
  v4 = swift_allocObject();
  result = ImportExport.AttachmentDownloadIterator.init(withDownloadableAttachmentBatch:)(v3);
  *a1 = v4;
  return result;
}

uint64_t sub_1A84B17D8()
{
  v1 = *v0;
  v2 = sub_1A84B474C();

  return v2;
}

uint64_t sub_1A84B1834(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for ImportExport.AttachmentDownloadIterator();
  v8 = swift_allocObject();
  result = ImportExport.AttachmentDownloadIterator.init(withDownloadableAttachmentBatch:)(v4);
  v10 = 0;
  if (!a2 || !a3)
  {
LABEL_9:
    *a1 = v8;
    return v10;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = ImportExport.AttachmentDownloadIterator.next()();
    v10 = 0;
    if (v11)
    {
      while (1)
      {
        *(a2 + 8 * v10) = v11;
        if (a3 - 1 == v10)
        {
          break;
        }

        v11 = ImportExport.AttachmentDownloadIterator.next()();
        ++v10;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v10 = a3;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1A84B18FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = ImportExport.DownloadableAttachmentBatch.init(from:)(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1A84B19F8()
{
  if (*v0)
  {
    result = 0x656D686361747461;
  }

  else
  {
    result = 0x6567617373656DLL;
  }

  *v0;
  return result;
}

uint64_t sub_1A84B1A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1A84E67AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A84E67AC();

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

uint64_t sub_1A84B1B1C(uint64_t a1)
{
  v2 = sub_1A84B295C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84B1B58(uint64_t a1)
{
  v2 = sub_1A84B295C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.MessageAttachmentPair.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E8A50, &qword_1A8509F38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B295C();
  sub_1A84E68AC();
  v11[15] = 0;
  type metadata accessor for ImportExport.Message();
  sub_1A84B2780(&qword_1EB2E7800, 255, type metadata accessor for ImportExport.Message);
  sub_1A84E672C();
  if (!v1)
  {
    v9 = *(type metadata accessor for ImportExport.MessageAttachmentPair(0) + 20);
    v11[14] = 1;
    type metadata accessor for ImportExport.Attachment();
    sub_1A84B2780(&qword_1EB2E73A0, 255, type metadata accessor for ImportExport.Attachment);
    sub_1A84E672C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ImportExport.MessageAttachmentPair.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = type metadata accessor for ImportExport.Attachment();
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ImportExport.Message();
  v7 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v28 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A83EA2FC(&qword_1EB2E8A60, &unk_1A8509F40);
  v26 = *(v29 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ImportExport.MessageAttachmentPair(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B295C();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v22 = v12;
  v23 = a1;
  v17 = v26;
  v18 = v15;
  v31 = 0;
  sub_1A84B2780(&qword_1EB2E7198, 255, type metadata accessor for ImportExport.Message);
  v19 = v28;
  v20 = v29;
  sub_1A84E666C();
  sub_1A84B27EC(v19, v18, type metadata accessor for ImportExport.Message);
  v30 = 1;
  sub_1A84B2780(&qword_1EB2E7398, 255, type metadata accessor for ImportExport.Attachment);
  sub_1A84E666C();
  (*(v17 + 8))(v11, v20);
  sub_1A84B27EC(v6, v18 + *(v22 + 20), type metadata accessor for ImportExport.Attachment);
  sub_1A84B28F4(v18, v24, type metadata accessor for ImportExport.MessageAttachmentPair);
  sub_1A8244788(v23);
  return sub_1A84B29B0(v18, type metadata accessor for ImportExport.MessageAttachmentPair);
}

uint64_t ImportExport.AttachmentDownloadIterator.init(withDownloadableAttachmentBatch:)(uint64_t a1)
{
  v2 = v1;
  v65 = type metadata accessor for ImportExport.Message();
  v4 = *(v65 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E7FA8, &qword_1A8506D10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v53 - v10;
  v63 = type metadata accessor for ImportExport.MessageAttachmentPair(0);
  v11 = *(v63 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1[5] = MEMORY[0x1E69E7CD0];
  v54 = OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs;
  v55 = a1;
  v15 = *(a1 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs);
  v62 = *(v15 + 16);
  if (!v62)
  {
    v46 = 0;
    v47 = 0;
    v18 = MEMORY[0x1E69E7CC8];
    v44 = v54;
    v45 = v55;
LABEL_23:
    v48 = v18[2];
    type metadata accessor for ImportExport.AttachmentDownloadBatchProgress();
    swift_allocObject();

    v49 = sub_1A84B39AC(v48, v46, v47);
    v2[2] = v45;
    v2[3] = *(v45 + v44);
    v2[4] = v18;
    v50 = OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress;
    swift_beginAccess();
    v51 = *(v45 + v50);
    *(v45 + v50) = v49;

    return v2;
  }

  v53 = v1;
  v61 = v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v60 = (v4 + 56);

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC8];
  v56 = v14;
  v57 = v11;
  v59 = v16;
  while (v17 < *(v16 + 16))
  {
    sub_1A84B28F4(v61 + *(v11 + 72) * v17, v14, type metadata accessor for ImportExport.MessageAttachmentPair);
    v20 = v14 + *(v63 + 20);
    v58 = *&v20[*(type metadata accessor for ImportExport.Attachment() + 60)];
    v22 = *v14;
    v21 = v14[1];
    if (v18[2])
    {
      v23 = sub_1A824B390(*v14, v14[1]);
      if (v24)
      {
        v25 = v64;
        sub_1A84B28F4(v18[7] + *(v4 + 72) * v23, v64, type metadata accessor for ImportExport.Message);
        (*(v4 + 56))(v25, 0, 1, v65);
        sub_1A84B29B0(v14, type metadata accessor for ImportExport.MessageAttachmentPair);
        sub_1A824B2D4(v25, &qword_1EB2E7FA8, &qword_1A8506D10);
        goto LABEL_5;
      }
    }

    v26 = v4;
    v27 = v64;
    (*v60)(v64, 1, 1, v65);
    sub_1A824B2D4(v27, &qword_1EB2E7FA8, &qword_1A8506D10);
    v28 = v14;
    v29 = v7;
    sub_1A84B28F4(v28, v7, type metadata accessor for ImportExport.Message);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v18;
    v32 = sub_1A824B390(v22, v21);
    v33 = v18[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_25;
    }

    v36 = v31;
    if (v18[3] >= v35)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v18 = v66;
        if ((v31 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_1A848E5E4();
        v18 = v66;
        if ((v36 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_1A848A588(v35, isUniquelyReferenced_nonNull_native);
      v37 = sub_1A824B390(v22, v21);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v32 = v37;
      v18 = v66;
      if ((v36 & 1) == 0)
      {
LABEL_17:
        v18[(v32 >> 6) + 8] |= 1 << v32;
        v39 = (v18[6] + 16 * v32);
        *v39 = v22;
        v39[1] = v21;
        v4 = v26;
        v40 = v18[7] + *(v26 + 72) * v32;
        v7 = v29;
        sub_1A84B27EC(v29, v40, type metadata accessor for ImportExport.Message);
        v41 = v18[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_26;
        }

        v18[2] = v43;

        goto LABEL_4;
      }
    }

    v4 = v26;
    v19 = v18[7] + *(v26 + 72) * v32;
    v7 = v29;
    sub_1A84672B8(v29, v19);
LABEL_4:
    v14 = v56;
    sub_1A84B29B0(v56, type metadata accessor for ImportExport.MessageAttachmentPair);
    v11 = v57;
LABEL_5:
    v16 = v59;
    if (v62 == ++v17)
    {

      v44 = v54;
      v45 = v55;
      v46 = *(*(v55 + v54) + 16);
      v2 = v53;
      v47 = v58;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1A84E67EC();
  __break(1u);
  return result;
}

unint64_t sub_1A84B272C()
{
  result = qword_1EB2E8A08;
  if (!qword_1EB2E8A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8A08);
  }

  return result;
}

uint64_t sub_1A84B2780(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84B27EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84B2854(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E8A10, &qword_1A8509F28);
    sub_1A84B2780(a2, 255, type metadata accessor for ImportExport.MessageAttachmentPair);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84B28F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A84B295C()
{
  result = qword_1EB2E8A58;
  if (!qword_1EB2E8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8A58);
  }

  return result;
}

uint64_t sub_1A84B29B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ImportExport.AttachmentDownloadIterator.next()()
{
  v1 = v0;
  v2 = type metadata accessor for ImportExport.Attachment();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A83EA2FC(&qword_1EB2E8A68, &qword_1A8509F50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v46 - v8;
  v10 = type metadata accessor for ImportExport.Message();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v46 - v18;
  v49 = type metadata accessor for ImportExport.MessageAttachmentPair(0);
  v19 = *(v49 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v22 = (&v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v0 + 16);
  v24 = OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_progress;
  swift_beginAccess();
  v25 = *(v23 + v24);
  swift_beginAccess();
  if (!*(v25 + 48))
  {
    v26 = *(v25 + 64);

    ImportExport.Timer.start()();
  }

  swift_beginAccess();
  v27 = *(v1 + 24);
  if (!*(v27 + 16))
  {
    goto LABEL_10;
  }

  v47 = v5;
  v48 = v9;
  v46 = v14;
  v28 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  sub_1A84B28F4(v27 + v28, v22, type metadata accessor for ImportExport.MessageAttachmentPair);
  v30 = *v22;
  v29 = v22[1];
  swift_beginAccess();
  v31 = *(v1 + 32);
  if (!*(v31 + 16) || (v32 = sub_1A824B390(v30, v29), (v33 & 1) == 0))
  {
    swift_endAccess();
    sub_1A84B29B0(v22, type metadata accessor for ImportExport.MessageAttachmentPair);
LABEL_10:
    v45 = *(*(v23 + v24) + 64);

    ImportExport.Timer.stop()();

    return 0;
  }

  sub_1A84B28F4(*(v31 + 56) + *(v50 + 72) * v32, v17, type metadata accessor for ImportExport.Message);
  v34 = v51;
  sub_1A84B27EC(v17, v51, type metadata accessor for ImportExport.Message);
  swift_endAccess();
  result = swift_beginAccess();
  v36 = *(v1 + 24);
  if (*(v36 + 16))
  {
    v37 = v48;
    sub_1A84B28F4(v36 + v28, v48, type metadata accessor for ImportExport.MessageAttachmentPair);
    v38 = v49;
    (*(v19 + 56))(v37, 0, 1, v49);
    result = sub_1A824B2D4(v37, &qword_1EB2E8A68, &qword_1A8509F50);
    if (*(v36 + 16))
    {
      sub_1A84B4A18(0, 1);
      swift_endAccess();
      v39 = v46;
      sub_1A84B27EC(v34, v46, type metadata accessor for ImportExport.Message);
      v40 = v47;
      sub_1A84B28F4(v22 + *(v38 + 20), v47, type metadata accessor for ImportExport.Attachment);
      sub_1A84B29B0(v22, type metadata accessor for ImportExport.MessageAttachmentPair);
      v41 = type metadata accessor for ImportExport.AttachmentDownloader();
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      v44 = swift_allocObject();
      sub_1A84B27EC(v39, v44 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_message, type metadata accessor for ImportExport.Message);
      sub_1A84B27EC(v40, v44 + OBJC_IVAR____TtCO6IMCore12ImportExport20AttachmentDownloader_attachment, type metadata accessor for ImportExport.Attachment);
      *(v44 + 16) = v1;

      return v44;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A84B2F18()
{
  v1 = 0x656D686361747461;
  v2 = 0x736567617373656DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A84B2FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84B5578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84B2FD0(uint64_t a1)
{
  v2 = sub_1A84B4AD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84B300C(uint64_t a1)
{
  v2 = sub_1A84B4AD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ImportExport.AttachmentDownloadIterator.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t ImportExport.AttachmentDownloadIterator.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t ImportExport.AttachmentDownloadIterator.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8A70, &qword_1A8509F58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B4AD8();
  sub_1A84E68AC();
  v16 = v3[2];
  LOBYTE(v15) = 0;
  type metadata accessor for ImportExport.DownloadableAttachmentBatch(0);
  sub_1A84B2780(&qword_1EB2E7EA8, 255, type metadata accessor for ImportExport.DownloadableAttachmentBatch);
  sub_1A84E672C();
  if (!v2)
  {
    swift_beginAccess();
    v15 = v3[3];
    LOBYTE(v14) = 1;
    sub_1A83EA2FC(&qword_1EB2E8A10, &qword_1A8509F28);
    sub_1A84B2854(&qword_1EB2E8A18, &qword_1EB2E8A20);
    sub_1A84E672C();
    swift_beginAccess();
    v14 = v3[4];
    LOBYTE(v13) = 2;
    sub_1A83EA2FC(&qword_1EB2E8A80, &unk_1A8509F60);
    sub_1A84B4B4C();
    sub_1A84E672C();
    swift_beginAccess();
    v13 = v3[5];
    v12[15] = 3;
    sub_1A83EA2FC(&qword_1EB2E82F0, &qword_1A8507EC0);
    sub_1A8483824(&qword_1EB2E82F8);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImportExport.AttachmentDownloadIterator.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ImportExport.AttachmentDownloadIterator.init(from:)(a1);
  return v2;
}

void *ImportExport.AttachmentDownloadIterator.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v19 = *v1;
  v18 = sub_1A83EA2FC(&qword_1EB2E8A90, &qword_1A8509F70);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v17 - v7;
  v1[5] = MEMORY[0x1E69E7CD0];
  v9 = v1 + 5;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B4AD8();
  sub_1A84E689C();
  if (v2)
  {
    v13 = v1[5];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v5;
    type metadata accessor for ImportExport.DownloadableAttachmentBatch(0);
    LOBYTE(v21) = 0;
    sub_1A84B2780(&qword_1EB2E7EB8, 255, type metadata accessor for ImportExport.DownloadableAttachmentBatch);
    v12 = v18;
    sub_1A84E666C();
    v1[2] = v20;
    sub_1A83EA2FC(&qword_1EB2E8A10, &qword_1A8509F28);
    LOBYTE(v21) = 1;
    sub_1A84B2854(&qword_1EB2E8A38, &qword_1EB2E8A40);
    sub_1A84E666C();
    v1[3] = v20;
    sub_1A83EA2FC(&qword_1EB2E8A80, &unk_1A8509F60);
    LOBYTE(v21) = 2;
    sub_1A84B4C0C();
    sub_1A84E666C();
    v1[4] = v20;
    sub_1A83EA2FC(&qword_1EB2E82F0, &qword_1A8507EC0);
    LOBYTE(v20) = 3;
    sub_1A8483824(&qword_1EB2E8308);
    sub_1A84E666C();
    (*(v11 + 8))(v8, v12);
    v15 = v21;
    swift_beginAccess();
    v16 = *v9;
    *v9 = v15;
  }

  sub_1A8244788(a1);
  return v3;
}

uint64_t sub_1A84B3850@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ImportExport.AttachmentDownloadIterator.next()();
  *a1 = result;
  return result;
}

uint64_t sub_1A84B39AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  v14 = sub_1A84E56DC();
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  v15(v11, 1, 1, v14);
  v16 = type metadata accessor for ImportExport.Timer();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  v15((v19 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime), 1, 1, v14);
  v21 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
  v15((v19 + OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime), 1, 1, v14);
  swift_beginAccess();
  sub_1A843E9F0(v13, v19 + v20);
  swift_endAccess();
  swift_beginAccess();
  sub_1A843E9F0(v11, v19 + v21);
  swift_endAccess();
  *(v3 + 64) = v19;
  return v3;
}

unint64_t sub_1A84B3BA8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x436567617373656DLL;
    if (a1 != 3)
    {
      v6 = 0x656D686361747461;
    }

    if (a1 == 2)
    {
      v6 = 0xD000000000000019;
    }

    v7 = 0xD000000000000011;
    if (a1)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000010;
    v2 = 0xD000000000000016;
    if (a1 != 9)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    v4 = 0x72656D6974;
    if (a1 != 6)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A84B3D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84B56FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84B3D5C(uint64_t a1)
{
  v2 = sub_1A84B4CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84B3D98(uint64_t a1)
{
  v2 = sub_1A84B4CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.AttachmentDownloadBatchProgress.deinit()
{
  v1 = *(v0 + 64);

  return v0;
}

uint64_t ImportExport.AttachmentDownloadBatchProgress.__deallocating_deinit()
{
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t ImportExport.AttachmentDownloadBatchProgress.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8AA0, &qword_1A8509F78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B4CCC();
  sub_1A84E68AC();
  v11 = v3[2];
  v26 = 0;
  sub_1A84E671C();
  if (!v2)
  {
    v12 = v3[3];
    v26 = 1;
    sub_1A84E671C();
    v13 = v3[4];
    v26 = 2;
    sub_1A84E673C();
    swift_beginAccess();
    v14 = v3[5];
    v25 = 3;
    sub_1A84E671C();
    swift_beginAccess();
    v15 = v3[6];
    v24 = 4;
    sub_1A84E671C();
    swift_beginAccess();
    v16 = v3[7];
    LOBYTE(v23) = 5;
    sub_1A84E673C();
    v23 = v3[8];
    v22[15] = 6;
    type metadata accessor for ImportExport.Timer();
    sub_1A84B2780(&qword_1EB2E8288, 255, type metadata accessor for ImportExport.Timer);
    sub_1A84E672C();
    v17 = v3[9];
    LOBYTE(v23) = 7;
    sub_1A84E671C();
    v18 = v3[10];
    LOBYTE(v23) = 8;
    sub_1A84E671C();
    v19 = v3[11];
    LOBYTE(v23) = 9;
    sub_1A84E671C();
    v20 = v3[12];
    LOBYTE(v23) = 10;
    sub_1A84E671C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImportExport.AttachmentDownloadBatchProgress.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ImportExport.AttachmentDownloadBatchProgress.init(from:)(a1);
  return v2;
}

void *ImportExport.AttachmentDownloadBatchProgress.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v13 = *v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8AB0, &qword_1A8509F80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B4CCC();
  sub_1A84E689C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v15) = 0;
    v1[2] = sub_1A84E665C();
    LOBYTE(v15) = 1;
    v1[3] = sub_1A84E665C();
    LOBYTE(v15) = 2;
    v1[4] = sub_1A84E667C();
    LOBYTE(v15) = 3;
    v1[5] = sub_1A84E665C();
    LOBYTE(v15) = 4;
    v1[6] = sub_1A84E665C();
    LOBYTE(v15) = 5;
    v1[7] = sub_1A84E667C();
    type metadata accessor for ImportExport.Timer();
    v14 = 6;
    sub_1A84B2780(&qword_1EB2E82A0, 255, type metadata accessor for ImportExport.Timer);
    sub_1A84E666C();
    v1[8] = v15;
    LOBYTE(v15) = 7;
    v1[9] = sub_1A84E665C();
    LOBYTE(v15) = 8;
    v1[10] = sub_1A84E665C();
    LOBYTE(v15) = 9;
    v1[11] = sub_1A84E665C();
    LOBYTE(v15) = 10;
    v12 = sub_1A84E665C();
    (*(v6 + 8))(v9, v5);
    v3[12] = v12;
  }

  sub_1A8244788(a1);
  return v3;
}

uint64_t sub_1A84B45B8()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t sub_1A84B45F8()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 48);
}

uint64_t sub_1A84B4644()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t sub_1A84B46C0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X4>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = a2(a1);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_1A84B474C()
{
  type metadata accessor for ImportExport.AttachmentDownloadIterator();
  swift_allocObject();

  ImportExport.AttachmentDownloadIterator.init(withDownloadableAttachmentBatch:)(v0);
  result = ImportExport.AttachmentDownloadIterator.next()();
  v2 = MEMORY[0x1E69E7CC0];
  v3 = 0;
  if (result)
  {
    v4 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v3)
      {
        v5 = v2[3];
        if (((v5 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v6 = result;
        v7 = v5 & 0xFFFFFFFFFFFFFFFELL;
        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        sub_1A83EA2FC(&qword_1EB2E9060, &qword_1A850A730);
        v9 = swift_allocObject();
        v10 = j__malloc_size(v9);
        v11 = v10 - 32;
        if (v10 < 32)
        {
          v11 = v10 - 25;
        }

        v12 = v11 >> 3;
        v9[2] = v8;
        v9[3] = (2 * (v11 >> 3)) | 1;
        v13 = (v9 + 4);
        v14 = v2[3] >> 1;
        if (v2[2])
        {
          v15 = v2 + 4;
          if (v9 != v2 || v13 >= v15 + 8 * v14)
          {
            memmove(v9 + 4, v15, 8 * v14);
          }

          v2[2] = 0;
        }

        v4 = (v13 + 8 * v14);
        v3 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v2 = v9;
        result = v6;
      }

      v16 = __OFSUB__(v3--, 1);
      if (v16)
      {
        break;
      }

      *v4++ = result;
      result = ImportExport.AttachmentDownloadIterator.next()();
      if (!result)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_18:

  v17 = v2[3];
  if (v17 < 2)
  {
    return v2;
  }

  v18 = v17 >> 1;
  v16 = __OFSUB__(v18, v3);
  v19 = v18 - v3;
  if (!v16)
  {
    v2[2] = v19;
    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_1A84B48D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for ImportExport.MessageAttachmentPair(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1A84B4A18(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1A83EEBC4(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1A84B48D0(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1A84B4AD8()
{
  result = qword_1EB2E8A78;
  if (!qword_1EB2E8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8A78);
  }

  return result;
}

unint64_t sub_1A84B4B4C()
{
  result = qword_1EB2E8A88;
  if (!qword_1EB2E8A88)
  {
    sub_1A83EC9D4(&qword_1EB2E8A80, &unk_1A8509F60);
    sub_1A84B2780(&qword_1EB2E7800, 255, type metadata accessor for ImportExport.Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8A88);
  }

  return result;
}

unint64_t sub_1A84B4C0C()
{
  result = qword_1EB2E8A98;
  if (!qword_1EB2E8A98)
  {
    sub_1A83EC9D4(&qword_1EB2E8A80, &unk_1A8509F60);
    sub_1A84B2780(&qword_1EB2E7198, 255, type metadata accessor for ImportExport.Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8A98);
  }

  return result;
}

unint64_t sub_1A84B4CCC()
{
  result = qword_1EB2E8AA8;
  if (!qword_1EB2E8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8AA8);
  }

  return result;
}

uint64_t sub_1A84B4D70()
{
  result = type metadata accessor for ImportExport.ExportOptions();
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

uint64_t sub_1A84B4E84()
{
  result = type metadata accessor for ImportExport.Message();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ImportExport.Attachment();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A84B4FE0()
{
  result = qword_1EB2E8AE0;
  if (!qword_1EB2E8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8AE0);
  }

  return result;
}

unint64_t sub_1A84B5038()
{
  result = qword_1EB2E8AE8;
  if (!qword_1EB2E8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8AE8);
  }

  return result;
}

unint64_t sub_1A84B5090()
{
  result = qword_1EB2E8AF0;
  if (!qword_1EB2E8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8AF0);
  }

  return result;
}

unint64_t sub_1A84B50E8()
{
  result = qword_1EB2E8AF8;
  if (!qword_1EB2E8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8AF8);
  }

  return result;
}

unint64_t sub_1A84B5140()
{
  result = qword_1EB2E8B00;
  if (!qword_1EB2E8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B00);
  }

  return result;
}

unint64_t sub_1A84B5198()
{
  result = qword_1EB2E8B08;
  if (!qword_1EB2E8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B08);
  }

  return result;
}

unint64_t sub_1A84B51F0()
{
  result = qword_1EB2E8B10;
  if (!qword_1EB2E8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B10);
  }

  return result;
}

unint64_t sub_1A84B5248()
{
  result = qword_1EB2E8B18;
  if (!qword_1EB2E8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B18);
  }

  return result;
}

unint64_t sub_1A84B52A0()
{
  result = qword_1EB2E8B20;
  if (!qword_1EB2E8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B20);
  }

  return result;
}

unint64_t sub_1A84B52F8()
{
  result = qword_1EB2E8B28;
  if (!qword_1EB2E8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B28);
  }

  return result;
}

unint64_t sub_1A84B5350()
{
  result = qword_1EB2E8B30;
  if (!qword_1EB2E8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B30);
  }

  return result;
}

unint64_t sub_1A84B53A8()
{
  result = qword_1EB2E8B38;
  if (!qword_1EB2E8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B38);
  }

  return result;
}

uint64_t sub_1A84B53FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x704F74726F707865 && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8533BD0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8531D60 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A84B5578(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001A8533C40 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEF6575657551746ELL || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8533C70 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1A84E67AC();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A84B56FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001A8532AA0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8532B80 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A8533CD0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436567617373656DLL && a2 == 0xEC000000746E756FLL || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEF746E756F43746ELL || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8531E20 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8531E40 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8531E60 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8533D10 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A8533D30 == a2)
  {

    return 10;
  }

  else
  {
    v5 = sub_1A84E67AC();

    if (v5)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1A84B5AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.ExportOptions();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ImportExport.ArchivingOptions.exportDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImportExport.ArchivingOptions() + 20);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ImportExport.ArchivingOptions()
{
  result = qword_1EB2E4690;
  if (!qword_1EB2E4690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.ArchivingOptions.exportDirectoryURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ImportExport.ArchivingOptions() + 20);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1A84B5CD4()
{
  v0 = sub_1A84E52BC();
  sub_1A82442B8(v0, qword_1EB2E8B40);
  sub_1A824431C(v0, qword_1EB2E8B40);
  sub_1A83EA2FC(&qword_1EB2E8B88, &qword_1A850A8D8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_1A8501390;
  sub_1A84E528C();
  sub_1A84E527C();
  sub_1A84B7544(&qword_1EB2E8B90, MEMORY[0x1E6967F78]);
  sub_1A83EA2FC(&qword_1EB2E8B98, &qword_1A850A8E0);
  sub_1A84B758C();
  return sub_1A84E63CC();
}

uint64_t static ImportExport.ArchivingOptions.defaultJsonFormatting.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E59F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A84E52BC();
  v3 = sub_1A824431C(v2, qword_1EB2E8B40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ImportExport.ArchivingOptions.jsonFormatting.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.ArchivingOptions() + 24));

  return sub_1A84E529C();
}

uint64_t sub_1A84B5F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A84E52BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = sub_1A84E52AC();
  (*(v5 + 8))(v8, v4);
  result = type metadata accessor for ImportExport.ArchivingOptions();
  *(a2 + *(result + 24)) = v9;
  return result;
}

uint64_t ImportExport.ArchivingOptions.jsonFormatting.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A84E52AC();
  v5 = sub_1A84E52BC();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = type metadata accessor for ImportExport.ArchivingOptions();
  *(v2 + *(result + 24)) = v4;
  return result;
}

void (*ImportExport.ArchivingOptions.jsonFormatting.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1A84E52BC();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v10 = *(type metadata accessor for ImportExport.ArchivingOptions() + 24);
  *(v5 + 10) = v10;
  v11 = *(v1 + v10);
  sub_1A84E529C();
  return sub_1A84B61C4;
}

void sub_1A84B61C4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    (*(v7 + 16))((*a1)[3], v5, v6);
    v9 = sub_1A84E52AC();
    v10 = *(v7 + 8);
    v10(v4, v6);
    *(v8 + v3) = v9;
    v10(v5, v6);
  }

  else
  {
    v11 = (*a1)[4];
    v12 = sub_1A84E52AC();
    (*(v7 + 8))(v5, v6);
    *(v8 + v3) = v12;
  }

  free(v5);
  free(v4);

  free(v2);
}

uint64_t ImportExport.ArchivingOptions.init(withExportExportDirectoryURL:exportOptions:jsonFormatting:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1A84E54AC();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A84E56DC();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v49 - v17;
  v19 = sub_1A84E558C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v49 - v25;
  v57 = a2;
  sub_1A84B7114(a2, a4, type metadata accessor for ImportExport.ExportOptions);
  v55 = a3;
  v27 = sub_1A84E52AC();
  v54 = type metadata accessor for ImportExport.ArchivingOptions();
  v28 = *(v54 + 24);
  v56 = a4;
  *(a4 + v28) = v27;
  v58 = a1;
  sub_1A84580FC(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1A8496E7C(v18);
    v29 = [objc_opt_self() defaultManager];
    v30 = [v29 temporaryDirectory];

    v31 = v24;
    sub_1A84E554C();

    v65 = 0;
    v66 = 0xE000000000000000;
    sub_1A84E646C();

    v65 = 0xD000000000000016;
    v66 = 0x80000001A8533D50;
    v32 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
    sub_1A84E56CC();
    v33 = sub_1A84E565C();
    (*(v49 + 8))(v14, v50);
    v34 = [v32 stringFromDate_];

    v35 = sub_1A84E5DBC();
    v37 = v36;

    v63 = v35;
    v64 = v37;
    v61 = 58;
    v62 = 0xE100000000000000;
    v59 = 45;
    v60 = 0xE100000000000000;
    sub_1A840D3B0();
    v38 = sub_1A84E637C();
    v40 = v39;

    MEMORY[0x1AC56A990](v38, v40);

    v42 = v51;
    v41 = v52;
    v43 = v53;
    (*(v52 + 104))(v51, *MEMORY[0x1E6968F70], v53);
    v44 = v56 + *(v54 + 20);
    sub_1A84E557C();
    v45 = sub_1A84E52BC();
    (*(*(v45 - 8) + 8))(v55, v45);
    sub_1A84B717C(v57, type metadata accessor for ImportExport.ExportOptions);
    sub_1A8496E7C(v58);
    (*(v41 + 8))(v42, v43);

    return (*(v20 + 8))(v31, v19);
  }

  else
  {
    v47 = sub_1A84E52BC();
    (*(*(v47 - 8) + 8))(v55, v47);
    sub_1A84B717C(v57, type metadata accessor for ImportExport.ExportOptions);
    sub_1A8496E7C(v58);
    v48 = *(v20 + 32);
    v48(v26, v18, v19);
    return (v48)(v56 + *(v54 + 20), v26, v19);
  }
}

uint64_t sub_1A84B68A4()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x704F74726F707865;
  }
}

uint64_t sub_1A84B6910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84B7418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84B6938(uint64_t a1)
{
  v2 = sub_1A84B6BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84B6974(uint64_t a1)
{
  v2 = sub_1A84B6BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchivingOptions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8B58, &qword_1A850A738);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B6BE0();
  sub_1A84E68AC();
  v15[15] = 0;
  type metadata accessor for ImportExport.ExportOptions();
  sub_1A84B7544(&qword_1EB2E7D10, type metadata accessor for ImportExport.ExportOptions);
  sub_1A84E672C();
  if (!v2)
  {
    v11 = type metadata accessor for ImportExport.ArchivingOptions();
    v12 = *(v11 + 20);
    v15[14] = 1;
    sub_1A84E558C();
    sub_1A84B7544(&qword_1EB2E7200, MEMORY[0x1E6968FB0]);
    sub_1A84E672C();
    v13 = *(v3 + *(v11 + 24));
    v15[13] = 2;
    sub_1A84E671C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A84B6BE0()
{
  result = qword_1EB2E8B60;
  if (!qword_1EB2E8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B60);
  }

  return result;
}

uint64_t ImportExport.ArchivingOptions.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1A84E558C();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImportExport.ExportOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1A83EA2FC(&qword_1EB2E8B68, &qword_1A850A740);
  v32 = *(v37 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v29 - v11;
  v13 = type metadata accessor for ImportExport.ArchivingOptions();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84B6BE0();
  v36 = v12;
  v18 = v38;
  sub_1A84E689C();
  if (v18)
  {
    return sub_1A8244788(a1);
  }

  v30 = v13;
  v38 = a1;
  v19 = v16;
  v21 = v32;
  v20 = v33;
  v22 = v34;
  v41 = 0;
  sub_1A84B7544(&qword_1EB2E7D40, type metadata accessor for ImportExport.ExportOptions);
  sub_1A84E666C();
  sub_1A84B70B0(v35, v19);
  v40 = 1;
  sub_1A84B7544(&qword_1EB2E7218, MEMORY[0x1E6968FB0]);
  sub_1A84E666C();
  (*(v20 + 32))(v19 + *(v30 + 20), v6, v22);
  v39 = 2;
  v23 = v36;
  v24 = sub_1A84E665C();
  v25 = v38;
  v26 = v24;
  (*(v21 + 8))(v23, v37);
  v27 = v31;
  *(v19 + *(v30 + 24)) = v26;
  sub_1A84B7114(v19, v27, type metadata accessor for ImportExport.ArchivingOptions);
  sub_1A8244788(v25);
  return sub_1A84B717C(v19, type metadata accessor for ImportExport.ArchivingOptions);
}

uint64_t sub_1A84B70B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.ExportOptions();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A84B7114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84B717C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A84B7234()
{
  result = type metadata accessor for ImportExport.ExportOptions();
  if (v1 <= 0x3F)
  {
    result = sub_1A84E558C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A84B72D4()
{
  result = qword_1EB2E8B70;
  if (!qword_1EB2E8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B70);
  }

  return result;
}

unint64_t sub_1A84B732C()
{
  result = qword_1EB2E8B78;
  if (!qword_1EB2E8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B78);
  }

  return result;
}

unint64_t sub_1A84B7384()
{
  result = qword_1EB2E8B80;
  if (!qword_1EB2E8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8B80);
  }

  return result;
}

uint64_t sub_1A84B73D8()
{
  v0 = sub_1A84E52FC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1A84E52EC();
  qword_1EB2FF3B8 = result;
  return result;
}

uint64_t sub_1A84B7418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x704F74726F707865 && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8533D70 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8533D90 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A84B7544(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A84B758C()
{
  result = qword_1EB2E8BA0;
  if (!qword_1EB2E8BA0)
  {
    sub_1A83EC9D4(&qword_1EB2E8B98, &qword_1A850A8E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8BA0);
  }

  return result;
}

uint64_t sub_1A84B77C8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A84BC37C;

  return sub_1A84B9878(v6);
}

uint64_t sub_1A84B7A24(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A84B7AF8;

  return sub_1A84BA620(v6);
}

uint64_t sub_1A84B7AF8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v0)
  {
    if (v5)
    {
      v10 = *(v3 + 32);
      v11 = sub_1A84E547C();

      v10[2](v10, 0, v11);
      v12 = v10;
LABEL_6:
      _Block_release(v12);

      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      v13 = *(v3 + 32);
      type metadata accessor for IMPollOption(v9);
      v11 = sub_1A84E5FEC();

      v13[2](v13, v11, 0);
      v12 = v13;
      goto LABEL_6;
    }
  }

LABEL_9:
  v14 = *(v8 + 8);

  return v14();
}

uint64_t sub_1A84B7E70(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1A84B7F44;

  return sub_1A84BB1EC(v6);
}

uint64_t sub_1A84B7F44()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v0)
  {
    if (v5)
    {
      v9 = *(v3 + 32);
      v10 = sub_1A84E547C();

      v9[2](v9, 0, v10);
      v11 = v9;
LABEL_6:
      _Block_release(v11);

      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      v12 = *(v3 + 32);
      sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
      sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
      sub_1A84BC050();
      v10 = sub_1A84E5D2C();

      v12[2](v12, v10, 0);
      v11 = v12;
      goto LABEL_6;
    }
  }

LABEL_9:
  v13 = *(v8 + 8);

  return v13();
}

id sub_1A84B81FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_1A84E5D8C();

  return v6;
}

id _sSo12IMPollHelperC6IMCoreEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A84B8434()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A824FBE0;

  return sub_1A84B7E70(v2, v3, v4);
}

unsigned __int8 *sub_1A84B84E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1A84E5F4C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1A84B8A74();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1A84E64CC();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1A84B8A74()
{
  v0 = sub_1A84E5F5C();
  v4 = sub_1A84B8AF4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1A84B8AF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1A84E5E4C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1A84E634C();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1A8243F5C(v9, 0);
  v12 = sub_1A84B8C4C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1A84E5E4C();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1A84E64CC();
LABEL_4:

  return sub_1A84E5E4C();
}

unint64_t sub_1A84B8C4C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1A84B8E6C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1A84E5EEC();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1A84E64CC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1A84B8E6C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1A84E5ECC();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1A84B8E6C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1A84E5EFC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1AC56A9D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1A84B8EE8(void *a1)
{
  v87 = sub_1A84E538C();
  v2 = *(v87 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v87);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v82 = &v79 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v79 - v9;
  v10 = sub_1A83EA2FC(&qword_1EB2E8C38, &qword_1A850A9A8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v79 - v12;
  v14 = sub_1A84E53BC();
  v86 = *(v14 - 8);
  v15 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A84E558C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 dataSource];
  if (!result)
  {
    goto LABEL_100;
  }

  v22 = result;
  v23 = [result bundleID];

  if (!v23)
  {
    return 0;
  }

  v80 = v18;
  v81 = v14;
  v24 = sub_1A84E5DBC();
  v26 = v25;

  v27 = *MEMORY[0x1E69A6928];
  v28 = IMBalloonExtensionIDWithSuffix();
  if (!v28)
  {
    goto LABEL_12;
  }

  v29 = v28;
  v79 = v17;
  v30 = sub_1A84E5DBC();
  v32 = v31;

  if (v24 == v30 && v26 == v32)
  {

    goto LABEL_8;
  }

  v33 = sub_1A84E67AC();

  if ((v33 & 1) == 0)
  {
LABEL_12:

    return 0;
  }

LABEL_8:
  result = [a1 dataSource];
  if (!result)
  {
LABEL_101:
    __break(1u);
    return result;
  }

  v34 = result;

  v35 = [v34 url];

  v36 = v79;
  if (!v35)
  {
    return 0;
  }

  v37 = v85;
  sub_1A84E554C();

  sub_1A84E53AC();
  v38 = v86;
  v39 = v81;
  if ((*(v86 + 48))(v13, 1, v81) == 1)
  {
    (*(v80 + 8))(v37, v36);
    sub_1A824B2D4(v13, &qword_1EB2E8C38, &qword_1A850A9A8);
    return 0;
  }

  v40 = v84;
  (*(v38 + 32))(v84, v13, v39);
  v41 = sub_1A84E539C();
  if (!v41)
  {
    (*(v38 + 8))(v40, v39);
    (*(v80 + 8))(v37, v36);
    return 0;
  }

  v42 = v41;
  v43 = *(v41 + 16);
  v44 = v87;
  if (!v43)
  {
LABEL_22:

    (*(v86 + 8))(v84, v81);
    (*(v80 + 8))(v85, v79);
    return 0;
  }

  v45 = 0;
  v46 = (v2 + 16);
  v47 = (v2 + 8);
  while (1)
  {
    if (v45 >= *(v42 + 16))
    {
      __break(1u);
      goto LABEL_93;
    }

    (*(v2 + 16))(v6, v42 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v45, v44);
    if (sub_1A84E536C() == 99 && v48 == 0xE100000000000000)
    {

      goto LABEL_26;
    }

    v49 = sub_1A84E67AC();

    if (v49)
    {
      break;
    }

    ++v45;
    v44 = v87;
    (*v47)(v6, v87);
    if (v43 == v45)
    {
      goto LABEL_22;
    }
  }

  v44 = v87;
LABEL_26:

  v50 = *(v2 + 32);
  v51 = v82;
  v50(v82, v6, v44);
  v46 = v83;
  v50(v83, v51, v44);
  result = sub_1A84E537C();
  v2 = v79;
  v43 = v80;
  v45 = v81;
  if (!v52)
  {
    (*v47)(v46, v44);
    (*(v86 + 8))(v84, v45);
    (*(v43 + 8))(v85, v2);
    return 0;
  }

  v53 = v52;
  v54 = HIBYTE(v52) & 0xF;
  v55 = result & 0xFFFFFFFFFFFFLL;
  if ((v53 & 0x2000000000000000) != 0)
  {
    v56 = v54;
  }

  else
  {
    v56 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v56)
  {
LABEL_93:
    (*v47)(v46, v44);
    (*(v86 + 8))(v84, v45);
    (*(v43 + 8))(v85, v2);
    goto LABEL_12;
  }

  if ((v53 & 0x1000000000000000) != 0)
  {
    v89 = 0;
    v59 = sub_1A84B84E8(result, v53, 10);
    v77 = v78;
    v57 = v84;
    goto LABEL_90;
  }

  v57 = v84;
  if ((v53 & 0x2000000000000000) != 0)
  {
    v88[0] = result;
    v88[1] = v53 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (!v54)
      {
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      if (--v54)
      {
        v59 = 0;
        v69 = v88 + 1;
        while (1)
        {
          v70 = *v69 - 48;
          if (v70 > 9)
          {
            break;
          }

          v71 = 10 * v59;
          if ((v59 * 10) >> 64 != (10 * v59) >> 63)
          {
            break;
          }

          v59 = v71 + v70;
          if (__OFADD__(v71, v70))
          {
            break;
          }

          ++v69;
          if (!--v54)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else if (result == 45)
    {
      if (!v54)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      if (--v54)
      {
        v59 = 0;
        v63 = v88 + 1;
        while (1)
        {
          v64 = *v63 - 48;
          if (v64 > 9)
          {
            break;
          }

          v65 = 10 * v59;
          if ((v59 * 10) >> 64 != (10 * v59) >> 63)
          {
            break;
          }

          v59 = v65 - v64;
          if (__OFSUB__(v65, v64))
          {
            break;
          }

          ++v63;
          if (!--v54)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else if (v54)
    {
      v59 = 0;
      v74 = v88;
      while (1)
      {
        v75 = *v74 - 48;
        if (v75 > 9)
        {
          break;
        }

        v76 = 10 * v59;
        if ((v59 * 10) >> 64 != (10 * v59) >> 63)
        {
          break;
        }

        v59 = v76 + v75;
        if (__OFADD__(v76, v75))
        {
          break;
        }

        ++v74;
        if (!--v54)
        {
          goto LABEL_89;
        }
      }
    }

LABEL_88:
    v59 = 0;
    LOBYTE(v54) = 1;
    goto LABEL_89;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v53 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1A84E64CC();
  }

  v58 = *result;
  if (v58 == 43)
  {
    if (v55 < 1)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v54 = v55 - 1;
    if (v55 == 1)
    {
      goto LABEL_88;
    }

    v59 = 0;
    if (!result)
    {
      goto LABEL_80;
    }

    v66 = (result + 1);
    while (1)
    {
      v67 = *v66 - 48;
      if (v67 > 9)
      {
        goto LABEL_88;
      }

      v68 = 10 * v59;
      if ((v59 * 10) >> 64 != (10 * v59) >> 63)
      {
        goto LABEL_88;
      }

      v59 = v68 + v67;
      if (__OFADD__(v68, v67))
      {
        goto LABEL_88;
      }

      ++v66;
      if (!--v54)
      {
        goto LABEL_89;
      }
    }
  }

  if (v58 != 45)
  {
    if (!v55)
    {
      goto LABEL_88;
    }

    v59 = 0;
    if (!result)
    {
      goto LABEL_80;
    }

    while (1)
    {
      v72 = *result - 48;
      if (v72 > 9)
      {
        goto LABEL_88;
      }

      v73 = 10 * v59;
      if ((v59 * 10) >> 64 != (10 * v59) >> 63)
      {
        goto LABEL_88;
      }

      v59 = v73 + v72;
      if (__OFADD__(v73, v72))
      {
        goto LABEL_88;
      }

      ++result;
      if (!--v55)
      {
        goto LABEL_80;
      }
    }
  }

  if (v55 < 1)
  {
    __break(1u);
    goto LABEL_97;
  }

  v54 = v55 - 1;
  if (v55 == 1)
  {
    goto LABEL_88;
  }

  v59 = 0;
  if (result)
  {
    v60 = (result + 1);
    while (1)
    {
      v61 = *v60 - 48;
      if (v61 > 9)
      {
        goto LABEL_88;
      }

      v62 = 10 * v59;
      if ((v59 * 10) >> 64 != (10 * v59) >> 63)
      {
        goto LABEL_88;
      }

      v59 = v62 - v61;
      if (__OFSUB__(v62, v61))
      {
        goto LABEL_88;
      }

      ++v60;
      if (!--v54)
      {
        goto LABEL_89;
      }
    }
  }

LABEL_80:
  LOBYTE(v54) = 0;
LABEL_89:
  v89 = v54;
  v77 = v54;
LABEL_90:
  (*v47)(v46, v87);
  (*(v86 + 8))(v57, v81);
  (*(v80 + 8))(v85, v2);

  result = v59;
  if (v77)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A84B9878(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_1A83EA2FC(&qword_1EB2E8C00, &qword_1A850A938) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_1A84E546C();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v6 = sub_1A84E593C();
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64) + 15;
  v1[11] = swift_task_alloc();
  v9 = *(*(sub_1A83EA2FC(&qword_1EB2E8C08, &qword_1A850A940) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v10 = sub_1A84E5A3C();
  v1[13] = v10;
  v11 = *(v10 - 8);
  v1[14] = v11;
  v12 = *(v11 + 64) + 15;
  v1[15] = swift_task_alloc();
  v13 = sub_1A83EA2FC(&qword_1EB2E8C10, &qword_1A850A948);
  v1[16] = v13;
  v14 = *(v13 - 8);
  v1[17] = v14;
  v15 = *(v14 + 64) + 15;
  v1[18] = swift_task_alloc();
  v16 = sub_1A84E558C();
  v1[19] = v16;
  v17 = *(v16 - 8);
  v1[20] = v17;
  v18 = *(v17 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84B9B48, 0, 0);
}

uint64_t sub_1A84B9B48()
{
  *(v0 + 184) = sub_1A84E609C();
  *(v0 + 192) = sub_1A84E608C();
  v2 = sub_1A84E605C();

  return MEMORY[0x1EEE6DFA0](sub_1A84B9BE0, v2, v1);
}

uint64_t sub_1A84B9BE0()
{
  v1 = v0[24];
  v2 = v0[2];

  v0[25] = [v2 dataSource];

  return MEMORY[0x1EEE6DFA0](sub_1A84B9C68, 0, 0);
}

uint64_t sub_1A84B9C68(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 200);
  if (!v4)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  v5 = [*(v3 + 200) bundleID];

  if (v5)
  {
    v6 = sub_1A84E5DBC();
    v8 = v7;

    *(v3 + 208) = v8;
    v9 = *MEMORY[0x1E69A6928];
    v10 = IMBalloonExtensionIDWithSuffix();
    if (!v10)
    {
LABEL_9:

      goto LABEL_10;
    }

    v11 = v10;
    v12 = sub_1A84E5DBC();
    v14 = v13;

    if (v6 == v12 && v8 == v14)
    {
    }

    else
    {
      v16 = sub_1A84E67AC();

      if ((v16 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v30 = *(v3 + 184);
    *(v3 + 216) = sub_1A84E608C();
    v31 = sub_1A84E605C();
    v33 = v32;
    a1 = sub_1A84B9E84;
    a2 = v31;
    a3 = v33;

    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

LABEL_10:
  v18 = *(v3 + 168);
  v17 = *(v3 + 176);
  v19 = *(v3 + 144);
  v20 = *(v3 + 120);
  v22 = *(v3 + 88);
  v21 = *(v3 + 96);
  v24 = *(v3 + 56);
  v23 = *(v3 + 64);
  v25 = *(v3 + 48);
  v26 = *(v3 + 24);

  v27 = *(v3 + 8);
  v28 = MEMORY[0x1E69E7CC0];

  return v27(v28);
}

uint64_t sub_1A84B9E84()
{
  v1 = v0[27];
  v2 = v0[2];

  v0[28] = [v2 dataSource];

  return MEMORY[0x1EEE6DFA0](sub_1A84B9F0C, 0, 0);
}

void sub_1A84B9F0C()
{
  v1 = v0[28];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v0[26];

  v3 = [v1 url];

  if (v3)
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[19];
    v7 = v0[20];
    v8 = v0[18];
    v9 = v0[16];
    v11 = v0[12];
    v10 = v0[13];
    sub_1A84E554C();

    (*(v7 + 32))(v4, v5, v6);
    v12 = MEMORY[0x1E69A6708];
    sub_1A84BC0B8(&qword_1EB2E8C18, MEMORY[0x1E69A6708]);
    sub_1A84BC0B8(&qword_1EB2E8C20, v12);
    sub_1A84E5ACC();
    sub_1A84E5ABC();
    v13 = v0[13];
    v14 = v0[14];
    v15 = v0[12];
    if ((*(v14 + 48))(v15, 1, v13) != 1)
    {
      (*(v14 + 32))(v0[15], v15, v13);
      v33 = sub_1A84E5A2C();
      v75 = MEMORY[0x1E69E7CC0];
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = v0[10];
        v37 = *(v35 + 16);
        v35 += 16;
        v36 = v37;
        v38 = v33 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
        v39 = v0[5];
        v69 = (v39 + 48);
        v65 = (v39 + 16);
        v66 = (v39 + 32);
        v64 = (v39 + 8);
        v71 = (v35 - 8);
        v40 = MEMORY[0x1E69E7CC0];
        v72 = *(v35 + 56);
        v70 = v37;
        v37(v0[11], v38, v0[9]);
        while (1)
        {
          sub_1A84E591C();
          if (v41)
          {
            sub_1A84E592C();
            if (v42)
            {
              v44 = v0[3];
              v43 = v0[4];
              sub_1A84E590C();
              if ((*v69)(v44, 1, v43) == 1)
              {
                v45 = v0[3];
                (*v71)(v0[11], v0[9]);

                sub_1A824B2D4(v45, &qword_1EB2E8C00, &qword_1A850A938);
                v36 = v70;
              }

              else
              {
                v74 = v40;
                v47 = v0[7];
                v46 = v0[8];
                v48 = v0[4];
                (*v66)(v46, v0[3], v48);
                sub_1A8244B68(0, &qword_1EB2E8C28, 0x1E696AAB0);
                (*v65)(v47, v46, v48);
                swift_getKeyPath();
                sub_1A84E543C();
                sub_1A84BC0B8(&qword_1EB2E8C30, MEMORY[0x1E69A6638]);
                v49 = sub_1A84E626C();
                v50 = v0[8];
                v67 = v0[9];
                v68 = v0[11];
                v51 = v0[4];
                v52 = objc_allocWithZone(IMPollOption);
                v53 = sub_1A84E5D8C();

                v54 = sub_1A84E5D8C();

                v55 = [v52 initWithOptionIdentifier:v53 pollText:v54 attributedPollText:v49];

                (*v64)(v50, v51);
                v56 = (*v71)(v68, v67);
                v40 = v74;
                v36 = v70;
                if (v55)
                {
                  MEMORY[0x1AC56AAD0](v56);
                  if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v57 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_1A84E601C();
                    v36 = v70;
                  }

                  sub_1A84E603C();
                  v40 = v75;
                }
              }
            }

            else
            {
              (*v71)(v0[11], v0[9]);
            }
          }

          else
          {
            (*v71)(v0[11], v0[9]);
          }

          v38 += v72;
          if (!--v34)
          {
            break;
          }

          v36(v0[11], v38, v0[9]);
        }
      }

      else
      {

        v40 = MEMORY[0x1E69E7CC0];
      }

      v73 = v40;
      v58 = v0[22];
      v59 = v0[19];
      v60 = v0[20];
      v62 = v0[17];
      v61 = v0[18];
      v63 = v0[16];
      (*(v0[14] + 8))(v0[15], v0[13]);
      (*(v62 + 8))(v61, v63);
      (*(v60 + 8))(v58, v59);
      goto LABEL_6;
    }

    v16 = v0[22];
    v17 = v0[19];
    v18 = v0[20];
    v20 = v0[17];
    v19 = v0[18];
    v21 = v0[16];
    sub_1A824B2D4(v15, &qword_1EB2E8C08, &qword_1A850A940);
    (*(v20 + 8))(v19, v21);
    (*(v18 + 8))(v16, v17);
  }

  v73 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v23 = v0[21];
  v22 = v0[22];
  v24 = v0[18];
  v25 = v0[15];
  v27 = v0[11];
  v26 = v0[12];
  v29 = v0[7];
  v28 = v0[8];
  v30 = v0[6];
  v31 = v0[3];

  v32 = v0[1];

  v32(v73);
}

uint64_t sub_1A84BA620(uint64_t a1)
{
  v1[13] = a1;
  v2 = *(*(sub_1A83EA2FC(&qword_1EB2E8C00, &qword_1A850A938) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v3 = sub_1A84E546C();
  v1[15] = v3;
  v4 = *(v3 - 8);
  v1[16] = v4;
  v5 = *(v4 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v6 = sub_1A84E593C();
  v1[20] = v6;
  v7 = *(v6 - 8);
  v1[21] = v7;
  v8 = *(v7 + 64) + 15;
  v1[22] = swift_task_alloc();
  v9 = *(*(sub_1A83EA2FC(&qword_1EB2E8C08, &qword_1A850A940) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v10 = sub_1A84E5A3C();
  v1[24] = v10;
  v11 = *(v10 - 8);
  v1[25] = v11;
  v12 = *(v11 + 64) + 15;
  v1[26] = swift_task_alloc();
  v13 = sub_1A83EA2FC(&qword_1EB2E8C10, &qword_1A850A948);
  v1[27] = v13;
  v14 = *(v13 - 8);
  v1[28] = v14;
  v15 = *(v14 + 64) + 15;
  v1[29] = swift_task_alloc();
  v16 = *(*(sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0) - 8) + 64) + 15;
  v1[30] = swift_task_alloc();
  v17 = sub_1A84E558C();
  v1[31] = v17;
  v18 = *(v17 - 8);
  v1[32] = v18;
  v19 = *(v18 + 64) + 15;
  v1[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84BA91C, 0, 0);
}

uint64_t sub_1A84BA91C()
{
  v1 = [*(v0 + 104) pluginBundleID];
  if (!v1)
  {
    goto LABEL_18;
  }

  v2 = v1;
  v3 = sub_1A84E5DBC();
  v5 = v4;

  v6 = *MEMORY[0x1E69A6928];
  v7 = IMBalloonExtensionIDWithSuffix();
  if (!v7)
  {

LABEL_18:
    v95 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v8 = v7;
  v9 = sub_1A84E5DBC();
  v11 = v10;

  if (v3 == v9 && v5 == v11)
  {
  }

  else
  {
    v13 = sub_1A84E67AC();

    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v14 = [*(v0 + 104) payloadDictionary];
  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    v95 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v16 = v14;
  v17 = sub_1A84E5D3C();

  v18 = *MEMORY[0x1E69A6F10];
  *(v0 + 88) = sub_1A84E5DBC();
  *(v0 + 96) = v19;
  sub_1A84E641C();
  if (!*(v17 + 16) || (v20 = sub_1A8250C0C(v0 + 16), (v21 & 1) == 0))
  {
    v34 = *(v0 + 248);
    v35 = *(v0 + 256);
    v36 = *(v0 + 240);

    sub_1A8250D18(v0 + 16);
    (*(v35 + 56))(v36, 1, 1, v34);
    goto LABEL_17;
  }

  v22 = *(v0 + 248);
  v23 = *(v0 + 256);
  v24 = *(v0 + 240);
  sub_1A8244F40(*(v17 + 56) + 32 * v20, v0 + 56);
  sub_1A8250D18(v0 + 16);

  v25 = swift_dynamicCast();
  (*(v23 + 56))(v24, v25 ^ 1u, 1, v22);
  if ((*(v23 + 48))(v24, 1, v22) == 1)
  {
LABEL_17:
    sub_1A824B2D4(*(v0 + 240), &qword_1EB2E7068, &unk_1A8501EB0);
    goto LABEL_18;
  }

  v26 = *(v0 + 232);
  v27 = *(v0 + 216);
  v29 = *(v0 + 184);
  v28 = *(v0 + 192);
  (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 240), *(v0 + 248));
  v30 = MEMORY[0x1E69A6708];
  sub_1A84BC0B8(&qword_1EB2E8C18, MEMORY[0x1E69A6708]);
  sub_1A84BC0B8(&qword_1EB2E8C20, v30);
  sub_1A84E5ACC();
  sub_1A84E5ABC();
  v32 = *(v0 + 192);
  v31 = *(v0 + 200);
  v33 = *(v0 + 184);
  v49 = (*(v31 + 48))(v33, 1, v32);
  if (v49 == 1)
  {
    v51 = *(v0 + 256);
    v50 = *(v0 + 264);
    v52 = *(v0 + 248);
    v54 = *(v0 + 224);
    v53 = *(v0 + 232);
    v55 = *(v0 + 216);
    sub_1A824B2D4(v33, &qword_1EB2E8C08, &qword_1A850A940);
    (*(v54 + 8))(v53, v55);
    (*(v51 + 8))(v50, v52);
    goto LABEL_18;
  }

  (*(v31 + 32))(*(v0 + 208), v33, v32);
  v56 = sub_1A84E5A2C();
  v97 = v15;
  v57 = *(v56 + 16);
  if (v57)
  {
    v58 = *(v0 + 168);
    v60 = *(v58 + 16);
    v58 += 16;
    v59 = v60;
    v61 = v56 + ((*(v58 + 64) + 32) & ~*(v58 + 64));
    v62 = *(v0 + 128);
    v91 = (v62 + 48);
    v87 = (v62 + 16);
    v88 = (v62 + 32);
    v86 = (v62 + 8);
    v93 = *(v58 + 56);
    v94 = (v58 - 8);
    v92 = v60;
    v60(*(v0 + 176), v61, *(v0 + 160));
    while (1)
    {
      sub_1A84E591C();
      if (v63)
      {
        sub_1A84E592C();
        if (v64)
        {
          v66 = *(v0 + 112);
          v65 = *(v0 + 120);
          sub_1A84E590C();
          if ((*v91)(v66, 1, v65) == 1)
          {
            v67 = *(v0 + 112);
            (*v94)(*(v0 + 176), *(v0 + 160));

            sub_1A824B2D4(v67, &qword_1EB2E8C00, &qword_1A850A938);
            v59 = v92;
          }

          else
          {
            v96 = v15;
            v69 = *(v0 + 144);
            v68 = *(v0 + 152);
            v70 = *(v0 + 120);
            (*v88)(v68, *(v0 + 112), v70);
            sub_1A8244B68(0, &qword_1EB2E8C28, 0x1E696AAB0);
            (*v87)(v69, v68, v70);
            swift_getKeyPath();
            sub_1A84E543C();
            sub_1A84BC0B8(&qword_1EB2E8C30, MEMORY[0x1E69A6638]);
            v71 = sub_1A84E626C();
            v72 = *(v0 + 152);
            v89 = *(v0 + 160);
            v90 = *(v0 + 176);
            v73 = *(v0 + 120);
            v74 = objc_allocWithZone(IMPollOption);
            v75 = sub_1A84E5D8C();

            v76 = sub_1A84E5D8C();

            v77 = [v74 initWithOptionIdentifier:v75 pollText:v76 attributedPollText:v71];

            (*v86)(v72, v73);
            v78 = (*v94)(v90, v89);
            v15 = v96;
            v59 = v92;
            if (v77)
            {
              MEMORY[0x1AC56AAD0](v78);
              if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v79 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1A84E601C();
                v59 = v92;
              }

              sub_1A84E603C();
              v15 = v97;
            }
          }
        }

        else
        {
          (*v94)(*(v0 + 176), *(v0 + 160));
        }
      }

      else
      {
        (*v94)(*(v0 + 176), *(v0 + 160));
      }

      v61 += v93;
      if (!--v57)
      {
        break;
      }

      v59(*(v0 + 176), v61, *(v0 + 160));
    }
  }

  v95 = v15;
  v80 = *(v0 + 256);
  v81 = *(v0 + 264);
  v82 = *(v0 + 248);
  v84 = *(v0 + 224);
  v83 = *(v0 + 232);
  v85 = *(v0 + 216);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  (*(v84 + 8))(v83, v85);
  (*(v80 + 8))(v81, v82);
LABEL_19:
  v37 = *(v0 + 264);
  v39 = *(v0 + 232);
  v38 = *(v0 + 240);
  v40 = *(v0 + 208);
  v42 = *(v0 + 176);
  v41 = *(v0 + 184);
  v44 = *(v0 + 144);
  v43 = *(v0 + 152);
  v45 = *(v0 + 136);
  v46 = *(v0 + 112);

  v47 = *(v0 + 8);

  return v47(v95);
}

uint64_t sub_1A84BB1EC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1A84E5BBC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_1A83EA2FC(&qword_1EB2E8BD8, &qword_1A850A900) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = sub_1A84E59DC();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = *(*(sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v10 = sub_1A84E558C();
  v1[12] = v10;
  v11 = *(v10 - 8);
  v1[13] = v11;
  v12 = *(v11 + 64) + 15;
  v1[14] = swift_task_alloc();
  v13 = sub_1A83EA2FC(&qword_1EB2E8BE0, &qword_1A850A908);
  v1[15] = v13;
  v14 = *(v13 - 8);
  v1[16] = v14;
  v15 = *(v14 + 64) + 15;
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84BB448, 0, 0);
}

uint64_t sub_1A84BB448()
{
  *(v0 + 144) = sub_1A84E609C();
  *(v0 + 152) = sub_1A84E608C();
  v2 = sub_1A84E605C();

  return MEMORY[0x1EEE6DFA0](sub_1A84BB4E0, v2, v1);
}

uint64_t sub_1A84BB4E0()
{
  v1 = v0[19];
  v2 = v0[2];

  v0[20] = [v2 dataSource];

  return MEMORY[0x1EEE6DFA0](sub_1A84BB568, 0, 0);
}

uint64_t sub_1A84BB568(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 160);
  if (!v4)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  v5 = [*(v3 + 160) bundleID];

  if (v5)
  {
    v6 = sub_1A84E5DBC();
    v8 = v7;

    v9 = *MEMORY[0x1E69A6928];
    v10 = IMBalloonExtensionIDWithSuffix();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1A84E5DBC();
      v14 = v13;

      if (v6 == v12 && v8 == v14)
      {

        goto LABEL_15;
      }

      v16 = sub_1A84E67AC();

      if (v16)
      {
LABEL_15:
        v27 = *(v3 + 144);
        *(v3 + 168) = sub_1A84E608C();
        v28 = sub_1A84E605C();
        v30 = v29;
        a1 = sub_1A84BB774;
        a2 = v28;
        a3 = v30;

        return MEMORY[0x1EEE6DFA0](a1, a2, a3);
      }
    }

    else
    {
    }
  }

  v17 = sub_1A83EC6AC(MEMORY[0x1E69E7CC0]);
  v18 = *(v3 + 136);
  v19 = *(v3 + 112);
  v21 = *(v3 + 80);
  v20 = *(v3 + 88);
  v22 = *(v3 + 72);
  v24 = *(v3 + 40);
  v23 = *(v3 + 48);

  v25 = *(v3 + 8);

  return v25(v17);
}

uint64_t sub_1A84BB774()
{
  v1 = v0[21];
  v2 = v0[2];

  v0[22] = [v2 visibleAssociatedMessageChatItems];

  return MEMORY[0x1EEE6DFA0](sub_1A84BB7FC, 0, 0);
}

unint64_t sub_1A84BB7FC()
{
  v1 = v0[22];
  if (!v1)
  {
    v63 = sub_1A83EC6AC(MEMORY[0x1E69E7CC0]);
    goto LABEL_53;
  }

  v2 = v0[17];
  v3 = v0[7];
  sub_1A8244B68(0, &qword_1EB2E8BE8, off_1E780D7D0);
  v4 = sub_1A84E5FFC();

  v5 = sub_1A83EC6AC(MEMORY[0x1E69E7CC0]);
  v6 = MEMORY[0x1E69A66E8];
  sub_1A84BC0B8(&qword_1EB2E8BF0, MEMORY[0x1E69A66E8]);
  sub_1A84BC0B8(&qword_1EB2E8BF8, v6);
  v7 = v4;
  sub_1A84E5ACC();
  if (v4 >> 62)
  {
LABEL_61:
    v8 = sub_1A84E654C();
  }

  else
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v5;
  v88 = v7;
  if (!v8)
  {
LABEL_51:
    v61 = v0[16];
    v60 = v0[17];
    v62 = v0[15];

    (*(v61 + 8))(v60, v62);
    v63 = v79;
LABEL_53:
    v64 = v0[17];
    v65 = v0[14];
    v67 = v0[10];
    v66 = v0[11];
    v68 = v0[9];
    v70 = v0[5];
    v69 = v0[6];

    v71 = v0[1];

    return v71(v63);
  }

  v5 = 0;
  v9 = v7 & 0xC000000000000001;
  v10 = v0[13];
  v11 = v7 & 0xFFFFFFFFFFFFFF8;
  v12 = v0[8];
  v13 = (v10 + 56);
  v84 = v7 + 32;
  v85 = (v10 + 48);
  v80 = (v10 + 8);
  v81 = (v10 + 32);
  v78 = (v12 + 48);
  v76 = (v12 + 32);
  v74 = v0[4];
  v75 = (v12 + 8);
  v14 = 0x1E780D000uLL;
  v82 = v7 & 0xFFFFFFFFFFFFFF8;
  v83 = (v10 + 56);
  while (1)
  {
    if (v9)
    {
      v16 = MEMORY[0x1AC56AF80](v5, v88);
    }

    else
    {
      if (v5 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_61;
      }

      v16 = *(v84 + 8 * v5);
    }

    v17 = v16;
    v18 = __OFADD__(v5++, 1);
    if (v18)
    {
      break;
    }

    v19 = *(v14 + 2352);
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (!v20 || (v21 = [v20 dataSource]) == 0)
    {
      v15 = v0[11];
      v7 = v0[12];

      (*v13)(v15, 1, 1, v7);
LABEL_7:
      sub_1A824B2D4(v0[11], &qword_1EB2E7068, &unk_1A8501EB0);
      goto LABEL_8;
    }

    v22 = v21;
    v23 = [v21 url];

    if (v23)
    {
      v24 = v0[10];
      sub_1A84E554C();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v26 = v0[11];
    v7 = v0[12];
    v27 = v0[10];
    (*v13)(v27, v25, 1, v7);
    sub_1A83FB148(v27, v26);
    if ((*v85)(v26, 1, v7) == 1)
    {

      v14 = 0x1E780D000;
      goto LABEL_7;
    }

    v28 = v0[17];
    v29 = v0[15];
    v30 = v0[6];
    (*v81)(v0[14], v0[11], v0[12]);
    sub_1A84E5ABC();
    v31 = v0[6];
    v7 = v0[7];
    if ((*v78)(v31, 1, v7) != 1)
    {
      (*v76)(v0[9], v31, v7);
      v13 = v83;
      v14 = 0x1E780D000;
      v77 = [v17 sender];
      if (v77)
      {
        v32 = v0[9];
        v33 = sub_1A84E59CC();
        v34 = *(v33 + 16);
        if (v34)
        {
          v72 = v9;
          v73 = v8;
          v35 = v33 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
          v87 = *(v74 + 72);
          v86 = *(v74 + 16);
          v36 = MEMORY[0x1E69E7CC0];
          do
          {
            v38 = v0[5];
            v39 = v0[3];
            v86(v38, v35, v39);
            v40 = sub_1A84E5BAC();
            v42 = v41;
            (*(v74 + 8))(v38, v39);
            if (v42)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v36 = sub_1A824A1FC(0, *(v36 + 2) + 1, 1, v36);
              }

              v44 = *(v36 + 2);
              v43 = *(v36 + 3);
              if (v44 >= v43 >> 1)
              {
                v36 = sub_1A824A1FC((v43 > 1), v44 + 1, 1, v36);
              }

              *(v36 + 2) = v44 + 1;
              v37 = &v36[16 * v44];
              *(v37 + 4) = v40;
              *(v37 + 5) = v42;
            }

            v35 += v87;
            --v34;
          }

          while (v34);

          v9 = v72;
          v8 = v73;
          v13 = v83;
          v14 = 0x1E780D000;
        }

        else
        {

          v36 = MEMORY[0x1E69E7CC0];
        }

        v11 = v82;
        if (*(v36 + 2))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          result = sub_1A8489FA0(v77);
          v48 = v79[2];
          v49 = (v47 & 1) == 0;
          v18 = __OFADD__(v48, v49);
          v50 = v48 + v49;
          if (v18)
          {
            __break(1u);
LABEL_63:
            __break(1u);
            return result;
          }

          v51 = v47;
          if (v79[3] >= v50)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_43;
            }

            v55 = v8;
            v56 = result;
            sub_1A848F5C8();
            result = v56;
            v8 = v55;
            v13 = v83;
            if ((v51 & 1) == 0)
            {
              goto LABEL_46;
            }

LABEL_44:
            v53 = v79[7];
            v54 = *(v53 + 8 * result);
            *(v53 + 8 * result) = v36;
          }

          else
          {
            sub_1A848C508(v50, isUniquelyReferenced_nonNull_native);
            result = sub_1A8489FA0(v77);
            if ((v51 & 1) != (v52 & 1))
            {
              goto LABEL_57;
            }

LABEL_43:
            v13 = v83;
            if (v51)
            {
              goto LABEL_44;
            }

LABEL_46:
            v79[(result >> 6) + 8] |= 1 << result;
            *(v79[6] + 8 * result) = v77;
            *(v79[7] + 8 * result) = v36;
            v57 = v79[2];
            v18 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v18)
            {
              goto LABEL_63;
            }

            v79[2] = v58;
          }

          v14 = 0x1E780D000;
        }

        else
        {
        }
      }

      else
      {

        v11 = v82;
      }

      v7 = v0[14];
      v59 = v0[12];
      (*v75)(v0[9], v0[7]);
      (*v80)(v7, v59);
      goto LABEL_8;
    }

    (*v80)(v0[14], v0[12]);

    v13 = v83;
    v14 = 0x1E780D000;
    sub_1A824B2D4(v0[6], &qword_1EB2E8BD8, &qword_1A850A900);
    v11 = v82;
LABEL_8:
    if (v5 == v8)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_57:
  sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);

  return sub_1A84E67EC();
}

unint64_t sub_1A84BC050()
{
  result = qword_1EB2E8BD0;
  if (!qword_1EB2E8BD0)
  {
    sub_1A8244B68(255, &qword_1EB2E4760, off_1E780DA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8BD0);
  }

  return result;
}

uint64_t sub_1A84BC0B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A84BC100()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A824FBE0;

  return sub_1A84B7A24(v2, v3, v4);
}

uint64_t sub_1A84BC1B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A82505F4;

  return sub_1A8247EC0(a1, v4, v5, v7);
}

uint64_t sub_1A84BC280()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1A84BC2C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A824FBE0;

  return sub_1A84B77C8(v2, v3, v4);
}

uint64_t ImportExport.ArchiveWritingIterator.__allocating_init(withArchivingOptions:withArchiver:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  *(v7 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator) = 0;
  v8 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories;
  v9 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  *(v7 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archiver) = a2;
  sub_1A84BF2C0(a1, v7 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  *(v7 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations) = MEMORY[0x1E69E7CC0];
  return v7;
}

uint64_t ImportExport.ArchiveWritingIterator.init(withArchivingOptions:withArchiver:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator) = 0;
  v5 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories;
  v6 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archiver) = a2;
  sub_1A84BF2C0(a1, v2 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations) = MEMORY[0x1E69E7CC0];
  return v2;
}

uint64_t sub_1A84BC530(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1A84E5C9C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = *(*(sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = type metadata accessor for ImportExport.AttachmentDownloadError();
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v11 = *(*(sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v12 = type metadata accessor for ImportExport.MessageBatch();
  v2[15] = v12;
  v13 = *(v12 - 8);
  v2[16] = v13;
  v14 = *(v13 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84BC75C, 0, 0);
}

uint64_t sub_1A84BC75C()
{
  v1 = v0[4];
  sub_1A84BD65C();
  v2 = *(v0[4] + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator);
  v0[18] = v2;
  if (!v2)
  {
    return sub_1A84E653C();
  }

  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_1A84BC928;
  v4 = v0[14];

  return sub_1A844F4DC(v4);
}

uint64_t sub_1A84BC928()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1A84BD498;
  }

  else
  {
    v3 = sub_1A84BCA3C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1A84BCA3C()
{
  v1 = v0[14];
  v2 = (*(v0[16] + 48))(v1, 1, v0[15]);
  v3 = v0[4];
  if (v2 == 1)
  {
    v4 = v0[20];
    sub_1A824B2D4(v1, &qword_1EB2E7CF8, &qword_1A8509020);
    sub_1A84BD930();
    v5 = v0[18];
    if (v4)
    {
      v6 = v0[18];

LABEL_14:
      v24 = v0[17];
      v26 = v0[13];
      v25 = v0[14];
      v27 = v0[12];
      v29 = v0[8];
      v28 = v0[9];
      v30 = v0[7];

      v31 = v0[1];
LABEL_18:

      return v31();
    }

    v32 = v0[3];
    v33 = type metadata accessor for ImportExport.ArchivedConversationBatch();
    (*(*(v33 - 8) + 56))(v32, 1, 1, v33);

    goto LABEL_17;
  }

  sub_1A84BF2C0(v1, v0[17], type metadata accessor for ImportExport.MessageBatch);
  if ((*(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions) & 1) == 0 || (v7 = *(v0[17] + *(v0[15] + 24)), (v0[21] = v7) == 0) || !*(*(v7 + OBJC_IVAR____TtCO6IMCore12ImportExport27DownloadableAttachmentBatch_messageAttachmentPairs) + 16))
  {
    v16 = v0[20];
LABEL_12:
    v17 = v0[17];
    v19 = v0[3];
    v18 = v0[4];
    v20 = objc_autoreleasePoolPush();
    sub_1A84BDF08(v18, v17, v0 + 2, v19);
    v21 = v0[17];
    v22 = v0[18];
    if (v16)
    {
      v23 = v0[2];
      objc_autoreleasePoolPop(v20);

      sub_1A84BF148(v21, type metadata accessor for ImportExport.MessageBatch);
      goto LABEL_14;
    }

    objc_autoreleasePoolPop(v20);

    sub_1A84BF148(v21, type metadata accessor for ImportExport.MessageBatch);
LABEL_17:
    v34 = v0[17];
    v35 = v0[13];
    v36 = v0[14];
    v37 = v0[12];
    v39 = v0[8];
    v38 = v0[9];
    v40 = v0[7];

    v31 = v0[1];
    goto LABEL_18;
  }

  type metadata accessor for ImportExport.AttachmentDownloadIterator();
  swift_allocObject();
  v8 = swift_retain_n();
  v0[22] = ImportExport.AttachmentDownloadIterator.init(withDownloadableAttachmentBatch:)(v8);
  v9 = ImportExport.AttachmentDownloadIterator.next()();
  if (!v9)
  {
    v42 = v0[21];
    v41 = v0[22];
    v16 = v0[20];

    goto LABEL_12;
  }

  v0[23] = v9;
  v10 = v0[8];
  v11 = sub_1A84E558C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_1A84BCE0C;
  v14 = v0[8];
  v13 = v0[9];

  return sub_1A8495FCC(v13, v14, 0, 1);
}

uint64_t sub_1A84BCE0C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  sub_1A824B2D4(*(v2 + 64), &qword_1EB2E7068, &unk_1A8501EB0);
  if (v0)
  {
    v5 = sub_1A84BD55C;
  }

  else
  {
    v5 = sub_1A84BCF50;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A84BCF50()
{
  v1 = v0[9];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    v2 = v0[23];

    sub_1A824B2D4(v1, &qword_1EB2E7348, &qword_1A8504400);
  }

  else
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[7];
    sub_1A84BF2C0(v1, v3, type metadata accessor for ImportExport.AttachmentDownloadError);
    sub_1A84E5C8C();
    sub_1A84BF258(v3, v4, type metadata accessor for ImportExport.AttachmentDownloadError);
    v6 = sub_1A84E5C7C();
    v7 = sub_1A84E619C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[23];
    v11 = v0[12];
    v10 = v0[13];
    if (v8)
    {
      v12 = v0[10];
      v13 = v0[6];
      v56 = v0[5];
      v57 = v0[7];
      v55 = v0[13];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      sub_1A84BF1A8(&qword_1EB2E78E0, type metadata accessor for ImportExport.AttachmentDownloadError);
      swift_allocError();
      sub_1A84BF258(v11, v16, type metadata accessor for ImportExport.AttachmentDownloadError);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      sub_1A84BF148(v11, type metadata accessor for ImportExport.AttachmentDownloadError);
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1A823F000, v6, v7, "Attachment downloder failed: %@", v14, 0xCu);
      sub_1A824B2D4(v15, &unk_1EB2E9070, &unk_1A8501A90);
      MEMORY[0x1AC56D3F0](v15, -1, -1);
      MEMORY[0x1AC56D3F0](v14, -1, -1);

      (*(v13 + 8))(v57, v56);
      v18 = v55;
    }

    else
    {
      v19 = v0[6];
      v20 = v0[7];
      v21 = v0[5];

      sub_1A84BF148(v11, type metadata accessor for ImportExport.AttachmentDownloadError);
      (*(v19 + 8))(v20, v21);
      v18 = v10;
    }

    sub_1A84BF148(v18, type metadata accessor for ImportExport.AttachmentDownloadError);
  }

  v22 = v0[22];
  v23 = ImportExport.AttachmentDownloadIterator.next()();
  if (v23)
  {
    v0[23] = v23;
    v24 = v0[8];
    v25 = sub_1A84E558C();
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    v26 = swift_task_alloc();
    v0[24] = v26;
    *v26 = v0;
    v26[1] = sub_1A84BCE0C;
    v28 = v0[8];
    v27 = v0[9];

    return sub_1A8495FCC(v27, v28, 0, 1);
  }

  else
  {
    v30 = v0[25];
    v32 = v0[21];
    v31 = v0[22];

    v33 = v0[17];
    v35 = v0[3];
    v34 = v0[4];
    v36 = objc_autoreleasePoolPush();
    sub_1A84BDF08(v34, v33, v0 + 2, v35);
    v38 = v0[17];
    v37 = v0[18];
    if (v30)
    {
      v39 = v0[2];
      objc_autoreleasePoolPop(v36);

      sub_1A84BF148(v38, type metadata accessor for ImportExport.MessageBatch);
      v40 = v0[17];
      v42 = v0[13];
      v41 = v0[14];
      v43 = v0[12];
      v45 = v0[8];
      v44 = v0[9];
      v46 = v0[7];
    }

    else
    {
      objc_autoreleasePoolPop(v36);

      sub_1A84BF148(v38, type metadata accessor for ImportExport.MessageBatch);
      v48 = v0[17];
      v49 = v0[13];
      v50 = v0[14];
      v51 = v0[12];
      v53 = v0[8];
      v52 = v0[9];
      v54 = v0[7];
    }

    v47 = v0[1];

    return v47();
  }
}

uint64_t sub_1A84BD498()
{
  v1 = v0[18];

  v2 = v0[20];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A84BD55C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];

  sub_1A84BF148(v5, type metadata accessor for ImportExport.MessageBatch);
  v6 = v0[25];
  v7 = v0[17];
  v9 = v0[13];
  v8 = v0[14];
  v10 = v0[12];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1A84BD65C()
{
  v1 = type metadata accessor for ImportExport.ExportOptions();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A83EA2FC(&qword_1EB2E89A8, &unk_1A8509CD8);
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - v8;
  v10 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator;
  if (!*(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator))
  {
    v11 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories;
    swift_beginAccess();
    sub_1A84BF1F0(v9, v0 + v12, &qword_1EB2E89A8, &unk_1A8509CD8);
    swift_endAccess();
    v13 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations;
    swift_beginAccess();
    v14 = *(v0 + v13);
    *(v0 + v13) = MEMORY[0x1E69E7CC0];

    v15 = *(*(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archiver) + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter);
    sub_1A84BF258(v15 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions, v4, type metadata accessor for ImportExport.ExportOptions);
    v16 = *(v15 + 16);
    v17 = type metadata accessor for ImportExport.ExportIterator();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    *(v20 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter) = 0;
    *(v20 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter) = v15;
    sub_1A84BF2C0(v4, v20 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, type metadata accessor for ImportExport.ExportOptions);
    *(v20 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID) = -1;
    *(v20 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations) = v16;
    *(v20 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex) = 0;
    v21 = *(v0 + v10);
    *(v0 + v10) = v20;

    if (!*(v0 + v10))
    {
      result = sub_1A84E653C();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A84BD930()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E7FE8, &unk_1A850AA80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v49 = &v46 - v3;
  v4 = sub_1A84E52BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1A84E558C();
  v52 = *(v54 - 8);
  v7 = v52;
  v8 = *(v52 + 64);
  v9 = MEMORY[0x1EEE9AC00](v54);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - v11;
  v13 = type metadata accessor for ImportExport.ArchiveManifest(0);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations;
  swift_beginAccess();
  v48 = v17;
  v18 = *(v0 + v17);
  v46 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archiver);
  v19 = *(v46 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter);
  swift_beginAccess();
  v20 = *(v19 + 24);
  v21 = *(v7 + 56);
  v22 = v54;
  v21(v16, 1, 1, v54);
  *&v16[*(v13 + 20)] = v18;
  v50 = v0;
  v51 = v13;
  *&v16[*(v13 + 24)] = v20;
  v23 = v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions;
  v53 = type metadata accessor for ImportExport.ArchivingOptions();
  v24 = *(v53 + 20);

  v25 = v52;

  v26 = v22;
  sub_1A84E552C();
  sub_1A824B2D4(v16, &qword_1EB2E7068, &unk_1A8501EB0);
  (*(v25 + 16))(v16, v12, v22);
  v58 = v16;
  v21(v16, 0, 1, v22);
  if (qword_1EB2E59F8 != -1)
  {
    swift_once();
  }

  v27 = *(v23 + *(v53 + 24));
  sub_1A84E529C();
  sub_1A84E52CC();
  v28 = v55;
  sub_1A84E553C();
  v29 = v57;
  sub_1A8462834();
  v30 = v28;
  if (v29)
  {
    v31 = *(v25 + 8);
    v31(v28, v26);
    v31(v12, v26);
    v37 = v58;
  }

  else
  {
    v32 = *(v25 + 8);
    v32(v30, v26);
    sub_1A8462A9C();
    sub_1A84BF1A8(&qword_1EB2E7DC0, type metadata accessor for ImportExport.ArchiveManifest);
    v33 = v51;
    v34 = sub_1A84E52DC();
    v36 = v35;
    sub_1A84E560C();
    sub_1A83F5994(v34, v36);
    v32(0, v26);
    v39 = v58;
    v40 = v49;
    sub_1A84BF258(v58, v49, type metadata accessor for ImportExport.ArchiveManifest);
    (*(v47 + 56))(v40, 0, 1, v33);
    v41 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest;
    v42 = v46;
    swift_beginAccess();
    sub_1A84BF1F0(v40, v42 + v41, &qword_1EB2E7FE8, &unk_1A850AA80);
    swift_endAccess();
    v43 = v50;
    v44 = *(v50 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator);
    *(v50 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator) = 0;

    v45 = *(v43 + v48);
    *(v43 + v48) = MEMORY[0x1E69E7CC0];

    v37 = v39;
  }

  return sub_1A84BF148(v37, type metadata accessor for ImportExport.ArchiveManifest);
}

uint64_t sub_1A84BDF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v109 = a3;
  v5 = v4;
  v106 = a4;
  v8 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v98 = &v90 - v10;
  v103 = sub_1A84E558C();
  v107 = *(v103 - 8);
  v11 = *(v107 + 64);
  v12 = MEMORY[0x1EEE9AC00](v103);
  v102 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v97 = &v90 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v90 - v16;
  v17 = type metadata accessor for ImportExport.Conversation();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v95 = (&v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_1A83EA2FC(&qword_1EB2E89A8, &unk_1A8509CD8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v105 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v101 = &v90 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v90 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v99 = &v90 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v90 - v31;
  v33 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
  v34 = *(v33 - 1);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x1EEE9AC00](v33);
  v104 = &v90 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v100 = &v90 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v90 - v40;
  v42 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories;
  swift_beginAccess();
  v111 = v42;
  sub_1A84BF0D8(a1 + v42, v32);
  v110 = v34;
  v44 = *(v34 + 48);
  v43 = v34 + 48;
  v112 = v44;
  v45 = v44(v32, 1, v33);
  v108 = a2;
  if (v45 == 1)
  {
    sub_1A824B2D4(v32, &qword_1EB2E89A8, &unk_1A8509CD8);
    v46 = v111;
  }

  else
  {
    sub_1A84BF2C0(v32, v41, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    v47 = _s6IMCore12ImportExportO12ConversationV2eeoiySbAE_AEtFZ_0(&v41[v33[9]], a2);
    sub_1A84BF148(v41, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    v46 = v111;
    if ((v47 & 1) == 0)
    {
      v48 = v99;
      (*(v110 + 56))(v99, 1, 1, v33);
      swift_beginAccess();
      sub_1A84BF1F0(v48, a1 + v46, &qword_1EB2E89A8, &unk_1A8509CD8);
      swift_endAccess();
    }
  }

  sub_1A84BF0D8(a1 + v46, v28);
  v49 = v112(v28, 1, v33);
  sub_1A824B2D4(v28, &qword_1EB2E89A8, &unk_1A8509CD8);
  v50 = v109;
  if (v49 == 1)
  {
    v92 = v43;
    v94 = v4;
    v91 = type metadata accessor for ImportExport.Conversation;
    v51 = v95;
    sub_1A84BF258(v108, v95, type metadata accessor for ImportExport.Conversation);
    v52 = a1 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions;
    v53 = type metadata accessor for ImportExport.ArchivingOptions();
    v54 = *(v107 + 16);
    v55 = v52 + *(v53 + 20);
    v56 = v96;
    v93 = a1;
    v57 = v103;
    v54(v96, v55, v103);
    strcpy(v113, "Conversation-");
    HIWORD(v113[1]) = -4864;
    v113[8] = *v51;
    v58 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v58);

    v59 = v97;
    sub_1A84E552C();

    v60 = v100;
    sub_1A84BF258(v51, v100 + v33[9], v91);
    v54(v60, v56, v57);
    v54((v60 + v33[5]), v59, v57);
    v61 = v57;
    a1 = v93;
    v91 = v33[8];
    sub_1A84E552C();
    v62 = v60 + v33[7];
    sub_1A84E552C();
    v63 = v60 + v33[6];
    sub_1A84E552C();
    v64 = (v107 + 8);
    v65 = *(v107 + 8);
    v65(v59, v61);
    v97 = v65;
    v96 = v64;
    v65(v56, v61);
    sub_1A84BF148(v51, type metadata accessor for ImportExport.Conversation);
    v66 = v99;
    sub_1A84BF258(v60, v99, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    (*(v110 + 56))(v66, 0, 1, v33);
    v67 = v111;
    swift_beginAccess();
    sub_1A84BF1F0(v66, a1 + v67, &qword_1EB2E89A8, &unk_1A8509CD8);
    swift_endAccess();
    v68 = v98;
    URL.relativePath(toParent:)(v98);
    v69 = v107;
    if ((*(v107 + 48))(v68, 1, v61) == 1)
    {
      sub_1A824B2D4(v68, &qword_1EB2E7068, &unk_1A8501EB0);
      goto LABEL_20;
    }

    (*(v69 + 32))(v102, v68, v61);
    v70 = sub_1A84E555C();
    v72 = v71;
    v73 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations;
    swift_beginAccess();
    v74 = *(a1 + v73);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v73) = v74;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v74 = sub_1A824A1FC(0, *(v74 + 2) + 1, 1, v74);
      *(a1 + v73) = v74;
    }

    v76 = v97;
    v78 = *(v74 + 2);
    v77 = *(v74 + 3);
    if (v78 >= v77 >> 1)
    {
      v74 = sub_1A824A1FC((v77 > 1), v78 + 1, 1, v74);
    }

    *(v74 + 2) = v78 + 1;
    v79 = &v74[16 * v78];
    *(v79 + 4) = v70;
    *(v79 + 5) = v72;
    *(a1 + v73) = v74;
    swift_endAccess();
    v76(v102, v103);
    sub_1A84BF148(v100, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    v5 = v94;
    v50 = v109;
    v46 = v111;
  }

  v80 = v101;
  sub_1A84BF0D8(a1 + v46, v101);
  if (v112(v80, 1, v33) == 1)
  {
    sub_1A824B2D4(v80, &qword_1EB2E89A8, &unk_1A8509CD8);
LABEL_20:
    result = sub_1A84E653C();
    __break(1u);
    return result;
  }

  v81 = v104;
  sub_1A84BF2C0(v80, v104, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  v82 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions;
  v83 = v105;
  sub_1A84BF258(v81, v105, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  (*(v110 + 56))(v83, 0, 1, v33);
  v84 = type metadata accessor for ImportExport.MessageBatch();
  v85 = v108;
  if (*(*(v108 + *(v84 + 20)) + 16))
  {
    v86 = objc_autoreleasePoolPush();
    sub_1A84C3E18(v83, v85, a1 + v82, v113, v106);
    if (v5)
    {
      v87 = v113[0];
      objc_autoreleasePoolPop(v86);
      sub_1A824B2D4(v83, &qword_1EB2E89A8, &unk_1A8509CD8);
      result = sub_1A84BF148(v81, type metadata accessor for ImportExport.ArchivedConversationDirectories);
      *v50 = v87;
    }

    else
    {
      objc_autoreleasePoolPop(v86);
      sub_1A824B2D4(v83, &qword_1EB2E89A8, &unk_1A8509CD8);
      return sub_1A84BF148(v81, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    }
  }

  else
  {
    sub_1A824B2D4(v83, &qword_1EB2E89A8, &unk_1A8509CD8);
    sub_1A84BF148(v81, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    v89 = type metadata accessor for ImportExport.ArchivedConversationBatch();
    return (*(*(v89 - 8) + 56))(v106, 1, 1, v89);
  }

  return result;
}

uint64_t ImportExport.ArchiveWritingIterator.deinit()
{
  sub_1A84BF148(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archiver);

  v2 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations);

  v3 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator);

  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories, &qword_1EB2E89A8, &unk_1A8509CD8);
  return v0;
}

uint64_t ImportExport.ArchiveWritingIterator.__deallocating_deinit()
{
  sub_1A84BF148(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archiver);

  v2 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations);

  v3 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator);

  sub_1A824B2D4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories, &qword_1EB2E89A8, &unk_1A8509CD8);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1A84BEC1C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A82505F4;

  return sub_1A84BC530(a1);
}

uint64_t sub_1A84BECB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A84E605C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A84BED50, v6, v8);
}

uint64_t sub_1A84BED50()
{
  v1 = **(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1A84065F4;
  v3 = *(v0 + 24);

  return sub_1A84BC530(v3);
}

uint64_t type metadata accessor for ImportExport.ArchiveWritingIterator()
{
  result = qword_1EB2E8C68;
  if (!qword_1EB2E8C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A84BEE40()
{
  v0 = type metadata accessor for ImportExport.ArchivingOptions();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1A84BF080();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of ImportExport.ArchiveWritingIterator.next()(uint64_t a1)
{
  v4 = *(*v1 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A82505F4;

  return v8(a1);
}

void sub_1A84BF080()
{
  if (!qword_1EB2E8C78)
  {
    type metadata accessor for ImportExport.ArchivedConversationDirectories();
    v0 = sub_1A84E633C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E8C78);
    }
  }
}

uint64_t sub_1A84BF0D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E89A8, &unk_1A8509CD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A84BF148(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A84BF1A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A84BF1F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1A83EA2FC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A84BF258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84BF2C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ImportExport.ArchivedConversationDirectories.init(withConversation:inRootDirectoryURL:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A84E558C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v20, "Conversation-");
  v20[7] = -4864;
  v19[1] = *a1;
  v11 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v11);

  sub_1A84E552C();

  v12 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
  sub_1A84C0908(a1, a3 + v12[9], type metadata accessor for ImportExport.Conversation);
  v13 = v7[2];
  v13(a3, a2, v6);
  v13(a3 + v12[5], v10, v6);
  v14 = a3 + v12[8];
  sub_1A84E552C();
  v15 = a3 + v12[7];
  sub_1A84E552C();
  v16 = a3 + v12[6];
  sub_1A84E552C();
  v17 = v7[1];
  v17(a2, v6);
  sub_1A84C0970(a1, type metadata accessor for ImportExport.Conversation);
  return v17(v10, v6);
}

uint64_t static ImportExport.ArchivedConversationDirectories.conversationDirectoryName(forConversation:)(uint64_t *a1)
{
  strcpy(v4, "Conversation-");
  HIWORD(v4[1]) = -4864;
  v3 = *a1;
  v1 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v1);

  return v4[0];
}

uint64_t type metadata accessor for ImportExport.ArchivedConversationDirectories()
{
  result = qword_1EB2E8C98;
  if (!qword_1EB2E8C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.ArchivedConversationDirectories.rootDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A84E558C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ImportExport.ArchivedConversationDirectories.conversationDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImportExport.ArchivedConversationDirectories() + 20);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ImportExport.ArchivedConversationDirectories.messageDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImportExport.ArchivedConversationDirectories() + 24);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ImportExport.ArchivedConversationDirectories.attachmentDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImportExport.ArchivedConversationDirectories() + 28);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ImportExport.ArchivedConversationDirectories.archivedConversationFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImportExport.ArchivedConversationDirectories() + 32);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ImportExport.ArchivedConversationDirectories.directories.getter()
{
  sub_1A83EA2FC(&qword_1EB2E6EC8, &unk_1A8500CB0);
  v1 = sub_1A84E558C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A850AA90;
  v6 = v5 + v4;
  v7 = *(v2 + 16);
  v7(v6, v0, v1);
  v8 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
  v7(v6 + v3, v0 + v8[5], v1);
  v7(v6 + 2 * v3, v0 + v8[6], v1);
  v7(v6 + 3 * v3, v0 + v8[7], v1);
  return v5;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ImportExport.ArchivedConversationDirectories.ensureDirectoriesExist()()
{
  sub_1A83EA2FC(&qword_1EB2E6EC8, &unk_1A8500CB0);
  v1 = sub_1A84E558C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject() + v4;
  v6 = *(v2 + 16);
  v6(v5, v0, v1);
  v7 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
  v6(v5 + v3, v0 + v7[5], v1);
  v6(v5 + 2 * v3, v0 + v7[6], v1);
  v6(v5 + 3 * v3, v0 + v7[7], v1);
  sub_1A8462834();
  if (!v8)
  {
    sub_1A8462834();
    sub_1A8462834();
    sub_1A8462834();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
}

unint64_t sub_1A84BFCA4()
{
  v1 = *v0;
  v2 = 0x61737265766E6F63;
  if (v1 == 4)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000016;
  }

  v3 = 0xD000000000000010;
  v4 = 0xD000000000000018;
  if (v1 != 1)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A84BFD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84C0BD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84BFDA0(uint64_t a1)
{
  v2 = sub_1A84C00F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84BFDDC(uint64_t a1)
{
  v2 = sub_1A84C00F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchivedConversationDirectories.encode(to:)(void *a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E8C80, &qword_1A850AAA8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84C00F4();
  sub_1A84E68AC();
  v22 = 0;
  sub_1A84E558C();
  sub_1A84C08C0(&qword_1EB2E7200, MEMORY[0x1E6968FB0]);
  sub_1A84E672C();
  if (!v1)
  {
    v9 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
    v10 = v9[5];
    v21 = 1;
    sub_1A84E672C();
    v11 = v9[6];
    v20 = 2;
    sub_1A84E672C();
    v12 = v9[7];
    v19 = 3;
    sub_1A84E672C();
    v13 = v9[8];
    v18 = 4;
    sub_1A84E672C();
    v14 = v9[9];
    v17 = 5;
    type metadata accessor for ImportExport.Conversation();
    sub_1A84C08C0(&qword_1EB2E71B0, type metadata accessor for ImportExport.Conversation);
    sub_1A84E672C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1A84C00F4()
{
  result = qword_1EB2E8C88;
  if (!qword_1EB2E8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8C88);
  }

  return result;
}

uint64_t ImportExport.ArchivedConversationDirectories.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = type metadata accessor for ImportExport.Conversation();
  v3 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41);
  v42 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A84E558C();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v43 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v44 = v37 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v37 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v37 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v49 = v37 - v17;
  v18 = sub_1A83EA2FC(&qword_1EB2E8C90, &qword_1A850AAB0);
  v47 = *(v18 - 8);
  v48 = v18;
  v19 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v37 - v20;
  v22 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84C00F4();
  v50 = v21;
  v27 = v51;
  sub_1A84E689C();
  if (v27)
  {
    return sub_1A8244788(a1);
  }

  v28 = v16;
  v39 = v13;
  v51 = v25;
  v57 = 0;
  sub_1A84C08C0(&qword_1EB2E7218, MEMORY[0x1E6968FB0]);
  v29 = v46;
  sub_1A84E666C();
  v30 = v49;
  v49 = *(v45 + 32);
  (v49)(v51, v30, v29);
  v56 = 1;
  sub_1A84E666C();
  v38 = v22;
  (v49)(&v51[*(v22 + 20)], v28, v29);
  v55 = 2;
  v31 = v39;
  v37[1] = 0;
  sub_1A84E666C();
  (v49)(&v51[v38[6]], v31, v29);
  v54 = 3;
  v32 = v44;
  sub_1A84E666C();
  (v49)(&v51[v38[7]], v32, v29);
  v53 = 4;
  v33 = v43;
  sub_1A84E666C();
  (v49)(&v51[v38[8]], v33, v29);
  v52 = 5;
  sub_1A84C08C0(&qword_1EB2E71C8, type metadata accessor for ImportExport.Conversation);
  v34 = v42;
  sub_1A84E666C();
  (*(v47 + 8))(v50, v48);
  v35 = v51;
  sub_1A845BB64(v34, &v51[v38[9]]);
  sub_1A84C0908(v35, v40, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  sub_1A8244788(a1);
  return sub_1A84C0970(v35, type metadata accessor for ImportExport.ArchivedConversationDirectories);
}

uint64_t sub_1A84C08C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A84C0908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84C0970(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A84C0A28()
{
  result = sub_1A84E558C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ImportExport.Conversation();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A84C0ACC()
{
  result = qword_1EB2E8CA8;
  if (!qword_1EB2E8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8CA8);
  }

  return result;
}

unint64_t sub_1A84C0B24()
{
  result = qword_1EB2E8CB0;
  if (!qword_1EB2E8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8CB0);
  }

  return result;
}

unint64_t sub_1A84C0B7C()
{
  result = qword_1EB2E8CB8;
  if (!qword_1EB2E8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8CB8);
  }

  return result;
}

uint64_t sub_1A84C0BD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A85340D0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A85340F0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8534110 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8534130 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001A8530070 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974)
  {

    return 5;
  }

  else
  {
    v5 = sub_1A84E67AC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1A84C0DD4(unsigned __int8 a1)
{
  v2 = sub_1A84E5D8C();

  v3 = sub_1A84E5D8C();

  v4 = sub_1A84E5D8C();
  v5 = IMCoreLocalizedString(v2, v3);

  if (v5)
  {
    v6 = sub_1A84E5DBC();
  }

  else
  {
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1A84E5C9C();
    sub_1A824431C(v7, qword_1EB2FEFF8);
    v8 = sub_1A84E5C7C();
    v9 = sub_1A84E619C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      v12 = "SYNC_PROGRESS_CONNECT_TO_WIFI";
      v13 = 0xD000000000000021;
      v14 = "ice and connect to wlan";
      if (a1 != 3)
      {
        v14 = "ages from iCloud…";
      }

      if (a1 == 2)
      {
        v15 = 0xD000000000000021;
      }

      else
      {
        v15 = 0xD00000000000001DLL;
      }

      if (a1 != 2)
      {
        v12 = v14;
      }

      v16 = "LOUD_STORAGE_FULL";
      if (!a1)
      {
        v13 = 0xD000000000000015;
        v16 = "VICE_STORAGE_FULL";
      }

      if (a1 <= 1u)
      {
        v17 = v13;
      }

      else
      {
        v17 = v15;
      }

      if (a1 <= 1u)
      {
        v18 = v16;
      }

      else
      {
        v18 = v12;
      }

      v19 = sub_1A82446BC(v17, v18 | 0x8000000000000000, &v21);

      *(v10 + 4) = v19;
      _os_log_impl(&dword_1A823F000, v8, v9, "Failed to generate localized string for %s", v10, 0xCu);
      sub_1A8244788(v11);
      MEMORY[0x1AC56D3F0](v11, -1, -1);
      MEMORY[0x1AC56D3F0](v10, -1, -1);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_1A84C10F8(unsigned __int8 a1)
{
  v2 = sub_1A84E5D8C();

  v3 = sub_1A84E5D8C();

  v4 = sub_1A84E5D8C();
  v5 = IMCoreLocalizedString(v2, v3);

  if (v5)
  {
    v6 = sub_1A84E5DBC();
  }

  else
  {
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v7 = sub_1A84E5C9C();
    sub_1A824431C(v7, qword_1EB2FEFF8);
    v8 = sub_1A84E5C7C();
    v9 = sub_1A84E619C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315138;
      v12 = 0xD00000000000001FLL;
      v13 = 0xD000000000000026;
      if (a1 == 2)
      {
        v13 = 0xD000000000000014;
        v14 = "ud is currently disabled";
      }

      else
      {
        v14 = "Manage Storage…";
      }

      if (a1)
      {
        v12 = 0xD00000000000001DLL;
        v15 = "SYNC_PROGRESS_PAUSED";
      }

      else
      {
        v15 = "SYNC_PROGRESS_UPLOADING_ITEMS";
      }

      if (a1 <= 1u)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      if (a1 <= 1u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v14;
      }

      v18 = sub_1A82446BC(v16, v17 | 0x8000000000000000, &v20);

      *(v10 + 4) = v18;
      _os_log_impl(&dword_1A823F000, v8, v9, "Failed to generate localized string for %s", v10, 0xCu);
      sub_1A8244788(v11);
      MEMORY[0x1AC56D3F0](v11, -1, -1);
      MEMORY[0x1AC56D3F0](v10, -1, -1);
    }

    return 0;
  }

  return v6;
}

uint64_t sub_1A84C13D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedFeatureFlags];
  v5 = [v4 isMessagesIniCloudVersion2];

  if (v5)
  {
    if (a1 && [a1 syncJobState] - 1 <= 4)
    {
      result = sub_1A84C0DD4(0);
      v8 = 0;
    }

    else
    {
      v8 = 0;
      result = 0;
      v7 = 0;
    }

    v10 = 0;
    v12 = 0;
  }

  else if (a1 && (v9 = [a1 syncControllerSyncState], v9 >= 4))
  {
    if (v9 == 4)
    {
      v10 = sub_1A84C10F8(1u);
      v12 = v13;
      v8 = 0;
      result = 0;
      v7 = 0;
    }

    else
    {
      result = 0;
      v7 = 0;
      v10 = 0;
      v12 = 0;
      v8 = 1;
    }
  }

  else
  {
    v10 = sub_1A84C10F8(0);
    v12 = v11;
    result = 0;
    v7 = 0;
    v8 = 1;
  }

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = result;
  *(a2 + 24) = v7;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = v5 ^ 1;
  *(a2 + 49) = v8;
  *(a2 + 56) = 0;
  return result;
}

void sub_1A84C1514(uint64_t a1@<X8>)
{
  v2 = sub_1A84C10F8(3u);
  v4 = v3;
  v5 = sub_1A84E5D8C();
  v6 = sub_1A84E5D8C();
  v7 = sub_1A84E5D8C();
  v8 = IMCoreLocalizedString(v5, v6);

  if (v8)
  {
    v9 = sub_1A84E5DBC();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

void sub_1A84C1614(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1A84C10F8(2u);
  v6 = v5;
  v7 = sub_1A84C0DD4(a1);
  v9 = v8;
  v10 = sub_1A84E5D8C();
  v11 = sub_1A84E5D8C();
  v12 = sub_1A84E5D8C();
  v13 = IMCoreLocalizedString(v10, v11);

  if (v13)
  {
    v14 = sub_1A84E5DBC();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
}

uint64_t sub_1A84C1728@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  result = 0;
  v7 = 0uLL;
  v8 = 0.0;
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      v14 = 2;
    }

    else
    {
      if (a1 != 5)
      {
        if (a1 == 6)
        {
          if ((IMDeviceIsGreenTea() & 1) != 0 || [objc_opt_self() IMDeviceIsChinaRegion])
          {
            v13 = 4;
          }

          else
          {
            v13 = 3;
          }

          v10 = sub_1A84C0DD4(v13);
          v17 = v16;
          result = sub_1A84C10F8(2u);
          v11 = 0;
          v5 = 0;
          v12 = 0;
          v7 = v17;
        }

        else
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          v12 = 0;
        }

        goto LABEL_20;
      }

      v14 = 1;
    }

    sub_1A84C1614(v14, v20);
    goto LABEL_19;
  }

  if (!a1)
  {
    sub_1A84C13D4(a2, v20);
    goto LABEL_19;
  }

  if (a1 == 1)
  {
    if ((IMDeviceIsGreenTea() & 1) != 0 || [objc_opt_self() IMDeviceIsChinaRegion])
    {
      v15 = 4;
    }

    else
    {
      v15 = 3;
    }

    v10 = sub_1A84C0DD4(v15);
    v19 = v18;
    result = sub_1A84C10F8(2u);
    v11 = 0;
    v5 = 0;
    v12 = 0;
    v7 = v19;
    v8 = 10.0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    if (a1 == 3)
    {
      sub_1A84C1514(v20);
LABEL_19:
      v8 = v25;
      v12 = v24;
      v5 = v23;
      v11 = v22;
      v9 = v20[1];
      v10 = v20[2];
      v7 = v21;
      result = v20[0];
    }
  }

LABEL_20:
  *a3 = result;
  *(a3 + 8) = v9;
  *(a3 + 16) = v10;
  *(a3 + 24) = v7;
  *(a3 + 40) = v11;
  *(a3 + 48) = v5;
  *(a3 + 49) = v12;
  *(a3 + 56) = v8;
  return result;
}

uint64_t ImportExport.Exporter.fetchStartingCountsForExport()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1A84E5C9C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = sub_1A84E588C();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = sub_1A84E57FC();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A84C1A84, 0, 0);
}

uint64_t sub_1A84C1A84()
{
  v1 = *(v0[4] + 16);
  if (v1 && *(v1 + 16))
  {
    v2 = v0[3];
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    v3 = v0[15];
    v4 = v0[12];
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[15];
    v0[16] = [objc_allocWithZone(sub_1A84E580C()) init];
    sub_1A84E57EC();
    v11 = *(MEMORY[0x1E69A5D68] + 4);
    v12 = swift_task_alloc();
    v0[17] = v12;
    *v12 = v0;
    v12[1] = sub_1A84C1BE4;
    v13 = v0[15];

    return MEMORY[0x1EEE101A0](v13);
  }
}

uint64_t sub_1A84C1BE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = v1;

  v7 = v4[16];
  v8 = v4[15];
  v9 = v4[14];
  v10 = v4[13];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_1A84C2310;
  }

  else
  {
    v4[19] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_1A84C1D88;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1A84C1D88()
{
  v60 = v0;
  v1 = v0[19];
  v2 = sub_1A84E581C();

  if (v2)
  {

    result = sub_1A84E583C();
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v4 = result;
      result = sub_1A84E584C();
      if ((result & 0x8000000000000000) == 0)
      {
        v5 = result;
        v7 = v0[11];
        v6 = v0[12];
        v8 = v0[10];
        sub_1A84E589C();
        v9 = sub_1A84E587C();
        v10 = *(v7 + 8);
        result = v10(v6, v8);
        if ((v9 & 0x8000000000000000) == 0)
        {
          v54 = v9;
          v11 = v0[12];
          v12 = v0[10];
          sub_1A84E585C();
          v13 = sub_1A84E587C();
          result = v10(v11, v12);
          if ((v13 & 0x8000000000000000) == 0)
          {
            v53 = v13;
            v14 = v0[12];
            v15 = v0[10];
            sub_1A84E586C();

            v16 = sub_1A84E587C();
            result = v10(v14, v15);
            if ((v16 & 0x8000000000000000) == 0)
            {
              v50 = v16;
              v51 = v5;
              v52 = v4;
              v17 = v0[9];
              sub_1A84E5C8C();
              v18 = sub_1A84E5C7C();
              v19 = sub_1A84E617C();
              if (os_log_type_enabled(v18, v19))
              {
                v20 = swift_slowAlloc();
                *v20 = 0;
                _os_log_impl(&dword_1A823F000, v18, v19, "Fetched counts from storage inspector:", v20, 2u);
                MEMORY[0x1AC56D3F0](v20, -1, -1);
              }

              v21 = v0[9];
              v23 = v0[5];
              v22 = v0[6];

              v57 = *(v22 + 8);
              v57(v21, v23);
              v0[2] = v2;
              sub_1A84E58AC();
              v55 = sub_1A84E582C();
              v24 = *(v55 + 16);
              if (v24)
              {
                v25 = (v55 + 40);
                v56 = v0[6] + 8;
                do
                {
                  v26 = v0[8];
                  v28 = *(v25 - 1);
                  v27 = *v25;

                  sub_1A84E5C8C();

                  v29 = sub_1A84E5C7C();
                  v30 = sub_1A84E617C();

                  v31 = os_log_type_enabled(v29, v30);
                  v58 = v0[8];
                  v32 = v0[5];
                  if (v31)
                  {
                    v33 = swift_slowAlloc();
                    v34 = swift_slowAlloc();
                    v59 = v34;
                    *v33 = 136315138;
                    v35 = sub_1A82446BC(v28, v27, &v59);

                    *(v33 + 4) = v35;
                    _os_log_impl(&dword_1A823F000, v29, v30, "    %s", v33, 0xCu);
                    sub_1A8244788(v34);
                    MEMORY[0x1AC56D3F0](v34, -1, -1);
                    MEMORY[0x1AC56D3F0](v33, -1, -1);
                  }

                  else
                  {
                  }

                  v57(v58, v32);
                  v25 += 2;
                  --v24;
                }

                while (v24);
              }

              v36 = v0[3];

              *v36 = v52;
              v36[1] = v51;
              v36[2] = v54;
              v36[3] = v53;
              v36[4] = v50;
              v37 = v0[15];
              v38 = v0[12];
              v40 = v0[8];
              v39 = v0[9];
              v41 = v0[7];

              v42 = v0[1];

              return v42();
            }

LABEL_25:
            __break(1u);
            return result;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v43 = v0[7];
  sub_1A84E5C8C();
  v44 = sub_1A84E5C7C();
  v45 = sub_1A84E619C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1A823F000, v44, v45, "Getting storage record counts failed", v46, 2u);
    MEMORY[0x1AC56D3F0](v46, -1, -1);
  }

  v48 = v0[6];
  v47 = v0[7];
  v49 = v0[5];

  (*(v48 + 8))(v47, v49);
  return sub_1A84E653C();
}

uint64_t sub_1A84C2310()
{
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  v6 = v0[1];
  v7 = v0[18];

  return v6();
}

uint64_t ImportExport.Exporter.progress.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  a1[3] = type metadata accessor for ImportExport.ExportStatistics();
  a1[4] = &protocol witness table for ImportExport.ExportStatistics;
  *a1 = v3;
}

uint64_t ImportExport.Exporter.__allocating_init(withOptions:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  if (qword_1EB2E59D0 != -1)
  {
    swift_once();
  }

  *(v5 + 24) = qword_1EB2E8880;
  sub_1A84B70B0(a1, v5 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions);
  *(v5 + 16) = 0;

  return v5;
}

uint64_t ImportExport.Exporter.__allocating_init(withOptions:conversations:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  v8 = swift_allocObject();
  if (qword_1EB2E59D0 != -1)
  {
    swift_once();
  }

  *(v8 + 24) = qword_1EB2E8880;
  sub_1A84B70B0(a1, v8 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions);
  *(v8 + 16) = a2;

  return v8;
}

uint64_t ImportExport.Exporter.makeAsyncIterator()()
{
  v1 = type metadata accessor for ImportExport.ExportOptions();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84C3300(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions, v4);
  v5 = *(v0 + 16);
  v6 = type metadata accessor for ImportExport.ExportIterator();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter) = 0;
  *(v9 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter) = v0;
  sub_1A84B70B0(v4, v9 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions);
  *(v9 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID) = -1;
  *(v9 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations) = v5;
  *(v9 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex) = 0;

  return v9;
}

uint64_t ImportExport.Exporter.exportStatistics.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t ImportExport.Exporter.init(withOptions:conversations:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EB2E59D0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  *(v2 + 24) = qword_1EB2E8880;
  sub_1A84B70B0(a1, v2 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions);
  *(v2 + 16) = a2;

  return v2;
}

uint64_t ImportExport.Exporter.init(withOptions:)(uint64_t a1)
{
  if (qword_1EB2E59D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *(v1 + 24) = qword_1EB2E8880;
  sub_1A84B70B0(a1, v1 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions);
  *(v1 + 16) = 0;

  return v1;
}

id static ImportExport.Exporter.hasCompletedCloudSync.getter()
{
  v0 = sub_1A84E56DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v10 = result;
    v11 = [result lastSyncDate];

    if (v11)
    {
      sub_1A84E569C();

      (*(v1 + 32))(v8, v4, v0);
      (*(v1 + 56))(v8, 0, 1, v0);
    }

    else
    {
      (*(v1 + 56))(v8, 1, 1, v0);
    }

    sub_1A8471100(v8);
    return (v11 != 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A84C2968()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x704F74726F707865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_1A84C29D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A84C37BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84C29F8(uint64_t a1)
{
  v2 = sub_1A84C33C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84C2A34(uint64_t a1)
{
  v2 = sub_1A84C33C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Exporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_1A84C3364(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions);
  return v0;
}

uint64_t ImportExport.Exporter.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_1A84C3364(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ImportExport.Exporter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8CC0, &qword_1A850AC80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84C33C0();
  sub_1A84E68AC();
  v14 = *(v3 + 16);
  LOBYTE(v13) = 0;
  sub_1A83EA2FC(&qword_1EB2E7D18, &qword_1A8505EB8);
  sub_1A84C3414(&qword_1EB2E7D20, &qword_1EB2E71B0);
  sub_1A84E66BC();
  if (!v2)
  {
    swift_beginAccess();
    v13 = *(v3 + 24);
    v12[15] = 1;
    type metadata accessor for ImportExport.ExportStatistics();
    sub_1A84C34F8(&qword_1EB2E7DE0, type metadata accessor for ImportExport.ExportStatistics);
    sub_1A84E672C();
    LOBYTE(v13) = 2;
    type metadata accessor for ImportExport.ExportOptions();
    sub_1A84C34F8(&qword_1EB2E7D10, type metadata accessor for ImportExport.ExportOptions);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImportExport.Exporter.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ImportExport.Exporter.init(from:)(a1);
  return v5;
}

void *ImportExport.Exporter.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = v1 + 3;
  v25 = *v1;
  v21 = type metadata accessor for ImportExport.ExportOptions();
  v6 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E8CD0, &qword_1A850AC88);
  v23 = *(v8 - 8);
  v24 = v8;
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  if (qword_1EB2E59D0 != -1)
  {
    swift_once();
  }

  *v5 = qword_1EB2E8880;
  v12 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84C33C0();

  sub_1A84E689C();
  if (v2)
  {
    v17 = v1[3];

    v18 = *(*v1 + 48);
    v19 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1A83EA2FC(&qword_1EB2E7D18, &qword_1A8505EB8);
    LOBYTE(v27) = 0;
    sub_1A84C3414(&qword_1EB2E7D48, &qword_1EB2E71C8);
    v13 = v24;
    sub_1A84E65FC();
    v1[2] = v26;
    type metadata accessor for ImportExport.ExportStatistics();
    LOBYTE(v26) = 1;
    sub_1A84C34F8(&qword_1EB2E7DF0, type metadata accessor for ImportExport.ExportStatistics);
    sub_1A84E666C();
    v14 = v27;
    swift_beginAccess();
    v15 = *v5;
    *v5 = v14;

    LOBYTE(v27) = 2;
    sub_1A84C34F8(&qword_1EB2E7D40, type metadata accessor for ImportExport.ExportOptions);
    v16 = v22;
    sub_1A84E666C();
    (*(v23 + 8))(v11, v13);
    sub_1A84B70B0(v16, v3 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions);
  }

  sub_1A8244788(a1);
  return v3;
}

uint64_t sub_1A84C3244@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = ImportExport.Exporter.makeAsyncIterator()();

  *a1 = v4;
  return result;
}

void *sub_1A84C3284@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = ImportExport.Exporter.init(from:)(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1A84C3300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.ExportOptions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A84C3364(uint64_t a1)
{
  v2 = type metadata accessor for ImportExport.ExportOptions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A84C33C0()
{
  result = qword_1EB2E8CC8;
  if (!qword_1EB2E8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8CC8);
  }

  return result;
}

uint64_t sub_1A84C3414(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E7D18, &qword_1A8505EB8);
    sub_1A84C34F8(a2, type metadata accessor for ImportExport.Conversation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84C34F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ImportExport.Exporter()
{
  result = qword_1EB2E8CE0;
  if (!qword_1EB2E8CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A84C3594()
{
  result = type metadata accessor for ImportExport.ExportOptions();
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

unint64_t sub_1A84C36B8()
{
  result = qword_1EB2E8CF0;
  if (!qword_1EB2E8CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8CF0);
  }

  return result;
}

unint64_t sub_1A84C3710()
{
  result = qword_1EB2E8CF8;
  if (!qword_1EB2E8CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8CF8);
  }

  return result;
}

unint64_t sub_1A84C3768()
{
  result = qword_1EB2E8D00;
  if (!qword_1EB2E8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D00);
  }

  return result;
}

uint64_t sub_1A84C37BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8531D60 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x704F74726F707865 && a2 == 0xED0000736E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void ImportExport.MessageBatch.writeArchivedConversationBatch(withArchivingOptions:withConversationDirectories:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  if (*(*(v3 + *(type metadata accessor for ImportExport.MessageBatch() + 20)) + 16))
  {
    v7 = objc_autoreleasePoolPush();
    sub_1A84C3E18(a2, v3, a1, &v9, a3);
    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v8 = type metadata accessor for ImportExport.ArchivedConversationBatch();
    (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  }
}

uint64_t ImportExport.ArchivedConversationBatch.conversation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
  swift_beginAccess();
  return sub_1A84C5ED8(v3 + v4, a1, type metadata accessor for ImportExport.Conversation);
}

uint64_t ImportExport.ArchivedConversationBatch.archivedConversationFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ImportExport.ArchivedConversationBatch() + 20);
  v4 = sub_1A84E558C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ImportExport.ArchivedConversationBatch.messages.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.ArchivedConversationBatch() + 24));
}

uint64_t ImportExport.ArchivedConversationBatch.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ImportExport.Conversation();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImportExport.ArchivedConversationBatch();
  v7 = *(v0 + *(v6 + 24));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(type metadata accessor for ImportExport.Message() - 8);
    v10 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v10 + 16);
    v12 = *(v10 + *(v9 + 72) * (v8 - 1) + 16);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1A84E646C();
  v27 = v25;
  v28 = v26;
  MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8534500);
  v13 = *v1;
  v14 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
  swift_beginAccess();
  sub_1A84C5ED8(v13 + v14, v5, type metadata accessor for ImportExport.Conversation);
  v15 = ImportExport.Conversation.shortDescription.getter();
  v17 = v16;
  sub_1A84C5F40(v5, type metadata accessor for ImportExport.Conversation);
  MEMORY[0x1AC56A990](v15, v17);

  MEMORY[0x1AC56A990](0xD00000000000001ELL, 0x80000001A8534520);
  v24 = v11;
  v18 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v18);

  MEMORY[0x1AC56A990](45, 0xE100000000000000);
  v24 = v12;
  v19 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v19);

  MEMORY[0x1AC56A990](0xD00000000000001DLL, 0x80000001A8534540);
  v20 = *(v6 + 20);
  sub_1A84E558C();
  sub_1A84C6008(&qword_1EB2E8D08, MEMORY[0x1E6968FB0]);
  v21 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v21);

  MEMORY[0x1AC56A990](0xD00000000000001DLL, 0x80000001A8534560);
  v22 = ImportExport.ArchivedConversation.description.getter();
  MEMORY[0x1AC56A990](v22);

  return v27;
}

uint64_t sub_1A84C3E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v95 = a4;
  v93 = a3;
  v94 = a2;
  v88 = a5;
  v6 = sub_1A84E52BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = &v84 - v11;
  v12 = sub_1A84E558C();
  v13 = *(v12 - 8);
  v97 = v12;
  v98 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v91 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v92 = &v84 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v84 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v84 - v22;
  v24 = type metadata accessor for ImportExport.Conversation();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = (&v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_1A83EA2FC(&qword_1EB2E89A8, &unk_1A8509CD8);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v84 - v30;
  v32 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
  v33 = *(v32 - 1);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v33 + 48);
  if (v37(a1, 1, v32) == 1)
  {
    v87 = type metadata accessor for ImportExport.Conversation;
    sub_1A84C5ED8(v94, v27, type metadata accessor for ImportExport.Conversation);
    v38 = *(type metadata accessor for ImportExport.ArchivingOptions() + 20);
    v85 = *(v98 + 16);
    v39 = v23;
    v40 = v23;
    v41 = v97;
    v85(v40, v93 + v38, v97);
    strcpy(v99, "Conversation-");
    v99[7] = -4864;
    v42 = *v27;
    v86 = v27;
    v100 = v42;
    v43 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v43);

    sub_1A84E552C();

    sub_1A84C5ED8(v27, &v36[v32[9]], v87);
    v44 = v85;
    v85(v36, v39, v41);
    v44(&v36[v32[5]], v21, v41);
    v45 = &v36[v32[8]];
    sub_1A84E552C();
    v46 = &v36[v32[7]];
    sub_1A84E552C();
    v47 = &v36[v32[6]];
    sub_1A84E552C();
    v48 = *(v98 + 8);
    v48(v21, v41);
    v49 = v41;
    v48(v39, v41);
    sub_1A84C5F40(v86, type metadata accessor for ImportExport.Conversation);
    v23 = v39;
  }

  else
  {
    v49 = v97;
    sub_1A8243D74(a1, v31, &qword_1EB2E89A8, &unk_1A8509CD8);
    if (v37(v31, 1, v32) == 1)
    {
      __break(1u);
      goto LABEL_19;
    }

    sub_1A84C5FA0(v31, v36, type metadata accessor for ImportExport.ArchivedConversationDirectories);
  }

  ImportExport.ArchivedConversationDirectories.ensureDirectoriesExist()();
  if (v50)
  {
    result = sub_1A84C5F40(v36, type metadata accessor for ImportExport.ArchivedConversationDirectories);
    *v95 = v50;
    return result;
  }

  v51 = v32[8];
  v52 = v94;
  v53 = sub_1A84C499C(&v36[v51]);
  v96 = v51;
  v55 = v53;
  v56 = *(v52 + *(type metadata accessor for ImportExport.MessageBatch() + 20));
  v57 = sub_1A84C50A8(v56, &v36[v32[7]]);
  v86 = v23;
  v87 = v55;
  sub_1A84C5A10(v57, &v36[v32[6]], v93, v92);
  v94 = v36;
  v58 = v86;
  sub_1A84E553C();
  v31 = v90;
  URL.relativePath(toParent:)(v90);
  v59 = v98;
  v85 = *(v98 + 8);
  v86 = (v98 + 8);
  (v85)(v58, v49);
  if ((*(v59 + 48))(v31, 1, v49) != 1)
  {

    (*(v59 + 32))(v91, v31, v49);
    v60 = sub_1A84E555C();
    v62 = v61;
    v63 = *(v56 + 16);
    v64 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths;
    v65 = v87;
    swift_beginAccess();
    v66 = *(v65 + v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v65 + v64) = v66;
    v84 = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v66 = sub_1A824A1FC(0, *(v66 + 2) + 1, 1, v66);
      *(v87 + v64) = v66;
    }

    v68 = v96;
    v70 = *(v66 + 2);
    v69 = *(v66 + 3);
    if (v70 >= v69 >> 1)
    {
      v66 = sub_1A824A1FC((v69 > 1), v70 + 1, 1, v66);
    }

    *(v66 + 2) = v70 + 1;
    v71 = &v66[16 * v70];
    *(v71 + 4) = v60;
    *(v71 + 5) = v62;
    v72 = v87;
    *(v87 + v64) = v66;
    swift_endAccess();
    v73 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount;
    swift_beginAccess();
    v74 = *(v72 + v73);
    v75 = __OFADD__(v74, v63);
    v76 = v74 + v63;
    if (v75)
    {
      __break(1u);
    }

    else
    {
      *(v72 + v73) = v76;
      v66 = v94;
      v62 = v97;
      v64 = v93;
      if (qword_1EB2E59F8 == -1)
      {
LABEL_15:
        v77 = qword_1EB2FF3B8;
        v78 = *(v64 + *(type metadata accessor for ImportExport.ArchivingOptions() + 24));
        sub_1A84E529C();
        sub_1A84E52CC();
        sub_1A8406898(&v66[v68], v77);
        v79 = v98;
        v80 = v85;
        (v85)(v91, v62);
        v80(v92, v62);
        v81 = type metadata accessor for ImportExport.ArchivedConversationBatch();
        v82 = v62;
        v83 = v88;
        (*(v79 + 16))(v88 + *(v81 + 20), &v66[v68], v82);
        sub_1A84C5F40(v66, type metadata accessor for ImportExport.ArchivedConversationDirectories);
        *v83 = v72;
        *(v83 + *(v81 + 24)) = v84;
        (*(*(v81 - 8) + 56))(v83, 0, 1, v81);
      }
    }

    swift_once();
    goto LABEL_15;
  }

LABEL_19:
  sub_1A824B2D4(v31, &qword_1EB2E7068, &unk_1A8501EB0);
  result = sub_1A84E653C();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ImportExport.ArchivedConversationBatch()
{
  result = qword_1EB2E8D10;
  if (!qword_1EB2E8D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A84C48A8()
{
  type metadata accessor for ImportExport.ArchivedConversation(319);
  if (v0 <= 0x3F)
  {
    sub_1A84E558C();
    if (v1 <= 0x3F)
    {
      sub_1A84C4944();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A84C4944()
{
  if (!qword_1EB2E7ED8)
  {
    type metadata accessor for ImportExport.Message();
    v0 = sub_1A84E604C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E7ED8);
    }
  }
}

uint64_t sub_1A84C499C(uint64_t a1)
{
  v58[3] = *MEMORY[0x1E69E9840];
  v3 = sub_1A84E558C();
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A84E5C9C();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ImportExport.Conversation();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v58[0]) = 0;
  v15 = [objc_opt_self() defaultManager];
  sub_1A84E555C();
  v16 = sub_1A84E5D8C();

  v17 = [v15 fileExistsAtPath:v16 isDirectory:v58];

  if (v17 && (v58[0] & 1) == 0)
  {
    v23 = sub_1A84E526C();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_1A84E525C();
    v26 = sub_1A84E55AC();
    if (v1)
    {

      sub_1A84E5C8C();
      v29 = v52;
      (*(v52 + 16))(v6, a1, v3);
      v30 = v1;
      v31 = sub_1A84E5C7C();
      v32 = sub_1A84E619C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v58[0] = v55;
        *v33 = 136315394;
        v34 = sub_1A84E555C();
        v35 = v29;
        v37 = v36;
        (*(v35 + 8))(v6, v3);
        v38 = sub_1A82446BC(v34, v37, v58);

        *(v33 + 4) = v38;
        *(v33 + 12) = 2112;
        v39 = v1;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v40;
        v41 = v51;
        *v51 = v40;
        _os_log_impl(&dword_1A823F000, v31, v32, "Failed to read archived conversation from %s: %@", v33, 0x16u);
        sub_1A824B2D4(v41, &unk_1EB2E9070, &unk_1A8501A90);
        MEMORY[0x1AC56D3F0](v41, -1, -1);
        v42 = v55;
        sub_1A8244788(v55);
        MEMORY[0x1AC56D3F0](v42, -1, -1);
        MEMORY[0x1AC56D3F0](v33, -1, -1);
      }

      else
      {

        (*(v29 + 8))(v6, v3);
      }

      (*(v53 + 8))(v10, v54);
      result = swift_willThrow();
    }

    else
    {
      v51 = v26;
      v28 = v27;
      type metadata accessor for ImportExport.ArchivedConversation(0);
      sub_1A84C6008(&qword_1EB2E7210, type metadata accessor for ImportExport.ArchivedConversation);
      v50 = v28;
      sub_1A84E524C();

      sub_1A83F5994(v51, v50);
      v44 = v58[0];
      v45 = OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
      swift_beginAccess();
      sub_1A84C5ED8(v44 + v45, v14, type metadata accessor for ImportExport.Conversation);
      v46 = v55;
      v47 = _s6IMCore12ImportExportO12ConversationV2eeoiySbAE_AEtFZ_0(v14, v55);
      sub_1A84C5F40(v14, type metadata accessor for ImportExport.Conversation);
      result = v44;
      if ((v47 & 1) == 0)
      {
        v56 = 0;
        v57 = 0xE000000000000000;
        sub_1A84E646C();
        MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A85345F0);
        sub_1A84C5ED8(v44 + v45, v14, type metadata accessor for ImportExport.Conversation);
        v48 = *(v14 + 1);
        v49 = *(v14 + 2);

        sub_1A84C5F40(v14, type metadata accessor for ImportExport.Conversation);
        MEMORY[0x1AC56A990](v48, v49);

        MEMORY[0x1AC56A990](0xD000000000000029, 0x80000001A8534610);
        MEMORY[0x1AC56A990](v46[1], v46[2]);
        sub_1A84E653C();
        __break(1u);
      }
    }
  }

  else
  {
    sub_1A84C5ED8(v55, v14, type metadata accessor for ImportExport.Conversation);
    v18 = type metadata accessor for ImportExport.ArchivedConversation(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    sub_1A84C5FA0(v14, v21 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation, type metadata accessor for ImportExport.Conversation);
    result = v21;
    *(v21 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageBatchRelativePaths) = MEMORY[0x1E69E7CC0];
    *(v21 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_messageCount) = 0;
  }

  v43 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A84C50A8(uint64_t a1, void *a2)
{
  v91 = a1;
  v3 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = (&v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v68 - v7;
  v92 = type metadata accessor for ImportExport.Attachment();
  v87 = *(v92 - 8);
  v9 = *(v87 + 64);
  v10 = MEMORY[0x1EEE9AC00](v92);
  v81 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v68 - v12;
  v88 = type metadata accessor for ImportExport.MessagePart();
  v90 = *(v88 - 8);
  v13 = *(v90 + 64);
  v14 = MEMORY[0x1EEE9AC00](v88);
  v82 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v68 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v68 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v68 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v68 - v25;
  v27 = type metadata accessor for ImportExport.Message();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27 - 8);
  v32 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v68 - v33;
  v35 = v93;
  sub_1A8462834();
  if (v35)
  {
    return v21;
  }

  v93 = 0;
  v74 = v34;
  v75 = v32;
  v77 = v24;
  v78 = v18;
  v79 = v21;
  v71 = *(v91 + 16);
  if (!v71)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v36 = 0;
  v70 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v72 = v91 + v70;
  v37 = *(v28 + 72);
  v21 = MEMORY[0x1E69E7CC0];
  v91 = v87 + 48;
  v38 = v90;
  v39 = v74;
  v80 = a2;
  v69 = v37;
  v84 = v8;
  while (1)
  {
    v76 = v21;
    v73 = v36;
    result = sub_1A84C5ED8(v72 + v37 * v36, v39, type metadata accessor for ImportExport.Message);
    v41 = *(v39 + 216);
    v87 = *(v41 + 16);
    if (v87)
    {
      break;
    }

    v42 = MEMORY[0x1E69E7CC0];
LABEL_27:
    v39 = v74;
    v62 = v93;
    ImportExport.Message.update(messageParts:)(v42, v75);
    v93 = v62;
    if (v62)
    {
LABEL_38:
      sub_1A84C5F40(v39, type metadata accessor for ImportExport.Message);

      return v21;
    }

    v21 = v76;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1A83EF168(0, *(v21 + 16) + 1, 1, v21);
    }

    v63 = v73;
    v65 = *(v21 + 16);
    v64 = *(v21 + 24);
    if (v65 >= v64 >> 1)
    {
      v21 = sub_1A83EF168(v64 > 1, v65 + 1, 1, v21);
    }

    v36 = v63 + 1;
    sub_1A84C5F40(v39, type metadata accessor for ImportExport.Message);
    *(v21 + 16) = v65 + 1;
    v66 = v69;
    sub_1A84C5FA0(v75, v21 + v70 + v65 * v69, type metadata accessor for ImportExport.Message);
    v37 = v66;
    if (v36 == v71)
    {
      return v21;
    }
  }

  v21 = 0;
  v85 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v86 = v41 + v85;
  v42 = MEMORY[0x1E69E7CC0];
  while (v21 < *(v41 + 16))
  {
    v43 = *(v38 + 72);
    sub_1A84C5ED8(v86 + v43 * v21, v26, type metadata accessor for ImportExport.MessagePart);
    v44 = &v26[*(v88 + 44)];
    v45 = v26;
    v46 = v84;
    sub_1A8243D74(v44, v84, &qword_1EB2E6F50, &unk_1A8502920);
    v47 = *v91;
    if ((*v91)(v46, 1, v92) == 1)
    {
      sub_1A824B2D4(v46, &qword_1EB2E6F50, &unk_1A8502920);
      v48 = v82;
      sub_1A84C5ED8(v45, v82, type metadata accessor for ImportExport.MessagePart);
      v26 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1A83EF140(0, v42[2] + 1, 1, v42);
      }

      v50 = v42[2];
      v49 = v42[3];
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v42 = sub_1A83EF140(v49 > 1, v50 + 1, 1, v42);
      }
    }

    else
    {
      sub_1A84C5FA0(v46, v89, type metadata accessor for ImportExport.Attachment);
      v52 = v83;
      v53 = v93;
      sub_1A8494884(v80, 0, 0, v83);
      v93 = v53;
      if (v53)
      {
        sub_1A84C5F40(v89, type metadata accessor for ImportExport.Attachment);
        v67 = v45;
LABEL_37:
        sub_1A84C5F40(v67, type metadata accessor for ImportExport.MessagePart);
        v39 = v74;
        goto LABEL_38;
      }

      v26 = v45;
      if (v47(v52, 1, v92) == 1)
      {
        sub_1A824B2D4(v52, &qword_1EB2E6F50, &unk_1A8502920);
        v48 = v78;
        sub_1A84C5ED8(v45, v78, type metadata accessor for ImportExport.MessagePart);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1A83EF140(0, v42[2] + 1, 1, v42);
        }

        v54 = v89;
        v50 = v42[2];
        v55 = v42[3];
        v51 = v50 + 1;
        if (v50 >= v55 >> 1)
        {
          v56 = v89;
          v42 = sub_1A83EF140(v55 > 1, v50 + 1, 1, v42);
          v54 = v56;
          v48 = v78;
        }

        sub_1A84C5F40(v54, type metadata accessor for ImportExport.Attachment);
      }

      else
      {
        v57 = v52;
        v58 = v81;
        sub_1A84C5FA0(v57, v81, type metadata accessor for ImportExport.Attachment);
        v59 = v77;
        v60 = v93;
        ImportExport.MessagePart.update(attachment:)(v58, v77);
        v93 = v60;
        if (v60)
        {
          sub_1A84C5F40(v58, type metadata accessor for ImportExport.Attachment);
          sub_1A84C5F40(v89, type metadata accessor for ImportExport.Attachment);
          v67 = v45;
          goto LABEL_37;
        }

        sub_1A84C5ED8(v59, v79, type metadata accessor for ImportExport.MessagePart);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_1A83EF140(0, v42[2] + 1, 1, v42);
        }

        v50 = v42[2];
        v61 = v42[3];
        v51 = v50 + 1;
        if (v50 >= v61 >> 1)
        {
          v42 = sub_1A83EF140(v61 > 1, v50 + 1, 1, v42);
        }

        sub_1A84C5F40(v59, type metadata accessor for ImportExport.MessagePart);
        sub_1A84C5F40(v81, type metadata accessor for ImportExport.Attachment);
        sub_1A84C5F40(v89, type metadata accessor for ImportExport.Attachment);
        v48 = v79;
      }
    }

    ++v21;
    sub_1A84C5F40(v26, type metadata accessor for ImportExport.MessagePart);
    v42[2] = v51;
    result = sub_1A84C5FA0(v48, v42 + v85 + v50 * v43, type metadata accessor for ImportExport.MessagePart);
    v38 = v90;
    if (v87 == v21)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A84C5A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v28 = a3;
  v26[1] = a2;
  v5 = sub_1A84E558C();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v29 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A84E52BC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = *(a1 + 16);
  if (v10)
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1A84E646C();

    v33 = 0x736567617373654DLL;
    v34 = 0xE90000000000002DLL;
    v11 = *(type metadata accessor for ImportExport.Message() - 8);
    v12 = *(v11 + 80);
    v26[0] = a1;
    v13 = a1 + ((v12 + 32) & ~v12);
    v35 = *(v13 + 16);
    v14 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v14);

    MEMORY[0x1AC56A990](45, 0xE100000000000000);
    v35 = *(v13 + *(v11 + 72) * (v10 - 1) + 16);
    v15 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v15);

    MEMORY[0x1AC56A990](0x6E6F736A2ELL, 0xE500000000000000);
    v16 = v27;
    sub_1A84E552C();

    if (qword_1EB2E59F8 != -1)
    {
      swift_once();
    }

    v17 = *(v28 + *(type metadata accessor for ImportExport.ArchivingOptions() + 24));
    sub_1A84E529C();
    sub_1A84E52CC();
    v18 = v29;
    sub_1A84E553C();
    v19 = v30;
    sub_1A8462834();
    v20 = v32;
    if (v19)
    {
      v21 = *(v31 + 8);
      v21(v18, v32);
      return (v21)(v16, v20);
    }

    else
    {
      (*(v31 + 8))(v18, v32);
      v33 = v26[0];
      sub_1A83EA2FC(&qword_1EB2E7188, &qword_1A850AF10);
      sub_1A84C5E24();
      v23 = sub_1A84E52DC();
      v25 = v24;
      sub_1A84E560C();
      return sub_1A83F5994(v23, v25);
    }
  }

  else
  {
    result = sub_1A84E653C();
    __break(1u);
  }

  return result;
}

unint64_t sub_1A84C5E24()
{
  result = qword_1EB2E7EA0;
  if (!qword_1EB2E7EA0)
  {
    sub_1A83EC9D4(&qword_1EB2E7188, &qword_1A850AF10);
    sub_1A84C6008(&qword_1EB2E7800, type metadata accessor for ImportExport.Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7EA0);
  }

  return result;
}

uint64_t sub_1A84C5ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84C5F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A84C5FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84C6008(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t ImportExport.Message.LayoutDescriptor.init(withAssoociatedMessageGeometryDescriptor:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = *a1;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  result = ImportExport.Message.LayoutDescriptor.LayoutIntent.init(rawValue:)(result, &v10);
  v5 = v10;
  if (v10 == 13)
  {
LABEL_5:
    *a2 = 13;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    return result;
  }

  result = *(a1 + 8);
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

  result = ImportExport.Message.LayoutDescriptor.LayoutIntent.init(rawValue:)(result, &v9);
  if (v9 == 13)
  {
    goto LABEL_5;
  }

  *&v6 = *(a1 + 16);
  *&v7 = *(a1 + 40);
  *&v8 = *(a1 + 48);
  *a2 = v5 | (v9 << 8) | (v6 << 32);
  *(a2 + 1) = *(a1 + 24);
  a2[3] = v7 | (v8 << 32);
  return result;
}

unint64_t ImportExport.Message.LayoutDescriptor.LayoutIntent.init(withAssocatedMessagelayoutIntent:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = ImportExport.Message.LayoutDescriptor.LayoutIntent.init(rawValue:)(result, &v3);
    *a2 = v3;
  }

  return result;
}

float64x2_t ImportExport.Message.LayoutDescriptor.associatedMessageGeometryDescriptor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(v1 + 1);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 8);
  result = vcvtq_f64_f32(*(v1 + 24));
  *(a1 + 40) = result;
  *(a1 + 56) = 0;
  return result;
}

uint64_t ImportExport.ArchiveImporterStatistics.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for ImportExport.ImportStatistics();
  swift_allocObject();
  v1 = ImportExport.ImportStatistics.init()();
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t ImportExport.ArchiveImporterStatistics.__allocating_init(importStatistics:missingAttachments:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

BOOL ImportExport.ArchiveImporterStatistics.isEmpty.getter()
{
  if (*(*(v0 + 24) + 16))
  {
    return 0;
  }

  v2 = *(v0 + 16);
  return ImportExport.ImportStatistics.isEmpty.getter();
}

uint64_t ImportExport.ArchiveImporterStatistics.init(importStatistics:missingAttachments:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ImportExport.ArchiveImporterStatistics.init()()
{
  type metadata accessor for ImportExport.ImportStatistics();
  swift_allocObject();
  v1 = ImportExport.ImportStatistics.init()();
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

unint64_t sub_1A84C637C()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1A84C63B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A8533060 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8533590 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A84E67AC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A84C649C(uint64_t a1)
{
  v2 = sub_1A84C6794();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84C64D8(uint64_t a1)
{
  v2 = sub_1A84C6794();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchiveImporterStatistics.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t ImportExport.ArchiveImporterStatistics.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t ImportExport.ArchiveImporterStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E8D20, &unk_1A850AF40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84C6794();
  sub_1A84E68AC();
  v13 = *(v3 + 16);
  HIBYTE(v12) = 0;
  type metadata accessor for ImportExport.ImportStatistics();
  sub_1A84C6B84(&qword_1EB2E82B8, type metadata accessor for ImportExport.ImportStatistics);
  sub_1A84E672C();
  if (!v2)
  {
    v13 = *(v3 + 24);
    HIBYTE(v12) = 1;
    sub_1A83EA2FC(&qword_1EB2E86B0, &qword_1A8509B10);
    sub_1A84C6AE8(&qword_1EB2E86B8, &qword_1EB2E73A0);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1A84C6794()
{
  result = qword_1EB2E8D28;
  if (!qword_1EB2E8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D28);
  }

  return result;
}

uint64_t ImportExport.ArchiveImporterStatistics.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ImportExport.ArchiveImporterStatistics.init(from:)(a1);
  return v2;
}

uint64_t *ImportExport.ArchiveImporterStatistics.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  v13 = sub_1A83EA2FC(&qword_1EB2E8D30, &qword_1A850AF50);
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v8 = &v13 - v7;
  v9 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84C6794();
  sub_1A84E689C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    type metadata accessor for ImportExport.ImportStatistics();
    v14 = 0;
    sub_1A84C6B84(&qword_1EB2E82B0, type metadata accessor for ImportExport.ImportStatistics);
    v11 = v13;
    sub_1A84E666C();
    v1[2] = v15;
    sub_1A83EA2FC(&qword_1EB2E86B0, &qword_1A8509B10);
    v14 = 1;
    sub_1A84C6AE8(&qword_1EB2E86E0, &qword_1EB2E7398);
    sub_1A84E666C();
    (*(v10 + 8))(v8, v11);
    v1[3] = v15;
  }

  sub_1A8244788(a1);
  return v1;
}

uint64_t sub_1A84C6AE8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E86B0, &qword_1A8509B10);
    sub_1A84C6B84(a2, type metadata accessor for ImportExport.Attachment);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A84C6B84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_1A84C6BCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = ImportExport.ArchiveImporterStatistics.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t ImportExport.ArchiveImporterStatistics.format(report:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImportExport.Attachment();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  v38 = 0xD000000000000011;
  *&v39 = 0x80000001A852F2B0;
  *(&v39 + 1) = MEMORY[0x1E69E7CC0];
  v40 = MEMORY[0x1E69E7CC0];
  v41 = 0;
  ImportExport.ImportStatistics.format(report:)(&v38);
  v10 = v38;
  v37 = v39;
  v11 = v40;
  v12 = v41;
  v13 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v15 = v13;
  }

  else
  {
    result = sub_1A83EECF8(0, *(v13 + 16) + 1, 1, v13);
    v15 = result;
  }

  v17 = *(v15 + 16);
  v16 = *(v15 + 24);
  if (v17 >= v16 >> 1)
  {
    result = sub_1A83EECF8((v16 > 1), v17 + 1, 1, v15);
    v15 = result;
  }

  *(v15 + 16) = v17 + 1;
  v18 = v15 + 40 * v17;
  *(v18 + 32) = v10;
  *(v18 + 40) = v37;
  *(v18 + 56) = v11;
  *(v18 + 64) = v12;
  *(a1 + 24) = v15;
  v19 = 1;
  LOBYTE(v38) = 1;
  v20 = *(v2 + 24);
  v21 = *(v20 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v36 = v15;
    *&v37 = a1;
    v23 = v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v24 = *(v5 + 72);
    v25 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A84300A8(v23, v8);
      v26 = ImportExport.Attachment.description.getter();
      v28 = v27;
      sub_1A83F5AF4(v8);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A83EEBEC(0, *(v25 + 16) + 1, 1, v25);
        v25 = result;
      }

      v30 = *(v25 + 16);
      v29 = *(v25 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_1A83EEBEC((v29 > 1), v30 + 1, 1, v25);
        v25 = result;
      }

      *(v25 + 16) = v30 + 1;
      v31 = (v25 + 32 * v30);
      v31[4] = 0;
      v31[5] = 0xE000000000000000;
      v31[6] = v26;
      v31[7] = v28;
      v23 += v24;
      --v21;
    }

    while (v21);
    v19 = v38;
    v15 = v36;
    a1 = v37;
    v22 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  v33 = *(v15 + 16);
  v32 = *(v15 + 24);
  if (v33 >= v32 >> 1)
  {
    result = sub_1A83EECF8((v32 > 1), v33 + 1, 1, v15);
    v15 = result;
  }

  *(v15 + 16) = v33 + 1;
  v34 = v15 + 40 * v33;
  *(v34 + 32) = 0xD000000000000014;
  *(v34 + 40) = 0x80000001A8534660;
  *(v34 + 48) = v25;
  *(v34 + 56) = v22;
  *(v34 + 64) = v19;
  *(a1 + 24) = v15;
  return result;
}

unint64_t sub_1A84C702C()
{
  result = qword_1EB2E8D38;
  if (!qword_1EB2E8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D38);
  }

  return result;
}

unint64_t sub_1A84C7084()
{
  result = qword_1EB2E8D40;
  if (!qword_1EB2E8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D40);
  }

  return result;
}

unint64_t sub_1A84C70DC()
{
  result = qword_1EB2E8D48;
  if (!qword_1EB2E8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8D48);
  }

  return result;
}

uint64_t sub_1A84C7130()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2FF010);
  sub_1A824431C(v0, qword_1EB2FF010);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

uint64_t sub_1A84C719C()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2FF3C8);
  sub_1A824431C(v0, qword_1EB2FF3C8);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

uint64_t sub_1A84C7208()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2FF3E0);
  sub_1A824431C(v0, qword_1EB2FF3E0);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

uint64_t sub_1A84C7274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1A84E5C9C();
  v209 = *(v7 - 8);
  v210 = v7;
  v8 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v211 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for ImportExport.MessagePart();
  v252 = *(v228 - 8);
  v10 = *(v252 + 64);
  v11 = MEMORY[0x1EEE9AC00](v228);
  v254 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v182 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v182 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v182 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v182 - v22;
  v24 = sub_1A84E5B9C();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v229 = &v182 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for ImportExport.Message();
  v27 = *(*(v212 - 1) + 64);
  MEMORY[0x1EEE9AC00](v212);
  v213 = (&v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v3 + 32) == a1 && *(v3 + 40) == a2 || (sub_1A84E67AC() & 1) != 0)
  {
    return sub_1A84CA1FC(v3, a3, type metadata accessor for ImportExport.Message);
  }

  v222 = v15;
  v216 = v23;
  v193 = a1;
  v194 = a2;
  v195 = a3;
  v30 = *(v3 + 8);
  v224 = *v3;
  v226 = v21;
  v227 = v30;
  v31 = v212;
  v32 = (v3 + v212[23]);
  v33 = v32[7];
  v268 = v32[6];
  v269 = v33;
  v270 = v32[8];
  v34 = v32[3];
  v264 = v32[2];
  v265 = v34;
  v35 = v32[5];
  v266 = v32[4];
  v267 = v35;
  v36 = v32[1];
  v262 = *v32;
  v263 = v36;
  v37 = (v3 + v212[24]);
  v38 = v37[8];
  v278 = v37[7];
  v279 = v38;
  v39 = v37[6];
  v40 = v37[3];
  v273 = v37[2];
  v274 = v40;
  v41 = v37[4];
  v276 = v37[5];
  v277 = v39;
  v275 = v41;
  v42 = v37[1];
  v271 = *v37;
  v272 = v42;
  v43 = *(v3 + 24);
  v44 = *(v3 + 96);
  v45 = *(v3 + 104);
  v46 = *(v3 + 128);
  v47 = *(v3 + 136);
  v48 = *(v3 + 152);
  v204 = *(v3 + 144);
  v205 = v46;
  v206 = v48;
  v49 = *(v3 + 168);
  v203 = *(v3 + 160);
  v208 = v49;
  v50 = *(v3 + 184);
  v188 = *(v3 + 176);
  v189 = v44;
  v192 = *(v3 + 208);
  v219 = *(v3 + 216);
  v51 = *(v3 + 88);
  v187 = *(v3 + 80);
  v52 = v212[21];
  v255 = v212[20];
  v53 = (v3 + v52);
  v54 = *v53;
  v55 = v53[1];
  v56 = (v3 + v212[22]);
  v57 = v56[1];
  v190 = *v56;
  v191 = v54;
  v201 = v57;

  v198 = v50;

  v199 = v45;

  v207 = v47;

  v58 = v206;

  v197 = v51;

  v200 = v55;

  v225 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v196 = *&v256[0];
  v186 = *(v3 + 16);
  v59 = v31[20];
  *&v256[0] = 0;
  sub_1A84E5B8C();
  v60 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v202 = v59;
  v223 = v60;
  sub_1A84E594C();
  if (v58)
  {
    v61 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v61 = v204 & 0xFFFFFFFFFFFFLL;
    }

    if (v61)
    {
      v43 |= 4uLL;
    }
  }

  v62 = v226;
  if (v207)
  {
    v63 = HIBYTE(v207) & 0xF;
    if ((v207 & 0x2000000000000000) == 0)
    {
      v63 = v205 & 0xFFFFFFFFFFFFLL;
    }

    if (v63)
    {
      v43 |= 8uLL;
    }
  }

  if (v208)
  {
    v64 = HIBYTE(v208) & 0xF;
    if ((v208 & 0x2000000000000000) == 0)
    {
      v64 = v203 & 0xFFFFFFFFFFFFLL;
    }

    if (v64)
    {
      v43 |= 0x10uLL;
    }
  }

  if ((~v43 & 0x8002) != 0)
  {
    v65 = v43 | 0x8002;
  }

  else
  {
    v65 = v43;
  }

  v66 = v219;
  sub_1A8423270(v219, v256);
  v67 = *&v256[0];
  if ((*&v256[0] & ~v65) == 0)
  {
    v67 = 0;
  }

  v184 = v67;
  v185 = v65;
  v68 = *(v66 + 16);
  v69 = MEMORY[0x1E69E7CC0];
  if (v68)
  {
    *&v256[0] = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v68, 0);
    v69 = *&v256[0];
    v70 = v66 + ((*(v252 + 80) + 32) & ~*(v252 + 80));
    v253 = *(v252 + 72);
    v71 = v228;
    do
    {
      v72 = v254;
      sub_1A84CA1FC(v70, v254, type metadata accessor for ImportExport.MessagePart);
      v73 = (v72 + *(v71 + 76));
      v74 = v73[1];
      v255 = *v73;

      sub_1A84CA264(v72, type metadata accessor for ImportExport.MessagePart);
      *&v256[0] = v69;
      v76 = *(v69 + 16);
      v75 = *(v69 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_1A83EF534((v75 > 1), v76 + 1, 1);
        v71 = v228;
        v69 = *&v256[0];
      }

      *(v69 + 16) = v76 + 1;
      v77 = v69 + 16 * v76;
      *(v77 + 32) = v255;
      *(v77 + 40) = v74;
      v70 += v253;
      --v68;
    }

    while (v68);
    v62 = v226;
  }

  *&v256[0] = v69;
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A8407D84();
  v217 = sub_1A84E5D6C();
  v218 = v78;

  v79 = *(v219 + 16);
  if (v79)
  {
    v80 = 0;
    v81 = 0;
    v221 = (*(v252 + 80) + 32) & ~*(v252 + 80);
    v254 = *(v252 + 72);
    v82 = MEMORY[0x1E69E7CC0];
    v220 = v225 - 8;
    v183 = v219 + v221;
    result = v219 + v221;
    v215 = v79;
    v83 = v79;
    do
    {
      v230 = result;
      v231 = v83;
      v253 = v82;
      sub_1A84CA1FC(result, v62, type metadata accessor for ImportExport.MessagePart);
      v84 = *(v62 + 48);
      if (v84)
      {
        v255 = *(v62 + 40);
        v85 = v228;
        v232 = v84;
      }

      else
      {
        v85 = v228;
        v86 = (v62 + *(v228 + 76));
        v87 = *v86;
        v88 = v86[1];
        v232 = sub_1A84E5E7C();
        v255 = v81;
      }

      v89 = *(v62 + 56);
      if (v89 < 0)
      {
        v89 = v80;
      }

      v252 = v89;
      v90 = *(v62 + 8);
      v91 = (v62 + v85[19]);
      v92 = *v91;
      v93 = v91[1];
      v241 = *v62;
      v242 = v92;
      v233 = v93;
      v238 = *(v62 + 16);
      v246 = *(v62 + 96);
      v94 = *(v62 + 168);
      v95 = *(v62 + 120);
      v96 = *(v62 + 136);
      v260 = *(v62 + 152);
      v261 = v94;
      v258 = v95;
      v259 = v96;
      v257 = *(v62 + 104);
      v97 = v85[13];
      v98 = (v62 + v85[12]);
      v99 = v98[1];
      v249 = *v98;
      v100 = *(v62 + v97 + 8);
      v251 = *(v62 + v97);
      v250 = v100;
      v101 = v85[15];
      v102 = (v62 + v85[14]);
      v103 = v102[1];
      v247 = *v102;
      v236 = v99;
      v237 = v103;
      v104 = *(v62 + v101 + 8);
      v248 = *(v62 + v101);
      v240 = v104;
      v105 = v85[21];
      v106 = *(v62 + 80);
      v234 = *(v62 + 64);
      v235 = v106;

      sub_1A8243D74(&v257, v256, &qword_1EB2E6F58, &qword_1A8501388);

      v107 = v225;
      sub_1A84E595C();
      v239 = *&v256[0];
      v108 = v85[17];
      v243 = *(v62 + v85[16]);
      v245 = *(v62 + v108);
      v244 = *(v62 + v85[18]);
      v109 = *(v62 + v85[20]);
      sub_1A8243D74(v62 + v85[11], &v18[v85[11]], &qword_1EB2E6F50, &unk_1A8502920);
      *(v18 + 6) = 0u;
      *(v18 + 7) = 0u;
      *(v18 + 8) = 0u;
      *(v18 + 9) = 0u;
      *(v18 + 10) = 0u;
      *(v18 + 22) = 0;
      *(v18 + 4) = 0u;
      *(v18 + 5) = 0u;
      v110 = v85[21];
      *&v256[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      v18[16] = v238;
      v111 = v242;
      *v18 = v241;
      *(v18 + 1) = v90;
      v112 = v232;
      *(v18 + 5) = v255;
      *(v18 + 6) = v112;
      v113 = &v18[v85[19]];
      v114 = v233;
      *v113 = v111;
      *(v113 + 1) = v114;
      v115 = *(v18 + 9);

      v116 = v235;
      *(v18 + 4) = v234;
      *(v18 + 5) = v116;
      *(v18 + 12) = v246;
      v117 = *(v18 + 120);
      v118 = *(v18 + 152);
      v256[2] = *(v18 + 136);
      v256[3] = v118;
      v256[4] = *(v18 + 168);
      v256[0] = *(v18 + 104);
      v256[1] = v117;
      sub_1A824B2D4(v256, &qword_1EB2E6F58, &qword_1A8501388);
      v119 = v257;
      *(v18 + 120) = v258;
      v120 = v260;
      *(v18 + 136) = v259;
      *(v18 + 152) = v120;
      *(v18 + 168) = v261;
      *(v18 + 104) = v119;
      v121 = &v18[v85[12]];
      v122 = v236;
      *v121 = v249;
      *(v121 + 1) = v122;
      v123 = &v18[v85[13]];
      v124 = v251;
      v125 = v250;
      *v123 = v251;
      *(v123 + 1) = v125;
      v126 = &v18[v85[14]];
      v127 = v237;
      *v126 = v247;
      *(v126 + 1) = v127;
      v128 = &v18[v85[15]];
      v129 = v240;
      *v128 = v248;
      *(v128 + 1) = v129;
      sub_1A83F5918(v124, v125);
      v130 = *(v107 - 8);
      v251 = *(v130 + 8);
      v250 = v130 + 8;
      v251(&v18[v110], v107);
      v280 = v239;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v18[v85[16]] = v243;
      v18[v85[17]] = v245;
      v18[v85[18]] = v244;
      *&v18[v85[20]] = v109;
      v131 = v227;
      *(v18 + 3) = v224;
      *(v18 + 4) = v131;
      v132 = v252;
      *(v18 + 7) = v252;
      v133 = v222;
      sub_1A84CA1FC(v18, v222, type metadata accessor for ImportExport.MessagePart);

      v82 = v253;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_1A83EF140(0, v82[2] + 1, 1, v82);
      }

      v135 = v82[2];
      v134 = v82[3];
      v62 = v226;
      if (v135 >= v134 >> 1)
      {
        v82 = sub_1A83EF140(v134 > 1, v135 + 1, 1, v82);
      }

      v82[2] = v135 + 1;
      sub_1A842AD50(v133, v82 + v221 + v135 * v254, type metadata accessor for ImportExport.MessagePart);
      result = sub_1A84CA264(v18, type metadata accessor for ImportExport.MessagePart);
      v80 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v136 = v255 + v112;
      if (__OFADD__(v255, v112))
      {
        goto LABEL_73;
      }

      v81 = v136 + 1;
      v137 = v231;
      if (__OFADD__(v136, 1))
      {
        goto LABEL_74;
      }

      sub_1A84CA264(v62, type metadata accessor for ImportExport.MessagePart);
      result = v230 + v254;
      v83 = v137 - 1;
    }

    while (v83);
    v138 = 0;
    *&v257 = -1;
    v139 = v214;
    v140 = v211;
    v141 = v183;
    while (v138 < *(v219 + 16))
    {
      v142 = v216;
      sub_1A84CA1FC(v141, v216, type metadata accessor for ImportExport.MessagePart);
      sub_1A842343C(v142, &v257);
      if (v139)
      {

        sub_1A84CA264(v142, type metadata accessor for ImportExport.MessagePart);

        sub_1A84E5C8C();
        v173 = v139;
        v174 = sub_1A84E5C7C();
        v175 = sub_1A84E619C();

        if (os_log_type_enabled(v174, v175))
        {
          v176 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          *v176 = 138412290;
          v178 = v139;
          v179 = _swift_stdlib_bridgeErrorToNSError();
          *(v176 + 4) = v179;
          *v177 = v179;
          _os_log_impl(&dword_1A823F000, v174, v175, "Failed to create a message with Error: %@", v176, 0xCu);
          sub_1A824B2D4(v177, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v177, -1, -1);
          MEMORY[0x1AC56D3F0](v176, -1, -1);
        }

        (*(v209 + 8))(v140, v210);
        swift_willThrow();
        return (v251)(v213 + v202, v225);
      }

      ++v138;
      result = sub_1A84CA264(v142, type metadata accessor for ImportExport.MessagePart);
      v141 += v254;
      if (v215 == v138)
      {
        goto LABEL_52;
      }
    }

LABEL_75:
    __break(1u);
  }

  else
  {
    v82 = MEMORY[0x1E69E7CC0];
LABEL_52:
    v143 = v204;
    v144 = v184 | v185;
    v145 = v212;
    v146 = v213;
    v147 = v227;
    *v213 = v224;
    *(v146 + 8) = v147;
    v148 = v218;
    *(v146 + 112) = v217;
    *(v146 + 120) = v148;
    *(v146 + 16) = v186;
    v149 = v194;
    *(v146 + 32) = v193;
    *(v146 + 40) = v149;
    v150 = (v146 + v145[23]);
    v151 = v265;
    v150[2] = v264;
    v150[3] = v151;
    v152 = v270;
    v150[7] = v269;
    v150[8] = v152;
    v153 = v268;
    v150[5] = v267;
    v150[6] = v153;
    v150[4] = v266;
    v154 = v263;
    *v150 = v262;
    v150[1] = v154;
    v155 = (v146 + v145[24]);
    v156 = v278;
    v155[6] = v277;
    v155[7] = v156;
    v155[8] = v279;
    v157 = v274;
    v155[2] = v273;
    v155[3] = v157;
    v158 = v276;
    v155[4] = v275;
    v155[5] = v158;
    v159 = v272;
    *v155 = v271;
    v155[1] = v159;
    v160 = v197;
    *(v146 + 80) = v187;
    *(v146 + 88) = v160;
    v161 = v199;
    *(v146 + 96) = v189;
    *(v146 + 104) = v161;
    v162 = v206;
    v163 = v207;
    *(v146 + 128) = v205;
    *(v146 + 136) = v163;
    *(v146 + 144) = v143;
    *(v146 + 152) = v162;
    v164 = v208;
    *(v146 + 160) = v203;
    *(v146 + 168) = v164;
    v165 = v198;
    *(v146 + 176) = v188;
    *(v146 + 184) = v165;
    v166 = v192;
    *(v146 + 208) = v192;
    *(v146 + 216) = v82;

    sub_1A8400E7C(&v262, v256);
    sub_1A8400E7C(&v271, v256);
    (*(*(v225 - 8) + 8))(v146 + v202);
    *&v256[0] = v196;
    sub_1A84E5B8C();
    sub_1A84E594C();
    v167 = (v146 + v145[21]);
    v168 = v200;
    *v167 = v191;
    v167[1] = v168;
    v169 = (v146 + v145[22]);
    v170 = v201;
    *v169 = v190;
    v169[1] = v170;
    *(v146 + 24) = v144;
    if (v166 > 3)
    {
      if (v166 > 5)
      {
        if (v166 == 6)
        {
          v171 = 0xE300000000000000;
          v172 = 5456722;
        }

        else
        {
          v171 = 0xEC000000534D5365;
          v172 = 0x74696C6C65746153;
        }
      }

      else if (v166 == 4)
      {
        v172 = 5459283;
        v171 = 0xE300000000000000;
      }

      else
      {
        v171 = 0xE800000000000000;
        v172 = 0x656D695465636146;
      }
    }

    else if (v166 > 1)
    {
      if (v166 == 2)
      {
        v171 = 0xE800000000000000;
      }

      else
      {
        v171 = 0xEC0000006574694CLL;
      }

      v172 = 0x6567617373654D69;
    }

    else if (v166)
    {
      v171 = 0xE300000000000000;
      v172 = 7958113;
    }

    else
    {
      v171 = 0xE700000000000000;
      v172 = 0x6E776F6E6B6E75;
    }

    *(v146 + 192) = v172;
    *(v146 + 200) = v171;
    v180 = v265;
    *(v146 + 48) = *(&v264 + 1);
    *(v146 + 56) = v180;
    v181 = v274;
    *(v146 + 64) = *(&v273 + 1);
    *(v146 + 72) = v181;
    sub_1A842AD50(v146, v195, type metadata accessor for ImportExport.Message);
  }

  return result;
}