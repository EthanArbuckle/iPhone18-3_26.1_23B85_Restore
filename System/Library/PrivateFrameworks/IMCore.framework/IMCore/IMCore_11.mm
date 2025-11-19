uint64_t sub_1A8458EFC()
{
  v1 = 0x61737265766E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4C5255656C6966;
  }
}

uint64_t sub_1A8458F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A845B7AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8458F90(uint64_t a1)
{
  v2 = sub_1A845AF84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8458FCC(uint64_t a1)
{
  v2 = sub_1A845AF84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchiveManifest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E7DD0, &unk_1A8506360);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A845AF84();
  sub_1A84E68AC();
  LOBYTE(v14) = 0;
  sub_1A84E558C();
  sub_1A845AF3C(&qword_1EB2E7200, MEMORY[0x1E6968FB0]);
  sub_1A84E66BC();
  if (!v2)
  {
    v11 = type metadata accessor for ImportExport.ArchiveManifest(0);
    v14 = *(v3 + *(v11 + 20));
    HIBYTE(v13) = 1;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A8407D18(&qword_1EB2E71B8);
    sub_1A84E672C();
    v14 = *(v3 + *(v11 + 24));
    HIBYTE(v13) = 2;
    type metadata accessor for ImportExport.ExportStatistics();
    sub_1A845AF3C(&qword_1EB2E7DE0, type metadata accessor for ImportExport.ExportStatistics);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImportExport.ArchiveManifest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_1A83EA2FC(&qword_1EB2E7DE8, &qword_1A8506370);
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v24 = type metadata accessor for ImportExport.ArchiveManifest(0);
  v12 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A84E558C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A845AF84();
  sub_1A84E689C();
  if (v2)
  {
    sub_1A8244788(a1);
    return sub_1A824B2D4(v14, &qword_1EB2E7068, &unk_1A8501EB0);
  }

  else
  {
    v17 = v22;
    LOBYTE(v26) = 0;
    sub_1A845AF3C(&qword_1EB2E7218, MEMORY[0x1E6968FB0]);
    sub_1A84E65FC();
    sub_1A8458174(v7, v14);
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    v25 = 1;
    sub_1A8407D18(&qword_1EB2E71D0);
    sub_1A84E666C();
    v18 = v24;
    *&v14[*(v24 + 20)] = v26;
    type metadata accessor for ImportExport.ExportStatistics();
    v25 = 2;
    sub_1A845AF3C(&qword_1EB2E7DF0, type metadata accessor for ImportExport.ExportStatistics);
    sub_1A84E666C();
    (*(v17 + 8))(v11, v23);
    *&v14[*(v18 + 24)] = v26;
    sub_1A845AFD8(v14, v21);
    sub_1A8244788(a1);
    return sub_1A845B03C(v14);
  }
}

unint64_t ImportExport.ArchiveManifest.description.getter()
{
  sub_1A84E646C();

  v1 = type metadata accessor for ImportExport.ArchiveManifest(0);
  v2 = MEMORY[0x1AC56AB00](*(v0 + *(v1 + 20)), MEMORY[0x1E69E6158]);
  MEMORY[0x1AC56A990](v2);

  MEMORY[0x1AC56A990](10537, 0xE200000000000000);
  return 0xD00000000000001FLL;
}

unint64_t sub_1A8459798(uint64_t a1)
{
  sub_1A84E646C();

  v3 = MEMORY[0x1AC56AB00](*(v1 + *(a1 + 20)), MEMORY[0x1E69E6158]);
  MEMORY[0x1AC56A990](v3);

  MEMORY[0x1AC56A990](10537, 0xE200000000000000);
  return 0xD00000000000001FLL;
}

double ImportExport.ArchiveManifest.format(report:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v42 - v6;
  v45 = 0;
  *&v46 = 0xE000000000000000;
  sub_1A84580FC(v2, v42 - v6);
  v8 = sub_1A84E558C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1A824B2D4(v7, &qword_1EB2E7068, &unk_1A8501EB0);
    v10 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    v12 = sub_1A84E555C();
    v10 = v13;
    (*(v9 + 8))(v7, v8);
    v11 = v12;
  }

  MEMORY[0x1AC56A990](v11, v10);

  v14 = v45;
  v15 = v46;
  v16 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1A83EEBEC(0, *(v16 + 2) + 1, 1, v16);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1A83EEBEC((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v19 = &v16[32 * v18];
  *(v19 + 4) = 0x4C5255656C6966;
  *(v19 + 5) = 0xE700000000000000;
  *(v19 + 6) = v14;
  *(v19 + 7) = v15;
  v44 = a1;
  *(a1 + 16) = v16;
  v42[1] = "ArchiveManifest(conversations: ";
  v20 = type metadata accessor for ImportExport.ArchiveManifest(0);
  v21 = *(v20 + 20);
  *&v43 = v2;
  v22 = *(v2 + v21);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v25 = (v22 + 40);
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      v27 = *(v25 - 1);
      v28 = *v25;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1A83EEBEC(0, *(v26 + 2) + 1, 1, v26);
      }

      v30 = *(v26 + 2);
      v29 = *(v26 + 3);
      if (v30 >= v29 >> 1)
      {
        v26 = sub_1A83EEBEC((v29 > 1), v30 + 1, 1, v26);
      }

      *(v26 + 2) = v30 + 1;
      v31 = &v26[32 * v30];
      *(v31 + 4) = 0;
      *(v31 + 5) = 0xE000000000000000;
      *(v31 + 6) = v27;
      *(v31 + 7) = v28;
      v25 += 2;
      --v23;
    }

    while (v23);
  }

  v45 = 0xD000000000000012;
  *&v46 = 0x80000001A8531CA0;
  *(&v46 + 1) = v24;
  v47 = v24;
  v48 = 0;
  v32 = *(v43 + *(v20 + 24));
  ImportExport.ExportStatistics.format(report:)(&v45);
  v34 = v44;
  v33 = v45;
  v43 = v46;
  v35 = v47;
  v36 = v48;
  v37 = *(v44 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1A83EECF8(0, *(v37 + 2) + 1, 1, v37);
  }

  v39 = *(v37 + 2);
  v38 = *(v37 + 3);
  if (v39 >= v38 >> 1)
  {
    v37 = sub_1A83EECF8((v38 > 1), v39 + 1, 1, v37);
  }

  *(v37 + 2) = v39 + 1;
  v40 = &v37[40 * v39];
  *(v40 + 4) = v33;
  result = *&v43;
  *(v40 + 40) = v43;
  *(v40 + 7) = v35;
  v40[64] = v36;
  *(v34 + 24) = v37;
  return result;
}

uint64_t ImportExport.ArchiveManifest.makeAsyncIterator()()
{
  v1 = type metadata accessor for ImportExport.ArchiveManifest(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A845AFD8(v0, v4);
  v5 = type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  sub_1A845B0B8(v4, v8 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest);
  *(v8 + 16) = 0;
  return v8;
}

uint64_t ImportExport.ArchiveManifest.ArchiveManifestIterator.__allocating_init(withArchiveManifest:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_1A845B0B8(a1, v5 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest);
  *(v5 + 16) = 0;
  return v5;
}

uint64_t ImportExport.ArchiveManifest.ArchiveManifestIterator.init(withArchiveManifest:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  sub_1A845B0B8(a1, v1 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest);
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_1A8459D78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1A84E5C9C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for ImportExport.ArchiveManifest(0);
  v2[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v8 = sub_1A84E558C();
  v2[10] = v8;
  v9 = *(v8 - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();
  v11 = *(*(sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A8459F14, 0, 0);
}

uint64_t sub_1A8459F14()
{
  v64 = v0;
  v1 = v0[8];
  v2 = v0[3];
  v3 = v2 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest;
  if (*(v2 + 16) >= *(*(v2 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest + *(v1 + 20)) + 16))
  {
    goto LABEL_8;
  }

  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[11];
  sub_1A84580FC(v2 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest, v4);
  v7 = *(v6 + 48);
  LODWORD(v5) = v7(v4, 1, v5);
  result = sub_1A824B2D4(v4, &qword_1EB2E7068, &unk_1A8501EB0);
  if (v5 != 1)
  {
    v23 = *(v2 + 16);
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v24 = *(v3 + *(v1 + 20));
      if (v23 < *(v24 + 16))
      {
        v25 = v0[13];
        v27 = v0[9];
        v26 = v0[10];
        v28 = v24 + 16 * v23;
        v30 = *(v28 + 32);
        v29 = *(v28 + 40);
        sub_1A845AFD8(v3, v27);

        ImportExport.ArchiveManifest.archivedConversationFileURL(for:)(v25);
        sub_1A845B03C(v27);
        v31 = v7(v25, 1, v26);
        v32 = v0[13];
        if (v31 == 1)
        {
          v33 = v0[7];
          sub_1A824B2D4(v0[13], &qword_1EB2E7068, &unk_1A8501EB0);
          sub_1A84E5C8C();

          v34 = sub_1A84E5C7C();
          v35 = sub_1A84E619C();

          v36 = os_log_type_enabled(v34, v35);
          v37 = v0[7];
          v39 = v0[4];
          v38 = v0[5];
          if (v36)
          {
            v62 = v0[7];
            v37 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v63 = v40;
            *v37 = 136315138;
            v41 = sub_1A82446BC(v30, v29, &v63);

            *(v37 + 4) = v41;
            _os_log_impl(&dword_1A823F000, v34, v35, "The archivedConversationFileURL for the relative path '%s' is nil", v37, 0xCu);
            sub_1A8244788(v40);
            MEMORY[0x1AC56D3F0](v40, -1, -1);
            MEMORY[0x1AC56D3F0](v37, -1, -1);

            (*(v38 + 8))(v62, v39);
          }

          else
          {

            (*(v38 + 8))(v37, v39);
          }

          v46 = v0[2];
          v47 = sub_1A83EA2FC(&qword_1EB2E7E00, &qword_1A8506380);
          v45 = (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
          v48 = *(v2 + 16);
          v19 = __OFADD__(v48, 1);
          v20 = v48 + 1;
          if (!v19)
          {
            goto LABEL_20;
          }

          __break(1u);
        }

        else
        {
          v43 = v0[11];
          v42 = v0[12];
          v44 = v0[10];

          v37 = *(v43 + 32);
          (v37)(v42, v32, v44);
          v45 = sub_1A840704C(v42);
          v46 = v0[12];
        }

        v49 = v45;
        v50 = v0[10];
        v51 = v0[2];
        v52 = sub_1A83EA2FC(&qword_1EB2E7E00, &qword_1A8506380);
        v53 = *(v52 + 48);
        *v51 = v49;
        (v37)(v51 + v53, v46, v50);
        result = (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
        v54 = *(v2 + 16);
        v19 = __OFADD__(v54, 1);
        v20 = v54 + 1;
        if (!v19)
        {
LABEL_20:
          *(v2 + 16) = v20;
          goto LABEL_21;
        }

LABEL_26:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    __break(1u);
    goto LABEL_26;
  }

  v9 = v0[6];
  sub_1A84E5C8C();
  v10 = sub_1A84E5C7C();
  v11 = sub_1A84E619C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A823F000, v10, v11, "The archive manifest's file URL is nil.", v12, 2u);
    MEMORY[0x1AC56D3F0](v12, -1, -1);
  }

  v14 = v0[5];
  v13 = v0[6];
  v15 = v0[4];
  v16 = v0[2];

  (*(v14 + 8))(v13, v15);
  v17 = sub_1A83EA2FC(&qword_1EB2E7E00, &qword_1A8506380);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = *(v2 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_8:
  v21 = v0[2];
  v22 = sub_1A83EA2FC(&qword_1EB2E7E00, &qword_1A8506380);
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
LABEL_21:
  v56 = v0[13];
  v55 = v0[14];
  v57 = v0[12];
  v58 = v0[9];
  v60 = v0[6];
  v59 = v0[7];

  v61 = v0[1];

  return v61();
}

uint64_t sub_1A845A564()
{
  if (*v0)
  {
    result = 0x4D65766968637261;
  }

  else
  {
    result = 0x49746E6572727563;
  }

  *v0;
  return result;
}

uint64_t sub_1A845A5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746E6572727563 && a2 == 0xEC0000007865646ELL;
  if (v6 || (sub_1A84E67AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4D65766968637261 && a2 == 0xEF74736566696E61)
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

uint64_t sub_1A845A69C(uint64_t a1)
{
  v2 = sub_1A845B11C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A845A6D8(uint64_t a1)
{
  v2 = sub_1A845B11C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchiveManifest.ArchiveManifestIterator.__deallocating_deinit()
{
  sub_1A845B03C(v0 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1A845A7A0(void *a1)
{
  v3 = v1;
  v17 = type metadata accessor for ImportExport.ArchiveManifest(0);
  v5 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E7E08, &qword_1A8506388);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A845B11C();
  sub_1A84E68AC();
  v14 = *(v3 + 16);
  v19 = 0;
  sub_1A84E670C();
  if (!v2)
  {
    sub_1A845AFD8(v3 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest, v7);
    v18 = 1;
    sub_1A845AF3C(&qword_1EB2E7DC0, type metadata accessor for ImportExport.ArchiveManifest);
    sub_1A84E672C();
    sub_1A845B03C(v7);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t ImportExport.ArchiveManifest.ArchiveManifestIterator.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ImportExport.ArchiveManifest.ArchiveManifestIterator.init(from:)(a1);
  return v5;
}

void *ImportExport.ArchiveManifest.ArchiveManifestIterator.init(from:)(uint64_t *a1)
{
  v4 = type metadata accessor for ImportExport.ArchiveManifest(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E7E18, &qword_1A8506390);
  v18 = *(v8 - 8);
  v19 = v8;
  v9 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v1[2] = 0;
  v12 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A845B11C();
  sub_1A84E689C();
  if (v2)
  {
    type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator(0);
    v15 = *(*v1 + 48);
    v16 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v18;
    v13 = v19;
    v21 = 0;
    v1[2] = sub_1A84E664C();
    v20 = 1;
    sub_1A845AF3C(&qword_1EB2E7DC8, type metadata accessor for ImportExport.ArchiveManifest);
    sub_1A84E666C();
    (*(v14 + 8))(v11, v13);
    sub_1A845B0B8(v7, v1 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest);
  }

  sub_1A8244788(a1);
  return v1;
}

uint64_t sub_1A845AC8C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A82505F4;

  return sub_1A8459D78(a1);
}

uint64_t sub_1A845AD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x1EEE6DFA0](sub_1A845ADC0, v6, v8);
}

uint64_t sub_1A845ADC0()
{
  v1 = **(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1A84065F4;
  v3 = *(v0 + 24);

  return sub_1A8459D78(v3);
}

void *sub_1A845AE5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = ImportExport.ArchiveManifest.ArchiveManifestIterator.init(from:)(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1A845AEDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  result = sub_1A845B0B8(v1, v6 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest);
  *(v6 + 16) = 0;
  *a1 = v6;
  return result;
}

uint64_t sub_1A845AF3C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A845AF84()
{
  result = qword_1EB2E7DD8;
  if (!qword_1EB2E7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7DD8);
  }

  return result;
}

uint64_t sub_1A845AFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.ArchiveManifest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A845B03C(uint64_t a1)
{
  v2 = type metadata accessor for ImportExport.ArchiveManifest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A845B0B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.ArchiveManifest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A845B11C()
{
  result = qword_1EB2E7E10;
  if (!qword_1EB2E7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E10);
  }

  return result;
}

void sub_1A845B1E0()
{
  sub_1A845B27C();
  if (v0 <= 0x3F)
  {
    sub_1A845B2D4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ImportExport.ExportStatistics();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A845B27C()
{
  if (!qword_1EB2E73F0)
  {
    sub_1A84E558C();
    v0 = sub_1A84E633C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E73F0);
    }
  }
}

void sub_1A845B2D4()
{
  if (!qword_1EB2E7E38)
  {
    v0 = sub_1A84E604C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E7E38);
    }
  }
}

uint64_t sub_1A845B32C()
{
  result = type metadata accessor for ImportExport.ArchiveManifest(319);
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

uint64_t dispatch thunk of ImportExport.ArchiveManifest.ArchiveManifestIterator.next()(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A82505F4;

  return v8(a1);
}

unint64_t sub_1A845B5A0()
{
  result = qword_1EB2E7E50;
  if (!qword_1EB2E7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E50);
  }

  return result;
}

unint64_t sub_1A845B5F8()
{
  result = qword_1EB2E7E58;
  if (!qword_1EB2E7E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E58);
  }

  return result;
}

unint64_t sub_1A845B650()
{
  result = qword_1EB2E7E60;
  if (!qword_1EB2E7E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E60);
  }

  return result;
}

unint64_t sub_1A845B6A8()
{
  result = qword_1EB2E7E68;
  if (!qword_1EB2E7E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E68);
  }

  return result;
}

unint64_t sub_1A845B700()
{
  result = qword_1EB2E7E70;
  if (!qword_1EB2E7E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E70);
  }

  return result;
}

unint64_t sub_1A845B758()
{
  result = qword_1EB2E7E78;
  if (!qword_1EB2E7E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E78);
  }

  return result;
}

uint64_t sub_1A845B7AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xED0000736E6F6974 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8531D60 == a2)
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

uint64_t ImportExport.MessageBatch.init(with:messages:downloadableAttachmentBatch:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v31 = a1;
  v27 = a4;
  v5 = type metadata accessor for ImportExport.Message();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = 0;
    while (v12 < *(a2 + 16))
    {
      sub_1A845CFFC(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v10, type metadata accessor for ImportExport.Message);
      v13 = *(v10 + 4);
      v14 = *(v10 + 5);
      v15 = *(v31 + 8);
      v16 = *(v31 + 16);
      if (v13 != v15 || v14 != v16)
      {
        v18 = *(v10 + 4);
        v19 = *(v10 + 5);
        v20 = *(v31 + 8);
        v21 = *(v31 + 16);
        if ((sub_1A84E67AC() & 1) == 0)
        {

          v29 = 0;
          v30 = 0xE000000000000000;
          sub_1A84E646C();
          MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A852FF50);
          MEMORY[0x1AC56A990](v13, v14);
          MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A852FF70);
          MEMORY[0x1AC56A990](v15, v16);
          v22 = v29;
          v23 = v30;
          sub_1A8407E40();
          swift_allocError();
          *v24 = v22;
          v24[1] = v23;
          swift_willThrow();

          sub_1A845D064(v31, type metadata accessor for ImportExport.Conversation);
          return sub_1A845D064(v10, type metadata accessor for ImportExport.Message);
        }
      }

      ++v12;
      result = sub_1A845D064(v10, type metadata accessor for ImportExport.Message);
      if (v11 == v12)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v25 = v27;
    sub_1A845BB64(v31, v27);
    result = type metadata accessor for ImportExport.MessageBatch();
    *(v25 + *(result + 20)) = a2;
    *(v25 + *(result + 24)) = v28;
  }

  return result;
}

uint64_t sub_1A845BB64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Conversation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ImportExport.MessageBatch()
{
  result = qword_1EB2E7EC8;
  if (!qword_1EB2E7EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.MessageBatch.messages.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.MessageBatch() + 20));
}

uint64_t ImportExport.MessageBatch.downloadableAttachments.getter()
{
  v1 = *(v0 + *(type metadata accessor for ImportExport.MessageBatch() + 24));
}

uint64_t static ImportExport.MessageBatch.readMessageBatch(fromFileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v41 = sub_1A84E558C();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A84E5C9C();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A84E526C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1A84E525C();
  v15 = sub_1A84E55AC();
  if (v2)
  {

    sub_1A84E5C8C();
    v19 = v7;
    v20 = v41;
    (*(v4 + 16))(v7, a1, v41);
    v21 = v2;
    v22 = v11;
    v23 = sub_1A84E5C7C();
    v24 = sub_1A84E619C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v22;
      v27 = v19;
      v37 = v26;
      v38 = swift_slowAlloc();
      v43 = v38;
      *v25 = 136315394;
      v28 = sub_1A84E555C();
      v39 = v8;
      v30 = v29;
      (*(v4 + 8))(v27, v20);
      v31 = sub_1A82446BC(v28, v30, &v43);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2112;
      v32 = v2;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v33;
      v34 = v37;
      *v37 = v33;
      _os_log_impl(&dword_1A823F000, v23, v24, "failed to read MessageBatch JSON from %s with error: %@", v25, 0x16u);
      sub_1A845CDA8(v34);
      MEMORY[0x1AC56D3F0](v34, -1, -1);
      v35 = v38;
      sub_1A8244788(v38);
      MEMORY[0x1AC56D3F0](v35, -1, -1);
      MEMORY[0x1AC56D3F0](v25, -1, -1);

      (*(v42 + 8))(v40, v39);
    }

    else
    {

      (*(v4 + 8))(v7, v20);
      (*(v42 + 8))(v22, v8);
    }

    return swift_willThrow();
  }

  else
  {
    v17 = v15;
    v18 = v16;
    v40 = v11;
    sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
    sub_1A845CE10();
    sub_1A84E524C();
    sub_1A83F5994(v17, v18);
  }
}

uint64_t ImportExport.MessageBatch.add(_:)@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = v1;
  v3 = type metadata accessor for ImportExport.Message();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImportExport.Conversation();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v36 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A845CFFC(v1, v36, type metadata accessor for ImportExport.Conversation);
  v11 = type metadata accessor for ImportExport.MessageBatch();
  v34 = *(v1 + *(v11 + 20));

  sub_1A83EE6E8(v12);
  v13 = v34;
  v31 = v11;
  v14 = *(v34 + 16);
  v33 = *(v2 + *(v11 + 24));

  if (v14)
  {
    v16 = 0;
    while (v16 < *(v13 + 16))
    {
      sub_1A845CFFC(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v7, type metadata accessor for ImportExport.Message);
      v17 = *(v7 + 4);
      v18 = *(v7 + 5);
      v20 = *(v36 + 8);
      v19 = *(v36 + 16);
      if (v17 != v20 || v18 != v19)
      {
        v22 = *(v7 + 4);
        v23 = *(v7 + 5);
        v24 = *(v36 + 8);
        v25 = *(v36 + 16);
        if ((sub_1A84E67AC() & 1) == 0)
        {

          v34 = 0;
          v35 = 0xE000000000000000;
          sub_1A84E646C();
          MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A852FF50);
          MEMORY[0x1AC56A990](v17, v18);
          MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A852FF70);
          MEMORY[0x1AC56A990](v20, v19);
          v26 = v34;
          v27 = v35;
          sub_1A8407E40();
          swift_allocError();
          *v28 = v26;
          v28[1] = v27;
          swift_willThrow();

          sub_1A845D064(v36, type metadata accessor for ImportExport.Conversation);
          return sub_1A845D064(v7, type metadata accessor for ImportExport.Message);
        }
      }

      ++v16;
      result = sub_1A845D064(v7, type metadata accessor for ImportExport.Message);
      if (v14 == v16)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v29 = v32;
    result = sub_1A845BB64(v36, v32);
    v30 = v31;
    *(v29 + *(v31 + 20)) = v13;
    *(v29 + *(v30 + 24)) = v33;
  }

  return result;
}

uint64_t sub_1A845C450()
{
  v1 = 0x736567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_1A845C4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A845D3F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A845C4E0(uint64_t a1)
{
  v2 = sub_1A845CEC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A845C51C(uint64_t a1)
{
  v2 = sub_1A845CEC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.MessageBatch.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E7E90, &unk_1A85067C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A845CEC4();
  sub_1A84E68AC();
  LOBYTE(v14) = 0;
  type metadata accessor for ImportExport.Conversation();
  sub_1A845CFB4(&qword_1EB2E71B0, type metadata accessor for ImportExport.Conversation);
  sub_1A84E672C();
  if (!v2)
  {
    v11 = type metadata accessor for ImportExport.MessageBatch();
    v14 = *(v3 + *(v11 + 20));
    HIBYTE(v13) = 1;
    sub_1A83EA2FC(&qword_1EB2E7188, &qword_1A850AF10);
    sub_1A845CF18(&qword_1EB2E7EA0, &qword_1EB2E7800);
    sub_1A84E672C();
    v14 = *(v3 + *(v11 + 24));
    HIBYTE(v13) = 2;
    type metadata accessor for ImportExport.DownloadableAttachmentBatch(0);
    sub_1A845CFB4(&qword_1EB2E7EA8, type metadata accessor for ImportExport.DownloadableAttachmentBatch);
    sub_1A84E66BC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImportExport.MessageBatch.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for ImportExport.Conversation();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E7EB0, &qword_1A85067D0);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ImportExport.MessageBatch();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v26 = a1;
  sub_1A82471E0(a1, v17);
  sub_1A845CEC4();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(v26);
  }

  v18 = v24;
  v19 = v15;
  LOBYTE(v28) = 0;
  sub_1A845CFB4(&qword_1EB2E71C8, type metadata accessor for ImportExport.Conversation);
  v20 = v25;
  sub_1A84E666C();
  sub_1A845BB64(v7, v19);
  sub_1A83EA2FC(&qword_1EB2E7188, &qword_1A850AF10);
  v27 = 1;
  sub_1A845CF18(&qword_1EB2E7190, &qword_1EB2E7198);
  sub_1A84E666C();
  *(v19 + *(v12 + 20)) = v28;
  type metadata accessor for ImportExport.DownloadableAttachmentBatch(0);
  v27 = 2;
  sub_1A845CFB4(&qword_1EB2E7EB8, type metadata accessor for ImportExport.DownloadableAttachmentBatch);
  sub_1A84E65FC();
  (*(v18 + 8))(v11, v20);
  *(v19 + *(v12 + 24)) = v28;
  sub_1A845CFFC(v19, v23, type metadata accessor for ImportExport.MessageBatch);
  sub_1A8244788(v26);
  return sub_1A845D064(v19, type metadata accessor for ImportExport.MessageBatch);
}

uint64_t ImportExport.MessageBatch.description.getter()
{
  v1 = v0;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8531DA0);
  v2 = ImportExport.Conversation.description.getter();
  MEMORY[0x1AC56A990](v2);

  MEMORY[0x1AC56A990](0x67617373654D202CLL, 0xEC000000203A7365);
  v3 = type metadata accessor for ImportExport.MessageBatch();
  v4 = *(v0 + *(v3 + 20));
  v5 = type metadata accessor for ImportExport.Message();
  v6 = MEMORY[0x1AC56AB00](v4, v5);
  MEMORY[0x1AC56A990](v6);

  MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8531DC0);
  v9 = *(v1 + *(v3 + 24));

  sub_1A83EA2FC(&qword_1EB2E7EC0, &qword_1A85067D8);
  v7 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v7);

  return 0;
}

uint64_t sub_1A845CDA8(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&unk_1EB2E9070, &unk_1A8501A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A845CE10()
{
  result = qword_1EB2E7E80;
  if (!qword_1EB2E7E80)
  {
    sub_1A83EC9D4(&qword_1EB2E7CF8, &qword_1A8509020);
    sub_1A845CFB4(&qword_1EB2E7E88, type metadata accessor for ImportExport.MessageBatch);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E80);
  }

  return result;
}

unint64_t sub_1A845CEC4()
{
  result = qword_1EB2E7E98;
  if (!qword_1EB2E7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E98);
  }

  return result;
}

uint64_t sub_1A845CF18(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E7188, &qword_1A850AF10);
    sub_1A845CFB4(a2, type metadata accessor for ImportExport.Message);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A845CFB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A845CFFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A845D064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A845D0EC()
{
  type metadata accessor for ImportExport.Conversation();
  if (v0 <= 0x3F)
  {
    sub_1A845D1E8(319, &qword_1EB2E7ED8, type metadata accessor for ImportExport.Message, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1A845D1E8(319, &qword_1EB2E7EE0, type metadata accessor for ImportExport.DownloadableAttachmentBatch, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A845D1E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A845D24C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A845D294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A845D2F4()
{
  result = qword_1EB2E7EE8;
  if (!qword_1EB2E7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7EE8);
  }

  return result;
}

unint64_t sub_1A845D34C()
{
  result = qword_1EB2E7EF0;
  if (!qword_1EB2E7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7EF0);
  }

  return result;
}

unint64_t sub_1A845D3A4()
{
  result = qword_1EB2E7EF8;
  if (!qword_1EB2E7EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7EF8);
  }

  return result;
}

uint64_t sub_1A845D3F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8531DE0 == a2)
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

uint64_t ImportExport.RecordCounts.init(conversationCount:messageCount:attachmentCount:participantCount:attachmentSizeOnDisk:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_1A845D658()
{
  v1 = *v0;
  v2 = 0x436567617373656DLL;
  v3 = 0x656D686361747461;
  v4 = 0xD000000000000014;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A845D70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A845E840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A845D734(uint64_t a1)
{
  v2 = sub_1A845D9AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A845D770(uint64_t a1)
{
  v2 = sub_1A845D9AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.RecordCounts.encode(to:)(void *a1)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7F28, &qword_1A8506A50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[2] = v1[2];
  v14[3] = v9;
  v14[0] = v1[4];
  v14[1] = v11;
  v12 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A845D9AC();
  sub_1A84E68AC();
  v19 = 0;
  sub_1A84E673C();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v18 = 1;
  sub_1A84E673C();
  v17 = 2;
  sub_1A84E673C();
  v16 = 3;
  sub_1A84E673C();
  v15 = 4;
  sub_1A84E673C();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1A845D9AC()
{
  result = qword_1EB2E7F30;
  if (!qword_1EB2E7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7F30);
  }

  return result;
}

uint64_t ImportExport.RecordCounts.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E7F38, &qword_1A8506A58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A845D9AC();
  sub_1A84E689C();
  if (!v2)
  {
    v23 = 0;
    v11 = sub_1A84E667C();
    v22 = 1;
    v12 = sub_1A84E667C();
    v21 = 2;
    v18 = sub_1A84E667C();
    v20 = 3;
    v17 = sub_1A84E667C();
    v19 = 4;
    v16 = sub_1A84E667C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
    v14 = v17;
    a2[2] = v18;
    a2[3] = v14;
    a2[4] = v16;
  }

  return sub_1A8244788(a1);
}

double sub_1A845DC44()
{
  qword_1EB2E7F20 = 0;
  result = 0.0;
  xmmword_1EB2E7F00 = 0u;
  *&qword_1EB2E7F10 = 0u;
  return result;
}

double static ImportExport.RecordCounts.zero.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5980 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EB2E7F20;
  result = *&xmmword_1EB2E7F00;
  v3 = *&qword_1EB2E7F10;
  *a1 = xmmword_1EB2E7F00;
  *(a1 + 16) = v3;
  *(a1 + 32) = v1;
  return result;
}

void *static ImportExport.RecordCounts.- infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = a2[1];
  v4 = result[1];
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[2];
  v8 = a2[2];
  v5 = __OFSUB__(v7, v8);
  v9 = v7 - v8;
  if (v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = result[3];
  v11 = a2[3];
  v5 = __OFSUB__(v10, v11);
  v12 = v10 - v11;
  if (v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result[4];
  v14 = a2[4];
  v5 = __OFSUB__(v13, v14);
  v15 = v13 - v14;
  if (!v5)
  {
    *a3 = *result - *a2;
    a3[1] = v6;
    a3[2] = v9;
    a3[3] = v12;
    a3[4] = v15;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *static ImportExport.RecordCounts.+ infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = a2[1];
  v4 = result[1];
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[2];
  v8 = a2[2];
  v5 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = result[3];
  v11 = a2[3];
  v5 = __OFADD__(v10, v11);
  v12 = v10 + v11;
  if (v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result[4];
  v14 = a2[4];
  v5 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (!v5)
  {
    *a3 = *result + *a2;
    a3[1] = v6;
    a3[2] = v9;
    a3[3] = v12;
    a3[4] = v15;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

double sub_1A845DDB8@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5980 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EB2E7F20;
  result = *&xmmword_1EB2E7F00;
  v3 = *&qword_1EB2E7F10;
  *a1 = xmmword_1EB2E7F00;
  *(a1 + 16) = v3;
  *(a1 + 32) = v1;
  return result;
}

uint64_t sub_1A845DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *, _OWORD *))
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v6;
  v13 = v5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v8;
  v11 = v7;
  return a5(v10, v12);
}

uint64_t ImportExport.RecordCounts.description.getter()
{
  v1 = *(v0 + 4);
  sub_1A84E646C();

  strcpy(v6, "RecordCounts: ");
  HIBYTE(v6[1]) = -18;
  v5 = v0[1];
  v4 = *v0;
  v2 = ImportExport.RecordCounts.displayDescription.getter();
  MEMORY[0x1AC56A990](v2);

  return v6[0];
}

uint64_t ImportExport.RecordCounts.displayDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v19 = v0[2];
  v20 = v0[3];
  v21 = v0[4];
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0x61737265766E6F63, 0xEF203A736E6F6974);
  sub_1A84E676C();
  sub_1A840D3B0();
  v3 = sub_1A84E639C();
  v5 = v4;

  MEMORY[0x1AC56A990](v3, v5);

  MEMORY[0x1AC56A990](0x6567617373656D20, 0xEB00000000203A73);
  sub_1A84E676C();
  v6 = sub_1A84E639C();
  v8 = v7;

  MEMORY[0x1AC56A990](v6, v8);

  MEMORY[0x1AC56A990](0x6D68636174746120, 0xEE00203A73746E65);
  sub_1A84E676C();
  v9 = sub_1A84E639C();
  v11 = v10;

  MEMORY[0x1AC56A990](v9, v11);

  MEMORY[0x1AC56A990](0x6963697472617020, 0xEE003A73746E6170);
  sub_1A84E676C();
  v12 = sub_1A84E639C();
  v14 = v13;

  MEMORY[0x1AC56A990](v12, v14);

  MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A8531E00);
  sub_1A84E676C();
  v15 = sub_1A84E639C();
  v17 = v16;

  MEMORY[0x1AC56A990](v15, v17);

  return 0;
}

unint64_t ImportExport.RecordCounts.displayKeyValues.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_1A83EA2FC(&qword_1EB2E7F40, &qword_1A8506A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8506A40;
  strcpy((inited + 32), "conversations");
  *(inited + 46) = -4864;
  *(inited + 48) = v1;
  *(inited + 56) = 0x736567617373656DLL;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = v2;
  *(inited + 80) = 0x656D686361747461;
  *(inited + 88) = 0xEB0000000073746ELL;
  *(inited + 96) = v3;
  strcpy((inited + 104), "participants");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  *(inited + 120) = v4;
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x80000001A8531E20;
  *(inited + 144) = v5;
  v7 = sub_1A83EBD30(inited);
  swift_setDeallocating();
  sub_1A83EA2FC(&qword_1EB2E7F48, &qword_1A8506A68);
  swift_arrayDestroy();
  return v7;
}

uint64_t ImportExport.RecordCounts.format(report:)(uint64_t a1)
{
  v25 = *v1;
  v27 = v1[1];
  v28 = *(v1 + 4);
  result = ImportExport.RecordCounts.displayKeyValues.getter();
  v4 = 0;
  v6 = result + 64;
  v5 = *(result + 64);
  v22 = a1;
  v23 = result;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  if ((v8 & v5) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
    }

    v9 = *(v6 + 8 * v11);
    ++v4;
    if (v9)
    {
      v4 = v11;
      do
      {
LABEL_8:
        v12 = __clz(__rbit64(v9)) | (v4 << 6);
        v13 = (*(v23 + 48) + 16 * v12);
        v15 = *v13;
        v14 = v13[1];
        v26 = *(*(v23 + 56) + 8 * v12);

        v24 = sub_1A84E676C();
        v17 = v16;
        v18 = *(a1 + 16);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1A83EEBEC(0, *(v18 + 16) + 1, 1, v18);
          v18 = result;
        }

        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        if (v20 >= v19 >> 1)
        {
          result = sub_1A83EEBEC((v19 > 1), v20 + 1, 1, v18);
          v18 = result;
        }

        v9 &= v9 - 1;
        *(v18 + 16) = v20 + 1;
        v21 = (v18 + 32 * v20);
        v21[4] = v15;
        v21[5] = v14;
        v21[6] = v24;
        v21[7] = v17;
        a1 = v22;
        *(v22 + 16) = v18;
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A845E670()
{
  result = qword_1EB2E7F50;
  if (!qword_1EB2E7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7F50);
  }

  return result;
}

uint64_t sub_1A845E6C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A845E6E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1A845E73C()
{
  result = qword_1EB2E7F58;
  if (!qword_1EB2E7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7F58);
  }

  return result;
}

unint64_t sub_1A845E794()
{
  result = qword_1EB2E7F60;
  if (!qword_1EB2E7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7F60);
  }

  return result;
}

unint64_t sub_1A845E7EC()
{
  result = qword_1EB2E7F68;
  if (!qword_1EB2E7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7F68);
  }

  return result;
}

uint64_t sub_1A845E840(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001A8531E40 == a2;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436567617373656DLL && a2 == 0xEC000000746E756FLL || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEF746E756F43746ELL || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8531E60 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8531E20 == a2)
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

uint64_t sub_1A845EA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A83EA2FC(&qword_1EB2E7FA8, &qword_1A8506D10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for ImportExport.Message();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1A824B2D4(a1, &qword_1EB2E7FA8, &qword_1A8506D10);
    sub_1A84607A0(a2, a3, v10);

    return sub_1A824B2D4(v10, &qword_1EB2E7FA8, &qword_1A8506D10);
  }

  else
  {
    sub_1A8462480(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1A848D3C4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1A845EBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1A8243DDC(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1A848DAD4(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1A824B2D4(a1, &qword_1EB2E66B0, &qword_1A8500960);
    sub_1A8460990(a2, a3, v10);

    return sub_1A824B2D4(v10, &qword_1EB2E66B0, &qword_1A8500960);
  }

  return result;
}

uint64_t sub_1A845EC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1A848E248(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1A824B390(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1A848F72C();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_1A8490564(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1A845ED90()
{
  v0 = MEMORY[0x1AC56AD90]();
  v2 = v1;
  memset(v4, 0, sizeof(v4));
  swift_beginAccess();
  sub_1A845EBC8(v4, v0, v2);
  return swift_endAccess();
}

char *SyncedSettingsManager.init(daemonController:connection:notificationCenter:)(void *a1, uint64_t a2, void *a3)
{
  v7 = OBJC_IVAR___IMSyncedSettingsManager_Impl_valueCache;
  *&v3[v7] = sub_1A8242810(MEMORY[0x1E69E7CC0]);
  *&v3[OBJC_IVAR___IMSyncedSettingsManager_Impl_daemonController] = a1;
  *&v3[OBJC_IVAR___IMSyncedSettingsManager_Impl_connection] = a2;
  *&v3[OBJC_IVAR___IMSyncedSettingsManager_Impl_notificationCenter] = a3;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for SyncedSettingsManager();
  v8 = a1;
  swift_unknownObjectRetain();
  v9 = a3;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = *&v10[OBJC_IVAR___IMSyncedSettingsManager_Impl_daemonController];
  v12 = v10;
  v13 = [v11 listener];
  [v13 addHandler_];

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_1A845EFB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A84E5CAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A84E5CCC();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB2E46E8 != -1)
  {
    swift_once();
  }

  v13 = sub_1A84E5C9C();
  sub_1A824431C(v13, qword_1EB2FF010);
  v14 = sub_1A84E5C7C();
  v15 = sub_1A84E61BC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A823F000, v14, v15, "didUpdateSettingsKeys", v16, 2u);
    MEMORY[0x1AC56D3F0](v16, -1, -1);
  }

  sub_1A8460A58();
  v17 = sub_1A84E624C();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v2;
  aBlock[4] = sub_1A8460AA4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A824B720;
  aBlock[3] = &unk_1F1B743E0;
  v19 = _Block_copy(aBlock);

  v20 = v2;

  sub_1A84E5A8C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A824B214();
  sub_1A83EA2FC(&unk_1EB2E6680, &qword_1A8500940);
  sub_1A824B26C();
  sub_1A84E63CC();
  MEMORY[0x1AC56AD50](0, v12, v8, v19);
  _Block_release(v19);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v23);
}

void sub_1A845F2F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a2;
    v4 = OBJC_IVAR___IMSyncedSettingsManager_Impl_valueCache;
    v41 = OBJC_IVAR___IMSyncedSettingsManager_Impl_notificationCenter;
    v5 = (a1 + 40);
    do
    {
      v8 = *(v5 - 1);
      v9 = *v5;
      swift_bridgeObjectRetain_n();
      v10 = sub_1A84E62AC();
      if (v11)
      {
        if (qword_1EB2E46E8 != -1)
        {
          swift_once();
        }

        v12 = sub_1A84E5C9C();
        sub_1A824431C(v12, qword_1EB2FF010);

        v13 = sub_1A84E5C7C();
        v14 = sub_1A84E61BC();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *&v42[0] = v16;
          *v15 = 136315138;
          v17 = sub_1A82446BC(v8, v9, v42);

          *(v15 + 4) = v17;
          _os_log_impl(&dword_1A823F000, v13, v14, "could not make SyncedSettingKey from updated key: %s", v15, 0xCu);
          sub_1A8244788(v16);
          MEMORY[0x1AC56D3F0](v16, -1, -1);
          MEMORY[0x1AC56D3F0](v15, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        v18 = v10;

        v19 = MEMORY[0x1AC56AD90](v18);
        v21 = v20;
        swift_beginAccess();
        v22 = *(v3 + v4);
        v23 = sub_1A824B390(v19, v21);
        if (v24)
        {
          v25 = v23;
          v26 = *(v3 + v4);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28 = *(v3 + v4);
          *(v3 + v4) = 0x8000000000000000;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1A848EF90();
          }

          v29 = *(*(v28 + 48) + 16 * v25 + 8);

          sub_1A8243DDC((*(v28 + 56) + 32 * v25), v42);
          sub_1A848CEB4(v25, v28);
          *(v3 + v4) = v28;
        }

        else
        {
          memset(v42, 0, sizeof(v42));
        }

        sub_1A824B2D4(v42, &qword_1EB2E66B0, &qword_1A8500960);
        swift_endAccess();
        if (qword_1EB2E46E8 != -1)
        {
          swift_once();
        }

        v30 = sub_1A84E5C9C();
        sub_1A824431C(v30, qword_1EB2FF010);
        v31 = sub_1A84E5C7C();
        v32 = sub_1A84E61BC();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = v4;
          v35 = swift_slowAlloc();
          *&v42[0] = v35;
          *v33 = 136315138;
          v36 = sub_1A84E62BC();
          v38 = sub_1A82446BC(v36, v37, v42);

          *(v33 + 4) = v38;
          _os_log_impl(&dword_1A823F000, v31, v32, "posting notification for %s", v33, 0xCu);
          sub_1A8244788(v35);
          v39 = v35;
          v4 = v34;
          v3 = a2;
          MEMORY[0x1AC56D3F0](v39, -1, -1);
          MEMORY[0x1AC56D3F0](v33, -1, -1);
        }

        v6 = *(v3 + v41);
        v7 = sub_1A84E62DC();
        [v6 postNotificationName:v7 object:0];
      }

      v5 += 2;
      --v2;
    }

    while (v2);
  }
}

id SyncedSettingsManager.__deallocating_deinit()
{
  v1 = [*&v0[OBJC_IVAR___IMSyncedSettingsManager_Impl_daemonController] listener];
  [v1 removeHandler_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SyncedSettingsManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A845F8B8(uint64_t a1, void (*a2)(__int128 *), uint64_t a3)
{
  v4 = v3;
  v23 = 0u;
  v24 = 0u;
  v8 = MEMORY[0x1AC56AD90]();
  v10 = v9;
  v11 = OBJC_IVAR___IMSyncedSettingsManager_Impl_valueCache;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_1A824B390(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    sub_1A8244F40(*(v12 + 56) + 32 * v13, v22);

    sub_1A824B2D4(&v23, &qword_1EB2E66B0, &qword_1A8500960);
    sub_1A8243DDC(v22, &v23);
  }

  else
  {

    v16 = [objc_opt_self() sharedInstance];
    v17 = *MEMORY[0x1E69A7CE8];
    MEMORY[0x1AC56AD90](a1);
    v18 = sub_1A84E5D8C();

    v19 = [v16 getValueFromDomain:v17 forKey:v18];

    if (v19)
    {
      sub_1A84E63AC();
      swift_unknownObjectRelease();
      sub_1A824B2D4(&v23, &qword_1EB2E66B0, &qword_1A8500960);
      sub_1A8243DDC(v22, v21);
      sub_1A8243DDC(v21, v22);
    }

    else
    {
      memset(v21, 0, sizeof(v21));
      sub_1A84E62CC();
      sub_1A824B2D4(&v23, &qword_1EB2E66B0, &qword_1A8500960);
    }

    v23 = v22[0];
    v24 = v22[1];
  }

  sub_1A846140C(a1, &v23, v4, a2, a3);

  return sub_1A824B2D4(&v23, &qword_1EB2E66B0, &qword_1A8500960);
}

uint64_t sub_1A845FBA0(uint64_t a1, uint64_t a2)
{
  sub_1A8462404(a1, v11);
  v3 = v12;
  if (v12)
  {
    v4 = sub_1A82471E0(v11, v12);
    v5 = *(v3 - 8);
    v6 = *(v5 + 64);
    MEMORY[0x1EEE9AC00](v4);
    v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = sub_1A84E679C();
    (*(v5 + 8))(v8, v3);
    sub_1A8244788(v11);
  }

  else
  {
    v9 = 0;
  }

  (*(a2 + 16))(a2, v9);
  return swift_unknownObjectRelease();
}

void sub_1A845FCDC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x1AC56AD90](a2);
  v8 = v7;
  sub_1A8244F40(a1, v16);
  swift_beginAccess();
  sub_1A845EBC8(v16, v6, v8);
  swift_endAccess();
  v9 = *(v2 + OBJC_IVAR___IMSyncedSettingsManager_Impl_connection);
  [v9 waitForSetup];
  v10 = [v9 remoteProxy];
  sub_1A82471E0(a1, a1[3]);
  [v10 setSettingValue:sub_1A84E679C() forKey:a2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v11 = *(v3 + OBJC_IVAR___IMSyncedSettingsManager_Impl_notificationCenter);
  v12 = sub_1A84E62DC();
  sub_1A83EA2FC(&qword_1EB2E7FA0, &unk_1A8506CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A85013E0;
  v16[0] = 0x6E6F73616572;
  v16[1] = 0xE600000000000000;
  v14 = MEMORY[0x1E69E6158];
  sub_1A84E641C();
  *(inited + 96) = v14;
  *(inited + 72) = 0x53796C6C61636F4CLL;
  *(inited + 80) = 0xEA00000000007465;
  sub_1A83EC354(inited);
  swift_setDeallocating();
  sub_1A824B2D4(inited + 32, &qword_1EB2E8790, &qword_1A85008F0);
  v15 = sub_1A84E5D2C();

  [v11 postNotificationName:v12 object:0 userInfo:v15];
}

void sub_1A845FF7C(void *a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___IMSyncedSettingsManager_Impl_notificationCenter);
  sub_1A82471E0(a1, a1[3]);
  v5 = sub_1A84E679C();
  v6 = sub_1A84E62DC();
  [v4 addObserver:v5 selector:a2 name:v6 object:0];
  swift_unknownObjectRelease();
}

void sub_1A84600F0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___IMSyncedSettingsManager_Impl_notificationCenter);
  sub_1A82471E0(a1, a1[3]);
  v3 = sub_1A84E679C();
  v4 = sub_1A84E62DC();
  [v2 removeObserver:v3 name:v4 object:0];
  swift_unknownObjectRelease();
}

BOOL sub_1A846024C(uint64_t a1)
{
  v3 = MEMORY[0x1AC56AD90]();
  v5 = v4;
  v6 = OBJC_IVAR___IMSyncedSettingsManager_Impl_valueCache;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (*(v7 + 16) && (, v8 = sub_1A824B390(v3, v5), v10 = v9, , (v10 & 1) != 0))
  {
    sub_1A8244F40(*(v7 + 56) + 32 * v8, &v28);

    sub_1A824B2D4(&v28, &qword_1EB2E66B0, &qword_1A8500960);
    v11 = 1;
  }

  else
  {

    v28 = 0u;
    v29 = 0u;
    sub_1A824B2D4(&v28, &qword_1EB2E66B0, &qword_1A8500960);
    v12 = [objc_opt_self() sharedInstance];
    v13 = *MEMORY[0x1E69A7CE8];
    MEMORY[0x1AC56AD90](a1);
    v14 = sub_1A84E5D8C();

    v15 = [v12 getValueFromDomain:v13 forKey:v14];

    v11 = v15 != 0;
    if (v15)
    {
      sub_1A84E63AC();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    sub_1A824B2D4(&v28, &qword_1EB2E66B0, &qword_1A8500960);
  }

  if (qword_1EB2E46E8 != -1)
  {
    swift_once();
  }

  v16 = sub_1A84E5C9C();
  sub_1A824431C(v16, qword_1EB2FF010);
  v17 = sub_1A84E5C7C();
  v18 = sub_1A84E61BC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v28 = v20;
    *v19 = 136315394;
    if (v11)
    {
      v21 = 0xD000000000000012;
    }

    else
    {
      v21 = 0xD00000000000001ALL;
    }

    if (v11)
    {
      v22 = "Local value does not exist";
    }

    else
    {
      v22 = "notificationCenter";
    }

    v23 = sub_1A82446BC(v21, v22 | 0x8000000000000000, &v28);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = sub_1A84E62BC();
    v26 = sub_1A82446BC(v24, v25, &v28);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_1A823F000, v17, v18, "%s for key: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v20, -1, -1);
    MEMORY[0x1AC56D3F0](v19, -1, -1);
  }

  return v11;
}

id SyncedSettingsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1A846065C(uint64_t a1, uint64_t (*a2)(_BYTE *), uint64_t a3, _BYTE *a4)
{
  sub_1A8462404(a1, v8);
  if (v9)
  {
    if (swift_dynamicCast() && (v7 & 1) != 0)
    {
      return a2(a4);
    }
  }

  else
  {
    sub_1A824B2D4(v8, &qword_1EB2E66B0, &qword_1A8500960);
  }

  v9 = MEMORY[0x1E69E6370];
  v8[0] = 0;
  a2(v8);
  return sub_1A824B2D4(v8, &qword_1EB2E66B0, &qword_1A8500960);
}

void sub_1A8460730()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1A84E5D8C();
  v2 = [v0 initWithSuiteName_];

  qword_1EB2E7F70 = v2;
}

uint64_t sub_1A84607A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1A824B390(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A848E5E4();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for ImportExport.Message();
    v22 = *(v15 - 8);
    sub_1A8462480(v14 + *(v22 + 72) * v9, a3);
    sub_1A848CCC8(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ImportExport.Message();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1A84608F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1A824B390(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A848EAFC();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1A8490564(v7, v10);
  *v3 = v10;
  return v12;
}

double sub_1A8460990@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1A824B390(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A848EF90();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1A8243DDC((*(v12 + 56) + 32 * v9), a3);
    sub_1A848CEB4(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_1A8460A58()
{
  result = qword_1ED767638;
  if (!qword_1ED767638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED767638);
  }

  return result;
}

uint64_t sub_1A8460AAC()
{
  v0 = [objc_opt_self() sharedInstanceForBagType_];
  v1 = sub_1A84E5D8C();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1A84E63AC();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  sub_1A8462404(v14, &v12);
  if (!*(&v13 + 1))
  {
    sub_1A824B2D4(&v12, &qword_1EB2E66B0, &qword_1A8500960);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v8 = sub_1A84E5C9C();
    sub_1A824431C(v8, qword_1EB2FF010);
    v5 = sub_1A84E5C7C();
    v9 = sub_1A84E61BC();
    if (!os_log_type_enabled(v5, v9))
    {
      v3 = 1;
      goto LABEL_17;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A823F000, v5, v9, "Local value allows forced unkown filtering", v7, 2u);
    v3 = 1;
    goto LABEL_15;
  }

  v3 = v11;
  if (qword_1EB2E46E8 != -1)
  {
    swift_once();
  }

  v4 = sub_1A84E5C9C();
  sub_1A824431C(v4, qword_1EB2FF010);
  v5 = sub_1A84E5C7C();
  v6 = sub_1A84E61BC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1A823F000, v5, v6, "Server allows forced unkown filtering", v7, 2u);
LABEL_15:
    MEMORY[0x1AC56D3F0](v7, -1, -1);
  }

LABEL_17:

  sub_1A824B2D4(v14, &qword_1EB2E66B0, &qword_1A8500960);
  return v3;
}

id sub_1A8460D4C()
{
  if ([objc_opt_self() IMDeviceRegionIsEligibleToBeForcedIntoFilteringUnknownSender])
  {
    v0 = [objc_opt_self() IMMessagesFilteringSettingForPreferedSubscription];
    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v1 = sub_1A84E5C9C();
    sub_1A824431C(v1, qword_1EB2FF010);
    v2 = sub_1A84E5C7C();
    v3 = sub_1A84E61BC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315138;
      if (v0)
      {
        v6 = 1936027492;
      }

      else
      {
        v6 = 0x746F6E2073656F64;
      }

      if (v0)
      {
        v7 = 0xE400000000000000;
      }

      else
      {
        v7 = 0xE800000000000000;
      }

      v8 = sub_1A82446BC(v6, v7, &v14);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1A823F000, v2, v3, "Subcription %s expect forced unknown filtering", v4, 0xCu);
      sub_1A8244788(v5);
      MEMORY[0x1AC56D3F0](v5, -1, -1);
      MEMORY[0x1AC56D3F0](v4, -1, -1);
    }
  }

  else
  {
    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v9 = sub_1A84E5C9C();
    sub_1A824431C(v9, qword_1EB2FF010);
    v10 = sub_1A84E5C7C();
    v11 = sub_1A84E61BC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A823F000, v10, v11, "Region does not expect forced unknown filtering", v12, 2u);
      MEMORY[0x1AC56D3F0](v12, -1, -1);
    }

    return 0;
  }

  return v0;
}

id sub_1A8460FB0()
{
  if ((sub_1A8460AAC() & 1) == 0)
  {
    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v10 = sub_1A84E5C9C();
    sub_1A824431C(v10, qword_1EB2FF010);
    v6 = sub_1A84E5C7C();
    v7 = sub_1A84E61BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Device does not allow forced unknown filtering";
      goto LABEL_15;
    }

LABEL_34:
    v11 = 0;
    goto LABEL_35;
  }

  if (qword_1EB2E5988 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB2E7F70;
  if (qword_1EB2E7F70)
  {
    v1 = sub_1A84E5D8C();
    v2 = [v0 BOOLForKey_];

    if ((v2 & 1) != 0 || (v3 = sub_1A84E5D8C(), v4 = [v0 BOOLForKey_], v3, v4))
    {
      if (qword_1EB2E46E8 != -1)
      {
        swift_once();
      }

      v5 = sub_1A84E5C9C();
      sub_1A824431C(v5, qword_1EB2FF010);
      v6 = sub_1A84E5C7C();
      v7 = sub_1A84E61BC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "User modified unknown or spam. Device does not force unknown filtering";
LABEL_15:
        _os_log_impl(&dword_1A823F000, v6, v7, v9, v8, 2u);
        v11 = 0;
LABEL_16:
        MEMORY[0x1AC56D3F0](v8, -1, -1);
LABEL_35:

        return v11;
      }

      goto LABEL_34;
    }
  }

  if (sub_1A8460D4C())
  {
    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v12 = sub_1A84E5C9C();
    sub_1A824431C(v12, qword_1EB2FF010);
    v6 = sub_1A84E5C7C();
    v13 = sub_1A84E61BC();
    if (os_log_type_enabled(v6, v13))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v14 = "Device expects forced unknown filtering.";
LABEL_28:
      _os_log_impl(&dword_1A823F000, v6, v13, v14, v8, 2u);
      v11 = 1;
      goto LABEL_16;
    }

    goto LABEL_29;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v16 = result;
    v17 = [result activeAccountsAreEligibleForFilterUnknownSendersByDefault];

    if (v17 != 1)
    {
      if (qword_1EB2E46E8 != -1)
      {
        swift_once();
      }

      v19 = sub_1A84E5C9C();
      sub_1A824431C(v19, qword_1EB2FF010);
      v6 = sub_1A84E5C7C();
      v7 = sub_1A84E61BC();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Device does not force unknown filtering.";
        goto LABEL_15;
      }

      goto LABEL_34;
    }

    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v18 = sub_1A84E5C9C();
    sub_1A824431C(v18, qword_1EB2FF010);
    v6 = sub_1A84E5C7C();
    v13 = sub_1A84E61BC();
    if (os_log_type_enabled(v6, v13))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v14 = "Accounts expect forced filtering.";
      goto LABEL_28;
    }

LABEL_29:
    v11 = 1;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A846140C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  if (a1 == 4)
  {
    sub_1A8462404(a2, &v34);
    if (*(&v35 + 1))
    {

      v13 = MEMORY[0x1E69E6370];
      if (swift_dynamicCast())
      {
        if (qword_1EB2E46E8 != -1)
        {
          swift_once();
        }

        v14 = sub_1A84E5C9C();
        sub_1A824431C(v14, qword_1EB2FF010);
        v15 = sub_1A84E5C7C();
        v16 = sub_1A84E61BC();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *&v34 = v18;
          *v17 = 67109378;
          *(v17 + 4) = v33;
          *(v17 + 8) = 2080;
          v19 = sub_1A84E62BC();
          v21 = sub_1A82446BC(v19, v20, &v34);

          *(v17 + 10) = v21;
          _os_log_impl(&dword_1A823F000, v15, v16, "Found %{BOOL}d for %s", v17, 0x12u);
          sub_1A8244788(v18);
          MEMORY[0x1AC56D3F0](v18, -1, -1);
          v22 = v17;
          v13 = MEMORY[0x1E69E6370];
          MEMORY[0x1AC56D3F0](v22, -1, -1);
        }

        *(&v35 + 1) = v13;
        LOBYTE(v34) = v33;
        goto LABEL_22;
      }
    }

    else
    {

      sub_1A824B2D4(&v34, &qword_1EB2E66B0, &qword_1A8500960);
    }

    v24 = sub_1A8460FB0();
    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v25 = sub_1A84E5C9C();
    sub_1A824431C(v25, qword_1EB2FF010);
    v26 = sub_1A84E5C7C();
    v27 = sub_1A84E61BC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v34 = v29;
      *v28 = 67109378;
      *(v28 + 4) = v24 & 1;
      *(v28 + 8) = 2080;
      v30 = sub_1A84E62BC();
      v32 = sub_1A82446BC(v30, v31, &v34);

      *(v28 + 10) = v32;
      _os_log_impl(&dword_1A823F000, v26, v27, "Falling back to %{BOOL}d for %s", v28, 0x12u);
      sub_1A8244788(v29);
      MEMORY[0x1AC56D3F0](v29, -1, -1);
      MEMORY[0x1AC56D3F0](v28, -1, -1);
    }

    *(&v35 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v34) = v24 & 1;
    goto LABEL_22;
  }

  if (a1 == 5)
  {
    v10 = objc_opt_self();

    if ([v10 isTimeSensitiveCustomModelAvailable])
    {
      sub_1A8462404(a2, &v34);
      v11 = swift_allocObject();
      *(v11 + 16) = sub_1A8462530;
      *(v11 + 24) = v9;
      v12 = v35;
      *(v11 + 32) = v34;
      *(v11 + 48) = v12;

      sub_1A845F8B8(4, sub_1A846252C, v11);
    }

    *(&v35 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v34) = 0;
LABEL_22:
    a4(&v34);
    sub_1A824B2D4(&v34, &qword_1EB2E66B0, &qword_1A8500960);
  }

  a4(a2);
}

void sub_1A84619F8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1A84623D4;
  *(v8 + 24) = v7;
  if (a1 == 4)
  {
    sub_1A8462404(a2, &v48);
    if (*(&v49 + 1))
    {
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);

      v12 = MEMORY[0x1E69E6370];
      if (swift_dynamicCast())
      {
        v13 = LOBYTE(v46[0]);
        if (qword_1EB2E46E8 != -1)
        {
          swift_once();
        }

        v14 = sub_1A84E5C9C();
        sub_1A824431C(v14, qword_1EB2FF010);
        v15 = sub_1A84E5C7C();
        v16 = sub_1A84E61BC();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *&v48 = v18;
          *v17 = 67109378;
          *(v17 + 4) = v13;
          *(v17 + 8) = 2080;
          v19 = sub_1A84E62BC();
          v21 = sub_1A82446BC(v19, v20, &v48);

          *(v17 + 10) = v21;
          _os_log_impl(&dword_1A823F000, v15, v16, "Found %{BOOL}d for %s", v17, 0x12u);
          sub_1A8244788(v18);
          MEMORY[0x1AC56D3F0](v18, -1, -1);
          v22 = v17;
          v12 = MEMORY[0x1E69E6370];
          MEMORY[0x1AC56D3F0](v22, -1, -1);
        }

        *(&v49 + 1) = v12;
        LOBYTE(v48) = v13;
        goto LABEL_21;
      }
    }

    else
    {
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);

      sub_1A824B2D4(&v48, &qword_1EB2E66B0, &qword_1A8500960);
    }

    v30 = sub_1A8460FB0();
    if (qword_1EB2E46E8 != -1)
    {
      swift_once();
    }

    v31 = sub_1A84E5C9C();
    sub_1A824431C(v31, qword_1EB2FF010);
    v32 = sub_1A84E5C7C();
    v33 = sub_1A84E61BC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v48 = v35;
      *v34 = 67109378;
      *(v34 + 4) = v30 & 1;
      *(v34 + 8) = 2080;
      v36 = sub_1A84E62BC();
      v38 = sub_1A82446BC(v36, v37, &v48);

      *(v34 + 10) = v38;
      _os_log_impl(&dword_1A823F000, v32, v33, "Falling back to %{BOOL}d for %s", v34, 0x12u);
      sub_1A8244788(v35);
      MEMORY[0x1AC56D3F0](v35, -1, -1);
      MEMORY[0x1AC56D3F0](v34, -1, -1);
    }

    *(&v49 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v48) = v30 & 1;
    goto LABEL_21;
  }

  if (a1 != 5)
  {
    _Block_copy(a4);
    sub_1A8462404(a2, &v48);
    v23 = *(&v49 + 1);
    if (*(&v49 + 1))
    {
      v24 = sub_1A82471E0(&v48, *(&v49 + 1));
      v25 = *(v23 - 8);
      v26 = *(v25 + 64);
      MEMORY[0x1EEE9AC00](v24);
      v28 = v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v28);
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);

      v29 = sub_1A84E679C();
      (*(v25 + 8))(v28, v23);
      sub_1A8244788(&v48);
    }

    else
    {
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);
      _Block_copy(a4);

      v29 = 0;
    }

    a4[2](a4, v29);
    swift_unknownObjectRelease();
    _Block_release(a4);
    goto LABEL_27;
  }

  v9 = objc_opt_self();
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);
  _Block_copy(a4);

  if (([v9 isTimeSensitiveCustomModelAvailable] & 1) == 0)
  {
    *(&v49 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v48) = 0;
LABEL_21:
    sub_1A8462404(&v48, v46);
    v39 = v47;
    if (v47)
    {
      v40 = sub_1A82471E0(v46, v47);
      v41 = *(v39 - 8);
      v42 = *(v41 + 64);
      MEMORY[0x1EEE9AC00](v40);
      v44 = v46 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v44);
      _Block_copy(a4);
      v45 = sub_1A84E679C();
      (*(v41 + 8))(v44, v39);
      sub_1A8244788(v46);
    }

    else
    {
      _Block_copy(a4);
      v45 = 0;
    }

    a4[2](a4, v45);
    swift_unknownObjectRelease();
    _Block_release(a4);
    sub_1A824B2D4(&v48, &qword_1EB2E66B0, &qword_1A8500960);
LABEL_27:

    goto LABEL_28;
  }

  sub_1A8462404(a2, &v48);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1A84623DC;
  *(v10 + 24) = v8;
  v11 = v49;
  *(v10 + 32) = v48;
  *(v10 + 48) = v11;

  sub_1A845F8B8(4, sub_1A8462474, v10);

LABEL_28:

  _Block_release(a4);
  _Block_release(a4);
  _Block_release(a4);
}

void sub_1A8462160(uint64_t a1, uint64_t a2, void *aBlock)
{
  v20 = 0u;
  v21 = 0u;
  _Block_copy(aBlock);
  v6 = MEMORY[0x1AC56AD90](a1);
  v8 = v7;
  v9 = OBJC_IVAR___IMSyncedSettingsManager_Impl_valueCache;
  swift_beginAccess();
  v10 = *(a2 + v9);
  if (*(v10 + 16) && (, v11 = sub_1A824B390(v6, v8), v13 = v12, , (v13 & 1) != 0))
  {
    sub_1A8244F40(*(v10 + 56) + 32 * v11, v19);

    sub_1A824B2D4(&v20, &qword_1EB2E66B0, &qword_1A8500960);
    sub_1A8243DDC(v19, &v20);
  }

  else
  {

    v14 = [objc_opt_self() sharedInstance];
    v15 = *MEMORY[0x1E69A7CE8];
    MEMORY[0x1AC56AD90](a1);
    v16 = sub_1A84E5D8C();

    v17 = [v14 getValueFromDomain:v15 forKey:v16];

    if (v17)
    {
      sub_1A84E63AC();
      swift_unknownObjectRelease();
      sub_1A824B2D4(&v20, &qword_1EB2E66B0, &qword_1A8500960);
      sub_1A8243DDC(v19, v18);
      sub_1A8243DDC(v18, v19);
    }

    else
    {
      memset(v18, 0, sizeof(v18));
      sub_1A84E62CC();
      sub_1A824B2D4(&v20, &qword_1EB2E66B0, &qword_1A8500960);
    }

    v20 = v19[0];
    v21 = v19[1];
  }

  _Block_copy(aBlock);
  sub_1A84619F8(a1, &v20, a2, aBlock);
  _Block_release(aBlock);
  sub_1A824B2D4(&v20, &qword_1EB2E66B0, &qword_1A8500960);
  _Block_release(aBlock);
}

uint64_t sub_1A84623DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1A8462404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E66B0, &qword_1A8500960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8462480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Message();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A84624E4()
{
  v1 = v0[3];

  if (v0[7])
  {
    sub_1A8244788(v0 + 4);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

double _sSo15IMChorosMonitorC6IMCoreE21timeSinceBeingOffGridSdyF_0()
{
  v0 = sub_1A84E56DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *MEMORY[0x1E69A70A0];
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 messagesAppDomain];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 objectForKey_];

    if (v17)
    {
      sub_1A84E63AC();
      swift_unknownObjectRelease();
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    v24 = v22;
    v25 = v23;
    if (*(&v23 + 1))
    {
      v18 = swift_dynamicCast();
      (*(v1 + 56))(v11, v18 ^ 1u, 1, v0);
      goto LABEL_9;
    }
  }

  else
  {

    v24 = 0u;
    v25 = 0u;
  }

  sub_1A824B2D4(&v24, &qword_1EB2E66B0, &qword_1A8500960);
  (*(v1 + 56))(v11, 1, 1, v0);
LABEL_9:
  sub_1A843ED60(v11, v9);
  if ((*(v1 + 48))(v9, 1, v0) == 1)
  {
    sub_1A824B2D4(v9, &qword_1EB2E6F48, &unk_1A8501F00);
    v19 = 0.0;
  }

  else
  {
    (*(v1 + 32))(v4, v9, v0);
    sub_1A84E568C();
    v19 = fabs(v20);
    (*(v1 + 8))(v4, v0);
  }

  sub_1A824B2D4(v11, &qword_1EB2E6F48, &unk_1A8501F00);
  return v19;
}

void sub_1A8462834()
{
  v16 = *MEMORY[0x1E69E9840];
  LOBYTE(v14) = 0;
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_1A84E555C();
  v2 = sub_1A84E5D8C();

  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v14];

  if (v3 && (v14 & 1) != 0)
  {
    goto LABEL_8;
  }

  LOBYTE(v14) = 0;
  v4 = [v0 defaultManager];
  sub_1A84E555C();
  v5 = sub_1A84E5D8C();

  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v14];

  if (!v6 || (v14 & 1) != 0)
  {
    v7 = [v0 defaultManager];
    v8 = sub_1A84E551C();
    v14 = 0;
    v9 = [v7 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v14];

    if (v9)
    {
      v10 = v14;
    }

    else
    {
      v11 = v14;
      sub_1A84E548C();

      swift_willThrow();
    }

LABEL_8:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1A84E646C();

  v14 = 0xD000000000000023;
  v15 = 0x80000001A8532090;
  v13 = sub_1A84E555C();
  MEMORY[0x1AC56A990](v13);

  sub_1A84E653C();
  __break(1u);
}

uint64_t sub_1A8462A9C()
{
  v13 = *MEMORY[0x1E69E9840];
  LOBYTE(v12) = 0;
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_1A84E555C();
  v2 = sub_1A84E5D8C();

  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v12];

  if (v3)
  {
    v4 = [v0 defaultManager];
    v5 = sub_1A84E551C();
    v12 = 0;
    v6 = [v4 removeItemAtURL:v5 error:&v12];

    if (v6)
    {
      v7 = v12;
      v8 = 1;
    }

    else
    {
      v9 = v12;
      sub_1A84E548C();

      swift_willThrow();
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

uint64_t URL.relativePath(toParent:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v34 - v4;
  v5 = sub_1A84E558C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84E549C();
  v10 = sub_1A84E54EC();
  v11 = *(v6 + 8);
  v11(v9, v5);
  sub_1A84E549C();
  v12 = sub_1A84E54EC();
  v11(v9, v5);
  v13 = *(v12 + 16);
  v14 = *(v10 + 16);
  if (v14 >= v13)
  {
    (*(v6 + 56))(a1, 1, 1, v5);
  }

  else
  {
    v35 = v6;
    v36 = v5;
    v37 = a1;
    v15 = 0;
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v13 == v16)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v19 = *(v12 + 16);
      if (v16 >= v14)
      {
        if (v16 >= v19)
        {
          goto LABEL_25;
        }

        v21 = v10;
        v22 = v12;
        v24 = *(v12 + v15 + 32);
        v23 = *(v12 + v15 + 40);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1A824A1FC(0, *(v17 + 2) + 1, 1, v17);
        }

        v5 = *(v17 + 2);
        v25 = *(v17 + 3);
        v26 = v17;
        if (v5 >= v25 >> 1)
        {
          v26 = sub_1A824A1FC((v25 > 1), v5 + 1, 1, v17);
        }

        *(v26 + 2) = v5 + 1;
        v17 = v26;
        v18 = &v26[16 * v5];
        *(v18 + 4) = v24;
        *(v18 + 5) = v23;
        v10 = v21;
        v12 = v22;
      }

      else
      {
        if (v16 >= v19)
        {
          goto LABEL_24;
        }

        if (v16 >= *(v10 + 16))
        {
          goto LABEL_26;
        }

        v20 = *(v12 + v15 + 32) == *(v10 + v15 + 32) && *(v12 + v15 + 40) == *(v10 + v15 + 40);
        if (!v20 && (sub_1A84E67AC() & 1) == 0)
        {

          return (*(v35 + 56))(v37, 1, 1, v36);
        }
      }

      ++v16;
      v15 += 16;
    }

    while (v13 != v16);
    v39 = v17;

    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A8407D84();
    v27 = sub_1A84E5D6C();
    v29 = v28;

    v5 = v38;
    URL.init(relativeFilePath:)(v27, v29, v38);
    v31 = v35;
    v30 = v36;
    if ((*(v35 + 48))(v5, 1, v36) != 1)
    {

      v32 = v37;
      (*(v31 + 32))(v37, v5, v30);
      return (*(v31 + 56))(v32, 0, 1, v30);
    }

LABEL_27:
    sub_1A824B2D4(v5, &qword_1EB2E7068, &unk_1A8501EB0);
    result = sub_1A84E653C();
    __break(1u);
  }

  return result;
}

uint64_t URL.init(relativeFilePath:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  if ((sub_1A84E5F0C() & 1) == 0)
  {
    v14 = 47;
    v15 = 0xE100000000000000;
    MEMORY[0x1AC56A990](a1, a2);

    a1 = v14;
    a2 = v15;
  }

  v14 = 0x2F2F3A656C6966;
  v15 = 0xE700000000000000;
  MEMORY[0x1AC56A990](a1, a2);

  sub_1A84E556C();

  v10 = sub_1A84E558C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10))
  {
    sub_1A824B2D4(v9, &qword_1EB2E7068, &unk_1A8501EB0);
    v12 = 1;
  }

  else
  {
    (*(v11 + 32))(a3, v9, v10);
    v12 = 0;
  }

  return (*(v11 + 56))(a3, v12, 1, v10);
}

uint64_t URL.mimeType.getter()
{
  v0 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_1A84E5C5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  sub_1A84E54BC();
  sub_1A84E5C4C();
  sub_1A84E5C2C();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1A824B2D4(v3, &qword_1EB2E7340, &qword_1A8501EF8);
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    v10 = sub_1A84E5C3C();
    v12 = v11;
    (*(v5 + 8))(v9, v4);
    if (v12)
    {
      return v10;
    }
  }

  return 0;
}

uint64_t URL.contentType.getter()
{
  v0 = sub_1A84E5C5C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - v5;
  sub_1A84E54BC();
  sub_1A84E5C4C();
  sub_1A84E5C2C();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_1A824B2D4(v6, &qword_1EB2E7340, &qword_1A8501EF8);
    return 0;
  }

  else
  {
    v8 = sub_1A84E5C1C();
    (*(v1 + 8))(v6, v0);
    return v8;
  }
}

uint64_t static NSISO8601DateFormatter.fileNameTimestamp()()
{
  v0 = sub_1A84E56DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1A84E56CC();
  v6 = sub_1A84E565C();
  (*(v1 + 8))(v4, v0);
  v7 = [v5 stringFromDate_];

  v8 = sub_1A84E5DBC();
  v10 = v9;

  v13[4] = v8;
  v13[5] = v10;
  v13[2] = 58;
  v13[3] = 0xE100000000000000;
  v13[0] = 45;
  v13[1] = 0xE100000000000000;
  sub_1A840D3B0();
  v11 = sub_1A84E637C();

  return v11;
}

uint64_t sub_1A8463774(uint64_t a1, uint64_t a2)
{
  v85 = a2;
  v87 = a1;
  v3 = sub_1A84E56DC();
  v86 = *(v3 - 8);
  v4 = v86[8];
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v74 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v74 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v74 - v14;
  v88 = v2;
  v16 = *v2;
  v17 = *(v2 + 1);
  v18 = sub_1A84E5D8C();
  v19 = IMDAttachmentRecordCopyAttachmentForGUID();

  if (v19)
  {

    return v19 == 0;
  }

  v82 = v13;
  v83 = v15;
  v77 = v7;
  v78 = v10;
  v81 = 0;
  v79 = v16;
  v80 = sub_1A84E5D8C();
  v20 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  v84 = type metadata accessor for ImportExport.Attachment();
  v21 = v88;
  v22 = &v88[v84[14]];
  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = sub_1A84E5D8C();
  v26 = [v20 dateFromString_];

  if (!v26)
  {
    __break(1u);
    goto LABEL_29;
  }

  v27 = v21;
  v76 = v17;
  v28 = v82;
  sub_1A84E569C();

  v29 = v83;
  v30 = v28;
  v31 = v3;
  v32 = v86;
  v75 = v86[4];
  v75(v83, v30, v31);
  v33 = sub_1A84E565C();
  v82 = [v33 __im_nanosecondTimeInterval];

  v34 = v32[1];
  v34(v29, v31);
  v35 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  v36 = sub_1A84E5D8C();
  v37 = [v35 dateFromString_];

  v38 = v87;
  if (!v37)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v39 = v77;
  sub_1A84E569C();

  v40 = v78;
  v75(v78, v39, v31);
  v41 = v31;
  v42 = sub_1A84E565C();
  v86 = [v42 __im_nanosecondTimeInterval];

  v34(v40, v41);
  v43 = v27[5];
  v44 = v27[6];
  v83 = sub_1A84E5D8C();
  sub_1A8463DDC(v38);
  if (v45)
  {
    v87 = sub_1A84E5D8C();
  }

  else
  {
    v87 = 0;
  }

  v46 = v84;
  v47 = v27[7];
  v48 = v27[8];
  v85 = sub_1A84E5D8C();
  if (v27[10])
  {
    v49 = v27[9];
    v75 = sub_1A84E5D8C();
  }

  else
  {
    v75 = 0;
  }

  LODWORD(v78) = *(v27 + v46[18]);
  v79 = *(v27 + v46[15]);
  v50 = v46[24];
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  if (v89)
  {
    v51 = sub_1A84E5D2C();
  }

  else
  {
    v51 = 0;
  }

  LODWORD(v77) = *(v27 + v46[16]);
  v52 = v27 + v46[25];
  sub_1A84E595C();
  if (v89)
  {
    v53 = sub_1A84E5D2C();
  }

  else
  {
    v53 = 0;
  }

  v54 = v27 + v46[26];
  sub_1A84E595C();
  if (v89)
  {
    v55 = sub_1A84E5D2C();
  }

  else
  {
    v55 = 0;
  }

  v56 = sub_1A84E5D8C();
  v57 = v46;
  v58 = *(v27 + v46[17]);
  v59 = (v27 + v57[19]);
  if (v59[1])
  {
    v60 = *v59;
    v61 = sub_1A84E5D8C();
  }

  else
  {
    v61 = 0;
  }

  v62 = (v27 + v84[20]);
  if (v62[1])
  {
    v63 = *v62;
    v64 = sub_1A84E5D8C();
  }

  else
  {
    v64 = 0;
  }

  v84 = v64;
  v88 = v55;
  v65 = v53;
  v66 = v80;
  v67 = v56;
  v68 = v83;
  v69 = v51;
  v70 = v87;
  v71 = v85;
  v72 = v75;
  v86 = IMDAttachmentRecordCreate();

  v19 = v81;
  if (v86)
  {
    return v19 == 0;
  }

LABEL_30:
  result = sub_1A84E653C();
  __break(1u);
  return result;
}

uint64_t sub_1A8463DDC(uint64_t a1)
{
  v3 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - v5;
  v7 = sub_1A84E558C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v10)
  {
    goto LABEL_6;
  }

  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = sub_1A84E5D8C();
    v15 = [v14 stringByAbbreviatingWithTildeInPath];

    v16 = sub_1A84E5DBC();
  }

  else
  {
LABEL_6:
    v17 = type metadata accessor for ImportExport.Attachment();
    sub_1A8243D74(v1 + *(v17 + 40), v6, &qword_1EB2E7068, &unk_1A8501EB0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1A824B2D4(v6, &qword_1EB2E7068, &unk_1A8501EB0);
      return 0;
    }

    else
    {
      (*(v8 + 32))(v12, v6, v7);
      sub_1A84E555C();
      v18 = sub_1A84E5D8C();

      v19 = [v18 stringByAbbreviatingWithTildeInPath];

      v16 = sub_1A84E5DBC();
      (*(v8 + 8))(v12, v7);
    }
  }

  return v16;
}

uint64_t sub_1A846403C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v182 = a2;
  v3 = v2;
  v173 = a1;
  v184[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for ImportExport.Attachment();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v178 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v166 - v9);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v175 = &v166 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v169 = &v166 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v168 = (&v166 - v15);
  v16 = sub_1A84E5C9C();
  v17 = *(v16 - 8);
  v179 = v16;
  v180 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v176 = &v166 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v170 = &v166 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v172 = &v166 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v167 = &v166 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v171 = &v166 - v30;
  v31 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v166 - v33;
  v35 = sub_1A84E558C();
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v166 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v174 = &v166 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v177 = &v166 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v166 - v44;
  v47 = v46;
  v49 = v48;
  sub_1A8243D74(v3 + v4[10], v34, &qword_1EB2E7068, &unk_1A8501EB0);
  if (v49[6](v34, 1, v47) == 1)
  {
    sub_1A824B2D4(v34, &qword_1EB2E7068, &unk_1A8501EB0);
    sub_1A84E5C8C();
    sub_1A8467450(v3, v10, type metadata accessor for ImportExport.Attachment);
    sub_1A8467450(v3, v178, type metadata accessor for ImportExport.Attachment);
    v50 = sub_1A84E5C7C();
    v51 = sub_1A84E619C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v184[0] = v177;
      *v52 = 136315394;
      v53 = *v10;
      v54 = v10[1];

      sub_1A8467380(v10, type metadata accessor for ImportExport.Attachment);
      v55 = sub_1A82446BC(v53, v54, v184);

      *(v52 + 4) = v55;
      *(v52 + 12) = 2080;
      v56 = v178;
      v183 = *(v178 + v4[23]);
      ImportExport.Attachment.MissingFileReasons.description.getter();
      v58 = v57;
      v60 = v59;
      sub_1A8467380(v56, type metadata accessor for ImportExport.Attachment);
      v61 = sub_1A82446BC(v58, v60, v184);

      *(v52 + 14) = v61;
      _os_log_impl(&dword_1A823F000, v50, v51, "attachment has no file path %s: reasons: %s", v52, 0x16u);
      v62 = v177;
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v62, -1, -1);
      MEMORY[0x1AC56D3F0](v52, -1, -1);
    }

    else
    {

      sub_1A8467380(v178, type metadata accessor for ImportExport.Attachment);
      sub_1A8467380(v10, type metadata accessor for ImportExport.Attachment);
    }

    (*(v180 + 8))(v21, v179);
    goto LABEL_9;
  }

  v63 = v49[4];
  v63(v45, v34, v47);
  if (*(v3 + v4[12]))
  {
    v64 = v176;
    sub_1A84E5C8C();
    v65 = v175;
    sub_1A8467450(v3, v175, type metadata accessor for ImportExport.Attachment);
    v49[2](v39, v45, v47);
    v66 = v47;
    v67 = sub_1A84E5C7C();
    v68 = sub_1A84E619C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v173 = v45;
      v70 = v69;
      v71 = swift_slowAlloc();
      v184[0] = v71;
      *v70 = 136315394;
      v178 = v66;
      v72 = v49;
      v73 = *v65;
      v74 = v65[1];

      sub_1A8467380(v65, type metadata accessor for ImportExport.Attachment);
      v75 = sub_1A82446BC(v73, v74, v184);

      *(v70 + 4) = v75;
      *(v70 + 12) = 2080;
      v76 = sub_1A84E555C();
      v78 = v77;
      v79 = v72[1];
      v80 = v39;
      v81 = v178;
      (v79)(v80, v178);
      v82 = sub_1A82446BC(v76, v78, v184);

      *(v70 + 14) = v82;
      _os_log_impl(&dword_1A823F000, v67, v68, "attachment %s has relative file path: %s", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v71, -1, -1);
      MEMORY[0x1AC56D3F0](v70, -1, -1);

      (*(v180 + 8))(v176, v179);
      (v79)(v173, v81);
    }

    else
    {

      v89 = v49[1];
      (v89)(v39, v66);
      sub_1A8467380(v65, type metadata accessor for ImportExport.Attachment);
      (*(v180 + 8))(v64, v179);
      (v89)(v45, v66);
    }

    v90 = sub_1A83EA2FC(&qword_1EB2E7FB8, &qword_1A8506D28);
    result = (*(*(v90 - 8) + 56))(v182, 1, 1, v90);
    goto LABEL_34;
  }

  v175 = v4;
  v176 = v49;
  sub_1A84E555C();
  v85 = sub_1A84E5E2C();
  v87 = v86;

  sub_1A84674B8();
  if (sub_1A84E616C())
  {
    v166 = v85;
    v175 = v87;
    v178 = v47;
    v88 = v181;
  }

  else
  {

    sub_1A84E555C();
    v91 = sub_1A84E5E2C();
    v93 = v92;

    v166 = v91;
    v94 = sub_1A84E616C();
    v88 = v181;
    if ((v94 & 1) == 0)
    {
      v127 = v171;
      sub_1A84E5C8C();
      v128 = v168;
      sub_1A8467450(v3, v168, type metadata accessor for ImportExport.Attachment);
      v129 = v169;
      sub_1A8467450(v3, v169, type metadata accessor for ImportExport.Attachment);

      v130 = sub_1A84E5C7C();
      v131 = v93;
      v132 = sub_1A84E619C();

      if (os_log_type_enabled(v130, v132))
      {
        v133 = swift_slowAlloc();
        v173 = v45;
        v134 = v133;
        v177 = swift_slowAlloc();
        v184[0] = v177;
        *v134 = 136315650;
        v178 = v47;
        v135 = *v128;
        v136 = v128[1];

        sub_1A8467380(v128, type metadata accessor for ImportExport.Attachment);
        v137 = sub_1A82446BC(v135, v136, v184);

        *(v134 + 4) = v137;
        *(v134 + 12) = 2080;
        v138 = sub_1A82446BC(v166, v131, v184);

        *(v134 + 14) = v138;
        *(v134 + 22) = 2080;
        v183 = *(v129 + *(v175 + 92));
        ImportExport.Attachment.MissingFileReasons.description.getter();
        v140 = v139;
        v142 = v141;
        sub_1A8467380(v129, type metadata accessor for ImportExport.Attachment);
        v143 = sub_1A82446BC(v140, v142, v184);

        *(v134 + 24) = v143;
        _os_log_impl(&dword_1A823F000, v130, v132, "attachment %s source path does not exist on disk: %s, reasons: %s", v134, 0x20u);
        v144 = v177;
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v144, -1, -1);
        MEMORY[0x1AC56D3F0](v134, -1, -1);

        (*(v180 + 8))(v171, v179);
        (*(v176 + 1))(v173, v178);
      }

      else
      {

        sub_1A8467380(v129, type metadata accessor for ImportExport.Attachment);
        sub_1A8467380(v128, type metadata accessor for ImportExport.Attachment);
        (*(v180 + 8))(v127, v179);
        (*(v176 + 1))(v45, v47);
      }

LABEL_9:
      v83 = sub_1A83EA2FC(&qword_1EB2E7FB8, &qword_1A8506D28);
      result = (*(*(v83 - 8) + 56))(v182, 1, 1, v83);
      goto LABEL_34;
    }

    v175 = v93;
    v178 = v47;
  }

  sub_1A8466510(v177);
  sub_1A84E555C();
  v181 = sub_1A84E5E2C();
  v96 = v95;

  v97 = v174;
  sub_1A84E553C();
  if (sub_1A84E54CC())
  {

    v98 = v170;
    sub_1A84E5C8C();

    v99 = sub_1A84E5C7C();
    v100 = sub_1A84E618C();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v173 = v45;
      v102 = v101;
      v103 = swift_slowAlloc();
      v184[0] = v103;
      *v102 = 136315138;
      v104 = sub_1A82446BC(v181, v96, v184);

      *(v102 + 4) = v104;
      _os_log_impl(&dword_1A823F000, v99, v100, "Attachment already exists at path: %s, skipping...", v102, 0xCu);
      sub_1A8244788(v103);
      MEMORY[0x1AC56D3F0](v103, -1, -1);
      MEMORY[0x1AC56D3F0](v102, -1, -1);

      (*(v180 + 8))(v98, v179);
      v105 = *(v176 + 1);
      v106 = v178;
      v105(v97, v178);
      v105(v177, v106);
      v107 = v173;
    }

    else
    {

      (*(v180 + 8))(v98, v179);
      v105 = *(v176 + 1);
      v106 = v178;
      v105(v97, v178);
      v105(v177, v106);
      v107 = v45;
    }

    v105(v107, v106);
    goto LABEL_9;
  }

  v173 = v45;
  sub_1A8462834();
  v108 = v175;
  if (!v88)
  {
    v109 = [objc_opt_self() defaultManager];
    v110 = sub_1A84E5D8C();
    v111 = sub_1A84E5D8C();
    v184[0] = 0;
    v112 = [v109 copyItemAtPath:v110 toPath:v111 error:v184];
    v175 = v108;
    v113 = v112;

    if (v113)
    {
      v114 = v184[0];
      v115 = v167;
      sub_1A84E5C8C();
      v116 = v175;

      v117 = sub_1A84E5C7C();
      v118 = sub_1A84E618C();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v184[0] = v120;
        *v119 = 136315394;
        *(v119 + 4) = sub_1A82446BC(v166, v175, v184);
        *(v119 + 12) = 2080;
        v121 = sub_1A82446BC(v181, v96, v184);

        *(v119 + 14) = v121;
        _os_log_impl(&dword_1A823F000, v117, v118, "Copyied attachment %s to %s", v119, 0x16u);
        swift_arrayDestroy();
        v122 = v120;
        v116 = v175;
        MEMORY[0x1AC56D3F0](v122, -1, -1);
        v123 = v119;
        v124 = v166;
        MEMORY[0x1AC56D3F0](v123, -1, -1);

        (*(v180 + 8))(v167, v179);
        v125 = *(v176 + 1);
        v126 = v178;
        v125(v174, v178);
        v125(v173, v126);
      }

      else
      {

        (*(v180 + 8))(v115, v179);
        v162 = *(v176 + 1);
        v126 = v178;
        v162(v97, v178);
        v162(v173, v126);
        v124 = v166;
      }

      v163 = sub_1A83EA2FC(&qword_1EB2E7FB8, &qword_1A8506D28);
      v164 = *(v163 + 48);
      v165 = v182;
      *v182 = v124;
      v165[1] = v116;
      v63(v165 + v164, v177, v126);
      result = (*(*(v163 - 8) + 56))(v165, 0, 1, v163);
      goto LABEL_34;
    }

    v145 = v184[0];
    v88 = sub_1A84E548C();

    swift_willThrow();
    v108 = v175;
  }

  v146 = v172;
  sub_1A84E5C8C();

  v147 = v88;
  v148 = sub_1A84E5C7C();
  v149 = sub_1A84E619C();

  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v184[0] = v152;
    *v150 = 136315650;
    v153 = sub_1A82446BC(v166, v108, v184);

    *(v150 + 4) = v153;
    *(v150 + 12) = 2080;
    v154 = sub_1A82446BC(v181, v96, v184);

    *(v150 + 14) = v154;
    *(v150 + 22) = 2112;
    v155 = v88;
    v156 = _swift_stdlib_bridgeErrorToNSError();
    *(v150 + 24) = v156;
    *v151 = v156;
    _os_log_impl(&dword_1A823F000, v148, v149, "Copying attachment %s to %s failed with error %@", v150, 0x20u);
    sub_1A824B2D4(v151, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v151, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v152, -1, -1);
    MEMORY[0x1AC56D3F0](v150, -1, -1);

    (*(v180 + 8))(v172, v179);
    v157 = *(v176 + 1);
    v158 = v174;
  }

  else
  {

    (*(v180 + 8))(v146, v179);
    v157 = *(v176 + 1);
    v158 = v97;
  }

  v159 = v178;
  v157(v158, v178);
  v157(v177, v159);
  v157(v173, v159);
  v160 = sub_1A83EA2FC(&qword_1EB2E7FB8, &qword_1A8506D28);
  result = (*(*(v160 - 8) + 56))(v182, 1, 1, v160);
LABEL_34:
  v161 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A8465554()
{
  v1 = v0;
  v2 = type metadata accessor for ImportExport.Attachment();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v80 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v80 - v10;
  v11 = sub_1A84E5C9C();
  v12 = *(v11 - 8);
  v87 = v11;
  v88 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v85 = &v80 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v83 = &v80 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v80 - v21;
  v22 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v80 - v24;
  v26 = sub_1A84E558C();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v80 - v31;
  v86 = v2;
  v34 = v33;
  v36 = v35;
  sub_1A8243D74(v1 + *(v2 + 40), v25, &qword_1EB2E7068, &unk_1A8501EB0);
  if ((*(v36 + 48))(v25, 1, v34) == 1)
  {
    sub_1A824B2D4(v25, &qword_1EB2E7068, &unk_1A8501EB0);
    sub_1A84E5C8C();
    sub_1A8467450(v1, v9, type metadata accessor for ImportExport.Attachment);
    sub_1A8467450(v1, v6, type metadata accessor for ImportExport.Attachment);
    v37 = sub_1A84E5C7C();
    v38 = sub_1A84E619C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v90 = v40;
      *v39 = 136315394;
      v41 = *v9;
      v42 = v9[1];

      sub_1A8467380(v9, type metadata accessor for ImportExport.Attachment);
      v43 = sub_1A82446BC(v41, v42, &v90);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      v89 = *&v6[*(v86 + 92)];
      ImportExport.Attachment.MissingFileReasons.description.getter();
      v45 = v44;
      v47 = v46;
      sub_1A8467380(v6, type metadata accessor for ImportExport.Attachment);
      v48 = sub_1A82446BC(v45, v47, &v90);

      *(v39 + 14) = v48;
      _os_log_impl(&dword_1A823F000, v37, v38, "unable to generate file hash - attachment has no file path %s: reasons: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC56D3F0](v40, -1, -1);
      MEMORY[0x1AC56D3F0](v39, -1, -1);
    }

    else
    {

      sub_1A8467380(v6, type metadata accessor for ImportExport.Attachment);
      sub_1A8467380(v9, type metadata accessor for ImportExport.Attachment);
    }

    (*(v88 + 8))(v16, v87);
  }

  else
  {
    (*(v36 + 32))(v32, v25, v34);
    v81 = v32;
    sub_1A84E555C();
    v49 = sub_1A84E5E2C();
    v51 = v50;

    sub_1A84674B8();
    if (sub_1A84E616C())
    {
      v52 = v85;
      sub_1A84E5C8C();
      v53 = v84;
      sub_1A8467450(v1, v84, type metadata accessor for ImportExport.Attachment);

      v54 = sub_1A84E5C7C();
      v55 = sub_1A84E619C();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v83 = v34;
        v58 = v57;
        v90 = v57;
        *v56 = 136315394;
        v59 = sub_1A82446BC(v49, v51, &v90);

        *(v56 + 4) = v59;
        *(v56 + 12) = 2080;
        v89 = *(v53 + *(v86 + 92));
        ImportExport.Attachment.MissingFileReasons.description.getter();
        v61 = v60;
        v63 = v62;
        sub_1A8467380(v53, type metadata accessor for ImportExport.Attachment);
        v64 = sub_1A82446BC(v61, v63, &v90);

        *(v56 + 14) = v64;
        _os_log_impl(&dword_1A823F000, v54, v55, "unable to generate file hash - no file exists at path: %s: reasons: %s", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v58, -1, -1);
        MEMORY[0x1AC56D3F0](v56, -1, -1);

        (*(v88 + 8))(v52, v87);
        (*(v36 + 8))(v81, v83);
      }

      else
      {

        sub_1A8467380(v53, type metadata accessor for ImportExport.Attachment);
        (*(v88 + 8))(v52, v87);
        (*(v36 + 8))(v81, v34);
      }
    }

    else
    {
      v66 = v34;
      v67 = v36;
      v68 = v88;
      sub_1A84E54FC();
      v69 = sub_1A84E55AC();
      v71 = v70;
      v72 = *(v67 + 8);
      v72(v30, v66);

      v73 = sub_1A84E55EC();
      v74 = IMSharedHelperMD5OfData();

      if (v74)
      {
        v75 = sub_1A84E5DBC();
        sub_1A83F5994(v69, v71);

        v72(v81, v66);
        return v75;
      }

      v76 = v82;
      sub_1A84E5C8C();
      v77 = sub_1A84E5C7C();
      v78 = sub_1A84E619C();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_1A823F000, v77, v78, "unable to generate file hash - IMSharedHelperMD5OfData returned nil", v79, 2u);
        MEMORY[0x1AC56D3F0](v79, -1, -1);
      }

      sub_1A83F5994(v69, v71);

      (*(v68 + 8))(v76, v87);
      v72(v81, v66);
    }
  }

  return 0;
}

unint64_t sub_1A84660EC()
{
  v1 = v0;
  v2 = sub_1A8242810(MEMORY[0x1E69E7CC0]);
  v3 = *(type metadata accessor for ImportExport.Attachment() + 100);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v4 = v51;
  v5 = *MEMORY[0x1E69A7CA0];
  v6 = MEMORY[0x1E69A7C98];
  if (v51)
  {
    v7 = *MEMORY[0x1E69A7CA0];
    *&v53[0] = sub_1A84E5DBC();
    *(&v53[0] + 1) = v8;
    sub_1A84E641C();
    if (*(v51 + 16) && (v9 = sub_1A8250C0C(&v51), (v10 & 1) != 0))
    {
      sub_1A8244F40(*(v4 + 56) + 32 * v9, v50);
      sub_1A8250D18(&v51);
      sub_1A8243DDC(v50, v53);
      v11 = sub_1A84E5DBC();
      v13 = v12;
      sub_1A8244F40(v53, &v51);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v50[0] = v2;
      sub_1A848DAD4(&v51, v11, v13, isUniquelyReferenced_nonNull_native);

      sub_1A8244788(v53);
      v2 = *&v50[0];
    }

    else
    {
      sub_1A8250D18(&v51);
    }

    v15 = *v6;
    *&v50[0] = sub_1A84E5DBC();
    *(&v50[0] + 1) = v16;
    sub_1A84E641C();
    if (*(v4 + 16) && (v17 = sub_1A8250C0C(&v51), (v18 & 1) != 0))
    {
      sub_1A8244F40(*(v4 + 56) + 32 * v17, v50);
      sub_1A8250D18(&v51);

      sub_1A8243DDC(v50, v53);
      v19 = sub_1A84E5DBC();
      v21 = v20;
      sub_1A8244F40(v53, &v51);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      *&v50[0] = v2;
      sub_1A848DAD4(&v51, v19, v21, v22);

      sub_1A8244788(v53);
      v2 = *&v50[0];
    }

    else
    {

      sub_1A8250D18(&v51);
    }
  }

  v23 = MEMORY[0x1E69E6158];
  v24 = sub_1A84E5DBC();
  if (*(v2 + 16))
  {
    v26 = sub_1A824B390(v24, v25);
    v28 = v27;

    if (v28)
    {
      sub_1A8244F40(*(v2 + 56) + 32 * v26, &v51);
      sub_1A824B2D4(&v51, &qword_1EB2E66B0, &qword_1A8500960);
      goto LABEL_16;
    }
  }

  else
  {
  }

  v51 = 0u;
  v52 = 0u;
  sub_1A824B2D4(&v51, &qword_1EB2E66B0, &qword_1A8500960);
  v29 = sub_1A8465554();
  if (!v30)
  {

    return 0;
  }

  v31 = v29;
  v32 = v30;
  v33 = sub_1A84E5DBC();
  v35 = v34;
  *(&v52 + 1) = v23;
  *&v51 = v31;
  *(&v51 + 1) = v32;
  sub_1A8243DDC(&v51, v53);
  v36 = swift_isUniquelyReferenced_nonNull_native();
  *&v50[0] = v2;
  sub_1A848DAD4(v53, v33, v35, v36);

  v2 = *&v50[0];
LABEL_16:
  v37 = *v6;
  v38 = sub_1A84E5DBC();
  if (!*(v2 + 16))
  {

    goto LABEL_20;
  }

  v40 = sub_1A824B390(v38, v39);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
LABEL_20:
    v51 = 0u;
    v52 = 0u;
    sub_1A824B2D4(&v51, &qword_1EB2E66B0, &qword_1A8500960);
    v43 = sub_1A84E5DBC();
    v45 = v44;
    v46 = *v1;
    v47 = v1[1];
    *(&v52 + 1) = v23;
    *&v51 = v46;
    *(&v51 + 1) = v47;
    sub_1A8243DDC(&v51, v53);

    v48 = swift_isUniquelyReferenced_nonNull_native();
    *&v50[0] = v2;
    sub_1A848DAD4(v53, v43, v45, v48);

    return *&v50[0];
  }

  sub_1A8244F40(*(v2 + 56) + 32 * v40, &v51);
  sub_1A824B2D4(&v51, &qword_1EB2E66B0, &qword_1A8500960);
  return v2;
}

void sub_1A8466510(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v39 - v6;
  v8 = sub_1A84E558C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  v19 = type metadata accessor for ImportExport.Attachment();
  v20 = v19;
  if (*(v2 + *(v19 + 64)) != 1)
  {
    v23 = v2[6];
    v24 = HIBYTE(v23) & 0xF;
    v40 = v2[5];
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
    }

    else
    {
      sub_1A8243D74(v2 + *(v19 + 40), v7, &qword_1EB2E7068, &unk_1A8501EB0);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {

        sub_1A824B2D4(v7, &qword_1EB2E7068, &unk_1A8501EB0);
      }

      else
      {
        (*(v9 + 32))(v18, v7, v8);
        v40 = sub_1A84E550C();
        (*(v9 + 8))(v18, v8);
      }
    }

    v27 = *v2;
    v28 = v2[1];
    v29 = sub_1A84E5D8C();
    v30 = sub_1A84E5D8C();
    v31 = v2[10];
    v39 = a1;
    if (v31)
    {
      v32 = v2[9];
      v33 = sub_1A84E5D8C();
    }

    else
    {
      v33 = 0;
    }

    v34 = v2[7];
    v35 = v2[8];
    v36 = sub_1A84E5D8C();
    v37 = IMAttachmentPersistentPath();

    if (v37)
    {
      sub_1A84E5DBC();

      sub_1A84E54FC();

      sub_1A84E553C();
      sub_1A84E552C();

      v38 = *(v9 + 8);
      v38(v13, v8);
      v38(v16, v8);
      return;
    }

    goto LABEL_22;
  }

  v21 = sub_1A84660EC();
  if (v21)
  {
    sub_1A84A5368(v21);

    v22 = sub_1A84E5D2C();
  }

  else
  {
    v22 = 0;
  }

  v25 = *(v2 + *(v20 + 88));
  v26 = IMSharedHelperCachePathForStickerWithProperties();

  if (!v26)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  sub_1A84E5DBC();

  sub_1A84E54FC();
}

uint64_t sub_1A8466930(uint64_t a1, char *a2)
{
  v3 = v2;
  v89 = a2;
  v5 = type metadata accessor for ImportExport.Message();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v71 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v87 = &v70 - v10;
  v11 = sub_1A83EA2FC(&qword_1EB2E7FB0, &qword_1A8506D20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v70 - v13);
  v96 = sub_1A83EA2FC(&qword_1EB2E7FB8, &qword_1A8506D28);
  v15 = *(v96 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v96);
  v77 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v76 = (&v70 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v88 = &v70 - v21;
  v22 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v70 - v24;
  v79 = type metadata accessor for ImportExport.Attachment();
  v26 = *(v79 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v79);
  v85 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v86 = (&v70 - v31);
  MEMORY[0x1EEE9AC00](v30);
  v99 = &v70 - v32;
  v33 = type metadata accessor for ImportExport.MessagePart();
  v34 = *(*(v33 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v33);
  v98 = &v70 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a1;
  v70 = a1 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_originalMessage;
  v38 = *(a1 + OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_originalMessage + 216);
  v97 = *(v38 + 16);
  if (v97)
  {
    v39 = v26;
    v40 = 0;
    v95 = v38 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v90 = MEMORY[0x1E69E7CC0];
    v94 = *(result + 44);
    v72 = v39;
    v93 = (v39 + 48);
    v75 = OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_copiedAttachments;
    v84 = (v15 + 48);
    v41 = v79;
    v74 = v14;
    v73 = v25;
    v91 = v38;
    v92 = v36;
    while (1)
    {
      if (v40 >= *(v38 + 16))
      {
        __break(1u);
        return result;
      }

      v45 = v98;
      sub_1A8467450(v95 + *(v36 + 72) * v40, v98, type metadata accessor for ImportExport.MessagePart);
      sub_1A8243D74(v45 + v94, v25, &qword_1EB2E6F50, &unk_1A8502920);
      sub_1A8467380(v45, type metadata accessor for ImportExport.MessagePart);
      if ((*v93)(v25, 1, v41) == 1)
      {
        break;
      }

      sub_1A846731C(v25, v99);
      sub_1A846403C(v89, v14);
      if (v3)
      {
        goto LABEL_22;
      }

      if ((*v84)(v14, 1, v96) == 1)
      {
        sub_1A8467380(v99, type metadata accessor for ImportExport.Attachment);
        v42 = v14;
        v43 = &qword_1EB2E7FB0;
        v44 = &qword_1A8506D20;
        goto LABEL_4;
      }

      v46 = v88;
      sub_1A84673E0(v14, v88);
      v47 = v76;
      sub_1A8243D74(v46, v76, &qword_1EB2E7FB8, &qword_1A8506D28);
      v81 = *v47;
      v83 = 0;
      v48 = v47[1];
      v82 = *(v96 + 48);
      v49 = sub_1A84E555C();
      v80 = v50;
      v51 = v78;
      v52 = v75;
      swift_beginAccess();
      v53 = *(v51 + v52);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = *(v51 + v52);
      *(v51 + v52) = 0x8000000000000000;
      v55 = v87;
      sub_1A848DD70(v49, v80, v81, v48, isUniquelyReferenced_nonNull_native);

      *(v51 + v52) = v101;
      swift_endAccess();
      v56 = sub_1A84E558C();
      v57 = *(v56 - 8);
      (*(v57 + 8))(v47 + v82, v56);
      v58 = v46;
      v59 = v77;
      sub_1A8243D74(v58, v77, &qword_1EB2E7FB8, &qword_1A8506D28);
      v60 = *(v59 + 8);

      (*(v57 + 32))(v55, v59 + *(v96 + 48), v56);
      (*(v57 + 56))(v55, 0, 1, v56);
      v100 = 0;
      v61 = v86;
      v62 = v83;
      ImportExport.Attachment.update(filePath:isRelativeFilePath:wasDownloaded:missingFileReasons:)(v55, 0, 0, &v100, v86);
      v3 = v62;
      if (v62)
      {
        sub_1A824B2D4(v87, &qword_1EB2E7068, &unk_1A8501EB0);
        sub_1A824B2D4(v88, &qword_1EB2E7FB8, &qword_1A8506D28);
LABEL_22:
        sub_1A8467380(v99, type metadata accessor for ImportExport.Attachment);
      }

      sub_1A824B2D4(v87, &qword_1EB2E7068, &unk_1A8501EB0);
      sub_1A8467450(v61, v85, type metadata accessor for ImportExport.Attachment);
      v63 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v63 = sub_1A83EF118(0, v63[2] + 1, 1, v63);
      }

      v14 = v74;
      v38 = v91;
      v65 = v63[2];
      v64 = v63[3];
      if (v65 >= v64 >> 1)
      {
        v90 = sub_1A83EF118(v64 > 1, v65 + 1, 1, v63);
      }

      else
      {
        v90 = v63;
      }

      sub_1A8467380(v86, type metadata accessor for ImportExport.Attachment);
      sub_1A824B2D4(v88, &qword_1EB2E7FB8, &qword_1A8506D28);
      sub_1A8467380(v99, type metadata accessor for ImportExport.Attachment);
      v66 = v90;
      *(v90 + 16) = v65 + 1;
      result = sub_1A846731C(v85, v66 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v65);
      v25 = v73;
      v41 = v79;
LABEL_5:
      ++v40;
      v36 = v92;
      if (v97 == v40)
      {
        goto LABEL_19;
      }
    }

    v42 = v25;
    v43 = &qword_1EB2E6F50;
    v44 = &unk_1A8502920;
LABEL_4:
    result = sub_1A824B2D4(v42, v43, v44);
    v38 = v91;
    goto LABEL_5;
  }

  v90 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v67 = v71;
  ImportExport.Message.update(attachments:)(v90, v71);
  if (v3)
  {
  }

  v68 = OBJC_IVAR____TtCCO6IMCore12ImportExport8Importer17MessageImportInfo_message;
  v69 = v78;
  swift_beginAccess();
  sub_1A84672B8(v67, v69 + v68);
  return swift_endAccess();
}

uint64_t sub_1A84672B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Message();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A846731C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Attachment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8467380(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A84673E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7FB8, &qword_1A8506D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8467450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A84674B8()
{
  result = qword_1EB2E7FC0;
  if (!qword_1EB2E7FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2E7FC0);
  }

  return result;
}

uint64_t sub_1A8467504(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a2 <= 1.0)
  {
    v4 = 1.0;
  }

  v5 = a1 / v4 * 100.0;
  sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E63B0];
  *(v6 + 16) = xmmword_1A85013E0;
  v8 = MEMORY[0x1E69E6438];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  sub_1A84E5DDC();
  sub_1A840D3B0();
  v17 = sub_1A84E639C();
  v10 = v9;

  sub_1A84E646C();

  sub_1A84E676C();
  v11 = sub_1A84E639C();

  MEMORY[0x1AC56A990](543584032, 0xE400000000000000);
  sub_1A84E676C();
  v12 = sub_1A84E639C();
  v14 = v13;

  MEMORY[0x1AC56A990](v12, v14);

  MEMORY[0x1AC56A990](2128928, 0xE300000000000000);
  MEMORY[0x1AC56A990](v17, v10);

  result = MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A85321E0);
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else
  {
    v16 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v16);

    return v11;
  }

  return result;
}

uint64_t sub_1A84677D8()
{
  v1 = v0;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD00000000000002BLL, 0x80000001A8532110);
  result = swift_beginAccess();
  v3 = v0[9];
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_beginAccess();
  v4 = v1[4];
  if (v4 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = sub_1A8467504(v3, v4);
  MEMORY[0x1AC56A990](v5);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A8532140);
  result = v1[10];
  if (result < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v1[5];
  if (v6 < 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = sub_1A8467504(result, v6);
  MEMORY[0x1AC56A990](v7);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A8532160);
  result = v1[11];
  if (result < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v1[6];
  if (v8 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = sub_1A8467504(result, v8);
  MEMORY[0x1AC56A990](v9);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A8532180);
  result = v1[12];
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v1[7];
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = sub_1A8467504(result, v10);
    MEMORY[0x1AC56A990](v11);

    MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A85321A0);
    v12 = sub_1A8467504(v1[13], v1[8]);
    MEMORY[0x1AC56A990](v12);

    MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A85321C0);
    swift_beginAccess();
    v13 = v1[3];

    v14 = ImportExport.Timer.elapsedTimeDescription.getter();
    v16 = v15;

    MEMORY[0x1AC56A990](v14, v16);

    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t ImportExportProgressReporting.progressDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD00000000000002BLL, 0x80000001A8532110);
  result = (*(a2 + 48))(a1, a2);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  result = (*(a2 + 8))(a1, a2);
  if (result < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = sub_1A8467EB0(v5, result);
  MEMORY[0x1AC56A990](v6);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A8532140);
  result = (*(a2 + 56))(a1, a2);
  if (result < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  result = (*(a2 + 16))(a1, a2);
  if (result < 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = sub_1A8467EB0(v7, result);
  MEMORY[0x1AC56A990](v8);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A8532160);
  result = (*(a2 + 64))(a1, a2);
  if (result < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  result = (*(a2 + 24))(a1, a2);
  if (result < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = sub_1A8467EB0(v9, result);
  MEMORY[0x1AC56A990](v10);

  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A8532180);
  result = (*(a2 + 72))(a1, a2);
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = result;
  result = (*(a2 + 32))(a1, a2);
  if ((result & 0x8000000000000000) == 0)
  {
    v12 = sub_1A8467EB0(v11, result);
    MEMORY[0x1AC56A990](v12);

    MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A85321A0);
    v13 = (*(a2 + 80))(a1, a2);
    v14 = (*(a2 + 40))(a1, a2);
    v15 = sub_1A8467EB0(v13, v14);
    MEMORY[0x1AC56A990](v15);

    MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A85321C0);
    (*(a2 + 88))(a1, a2);
    v16 = ImportExport.Timer.elapsedTimeDescription.getter();
    v18 = v17;

    MEMORY[0x1AC56A990](v16, v18);

    return 0;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1A8467E10()
{
  sub_1A84E676C();
  sub_1A840D3B0();
  v0 = sub_1A84E639C();

  return v0;
}

uint64_t sub_1A8467EB0(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a2 <= 1.0)
  {
    v4 = 1.0;
  }

  v5 = a1 / v4 * 100.0;
  sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E63B0];
  *(v6 + 16) = xmmword_1A85013E0;
  v8 = MEMORY[0x1E69E6438];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  sub_1A84E5DDC();
  sub_1A840D3B0();
  v9 = sub_1A84E639C();
  v11 = v10;

  sub_1A84E646C();
  v12 = sub_1A8467E10();

  MEMORY[0x1AC56A990](543584032, 0xE400000000000000);
  v13 = sub_1A8467E10();
  MEMORY[0x1AC56A990](v13);

  MEMORY[0x1AC56A990](2128928, 0xE300000000000000);
  MEMORY[0x1AC56A990](v9, v11);

  result = MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A85321E0);
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else
  {
    v15 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v15);

    return v12;
  }

  return result;
}

uint64_t sub_1A84681BC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 2006)
  {
    if (result <= 3002)
    {
      if (result <= 3000)
      {
        if (result == 2007)
        {
          *a2 = 9;
          return result;
        }

        if (result == 3000)
        {
          *a2 = 10;
          return result;
        }

        goto LABEL_39;
      }

      if (result == 3001)
      {
        *a2 = 11;
      }

      else
      {
        *a2 = 12;
      }
    }

    else
    {
      if (result > 3004)
      {
        switch(result)
        {
          case 3005:
            *a2 = 15;
            return result;
          case 3006:
            *a2 = 16;
            return result;
          case 3007:
            *a2 = 17;
            return result;
        }

        goto LABEL_39;
      }

      if (result == 3003)
      {
        *a2 = 13;
      }

      else
      {
        *a2 = 14;
      }
    }
  }

  else
  {
    if (result > 2001)
    {
      if (result <= 2003)
      {
        if (result == 2002)
        {
          *a2 = 4;
        }

        else
        {
          *a2 = 5;
        }
      }

      else if (result == 2004)
      {
        *a2 = 6;
      }

      else if (result == 2005)
      {
        *a2 = 7;
      }

      else
      {
        *a2 = 8;
      }

      return result;
    }

    if (result <= 1999)
    {
      if (result == 1000)
      {
        *a2 = 0;
        return result;
      }

      if (result == 1001)
      {
        *a2 = 1;
        return result;
      }

LABEL_39:
      *a2 = 18;
      return result;
    }

    if (result == 2000)
    {
      *a2 = 2;
    }

    else
    {
      *a2 = 3;
    }
  }

  return result;
}

uint64_t sub_1A846837C@<X0>(uint64_t a1@<X8>)
{
  v287 = a1;
  v296 = *MEMORY[0x1E69E9840];
  v1 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v266 = &v233 - v3;
  v257 = sub_1A84E5C5C();
  v256 = *(v257 - 8);
  v4 = *(v256 + 64);
  v5 = MEMORY[0x1EEE9AC00](v257);
  v251 = &v233 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v255 = &v233 - v7;
  v254 = sub_1A84E577C();
  v253 = *(v254 - 8);
  v8 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v254);
  v252 = &v233 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A83EA2FC(&qword_1EB2E7FB0, &qword_1A8506D20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v280 = (&v233 - v12);
  v272 = sub_1A83EA2FC(&qword_1EB2E7FB8, &qword_1A8506D28);
  v271 = *(v272 - 8);
  v13 = *(v271 + 64);
  MEMORY[0x1EEE9AC00](v272);
  v263 = &v233 - v14;
  v15 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v267 = &v233 - v17;
  v270 = sub_1A84E56DC();
  v269 = *(v270 - 8);
  v18 = *(v269 + 64);
  MEMORY[0x1EEE9AC00](v270);
  v259 = &v233 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_1A84E5C9C();
  v277 = *(v278 - 8);
  v20 = *(v277 + 64);
  v21 = MEMORY[0x1EEE9AC00](v278);
  v265 = &v233 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v250 = &v233 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v268 = &v233 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v264 = &v233 - v27;
  v288 = sub_1A84E558C();
  v285 = *(v288 - 8);
  v28 = v285[8];
  v29 = MEMORY[0x1EEE9AC00](v288);
  v261 = &v233 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v274 = &v233 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v275 = &v233 - v33;
  v34 = sub_1A84E531C();
  v283 = *(v34 - 1);
  v284 = v34;
  v35 = *(v283 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v282 = &v233 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1A84E5B9C();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = &v233 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v233 - v43;
  v45 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45 - 8);
  v279 = &v233 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v291 = (&v233 - v50);
  MEMORY[0x1EEE9AC00](v49);
  v289 = &v233 - v51;
  v52 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8);
  v248 = &v233 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v233 - v56;
  v58 = type metadata accessor for ImportExport.Attachment();
  v59 = *(v58 - 1);
  v60 = *(v59 + 64);
  v61 = MEMORY[0x1EEE9AC00](v58);
  v262 = &v233 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v249 = &v233 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v67 = &v233 - v66;
  v68 = MEMORY[0x1EEE9AC00](v65);
  v281 = &v233 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v71 = (&v233 - v70);
  v286 = type metadata accessor for ImportExport.Conversation();
  sub_1A8243D74(&v292[*(v286 + 80)], v57, &qword_1EB2E6F50, &unk_1A8502920);
  v247 = v59;
  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
    sub_1A824B2D4(v57, &qword_1EB2E6F50, &unk_1A8502920);
    v72 = 1;
LABEL_3:
    v73 = v287;
LABEL_4:
    result = (*(*(v286 - 8) + 56))(v73, v72, 1);
    goto LABEL_43;
  }

  sub_1A846731C(v57, v71);
  v75 = v71[1];
  v234 = *v71;
  v76 = v289;
  sub_1A8243D74(v71 + v58[10], v289, &qword_1EB2E7068, &unk_1A8501EB0);
  v77 = v71[8];
  v238 = v71[7];
  v78 = v71[10];
  v237 = v71[9];
  v239 = *(v71 + v58[15]);
  v79 = type metadata accessor for ImportExport.AttachmentDownloadError();
  v80 = *(*(v79 - 8) + 56);
  v245 = v44;
  v80(v44, 1, 1, v79);
  v233 = v71[2];
  v81 = v58[24];
  v294 = 0;
  v240 = v75;

  sub_1A84E5B8C();
  v82 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v243 = v81;
  sub_1A84E594C();
  v83 = v58[25];
  v294 = 0;
  sub_1A84E5B8C();
  v242 = v83;
  sub_1A84E594C();
  v276 = v58;
  v84 = v58[26];
  v294 = 0;
  sub_1A84E5B8C();
  v244 = v84;
  v235 = v82;
  sub_1A84E594C();
  v294 = 0x6F685070756F7247;
  v295 = 0xEF6567616D496F74;
  v246 = v78;

  v241 = v77;

  v85 = v282;
  sub_1A84E530C();
  sub_1A840D3B0();
  v258 = sub_1A84E636C();
  v273 = v86;
  (*(v283 + 8))(v85, v284);
  v87 = v291;
  sub_1A8243D74(v76, v291, &qword_1EB2E7068, &unk_1A8501EB0);
  v88 = v285;
  v89 = v288;
  v284 = v285[6];
  v90 = (v284)(v87, 1, v288);
  v91 = v71;
  v92 = v76;
  v93 = v67;
  v94 = v88;
  v260 = v91;
  v236 = v40;
  if (v90 == 1)
  {
    sub_1A824B2D4(v291, &qword_1EB2E7068, &unk_1A8501EB0);
    goto LABEL_9;
  }

  v95 = v275;
  (v88[4])(v275, v291, v89);
  v96 = [objc_opt_self() defaultManager];
  sub_1A84E555C();
  v97 = v89;
  v98 = sub_1A84E5D8C();

  v99 = [v96 fileExistsAtPath_];

  if (v99)
  {
    (v94[1])(v95, v97);
    v89 = v97;
LABEL_9:
    v291 = v93;
    v100 = v92;
    v101 = v279;
    sub_1A8243D74(v100, v279, &qword_1EB2E7068, &unk_1A8501EB0);
    if ((v284)(v101, 1, v89) == 1)
    {
      sub_1A824B2D4(v101, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_11:
      v102 = 0;
      v103 = 0xE000000000000000;
      v104 = v276;
      v105 = v241;
LABEL_12:
      v106 = v239;
      goto LABEL_41;
    }

    v107 = v274;
    (v94[4])(v274, v101, v89);
    v108 = [objc_opt_self() defaultManager];
    sub_1A84E555C();
    v109 = sub_1A84E5D8C();

    v294 = 0;
    v110 = [v108 attributesOfItemAtPath:v109 error:&v294];

    v111 = v294;
    if (!v110)
    {
      v145 = v294;
      v146 = sub_1A84E548C();

      swift_willThrow();
      v290 = 0;
      v147 = v264;
      sub_1A84E5C8C();
      v148 = v261;
      (v94[2])(v261, v107, v89);
      v149 = sub_1A84E5C7C();
      v150 = sub_1A84E619C();
      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        v285 = v146;
        v152 = v151;
        v153 = v148;
        v284 = swift_slowAlloc();
        v294 = v284;
        *v152 = 136315138;
        v154 = sub_1A84E555C();
        v156 = v155;
        v157 = v94[1];
        v157(v153, v89);
        v158 = sub_1A82446BC(v154, v156, &v294);

        *(v152 + 4) = v158;
        _os_log_impl(&dword_1A823F000, v149, v150, "Failed to get file attributes for file ath path: %s", v152, 0xCu);
        v159 = v284;
        sub_1A8244788(v284);
        MEMORY[0x1AC56D3F0](v159, -1, -1);
        MEMORY[0x1AC56D3F0](v152, -1, -1);

        (*(v277 + 8))(v264, v278);
        v157(v274, v89);
      }

      else
      {

        v206 = v94[1];
        v206(v148, v89);
        (*(v277 + 8))(v147, v278);
        v206(v107, v89);
      }

      goto LABEL_11;
    }

    type metadata accessor for FileAttributeKey(0);
    sub_1A844F1D0();
    v112 = sub_1A84E5D3C();
    v113 = v111;

    v114 = HIBYTE(v273) & 0xF;
    if ((v273 & 0x2000000000000000) == 0)
    {
      v114 = v258 & 0xFFFFFFFFFFFFLL;
    }

    if (!v114)
    {

      v258 = sub_1A84E550C();
      v273 = v115;
    }

    v104 = v276;
    v105 = v241;
    v106 = v239;
    v116 = v266;
    if (*(v112 + 16) && (v117 = sub_1A8490560(*MEMORY[0x1E696A3D8]), (v118 & 1) != 0) && (sub_1A8244F40(*(v112 + 56) + 32 * v117, &v294), swift_dynamicCast()))
    {
      sub_1A84E5C4C();
      sub_1A84E5C2C();
      v119 = v256;
      v120 = v257;
      if ((*(v256 + 48))(v116, 1, v257) == 1)
      {
        sub_1A824B2D4(v116, &qword_1EB2E7340, &qword_1A8501EF8);
        v121 = v94;
        v106 = v239;
        if (v239)
        {
          goto LABEL_35;
        }
      }

      else
      {
        (*(v119 + 32))(v255, v116, v120);
        v229 = HIBYTE(v105) & 0xF;
        if ((v105 & 0x2000000000000000) == 0)
        {
          v229 = v238 & 0xFFFFFFFFFFFFLL;
        }

        v106 = v239;
        if (!v229)
        {
          v238 = sub_1A84E5C1C();
          v231 = v230;

          v105 = v231;
        }

        v121 = v94;
        if (!v246)
        {
          v121 = v94;
          v237 = sub_1A84E5C3C();
          v246 = v232;
        }

        (*(v256 + 8))(v255, v257);
        if (v106)
        {
LABEL_35:
          if (*(v112 + 16) && (v160 = sub_1A8490560(*MEMORY[0x1E696A308]), v121 = v94, (v161 & 1) != 0))
          {
            v239 = v106;
            sub_1A8244F40(*(v112 + 56) + 32 * v160, &v294);

            v162 = v267;
            v163 = v270;
            v164 = swift_dynamicCast();
            v165 = v269;
            (*(v269 + 56))(v162, v164 ^ 1u, 1, v163);
            if ((*(v165 + 48))(v162, 1, v163) != 1)
            {
              (*(v165 + 32))(v259, v162, v163);
              v284 = objc_opt_self();
              v285 = sub_1A84E565C();
              if (qword_1EB2E5990 != -1)
              {
                swift_once();
              }

              v210 = v254;
              v211 = sub_1A824431C(v254, qword_1EB2E7FC8);
              swift_beginAccess();
              v212 = v253;
              v213 = v252;
              (*(v253 + 16))(v252, v211, v210);
              v214 = sub_1A84E576C();
              (*(v212 + 8))(v213, v210);
              v215 = v285;
              v216 = [v284 stringFromDate:v285 timeZone:v214 formatOptions:1907];

              v102 = sub_1A84E5DBC();
              v103 = v217;

              (*(v269 + 8))(v259, v270);
              (v94[1])(v107, v288);
              goto LABEL_12;
            }

            (v94[1])(v107, v288);
            v106 = v239;
          }

          else
          {

            (v121[1])(v107, v288);
            v162 = v267;
            (*(v269 + 56))(v267, 1, 1, v270);
          }

          sub_1A824B2D4(v162, &qword_1EB2E6F48, &unk_1A8501F00);
          v102 = 0;
          v103 = 0xE000000000000000;
LABEL_41:
          v166 = v291;
          v167 = v240;
          *v291 = v234;
          v166[1] = v167;
          v166[2] = v233;
          v166[3] = 0;
          v168 = v258;
          v166[4] = 0xE000000000000000;
          v166[5] = v168;
          v166[6] = v273;
          v169 = (v166 + v104[14]);
          *v169 = v102;
          v169[1] = v103;
          *(v166 + v104[15]) = v106;
          v166[7] = v238;
          v166[8] = v105;
          v170 = v246;
          v166[9] = v237;
          v166[10] = v170;
          v171 = v289;
          sub_1A8243D74(v289, v166 + v104[10], &qword_1EB2E7068, &unk_1A8501EB0);
          *(v166 + v104[11]) = 1;
          *(v166 + v104[12]) = 0;
          *(v166 + v104[13]) = 0;
          *(v166 + v104[18]) = 1;
          *(v166 + v104[16]) = 0;
          *(v166 + v104[17]) = 0;
          v172 = (v166 + v104[19]);
          *v172 = 0;
          v172[1] = 0;
          v173 = (v166 + v104[20]);
          *v173 = 0;
          v173[1] = 0;
          v174 = v245;
          sub_1A8243D74(v245, v166 + v104[21], &qword_1EB2E7348, &qword_1A8504400);
          *(v166 + v104[22]) = 0;
          v175 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
          v176 = *(*(v175 - 8) + 8);
          v176(v166 + v243, v175);
          v293 = 0;
          sub_1A84E5B8C();
          sub_1A84E594C();
          v176(v166 + v242, v175);
          v293 = 0;
          sub_1A84E5B8C();
          sub_1A84E594C();
          v177 = v175;
          v178 = v276;
          v176(v166 + v244, v177);
          v293 = 0;
          sub_1A84E5B8C();
          sub_1A84E594C();
          sub_1A824B2D4(v174, &qword_1EB2E7348, &qword_1A8504400);
          sub_1A824B2D4(v171, &qword_1EB2E7068, &unk_1A8501EB0);
          *(v166 + v178[23]) = 0;
          v179 = v166;
          v180 = v281;
          sub_1A846731C(v179, v281);
          v181 = v280;
          v182 = v290;
          sub_1A846403C(v292, v280);
          if (v182)
          {
            sub_1A846C790(v180, type metadata accessor for ImportExport.Attachment);
            result = sub_1A846C790(v260, type metadata accessor for ImportExport.Attachment);
            goto LABEL_43;
          }

          v184 = v272;
          v185 = (*(v271 + 48))(v181, 1, v272);
          v186 = v260;
          if (v185 == 1)
          {
            sub_1A824B2D4(v181, &qword_1EB2E7FB0, &qword_1A8506D20);
            v187 = v265;
            sub_1A84E5C8C();
            v188 = v262;
            sub_1A846C7F0(v186, v262, type metadata accessor for ImportExport.Attachment);
            v189 = sub_1A84E5C7C();
            v190 = sub_1A84E619C();
            if (!os_log_type_enabled(v189, v190))
            {

              sub_1A846C790(v188, type metadata accessor for ImportExport.Attachment);
              (*(v277 + 8))(v187, v278);
              sub_1A846C790(v180, type metadata accessor for ImportExport.Attachment);
              v200 = v186;
              goto LABEL_51;
            }

            v191 = swift_slowAlloc();
            v192 = swift_slowAlloc();
            v293 = v192;
            *v191 = 136315138;
            v193 = v180;
            v194 = ImportExport.Attachment.description.getter();
            v195 = v188;
            v197 = v196;
            sub_1A846C790(v195, type metadata accessor for ImportExport.Attachment);
            v198 = sub_1A82446BC(v194, v197, &v293);

            *(v191 + 4) = v198;
            _os_log_impl(&dword_1A823F000, v189, v190, "Failed to copy group photo attachment file for groupPhoto: %s", v191, 0xCu);
            sub_1A8244788(v192);
            MEMORY[0x1AC56D3F0](v192, -1, -1);
            MEMORY[0x1AC56D3F0](v191, -1, -1);

            (*(v277 + 8))(v265, v278);
            v199 = v193;
          }

          else
          {
            v201 = v263;
            sub_1A84673E0(v181, v263);
            v202 = v201 + *(v184 + 48);
            v203 = sub_1A84E555C();
            v205 = sub_1A8463774(v203, v204);
            v207 = v205;

            if (v207)
            {
              v208 = v248;
              sub_1A846C7F0(v180, v248, type metadata accessor for ImportExport.Attachment);
              (*(v247 + 56))(v208, 0, 1, v178);
              v209 = v287;
              ImportExport.Conversation.update(groupPhoto:)(v208, v287);
              sub_1A824B2D4(v208, &qword_1EB2E6F50, &unk_1A8502920);
              sub_1A824B2D4(v201, &qword_1EB2E7FB8, &qword_1A8506D28);
              sub_1A846C790(v180, type metadata accessor for ImportExport.Attachment);
              sub_1A846C790(v186, type metadata accessor for ImportExport.Attachment);
              v72 = 0;
              v73 = v209;
              goto LABEL_4;
            }

            v218 = v250;
            sub_1A84E5C8C();
            v219 = v249;
            sub_1A846C7F0(v180, v249, type metadata accessor for ImportExport.Attachment);
            v220 = sub_1A84E5C7C();
            v221 = sub_1A84E619C();
            if (!os_log_type_enabled(v220, v221))
            {

              sub_1A846C790(v219, type metadata accessor for ImportExport.Attachment);
              (*(v277 + 8))(v218, v278);
              sub_1A824B2D4(v201, &qword_1EB2E7FB8, &qword_1A8506D28);
              sub_1A846C790(v180, type metadata accessor for ImportExport.Attachment);
              v200 = v260;
              goto LABEL_51;
            }

            v222 = swift_slowAlloc();
            v223 = swift_slowAlloc();
            v293 = v223;
            *v222 = 136315138;
            v224 = ImportExport.Attachment.description.getter();
            v225 = v219;
            v227 = v226;
            sub_1A846C790(v225, type metadata accessor for ImportExport.Attachment);
            v228 = sub_1A82446BC(v224, v227, &v293);

            *(v222 + 4) = v228;
            _os_log_impl(&dword_1A823F000, v220, v221, "Failed to import attachment for groupPhoto: %s", v222, 0xCu);
            sub_1A8244788(v223);
            MEMORY[0x1AC56D3F0](v223, -1, -1);
            MEMORY[0x1AC56D3F0](v222, -1, -1);

            (*(v277 + 8))(v218, v278);
            sub_1A824B2D4(v263, &qword_1EB2E7FB8, &qword_1A8506D28);
            v199 = v281;
          }

          sub_1A846C790(v199, type metadata accessor for ImportExport.Attachment);
          v200 = v260;
LABEL_51:
          sub_1A846C790(v200, type metadata accessor for ImportExport.Attachment);
          v72 = 1;
          goto LABEL_3;
        }
      }
    }

    else
    {
      v121 = v94;
      if (v106)
      {
        goto LABEL_35;
      }
    }

    if (*(v112 + 16) && (v143 = sub_1A8490560(*MEMORY[0x1E696A3B8]), v121 = v94, (v144 & 1) != 0) && (sub_1A8244F40(*(v112 + 56) + 32 * v143, &v294), swift_dynamicCast()))
    {
      v106 = v293;
    }

    else
    {
      v106 = 0;
    }

    goto LABEL_35;
  }

  v122 = v93;
  v123 = v97;
  v124 = v92;

  v294 = 0;
  v295 = 0xE000000000000000;
  sub_1A84E646C();

  v294 = 0xD00000000000002ELL;
  v295 = 0x80000001A8530150;
  v125 = sub_1A84E555C();
  MEMORY[0x1AC56A990](v125);

  v126 = v294;
  v127 = v295;
  sub_1A8412484();
  v128 = swift_allocError();
  *v129 = v126;
  *(v129 + 8) = v127;
  *(v129 + 16) = 1;
  swift_willThrow();

  (v94[1])(v95, v123);
  v130 = v128;
  v131 = v268;
  sub_1A84E5C8C();
  v132 = v128;
  v133 = sub_1A84E5C7C();
  v134 = sub_1A84E619C();

  v135 = os_log_type_enabled(v133, v134);
  v136 = v245;
  if (v135)
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *v137 = 138412290;
    v139 = v128;
    v140 = _swift_stdlib_bridgeErrorToNSError();
    *(v137 + 4) = v140;
    *v138 = v140;
    _os_log_impl(&dword_1A823F000, v133, v134, "Failed to create an attachment with error: %@", v137, 0xCu);
    sub_1A824B2D4(v138, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v138, -1, -1);
    MEMORY[0x1AC56D3F0](v137, -1, -1);
  }

  (*(v277 + 8))(v131, v278);
  swift_willThrow();
  sub_1A824B2D4(v136, &qword_1EB2E7348, &qword_1A8504400);
  sub_1A824B2D4(v124, &qword_1EB2E7068, &unk_1A8501EB0);
  sub_1A846C790(v260, type metadata accessor for ImportExport.Attachment);

  v141 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v142 = *(*(v141 - 8) + 8);
  v142(&v122[v243], v141);
  v142(&v122[v242], v141);
  result = (v142)(&v122[v244], v141);
LABEL_43:
  v183 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A846A4E0(uint64_t a1)
{
  v40 = a1;
  v2 = *(v1 + 240);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 56);
    v30 = v3 - 1;
    while (1)
    {
      v6 = *v5;
      if ((*v5 & 0x8000000000000000) != 0)
      {
        break;
      }

      v7 = *(v5 - 1);
      if (v6 >= *(v7 + 16))
      {
        goto LABEL_19;
      }

      v8 = v4 + 1;
      v5 += 18;
      v9 = (v7 + (v6 << 7));
      v10 = v9[3];
      v12 = v9[4];
      v11 = v9[5];
      v32 = v9[2];
      v33 = v10;
      v34 = v12;
      v35 = v11;
      v13 = v9[6];
      v14 = v9[7];
      v15 = v9[9];
      v38 = v9[8];
      v39 = v15;
      v36 = v13;
      v37 = v14;
      sub_1A840243C(&v32, v31);
      v16 = sub_1A84E5D8C();
      v17 = sub_1A84E5D8C();

      v18 = IMDHandleRecordCopyHandleForIDOnService();

      if (v18)
      {
        sub_1A841E128(&v32);
      }

      else
      {
        v31[4] = v36;
        v31[5] = v37;
        v31[6] = v38;
        v31[7] = v39;
        v31[0] = v32;
        v31[1] = v33;
        v31[2] = v34;
        v31[3] = v35;
        v19 = sub_1A847551C();
        if (v28)
        {
          sub_1A841E128(&v32);
          return;
        }

        v18 = v19;
        v20 = sub_1A84E5D8C();
        v21 = sub_1A84E5D8C();

        v22 = IMDHandleRecordCopyHandleForIDOnService();

        sub_1A841E128(&v32);
        if (!v22)
        {
          *&v31[0] = 0;
          *(&v31[0] + 1) = 0xE000000000000000;
          sub_1A84E646C();

          *&v31[0] = 0xD000000000000019;
          *(&v31[0] + 1) = 0x80000001A8532220;
          v24 = ImportExport.Conversation.description.getter();
          MEMORY[0x1AC56A990](v24);

          MEMORY[0x1AC56A990](0xD000000000000012, 0x80000001A8532240);
          v25 = v31[0];
          sub_1A84023CC();
          swift_allocError();
          *v26 = v25;
          *(v26 + 16) = 1;
          swift_willThrow();

          return;
        }

        if (__OFADD__(v27, 1))
        {
          goto LABEL_20;
        }

        ++v27;
      }

      v23 = IMDChatRecordRefFromIMDChatRecord();
      IMDChatRecordAddHandle();

      if (v30 == v4)
      {
        return;
      }

      ++v4;
      if (v8 >= *(v29 + 16))
      {
        __break(1u);
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_1A846A940()
{
  v2 = v0;
  v3 = sub_1A846B93C(v0[1], v0[2]);
  if (v1 || v3)
  {
    return;
  }

  v4 = v0[30];
  v5 = *(v4 + 16);
  if (v5)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v5, 0);
    v6 = (v4 + 80);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v10 = *(v30 + 16);
      v9 = *(v30 + 24);

      if (v10 >= v9 >> 1)
      {
        sub_1A83EF534((v9 > 1), v10 + 1, 1);
      }

      *(v30 + 16) = v10 + 1;
      v11 = v30 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v6 += 18;
      --v5;
    }

    while (v5);
  }

  v12 = [objc_opt_self() synchronousDatabase];
  v13 = sub_1A84E5FEC();

  *(v2 + 272);
  *(v2 + 272);
  *(v2 + 272);
  v14 = sub_1A84E5D8C();

  if (*(v2 + 40))
  {
    v15 = 45;
  }

  else
  {
    v15 = 43;
  }

  v16 = [v12 chatRecordsWithHandles:v13 serviceName:v14 displayName:0 groupID:0 style:v15];
  swift_unknownObjectRelease();

  sub_1A8244B68(0, &qword_1EB2E7558, 0x1E69A5DA0);
  v17 = sub_1A84E5FFC();

  if (v17 >> 62)
  {
    v18 = sub_1A84E654C();
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_31:

    return;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_31;
  }

LABEL_13:
  v28 = v18 - 1;
  if (v18 < 1)
  {
    __break(1u);
  }

  else
  {
    v29 = 0;
    v19 = 0;
    v20 = 0;
    v21 = v17 & 0xC000000000000001;
    v27 = v17 + 32;
    do
    {
      if (v21)
      {
        v22 = MEMORY[0x1AC56AF80](v20, v17);
      }

      else
      {
        v22 = *(v17 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = [v22 lastMessageRecord];
      if (v24)
      {
        v25 = v24;
        if (v29 >= [v24 rawDate])
        {
        }

        else
        {
          v29 = [v25 &selRef_IMMMSEnabledForPhoneNumber_simID_ + 3];

          v19 = v23;
        }
      }

      else
      {
      }

      ++v20;
    }

    while (v18 != v20);
    if (v19)
    {
      goto LABEL_29;
    }

    if (v21)
    {
      MEMORY[0x1AC56AF80](v28, v17);
LABEL_29:

      return;
    }

    if (v18 <= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *(v27 + 8 * v28);
      goto LABEL_29;
    }
  }

  __break(1u);
}

void sub_1A846AD4C(void *a1)
{
  v3 = v1;
  v5 = sub_1A84E570C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A846C3F0();
  if (v2)
  {
    return;
  }

  v11 = v10;
  v113 = a1;
  v108 = 0;
  v12 = v1[3];
  v13 = v3[4];
  v14 = v3[3];
  v15 = sub_1A84E5D8C();
  if (!v3[7])
  {
    v114 = 0;
    if (!v3[40])
    {
      goto LABEL_8;
    }

LABEL_6:

    v17 = sub_1A83F9050(v12, v13);
    v19 = v18;
    v20 = sub_1A84E55EC();
    sub_1A83F5994(v17, v19);
    v21 = [v20 __imHexString];

    if (!v21)
    {
      goto LABEL_79;
    }

    sub_1A84E56FC();
    sub_1A84E56EC();
    (*(v6 + 8))(v9, v5);
    v22 = sub_1A84E5D8C();

    v15 = v22;
    v114 = v21;
    goto LABEL_8;
  }

  v16 = v3[6];
  v114 = sub_1A84E5D8C();
  if (v3[40])
  {
    goto LABEL_6;
  }

LABEL_8:
  v23 = sub_1A83EC354(MEMORY[0x1E69E7CC0]);
  v24 = [v113 properties];
  v111 = v3;
  v112 = v15;
  if (!v24)
  {
    goto LABEL_30;
  }

  v25 = v24;
  v26 = sub_1A84E5D3C();

  v27 = 1 << *(v26 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v26 + 64);
  v30 = (v27 + 63) >> 6;

  v31 = 0;
LABEL_14:
  if (v29)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v33 >= v30)
    {
      break;
    }

    v29 = *(v26 + 64 + 8 * v33);
    ++v31;
    if (v29)
    {
      v31 = v33;
LABEL_19:
      v34 = __clz(__rbit64(v29)) | (v31 << 6);
      sub_1A824B334(*(v26 + 48) + 40 * v34, v117);
      sub_1A8244F40(*(v26 + 56) + 32 * v34, v118);
      sub_1A824B334(v117, v116);
      sub_1A8244F40(v118, v115);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v23;
      v36 = sub_1A8250C0C(v116);
      v38 = v23[2];
      v39 = (v37 & 1) == 0;
      v40 = __OFADD__(v38, v39);
      v41 = v38 + v39;
      if (v40)
      {
        goto LABEL_76;
      }

      v42 = v37;
      if (v23[3] >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_24;
        }

        v47 = v36;
        sub_1A848F134();
        v36 = v47;
        v23 = v119;
        if (v42)
        {
          goto LABEL_12;
        }

LABEL_25:
        v23[(v36 >> 6) + 8] |= 1 << v36;
        v44 = v36;
        sub_1A824B334(v116, v23[6] + 40 * v36);
        sub_1A8243DDC(v115, (v23[7] + 32 * v44));
        v45 = v23[2];
        v40 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (!v40)
        {
          v23[2] = v46;
          goto LABEL_13;
        }

        goto LABEL_78;
      }

      sub_1A848BCC4(v41, isUniquelyReferenced_nonNull_native);
      v36 = sub_1A8250C0C(v116);
      if ((v42 & 1) != (v43 & 1))
      {
LABEL_81:
        sub_1A84E67EC();
        __break(1u);
        return;
      }

LABEL_24:
      v23 = v119;
      if ((v42 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_12:
      v32 = (v23[7] + 32 * v36);
      sub_1A8244788(v32);
      sub_1A8243DDC(v115, v32);
LABEL_13:
      v29 &= v29 - 1;
      sub_1A8250D18(v116);
      sub_1A824B2D4(v117, &unk_1EB2E8EA0, &unk_1A850B550);
      goto LABEL_14;
    }
  }

LABEL_30:
  v48 = 1 << *(v11 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v11 + 64);
  v51 = (v48 + 63) >> 6;

  v52 = 0;
  while (2)
  {
    if (v50)
    {
LABEL_40:
      v55 = __clz(__rbit64(v50)) | (v52 << 6);
      sub_1A824B334(*(v11 + 48) + 40 * v55, v117);
      sub_1A8244F40(*(v11 + 56) + 32 * v55, v118);
      sub_1A824B334(v117, v116);
      sub_1A8244F40(v118, v115);
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v119 = v23;
      v57 = sub_1A8250C0C(v116);
      v59 = v23[2];
      v60 = (v58 & 1) == 0;
      v40 = __OFADD__(v59, v60);
      v61 = v59 + v60;
      if (v40)
      {
        goto LABEL_75;
      }

      v62 = v58;
      if (v23[3] >= v61)
      {
        if ((v56 & 1) == 0)
        {
          v67 = v57;
          sub_1A848F134();
          v57 = v67;
          v23 = v119;
          if ((v62 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_33;
        }
      }

      else
      {
        sub_1A848BCC4(v61, v56);
        v57 = sub_1A8250C0C(v116);
        if ((v62 & 1) != (v63 & 1))
        {
          goto LABEL_81;
        }
      }

      v23 = v119;
      if ((v62 & 1) == 0)
      {
LABEL_46:
        v23[(v57 >> 6) + 8] |= 1 << v57;
        v64 = v57;
        sub_1A824B334(v116, v23[6] + 40 * v57);
        sub_1A8243DDC(v115, (v23[7] + 32 * v64));
        v65 = v23[2];
        v40 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v40)
        {
          goto LABEL_77;
        }

        v23[2] = v66;
        goto LABEL_34;
      }

LABEL_33:
      v53 = (v23[7] + 32 * v57);
      sub_1A8244788(v53);
      sub_1A8243DDC(v115, v53);
LABEL_34:
      v50 &= v50 - 1;
      sub_1A8250D18(v116);
      sub_1A824B2D4(v117, &unk_1EB2E8EA0, &unk_1A850B550);
      continue;
    }

    break;
  }

  while (1)
  {
    v54 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (v54 >= v51)
    {
      break;
    }

    v50 = *(v11 + 64 + 8 * v54);
    ++v52;
    if (v50)
    {
      v52 = v54;
      goto LABEL_40;
    }
  }

  v68 = v111;
  if (v111[40])
  {

    v69 = v113;
    goto LABEL_55;
  }

  v70 = sub_1A84E67AC();

  v69 = v113;
  if ((v70 & 1) != 0 || (v71 = *(v68 + 9)) == 0)
  {
LABEL_55:

    v73 = [v69 groupName];
    if (v73)
    {
      v74 = v73;
      sub_1A84E5DBC();
      v71 = v75;
    }

    else
    {
      v71 = 0;
    }
  }

  else
  {
    v72 = *(v68 + 8);
  }

  v76 = IMDChatRecordRefFromIMDChatRecord();
  if (v23[2])
  {
    sub_1A84A5630(v23);
    v77 = sub_1A84E5D2C();

    v78 = JWEncodeDictionary();

    if (!v78)
    {
      goto LABEL_80;
    }

    v79 = sub_1A84E55FC();
    v81 = v80;

    v107 = sub_1A84E55EC();
    sub_1A83F5994(v79, v81);
  }

  else
  {
    v107 = 0;
  }

  v82 = [v69 style];
  v106 = [v69 accountID];
  v83 = [v69 serviceName];
  if (!v83)
  {
    sub_1A84E5DBC();
    v83 = sub_1A84E5D8C();
  }

  v84 = [v69 guid];
  if (!v84)
  {
    sub_1A84E5DBC();
    v84 = sub_1A84E5D8C();
  }

  v102 = v82;
  if (v71)
  {

    v103 = sub_1A84E5D8C();

    v110 = sub_1A84E5D8C();
  }

  else
  {
    v110 = 0;
    v103 = 0;
  }

  v104 = v84;
  v105 = v83;
  v113 = v76;
  v101 = [v69 lastAddressedHandle];
  v100 = [v69 accountLogin];
  v111 = [v69 groupID];
  v99 = [v69 isFiltered];
  v98 = [v69 successfulQuery];
  v109 = [v69 cloudServerChangeToken];
  v97 = [v69 cloudSyncState];
  v85 = [v69 cloudRecordID];
  if (!v85)
  {
    sub_1A84E5DBC();
    v85 = sub_1A84E5D8C();
  }

  v96 = [v69 lastAddressedSIMID];
  v94 = [v69 isBlackholed];
  [v69 syndicationType];
  [v69 rawSyndicationDate];
  [v69 isRecovered];
  [v69 isDeletingIncomingMessages];
  v95 = v85;
  [v69 lastReadMessageTimestamp];
  [v69 state];
  v86 = v114;
  v87 = v100;
  v88 = v101;
  v89 = v103;
  v90 = v106;
  v91 = v107;
  v92 = v105;
  v93 = v104;
  IMDChatRecordBulkUpdate();
}

uint64_t sub_1A846B93C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() synchronousDatabase];
  sub_1A8244B68(0, &qword_1EB2E7548, 0x1E696AE18);
  sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8501390;
  v6 = *MEMORY[0x1E69A6B70];
  v7 = sub_1A84E5DBC();
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1A83F8174();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  *(v5 + 96) = v10;
  *(v5 + 104) = v11;
  *(v5 + 64) = v11;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;

  v12 = sub_1A84E614C();
  v13 = [v4 chatRecordsFilteredByPredicate_];

  swift_unknownObjectRelease();
  sub_1A8244B68(0, &qword_1EB2E7558, 0x1E69A5DA0);
  v14 = sub_1A84E5FFC();

  if (!(v14 >> 62))
  {
    result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = sub_1A84E654C();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1AC56AF80](0, v14);
    goto LABEL_6;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);
LABEL_6:
    v17 = v16;

    return v17;
  }

  __break(1u);
  return result;
}

void sub_1A846BB2C()
{
  v2 = type metadata accessor for ImportExport.Conversation();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A84E5C9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A84E570C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1A846C3F0();
  if (v1)
  {
    return;
  }

  v17 = v16;
  v77 = v5;
  v79 = v7;
  v80 = v6;
  v81 = 0;
  v19 = v0[3];
  v18 = v0[4];
  v20 = sub_1A84E5D8C();
  v21 = v0[6];
  v84 = v0[7];
  v85 = v21;
  v87 = v0;
  if (v84)
  {
    v22 = sub_1A84E5D8C();
  }

  else
  {
    v22 = 0;
  }

  v23 = v87[40];
  v78 = v10;
  if (v23)
  {
    v90 = v20;
    v24 = v22;

    v25 = sub_1A83F9050(v19, v18);
    v27 = v26;
    v28 = sub_1A84E55EC();
    sub_1A83F5994(v25, v27);
    v29 = [v28 __imHexString];

    if (!v29)
    {
      __break(1u);
      goto LABEL_38;
    }

    sub_1A84E56FC();
    sub_1A84E56EC();
    (*(v12 + 8))(v15, v11);
    v30 = sub_1A84E5D8C();

    v31 = v30;
    v22 = v29;
    v32 = v87;
  }

  else
  {
    v32 = v87;
    v31 = v20;
  }

  v86 = v22;
  v33 = *(v32 + 40);
  if (*(v17 + 16))
  {
    v34 = v32;
    sub_1A84A5630(v17);
    v35 = sub_1A84E5D2C();

    v36 = JWEncodeDictionary();

    if (v36)
    {

      v37 = sub_1A84E55FC();
      v39 = v38;

      v82 = sub_1A84E55EC();
      sub_1A83F5994(v37, v39);
      v32 = v34;
      goto LABEL_13;
    }

LABEL_38:
    __break(1u);
    return;
  }

  v82 = 0;
LABEL_13:
  *(v32 + 272);
  *(v32 + 272);
  *(v32 + 272);
  v40 = v84;
  v41 = sub_1A84E5D8C();

  v42 = *(v32 + 8);
  v43 = *(v32 + 16);
  v83 = sub_1A84E5D8C();
  if (*(v32 + 40) == 1)
  {

    v44 = 0;
  }

  else
  {
    v45 = sub_1A84E67AC();

    v44 = 0;
    if (v40 && (v45 & 1) == 0)
    {
      v44 = sub_1A84E5D8C();
    }
  }

  if (*(v32 + 40) == 1)
  {

LABEL_23:
    v48 = 0;
    goto LABEL_24;
  }

  v46 = sub_1A84E67AC();

  if ((v46 & 1) != 0 || !*(v32 + 72))
  {
    goto LABEL_23;
  }

  v47 = *(v32 + 64);
  v48 = sub_1A84E5D8C();
LABEL_24:
  v90 = v31;
  if (*(v32 + 288))
  {
    v49 = *(v32 + 280);
    v50 = sub_1A84E5D8C();
  }

  else
  {
    v50 = 0;
  }

  v51 = *(v32 + 136);
  v52 = *(v32 + 144);
  v53 = sub_1A84E5D8C();
  if (v40)
  {
    v54 = sub_1A84E5D8C();
  }

  else
  {
    v54 = 0;
  }

  v75 = *(v32 + 273);
  v55 = v50;
  v56 = v82;
  v57 = v44;
  v58 = v83;
  v59 = IMDChatRecordCreate();

  if (v59)
  {
    [objc_allocWithZone(MEMORY[0x1E69A5DA0]) initWithRecordRef_];
  }

  else
  {
    v60 = v78;
    sub_1A84E5C8C();
    v61 = v77;
    sub_1A846C7F0(v87, v77, type metadata accessor for ImportExport.Conversation);
    v62 = sub_1A84E5C7C();
    v63 = sub_1A84E619C();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v88 = v65;
      *v64 = 136315138;
      v66 = ImportExport.Conversation.description.getter();
      v67 = v61;
      v69 = v68;
      sub_1A846C790(v67, type metadata accessor for ImportExport.Conversation);
      v70 = sub_1A82446BC(v66, v69, &v88);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_1A823F000, v62, v63, "Failed to import new chat record for conversation: %s", v64, 0xCu);
      sub_1A8244788(v65);
      MEMORY[0x1AC56D3F0](v65, -1, -1);
      MEMORY[0x1AC56D3F0](v64, -1, -1);
    }

    else
    {

      sub_1A846C790(v61, type metadata accessor for ImportExport.Conversation);
    }

    (*(v79 + 8))(v60, v80);
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_1A84E646C();
    MEMORY[0x1AC56A990](0xD000000000000033, 0x80000001A8532260);
    v71 = ImportExport.Conversation.description.getter();
    MEMORY[0x1AC56A990](v71);

    v72 = v88;
    v73 = v89;
    sub_1A841D4A8();
    swift_allocError();
    *v74 = v72;
    *(v74 + 8) = v73;
    *(v74 + 16) = 4;
    swift_willThrow();
  }
}

unint64_t sub_1A846C3F0()
{
  v1 = v0;
  v2 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for ImportExport.Attachment();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ImportExport.Conversation();
  v12 = *(v11 + 84);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v13 = v33[0];
  if (!v33[0])
  {
    v13 = sub_1A83EC354(MEMORY[0x1E69E7CC0]);
  }

  v14 = *(v1 + 320);
  v15 = MEMORY[0x1E69E6158];
  if (v14)
  {
    v16 = *(v1 + 312);
    *&v31 = 0x70756F7247534352;
    *(&v31 + 1) = 0xEB00000000495255;

    v29 = v11;
    sub_1A84E641C();
    v32 = v15;
    *&v31 = v16;
    *(&v31 + 1) = v14;
    sub_1A8243DDC(&v31, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v13;
    sub_1A848DC24(v30, v33, isUniquelyReferenced_nonNull_native);
    sub_1A8250D18(v33);
    v18 = v34;
    *&v31 = 0xD000000000000017;
    *(&v31 + 1) = 0x80000001A8532200;
    v19 = v15;
    v11 = v29;
    sub_1A84E641C();
    v32 = MEMORY[0x1E69E6530];
    *&v31 = 1;
    sub_1A8243DDC(&v31, v30);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v34 = v18;
    sub_1A848DC24(v30, v33, v20);
    sub_1A8250D18(v33);
    v13 = v34;
  }

  else
  {
    v19 = MEMORY[0x1E69E6158];
  }

  sub_1A8243D74(v1 + *(v11 + 80), v5, &qword_1EB2E6F50, &unk_1A8502920);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1A824B2D4(v5, &qword_1EB2E6F50, &unk_1A8502920);
  }

  else
  {
    sub_1A846731C(v5, v10);
    v21 = *MEMORY[0x1E69A6B80];
    *&v31 = sub_1A84E5DBC();
    *(&v31 + 1) = v22;
    v23 = v19;
    sub_1A84E641C();
    v24 = *v10;
    v25 = v10[1];
    v32 = v23;
    *&v31 = v24;
    *(&v31 + 1) = v25;
    sub_1A8243DDC(&v31, v30);

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v34 = v13;
    sub_1A848DC24(v30, v33, v26);
    sub_1A8250D18(v33);
    sub_1A846C790(v10, type metadata accessor for ImportExport.Attachment);
    return v34;
  }

  return v13;
}

uint64_t sub_1A846C790(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A846C7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A846C858(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A84E5C9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = [a1 canonicalizedURIString];
    if (!v11)
    {
      sub_1A84E5DBC();
      v11 = sub_1A84E5D8C();
    }

    v12 = [a1 uncanonicalizedURIString];
    v13 = sub_1A84E5DBC();
    v15 = v14;

    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v17 = &selRef_uncanonicalizedURIString;
    }

    else
    {
      v17 = &selRef_canonicalizedURIString;
    }

    v18 = [a1 *v17];
    v94 = sub_1A84E5DBC();

    v19 = [a1 serviceName];
    sub_1A84E5DBC();
    v21 = v20;

    v100 = 0;
    ImportExport.ServiceType.init(for:default:)(v21, &v100, &v101);
    v22 = v101;
    v23 = [a1 countryCodeString];
    v24 = sub_1A84E5DBC();
    v97 = v25;
    v98 = v24;

    v26 = [a2 _unformattedPhoneNumber];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1A84E5DBC();
      v92 = v29;
      v93 = v28;
    }

    else
    {
      v92 = 0;
      v93 = 0;
    }

    v68 = [a2 email];
    if (v68)
    {
      v69 = v68;
      v70 = sub_1A84E5DBC();
      v90 = v71;
      v91 = v70;
    }

    else
    {
      v90 = 0;
      v91 = 0;
    }

    v72 = [a2 fullName];
    if (v72)
    {
      v73 = v72;
      v74 = sub_1A84E5DBC();
      v87 = v75;
      v88 = v74;
    }

    else
    {
      v87 = 0;
      v88 = 0;
    }

    v76 = [a2 _contactID];
    v99 = v22;
    if (v76)
    {
      v77 = v76;
      v86 = sub_1A84E5DBC();
      v67 = v78;
    }

    else
    {
      v86 = 0;
      v67 = 0;
    }

    v89 = [a1 rowID];
    v79 = [v11 _stripFZIDPrefix];

    if (v79)
    {
      v80 = sub_1A84E5DBC();
      v95 = v81;
      v96 = v80;

      v82 = sub_1A84E5D8C();
      v83 = [v82 _stripFZIDPrefix];

      if (v83)
      {

        v57 = sub_1A84E5DBC();
        v59 = v84;

        v61 = v92;
        v60 = v93;
        v63 = v90;
        v62 = v91;
        v64 = v88;
        v51 = v89;
        v66 = v86;
        v65 = v87;
        goto LABEL_36;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_39;
  }

  sub_1A84E5C8C();
  v30 = a1;
  v31 = sub_1A84E5C7C();
  v32 = sub_1A84E619C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v30;
    v35 = v30;
    _os_log_impl(&dword_1A823F000, v31, v32, "No handle passed in for handleRecord: %@", v33, 0xCu);
    sub_1A845CDA8(v34);
    MEMORY[0x1AC56D3F0](v34, -1, -1);
    MEMORY[0x1AC56D3F0](v33, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v36 = [v30 canonicalizedURIString];
  if (!v36)
  {
    sub_1A84E5DBC();
    v36 = sub_1A84E5D8C();
  }

  v37 = [v30 uncanonicalizedURIString];
  v38 = sub_1A84E5DBC();
  v40 = v39;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = &selRef_uncanonicalizedURIString;
  }

  else
  {
    v42 = &selRef_canonicalizedURIString;
  }

  v43 = [v30 *v42];
  sub_1A84E5DBC();

  v44 = [v30 serviceName];
  sub_1A84E5DBC();
  v46 = v45;

  v102 = 0;
  ImportExport.ServiceType.init(for:default:)(v46, &v102, &v103);
  v47 = v103;
  v48 = [v30 countryCodeString];
  v49 = sub_1A84E5DBC();
  v97 = v50;
  v98 = v49;

  v51 = [v30 rowID];
  v52 = [v36 _stripFZIDPrefix];

  if (!v52)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v99 = v47;
  v53 = sub_1A84E5DBC();
  v95 = v54;
  v96 = v53;

  v55 = sub_1A84E5D8C();
  v56 = [v55 _stripFZIDPrefix];

  if (v56)
  {

    v57 = sub_1A84E5DBC();
    v59 = v58;

    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v66 = 0;
    v67 = 0;
LABEL_36:
    v85 = v96;
    *a3 = v51;
    *(a3 + 8) = v85;
    *(a3 + 16) = v95;
    *(a3 + 24) = v57;
    *(a3 + 32) = v59;
    *(a3 + 40) = v99;
    *(a3 + 48) = v98;
    *(a3 + 56) = v97;
    *(a3 + 64) = v60;
    *(a3 + 72) = v61;
    *(a3 + 80) = v62;
    *(a3 + 88) = v63;
    *(a3 + 96) = v64;
    *(a3 + 104) = v65;
    *(a3 + 112) = v66;
    *(a3 + 120) = v67;
    return;
  }

LABEL_40:
  __break(1u);
}

uint64_t static NSISO8601DateFormatter.string(fromDate:)()
{
  v0 = sub_1A84E577C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A84E565C();
  if (qword_1EB2E5990 != -1)
  {
    swift_once();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_1A824431C(v0, qword_1EB2E7FC8);
  swift_beginAccess();
  (*(v1 + 16))(v4, v7, v0);
  v8 = sub_1A84E576C();
  (*(v1 + 8))(v4, v0);
  v9 = [ObjCClassFromMetadata stringFromDate:v5 timeZone:v8 formatOptions:1907];

  v10 = sub_1A84E5DBC();
  return v10;
}

id Date.nanosecondTimeInterval.getter()
{
  v0 = sub_1A84E565C();
  v1 = [v0 __im_nanosecondTimeInterval];

  return v1;
}

uint64_t sub_1A846D0FC()
{
  v0 = sub_1A83EA2FC(&qword_1EB2E7FE0, &qword_1A8506E00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1A84E577C();
  sub_1A82442B8(v4, qword_1EB2E7FC8);
  v5 = sub_1A824431C(v4, qword_1EB2E7FC8);
  sub_1A84E575C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t static TimeZone.utc.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5990 != -1)
  {
    swift_once();
  }

  v2 = sub_1A84E577C();
  v3 = sub_1A824431C(v2, qword_1EB2E7FC8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static TimeZone.utc.setter(uint64_t a1)
{
  if (qword_1EB2E5990 != -1)
  {
    swift_once();
  }

  v2 = sub_1A84E577C();
  v3 = sub_1A824431C(v2, qword_1EB2E7FC8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static TimeZone.utc.modify())()
{
  if (qword_1EB2E5990 != -1)
  {
    swift_once();
  }

  v0 = sub_1A84E577C();
  sub_1A824431C(v0, qword_1EB2E7FC8);
  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_1A846D468(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53[2] = a4;
  v54 = a5;
  v53[1] = a2;
  v10 = sub_1A84E56DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = v15;
  if (!a7)
  {
    v17 = [a1 path];
    sub_1A84E5DBC();
  }

  sub_1A84E5E2C();

  v18 = [a1 guid];
  if (!v18)
  {
    sub_1A84E5DBC();
    v18 = sub_1A84E5D8C();
  }

  [v15 setGuid_];

  v19 = sub_1A84E5D8C();

  [v15 _setLocalPath_];

  v20 = [a1 utiString];
  if (!v20)
  {
    sub_1A84E5DBC();
    v20 = sub_1A84E5D8C();
  }

  [v15 setType_];

  v21 = [a1 createdDate];
  sub_1A84E569C();

  v22 = sub_1A84E565C();
  v23 = *(v11 + 8);
  v23(v14, v10);
  [v15 setCreatedDate_];

  v24 = [a1 startDate];
  sub_1A84E569C();

  v25 = sub_1A84E565C();
  v23(v14, v10);
  [v15 _setStartDate_];

  [v15 _setTransferState_];
  [v15 setIsIncoming_];
  v26 = [a1 transferUserInfo];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1A84E5D3C();

    sub_1A84A5368(v28);

    v29 = sub_1A84E5D2C();
  }

  else
  {
    v29 = 0;
  }

  [v15 setUserInfo_];

  result = [a1 totalBytes];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    [v15 setTotalBytes_];
    v31 = [a1 transferName];
    if (!v31)
    {
      sub_1A84E5DBC();
      v31 = sub_1A84E5D8C();
    }

    [v15 setFilename_];

    v32 = [a1 attributionInfo];
    if (v32)
    {
      v33 = v32;
      v34 = sub_1A84E5D3C();

      sub_1A84A5368(v34);

      v35 = sub_1A84E5D2C();
    }

    else
    {
      v35 = 0;
    }

    [v15 setAttributionInfo_];

    [v15 setIsSticker_];
    v36 = [a1 stickerUserInfo];
    if (v36)
    {
      v37 = v36;
      v38 = sub_1A84E5D3C();

      sub_1A84A5368(v38);

      v39 = sub_1A84E5D2C();
    }

    else
    {
      v39 = 0;
    }

    v40 = v54;
    [v15 setStickerUserInfo_];

    [v15 setHideAttachment_];
    [v15 setCloudKitSyncState_];
    v41 = [a1 cloudServerChangeToken];
    if (v41)
    {
      v42 = v41;
      v43 = sub_1A84E55FC();
      v45 = v44;

      v46 = sub_1A84E55EC();
      sub_1A83F5994(v43, v45);
    }

    else
    {
      v46 = 0;
    }

    [v15 setCloudKitServerChangeTokenBlob_];

    v47 = [a1 cloudRecordID];
    [v15 setCloudKitRecordID_];

    v48 = [a1 originalGUID];
    if (!v48)
    {
      sub_1A84E5DBC();
      v48 = sub_1A84E5D8C();
    }

    [v15 setOriginalGUID_];

    [v15 setCommSafetySensitive_];
    v49 = [a1 emojiImageContentIdentifier];
    if (!v49)
    {
      sub_1A84E5DBC();
      v49 = sub_1A84E5D8C();
    }

    [v15 setAdaptiveImageGlyphContentIdentifier_];

    v50 = [a1 emojiImageShortDescription];
    if (!v50)
    {
      sub_1A84E5DBC();
      v50 = sub_1A84E5D8C();
    }

    [v15 setAdaptiveImageGlyphContentDescription_];

    if (a3)
    {
      v51 = sub_1A84E5D8C();
    }

    else
    {
      v51 = 0;
    }

    [v15 setAccountID_];

    if (v40)
    {
      v52 = sub_1A84E5D8C();
    }

    else
    {
      v52 = 0;
    }

    [v15 setMessageGUID_];

    return v15;
  }

  return result;
}

unint64_t IMFileTransferErrorReason.name.getter(uint64_t a1)
{
  v1 = a1 + 1;
  result = 0x6F7272456F6ELL;
  switch(v1)
  {
    case 0:
      return result;
    case 2:
      result = 0x654465746F6D6572;
      break;
    case 4:
      result = 0x646574737562;
      break;
    case 5:
      result = 0x74756F656D6974;
      break;
    case 9:
      result = 0x617461446F6ELL;
      break;
    case 10:
      result = 0x614365746F6D6572;
      break;
    case 11:
      result = 0x6E61436C61636F6CLL;
      break;
    case 12:
      result = 0x6E456E6F6D656164;
      break;
    case 13:
      result = 0x6365446C61636F6CLL;
      break;
    case 14:
      result = 0x7974697275636573;
      break;
    case 15:
      result = 0x7463657078656E75;
      break;
    case 16:
      result = 0x727245726568746FLL;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x7265676E6F4C6F6ELL;
      break;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
    case 21:
      result = 0x746F4E646C756F63;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    case 23:
      result = 0xD000000000000014;
      break;
    case 24:
      result = 0x4C6F6F54656C6966;
      break;
    case 25:
      result = 0x72456D6F74737563;
      break;
    case 26:
      result = 0x64657269707865;
      break;
    case 27:
      result = 0x726F7774654E6F6ELL;
      break;
    case 28:
      result = 0x6F685070756F7267;
      break;
    case 29:
      result = 0x64657463656A6572;
      break;
    case 30:
      result = 0xD000000000000014;
      break;
    case 31:
      result = 0xD00000000000001FLL;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t ImportExport.ArchiveExporter.exportStatistics.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter);
  swift_beginAccess();
  v2 = *(v1 + 24);
}

uint64_t ImportExport.ArchiveExporter.progress.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter);
  swift_beginAccess();
  v4 = *(v3 + 24);
  a1[3] = type metadata accessor for ImportExport.ExportStatistics();
  a1[4] = &protocol witness table for ImportExport.ExportStatistics;
  *a1 = v4;
}

uint64_t ImportExport.ArchiveExporter.archiveManifest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest;
  swift_beginAccess();
  return sub_1A846E154(v1 + v3, a1);
}

uint64_t sub_1A846E154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7FE8, &unk_1A850AA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ImportExport.ArchiveExporter.__allocating_init(withArchivingOptions:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ImportExport.ArchiveExporter.init(withArchivingOptions:)(a1);
  return v5;
}

uint64_t ImportExport.ArchiveExporter.init(withArchivingOptions:)(uint64_t a1)
{
  v3 = type metadata accessor for ImportExport.ExportOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest;
  v8 = type metadata accessor for ImportExport.ArchiveManifest(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  sub_1A846E3B0(a1, v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  sub_1A846E3B0(a1, v6, type metadata accessor for ImportExport.ExportOptions);
  v9 = type metadata accessor for ImportExport.Exporter();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  if (qword_1EB2E59D0 != -1)
  {
    swift_once();
  }

  v13 = qword_1EB2E8880;

  sub_1A846F310(a1);
  *(v12 + 24) = v13;
  sub_1A846F428(v6, v12 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  *(v12 + 16) = 0;
  *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter) = v12;
  return v1;
}

uint64_t sub_1A846E3B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ImportExport.ArchiveExporter.__allocating_init(withArchivingOptions:conversations:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ImportExport.ArchiveExporter.init(withArchivingOptions:conversations:)(a1, a2);
  return v7;
}

uint64_t ImportExport.ArchiveExporter.init(withArchivingOptions:conversations:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ImportExport.ExportOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest;
  v10 = type metadata accessor for ImportExport.ArchiveManifest(0);
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  sub_1A846E3B0(a1, v2 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
  sub_1A846E3B0(a1, v8, type metadata accessor for ImportExport.ExportOptions);
  v11 = type metadata accessor for ImportExport.Exporter();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  if (qword_1EB2E59D0 != -1)
  {
    swift_once();
  }

  v15 = qword_1EB2E8880;

  sub_1A846F310(a1);
  *(v14 + 24) = v15;
  sub_1A846F428(v8, v14 + OBJC_IVAR____TtCO6IMCore12ImportExport8Exporter_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  *(v14 + 16) = a2;
  *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter) = v14;
  return v2;
}

uint64_t ImportExport.ArchiveExporter.makeAsyncIterator()()
{
  v1 = type metadata accessor for ImportExport.ArchivingOptions();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A846E3B0(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archivingOptions, v4, type metadata accessor for ImportExport.ArchivingOptions);
  v5 = type metadata accessor for ImportExport.ArchiveWritingIterator();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator) = 0;
  v9 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories;
  v10 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  *(v8 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archiver) = v0;
  sub_1A846E3B0(v4, v8 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);

  sub_1A846F310(v4);
  *(v8 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations) = MEMORY[0x1E69E7CC0];
  return v8;
}

unint64_t sub_1A846E770()
{
  v1 = 0x726574726F707865;
  if (*v0 != 1)
  {
    v1 = 0x4D65766968637261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A846E7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A846F894(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A846E804(uint64_t a1)
{
  v2 = sub_1A846F3D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A846E840(uint64_t a1)
{
  v2 = sub_1A846F3D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchiveExporter.deinit()
{
  sub_1A846F310(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archivingOptions);
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter);

  sub_1A846F36C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest);
  return v0;
}

uint64_t ImportExport.ArchiveExporter.__deallocating_deinit()
{
  sub_1A846F310(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archivingOptions);
  v1 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter);

  sub_1A846F36C(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ImportExport.ArchiveExporter.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E7FE8, &unk_1A850AA80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_1A83EA2FC(&qword_1EB2E7FF0, &qword_1A8506E10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  v14 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A846F3D4();
  sub_1A84E68AC();
  LOBYTE(v18) = 0;
  type metadata accessor for ImportExport.ArchivingOptions();
  sub_1A846F548(&qword_1EB2E8000, type metadata accessor for ImportExport.ArchivingOptions);
  sub_1A84E672C();
  if (!v2)
  {
    v18 = *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter);
    v19 = 1;
    type metadata accessor for ImportExport.Exporter();
    sub_1A846F548(&qword_1EB2E7D30, type metadata accessor for ImportExport.Exporter);
    sub_1A84E672C();
    v15 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest;
    swift_beginAccess();
    sub_1A846E154(v3 + v15, v8);
    v19 = 2;
    type metadata accessor for ImportExport.ArchiveManifest(0);
    sub_1A846F548(&qword_1EB2E7DC0, type metadata accessor for ImportExport.ArchiveManifest);
    sub_1A84E66BC();
    sub_1A846F36C(v8);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t ImportExport.ArchiveExporter.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ImportExport.ArchiveExporter.init(from:)(a1);
  return v5;
}

uint64_t *ImportExport.ArchiveExporter.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v33 = *v3;
  v34 = v2;
  v5 = sub_1A83EA2FC(&qword_1EB2E7FE8, &unk_1A850AA80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v27 - v7;
  v30 = type metadata accessor for ImportExport.ArchivingOptions();
  v9 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A83EA2FC(&qword_1EB2E8008, &qword_1A8506E18);
  v29 = *(v32 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v27 - v12;
  v14 = OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest;
  v15 = type metadata accessor for ImportExport.ArchiveManifest(0);
  (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
  v17 = a1[3];
  v16 = a1[4];
  v35 = a1;
  sub_1A82471E0(a1, v17);
  sub_1A846F3D4();
  v18 = v34;
  sub_1A84E689C();
  if (v18)
  {
    sub_1A846F36C(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archiveManifest);
    v22 = *(*v3 + 48);
    v23 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v14;
    v19 = v29;
    v34 = v8;
    LOBYTE(v36) = 0;
    sub_1A846F548(&qword_1EB2E8010, type metadata accessor for ImportExport.ArchivingOptions);
    v20 = v31;
    v21 = v32;
    sub_1A84E666C();
    sub_1A846F428(v20, v3 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);
    type metadata accessor for ImportExport.Exporter();
    v37 = 1;
    sub_1A846F548(&qword_1EB2E7D58, type metadata accessor for ImportExport.Exporter);
    sub_1A84E666C();
    *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_exporter) = v36;
    LOBYTE(v36) = 2;
    sub_1A846F548(&qword_1EB2E7DC8, type metadata accessor for ImportExport.ArchiveManifest);
    v25 = v34;
    sub_1A84E65FC();
    (*(v19 + 8))(v13, v21);
    v26 = v28;
    swift_beginAccess();
    sub_1A846F490(v25, v3 + v26);
    swift_endAccess();
  }

  sub_1A8244788(v35);
  return v3;
}

uint64_t sub_1A846F12C@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ImportExport.ArchivingOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1A846E3B0(v7 + OBJC_IVAR____TtCO6IMCore12ImportExport15ArchiveExporter_archivingOptions, v6, type metadata accessor for ImportExport.ArchivingOptions);
  v8 = type metadata accessor for ImportExport.ArchiveWritingIterator();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_exportIterator) = 0;
  v12 = OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversationDirectories;
  v13 = type metadata accessor for ImportExport.ArchivedConversationDirectories();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *(v11 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archiver) = v7;
  sub_1A846E3B0(v6, v11 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_archivingOptions, type metadata accessor for ImportExport.ArchivingOptions);

  sub_1A846F310(v6);
  *(v11 + OBJC_IVAR____TtCO6IMCore12ImportExport22ArchiveWritingIterator_conversations) = MEMORY[0x1E69E7CC0];

  *a1 = v11;
  return result;
}

uint64_t *sub_1A846F294@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = ImportExport.ArchiveExporter.init(from:)(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1A846F310(uint64_t a1)
{
  v2 = type metadata accessor for ImportExport.ArchivingOptions();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A846F36C(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E7FE8, &unk_1A850AA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A846F3D4()
{
  result = qword_1EB2E7FF8;
  if (!qword_1EB2E7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7FF8);
  }

  return result;
}

uint64_t sub_1A846F428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A846F490(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7FE8, &unk_1A850AA80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A846F548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ImportExport.ArchiveExporter()
{
  result = qword_1EB2E8020;
  if (!qword_1EB2E8020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A846F5E4()
{
  v0 = type metadata accessor for ImportExport.ArchivingOptions();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1A846F724();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A846F724()
{
  if (!qword_1EB2E8030)
  {
    type metadata accessor for ImportExport.ArchiveManifest(255);
    v0 = sub_1A84E633C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E8030);
    }
  }
}

unint64_t sub_1A846F790()
{
  result = qword_1EB2E8038;
  if (!qword_1EB2E8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8038);
  }

  return result;
}

unint64_t sub_1A846F7E8()
{
  result = qword_1EB2E8040;
  if (!qword_1EB2E8040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8040);
  }

  return result;
}

unint64_t sub_1A846F840()
{
  result = qword_1EB2E8048;
  if (!qword_1EB2E8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E8048);
  }

  return result;
}

uint64_t sub_1A846F894(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A85323B0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726574726F707865 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D65766968637261 && a2 == 0xEF74736566696E61)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A84E67AC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A846FA88()
{
  if (!*&v0[OBJC_IVAR___IMCloudKitSyncProgress_descriptor + 8])
  {
    return 0;
  }

  v1 = *&v0[OBJC_IVAR___IMCloudKitSyncProgress_descriptor];
  v2 = qword_1EB2E46B8;
  v3 = *&v0[OBJC_IVAR___IMCloudKitSyncProgress_descriptor + 8];

  if (v2 != -1)
  {
    swift_once();
  }

  v4 = sub_1A84E5C9C();
  sub_1A824431C(v4, qword_1EB2FEFF8);
  v5 = v0;
  v6 = sub_1A84E5C7C();
  v7 = sub_1A84E619C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = [v5 type];

    _os_log_impl(&dword_1A823F000, v6, v7, "Progress label is null for %ld", v8, 0xCu);
    MEMORY[0x1AC56D3F0](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  return v1;
}

id sub_1A846FF48(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1A84E5D8C();

  return v5;
}

uint64_t IMCloudKitSyncProgress.description.getter()
{
  v1 = v0;
  v2 = [v0 percentCompleteString];
  if (v2)
  {
    v3 = v2;
    v52 = sub_1A84E5DBC();
    v53 = v4;
  }

  else
  {
    v52 = 7104878;
    v53 = 0xE300000000000000;
  }

  v5 = [v0 userMessageLabel];
  if (v5)
  {
    v6 = v5;
    v56 = sub_1A84E5DBC();
    v57 = v7;
  }

  else
  {
    v56 = 7104878;
    v57 = 0xE300000000000000;
  }

  v8 = [v0 actionLabel];
  if (v8)
  {
    v9 = v8;
    v54 = sub_1A84E5DBC();
    v55 = v10;
  }

  else
  {
    v54 = 7104878;
    v55 = 0xE300000000000000;
  }

  sub_1A8244B68(0, &qword_1EB2E8050, 0x1E696ADA0);
  v11 = sub_1A84E61EC();
  [v0 progressBarValue];
  v12 = sub_1A84E60DC();
  v13 = [v11 stringFromNumber_];

  if (v13)
  {
    v51 = sub_1A84E5DBC();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
    v51 = 7104878;
  }

  v16 = sub_1A84E61EC();
  [v0 progressBarMax];
  v17 = sub_1A84E60DC();
  v18 = [v16 stringFromNumber_];

  if (v18)
  {
    v19 = sub_1A84E5DBC();
    v21 = v20;
  }

  else
  {
    v21 = 0xE300000000000000;
    v19 = 7104878;
  }

  v22 = sub_1A84E61EC();
  [v0 remainingItems];
  v23 = sub_1A84E60DC();
  v24 = [v22 stringFromNumber_];

  if (v24)
  {
    v25 = sub_1A84E5DBC();
    v27 = v26;
  }

  else
  {
    v27 = 0xE300000000000000;
    v25 = 7104878;
  }

  v59 = 0;
  v60 = 0xE000000000000000;
  sub_1A84E646C();
  v58.receiver = v1;
  v58.super_class = IMCloudKitSyncProgress;
  v28 = objc_msgSendSuper2(&v58, sel_description);
  v29 = sub_1A84E5DBC();
  v31 = v30;

  MEMORY[0x1AC56A990](v29, v31);

  MEMORY[0x1AC56A990](0xD000000000000015, 0x80000001A85323D0);
  MEMORY[0x1AC56A990](v52, v53);

  MEMORY[0x1AC56A990](10272, 0xE200000000000000);
  MEMORY[0x1AC56A990](v51, v15);

  MEMORY[0x1AC56A990](543584032, 0xE400000000000000);
  MEMORY[0x1AC56A990](v19, v21);

  MEMORY[0x1AC56A990](8236, 0xE200000000000000);
  MEMORY[0x1AC56A990](v25, v27);

  MEMORY[0x1AC56A990](0xD00000000000001DLL, 0x80000001A85323F0);
  v32 = [v1 type];
  if (v32 > 2)
  {
    if (v32 <= 4)
    {
      if (v32 == 3)
      {
        v33 = 0x80000001A852FA00;
        v34 = 0xD000000000000012;
      }

      else
      {
        v33 = 0x80000001A852FBB0;
        v34 = 0xD000000000000015;
      }

      goto LABEL_36;
    }

    if (v32 == 5)
    {
      v35 = "deviceStorageIsFull";
      goto LABEL_34;
    }

    if (v32 == 6)
    {
      v35 = "keyRollPendingError";
LABEL_34:
      v33 = (v35 - 32) | 0x8000000000000000;
      v34 = 0xD000000000000013;
      goto LABEL_36;
    }

LABEL_31:
    v33 = 0xE700000000000000;
    v34 = 0x6E776F6E6B6E75;
    goto LABEL_36;
  }

  if (!v32)
  {
    v33 = 0xE900000000000067;
    v34 = 0x6E69636E79537369;
    goto LABEL_36;
  }

  if (v32 != 1)
  {
    if (v32 == 2)
    {
      v33 = 0xE600000000000000;
      v34 = 0x6E6564646968;
      goto LABEL_36;
    }

    goto LABEL_31;
  }

  v33 = 0xE600000000000000;
  v34 = 0x646573756170;
LABEL_36:
  MEMORY[0x1AC56A990](v34, v33);

  MEMORY[0x1AC56A990](0xD000000000000013, 0x80000001A8532410);
  v36 = [v1 progressLabel];
  v37 = sub_1A84E5DBC();
  v39 = v38;

  MEMORY[0x1AC56A990](v37, v39);

  MEMORY[0x1AC56A990](0x6D2072657375202CLL, 0xEF20656761737365);
  MEMORY[0x1AC56A990](v56, v57);

  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A8532430);
  MEMORY[0x1AC56A990](v54, v55);

  MEMORY[0x1AC56A990](0x6E6564646968202CLL, 0xE900000000000020);
  v40 = [v1 isHidden];
  v41 = v40 == 0;
  if (v40)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v43 = 0xE500000000000000;
  }

  else
  {
    v43 = 0xE400000000000000;
  }

  MEMORY[0x1AC56A990](v42, v43);

  MEMORY[0x1AC56A990](0x206574617473202CLL, 0xE800000000000000);
  v44 = [v1 syncState];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 description];

    v47 = sub_1A84E5DBC();
    v49 = v48;
  }

  else
  {
    v49 = 0xE300000000000000;
    v47 = 7104878;
  }

  MEMORY[0x1AC56A990](v47, v49);

  return v59;
}

void __swiftcall IMCloudKitSyncProgress.init()(IMCloudKitSyncProgress *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t IMCloudKitSyncProgressType.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6E69636E79537369;
      case 1:
        return 0x646573756170;
      case 2:
        return 0x6E6564646968;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0xD000000000000013;
    }

    if (a1 == 6)
    {
      return 0xD000000000000013;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 3)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000015;
  }
}

id sub_1A847094C(uint64_t a1, void *a2, void *a3)
{
  *&v3[OBJC_IVAR___IMCloudKitSyncProgress_type] = a1;
  *&v3[OBJC_IVAR___IMCloudKitSyncProgress_syncState] = a2;
  *&v3[OBJC_IVAR___IMCloudKitSyncProgress_syncStatistics] = a3;
  if (a3)
  {
    v7 = a2;
    v8 = a3;
    v9 = [v8 syncedRecordCount];
    *&v3[OBJC_IVAR___IMCloudKitSyncProgress_progressBarValue] = v9;
    v10 = [v8 totalRecordCount];
  }

  else
  {
    *&v3[OBJC_IVAR___IMCloudKitSyncProgress_progressBarValue] = 0;
    v11 = a2;
    v10 = 0.0;
  }

  *&v3[OBJC_IVAR___IMCloudKitSyncProgress_progressBarMax] = v10;
  sub_1A84C1728(a1, a2, v17);
  v12 = &v3[OBJC_IVAR___IMCloudKitSyncProgress_descriptor];
  v13 = v17[1];
  *v12 = v17[0];
  *(v12 + 1) = v13;
  v14 = v17[3];
  *(v12 + 2) = v17[2];
  *(v12 + 3) = v14;
  v16.receiver = v3;
  v16.super_class = IMCloudKitSyncProgress;
  return objc_msgSendSuper2(&v16, sel_init);
}

id sub_1A8470A54()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isMessagesIniCloudVersion2];

  if (v2)
  {
    if ([v0 syncStatus] == 1)
    {
      return [v0 hasNotSyncedInLastSevenDays];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = [v0 isSyncing];
    if (result)
    {
      result = [v0 hasNotSyncedInLastSevenDays];
      if (result)
      {
        return ([v0 syncingFailed] ^ 1);
      }
    }
  }

  return result;
}

id sub_1A8470B58()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isMessagesIniCloudVersion2];

  result = [v0 shouldSendSyncProgress];
  if (result)
  {
    v4 = &selRef_syncJobState;
    if (!v2)
    {
      v4 = &selRef_syncControllerSyncState;
    }

    return ([v0 *v4] == 4);
  }

  return result;
}

BOOL sub_1A8470C28()
{
  v1 = v0;
  v2 = sub_1A84E56DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v37 - v8;
  v9 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v37 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = [objc_opt_self() sharedFeatureFlags];
  v23 = [v22 isMessagesIniCloudVersion2];

  if (v23)
  {
    v24 = [v1 lastFullSyncDate];
    if (v24)
    {
      v25 = v24;
      sub_1A84E569C();

      (*(v3 + 56))(v19, 0, 1, v2);
    }

    else
    {
      (*(v3 + 56))(v19, 1, 1, v2);
    }
  }

  else
  {
    v26 = [v1 lastSyncDate];
    if (v26)
    {
      v27 = v26;
      sub_1A84E569C();

      (*(v3 + 56))(v16, 0, 1, v2);
    }

    else
    {
      (*(v3 + 56))(v16, 1, 1, v2);
    }

    v19 = v16;
  }

  sub_1A83F8010(v19, v21);
  sub_1A843ED60(v21, v13);
  if ((*(v3 + 48))(v13, 1, v2) == 1)
  {
    sub_1A8471100(v13);
    if (qword_1EB2E46B8 != -1)
    {
      swift_once();
    }

    v28 = sub_1A84E5C9C();
    sub_1A824431C(v28, qword_1EB2FEFF8);
    v29 = sub_1A84E5C7C();
    v30 = sub_1A84E61BC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1A823F000, v29, v30, "No last sync date so we obviously haven't synced in the last week.", v31, 2u);
      MEMORY[0x1AC56D3F0](v31, -1, -1);
    }

    sub_1A8471100(v21);
    return 1;
  }

  else
  {
    v33 = v38;
    (*(v3 + 32))(v38, v13, v2);
    sub_1A84E56CC();
    sub_1A84E564C();
    v35 = v34;
    v36 = *(v3 + 8);
    v36(v7, v2);
    v36(v33, v2);
    sub_1A8471100(v21);
    return v35 >= 604800.0;
  }
}

uint64_t sub_1A8471100(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ImportExport.ReportItem.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t ImportExport.Report.add(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(v1 + 16);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A83EEBEC(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_1A83EEBEC((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  v10 = (v6 + 32 * v9);
  v10[4] = v3;
  v10[5] = v2;
  v10[6] = v5;
  v10[7] = v4;
  *(v1 + 16) = v6;
  return result;
}

{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(v1 + 24);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A83EECF8(0, *(v7 + 16) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    result = sub_1A83EECF8((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + 40 * v10;
  *(v11 + 32) = v3;
  *(v11 + 40) = v2;
  *(v11 + 48) = v4;
  *(v11 + 56) = v5;
  *(v11 + 64) = v6;
  *(v1 + 24) = v7;
  return result;
}

Swift::Void __swiftcall ImportExport.Report.add(reportNamed:forList:)(Swift::String reportNamed, Swift::OpaquePointer forList)
{
  object = reportNamed._object;
  countAndFlagsBits = reportNamed._countAndFlagsBits;
  v5 = *(forList._rawValue + 2);
  if (v5)
  {
    v19 = reportNamed._countAndFlagsBits;

    v7 = (forList._rawValue + 40);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = *(v7 - 1);
      v9 = *v7;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1A83EEBEC(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = sub_1A83EEBEC((v11 > 1), v12 + 1, 1, v8);
      }

      *(v8 + 2) = v12 + 1;
      v13 = &v8[32 * v12];
      *(v13 + 4) = 0;
      *(v13 + 5) = 0xE000000000000000;
      *(v13 + 6) = v10;
      *(v13 + 7) = v9;
      v7 += 2;
      --v5;
    }

    while (v5);
    LOBYTE(v5) = 0;
    countAndFlagsBits = v19;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v2 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1A83EECF8(0, *(v14 + 2) + 1, 1, v14);
  }

  v15 = MEMORY[0x1E69E7CC0];
  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1A83EECF8((v16 > 1), v17 + 1, 1, v14);
  }

  *(v14 + 2) = v17 + 1;
  v18 = &v14[40 * v17];
  *(v18 + 4) = countAndFlagsBits;
  *(v18 + 5) = object;
  *(v18 + 6) = v8;
  *(v18 + 7) = v15;
  v18[64] = v5;
  *(v2 + 24) = v14;
}

uint64_t ImportExportReportable.formattedReport.getter(uint64_t a1, uint64_t a2)
{
  v7[0] = (*(a2 + 8))();
  v7[1] = v4;
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = MEMORY[0x1E69E7CC0];
  v8 = 0;
  (*(a2 + 16))(v7, a1, a2);
  sub_1A8471734(0);
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A8407D84();
  v5 = sub_1A84E5D6C();

  return v5;
}

uint64_t ImportExportReportable.reportLines.getter(uint64_t a1, uint64_t a2)
{
  v7[0] = (*(a2 + 8))();
  v7[1] = v4;
  v7[2] = MEMORY[0x1E69E7CC0];
  v7[3] = MEMORY[0x1E69E7CC0];
  v8 = 0;
  (*(a2 + 16))(v7, a1, a2);
  v5 = sub_1A8471734(0);

  return v5;
}

uint64_t ImportExport.Report.init(reportNamed:items:children:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  return result;
}

uint64_t ImportExport.ReportItem.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = result;
  a3[3] = a2;
  return result;
}

uint64_t ImportExportReportable.report.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = (*(a2 + 8))();
  *(a3 + 8) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(a3 + 16) = MEMORY[0x1E69E7CC0];
  *(a3 + 24) = v7;
  *(a3 + 32) = 0;
  v8 = *(a2 + 16);

  return v8(a3, a1, a2);
}

uint64_t sub_1A8471734(unint64_t a1)
{
  v4 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  v67 = *(v7 + 16);
  if (v67 || *(v6 + 16))
  {
    v78 = *v1;
    v79 = v5;
    v80 = v7;
    v81 = v6;
    v82 = v8;
    v9 = &v78;
    result = sub_1A847355C();
    v61 = a1;
    v62 = result;
    v64 = v6;
    v66 = v7;
    if (a1)
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (!v67)
      {
        goto LABEL_32;
      }

LABEL_17:
      v20 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_63;
      }

      v20 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_64;
      }

      if ((v61 - 0x1FFFFFFFFFFFFFFFLL) >> 62 != 3)
      {
        goto LABEL_65;
      }

      v5 = 0;
      v22 = (v7 + 56);
      while (1)
      {
        v20 = *(v7 + 16);
        if (v5 >= v20)
        {
          break;
        }

        v23 = *v22;
        v68 = *(v22 - 1);
        v24 = *(v22 - 3);
        v25 = *(v22 - 2);
        v78 = 0;
        v79 = 0xE000000000000000;
        sub_1A840D3B0();

        v26 = sub_1A84E639C();
        v27 = HIBYTE(v25) & 0xF;
        v78 = v26;
        v79 = v28;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v27 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v29 = 8250;
        }

        else
        {
          v29 = 8224;
        }

        v30 = sub_1A84E639C();
        MEMORY[0x1AC56A990](v30);

        MEMORY[0x1AC56A990](v29, 0xE200000000000000);

        MEMORY[0x1AC56A990](v68, v23);

        v2 = v78;
        v8 = v79;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1A824A1FC(0, *(v11 + 2) + 1, 1, v11);
        }

        v32 = *(v11 + 2);
        v31 = *(v11 + 3);
        v9 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v11 = sub_1A824A1FC((v31 > 1), v32 + 1, 1, v11);
        }

        ++v5;
        *(v11 + 2) = v9;
        v33 = &v11[16 * v32];
        *(v33 + 4) = v2;
        *(v33 + 5) = v8;
        v22 += 4;
        v7 = v66;
        if (v67 == v5)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
      while (1)
      {
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
        do
        {
          __break(1u);
LABEL_69:
          v11 = sub_1A824A1FC((v20 > 1), v9, 1, v11);
LABEL_16:
          v7 = v66;
          *(v11 + 2) = v9;
          v21 = &v11[16 * v5];
          *(v21 + 4) = v2;
          *(v21 + 5) = v8;
          if (v67)
          {
            goto LABEL_17;
          }

LABEL_32:
          v34 = v64;
          v63 = *(v64 + 16);
          if (!v63)
          {
            return v11;
          }

          v20 = v61;
          v5 = v61 + 1;
          if (__OFADD__(v61, 1))
          {
            goto LABEL_66;
          }

          v20 = v62 + 1;
          v61 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_67;
          }

          v20 = (v5 - 0x2000000000000000) >> 62;
        }

        while (v20 != 3);
        v9 = 0;
        v60 = v5;
        v62 = v64 + 32;
        while (1)
        {
          v20 = *(v34 + 16);
          if (v9 >= v20)
          {
            break;
          }

          v69 = v9;
          v35 = v62 + 40 * v9;
          v37 = *v35;
          v36 = *(v35 + 8);
          v38 = *(v35 + 16);
          v39 = *(v35 + 24);
          v2 = *(v35 + 32);
          v78 = *v35;
          v79 = v36;
          v80 = v38;
          v81 = v39;
          v82 = v2;

          v9 = &v78;
          v40 = sub_1A8471734(v5);
          v8 = 0xE000000000000000;
          v78 = 0;
          v79 = 0xE000000000000000;
          v66 = v39;
          v67 = v38;
          if (v2 == 1)
          {
            v41 = *(v38 + 16);
            v42 = *(v39 + 16);
            v43 = __OFADD__(v41, v42);
            v20 = v41 + v42;
            if (v43)
            {
              goto LABEL_62;
            }

            v72 = sub_1A84E676C();
            v76 = v44;
            MEMORY[0x1AC56A990](0x746E656D656C4520, 0xE900000000000073);
            v8 = v76;
            v65 = v72;
          }

          else
          {
            v65 = 0;
          }

          sub_1A840D3B0();
          v45 = sub_1A84E639C();
          v46 = HIBYTE(v36) & 0xF;
          v73 = v45;
          v77 = v47;
          if ((v36 & 0x2000000000000000) == 0)
          {
            v46 = v37 & 0xFFFFFFFFFFFFLL;
          }

          if (v46)
          {
            v48 = 8250;
          }

          else
          {
            v48 = 8224;
          }

          v49 = sub_1A84E639C();
          MEMORY[0x1AC56A990](v49);

          MEMORY[0x1AC56A990](v48, 0xE200000000000000);

          MEMORY[0x1AC56A990](v65, v8);

          MEMORY[0x1AC56A990](v73, v77);

          v50 = v78;
          v8 = v79;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_1A824A1FC(0, *(v11 + 2) + 1, 1, v11);
          }

          v52 = *(v11 + 2);
          v51 = *(v11 + 3);
          if (v52 >= v51 >> 1)
          {
            v11 = sub_1A824A1FC((v51 > 1), v52 + 1, 1, v11);
          }

          *(v11 + 2) = v52 + 1;
          v53 = &v11[16 * v52];
          *(v53 + 4) = v50;
          *(v53 + 5) = v8;
          v2 = *(v40 + 16);
          if (v2)
          {
            v54 = 0;
            v55 = 16 * v52;
            v56 = v52 + 2;
            do
            {
              v57 = *(v40 + v54 + 32);
              v8 = *(v40 + v54 + 40);
              v58 = *(v11 + 3);

              if (v56 - 1 >= v58 >> 1)
              {
                v11 = sub_1A824A1FC((v58 > 1), v56, 1, v11);
              }

              *(v11 + 2) = v56;
              v59 = &v11[v55 + v54];
              *(v59 + 6) = v57;
              *(v59 + 7) = v8;
              v54 += 16;
              ++v56;
              --v2;
            }

            while (v2);
          }

          v9 = v69 + 1;

          v34 = v64;
          v5 = v60;
          if (v69 + 1 == v63)
          {
            return v11;
          }
        }
      }
    }

    v78 = 0;
    v79 = 0xE000000000000000;
    if (!v8)
    {
      v14 = 0;
      v13 = 0xE000000000000000;
LABEL_10:
      sub_1A84E5E7C();
      sub_1A840D3B0();
      v15 = sub_1A84E639C();
      v16 = HIBYTE(v5) & 0xF;
      v71 = v15;
      v75 = v17;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v16 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        v18 = 8250;
      }

      else
      {
        v18 = 8224;
      }

      v19 = sub_1A84E639C();
      MEMORY[0x1AC56A990](v19);

      MEMORY[0x1AC56A990](v18, 0xE200000000000000);

      MEMORY[0x1AC56A990](v14, v13);

      MEMORY[0x1AC56A990](v71, v75);

      v2 = v78;
      v8 = v79;
      v11 = sub_1A824A1FC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v5 = *(v11 + 2);
      v20 = *(v11 + 3);
      v9 = v5 + 1;
      if (v5 >= v20 >> 1)
      {
        goto LABEL_69;
      }

      goto LABEL_16;
    }

    if (!__OFADD__(*(v7 + 16), *(v6 + 16)))
    {
      v70 = sub_1A84E676C();
      v74 = v12;
      MEMORY[0x1AC56A990](0x746E656D656C4520, 0xE900000000000073);
      v14 = v70;
      v13 = v74;
      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}