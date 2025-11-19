uint64_t sub_1A8405BE8()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49746E6572727563;
  }
}

uint64_t sub_1A8405C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8408700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8405C78(uint64_t a1)
{
  v2 = sub_1A8407E94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8405CB4(uint64_t a1)
{
  v2 = sub_1A8407E94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchivedConversation.Iterator.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtCCO6IMCore12ImportExport20ArchivedConversation8Iterator_archivedConversationFileURL;
  v3 = sub_1A84E558C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t ImportExport.ArchivedConversation.Iterator.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCCO6IMCore12ImportExport20ArchivedConversation8Iterator_archivedConversationFileURL;
  v3 = sub_1A84E558C();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1A8405DFC(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E71E8, &qword_1A8501AC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A8407E94();
  sub_1A84E68AC();
  v11 = *(v3 + 16);
  v15 = 0;
  sub_1A84E670C();
  if (!v2)
  {
    v14 = *(v3 + 24);
    v13[15] = 1;
    type metadata accessor for ImportExport.ArchivedConversation(0);
    sub_1A8407CB0(&qword_1EB2E71F8, type metadata accessor for ImportExport.ArchivedConversation);
    sub_1A84E672C();
    v13[14] = 2;
    sub_1A84E558C();
    sub_1A8407CB0(&qword_1EB2E7200, MEMORY[0x1E6968FB0]);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1A8406054(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

void *ImportExport.ArchivedConversation.Iterator.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1A84E558C();
  v21 = *(v5 - 8);
  v6 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A83EA2FC(&qword_1EB2E7208, &qword_1A8501AC8);
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v12 = &v21 - v11;
  v3[2] = 0;
  v14 = a1[3];
  v13 = a1[4];
  v23 = a1;
  sub_1A82471E0(a1, v14);
  sub_1A8407E94();
  sub_1A84E689C();
  if (v2)
  {
    type metadata accessor for ImportExport.ArchivedConversation.Iterator(0);
    v18 = *(*v3 + 48);
    v19 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v9;
    v16 = v8;
    v27 = 0;
    v17 = v22;
    v3[2] = sub_1A84E664C();
    type metadata accessor for ImportExport.ArchivedConversation(0);
    v26 = 1;
    sub_1A8407CB0(&qword_1EB2E7210, type metadata accessor for ImportExport.ArchivedConversation);
    sub_1A84E666C();
    v3[3] = v24;
    v25 = 2;
    sub_1A8407CB0(&qword_1EB2E7218, MEMORY[0x1E6968FB0]);
    sub_1A84E666C();
    (*(v15 + 8))(v12, v17);
    (*(v21 + 32))(v3 + OBJC_IVAR____TtCCO6IMCore12ImportExport20ArchivedConversation8Iterator_archivedConversationFileURL, v16, v5);
  }

  sub_1A8244788(v23);
  return v3;
}

uint64_t sub_1A8406424(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A82505F4;

  return sub_1A840416C(a1);
}

uint64_t sub_1A84064C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return MEMORY[0x1EEE6DFA0](sub_1A8406558, v6, v8);
}

uint64_t sub_1A8406558()
{
  v1 = **(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1A84065F4;
  v3 = *(v0 + 24);

  return sub_1A840416C(v3);
}

uint64_t sub_1A84065F4()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[6];
    v5 = v3[7];

    return MEMORY[0x1EEE6DFA0](sub_1A8406724, v4, v5);
  }

  else
  {
    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1A8406724()
{
  v1 = v0[9];
  v2 = v0[5];
  v0[2] = v1;
  sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1A8406804@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = a2(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = v11;
  }

  return result;
}

uint64_t sub_1A8406898(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v60 = a1;
  v3 = type metadata accessor for ImportExport.Conversation();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v55 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v49 - v8;
  v9 = sub_1A84E558C();
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - v13;
  v15 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v54 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v49 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v49 - v22;
  v24 = type metadata accessor for ImportExport.Attachment();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v53 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v49 - v29;
  v31 = v2 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
  swift_beginAccess();
  sub_1A8243D74(v31 + *(v4 + 88), v23, &qword_1EB2E6F50, &unk_1A8502920);
  v52 = v25;
  v32 = *(v25 + 48);
  if (v32(v23, 1, v24) == 1)
  {
    sub_1A824B2D4(v23, &qword_1EB2E6F50, &unk_1A8502920);
    v33 = v62;
    v35 = v58;
    v34 = v59;
  }

  else
  {
    v50 = v2;
    sub_1A8408954(v23, v30, type metadata accessor for ImportExport.Attachment);
    sub_1A84E553C();
    v38 = v62;
    sub_1A8494884(v14, *(v30 + 5), *(v30 + 6), v21);
    v33 = v38;
    if (v38)
    {
      (*(v58 + 8))(v14, v59);
      return sub_1A84088F4(v30, type metadata accessor for ImportExport.Attachment);
    }

    v49 = v14;
    if (v32(v21, 1, v24) == 1)
    {
      v35 = v58;
      v34 = v59;
      (*(v58 + 8))(v49, v59);
      sub_1A84088F4(v30, type metadata accessor for ImportExport.Attachment);
      sub_1A824B2D4(v21, &qword_1EB2E6F50, &unk_1A8502920);
      v2 = v50;
    }

    else
    {
      v42 = v21;
      v43 = v53;
      sub_1A8408954(v42, v53, type metadata accessor for ImportExport.Attachment);
      v44 = v55;
      sub_1A840888C(v31, v55, type metadata accessor for ImportExport.Conversation);
      v45 = v54;
      sub_1A840888C(v43, v54, type metadata accessor for ImportExport.Attachment);
      v46 = v24;
      v47 = v45;
      (*(v52 + 56))(v45, 0, 1, v46);
      v48 = v56;
      ImportExport.Conversation.update(groupPhoto:)(v47, v56);
      v62 = 0;
      v35 = v58;
      sub_1A824B2D4(v47, &qword_1EB2E6F50, &unk_1A8502920);
      sub_1A84088F4(v44, type metadata accessor for ImportExport.Conversation);
      sub_1A84088F4(v43, type metadata accessor for ImportExport.Attachment);
      v34 = v59;
      (*(v35 + 8))(v49, v59);
      swift_beginAccess();
      sub_1A8408828(v48, v31);
      swift_endAccess();
      sub_1A84088F4(v30, type metadata accessor for ImportExport.Attachment);
      v2 = v50;
      v33 = v62;
    }
  }

  v61 = v2;
  v36 = v57;
  sub_1A84E553C();
  sub_1A8462834();
  if (v33)
  {
    return (*(v35 + 8))(v36, v34);
  }

  (*(v35 + 8))(v36, v34);
  sub_1A8462A9C();
  type metadata accessor for ImportExport.ArchivedConversation(0);
  sub_1A8407CB0(&qword_1EB2E71F8, type metadata accessor for ImportExport.ArchivedConversation);
  v39 = sub_1A84E52DC();
  v41 = v40;
  sub_1A84E560C();
  return sub_1A83F5994(v39, v41);
}

unint64_t sub_1A8406F98()
{
  result = qword_1EB2E7190;
  if (!qword_1EB2E7190)
  {
    sub_1A83EC9D4(&qword_1EB2E7188, &qword_1A850AF10);
    sub_1A8407CB0(&qword_1EB2E7198, type metadata accessor for ImportExport.Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7190);
  }

  return result;
}

_DWORD *sub_1A840704C(uint64_t a1)
{
  v113 = sub_1A84E5C9C();
  v107 = *(v113 - 8);
  v3 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for ImportExport.Conversation();
  v5 = *(*(v105 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v105);
  v99 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v100 = &v93 - v8;
  v9 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v102 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v93 - v13;
  v14 = sub_1A84E558C();
  v15 = *(v14 - 1);
  v110 = v14;
  v111 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v109 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v101 = &v93 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v104 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v93 - v23;
  v25 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v93 - v30;
  v32 = type metadata accessor for ImportExport.Attachment();
  v106 = *(v32 - 8);
  v33 = *(v106 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = (&v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v93 - v37;
  v39 = sub_1A84E526C();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  sub_1A84E525C();
  v108 = a1;
  v42 = sub_1A84E55AC();
  v116 = v1;
  if (v1)
  {

    v44 = v109;
    v45 = v110;
    v46 = v108;
    v47 = v113;
  }

  else
  {
    v48 = v42;
    v49 = v43;
    v97 = v31;
    v98 = v32;
    v93 = v29;
    v94 = v36;
    v96 = v38;
    v95 = v24;
    type metadata accessor for ImportExport.ArchivedConversation(0);
    sub_1A8407CB0(&qword_1EB2E7210, type metadata accessor for ImportExport.ArchivedConversation);
    v50 = v116;
    sub_1A84E524C();
    v116 = v50;
    if (v50)
    {

      sub_1A83F5994(v48, v49);
      v47 = v113;
      v44 = v109;
      v45 = v110;
      v46 = v108;
    }

    else
    {

      sub_1A83F5994(v48, v49);
      v53 = v115;
      v67 = v115 + OBJC_IVAR____TtCO6IMCore12ImportExport20ArchivedConversation_conversation;
      swift_beginAccess();
      v68 = v97;
      sub_1A8243D74(v67 + *(v105 + 80), v97, &qword_1EB2E6F50, &unk_1A8502920);
      v69 = v98;
      if ((*(v106 + 48))(v68, 1, v98) == 1)
      {
        sub_1A824B2D4(v68, &qword_1EB2E6F50, &unk_1A8502920);
        return v53;
      }

      v70 = v96;
      sub_1A8408954(v68, v96, type metadata accessor for ImportExport.Attachment);
      if (*(v70 + *(v69 + 48)) != 1)
      {
        sub_1A84088F4(v70, type metadata accessor for ImportExport.Attachment);
        return v53;
      }

      v71 = v70 + *(v69 + 40);
      v72 = v103;
      sub_1A8243D74(v71, v103, &qword_1EB2E7068, &unk_1A8501EB0);
      v74 = v110;
      v73 = v111;
      if ((*(v111 + 48))(v72, 1, v110) == 1)
      {
        sub_1A84088F4(v70, type metadata accessor for ImportExport.Attachment);
        sub_1A824B2D4(v72, &qword_1EB2E7068, &unk_1A8501EB0);
        return v53;
      }

      v97 = v67;
      (*(v73 + 32))(v95, v72, v74);
      v105 = sub_1A84E555C();
      v75 = v101;
      v46 = v108;
      sub_1A84E553C();
      v76 = v104;
      sub_1A84E552C();

      v77 = v73;
      v78 = *(v73 + 8);
      v79 = v75;
      v80 = v73 + 8;
      v78(v79, v74);
      v81 = *(v73 + 16);
      v82 = v102;
      v81(v102, v76, v74);
      (*(v77 + 56))(v82, 0, 1, v74);
      v114[0] = 0;
      v83 = v94;
      v84 = v70;
      v85 = v116;
      ImportExport.Attachment.update(filePath:isRelativeFilePath:wasDownloaded:missingFileReasons:)(v82, 0, 0, v114, v94);
      v45 = v74;
      v116 = v85;
      if (v85)
      {

        sub_1A824B2D4(v82, &qword_1EB2E7068, &unk_1A8501EB0);
        v78(v104, v74);
        v78(v95, v74);
        sub_1A84088F4(v84, type metadata accessor for ImportExport.Attachment);
        v47 = v113;
        v44 = v109;
      }

      else
      {
        v101 = v78;
        v103 = v80;
        v105 = v53;
        sub_1A824B2D4(v82, &qword_1EB2E7068, &unk_1A8501EB0);
        v86 = v99;
        sub_1A840888C(v97, v99, type metadata accessor for ImportExport.Conversation);
        v87 = v93;
        sub_1A840888C(v83, v93, type metadata accessor for ImportExport.Attachment);
        (*(v106 + 56))(v87, 0, 1, v98);
        v88 = v100;
        v89 = v116;
        ImportExport.Conversation.update(groupPhoto:)(v87, v100);
        v47 = v113;
        v44 = v109;
        v116 = v89;
        if (!v89)
        {
          sub_1A824B2D4(v87, &qword_1EB2E6F50, &unk_1A8502920);
          sub_1A84088F4(v86, type metadata accessor for ImportExport.Conversation);
          sub_1A84088F4(v83, type metadata accessor for ImportExport.Attachment);
          v91 = v101;
          (v101)(v104, v45);
          v91(v95, v45);
          sub_1A84088F4(v96, type metadata accessor for ImportExport.Attachment);
          v92 = v97;
          swift_beginAccess();
          sub_1A8408828(v88, v92);
          swift_endAccess();
          return v105;
        }

        sub_1A824B2D4(v87, &qword_1EB2E6F50, &unk_1A8502920);
        sub_1A84088F4(v86, type metadata accessor for ImportExport.Conversation);
        sub_1A84088F4(v83, type metadata accessor for ImportExport.Attachment);
        v90 = v101;
        (v101)(v104, v45);
        v90(v95, v45);
        sub_1A84088F4(v96, type metadata accessor for ImportExport.Attachment);
      }
    }
  }

  v51 = v112;
  sub_1A84E5C8C();
  v52 = v111;
  (*(v111 + 16))(v44, v46, v45);
  v53 = v116;
  v54 = v116;
  v55 = sub_1A84E5C7C();
  v56 = v44;
  v57 = sub_1A84E619C();

  if (os_log_type_enabled(v55, v57))
  {
    v53 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v114[0] = v110;
    *v53 = 136315394;
    v59 = sub_1A84E555C();
    v61 = v60;
    (*(v52 + 8))(v56, v45);
    v62 = sub_1A82446BC(v59, v61, v114);

    *(v53 + 1) = v62;
    *(v53 + 6) = 2112;
    v63 = v116;
    v64 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 14) = v64;
    *v58 = v64;
    _os_log_impl(&dword_1A823F000, v55, v57, "Failed to read ArchivedConversation from: %s with error: %@", v53, 0x16u);
    sub_1A824B2D4(v58, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v58, -1, -1);
    v65 = v110;
    sub_1A8244788(v110);
    MEMORY[0x1AC56D3F0](v65, -1, -1);
    MEMORY[0x1AC56D3F0](v53, -1, -1);

    (*(v107 + 8))(v112, v113);
  }

  else
  {

    (*(v52 + 8))(v56, v45);
    (*(v107 + 8))(v51, v47);
  }

  swift_willThrow();
  return v53;
}

unint64_t sub_1A8407C5C()
{
  result = qword_1EB2E71A8;
  if (!qword_1EB2E71A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E71A8);
  }

  return result;
}

uint64_t sub_1A8407CB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A8407D18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E6E48, &qword_1A8502950);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8407D84()
{
  result = qword_1EB2E6E50;
  if (!qword_1EB2E6E50)
  {
    sub_1A83EC9D4(&qword_1EB2E6E48, &qword_1A8502950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6E50);
  }

  return result;
}

uint64_t sub_1A8407E08(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A8407E40()
{
  result = qword_1EB2E71E0;
  if (!qword_1EB2E71E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E71E0);
  }

  return result;
}

unint64_t sub_1A8407E94()
{
  result = qword_1EB2E71F0;
  if (!qword_1EB2E71F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E71F0);
  }

  return result;
}

uint64_t sub_1A8407EFC()
{
  result = type metadata accessor for ImportExport.Conversation();
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

uint64_t sub_1A840814C()
{
  result = sub_1A84E558C();
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

uint64_t dispatch thunk of ImportExport.ArchivedConversation.Iterator.next()(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A82505F4;

  return v8(a1);
}

unint64_t sub_1A84083CC()
{
  result = qword_1EB2E7240;
  if (!qword_1EB2E7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7240);
  }

  return result;
}

unint64_t sub_1A8408424()
{
  result = qword_1EB2E7248;
  if (!qword_1EB2E7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7248);
  }

  return result;
}

unint64_t sub_1A840847C()
{
  result = qword_1EB2E7250;
  if (!qword_1EB2E7250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7250);
  }

  return result;
}

unint64_t sub_1A84084D4()
{
  result = qword_1EB2E7258;
  if (!qword_1EB2E7258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7258);
  }

  return result;
}

unint64_t sub_1A840852C()
{
  result = qword_1EB2E7260;
  if (!qword_1EB2E7260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7260);
  }

  return result;
}

unint64_t sub_1A8408584()
{
  result = qword_1EB2E7268;
  if (!qword_1EB2E7268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7268);
  }

  return result;
}

uint64_t sub_1A84085D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A852FFE0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436567617373656DLL && a2 == 0xEC000000746E756FLL)
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

uint64_t sub_1A8408700(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746E6572727563 && a2 == 0xEC0000007865646ELL;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8530050 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001A8530070 == a2)
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

uint64_t sub_1A8408828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Conversation();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A840888C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A84088F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A8408954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A8408CD8()
{
  v0 = sub_1A84E5D8C();
  v1 = [objc_opt_self() serviceWithName_];

  if (v1)
  {
    v2 = MEMORY[0x1E69E7CC0];
    v3 = *MEMORY[0x1E69A7B38];
    v17 = sub_1A84E5DBC();

    sub_1A84E641C();
    v4 = [v1 serviceProperties];
    if (!v4)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v5 = v4;

    v6 = sub_1A84E5D3C();

    if (*(v6 + 16))
    {
      v7 = sub_1A8250C0C(v18);
      if (v8)
      {
        sub_1A8244F40(*(v6 + 56) + 32 * v7, v19);
        sub_1A8250D18(v18);

        sub_1A83EA2FC(&qword_1EB2E72D8, &qword_1A8501EF0);
        if ((swift_dynamicCast() & 1) == 0)
        {

          return;
        }

        v16 = v1;
        v9 = 0;
        v18[0] = v2;
        v10 = *(v17 + 16);
LABEL_7:
        v11 = v9;
        while (1)
        {
          if (v10 == v11)
          {

            return;
          }

          if (v11 >= *(v17 + 16))
          {
            break;
          }

          v9 = v11 + 1;
          v12 = *(v17 + 8 * v11 + 32);

          v13 = sub_1A84E5D2C();

          v14 = [objc_opt_self() preconditionWithDictionary_];

          v11 = v9;
          if (v14)
          {
            MEMORY[0x1AC56AAD0]();
            if (*((v18[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v15 = *((v18[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1A84E601C();
            }

            sub_1A84E603C();
            goto LABEL_7;
          }
        }

        __break(1u);
        goto LABEL_19;
      }
    }

    sub_1A8250D18(v18);
  }
}

uint64_t sub_1A8408FA4()
{
  v0 = objc_opt_self();
  v1 = sub_1A84E5D8C();
  v2 = [v0 serviceWithInternalName_];

  if (v2)
  {
    v3 = IMPreferredAccountForService(v2);
    if (v3)
    {
      v4 = v3;
      v5 = [v3 uniqueID];

      if (v5)
      {
        v6 = sub_1A84E5DBC();

        return v6;
      }
    }
  }

  return 0;
}

void sub_1A8409080()
{
  v0 = [objc_opt_self() sharedInstance];
  if (!v0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v1 = v0;
  v2 = [v0 accountsWithServiceCapability_];

  if (!v2)
  {
LABEL_50:
    __break(1u);
    return;
  }

  sub_1A8244B68(0, &qword_1EB2E4708, off_1E780D7A0);
  v3 = sub_1A84E5FFC();

  v29 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A84E654C())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1AC56AF80](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 _isUsableForSending])
      {
        sub_1A84E64DC();
        v9 = *(v29 + 16);
        sub_1A84E650C();
        sub_1A84E651C();
        sub_1A84E64EC();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v10 = v29;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_20:

  if ((v10 & 0x8000000000000000) == 0 && (v10 & 0x4000000000000000) == 0)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      goto LABEL_23;
    }

LABEL_43:
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

LABEL_42:
  v11 = sub_1A84E654C();
  if (!v11)
  {
    goto LABEL_43;
  }

LABEL_23:
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    v14 = v12;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1AC56AF80](v14, v10);
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v14 >= *(v10 + 16))
        {
          goto LABEL_41;
        }

        v15 = *(v10 + 8 * v14 + 32);
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      v16 = v15;
      v17 = [v16 serviceName];
      if (v17)
      {
        break;
      }

      ++v14;
      if (v12 == v11)
      {
        goto LABEL_44;
      }
    }

    v18 = v17;
    v19 = sub_1A84E5DBC();
    v21 = v20;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1A824A1FC(0, *(v13 + 2) + 1, 1, v13);
    }

    v23 = *(v13 + 2);
    v22 = *(v13 + 3);
    if (v23 >= v22 >> 1)
    {
      v13 = sub_1A824A1FC((v22 > 1), v23 + 1, 1, v13);
    }

    *(v13 + 2) = v23 + 1;
    v24 = &v13[16 * v23];
    *(v24 + 4) = v19;
    *(v24 + 5) = v21;
  }

  while (v12 != v11);
LABEL_44:

  v25 = sub_1A8249338(v13);

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = sub_1A84D832C(*(v25 + 16), 0);
    v28 = sub_1A84D8438(&v29, v27 + 4, v26, v25);
    sub_1A8267334();
    if (v28 == v26)
    {
      return;
    }

    __break(1u);
  }
}

id ImportExport.Attachment.existsOnDisk.getter()
{
  v1 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - v3;
  v5 = sub_1A84E558C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ImportExport.Attachment();
  sub_1A8243D74(v0 + *(v10 + 40), v4, &qword_1EB2E7068, &unk_1A8501EB0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1A824B2D4(v4, &qword_1EB2E7068, &unk_1A8501EB0);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v12 = [objc_opt_self() defaultManager];
    sub_1A84E555C();
    v13 = sub_1A84E5D8C();

    v14 = [v12 fileExistsAtPath_];

    (*(v6 + 8))(v9, v5);
    return v14;
  }
}

uint64_t type metadata accessor for ImportExport.Attachment()
{
  result = qword_1EB2E73D8;
  if (!qword_1EB2E73D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.Attachment.update(filePath:isRelativeFilePath:wasDownloaded:missingFileReasons:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v229 = a3;
  v252 = a2;
  v260 = a5;
  v266 = *MEMORY[0x1E69E9840];
  v9 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v201 = &v196 - v11;
  v204 = sub_1A84E5C5C();
  v203 = *(v204 - 8);
  v12 = *(v203 + 64);
  v13 = MEMORY[0x1EEE9AC00](v204);
  v200 = &v196 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v202 = &v196 - v15;
  v199 = sub_1A84E577C();
  v198 = *(v199 - 8);
  v16 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v197 = &v196 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v207 = &v196 - v20;
  v209 = sub_1A84E56DC();
  v208 = *(v209 - 8);
  v21 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v205 = &v196 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_1A84E5C9C();
  v211 = *(v212 - 8);
  v23 = *(v211 + 64);
  v24 = MEMORY[0x1EEE9AC00](v212);
  v206 = &v196 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v213 = &v196 - v26;
  v257 = sub_1A84E558C();
  v255 = *(v257 - 8);
  v27 = *(v255 + 64);
  v28 = MEMORY[0x1EEE9AC00](v257);
  v210 = &v196 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v215 = &v196 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v214 = &v196 - v32;
  v236 = sub_1A84E531C();
  v235 = *(v236 - 8);
  v33 = v235[8];
  MEMORY[0x1EEE9AC00](v236);
  v234 = (&v196 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_1A84E5B9C();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v196 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v261 = &v196 - v41;
  v42 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v248 = &v196 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v233 = &v196 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v262 = &v196 - v48;
  v227 = *a4;
  v49 = v6[1];
  v225 = *v6;
  sub_1A8243D74(a1, &v196 - v48, &qword_1EB2E7068, &unk_1A8501EB0);
  v50 = type metadata accessor for ImportExport.Attachment();
  v256 = *(v6 + v50[11]);
  v51 = v6[6];
  v232 = v6[5];
  v231 = v51;
  v52 = v6[4];
  v219 = v6[3];
  v53 = v6[8];
  v250 = v6[7];
  v54 = v6[10];
  v230 = v6[9];
  v55 = v50[14];
  v258 = *(v6 + v50[15]);
  v56 = (v6 + v55);
  v57 = v50[19];
  v224 = *(v6 + v50[18]);
  v58 = v50[17];
  v222 = *(v6 + v50[16]);
  v223 = *(v6 + v58);
  v59 = v56[1];
  v254 = *v56;
  v60 = *(v6 + v57 + 8);
  v221 = *(v6 + v57);
  v61 = (v6 + v50[20]);
  v62 = v61[1];
  v220 = *v61;
  v226 = *(v6 + v50[22]);
  v63 = v50[24];
  v241 = v62;

  v243 = v49;

  v238 = v52;
  v64 = v50;

  v251 = v53;

  v253 = v54;

  v259 = v59;

  v239 = v60;

  v65 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v237 = v264;
  v66 = v6 + v50[25];
  sub_1A84E595C();
  v240 = v264;
  v67 = v6 + v50[26];
  v247 = v65;
  v68 = v257;
  sub_1A84E595C();
  v242 = v264;
  v69 = type metadata accessor for ImportExport.AttachmentDownloadError();
  (*(*(v69 - 8) + 56))(v261, 1, 1, v69);
  v216 = v6[2];
  v70 = v255;
  v71 = v64[24];
  v264 = 0;
  sub_1A84E5B8C();
  v72 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v244 = v71;
  sub_1A84E594C();
  v73 = v64[25];
  v264 = 0;
  sub_1A84E5B8C();
  v245 = v73;
  sub_1A84E594C();
  v218 = v64;
  v74 = v64[26];
  v264 = 0;
  sub_1A84E5B8C();
  v246 = v74;
  v228 = v38;
  v217 = v72;
  v75 = v233;
  sub_1A84E594C();
  v264 = v232;
  v265 = v231;
  v76 = v234;
  sub_1A84E530C();
  sub_1A840D3B0();
  v77 = sub_1A84E636C();
  v79 = v78;
  (v235[1])(v76, v236);
  sub_1A8243D74(v262, v75, &qword_1EB2E7068, &unk_1A8501EB0);
  v80 = *(v70 + 48);
  if (v80(v75, 1, v68) == 1)
  {
    sub_1A824B2D4(v75, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_3:
    v81 = v248;
    goto LABEL_7;
  }

  v82 = v214;
  (*(v70 + 32))(v214, v75, v68);
  v83 = v82;
  v81 = v248;
  if (v256 & 1) == 0 || (v252)
  {
    (*(v70 + 8))(v83, v68);
LABEL_7:
    sub_1A8243D74(v262, v81, &qword_1EB2E7068, &unk_1A8501EB0);
    if (v80(v81, 1, v68) == 1)
    {
      v248 = v77;
      sub_1A824B2D4(v81, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_53:
      v155 = v243;
      v156 = v256;
      v157 = v241;
      v158 = v226;
      v159 = v239;
      v160 = v225;
      v161 = v238;
      v162 = v224;
      v163 = v223;
LABEL_61:
      v172 = v260;
      *v260 = v160;
      v172[1] = v155;
      v173 = v219;
      v172[2] = v216;
      v172[3] = v173;
      v174 = v248;
      v172[4] = v161;
      v172[5] = v174;
      v172[6] = v79;
      v175 = v218;
      v176 = (v172 + v218[14]);
      v177 = v258;
      v178 = v259;
      *v176 = v254;
      v176[1] = v178;
      *(v172 + v175[15]) = v177;
      v179 = v251;
      v172[7] = v250;
      v172[8] = v179;
      v180 = v253;
      v172[9] = v230;
      v172[10] = v180;
      sub_1A8243D74(v262, v172 + v175[10], &qword_1EB2E7068, &unk_1A8501EB0);
      *(v172 + v175[11]) = v156;
      *(v172 + v175[12]) = v252 & 1;
      *(v172 + v175[13]) = v229 & 1;
      *(v172 + v175[18]) = v162;
      *(v172 + v175[16]) = v222;
      *(v172 + v175[17]) = v163;
      v181 = (v172 + v175[19]);
      *v181 = v221;
      v181[1] = v159;
      v182 = (v172 + v175[20]);
      *v182 = v220;
      v182[1] = v157;
      v183 = v261;
      sub_1A8243D74(v261, v172 + v175[21], &qword_1EB2E7348, &qword_1A8504400);
      *(v172 + v175[22]) = v158;
      v184 = v247;
      v185 = *(*(v247 - 8) + 8);
      v185(v172 + v244, v247);
      v263 = v237;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v185(v172 + v245, v184);
      v263 = v240;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v185(v172 + v246, v184);
      v263 = v242;
      sub_1A84E5B8C();
      sub_1A84E594C();
      sub_1A824B2D4(v183, &qword_1EB2E7348, &qword_1A8504400);
      result = sub_1A824B2D4(v262, &qword_1EB2E7068, &unk_1A8501EB0);
      *(v172 + v175[23]) = v227;
      goto LABEL_62;
    }

    v236 = v79;
    v84 = v215;
    (*(v70 + 32))(v215, v81, v68);
    v85 = HIBYTE(v259) & 0xF;
    if (!v258 || !v253)
    {
      goto LABEL_18;
    }

    v86 = v254 & 0xFFFFFFFFFFFFLL;
    if ((v259 & 0x2000000000000000) != 0)
    {
      v86 = HIBYTE(v259) & 0xF;
    }

    if (!v86)
    {
      goto LABEL_18;
    }

    v87 = HIBYTE(v251) & 0xF;
    if ((v251 & 0x2000000000000000) == 0)
    {
      v87 = v250 & 0xFFFFFFFFFFFFLL;
    }

    if (v87)
    {
      v248 = v77;
      (*(v70 + 8))(v84, v257);
    }

    else
    {
LABEL_18:
      v88 = v84;
      v89 = [objc_opt_self() defaultManager];
      sub_1A84E555C();
      v90 = sub_1A84E5D8C();

      v264 = 0;
      v91 = [v89 attributesOfItemAtPath:v90 error:&v264];

      v92 = v264;
      if (v91)
      {
        type metadata accessor for FileAttributeKey(0);
        sub_1A8412804(&qword_1EB2E5B48, type metadata accessor for FileAttributeKey);
        v93 = sub_1A84E5D3C();
        v94 = v92;

        v79 = v236;
        v95 = HIBYTE(v236) & 0xF;
        if ((v236 & 0x2000000000000000) == 0)
        {
          v95 = v77 & 0xFFFFFFFFFFFFLL;
        }

        if (!v95)
        {

          v77 = sub_1A84E550C();
          v79 = v96;
        }

        v97 = v255;
        if (*(v93 + 16))
        {
          v98 = sub_1A8490560(*MEMORY[0x1E696A3D8]);
          if (v99)
          {
            sub_1A8244F40(*(v93 + 56) + 32 * v98, &v264);
            if (swift_dynamicCast())
            {
              sub_1A84E5C4C();
              v100 = v201;
              sub_1A84E5C2C();
              v101 = v203;
              v102 = v204;
              if ((*(v203 + 48))(v100, 1, v204) == 1)
              {
                sub_1A824B2D4(v100, &qword_1EB2E7340, &qword_1A8501EF8);
                v97 = v255;
              }

              else
              {
                (*(v101 + 32))(v202, v100, v102);
                v148 = HIBYTE(v251) & 0xF;
                if ((v251 & 0x2000000000000000) == 0)
                {
                  v148 = v250 & 0xFFFFFFFFFFFFLL;
                }

                v97 = v255;
                if (!v148)
                {
                  v250 = sub_1A84E5C1C();
                  v150 = v149;

                  v251 = v150;
                }

                if (!v253)
                {
                  v230 = sub_1A84E5C3C();
                  v253 = v151;
                }

                (*(v203 + 8))(v202, v204);
              }
            }
          }
        }

        if (!v258)
        {
          if (*(v93 + 16) && (v152 = sub_1A8490560(*MEMORY[0x1E696A3B8]), (v153 & 1) != 0) && (sub_1A8244F40(*(v93 + 56) + 32 * v152, &v264), swift_dynamicCast()))
          {
            v258 = v263;
          }

          else
          {
            v258 = 0;
          }
        }

        v154 = v254 & 0xFFFFFFFFFFFFLL;
        if ((v259 & 0x2000000000000000) != 0)
        {
          v154 = v85;
        }

        v248 = v77;
        if (v154)
        {
          (*(v97 + 8))(v215, v257);

          goto LABEL_53;
        }

        v236 = v79;
        v164 = v257;
        if (*(v93 + 16) && (v165 = sub_1A8490560(*MEMORY[0x1E696A308]), v166 = v205, (v167 & 1) != 0))
        {
          sub_1A8244F40(*(v93 + 56) + 32 * v165, &v264);

          v168 = v207;
          v169 = v209;
          v170 = swift_dynamicCast();
          v171 = v208;
          (*(v208 + 56))(v168, v170 ^ 1u, 1, v169);
          if ((*(v171 + 48))(v168, 1, v169) != 1)
          {
            (*(v171 + 32))(v166, v168, v169);
            v254 = objc_opt_self();
            v187 = sub_1A84E565C();
            if (qword_1EB2E5990 != -1)
            {
              swift_once();
            }

            v188 = v199;
            v189 = sub_1A824431C(v199, qword_1EB2E7FC8);
            swift_beginAccess();
            v190 = v198;
            v191 = v197;
            (*(v198 + 16))(v197, v189, v188);
            v192 = sub_1A84E576C();
            (*(v190 + 8))(v191, v188);
            v193 = [v254 stringFromDate:v187 timeZone:v192 formatOptions:1907];

            v254 = sub_1A84E5DBC();
            v195 = v194;

            (*(v171 + 8))(v166, v169);
            (*(v255 + 8))(v215, v164);
            v259 = v195;
            goto LABEL_60;
          }

          (*(v97 + 8))(v215, v164);
        }

        else
        {

          (*(v97 + 8))(v215, v164);
          v168 = v207;
          (*(v208 + 56))(v207, 1, 1, v209);
        }

        sub_1A824B2D4(v168, &qword_1EB2E6F48, &unk_1A8501F00);
      }

      else
      {
        v248 = v77;
        v103 = v264;
        v104 = sub_1A84E548C();

        swift_willThrow();
        v249 = 0;
        v105 = v213;
        sub_1A84E5C8C();
        v106 = v255;
        v107 = v210;
        v108 = v257;
        (*(v255 + 16))(v210, v88, v257);
        v109 = sub_1A84E5C7C();
        v110 = sub_1A84E619C();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v235 = v104;
          v112 = v108;
          v113 = v107;
          v114 = v111;
          v234 = swift_slowAlloc();
          v264 = v234;
          *v114 = 136315138;
          v115 = sub_1A84E555C();
          v117 = v116;
          v118 = *(v106 + 8);
          v118(v113, v112);
          v119 = sub_1A82446BC(v115, v117, &v264);

          *(v114 + 4) = v119;
          _os_log_impl(&dword_1A823F000, v109, v110, "Failed to get file attributes for file ath path: %s", v114, 0xCu);
          v120 = v234;
          sub_1A8244788(v234);
          MEMORY[0x1AC56D3F0](v120, -1, -1);
          MEMORY[0x1AC56D3F0](v114, -1, -1);

          (*(v211 + 8))(v213, v212);
          v118(v215, v112);
        }

        else
        {

          v124 = *(v106 + 8);
          v124(v107, v108);
          (*(v211 + 8))(v105, v212);
          v124(v88, v108);
        }
      }
    }

LABEL_60:
    v155 = v243;
    v156 = v256;
    v157 = v241;
    v158 = v226;
    v159 = v239;
    v160 = v225;
    v161 = v238;
    v162 = v224;
    v163 = v223;
    v79 = v236;
    goto LABEL_61;
  }

  v121 = [objc_opt_self() defaultManager];
  sub_1A84E555C();
  v122 = sub_1A84E5D8C();

  v123 = [v121 fileExistsAtPath_];

  if (v123)
  {
    v68 = v257;
    (*(v70 + 8))(v214, v257);
    goto LABEL_3;
  }

  v125 = v245;
  v126 = v262;

  v264 = 0;
  v265 = 0xE000000000000000;
  sub_1A84E646C();

  v264 = 0xD00000000000002ELL;
  v265 = 0x80000001A8530150;
  v127 = v214;
  v128 = sub_1A84E555C();
  MEMORY[0x1AC56A990](v128);

  v129 = v264;
  v130 = v265;
  sub_1A8412484();
  v131 = v70;
  v132 = swift_allocError();
  *v133 = v129;
  *(v133 + 8) = v130;
  *(v133 + 16) = 1;
  swift_willThrow();

  (*(v131 + 8))(v127, v257);
  v134 = v132;
  v135 = v206;
  sub_1A84E5C8C();
  v136 = v132;
  v137 = sub_1A84E5C7C();
  v138 = sub_1A84E619C();
  v139 = v132;

  if (os_log_type_enabled(v137, v138))
  {
    v140 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    *v140 = 138412290;
    v142 = v139;
    v143 = _swift_stdlib_bridgeErrorToNSError();
    *(v140 + 4) = v143;
    *v141 = v143;
    _os_log_impl(&dword_1A823F000, v137, v138, "Failed to create an attachment with error: %@", v140, 0xCu);
    sub_1A824B2D4(v141, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v141, -1, -1);
    MEMORY[0x1AC56D3F0](v140, -1, -1);
  }

  (*(v211 + 8))(v135, v212);
  swift_willThrow();
  sub_1A824B2D4(v261, &qword_1EB2E7348, &qword_1A8504400);
  sub_1A824B2D4(v126, &qword_1EB2E7068, &unk_1A8501EB0);

  v144 = v247;
  v145 = *(*(v247 - 8) + 8);
  v146 = v260;
  v145(v260 + v244, v247);
  v145(&v146[v125], v144);
  result = (v145)(&v146[v246], v144);
LABEL_62:
  v186 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ImportExport.Attachment.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ImportExport.Attachment.messageID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ImportExport.Attachment.fileName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ImportExport.Attachment.contentType.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ImportExport.Attachment.mimeType.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t ImportExport.Attachment.createdDate.getter()
{
  v1 = (v0 + *(type metadata accessor for ImportExport.Attachment() + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

void ImportExport.Attachment.dateCreated.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  v2 = (v0 + *(type metadata accessor for ImportExport.Attachment() + 56));
  v3 = *v2;
  v4 = v2[1];
  v5 = sub_1A84E5D8C();
  v6 = [v1 dateFromString_];

  if (v6)
  {
    sub_1A84E569C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t ImportExport.Attachment.emojiImageContentIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ImportExport.Attachment() + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ImportExport.Attachment.emojiImageShortDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for ImportExport.Attachment() + 80));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ImportExport.Attachment.missingFileReasons.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ImportExport.Attachment();
  *a1 = *(v1 + *(result + 92));
  return result;
}

uint64_t ImportExport.Attachment.transferUserInfo.getter()
{
  v0 = *(type metadata accessor for ImportExport.Attachment() + 96);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  return v2;
}

uint64_t sub_1A840B5C0@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for ImportExport.Attachment() + 96);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  result = sub_1A84E595C();
  *a1 = v4;
  return result;
}

uint64_t sub_1A840B628(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for ImportExport.Attachment() + 96);

  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E596C();
}

uint64_t ImportExport.Attachment.$transferUserInfo.getter()
{
  v0 = *(type metadata accessor for ImportExport.Attachment() + 96);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E597C();
}

uint64_t ImportExport.Attachment.stickerUserInfo.getter()
{
  v0 = *(type metadata accessor for ImportExport.Attachment() + 100);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  return v2;
}

uint64_t sub_1A840B740@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for ImportExport.Attachment() + 100);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  result = sub_1A84E595C();
  *a1 = v4;
  return result;
}

uint64_t sub_1A840B7A8(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for ImportExport.Attachment() + 100);

  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E596C();
}

uint64_t ImportExport.Attachment.$stickerUserInfo.getter()
{
  v0 = *(type metadata accessor for ImportExport.Attachment() + 100);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E597C();
}

uint64_t ImportExport.Attachment.attributionInfo.getter()
{
  v0 = *(type metadata accessor for ImportExport.Attachment() + 104);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  return v2;
}

uint64_t sub_1A840B8C0@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for ImportExport.Attachment() + 104);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  result = sub_1A84E595C();
  *a1 = v4;
  return result;
}

uint64_t sub_1A840B928(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for ImportExport.Attachment() + 104);

  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E596C();
}

uint64_t ImportExport.Attachment.$attributionInfo.getter()
{
  v0 = *(type metadata accessor for ImportExport.Attachment() + 104);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E597C();
}

uint64_t ImportExport.Attachment.init(id:filePath:shouldExistOnDisk:isRelativeFilePath:fileName:messageID:contentType:mimeType:createdDate:totalBytes:wasDownloaded:isOutgoing:isSticker:isSafetySensitive:emojiImageContentIdentifier:emojiImageShortDescription:isAdaptiveImageGlyph:transferUserInfo:stickerUserInfo:attributionInfo:downloadError:missingFileReasons:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, unint64_t a11, char *a12, char *a13, char *a14, uint64_t a15, char *a16, uint64_t a17, char a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *a31, uint64_t a32)
{
  v209 = a8;
  v242 = a7;
  v243 = a3;
  v238 = a6;
  v235 = a5;
  v239 = a4;
  v221 = a2;
  v220 = a1;
  v230 = a30;
  v229 = a29;
  v228 = a28;
  v226 = a27;
  v223 = a25;
  v222 = a23;
  v245 = a14;
  v246 = a16;
  v244 = a12;
  v240 = a10;
  v250 = *MEMORY[0x1E69E9840];
  v197 = sub_1A84E577C();
  v196 = *(v197 - 8);
  v33 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v197);
  v195 = &v193 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v202 = &v193 - v37;
  v204 = sub_1A84E56DC();
  v203 = *(v204 - 8);
  v38 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v208 = &v193 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v211 = &v193 - v42;
  v201 = sub_1A84E5C5C();
  v200 = *(v201 - 8);
  v43 = *(v200 + 64);
  v44 = MEMORY[0x1EEE9AC00](v201);
  v198 = &v193 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v199 = &v193 - v46;
  v207 = sub_1A84E5C9C();
  v206 = *(v207 - 8);
  v47 = *(v206 + 64);
  v48 = MEMORY[0x1EEE9AC00](v207);
  v210 = &v193 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v213 = &v193 - v50;
  v51 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v52 = *(*(v51 - 8) + 64);
  v53 = MEMORY[0x1EEE9AC00](v51 - 8);
  v215 = &v193 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v193 - v55;
  v57 = sub_1A84E558C();
  v233 = *(v57 - 8);
  v58 = *(v233 + 64);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v205 = &v193 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v231 = &v193 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v214 = &v193 - v63;
  v236 = sub_1A84E531C();
  v64 = *(v236 - 8);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v236);
  v67 = &v193 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1A84E5B9C();
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v71 = &v193 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = *a31;
  v72 = type metadata accessor for ImportExport.Attachment();
  v73 = v72[24];
  v248 = 0;
  sub_1A84E5B8C();
  v74 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v224 = v73;
  sub_1A84E594C();
  v75 = v72[25];
  v248 = 0;
  sub_1A84E5B8C();
  v225 = v75;
  sub_1A84E594C();
  v218 = v72;
  v76 = v72[26];
  v248 = 0;
  sub_1A84E5B8C();
  v227 = v76;
  v241 = a9;
  v217 = v71;
  v216 = v74;
  v77 = v233;
  sub_1A84E594C();
  v248 = v238;
  v249 = v242;

  sub_1A84E530C();
  sub_1A840D3B0();
  v237 = sub_1A84E636C();
  v232 = v78;
  (*(v64 + 8))(v67, v236);
  v79 = v243;
  sub_1A8243D74(v243, v56, &qword_1EB2E7068, &unk_1A8501EB0);
  v80 = *(v77 + 48);
  if (v80(v56, 1, v57) == 1)
  {
    v81 = v77;
    sub_1A824B2D4(v56, &qword_1EB2E7068, &unk_1A8501EB0);
    goto LABEL_6;
  }

  v82 = v214;
  (*(v77 + 32))(v214, v56, v57);
  if (v239 & 1) == 0 || (v235)
  {
    v81 = v77;
    (*(v77 + 8))(v82, v57);
    goto LABEL_6;
  }

  v128 = [objc_opt_self() defaultManager];
  sub_1A84E555C();
  v129 = sub_1A84E5D8C();

  v130 = [v128 fileExistsAtPath_];

  if (v130)
  {
    v81 = v77;
    (*(v77 + 8))(v214, v57);
LABEL_6:
    v83 = v231;
    v212 = a32;
    v238 = a15;
    v213 = a13;
    v84 = v215;
    sub_1A8243D74(v79, v215, &qword_1EB2E7068, &unk_1A8501EB0);
    v85 = v80(v84, 1, v57);
    v214 = a11;
    v236 = a17;
    if (v85 == 1)
    {
      sub_1A824B2D4(v84, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_8:
      v211 = v244;
      v210 = v246;
LABEL_49:
      v215 = v245;
LABEL_50:
      v99 = v232;
      goto LABEL_51;
    }

    v86 = v84;
    v87 = v81;
    v88 = *(v81 + 32);
    v89 = v83;
    v88(v83, v86, v57);
    v90 = v246;
    if (a17 && v245)
    {
      v91 = v238 & 0xFFFFFFFFFFFFLL;
      if ((v246 & 0x2000000000000000) != 0)
      {
        v91 = (v246 >> 56) & 0xF;
      }

      if (v91)
      {
        v92 = HIBYTE(v244) & 0xF;
        if ((v244 & 0x2000000000000000) == 0)
        {
          v92 = a11 & 0xFFFFFFFFFFFFLL;
        }

        if (v92)
        {
          (*(v87 + 8))(v83, v57);
          goto LABEL_48;
        }
      }
    }

    v194 = (v246 >> 56) & 0xF;
    v93 = [objc_opt_self() defaultManager];
    sub_1A84E555C();
    v94 = sub_1A84E5D8C();

    v248 = 0;
    v95 = [v93 attributesOfItemAtPath:v94 error:&v248];

    v96 = v248;
    if (!v95)
    {
      v110 = v248;
      v111 = sub_1A84E548C();

      v215 = v111;
      swift_willThrow();
      v234 = 0;
      v112 = v210;
      sub_1A84E5C8C();
      v113 = v205;
      (*(v87 + 16))(v205, v89, v57);
      v114 = sub_1A84E5C7C();
      v115 = v87;
      v116 = v57;
      v117 = sub_1A84E619C();
      if (os_log_type_enabled(v114, v117))
      {
        v118 = v113;
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v248 = v120;
        *v119 = 136315138;
        v121 = sub_1A84E555C();
        v122 = v116;
        v193 = v116;
        v123 = v121;
        v125 = v124;
        v126 = *(v115 + 8);
        v126(v118, v122);
        v127 = sub_1A82446BC(v123, v125, &v248);

        *(v119 + 4) = v127;
        _os_log_impl(&dword_1A823F000, v114, v117, "Failed to get file attributes for file ath path: %s", v119, 0xCu);
        sub_1A8244788(v120);
        MEMORY[0x1AC56D3F0](v120, -1, -1);
        MEMORY[0x1AC56D3F0](v119, -1, -1);

        (*(v206 + 8))(v210, v207);
        v126(v231, v193);
        goto LABEL_8;
      }

      v139 = *(v115 + 8);
      v139(v113, v116);
      (*(v206 + 8))(v112, v207);
      v139(v89, v116);
LABEL_48:
      v211 = v244;
      v210 = v90;
      goto LABEL_49;
    }

    type metadata accessor for FileAttributeKey(0);
    sub_1A8412804(&qword_1EB2E5B48, type metadata accessor for FileAttributeKey);
    v97 = sub_1A84E5D3C();
    v98 = v96;

    v99 = v232;
    v100 = HIBYTE(v232) & 0xF;
    if ((v232 & 0x2000000000000000) == 0)
    {
      v100 = v237 & 0xFFFFFFFFFFFFLL;
    }

    if (!v100)
    {

      v237 = sub_1A84E550C();
      v99 = v101;
    }

    v102 = v208;
    v103 = v211;
    if (*(v97 + 16) && (v104 = sub_1A8490560(*MEMORY[0x1E696A3D8]), (v105 & 1) != 0) && (sub_1A8244F40(*(v97 + 56) + 32 * v104, &v248), (swift_dynamicCast() & 1) != 0))
    {
      v232 = v247;
      sub_1A84E5C4C();
      sub_1A84E5C2C();
      v106 = v200;
      v107 = v201;
      if ((*(v200 + 48))(v103, 1, v201) == 1)
      {
        sub_1A824B2D4(v103, &qword_1EB2E7340, &qword_1A8501EF8);
        v211 = v244;
        v215 = v245;
        v102 = v208;
        if (v236)
        {
          goto LABEL_39;
        }
      }

      else
      {
        (*(v106 + 32))(v199, v103, v107);
        v180 = v244;
        v181 = HIBYTE(v244) & 0xF;
        v182 = v214;
        if ((v244 & 0x2000000000000000) == 0)
        {
          v181 = v214 & 0xFFFFFFFFFFFFLL;
        }

        v102 = v208;
        if (!v181)
        {
          v182 = sub_1A84E5C1C();
          v180 = v183;
        }

        v211 = v180;
        v214 = v182;
        v215 = v245;
        if (!v245)
        {
          v213 = sub_1A84E5C3C();
          v215 = v184;
        }

        (*(v200 + 8))(v199, v201);
        if (v236)
        {
LABEL_39:
          v131 = v238 & 0xFFFFFFFFFFFFLL;
          v132 = v246;
          if ((v246 & 0x2000000000000000) != 0)
          {
            v131 = v194;
          }

          if (v131)
          {
            (*(v87 + 8))(v83, v57);

            v210 = v132;
LABEL_51:
            v140 = v213;
            LODWORD(v233) = a26;
            v141 = v241;
            v142 = v221;
            *v241 = v220;
            v141[1] = v142;
            v141[2] = v212;
            if (v240)
            {

              v143 = v240;
              v144 = v209;
            }

            else
            {

              v144 = 0;
              v143 = 0xE000000000000000;
            }

            v145 = v241;
            v241[3] = v144;
            v145[4] = v143;
            v146 = v238;
            v145[5] = v237;
            v145[6] = v99;
            v147 = v218;
            v148 = (v145 + v218[14]);
            v149 = v210;
            *v148 = v146;
            v148[1] = v149;
            *(v145 + v147[15]) = v236;
            v150 = v211;
            v145[7] = v214;
            v145[8] = v150;
            v151 = v215;
            v145[9] = v140;
            v145[10] = v151;
            sub_1A8243D74(v243, v145 + v147[10], &qword_1EB2E7068, &unk_1A8501EB0);
            *(v145 + v147[11]) = v239 & 1;
            *(v145 + v147[12]) = v235 & 1;
            *(v145 + v147[13]) = a18 & 1;
            *(v145 + v147[18]) = a19 & 1;
            *(v145 + v147[16]) = a20 & 1;
            *(v145 + v147[17]) = a21 & 1;
            v152 = (v145 + v147[19]);
            v153 = v222;
            *v152 = a22;
            v152[1] = v153;
            v154 = (v145 + v147[20]);
            v155 = v223;
            *v154 = a24;
            v154[1] = v155;
            v156 = v230;
            sub_1A8243D74(v230, v145 + v147[21], &qword_1EB2E7348, &qword_1A8504400);
            *(v145 + v147[22]) = v233 & 1;
            v157 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
            v158 = *(*(v157 - 8) + 8);
            v158(v145 + v224, v157);
            v247 = v226;
            sub_1A84E5B8C();
            sub_1A84E594C();
            v158(v145 + v225, v157);
            v247 = v228;
            sub_1A84E5B8C();
            sub_1A84E594C();
            v158(v145 + v227, v157);
            v247 = v229;
            sub_1A84E5B8C();
            sub_1A84E594C();
            sub_1A824B2D4(v156, &qword_1EB2E7348, &qword_1A8504400);
            result = sub_1A824B2D4(v243, &qword_1EB2E7068, &unk_1A8501EB0);
            *(v145 + v147[23]) = v219;
            goto LABEL_55;
          }

          if (*(v97 + 16) && (v133 = sub_1A8490560(*MEMORY[0x1E696A308]), (v134 & 1) != 0))
          {
            sub_1A8244F40(*(v97 + 56) + 32 * v133, &v248);

            v135 = v202;
            v136 = v204;
            v137 = swift_dynamicCast();
            v138 = v203;
            (*(v203 + 56))(v135, v137 ^ 1u, 1, v136);
            if ((*(v138 + 48))(v135, 1, v136) != 1)
            {
              v232 = v99;
              (*(v138 + 32))(v102, v135, v136);
              v238 = objc_opt_self();
              v185 = sub_1A84E565C();
              if (qword_1EB2E5990 != -1)
              {
                swift_once();
              }

              v186 = v197;
              v187 = sub_1A824431C(v197, qword_1EB2E7FC8);
              swift_beginAccess();
              v188 = v196;
              v189 = v195;
              (*(v196 + 16))(v195, v187, v186);
              v190 = sub_1A84E576C();
              (*(v188 + 8))(v189, v186);
              v191 = [v238 stringFromDate:v185 timeZone:v190 formatOptions:1907];

              v238 = sub_1A84E5DBC();
              v210 = v192;

              (*(v138 + 8))(v208, v136);
              (*(v233 + 8))(v231, v57);
              goto LABEL_50;
            }

            (*(v233 + 8))(v83, v57);
          }

          else
          {

            (*(v87 + 8))(v83, v57);
            v135 = v202;
            (*(v203 + 56))(v202, 1, 1, v204);
          }

          sub_1A824B2D4(v135, &qword_1EB2E6F48, &unk_1A8501F00);
          v210 = v246;
          goto LABEL_51;
        }
      }
    }

    else
    {
      v211 = v244;
      v215 = v245;
      if (v236)
      {
        goto LABEL_39;
      }
    }

    if (*(v97 + 16) && (v108 = sub_1A8490560(*MEMORY[0x1E696A3B8]), (v109 & 1) != 0) && (sub_1A8244F40(*(v97 + 56) + 32 * v108, &v248), (swift_dynamicCast() & 1) != 0))
    {
      v236 = v247;
    }

    else
    {
      v236 = 0;
    }

    goto LABEL_39;
  }

  v248 = 0;
  v249 = 0xE000000000000000;
  sub_1A84E646C();

  v248 = 0xD00000000000002ELL;
  v249 = 0x80000001A8530150;
  v161 = v214;
  v162 = sub_1A84E555C();
  MEMORY[0x1AC56A990](v162);

  v163 = v248;
  v164 = v249;
  sub_1A8412484();
  v165 = swift_allocError();
  *v166 = v163;
  *(v166 + 8) = v164;
  *(v166 + 16) = 1;
  swift_willThrow();

  (*(v77 + 8))(v161, v57);
  v167 = v165;
  v168 = v213;
  sub_1A84E5C8C();
  v169 = v165;
  v170 = sub_1A84E5C7C();
  v171 = sub_1A84E619C();
  v172 = v165;

  if (os_log_type_enabled(v170, v171))
  {
    v173 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    *v173 = 138412290;
    v175 = v172;
    v176 = _swift_stdlib_bridgeErrorToNSError();
    *(v173 + 4) = v176;
    *v174 = v176;
    _os_log_impl(&dword_1A823F000, v170, v171, "Failed to create an attachment with error: %@", v173, 0xCu);
    sub_1A824B2D4(v174, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v174, -1, -1);
    MEMORY[0x1AC56D3F0](v173, -1, -1);
  }

  (*(v206 + 8))(v168, v207);
  swift_willThrow();
  sub_1A824B2D4(v230, &qword_1EB2E7348, &qword_1A8504400);
  sub_1A824B2D4(v243, &qword_1EB2E7068, &unk_1A8501EB0);

  v177 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v178 = *(*(v177 - 8) + 8);
  v179 = v241;
  v178(v241 + v224, v177);
  v178(&v179[v225], v177);
  result = (v178)(&v179[v227], v177);
LABEL_55:
  v160 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1A840D3B0()
{
  result = qword_1EB2E7350;
  if (!qword_1EB2E7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7350);
  }

  return result;
}

unint64_t sub_1A840D404(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x65636E6575716573;
      break;
    case 2:
      result = 0x496567617373656DLL;
      break;
    case 3:
      result = 0x656D614E656C6966;
      break;
    case 4:
      result = 0x54746E65746E6F63;
      break;
    case 5:
      result = 0x65707954656D696DLL;
      break;
    case 6:
      result = 0x68746150656C6966;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
    case 19:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6C6E776F44736177;
      break;
    case 10:
      result = 0x4464657461657263;
      break;
    case 11:
      result = 0x7479426C61746F74;
      break;
    case 12:
      result = 0x656B636974537369;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x696F6774754F7369;
      break;
    case 15:
      result = 0xD00000000000001BLL;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
      result = 0x64616F6C6E776F64;
      break;
    case 18:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0x5572656B63697473;
      break;
    case 22:
      result = 0x7475626972747461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A840D6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8412E70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A840D6F4(uint64_t a1)
{
  v2 = sub_1A84124D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A840D730(uint64_t a1)
{
  v2 = sub_1A84124D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Attachment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E7360, &qword_1A8501F18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v48 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84124D8();
  sub_1A84E68AC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v50) = 0;
  sub_1A84E66CC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  LOBYTE(v50) = 1;
  sub_1A84E673C();
  v14 = v3[3];
  v15 = v3[4];
  LOBYTE(v50) = 2;
  sub_1A84E66CC();
  v16 = v3[5];
  v17 = v3[6];
  LOBYTE(v50) = 3;
  sub_1A84E66CC();
  v18 = v3[7];
  v19 = v3[8];
  LOBYTE(v50) = 4;
  sub_1A84E66CC();
  v20 = v3[9];
  v21 = v3[10];
  LOBYTE(v50) = 5;
  sub_1A84E66AC();
  v22 = type metadata accessor for ImportExport.Attachment();
  v23 = v22[10];
  LOBYTE(v50) = 6;
  sub_1A84E558C();
  sub_1A8412804(&qword_1EB2E7200, MEMORY[0x1E6968FB0]);
  sub_1A84E66BC();
  v24 = *(v3 + v22[11]);
  LOBYTE(v50) = 7;
  sub_1A84E66DC();
  v25 = *(v3 + v22[12]);
  LOBYTE(v50) = 8;
  sub_1A84E66DC();
  v26 = *(v3 + v22[13]);
  LOBYTE(v50) = 9;
  sub_1A84E66DC();
  v27 = v6;
  v28 = (v3 + v22[14]);
  v29 = *v28;
  v30 = v28[1];
  LOBYTE(v50) = 10;
  sub_1A84E66CC();
  v31 = *(v3 + v22[15]);
  LOBYTE(v50) = 11;
  sub_1A84E673C();
  v32 = *(v3 + v22[16]);
  LOBYTE(v50) = 12;
  sub_1A84E66DC();
  v33 = *(v3 + v22[17]);
  LOBYTE(v50) = 13;
  sub_1A84E66DC();
  v34 = *(v3 + v22[18]);
  LOBYTE(v50) = 14;
  sub_1A84E66DC();
  v35 = (v3 + v22[19]);
  v36 = *v35;
  v37 = v35[1];
  LOBYTE(v50) = 15;
  sub_1A84E66AC();
  v38 = (v3 + v22[20]);
  v39 = *v38;
  v40 = v38[1];
  LOBYTE(v50) = 16;
  sub_1A84E66AC();
  v41 = v22[21];
  LOBYTE(v50) = 17;
  type metadata accessor for ImportExport.AttachmentDownloadError();
  sub_1A8412804(&qword_1EB2E6D80, type metadata accessor for ImportExport.AttachmentDownloadError);
  sub_1A84E66BC();
  v42 = *(v3 + v22[22]);
  LOBYTE(v50) = 18;
  sub_1A84E66DC();
  v50 = *(v3 + v22[23]);
  v49 = 19;
  sub_1A841252C();
  sub_1A84E672C();
  v43 = v22[24];
  LOBYTE(v50) = 20;
  v44 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A83F0624(&qword_1EB2E7378, &qword_1EB2E6F60, &qword_1A8501F10);
  v48 = v44;
  sub_1A84E672C();
  v45 = v22[25];
  LOBYTE(v50) = 21;
  sub_1A84E672C();
  v46 = v22[26];
  LOBYTE(v50) = 22;
  sub_1A84E672C();
  return (*(v27 + 8))(v9, v5);
}

uint64_t ImportExport.Attachment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v107 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v102 = *(v107 - 8);
  v3 = v102[8];
  v4 = MEMORY[0x1EEE9AC00](v107);
  v96 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v95 = v94 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v99 = v94 - v8;
  v9 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v94 - v11;
  v13 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v94 - v15;
  v100 = sub_1A83EA2FC(&qword_1EB2E7380, &unk_1A8501F20);
  v98 = *(v100 - 8);
  v17 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v19 = v94 - v18;
  v20 = sub_1A84E5B9C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = type metadata accessor for ImportExport.Attachment();
  v23 = *(*(v22 - 1) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v24 + 96);
  v111 = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v106 = v27;
  sub_1A84E594C();
  v28 = v22[25];
  v111 = 0;
  sub_1A84E5B8C();
  v103 = v28;
  sub_1A84E594C();
  v29 = v22[26];
  v111 = 0;
  sub_1A84E5B8C();
  v104 = v29;
  v108 = v26;
  sub_1A84E594C();
  v31 = a1[3];
  v30 = a1[4];
  v105 = a1;
  sub_1A82471E0(a1, v31);
  sub_1A84124D8();
  v101 = v19;
  v32 = v109;
  sub_1A84E689C();
  if (v32)
  {
    v109 = v32;
    v40 = v104;
    v41 = v108;
    sub_1A8244788(v105);
LABEL_4:
    v42 = v102[1];
    v43 = v107;
    v42(v41 + v106, v107);
    v42(v41 + v103, v43);
    return (v42)(v41 + v40, v43);
  }

  v33 = v16;
  v34 = v12;
  v35 = v98;
  v36 = v99;
  LOBYTE(v111) = 0;
  v38 = v100;
  v37 = v101;
  v39 = sub_1A84E660C();
  v41 = v108;
  *v108 = v39;
  v41[1] = v45;
  LOBYTE(v111) = 1;
  v41[2] = sub_1A84E667C();
  LOBYTE(v111) = 2;
  v41[3] = sub_1A84E660C();
  v41[4] = v51;
  LOBYTE(v111) = 3;
  v41[5] = sub_1A84E660C();
  v41[6] = v52;
  LOBYTE(v111) = 4;
  v41[7] = sub_1A84E660C();
  v41[8] = v53;
  LOBYTE(v111) = 5;
  v54 = sub_1A84E65DC();
  v109 = 0;
  v41[9] = v54;
  v41[10] = v55;
  v94[1] = sub_1A84E558C();
  LOBYTE(v111) = 6;
  sub_1A8412804(&qword_1EB2E7218, MEMORY[0x1E6968FB0]);
  v56 = v109;
  sub_1A84E65FC();
  v109 = v56;
  if (v56)
  {
    (*(v35 + 8))(v37, v38);
    v57 = 0;
    goto LABEL_5;
  }

  sub_1A8412580(v33, v41 + v22[10], &qword_1EB2E7068, &unk_1A8501EB0);
  LOBYTE(v111) = 7;
  v58 = v109;
  v59 = sub_1A84E661C();
  if (v58)
  {
    v109 = v58;
    (*(v35 + 8))(v101, v38);
    v57 = 1;
    goto LABEL_5;
  }

  *(v41 + v22[11]) = v59 & 1;
  LOBYTE(v111) = 8;
  v60 = sub_1A84E661C();
  v109 = 0;
  *(v41 + v22[12]) = v60 & 1;
  LOBYTE(v111) = 9;
  v61 = v109;
  v62 = sub_1A84E661C();
  v109 = v61;
  if (v61)
  {
    (*(v35 + 8))(v101, v100);
    v57 = 1;
    v41 = v108;
LABEL_5:
    sub_1A8244788(v105);
    v46 = v41[1];

    v47 = v41[4];

    v49 = v41[6];

    v40 = v104;
    v48 = v41[8];

    v50 = v41[10];

    if (v57)
    {
      sub_1A824B2D4(v41 + v22[10], &qword_1EB2E7068, &unk_1A8501EB0);
    }

    goto LABEL_4;
  }

  *(v108 + v22[13]) = v62 & 1;
  LOBYTE(v111) = 10;
  v63 = sub_1A84E660C();
  v109 = 0;
  v64 = (v108 + v22[14]);
  *v64 = v63;
  v64[1] = v65;
  LOBYTE(v111) = 11;
  v66 = sub_1A84E667C();
  v109 = 0;
  *(v108 + v22[15]) = v66;
  LOBYTE(v111) = 12;
  v67 = sub_1A84E661C();
  v109 = 0;
  *(v108 + v22[16]) = v67 & 1;
  LOBYTE(v111) = 13;
  v68 = sub_1A84E661C();
  v109 = 0;
  *(v108 + v22[17]) = v68 & 1;
  LOBYTE(v111) = 14;
  v69 = sub_1A84E661C();
  v109 = 0;
  *(v108 + v22[18]) = v69 & 1;
  LOBYTE(v111) = 15;
  v70 = sub_1A84E65DC();
  v109 = 0;
  v71 = (v108 + v22[19]);
  *v71 = v70;
  v71[1] = v72;
  LOBYTE(v111) = 16;
  v73 = sub_1A84E65DC();
  v109 = 0;
  v75 = (v108 + v22[20]);
  *v75 = v73;
  v75[1] = v74;
  type metadata accessor for ImportExport.AttachmentDownloadError();
  LOBYTE(v111) = 17;
  sub_1A8412804(&qword_1EB2E6D98, type metadata accessor for ImportExport.AttachmentDownloadError);
  v76 = v109;
  sub_1A84E65FC();
  v77 = v76;
  if (v76)
  {
    (*(v35 + 8))(v101, v100);
    v109 = v76;
    goto LABEL_23;
  }

  sub_1A8412580(v34, v108 + v22[21], &qword_1EB2E7348, &qword_1A8504400);
  LOBYTE(v111) = 18;
  v78 = sub_1A84E661C();
  v109 = 0;
  *(v108 + v22[22]) = v78 & 1;
  v110 = 19;
  sub_1A84125E8();
  v79 = v109;
  sub_1A84E666C();
  v109 = v79;
  if (v79)
  {
    goto LABEL_22;
  }

  *(v108 + v22[23]) = v111;
  LOBYTE(v111) = 20;
  sub_1A83F0624(&qword_1EB2E7390, &qword_1EB2E6F60, &qword_1A8501F10);
  v80 = v109;
  sub_1A84E666C();
  v109 = v80;
  if (v80)
  {
    goto LABEL_22;
  }

  v81 = v102[5];
  v81(v108 + v106, v36, v107);
  LOBYTE(v111) = 21;
  v82 = v109;
  sub_1A84E666C();
  v109 = v82;
  if (v82 || (v81(v108 + v103, v95, v107), LOBYTE(v111) = 22, v83 = v109, sub_1A84E666C(), (v109 = v83) != 0))
  {
LABEL_22:
    (*(v35 + 8))(v101, v100);
LABEL_23:
    sub_1A8244788(v105);
    v84 = v108;
    v85 = v108[1];

    v86 = v84[4];

    v87 = v84[6];

    v88 = v84[8];

    v89 = v84[10];

    sub_1A824B2D4(v84 + v22[10], &qword_1EB2E7068, &unk_1A8501EB0);
    v90 = *(v84 + v22[14] + 8);

    v91 = *(v84 + v22[19] + 8);

    v92 = *(v84 + v22[20] + 8);

    if (v77)
    {
      v40 = v104;
      v41 = v108;
    }

    else
    {
      v41 = v108;
      sub_1A824B2D4(v108 + v22[21], &qword_1EB2E7348, &qword_1A8504400);
      v40 = v104;
    }

    goto LABEL_4;
  }

  (*(v35 + 8))(v101, v100);
  v93 = v108;
  v81(v108 + v104, v96, v107);
  sub_1A841269C(v93, v97, type metadata accessor for ImportExport.Attachment);
  sub_1A8244788(v105);
  return sub_1A841263C(v93, type metadata accessor for ImportExport.Attachment);
}

uint64_t sub_1A840EAF0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1A840EB58@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ImportExport.Attachment.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1A84E5E5C();
}

uint64_t ImportExport.Attachment.hashValue.getter()
{
  sub_1A84E684C();
  v1 = *v0;
  v2 = v0[1];
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A840EBB0()
{
  sub_1A84E684C();
  v1 = *v0;
  v2 = v0[1];
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t sub_1A840EBF4()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1A84E5E5C();
}

uint64_t sub_1A840EBFC()
{
  sub_1A84E684C();
  v1 = *v0;
  v2 = v0[1];
  sub_1A84E5E5C();
  return sub_1A84E687C();
}

uint64_t ImportExport.Attachment.description.getter()
{
  v1 = v0;
  v2 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v59 - v4;
  v6 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v59 - v8;
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0x656D686361747441, 0xEA0000000000746ELL);
  MEMORY[0x1AC56A990](0x3A6469203ALL, 0xE500000000000000);
  MEMORY[0x1AC56A990](*v1, v1[1]);
  MEMORY[0x1AC56A990](0x67617373656D202CLL, 0xED0000203A444965);
  MEMORY[0x1AC56A990](v1[3], v1[4]);
  MEMORY[0x1AC56A990](0x614E656C6966202CLL, 0xEC000000203A656DLL);
  MEMORY[0x1AC56A990](v1[5], v1[6]);
  MEMORY[0x1AC56A990](0x6150656C6966202CLL, 0xEC000000203A6874);
  v10 = type metadata accessor for ImportExport.Attachment();
  sub_1A8243D74(v0 + v10[10], v9, &qword_1EB2E7068, &unk_1A8501EB0);
  v11 = sub_1A84E558C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1A824B2D4(v9, &qword_1EB2E7068, &unk_1A8501EB0);
    v13 = 0xE300000000000000;
    v14 = 7104878;
  }

  else
  {
    v15 = sub_1A84E555C();
    v13 = v16;
    (*(v12 + 8))(v9, v11);
    v14 = v15;
  }

  MEMORY[0x1AC56A990](v14, v13);

  MEMORY[0x1AC56A990](10272, 0xE200000000000000);
  if (*(v1 + v10[12]))
  {
    v17 = 0x65766974616C6572;
  }

  else
  {
    v17 = 0x6574756C6F736261;
  }

  MEMORY[0x1AC56A990](v17, 0xE800000000000000);

  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A8530180);
  if (*(v1 + v10[11]))
  {
    v18 = 1702195828;
  }

  else
  {
    v18 = 0x65736C6166;
  }

  if (*(v1 + v10[11]))
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v18, v19);

  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A85301A0);
  v60 = *(v1 + v10[23]);
  ImportExport.Attachment.MissingFileReasons.description.getter();
  MEMORY[0x1AC56A990]();

  MEMORY[0x1AC56A990](0x6774754F7369202CLL, 0xEE00203A676E696FLL);
  if (*(v1 + v10[18]))
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (*(v1 + v10[18]))
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v20, v21);

  MEMORY[0x1AC56A990](0x6369745373690A2CLL, 0xED0000203A72656BLL);
  if (*(v1 + v10[16]))
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (*(v1 + v10[16]))
  {
    v23 = 0xE400000000000000;
  }

  else
  {
    v23 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v22, v23);

  MEMORY[0x1AC56A990](0x736E655373690A2CLL, 0xEF203A6576697469);
  if (*(v1 + v10[17]))
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (*(v1 + v10[17]))
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v24, v25);

  MEMORY[0x1AC56A990](0x6E65746E6F630A2CLL, 0xEF203A6570795474);
  MEMORY[0x1AC56A990](v1[7], v1[8]);
  MEMORY[0x1AC56A990](0xD00000000000001FLL, 0x80000001A85301C0);
  v26 = (v1 + v10[19]);
  if (v26[1])
  {
    v27 = *v26;
    v28 = v26[1];
  }

  else
  {
    v28 = 0xE300000000000000;
    v27 = 7104878;
  }

  MEMORY[0x1AC56A990](v27, v28);

  MEMORY[0x1AC56A990](0xD00000000000001ELL, 0x80000001A85301E0);
  v29 = (v1 + v10[20]);
  if (v29[1])
  {
    v30 = *v29;
    v31 = v29[1];
  }

  else
  {
    v31 = 0xE300000000000000;
    v30 = 7104878;
  }

  MEMORY[0x1AC56A990](v30, v31);

  MEMORY[0x1AC56A990](0x426C61746F74202CLL, 0xEE00203A73657479);
  v60 = *(v1 + v10[15]);
  v32 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v32);

  MEMORY[0x1AC56A990](0x657461657263202CLL, 0xEF203A6574614464);
  MEMORY[0x1AC56A990](*(v1 + v10[14]), *(v1 + v10[14] + 8));
  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A8530200);
  v33 = ImportExport.Attachment.existsOnDisk.getter();
  v34 = (v33 & 1) == 0;
  if (v33)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v34)
  {
    v36 = 0xE500000000000000;
  }

  else
  {
    v36 = 0xE400000000000000;
  }

  MEMORY[0x1AC56A990](v35, v36);

  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A8530220);
  if (*(v1 + v10[13]))
  {
    v37 = 1702195828;
  }

  else
  {
    v37 = 0x65736C6166;
  }

  if (*(v1 + v10[13]))
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v37, v38);

  MEMORY[0x1AC56A990](0xD000000000000011, 0x80000001A8530240);
  sub_1A8243D74(v1 + v10[21], v5, &qword_1EB2E7348, &qword_1A8504400);
  v39 = type metadata accessor for ImportExport.AttachmentDownloadError();
  if ((*(*(v39 - 8) + 48))(v5, 1, v39) == 1)
  {
    sub_1A824B2D4(v5, &qword_1EB2E7348, &qword_1A8504400);
    v40 = 0xE300000000000000;
    v41 = 7104878;
  }

  else
  {
    v42 = ImportExport.AttachmentDownloadError.description.getter();
    v40 = v43;
    sub_1A841263C(v5, type metadata accessor for ImportExport.AttachmentDownloadError);
    v41 = v42;
  }

  MEMORY[0x1AC56A990](v41, v40);

  MEMORY[0x1AC56A990](0xD000000000000018, 0x80000001A8530260);
  if (*(v1 + v10[22]))
  {
    v44 = 1702195828;
  }

  else
  {
    v44 = 0x65736C6166;
  }

  if (*(v1 + v10[22]))
  {
    v45 = 0xE400000000000000;
  }

  else
  {
    v45 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v44, v45);

  MEMORY[0x1AC56A990](0xD000000000000014, 0x80000001A8530280);
  v46 = v10[24];
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  if (v60)
  {
    v47 = sub_1A84E5D4C();
    v49 = v48;
  }

  else
  {
    v49 = 0xE300000000000000;
    v47 = 7104878;
  }

  MEMORY[0x1AC56A990](v47, v49);

  MEMORY[0x1AC56A990](0xD000000000000013, 0x80000001A85302A0);
  v50 = v1 + v10[25];
  sub_1A84E595C();
  if (v60)
  {
    v51 = sub_1A84E5D4C();
    v53 = v52;
  }

  else
  {
    v53 = 0xE300000000000000;
    v51 = 7104878;
  }

  MEMORY[0x1AC56A990](v51, v53);

  MEMORY[0x1AC56A990](0xD000000000000013, 0x80000001A85302C0);
  v54 = v1 + v10[26];
  sub_1A84E595C();
  if (v60)
  {
    v55 = sub_1A84E5D4C();
    v57 = v56;
  }

  else
  {
    v57 = 0xE300000000000000;
    v55 = 7104878;
  }

  MEMORY[0x1AC56A990](v55, v57);

  MEMORY[0x1AC56A990](4071468, 0xE300000000000000);
  return v61;
}

uint64_t static ImportExport.Attachment.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

uint64_t sub_1A840F5C0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A84E67AC();
  }
}

void ImportExport.Attachment.MissingFileReasons.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *v0;
LABEL_2:
  if (v1 <= 9)
  {
    v4 = 9;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_1F1B6FE68 + 24 * v1 + 32);
  while (v1 != 9)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 3;
    v8 = *v6;
    v6 += 3;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A83EF554(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_1A83EF554((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  if (v14)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v14, 0);
    v15 = v2 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v21 + 16);
      v18 = *(v21 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1A83EF534((v18 > 1), v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950);
  sub_1A84E5D6C();
}

uint64_t ImportExport.Attachment.update(downloadError:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v207 = a1;
  v211 = a2;
  v215[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v170 = &v155 - v6;
  v162 = sub_1A84E5C5C();
  v161 = *(v162 - 8);
  v7 = *(v161 + 64);
  v8 = MEMORY[0x1EEE9AC00](v162);
  v159 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v160 = &v155 - v10;
  v157 = sub_1A84E577C();
  v156 = *(v157 - 8);
  v11 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v155 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v163 = &v155 - v15;
  v165 = sub_1A84E56DC();
  v164 = *(v165 - 8);
  v16 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v158 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1A84E5C9C();
  v168 = *(v169 - 8);
  v18 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v167 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_1A84E558C();
  v205 = *(v202 - 8);
  v20 = *(v205 + 64);
  v21 = MEMORY[0x1EEE9AC00](v202);
  v166 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v171 = &v155 - v23;
  v176 = sub_1A84E531C();
  v175 = *(v176 - 8);
  v24 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v174 = &v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A84E5B9C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v212 = &v155 - v32;
  v33 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v173 = &v155 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v155 - v37;
  v213 = &v155 - v37;
  v39 = v2[1];
  v197 = *v2;
  v40 = type metadata accessor for ImportExport.Attachment();
  sub_1A8243D74(v2 + v40[10], v38, &qword_1EB2E7068, &unk_1A8501EB0);
  v41 = v2[6];
  v206 = v2[5];
  v172 = v41;
  v42 = v2[4];
  v187 = v2[3];
  v43 = v2[8];
  v208 = v2[7];
  v44 = v2[10];
  v201 = v2[9];
  v45 = v40[14];
  v210 = *(v2 + v40[15]);
  v46 = (v2 + v45);
  v47 = v40[19];
  v195 = *(v2 + v40[18]);
  v48 = v40[17];
  v192 = *(v2 + v40[16]);
  v194 = *(v2 + v48);
  v49 = v46[1];
  v179 = *v46;
  v50 = *(v2 + v47 + 8);
  v191 = *(v2 + v47);
  v51 = (v2 + v40[20]);
  v52 = v51[1];
  v189 = *v51;
  v196 = *(v2 + v40[22]);
  v53 = v40[24];
  v190 = v52;

  v198 = v39;

  v188 = v42;
  v54 = v44;
  v55 = v211;

  v204 = v43;
  v56 = v205;

  v209 = v49;

  v193 = v50;

  v57 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v184 = v215[0];
  v58 = v3 + v40[25];
  sub_1A84E595C();
  v185 = v215[0];
  v59 = v3 + v40[26];
  v199 = v57;
  sub_1A84E595C();
  v186 = v215[0];
  v60 = v207;
  v61 = v212;
  sub_1A841269C(v207, v212, type metadata accessor for ImportExport.AttachmentDownloadError);
  v62 = type metadata accessor for ImportExport.AttachmentDownloadError();
  (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
  v63 = v40[24];
  v178 = *(v3 + v40[23]);
  v177 = *(v60 + *(v62 + 36));
  v64 = v3[2];
  v65 = v55 + v63;
  v215[0] = 0;
  sub_1A84E5B8C();
  v66 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  v67 = v55 + v40[25];
  v215[0] = 0;
  sub_1A84E5B8C();
  v180 = v67;
  sub_1A84E594C();
  v181 = v40;
  v68 = v55 + v40[26];
  v215[0] = 0;
  sub_1A84E5B8C();
  v182 = v68;
  v200 = v29;
  v69 = v202;
  v183 = v66;
  sub_1A84E594C();
  v215[0] = v206;
  v215[1] = v172;
  v70 = v174;
  sub_1A84E530C();
  sub_1A840D3B0();
  v206 = sub_1A84E636C();
  v207 = v71;
  v72 = v70;
  v73 = v173;
  (*(v175 + 8))(v72, v176);
  sub_1A8243D74(v213, v73, &qword_1EB2E7068, &unk_1A8501EB0);
  if ((*(v56 + 48))(v73, 1, v69) != 1)
  {
    v175 = v64;
    v176 = v65;
    v78 = v171;
    (*(v56 + 32))(v171, v73, v69);
    v75 = v209;
    v79 = HIBYTE(v209) & 0xF;
    v76 = v210;
    v77 = v179;
    if (v210 && v54)
    {
      v80 = v179 & 0xFFFFFFFFFFFFLL;
      if ((v209 & 0x2000000000000000) != 0)
      {
        v80 = HIBYTE(v209) & 0xF;
      }

      if (v80)
      {
        v81 = HIBYTE(v204) & 0xF;
        if ((v204 & 0x2000000000000000) == 0)
        {
          v81 = v208 & 0xFFFFFFFFFFFFLL;
        }

        if (v81)
        {
          v82 = v208;
          (*(v56 + 8))(v78, v69);
          v74 = v82;
          v65 = v176;
          v64 = v175;
          goto LABEL_45;
        }
      }
    }

    v174 = v54;
    v83 = [objc_opt_self() defaultManager];
    sub_1A84E555C();
    v84 = sub_1A84E5D8C();

    v215[0] = 0;
    v85 = [v83 attributesOfItemAtPath:v84 error:v215];

    v86 = v215[0];
    if (!v85)
    {
      v98 = v215[0];
      v99 = sub_1A84E548C();

      swift_willThrow();
      v203 = 0;
      v100 = v167;
      sub_1A84E5C8C();
      v101 = v166;
      (*(v56 + 16))(v166, v78, v69);
      v102 = sub_1A84E5C7C();
      v103 = v69;
      v104 = sub_1A84E619C();
      if (os_log_type_enabled(v102, v104))
      {
        v105 = swift_slowAlloc();
        v173 = v99;
        v106 = v105;
        v172 = swift_slowAlloc();
        v215[0] = v172;
        *v106 = 136315138;
        v107 = sub_1A84E555C();
        v108 = v101;
        v110 = v109;
        v111 = *(v56 + 8);
        v111(v108, v103);
        v112 = sub_1A82446BC(v107, v110, v215);

        *(v106 + 4) = v112;
        _os_log_impl(&dword_1A823F000, v102, v104, "Failed to get file attributes for file ath path: %s", v106, 0xCu);
        v113 = v172;
        sub_1A8244788(v172);
        MEMORY[0x1AC56D3F0](v113, -1, -1);
        MEMORY[0x1AC56D3F0](v106, -1, -1);

        (*(v168 + 8))(v100, v169);
        v111(v171, v202);
      }

      else
      {

        v122 = *(v56 + 8);
        v122(v101, v103);
        (*(v168 + 8))(v100, v169);
        v122(v171, v103);
      }

      v54 = v174;
      v75 = v209;
      v76 = v210;
      goto LABEL_44;
    }

    type metadata accessor for FileAttributeKey(0);
    sub_1A8412804(&qword_1EB2E5B48, type metadata accessor for FileAttributeKey);
    v87 = sub_1A84E5D3C();
    v88 = v86;

    v89 = HIBYTE(v207) & 0xF;
    if ((v207 & 0x2000000000000000) == 0)
    {
      v89 = v206 & 0xFFFFFFFFFFFFLL;
    }

    if (!v89)
    {

      v206 = sub_1A84E550C();
      v207 = v90;
    }

    v75 = v209;
    v91 = v170;
    if (*(v87 + 16) && (v92 = sub_1A8490560(*MEMORY[0x1E696A3D8]), (v93 & 1) != 0) && (sub_1A8244F40(*(v87 + 56) + 32 * v92, v215), swift_dynamicCast()))
    {
      sub_1A84E5C4C();
      sub_1A84E5C2C();
      v94 = v161;
      v95 = v162;
      if ((*(v161 + 48))(v91, 1, v162) != 1)
      {
        (*(v94 + 32))(v160, v91, v95);
        v140 = HIBYTE(v204) & 0xF;
        if ((v204 & 0x2000000000000000) == 0)
        {
          v140 = v208 & 0xFFFFFFFFFFFFLL;
        }

        v76 = v210;
        if (!v140)
        {
          v208 = sub_1A84E5C1C();
          v142 = v141;

          v204 = v142;
          v76 = v210;
        }

        v75 = v209;
        if (!v174)
        {
          v143 = sub_1A84E5C3C();
          v76 = v210;
          v201 = v143;
          v174 = v144;
        }

        (*(v161 + 8))(v160, v162);
        if (v76)
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      }

      sub_1A824B2D4(v91, &qword_1EB2E7340, &qword_1A8501EF8);
      v75 = v209;
      v76 = v210;
      if (!v210)
      {
LABEL_24:
        if (*(v87 + 16) && (v96 = sub_1A8490560(*MEMORY[0x1E696A3B8]), (v97 & 1) != 0) && (sub_1A8244F40(*(v87 + 56) + 32 * v96, v215), swift_dynamicCast()))
        {
          v76 = v214;
        }

        else
        {
          v76 = 0;
        }
      }
    }

    else
    {
      v76 = v210;
      if (!v210)
      {
        goto LABEL_24;
      }
    }

LABEL_31:
    v114 = v77 & 0xFFFFFFFFFFFFLL;
    if ((v75 & 0x2000000000000000) != 0)
    {
      v114 = v79;
    }

    if (v114)
    {
      (*(v205 + 8))(v78, v69);
    }

    else
    {
      if (*(v87 + 16) && (v115 = *MEMORY[0x1E696A308], v210 = v76, v116 = sub_1A8490560(v115), v76 = v210, (v117 & 1) != 0))
      {
        sub_1A8244F40(*(v87 + 56) + 32 * v116, v215);

        v118 = v163;
        v119 = v165;
        v120 = swift_dynamicCast();
        v121 = v164;
        (*(v164 + 56))(v118, v120 ^ 1u, 1, v119);
        if ((*(v121 + 48))(v118, 1, v119) != 1)
        {
          (*(v121 + 32))();
          v179 = objc_opt_self();
          v145 = sub_1A84E565C();
          v146 = v205;
          if (qword_1EB2E5990 != -1)
          {
            swift_once();
          }

          v147 = v157;
          v148 = sub_1A824431C(v157, qword_1EB2E7FC8);
          swift_beginAccess();
          v149 = v156;
          v150 = v155;
          (*(v156 + 16))(v155, v148, v147);
          v151 = sub_1A84E576C();
          (*(v149 + 8))(v150, v147);
          v152 = [v179 stringFromDate:v145 timeZone:v151 formatOptions:1907];

          v77 = sub_1A84E5DBC();
          v154 = v153;

          (*(v121 + 8))(v158, v165);
          (*(v146 + 8))(v78, v69);
          v75 = v154;
          v54 = v174;
          v76 = v210;
          goto LABEL_44;
        }

        (*(v205 + 8))(v78, v69);
      }

      else
      {

        (*(v205 + 8))(v78, v69);
        v118 = v163;
        (*(v164 + 56))(v163, 1, 1, v165);
      }

      sub_1A824B2D4(v118, &qword_1EB2E6F48, &unk_1A8501F00);
    }

    v54 = v174;
LABEL_44:
    v65 = v176;
    v64 = v175;
    v74 = v208;
    goto LABEL_45;
  }

  sub_1A824B2D4(v73, &qword_1EB2E7068, &unk_1A8501EB0);
  v74 = v208;
  v75 = v209;
  v76 = v210;
  v77 = v179;
LABEL_45:
  v123 = v178 | v177;
  v124 = v211;
  v125 = v198;
  *v211 = v197;
  v124[1] = v125;
  v126 = v187;
  v124[2] = v64;
  v124[3] = v126;
  v127 = v206;
  v124[4] = v188;
  v124[5] = v127;
  v124[6] = v207;
  v128 = v181;
  v129 = (v124 + v181[14]);
  *v129 = v77;
  v129[1] = v75;
  *(v124 + v128[15]) = v76;
  v210 = v123 | 8;
  v130 = v204;
  v124[7] = v74;
  v124[8] = v130;
  v124[9] = v201;
  v124[10] = v54;
  sub_1A8243D74(v213, v124 + v128[10], &qword_1EB2E7068, &unk_1A8501EB0);
  *(v124 + v128[11]) = 0;
  *(v124 + v128[12]) = 0;
  *(v124 + v128[13]) = 1;
  *(v124 + v128[18]) = v195;
  *(v124 + v128[16]) = v192;
  *(v124 + v128[17]) = v194;
  v131 = (v124 + v128[19]);
  v132 = v193;
  *v131 = v191;
  v131[1] = v132;
  v133 = (v124 + v128[20]);
  v134 = v190;
  *v133 = v189;
  v133[1] = v134;
  v135 = v212;
  sub_1A8243D74(v212, v124 + v128[21], &qword_1EB2E7348, &qword_1A8504400);
  *(v124 + v128[22]) = v196;
  v136 = v199;
  v137 = *(*(v199 - 8) + 8);
  v137(v65, v199);
  v214 = v184;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v137(v180, v136);
  v214 = v185;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v137(v182, v136);
  v214 = v186;
  sub_1A84E5B8C();
  sub_1A84E594C();
  sub_1A824B2D4(v135, &qword_1EB2E7348, &qword_1A8504400);
  result = sub_1A824B2D4(v213, &qword_1EB2E7068, &unk_1A8501EB0);
  *(v124 + v128[23]) = v210;
  v139 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ImportExport.Attachment.update(missingFileReasons:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v179 = a2;
  v216[4] = *MEMORY[0x1E69E9840];
  v5 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v172 = &v156 - v7;
  v164 = sub_1A84E5C5C();
  v163 = *(v164 - 8);
  v8 = *(v163 + 64);
  v9 = MEMORY[0x1EEE9AC00](v164);
  v161 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v162 = &v156 - v11;
  v159 = sub_1A84E577C();
  v158 = *(v159 - 8);
  v12 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v165 = &v156 - v16;
  v167 = sub_1A84E56DC();
  v166 = *(v167 - 8);
  v17 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v160 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_1A84E5C9C();
  v169 = *(v170 - 8);
  v19 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v171 = &v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_1A84E558C();
  v206 = *(v208 - 8);
  v21 = *(v206 + 64);
  v22 = MEMORY[0x1EEE9AC00](v208);
  v168 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v173 = &v156 - v24;
  v178 = sub_1A84E531C();
  v177 = *(v178 - 8);
  v25 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v176 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A84E5B9C();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v213 = &v156 - v33;
  v34 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v175 = (&v156 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v156 - v38;
  v214 = &v156 - v38;
  v201 = *a1;
  v40 = v3[1];
  v198 = *v3;
  v41 = type metadata accessor for ImportExport.Attachment();
  sub_1A8243D74(v3 + v41[10], v39, &qword_1EB2E7068, &unk_1A8501EB0);
  v42 = v3[6];
  v207 = v3[5];
  v174 = v42;
  v43 = v3[4];
  v188 = v3[3];
  v44 = v3[8];
  v209 = v3[7];
  v45 = v3[10];
  v203 = v3[9];
  v46 = v41[14];
  v212 = *(v3 + v41[15]);
  v47 = (v3 + v46);
  v48 = v41[19];
  v196 = *(v3 + v41[18]);
  v49 = v41[17];
  v193 = *(v3 + v41[16]);
  v195 = *(v3 + v49);
  v50 = v47[1];
  v211 = *v47;
  v51 = *(v3 + v48 + 8);
  v192 = *(v3 + v48);
  v52 = (v3 + v41[20]);
  v53 = v52[1];
  v190 = *v52;
  v197 = *(v3 + v41[22]);
  v54 = v41[24];
  v191 = v53;

  v199 = v40;

  v189 = v43;

  v205 = v44;
  v55 = v179;

  v210 = v45;

  v56 = v50;

  v194 = v51;

  v57 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v184 = v216[0];
  v58 = v3 + v41[25];
  sub_1A84E595C();
  v186 = v216[0];
  v59 = v3 + v41[26];
  v200 = v57;
  v60 = v208;
  sub_1A84E595C();
  v187 = v216[0];
  sub_1A8243D74(v3 + v41[21], v213, &qword_1EB2E7348, &qword_1A8504400);
  v180 = v3[2];
  v61 = v55 + v41[24];
  v216[0] = 0;
  sub_1A84E5B8C();
  v62 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v183 = v61;
  sub_1A84E594C();
  v63 = v55 + v41[25];
  v216[0] = 0;
  sub_1A84E5B8C();
  v181 = v63;
  sub_1A84E594C();
  v64 = v55 + v41[26];
  v216[0] = 0;
  sub_1A84E5B8C();
  v182 = v64;
  v202 = v30;
  v185 = v62;
  sub_1A84E594C();
  v216[0] = v207;
  v216[1] = v174;
  v65 = v176;
  sub_1A84E530C();
  sub_1A840D3B0();
  v207 = sub_1A84E636C();
  v67 = v66;
  v68 = v65;
  v69 = v175;
  (*(v177 + 8))(v68, v178);
  v70 = v206;
  sub_1A8243D74(v214, v69, &qword_1EB2E7068, &unk_1A8501EB0);
  if ((*(v70 + 48))(v69, 1, v60) != 1)
  {
    v76 = v173;
    (*(v70 + 32))(v173, v69, v60);
    v73 = v205;
    v74 = v56;
    if (v212 && v210)
    {
      v77 = v211 & 0xFFFFFFFFFFFFLL;
      if ((v56 & 0x2000000000000000) != 0)
      {
        v77 = HIBYTE(v56) & 0xF;
      }

      if (v77)
      {
        v78 = HIBYTE(v205) & 0xF;
        if ((v205 & 0x2000000000000000) == 0)
        {
          v78 = v209 & 0xFFFFFFFFFFFFLL;
        }

        if (v78)
        {
          v79 = v209;
          v80 = v76;
          v81 = v210;
          (*(v70 + 8))(v80, v60);
          v72 = v81;
          v71 = v79;
          v75 = v212;
          goto LABEL_53;
        }
      }
    }

    v176 = (HIBYTE(v56) & 0xF);
    v178 = v67;
    v177 = v56;
    v82 = [objc_opt_self() defaultManager];
    sub_1A84E555C();
    v83 = v76;
    v84 = sub_1A84E5D8C();

    v216[0] = 0;
    v85 = [v82 attributesOfItemAtPath:v84 error:v216];

    v86 = v216[0];
    if (v85)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_1A8412804(&qword_1EB2E5B48, type metadata accessor for FileAttributeKey);
      v87 = sub_1A84E5D3C();
      v88 = v86;

      v89 = HIBYTE(v178) & 0xF;
      if ((v178 & 0x2000000000000000) == 0)
      {
        v89 = v207 & 0xFFFFFFFFFFFFLL;
      }

      if (v89)
      {
        v90 = v173;
      }

      else
      {

        v90 = v173;
        v207 = sub_1A84E550C();
        v178 = v109;
      }

      v74 = v177;
      v110 = v172;
      if (*(v87 + 16) && (v111 = sub_1A8490560(*MEMORY[0x1E696A3D8]), (v112 & 1) != 0) && (sub_1A8244F40(*(v87 + 56) + 32 * v111, v216), swift_dynamicCast()))
      {
        sub_1A84E5C4C();
        sub_1A84E5C2C();
        v113 = v163;
        v114 = v164;
        if ((*(v163 + 48))(v110, 1, v164) == 1)
        {
          sub_1A824B2D4(v110, &qword_1EB2E7340, &qword_1A8501EF8);
          v90 = v173;
          v75 = v212;
        }

        else
        {
          (*(v113 + 32))(v162, v110, v114);
          v119 = HIBYTE(v73) & 0xF;
          if ((v73 & 0x2000000000000000) == 0)
          {
            v119 = v209 & 0xFFFFFFFFFFFFLL;
          }

          v75 = v212;
          if (!v119)
          {
            v209 = sub_1A84E5C1C();
            v121 = v120;

            v73 = v121;
            v75 = v212;
          }

          v90 = v173;
          v122 = v210;
          if (!v210)
          {
            v123 = sub_1A84E5C3C();
            v75 = v212;
            v203 = v123;
          }

          v210 = v122;
          (*(v163 + 8))(v162, v164);
        }
      }

      else
      {
        v75 = v212;
      }

      v115 = v176;
      if (!v75)
      {
        if (*(v87 + 16) && (v116 = sub_1A8490560(*MEMORY[0x1E696A3B8]), v115 = v176, (v117 & 1) != 0))
        {
          sub_1A8244F40(*(v87 + 56) + 32 * v116, v216);
          if (swift_dynamicCast())
          {
            v75 = v215;
          }

          else
          {
            v75 = 0;
          }

          v115 = v176;
        }

        else
        {
          v75 = 0;
        }
      }

      v124 = v211 & 0xFFFFFFFFFFFFLL;
      if ((v74 & 0x2000000000000000) != 0)
      {
        v124 = v115;
      }

      if (v124)
      {
        (*(v206 + 8))(v90, v208);
      }

      else
      {
        if (*(v87 + 16) && (v125 = *MEMORY[0x1E696A308], v212 = v75, v126 = sub_1A8490560(v125), v75 = v212, (v127 & 1) != 0))
        {
          sub_1A8244F40(*(v87 + 56) + 32 * v126, v216);

          v128 = v165;
          v129 = v167;
          v130 = swift_dynamicCast();
          v131 = v166;
          (*(v166 + 56))(v128, v130 ^ 1u, 1, v129);
          if ((*(v131 + 48))(v128, 1, v129) != 1)
          {
            (*(v131 + 32))(v160, v128, v129);
            v205 = objc_opt_self();
            v211 = sub_1A84E565C();
            v145 = v131;
            if (qword_1EB2E5990 != -1)
            {
              swift_once();
            }

            v146 = v159;
            v147 = sub_1A824431C(v159, qword_1EB2E7FC8);
            swift_beginAccess();
            v148 = v158;
            v149 = v157;
            (*(v158 + 16))(v157, v147, v146);
            v150 = sub_1A84E576C();
            (*(v148 + 8))(v149, v146);
            v151 = v211;
            v152 = v150;
            v153 = [v205 stringFromDate:v211 timeZone:v150 formatOptions:1907];

            v211 = sub_1A84E5DBC();
            v155 = v154;

            (*(v145 + 8))(v160, v167);
            (*(v206 + 8))(v173, v208);
            v74 = v155;
            v75 = v212;
            goto LABEL_52;
          }

          (*(v206 + 8))(v90, v208);
        }

        else
        {

          (*(v206 + 8))(v90, v208);
          v128 = v165;
          (*(v166 + 56))(v165, 1, 1, v167);
        }

        sub_1A824B2D4(v128, &qword_1EB2E6F48, &unk_1A8501F00);
      }
    }

    else
    {
      v91 = v216[0];
      v92 = sub_1A84E548C();

      v176 = v92;
      swift_willThrow();
      v204 = 0;
      v93 = v171;
      sub_1A84E5C8C();
      v94 = v168;
      v95 = v208;
      (*(v70 + 16))(v168, v83, v208);
      v96 = sub_1A84E5C7C();
      v97 = sub_1A84E619C();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v175 = swift_slowAlloc();
        v216[0] = v175;
        *v98 = 136315138;
        v174 = v96;
        v99 = sub_1A84E555C();
        v100 = v95;
        v102 = v101;
        v103 = *(v70 + 8);
        v104 = v94;
        v105 = v100;
        v103(v104, v100);
        v106 = sub_1A82446BC(v99, v102, v216);

        *(v98 + 4) = v106;
        v107 = v174;
        _os_log_impl(&dword_1A823F000, v174, v97, "Failed to get file attributes for file ath path: %s", v98, 0xCu);
        v108 = v175;
        sub_1A8244788(v175);
        MEMORY[0x1AC56D3F0](v108, -1, -1);
        MEMORY[0x1AC56D3F0](v98, -1, -1);

        (*(v169 + 8))(v171, v170);
        v103(v173, v105);
        v71 = v209;
        v72 = v210;
        v73 = v205;
        v74 = v177;
        v75 = v212;
        v67 = v178;
        goto LABEL_53;
      }

      v118 = *(v70 + 8);
      v118(v94, v95);
      (*(v169 + 8))(v93, v170);
      v118(v83, v95);
      v73 = v205;
      v74 = v177;
      v75 = v212;
    }

LABEL_52:
    v67 = v178;
    v71 = v209;
    v72 = v210;
    goto LABEL_53;
  }

  sub_1A824B2D4(v69, &qword_1EB2E7068, &unk_1A8501EB0);
  v71 = v209;
  v72 = v210;
  v73 = v205;
  v74 = v56;
  v75 = v212;
LABEL_53:
  v132 = v199;
  *v55 = v198;
  v55[1] = v132;
  v133 = v188;
  v55[2] = v180;
  v55[3] = v133;
  v134 = v207;
  v55[4] = v189;
  v55[5] = v134;
  v55[6] = v67;
  v135 = (v55 + v41[14]);
  *v135 = v211;
  v135[1] = v74;
  *(v55 + v41[15]) = v75;
  v55[7] = v71;
  v55[8] = v73;
  v55[9] = v203;
  v55[10] = v72;
  sub_1A8243D74(v214, v55 + v41[10], &qword_1EB2E7068, &unk_1A8501EB0);
  *(v55 + v41[11]) = 0;
  *(v55 + v41[12]) = 0;
  *(v55 + v41[13]) = 1;
  *(v55 + v41[18]) = v196;
  *(v55 + v41[16]) = v193;
  *(v55 + v41[17]) = v195;
  v136 = (v55 + v41[19]);
  v137 = v194;
  *v136 = v192;
  v136[1] = v137;
  v138 = (v55 + v41[20]);
  v139 = v191;
  *v138 = v190;
  v138[1] = v139;
  v140 = v213;
  sub_1A8243D74(v213, v55 + v41[21], &qword_1EB2E7348, &qword_1A8504400);
  *(v55 + v41[22]) = v197;
  v141 = v200;
  v142 = *(*(v200 - 8) + 8);
  v142(v183, v200);
  v215 = v184;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v142(v181, v141);
  v215 = v186;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v142(v182, v141);
  v215 = v187;
  sub_1A84E5B8C();
  sub_1A84E594C();
  sub_1A824B2D4(v140, &qword_1EB2E7348, &qword_1A8504400);
  result = sub_1A824B2D4(v214, &qword_1EB2E7068, &unk_1A8501EB0);
  *(v55 + v41[23]) = v201;
  v144 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1A8412484()
{
  result = qword_1EB2E7358;
  if (!qword_1EB2E7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7358);
  }

  return result;
}

unint64_t sub_1A84124D8()
{
  result = qword_1EB2E7368;
  if (!qword_1EB2E7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7368);
  }

  return result;
}

unint64_t sub_1A841252C()
{
  result = qword_1EB2E7370;
  if (!qword_1EB2E7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7370);
  }

  return result;
}

uint64_t sub_1A8412580(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1A83EA2FC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A84125E8()
{
  result = qword_1EB2E7388;
  if (!qword_1EB2E7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7388);
  }

  return result;
}

uint64_t sub_1A841263C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A841269C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A8412704(void *a1)
{
  a1[1] = sub_1A8412804(&qword_1EB2E7398, type metadata accessor for ImportExport.Attachment);
  a1[2] = sub_1A8412804(&qword_1EB2E73A0, type metadata accessor for ImportExport.Attachment);
  result = sub_1A8412804(&qword_1EB2E73A8, type metadata accessor for ImportExport.Attachment);
  a1[3] = result;
  return result;
}

uint64_t sub_1A8412804(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A8412850()
{
  result = qword_1EB2E73B8;
  if (!qword_1EB2E73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E73B8);
  }

  return result;
}

unint64_t sub_1A84128A8()
{
  result = qword_1EB2E73C0;
  if (!qword_1EB2E73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E73C0);
  }

  return result;
}

unint64_t sub_1A8412900()
{
  result = qword_1EB2E73C8;
  if (!qword_1EB2E73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E73C8);
  }

  return result;
}

unint64_t sub_1A8412958()
{
  result = qword_1EB2E73D0;
  if (!qword_1EB2E73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E73D0);
  }

  return result;
}

void sub_1A84129D4()
{
  sub_1A8412B38();
  if (v0 <= 0x3F)
  {
    sub_1A8412B88(319, &qword_1EB2E73F0, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      sub_1A8412B88(319, &qword_1EB2E73F8, type metadata accessor for ImportExport.AttachmentDownloadError);
      if (v2 <= 0x3F)
      {
        sub_1A8412BDC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A8412B38()
{
  if (!qword_1EB2E73E8)
  {
    v0 = sub_1A84E633C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E73E8);
    }
  }
}

void sub_1A8412B88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A84E633C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A8412BDC()
{
  if (!qword_1EB2E7400)
  {
    sub_1A83EC9D4(&unk_1EB2E8780, &qword_1A8502930);
    v0 = sub_1A84E598C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E7400);
    }
  }
}

uint64_t _s10AttachmentV18MissingFileReasonsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10AttachmentV18MissingFileReasonsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1A8412CB0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1A8412CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1A8412D6C()
{
  result = qword_1EB2E7408;
  if (!qword_1EB2E7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7408);
  }

  return result;
}

unint64_t sub_1A8412DC4()
{
  result = qword_1EB2E7410;
  if (!qword_1EB2E7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7410);
  }

  return result;
}

unint64_t sub_1A8412E1C()
{
  result = qword_1EB2E7418;
  if (!qword_1EB2E7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7418);
  }

  return result;
}

uint64_t sub_1A8412E70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65707954656D696DLL && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x68746150656C6966 && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A85302E0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8530300 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C6E776F44736177 && a2 == 0xED0000646564616FLL || (sub_1A84E67AC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461 || (sub_1A84E67AC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7479426C61746F74 && a2 == 0xEA00000000007365 || (sub_1A84E67AC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x656B636974537369 && a2 == 0xE900000000000072 || (sub_1A84E67AC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8530320 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x696F6774754F7369 && a2 == 0xEA0000000000676ELL || (sub_1A84E67AC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001A8530340 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A8530360 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xED0000726F727245 || (sub_1A84E67AC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8530380 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A85303A0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A85303C0 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x5572656B63697473 && a2 == 0xEF6F666E49726573 || (sub_1A84E67AC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEF6F666E496E6F69)
  {

    return 22;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

double ImportExport.Message.LayoutDescriptor.scalar.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

_BYTE *ImportExport.Message.LayoutDescriptor.init(layoutIntent:associatedLayoutIntent:parentPreviewWidth:scalar:scale:rotation:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, double a5@<D1>, double a6@<D2>, float a7@<S3>, float a8@<S4>)
{
  v8 = *a2;
  *a3 = *result;
  *(a3 + 1) = v8;
  *(a3 + 4) = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  *(a3 + 28) = a8;
  return result;
}

void sub_1A841360C()
{
  word_1EB2E7420 = 2570;
  unk_1EB2E7434 = 0;
  xmmword_1EB2E7424 = 0uLL;
  dword_1EB2E743C = 0;
}

double static ImportExport.Message.LayoutDescriptor.tapback.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5950 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = xmmword_1EB2E7424;
  *a1 = word_1EB2E7420;
  *(a1 + 4) = v1;
  *(a1 + 8) = *(&xmmword_1EB2E7424 + 4);
  result = *&dword_1EB2E7438;
  *(a1 + 24) = *&dword_1EB2E7438;
  return result;
}

void sub_1A84136B0()
{
  word_1EB2E7440 = 2560;
  unk_1EB2E7454 = 0;
  xmmword_1EB2E7444 = 0uLL;
  dword_1EB2E745C = 0;
}

double static ImportExport.Message.LayoutDescriptor.unknown.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5958 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = xmmword_1EB2E7444;
  *a1 = word_1EB2E7440;
  *(a1 + 4) = v1;
  *(a1 + 8) = *(&xmmword_1EB2E7444 + 4);
  result = *&dword_1EB2E7458;
  *(a1 + 24) = *&dword_1EB2E7458;
  return result;
}

uint64_t sub_1A8413758()
{
  v1 = *v0;
  v2 = 0x6E4974756F79616CLL;
  v3 = 0x72616C616373;
  v4 = 0x656C616373;
  if (v1 != 4)
  {
    v4 = 0x6E6F697461746F72;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A8413820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8414950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8413848(uint64_t a1)
{
  v2 = sub_1A84144B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8413884(uint64_t a1)
{
  v2 = sub_1A84144B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Message.LayoutDescriptor.encode(to:)(void *a1)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7460, &qword_1A8502540);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *v1;
  HIDWORD(v17) = v1[1];
  v10 = *(v1 + 1);
  v11 = *(v1 + 1);
  v12 = *(v1 + 2);
  v14 = *(v1 + 6);
  v13 = *(v1 + 7);
  v15 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84144B0();
  sub_1A84E68AC();
  LOBYTE(v18) = v9;
  v20 = 0;
  sub_1A8414504();
  sub_1A84E672C();
  if (!v2)
  {
    LOBYTE(v18) = BYTE4(v17);
    v20 = 1;
    sub_1A84E672C();
    LOBYTE(v18) = 2;
    sub_1A84E66FC();
    v18 = v11;
    v19 = v12;
    v20 = 3;
    type metadata accessor for CGPoint(0);
    sub_1A84145AC(&qword_1EB2E7478);
    sub_1A84E672C();
    LOBYTE(v18) = 4;
    sub_1A84E66FC();
    LOBYTE(v18) = 5;
    sub_1A84E66FC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ImportExport.Message.LayoutDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E7480, &qword_1A8502548);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A84144B0();
  sub_1A84E689C();
  if (!v2)
  {
    v25 = 0;
    sub_1A8414558();
    sub_1A84E666C();
    v11 = v23;
    v25 = 1;
    sub_1A84E666C();
    v12 = v23;
    LOBYTE(v23) = 2;
    sub_1A84E663C();
    v14 = v13;
    type metadata accessor for CGPoint(0);
    v25 = 3;
    sub_1A84145AC(&qword_1EB2E7490);
    sub_1A84E666C();
    v15 = v23;
    v16 = v24;
    LOBYTE(v23) = 4;
    sub_1A84E663C();
    v19 = v18;
    LOBYTE(v23) = 5;
    sub_1A84E663C();
    v21 = v20;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 1) = v12;
    *(a2 + 4) = v14;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;
    *(a2 + 24) = v19;
    *(a2 + 28) = v21;
  }

  return sub_1A8244788(a1);
}

uint64_t ImportExport.Message.LayoutDescriptor.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v7 = *(v0 + 6);
  v6 = *(v0 + 7);
  sub_1A84E646C();
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A8502530);
  MEMORY[0x1AC56A990](0xD000000000000010, 0x80000001A85303E0);
  v8 = ImportExport.Message.LayoutDescriptor.LayoutIntent.name.getter();
  MEMORY[0x1AC56A990](v8);

  MEMORY[0x1AC56A990](0xD00000000000001ALL, 0x80000001A8530400);
  v9 = ImportExport.Message.LayoutDescriptor.LayoutIntent.name.getter();
  MEMORY[0x1AC56A990](v9);

  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A8530420);
  sub_1A84E60FC();
  MEMORY[0x1AC56A990](0x72616C616373202CLL, 0xEA0000000000203ALL);
  type metadata accessor for CGPoint(0);
  sub_1A84E652C();
  MEMORY[0x1AC56A990](0x3A656C616373202CLL, 0xE900000000000020);
  sub_1A84E60FC();
  MEMORY[0x1AC56A990](0x697461746F72202CLL, 0xEC000000203A6E6FLL);
  sub_1A84E60FC();
  MEMORY[0x1AC56A990](62, 0xE100000000000000);
  return 0;
}

uint64_t ImportExport.Message.LayoutDescriptor.LayoutIntent.name.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      return 0x7466654C706F74;
    case 2:
      return 0x7468676952706F74;
    case 3:
      v3 = 0x6D6F74746F62;
      return v3 & 0xFFFFFFFFFFFFLL | 0x654C000000000000;
    case 4:
      v2 = 0x6D6F74746F62;
      goto LABEL_7;
    case 5:
      return 0x7265746E6563;
    case 6:
      return 0x6F547265746E6563;
    case 7:
      return 0x6F427265746E6563;
    case 8:
      v3 = 0x7265746E6563;
      return v3 & 0xFFFFFFFFFFFFLL | 0x654C000000000000;
    case 9:
      v2 = 0x7265746E6563;
LABEL_7:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6952000000000000;
      break;
    case 0xA:
      result = 0x6B636162706174;
      break;
    case 0xB:
      result = 0xD000000000000010;
      break;
    case 0xC:
      result = 0x5272656B63697473;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t ImportExport.Message.LayoutDescriptor.LayoutIntent.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 13;
  if (result < 0xD)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t ImportExport.Message.LayoutDescriptor.LayoutIntent.description.getter()
{
  v1 = *v0;
  strcpy(v4, "LayoutIntent: ");
  v2 = ImportExport.Message.LayoutDescriptor.LayoutIntent.name.getter();
  MEMORY[0x1AC56A990](v2);

  return v4[0];
}

uint64_t sub_1A84143D8()
{
  v1 = *v0;
  strcpy(v4, "LayoutIntent: ");
  v2 = ImportExport.Message.LayoutDescriptor.LayoutIntent.name.getter();
  MEMORY[0x1AC56A990](v2);

  return v4[0];
}

BOOL _s6IMCore12ImportExportO7MessageV16LayoutDescriptorV2eeoiySbAG_AGtFZ_0(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1) && a1[1] == a2[1] && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) && a1[6] == a2[6])
  {
    return a1[7] == a2[7];
  }

  return result;
}

unint64_t sub_1A84144B0()
{
  result = qword_1EB2E7468;
  if (!qword_1EB2E7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7468);
  }

  return result;
}

unint64_t sub_1A8414504()
{
  result = qword_1EB2E7470;
  if (!qword_1EB2E7470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7470);
  }

  return result;
}

unint64_t sub_1A8414558()
{
  result = qword_1EB2E7488;
  if (!qword_1EB2E7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7488);
  }

  return result;
}

uint64_t sub_1A84145AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A84145F0()
{
  result = qword_1EB2E7498;
  if (!qword_1EB2E7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7498);
  }

  return result;
}

__n128 sub_1A8414644(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A8414650(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && a1[32])
  {
    return (*a1 + 244);
  }

  v3 = *a1;
  v4 = v3 >= 0xD;
  v5 = v3 - 13;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A8414694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 12;
    }
  }

  return result;
}

uint64_t _s16LayoutDescriptorV12LayoutIntentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s16LayoutDescriptorV12LayoutIntentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A841484C()
{
  result = qword_1EB2E74A0;
  if (!qword_1EB2E74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74A0);
  }

  return result;
}

unint64_t sub_1A84148A4()
{
  result = qword_1EB2E74A8;
  if (!qword_1EB2E74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74A8);
  }

  return result;
}

unint64_t sub_1A84148FC()
{
  result = qword_1EB2E74B0;
  if (!qword_1EB2E74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74B0);
  }

  return result;
}

uint64_t sub_1A8414950(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E4974756F79616CLL && a2 == 0xEC000000746E6574;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A8530460 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8530480 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72616C616373 && a2 == 0xE600000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1A8414B58()
{
  result = qword_1EB2E74B8;
  if (!qword_1EB2E74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E74B8);
  }

  return result;
}

uint64_t sub_1A8414BB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.AttachmentDownloadError();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v28 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    do
    {
      sub_1A8420890(v14, v11, type metadata accessor for ImportExport.AttachmentDownloadError);
      sub_1A8420890(v15, v8, type metadata accessor for ImportExport.AttachmentDownloadError);
      v18 = *v11;
      v19 = 0x74754F64656D6974;
      if (v18 != 2)
      {
        v19 = 0x46676E697373696DLL;
      }

      v20 = 0xEB00000000656C69;
      if (v18 == 2)
      {
        v20 = 0xE800000000000000;
      }

      v21 = 0xD000000000000012;
      if (!*v11)
      {
        v21 = 0x6E776F6E6B6E75;
      }

      v22 = 0xE700000000000000;
      if (*v11)
      {
        v22 = 0x80000001A852EE70;
      }

      if (*v11 <= 1u)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      if (*v11 <= 1u)
      {
        v24 = v22;
      }

      else
      {
        v24 = v20;
      }

      if (*v8 > 1u)
      {
        if (*v8 == 2)
        {
          v25 = 0xE800000000000000;
          if (v23 != 0x74754F64656D6974)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v25 = 0xEB00000000656C69;
          if (v23 != 0x46676E697373696DLL)
          {
            goto LABEL_33;
          }
        }
      }

      else if (*v8)
      {
        v25 = 0x80000001A852EE70;
        if (v23 != 0xD000000000000012)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v25 = 0xE700000000000000;
        if (v23 != 0x6E776F6E6B6E75)
        {
          goto LABEL_33;
        }
      }

      if (v24 == v25)
      {

        goto LABEL_34;
      }

LABEL_33:
      v26 = sub_1A84E67AC();

      if ((v26 & 1) == 0)
      {
        goto LABEL_42;
      }

LABEL_34:
      if (*(v11 + 3) != *(v8 + 3) || (*(v11 + 4) != *(v8 + 4) || *(v11 + 5) != *(v8 + 5)) && (sub_1A84E67AC() & 1) == 0)
      {
LABEL_42:
        sub_1A84208F8(v8, type metadata accessor for ImportExport.AttachmentDownloadError);
        sub_1A84208F8(v11, type metadata accessor for ImportExport.AttachmentDownloadError);
        return 0;
      }

      if (*(v11 + 1) == *(v8 + 1) && *(v11 + 2) == *(v8 + 2))
      {
        sub_1A84208F8(v8, type metadata accessor for ImportExport.AttachmentDownloadError);
        sub_1A84208F8(v11, type metadata accessor for ImportExport.AttachmentDownloadError);
      }

      else
      {
        v17 = sub_1A84E67AC();
        sub_1A84208F8(v8, type metadata accessor for ImportExport.AttachmentDownloadError);
        sub_1A84208F8(v11, type metadata accessor for ImportExport.AttachmentDownloadError);
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      --v12;
    }

    while (v12);
  }

  return 1;
}

uint64_t sub_1A8414F64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 18)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1A84E67AC() & 1) == 0)
      {
        break;
      }

      v3 += 18;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t ImportExport.Conversation.update(groupPhoto:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v4 = sub_1A84E5B9C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v77 = &v44 - v9;
  v10 = *v2;
  v55 = v2[1];
  v56 = v10;
  v11 = v2[2];
  v54 = v2[3];
  v44 = v2[4];
  v52 = *(v2 + 40);
  v12 = v2[6];
  v45 = v2[7];
  v46 = v11;
  v13 = v2[9];
  v50 = v2[8];
  v51 = v12;
  v14 = *(v2 + 13);
  v74 = *(v2 + 12);
  v75 = v14;
  v76 = *(v2 + 14);
  v15 = *(v2 + 9);
  v70 = *(v2 + 8);
  v71 = v15;
  v16 = *(v2 + 11);
  v72 = *(v2 + 10);
  v73 = v16;
  v17 = *(v2 + 7);
  v68 = *(v2 + 6);
  v69 = v17;
  v48 = v2[30];
  LODWORD(v12) = *(v2 + 248);
  v64 = *(v2 + 272);
  v58 = *(v2 + 273);
  v59 = v12;
  v18 = v2[36];
  v57 = v2[35];
  v19 = v2[40];
  v61 = v2[39];
  v20 = type metadata accessor for ImportExport.Conversation();
  v53 = *(v20 + 84);
  v62 = v19;

  v21 = v44;

  v22 = v45;

  v60 = v18;

  v53 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  v49 = v66[0];
  sub_1A8415BC8(v63, v77);
  v63 = v20;
  v23 = *(v20 + 84);
  v66[0] = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  v24 = v55;
  *a2 = v56;
  *(a2 + 8) = v24;
  v25 = v54;
  *(a2 + 16) = v46;
  *(a2 + 24) = v25;
  *(a2 + 32) = v21;
  *(a2 + 40) = v52;
  v26 = v50;
  *(a2 + 48) = v51;
  *(a2 + 56) = v22;
  *(a2 + 64) = v26;
  *(a2 + 72) = v13;
  v27 = v75;
  *(a2 + 192) = v74;
  *(a2 + 208) = v27;
  *(a2 + 224) = v76;
  v28 = v71;
  *(a2 + 128) = v70;
  *(a2 + 144) = v28;
  v29 = v73;
  *(a2 + 160) = v72;
  *(a2 + 176) = v29;
  v30 = v69;
  *(a2 + 96) = v68;
  *(a2 + 112) = v30;
  v67 = v48;
  sub_1A8400E7C(&v68, v66);

  v31 = v65;
  sub_1A841D43C(&v67);
  if (v31)
  {
    goto LABEL_23;
  }

  *(a2 + 240) = v67;
  v32 = v58;
  *(a2 + 248) = v59;
  v33 = v64;
  *(a2 + 272) = v64;
  *(a2 + 273) = v32;
  v34 = v60;
  v35 = v61;
  *(a2 + 280) = v57;
  *(a2 + 288) = v34;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  v36 = v62;
  *(a2 + 312) = v35;
  *(a2 + 320) = v36;
  (*(*(v53 - 8) + 8))(a2 + v23);
  v66[0] = v49;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v37 = v77;
  sub_1A8415BC8(v77, a2 + *(v63 + 80));
  if ((*(&v69 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (*(&v69 + 1) >= *(v69 + 16))
  {
LABEL_22:
    __break(1u);
LABEL_23:

    __break(1u);
    return result;
  }

  v38 = v37;
  v39 = v69 + (*(&v69 + 1) << 7);
  v40 = *(v39 + 48);
  *(a2 + 80) = *(v39 + 40);
  *(a2 + 88) = v40;
  if (v33 > 3)
  {
    if (v33 > 5)
    {
      if (v33 == 6)
      {
        v41 = 0xE300000000000000;
        v42 = 5456722;
      }

      else
      {
        v41 = 0xEC000000534D5365;
        v42 = 0x74696C6C65746153;
      }
    }

    else if (v33 == 4)
    {
      v42 = 5459283;
      v41 = 0xE300000000000000;
    }

    else
    {
      v41 = 0xE800000000000000;
      v42 = 0x656D695465636146;
    }
  }

  else if (v33 > 1)
  {
    if (v33 == 2)
    {
      v41 = 0xE800000000000000;
    }

    else
    {
      v41 = 0xEC0000006574694CLL;
    }

    v42 = 0x6567617373654D69;
  }

  else if (v33)
  {
    v41 = 0xE300000000000000;
    v42 = 7958113;
  }

  else
  {
    v41 = 0xE700000000000000;
    v42 = 0x6E776F6E6B6E75;
  }

  result = sub_1A824B2D4(v38, &qword_1EB2E6F50, &unk_1A8502920);
  *(a2 + 256) = v42;
  *(a2 + 264) = v41;
  return result;
}

uint64_t ImportExport.Conversation.shortDescription.getter()
{
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0x61737265766E6F43, 0xEC0000006E6F6974);
  MEMORY[0x1AC56A990](0x6975672F64690A3ALL, 0xEB00000000203A64);
  MEMORY[0x1AC56A990](v0[1], v0[2]);
  MEMORY[0x1AC56A990](0x6E6575716573203ALL, 0xEE00203A44496563);
  v11 = *v0;
  v1 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v1);

  MEMORY[0x1AC56A990](0x4E70756F7267202CLL, 0xED0000203A656D61);
  v12 = v0[8];
  v14 = v0[9];

  sub_1A83EA2FC(&qword_1EB2E74C0, &unk_1A8502938);
  v2 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v2);

  MEMORY[0x1AC56A990](0xD000000000000015, 0x80000001A85304A0);
  if (*(v0 + 40))
  {
    v3 = 0x7564697669646E69;
  }

  else
  {
    v3 = 0x70756F7267;
  }

  if (*(v0 + 40))
  {
    v4 = 0xEA00000000006C61;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v3, v4);

  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A85304C0);
  v20 = *(v0 + 12);
  v21 = *(v0 + 13);
  v22 = *(v0 + 14);
  v16 = *(v0 + 8);
  v17 = *(v0 + 9);
  v18 = *(v0 + 10);
  v19 = *(v0 + 11);
  v13 = *(v0 + 6);
  v15 = *(v0 + 7);
  v5 = ImportExport.Participant.description.getter();
  MEMORY[0x1AC56A990](v5);

  MEMORY[0x1AC56A990](0xD000000000000015, 0x80000001A85304E0);
  *&v13 = *(v0[30] + 16);
  v6 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v6);

  MEMORY[0x1AC56A990](0x6369767265730A2CLL, 0xEF203A6570795465);
  v7 = *(v0 + 272);
  if (v7 > 3)
  {
    if (*(v0 + 272) > 5u)
    {
      if (v7 == 6)
      {
        v8 = 0xE300000000000000;
        v9 = 5456722;
      }

      else
      {
        v8 = 0xEC000000534D5365;
        v9 = 0x74696C6C65746153;
      }
    }

    else if (v7 == 4)
    {
      v9 = 5459283;
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE800000000000000;
      v9 = 0x656D695465636146;
    }
  }

  else if (*(v0 + 272) > 1u)
  {
    if (v7 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xEC0000006574694CLL;
    }

    v9 = 0x6567617373654D69;
  }

  else if (*(v0 + 272))
  {
    v8 = 0xE300000000000000;
    v9 = 7958113;
  }

  else
  {
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x1AC56A990](v9, v8);

  return 0;
}

uint64_t ImportExport.Conversation.id.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ImportExport.Conversation.conversationIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ImportExport.Conversation.groupID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ImportExport.Conversation.groupName.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

BOOL ImportExport.Conversation.hasGroupName.getter()
{
  v1 = *(v0 + 72);
  if (!v1)
  {
    return 0;
  }

  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + 64) & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

uint64_t ImportExport.Conversation.account.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t ImportExport.Conversation.accountParticipant.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[13];
  v20 = v1[12];
  v21 = v3;
  v4 = v1[13];
  v22 = v1[14];
  v5 = v1[7];
  v6 = v1[9];
  v16 = v1[8];
  v7 = v16;
  v17 = v6;
  v8 = v1[9];
  v9 = v1[11];
  v18 = v1[10];
  v10 = v18;
  v19 = v9;
  v11 = v1[7];
  v15[0] = v1[6];
  v12 = v15[0];
  v15[1] = v11;
  a1[6] = v20;
  a1[7] = v4;
  a1[8] = v1[14];
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v2;
  *a1 = v12;
  a1[1] = v5;
  return sub_1A8400E7C(v15, &v14);
}

uint64_t ImportExport.Conversation.serviceTypeString.getter()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return v1;
}

uint64_t ImportExport.Conversation.lastAddressUsedForSelf.getter()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return v1;
}

uint64_t ImportExport.Conversation.rcsGroupIdentifier.getter()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return v1;
}

uint64_t ImportExport.Conversation.rcsGroupURI.getter()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);

  return v1;
}

uint64_t ImportExport.Conversation.groupPhoto.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ImportExport.Conversation() + 80);

  return sub_1A8415BC8(v3, a1);
}

uint64_t ImportExport.Conversation.properties.getter()
{
  v0 = *(type metadata accessor for ImportExport.Conversation() + 84);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  return v2;
}

uint64_t type metadata accessor for ImportExport.Conversation()
{
  result = qword_1EB2E7640;
  if (!qword_1EB2E7640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A8415BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8415C38@<X0>(void *a1@<X8>)
{
  v2 = *(type metadata accessor for ImportExport.Conversation() + 84);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  result = sub_1A84E595C();
  *a1 = v4;
  return result;
}

uint64_t sub_1A8415CA0(uint64_t *a1)
{
  v3 = *a1;
  v1 = *(type metadata accessor for ImportExport.Conversation() + 84);

  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E596C();
}

uint64_t ImportExport.Conversation.$properties.getter()
{
  v0 = *(type metadata accessor for ImportExport.Conversation() + 84);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  return sub_1A84E597C();
}

uint64_t ImportExport.Conversation.init(accountParticipant:participants:serviceType:rcsGroupIdentifier:rcsGroupURI:groupID:lastAddressUsedForSelf:groupName:isPinned:filterType:properties:groupPhoto:sequenceID:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, NSObject *a8@<X7>, uint64_t a9@<X8>, NSObject *a10, uint64_t a11, void *a12, uint64_t *a13, unint64_t a14, char a15, unsigned __int8 *a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v253 = a6;
  v254 = a8;
  v266 = a7;
  v267 = a5;
  v252 = a4;
  v261 = a9;
  v271 = a18;
  v22 = a12;
  v281 = a11;
  v273 = a10;
  v23 = &v287;
  v270 = a17;
  v255 = type metadata accessor for ImportExport.Conversation();
  v24 = *(*(v255 - 8) + 64);
  MEMORY[0x1EEE9AC00](v255);
  v249 = &v248 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A84E5B9C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v251 = &v248 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v264 = &v248 - v31;
  v282 = sub_1A84E5C9C();
  v32 = *(*(v282 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v282);
  v260 = &v248 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v256 = &v248 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v248 = &v248 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v248 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v44 = a1[7];
  v320 = a1[6];
  v321 = v44;
  v322 = a1[8];
  v45 = a1[3];
  v316 = a1[2];
  v317 = v45;
  v46 = a1[5];
  v318 = a1[4];
  v319 = v46;
  v47 = a1[1];
  v314 = *a1;
  v315 = v47;
  v265 = *a3;
  v48 = *a16;
  v49 = a2;
  v50 = *(a2 + 16);
  v51 = MEMORY[0x1E69E7CC0];
  v262 = v43;
  v323 = a2;
  v278 = a12;
  v283 = v50;
  v263 = a14;
  v250 = v48;
  if (!v50)
  {
LABEL_57:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_58;
  }

  v52 = 0;
  v284 = (v49 + 32);
  v279 = 0x80000001A8530540;
  v280 = 0x80000001A852FB30;
  v275 = (&v248 - v42);
  v276 = (v43 + 8);
  *&v47 = 136315394;
  v268 = v47;
  v277 = v41;
  do
  {
    v53 = (v284 + 144 * v52);
    v54 = v53[7];
    v311 = v53[6];
    v312 = v54;
    v313 = v53[8];
    v55 = v53[3];
    v307 = v53[2];
    v308 = v55;
    v56 = v53[5];
    v309 = v53[4];
    v310 = v56;
    v57 = v53[1];
    v305 = *v53;
    v306 = v57;
    v58._rawValue = v57;
    if (!v22)
    {
      sub_1A8400E7C(&v305, &v296);
      goto LABEL_14;
    }

    v59 = v53[7];
    v302 = v53[6];
    v303 = v59;
    v304 = v53[8];
    v60 = v53[3];
    v298 = v53[2];
    v299 = v60;
    v61 = v53[5];
    v300 = v53[4];
    v301 = v61;
    v62 = v53[1];
    v296 = *v53;
    v297 = v62;

    sub_1A8400E7C(&v305, &v287);

    v63.value._countAndFlagsBits = v281;
    v63.value._object = v22;
    v64 = ImportExport.Participant.contains(_:)(v63);

    if (!v64)
    {

LABEL_14:
      v302 = v320;
      v303 = v321;
      v304 = v322;
      v298 = v316;
      v299 = v317;
      v300 = v318;
      v301 = v319;
      v296 = v314;
      v297 = v315;
      if (ImportExport.Participant.contains(_:)(v58))
      {
        sub_1A84E5C8C();
        sub_1A8400E7C(&v305, &v296);
        sub_1A8400E7C(&v314, &v296);
        v78 = sub_1A84E5C7C();
        v79 = sub_1A84E617C();
        sub_1A8400ED8(&v305);
        sub_1A8400ED8(&v314);
        LODWORD(v272) = v79;
        if (!os_log_type_enabled(v78, v79))
        {
          sub_1A8400ED8(&v305);

          (*v276)(v41, v282);
          v112 = v323;
          goto LABEL_46;
        }

        v259 = v78;
        v274 = v52;
        v269 = v51;
        v80 = swift_slowAlloc();
        v258 = swift_slowAlloc();
        *&v296 = v258;
        v81 = v80;
        *v80 = v268;
        v82 = *(v58._rawValue + 2);
        if (v82)
        {
          *&v287 = MEMORY[0x1E69E7CC0];
          sub_1A83EF534(0, v82, 0);
          v83 = v287;
          v84 = (v58._rawValue + 48);
          do
          {
            v85 = *(v84 - 1);
            v86 = *v84;
            *&v287 = v83;
            v88 = *(v83 + 16);
            v87 = *(v83 + 24);

            if (v88 >= v87 >> 1)
            {
              sub_1A83EF534((v87 > 1), v88 + 1, 1);
              v83 = v287;
            }

            *(v83 + 16) = v88 + 1;
            v89 = v83 + 16 * v88;
            *(v89 + 32) = v85;
            *(v89 + 40) = v86;
            v84 += 16;
            --v82;
          }

          while (v82);
          sub_1A8400ED8(&v305);
          v22 = v278;
        }

        else
        {
          sub_1A8400ED8(&v305);
          v83 = MEMORY[0x1E69E7CC0];
        }

        v113 = MEMORY[0x1AC56AB00](v83, MEMORY[0x1E69E6158]);
        v115 = v114;

        v116 = sub_1A82446BC(v113, v115, &v296);

        *(v81 + 1) = v116;
        *(v81 + 6) = 2080;
        v117 = v315;
        v118 = *(v315 + 16);
        if (v118)
        {
          *&v287 = MEMORY[0x1E69E7CC0];
          sub_1A83EF534(0, v118, 0);
          v119 = v287;
          v120 = (v117 + 48);
          do
          {
            v121 = *(v120 - 1);
            v122 = *v120;
            *&v287 = v119;
            v124 = *(v119 + 16);
            v123 = *(v119 + 24);

            if (v124 >= v123 >> 1)
            {
              sub_1A83EF534((v123 > 1), v124 + 1, 1);
              v119 = v287;
            }

            *(v119 + 16) = v124 + 1;
            v125 = v119 + 16 * v124;
            *(v125 + 32) = v121;
            *(v125 + 40) = v122;
            v120 += 16;
            --v118;
          }

          while (v118);
          v22 = v278;
        }

        else
        {
          v119 = MEMORY[0x1E69E7CC0];
        }

        v126 = MEMORY[0x1AC56AB00](v119, MEMORY[0x1E69E6158]);
        v128 = v127;

        v129 = sub_1A82446BC(v126, v128, &v296);

        v130 = v81;
        *(v81 + 14) = v129;
        v131 = v259;
        _os_log_impl(&dword_1A823F000, v259, v272, "Removing participant '%s' because it contains an account address: %s", v81, 0x16u);
        v132 = v258;
        swift_arrayDestroy();
        MEMORY[0x1AC56D3F0](v132, -1, -1);
        MEMORY[0x1AC56D3F0](v130, -1, -1);

        v41 = v277;
        (*v276)(v277, v282);
        v51 = v269;
        v23 = &v287;
        v52 = v274;
      }

      else
      {
        v90 = v52;
        isa = v51[2].isa;
        if (isa)
        {
          v92 = 0;
          v93 = 4;
          do
          {
            if (v92 >= v51[2].isa)
            {
              goto LABEL_113;
            }

            v23 = v51;
            v296 = *&v51[v93].isa;
            v94 = *&v51[v93 + 2].isa;
            v95 = *&v51[v93 + 4].isa;
            v96 = *&v51[v93 + 8].isa;
            v299 = *&v51[v93 + 6].isa;
            v300 = v96;
            v297 = v94;
            v298 = v95;
            v97 = *&v51[v93 + 10].isa;
            v98 = *&v51[v93 + 12].isa;
            v99 = *&v51[v93 + 16].isa;
            v303 = *&v51[v93 + 14].isa;
            v304 = v99;
            v301 = v97;
            v302 = v98;
            v100._rawValue = v297;
            v293 = v311;
            v294 = v312;
            v295 = v313;
            v289 = v307;
            v290 = v308;
            v291 = v309;
            v292 = v310;
            v287 = v305;
            v288 = v306;
            sub_1A8400E7C(&v296, &v286);
            if (ImportExport.Participant.contains(_:)(v100))
            {

              sub_1A8400ED8(&v314);

              *&v287 = 0;
              *(&v287 + 1) = 0xE000000000000000;
              sub_1A84E646C();
              v286 = v287;
              MEMORY[0x1AC56A990](0xD000000000000031, 0x80000001A8530500);
              v141 = *(v58._rawValue + 2);
              if (v141)
              {
                *&v287 = MEMORY[0x1E69E7CC0];
                sub_1A83EF534(0, v141, 0);
                v142 = v287;
                v143 = (v58._rawValue + 48);
                do
                {
                  v145 = *(v143 - 1);
                  v144 = *v143;
                  *&v287 = v142;
                  v147 = *(v142 + 16);
                  v146 = *(v142 + 24);

                  if (v147 >= v146 >> 1)
                  {
                    sub_1A83EF534((v146 > 1), v147 + 1, 1);
                    v142 = v287;
                  }

                  *(v142 + 16) = v147 + 1;
                  v148 = v142 + 16 * v147;
                  *(v148 + 32) = v145;
                  *(v148 + 40) = v144;
                  v143 += 16;
                  --v141;
                }

                while (v141);
                sub_1A8400ED8(&v305);
              }

              else
              {
                sub_1A8400ED8(&v305);

                v142 = MEMORY[0x1E69E7CC0];
              }

              v149 = MEMORY[0x1AC56AB00](v142, MEMORY[0x1E69E6158]);
              v151 = v150;

              MEMORY[0x1AC56A990](v149, v151);

              MEMORY[0x1AC56A990](8250, 0xE200000000000000);
              v293 = v302;
              v294 = v303;
              v295 = v304;
              v289 = v298;
              v290 = v299;
              v291 = v300;
              v292 = v301;
              v287 = v296;
              v288 = v297;
              v152 = ImportExport.Participant.description.getter();
              v154 = v153;
              sub_1A8400ED8(&v296);
              MEMORY[0x1AC56A990](v152, v154);

              v155 = v286;
              sub_1A841D4A8();
              v156 = swift_allocError();
              *v157 = v155;
              *(v157 + 16) = 0;
LABEL_62:
              v174 = v260;
              swift_willThrow();
              sub_1A84E5C8C();
              v175 = v156;
              v176 = sub_1A84E5C7C();
              v177 = sub_1A84E619C();

              if (os_log_type_enabled(v176, v177))
              {
                v178 = swift_slowAlloc();
                v179 = swift_slowAlloc();
                *v178 = 138412290;
                v180 = v156;
                v181 = _swift_stdlib_bridgeErrorToNSError();
                *(v178 + 4) = v181;
                *v179 = v181;
                _os_log_impl(&dword_1A823F000, v176, v177, "Failed to create conversation with error: %@", v178, 0xCu);
                sub_1A824B2D4(v179, &unk_1EB2E9070, &unk_1A8501A90);
                MEMORY[0x1AC56D3F0](v179, -1, -1);
                MEMORY[0x1AC56D3F0](v178, -1, -1);
              }

              (*(v262 + 8))(v174, v282);
              swift_willThrow();
              return sub_1A824B2D4(v271, &qword_1EB2E6F50, &unk_1A8502920);
            }

            v92 = (v92 + 1);
            sub_1A8400ED8(&v296);
            v93 += 18;
            v51 = v23;
          }

          while (isa != v92);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1A83EF36C(0, v51[2].isa + 1, 1, v51);
        }

        v41 = v277;
        v22 = v278;
        v52 = v90;
        v101 = v51;
        v102 = v51[2].isa;
        v103 = v101;
        v104 = v101[3].isa;
        v23 = &v287;
        if (v102 >= v104 >> 1)
        {
          v103 = sub_1A83EF36C((v104 > 1), v102 + 1, 1, v103);
        }

        *(v103 + 2) = v102 + 1;
        v105 = &v103[144 * v102];
        v51 = v103;
        *(v105 + 2) = v305;
        v106 = v306;
        v107 = v307;
        v108 = v309;
        *(v105 + 5) = v308;
        *(v105 + 6) = v108;
        *(v105 + 3) = v106;
        *(v105 + 4) = v107;
        v109 = v310;
        v110 = v311;
        v111 = v313;
        *(v105 + 9) = v312;
        *(v105 + 10) = v111;
        *(v105 + 7) = v109;
        *(v105 + 8) = v110;
      }

      goto LABEL_45;
    }

    v65 = v275;
    sub_1A84E5C8C();
    sub_1A8400E7C(&v305, &v296);

    v66 = sub_1A84E5C7C();
    v67 = sub_1A84E617C();
    sub_1A8400ED8(&v305);

    LODWORD(v272) = v67;
    if (!os_log_type_enabled(v66, v67))
    {

      sub_1A8400ED8(&v305);

      (*v276)(v65, v282);
      v112 = v323;
      v41 = v277;
      goto LABEL_46;
    }

    v269 = v66;
    v68 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    v259 = v68;
    *&v296 = v258;
    LODWORD(v68->isa) = v268;
    v69 = *(v58._rawValue + 2);
    if (v69)
    {
      v274 = v52;
      v70 = v51;
      *&v287 = MEMORY[0x1E69E7CC0];
      sub_1A83EF534(0, v69, 0);
      v71 = v287;
      v72 = (v58._rawValue + 48);
      do
      {
        v74 = *(v72 - 1);
        v73 = *v72;
        *&v287 = v71;
        v76 = *(v71 + 16);
        v75 = *(v71 + 24);

        if (v76 >= v75 >> 1)
        {
          sub_1A83EF534((v75 > 1), v76 + 1, 1);
          v71 = v287;
        }

        *(v71 + 16) = v76 + 1;
        v77 = v71 + 16 * v76;
        *(v77 + 32) = v74;
        *(v77 + 40) = v73;
        v72 += 16;
        --v69;
      }

      while (v69);
      sub_1A8400ED8(&v305);
      v51 = v70;
      v23 = &v287;
      v22 = v278;
      v52 = v274;
    }

    else
    {
      sub_1A8400ED8(&v305);
      v71 = MEMORY[0x1E69E7CC0];
    }

    v133 = MEMORY[0x1AC56AB00](v71, MEMORY[0x1E69E6158]);
    v135 = v134;

    v136 = sub_1A82446BC(v133, v135, &v296);

    v137 = v259;
    *(&v259->isa + 4) = v136;
    WORD2(v137[1].isa) = 2080;
    v138 = sub_1A82446BC(v281, v22, &v296);

    *(&v137[1].isa + 6) = v138;
    v139 = v269;
    _os_log_impl(&dword_1A823F000, v269, v272, "Removing participant '%s' because it contains the lastAddressUsedForSelf: %s", v137, 0x16u);
    v140 = v258;
    swift_arrayDestroy();
    MEMORY[0x1AC56D3F0](v140, -1, -1);
    MEMORY[0x1AC56D3F0](v137, -1, -1);

    (*v276)(v275, v282);
    v41 = v277;
LABEL_45:
    v112 = v323;
LABEL_46:
    if (++v52 == v283)
    {
      goto LABEL_57;
    }
  }

  while (v52 < *(v112 + 2));
  while (1)
  {
    __break(1u);
LABEL_115:
    v51 = sub_1A841E114(v51);
LABEL_58:
    v158 = v51[2].isa;
    *&v305 = v51 + 4;
    *(&v305 + 1) = v158;
    v159 = v257;
    sub_1A841D4FC(&v305);
    v160 = v51[2].isa;
    if (!v160)
    {

      sub_1A8400ED8(&v314);

      sub_1A841D4A8();
      v156 = swift_allocError();
      *v173 = 0xD000000000000024;
      *(v173 + 8) = 0x80000001A8530560;
      *(v173 + 16) = 1;
      v279 = 0x80000001A8530540;
      v280 = 0x80000001A852FB30;
      goto LABEL_62;
    }

    v276 = v159;
    v269 = v51;
    v161 = &v51[18 * v160];
    *&v23[36].isa = *&v161[-14].isa;
    v162 = *&v161[-12].isa;
    v163 = *&v161[-10].isa;
    v164 = *&v161[-6].isa;
    *&v23[42].isa = *&v161[-8].isa;
    *&v23[44].isa = v164;
    *&v23[38].isa = v162;
    *&v23[40].isa = v163;
    v165 = *&v161[-4].isa;
    v166 = *&v161[-2].isa;
    v167 = *&v161[2].isa;
    *&v23[50].isa = *&v161->isa;
    *&v23[52].isa = v167;
    *&v23[46].isa = v165;
    *&v23[48].isa = v166;
    v168 = swift_allocObject();
    v169 = v160;
    v170 = v168;
    v23 = v254;
    *(v168 + 16) = v254;
    v171 = (v168 + 16);
    v51 = v273;
    *(v168 + 24) = v273;
    v284 = v169;
    v277 = v168;
    if (v169 == 1)
    {
      break;
    }

    v183 = sub_1A84E67AC();
    sub_1A8400E7C(&v305, &v296);

    v172 = v255;
    if (v183)
    {
      goto LABEL_66;
    }

    v195 = v273;
    if (!v273)
    {
      goto LABEL_74;
    }

    v51 = 0xE400000000000000;
    if (sub_1A84178A8())
    {

LABEL_74:
      v279 = *(v170 + 24);
      if (v279)
      {
        goto LABEL_75;
      }

      goto LABEL_112;
    }

    *&v296 = 1952540771;
    *(&v296 + 1) = 0xE400000000000000;
    MEMORY[0x1AC56A990](v23, v195);

    v246 = *(&v296 + 1);
    v51 = v296;
    v247 = *(v170 + 24);

    *(v170 + 16) = __PAIR128__(v246, v51);
    v279 = v246;
    if (v246)
    {
LABEL_75:
      v184 = *v171;
      v185 = v279;

      v187 = v184;
      goto LABEL_76;
    }

LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
  }

  sub_1A8400E7C(&v305, &v296);

  v172 = v255;
LABEL_66:
  v279 = v171;
  v184 = *(&v307 + 1);
  v185 = v308;
  v187 = *(v170 + 16);
  v186 = *(v170 + 24);
  if (v186)
  {
    v283 = *(&v307 + 1);
    v280 = v308;

    v188 = v248;
    sub_1A84E5C8C();
    v189 = sub_1A84E5C7C();
    v190 = sub_1A84E617C();
    if (os_log_type_enabled(v189, v190))
    {
      v191 = swift_slowAlloc();
      v275 = swift_slowAlloc();
      *&v296 = v275;
      *v191 = 136315138;

      v192 = sub_1A82446BC(v187, v186, &v296);

      *(v191 + 4) = v192;
      _os_log_impl(&dword_1A823F000, v189, v190, "ignoring groupID '%s' for individual conversation", v191, 0xCu);
      v193 = v275;
      sub_1A8244788(v275);
      MEMORY[0x1AC56D3F0](v193, -1, -1);
      MEMORY[0x1AC56D3F0](v191, -1, -1);
    }

    (*(v262 + 8))(v188, v282);
    v194 = v279;
    swift_beginAccess();
    *v194 = xmmword_1A8502900;

    v187 = 0;
    v279 = 0xE000000000000000;
    v184 = v283;
    v185 = v280;
  }

  else
  {

    v279 = 0;
  }

LABEL_76:
  v275 = v187;
  v283 = v184;
  v196 = sub_1A84E5D8C();
  v197 = sub_1A84E5D8C();
  v198 = v284;
  v199 = IMCopyAnyServiceGUIDForChat();

  v280 = v185;
  if (!v199)
  {
    goto LABEL_118;
  }

  v272 = a19;
  LODWORD(v268) = v198 == 1;

  v200 = sub_1A84E5DBC();
  v260 = v201;

  sub_1A8415BC8(v271, v264);
  v202 = *(v172 + 84);
  *&v296 = 0;
  v203 = v263;

  v204 = v172;
  v205 = v279;

  sub_1A84E5B8C();
  v206 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v207 = v261;
  v274 = v206;
  sub_1A84E594C();
  *v207 = v272;
  *(v207 + 8) = v200;
  v208 = v283;
  *(v207 + 16) = v260;
  *(v207 + 24) = v208;
  *(v207 + 32) = v280;
  *(v207 + 40) = v268;
  *(v207 + 48) = v275;
  *(v207 + 56) = v205;
  v283 = a13;
  *(v207 + 64) = a13;
  *(v207 + 72) = v203;
  v209 = v321;
  *(v207 + 192) = v320;
  *(v207 + 208) = v209;
  *(v207 + 224) = v322;
  v210 = v317;
  *(v207 + 128) = v316;
  *(v207 + 144) = v210;
  v211 = v319;
  *(v207 + 160) = v318;
  *(v207 + 176) = v211;
  v212 = v315;
  *(v207 + 96) = v314;
  *(v207 + 112) = v212;
  v285 = v323;
  sub_1A8400E7C(&v314, &v296);

  v213 = v276;
  sub_1A841D43C(&v285);
  v197 = v213;
  if (v213)
  {
LABEL_119:

    __break(1u);
    return result;
  }

  *(v207 + 240) = v285;
  *(v207 + 248) = a15 & 1;
  *(v207 + 272) = v265;
  *(v207 + 273) = v250;
  v214 = v278;
  *(v207 + 280) = v281;
  *(v207 + 288) = v214;
  v215 = v267;
  *(v207 + 296) = v252;
  *(v207 + 304) = v215;
  v216 = v266;
  *(v207 + 312) = v253;
  *(v207 + 320) = v216;
  v217 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v217 - 8) + 8))(v207 + v202, v217);
  *&v287 = v270;

  sub_1A84E5B8C();
  sub_1A84E594C();
  sub_1A8415BC8(v264, v207 + *(v204 + 80));
  if ((*(&v315 + 1) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_117;
  }

  if (*(&v315 + 1) >= *(v315 + 16))
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v218 = (v315 + (*(&v315 + 1) << 7));
  v219 = v218[4];
  v220 = v218[5];
  v221 = v218[3];
  v296 = v218[2];
  v297 = v221;
  v298 = v219;
  v299 = v220;
  v222 = v218[6];
  v223 = v218[7];
  v224 = v218[9];
  v302 = v218[8];
  v303 = v224;
  v300 = v222;
  v301 = v223;
  v225 = v207;
  v226 = *(&v296 + 1);
  v227 = v221;
  sub_1A840243C(&v296, &v287);
  sub_1A8400ED8(&v314);

  sub_1A841E128(&v296);
  *(v225 + 80) = v226;
  *(v225 + 88) = v227;
  if (v265 <= 3)
  {
    v228 = v249;
    v229 = v256;
    if (v265 <= 1)
    {
      if (v265)
      {
        v230 = 0xE300000000000000;
        v231 = 7958113;
      }

      else
      {
        v230 = 0xE700000000000000;
        v231 = 0x6E776F6E6B6E75;
      }

      goto LABEL_96;
    }

    if (v265 == 2)
    {
      v230 = 0xE800000000000000;
      v231 = 0x6567617373654D69;
      goto LABEL_96;
    }

    v231 = 0x6567617373654D69;
    v232 = 1702127948;
LABEL_95:
    v230 = v232 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    goto LABEL_96;
  }

  v228 = v249;
  v229 = v256;
  if (v265 > 5)
  {
    if (v265 == 6)
    {
      v230 = 0xE300000000000000;
      v231 = 5456722;
      goto LABEL_96;
    }

    v231 = 0x74696C6C65746153;
    v232 = 1397576549;
    goto LABEL_95;
  }

  if (v265 == 4)
  {
    v231 = 5459283;
    v230 = 0xE300000000000000;
  }

  else
  {
    v230 = 0xE800000000000000;
    v231 = 0x656D695465636146;
  }

LABEL_96:
  sub_1A824B2D4(v264, &qword_1EB2E6F50, &unk_1A8502920);
  v233 = v261;
  *(v261 + 256) = v231;
  *(v233 + 264) = v230;
  if (v284 == 1)
  {

    goto LABEL_99;
  }

  v234 = sub_1A84E67AC();

  if ((v234 & 1) == 0)
  {

    sub_1A8400ED8(&v305);
    goto LABEL_107;
  }

LABEL_99:
  sub_1A8400ED8(&v305);
  if (!v203)
  {

LABEL_107:
    sub_1A824B2D4(v271, &qword_1EB2E6F50, &unk_1A8502920);
  }

  v235 = HIBYTE(v203) & 0xF;
  if ((v203 & 0x2000000000000000) == 0)
  {
    v235 = v283 & 0xFFFFFFFFFFFFLL;
  }

  if (v235)
  {
    sub_1A84E5C8C();
    sub_1A8420890(v261, v228, type metadata accessor for ImportExport.Conversation);
    v236 = v229;
    v237 = sub_1A84E5C7C();
    v238 = sub_1A84E619C();
    if (os_log_type_enabled(v237, v238))
    {
      v239 = v228;
      v240 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      *&v287 = v241;
      *v240 = 136315138;
      v242 = ImportExport.Conversation.description.getter();
      v244 = v243;
      sub_1A84208F8(v239, type metadata accessor for ImportExport.Conversation);
      v245 = sub_1A82446BC(v242, v244, &v287);

      *(v240 + 4) = v245;
      _os_log_impl(&dword_1A823F000, v237, v238, "Group names are ignored for individual conversations: %s", v240, 0xCu);
      sub_1A8244788(v241);
      MEMORY[0x1AC56D3F0](v241, -1, -1);
      MEMORY[0x1AC56D3F0](v240, -1, -1);

      sub_1A824B2D4(v271, &qword_1EB2E6F50, &unk_1A8502920);
      (*(v262 + 8))(v256, v282);
    }

    sub_1A824B2D4(v271, &qword_1EB2E6F50, &unk_1A8502920);
    sub_1A84208F8(v228, type metadata accessor for ImportExport.Conversation);
    (*(v262 + 8))(v236, v282);
  }

  else
  {
    sub_1A824B2D4(v271, &qword_1EB2E6F50, &unk_1A8502920);
  }
}

uint64_t sub_1A84178A8()
{

  v0 = sub_1A84E5EAC();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_1A84E5EAC();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_1A84E67AC();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_1A84E5EAC();
      v3 = v5;
    }

    while (v5);
  }

  sub_1A84E5EAC();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t ImportExport.Conversation.description.getter()
{
  v1 = v0;
  v2 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v62 - v4;
  *&v64 = 0;
  *(&v64 + 1) = 0xE000000000000000;
  sub_1A84E646C();
  v73 = v64;
  MEMORY[0x1AC56A990](60, 0xE100000000000000);
  MEMORY[0x1AC56A990](0x61737265766E6F43, 0xEC0000006E6F6974);
  MEMORY[0x1AC56A990](0xD000000000000016, 0x80000001A8530590);
  v6 = *(v0 + 208);
  v70 = *(v0 + 192);
  v71 = v6;
  v72 = *(v0 + 224);
  v7 = *(v0 + 144);
  v66 = *(v0 + 128);
  v67 = v7;
  v8 = *(v0 + 176);
  v68 = *(v0 + 160);
  v69 = v8;
  v9 = *(v0 + 112);
  v64 = *(v0 + 96);
  v65 = v9;
  v10 = ImportExport.Participant.description.getter();
  MEMORY[0x1AC56A990](v10);

  MEMORY[0x1AC56A990](0xD000000000000014, 0x80000001A85305B0);
  if (*(v0 + 40))
  {
    v11 = 0x7564697669646E69;
  }

  else
  {
    v11 = 0x70756F7267;
  }

  if (*(v0 + 40))
  {
    v12 = 0xEA00000000006C61;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v11, v12);

  MEMORY[0x1AC56A990](0x6975672F6469202CLL, 0xEB00000000203A64);
  MEMORY[0x1AC56A990](*(v0 + 8), *(v0 + 16));
  MEMORY[0x1AC56A990](0xD00000000000001BLL, 0x80000001A85305D0);
  MEMORY[0x1AC56A990](*(v0 + 24), *(v0 + 32));
  MEMORY[0x1AC56A990](0x636976726573202CLL, 0xEF203A6570795465);
  v13 = 0xE700000000000000;
  v14 = 0x6E776F6E6B6E75;
  v15 = *(v0 + 272);
  v16 = 0xE300000000000000;
  v17 = 5456722;
  if (v15 != 6)
  {
    v17 = 0x74696C6C65746153;
    v16 = 0xEC000000534D5365;
  }

  v18 = 5459283;
  v19 = 0xE300000000000000;
  if (v15 != 4)
  {
    v18 = 0x656D695465636146;
    v19 = 0xE800000000000000;
  }

  if (*(v0 + 272) <= 5u)
  {
    v17 = v18;
    v16 = v19;
  }

  v20 = 0xE800000000000000;
  if (v15 != 2)
  {
    v20 = 0xEC0000006574694CLL;
  }

  if (*(v0 + 272))
  {
    v14 = 7958113;
    v13 = 0xE300000000000000;
  }

  if (*(v0 + 272) > 1u)
  {
    v14 = 0x6567617373654D69;
    v13 = v20;
  }

  if (*(v0 + 272) <= 3u)
  {
    v21 = v14;
  }

  else
  {
    v21 = v17;
  }

  if (*(v0 + 272) <= 3u)
  {
    v22 = v13;
  }

  else
  {
    v22 = v16;
  }

  MEMORY[0x1AC56A990](v21, v22);

  MEMORY[0x1AC56A990](0x444970756F72670ALL, 0xEA0000000000203ALL);
  v23 = *(v0 + 56);
  *&v64 = *(v0 + 48);
  *(&v64 + 1) = v23;

  sub_1A83EA2FC(&qword_1EB2E74C0, &unk_1A8502938);
  v24 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v24);

  MEMORY[0x1AC56A990](0x4E70756F7267202CLL, 0xED0000203A656D61);
  v25 = *(v0 + 72);
  *&v64 = *(v0 + 64);
  *(&v64 + 1) = v25;

  v26 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v26);

  MEMORY[0x1AC56A990](0x6F7247736372202CLL, 0xEF203A4952557075);
  if (*(v0 + 320))
  {
    v27 = *(v0 + 312);
    v28 = *(v0 + 320);
  }

  else
  {
    v28 = 0xE300000000000000;
    v27 = 7104878;
  }

  MEMORY[0x1AC56A990](v27, v28);

  MEMORY[0x1AC56A990](0xD00000000000001ALL, 0x80000001A85305F0);
  v29 = *(v0 + 288);
  *&v64 = *(v0 + 280);
  *(&v64 + 1) = v29;

  v30 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v30);

  MEMORY[0x1AC56A990](0x6E6E69507369203ALL, 0xEC000000203A6465);
  if (*(v0 + 248))
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if (*(v0 + 248))
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  MEMORY[0x1AC56A990](v31, v32);

  MEMORY[0x1AC56A990](0x7265746C6966202CLL, 0xEE00203A65707954);
  v33 = *(v0 + 273);
  v34 = 1701736302;
  v35 = 0xE400000000000000;
  v36 = 1802401130;
  v37 = 0xEE006C616E6F6974;
  v38 = 0x6F6D6F7250736D73;
  if (v33 != 3)
  {
    v38 = 0xD000000000000010;
    v37 = 0x80000001A852EB90;
  }

  if (v33 != 2)
  {
    v36 = v38;
    v35 = v37;
  }

  v39 = 0xED00007265646E65;
  if (*(v0 + 273))
  {
    v34 = 0x536E776F6E6B6E75;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  if (*(v0 + 273) <= 1u)
  {
    v40 = v34;
  }

  else
  {
    v40 = v36;
  }

  if (*(v0 + 273) <= 1u)
  {
    v41 = v39;
  }

  else
  {
    v41 = v35;
  }

  MEMORY[0x1AC56A990](v40, v41);

  MEMORY[0x1AC56A990](0x7265706F7270202CLL, 0xEE00203A73656974);
  v42 = type metadata accessor for ImportExport.Conversation();
  v43 = *(v42 + 84);
  sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  sub_1A84E595C();
  sub_1A83EA2FC(&qword_1EB2E74D0, &qword_1A8502948);
  v44 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v44);

  MEMORY[0x1AC56A990](0x5070756F7267202CLL, 0xEE00203A6F746F68);
  sub_1A8415BC8(v1 + *(v42 + 80), v5);
  v45 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v45);

  MEMORY[0x1AC56A990](0x7069636974726170, 0xEE00282073746E61);
  v46 = *(v1 + 240);
  *&v64 = *(v46 + 16);
  v47 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v47);

  MEMORY[0x1AC56A990](2112041, 0xE300000000000000);
  v48 = *(v46 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    v63 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v48, 0);
    v49 = v63;
    v50 = (v46 + 32);
    do
    {
      v69 = v50[5];
      v70 = v50[6];
      v71 = v50[7];
      v72 = v50[8];
      v65 = v50[1];
      v66 = v50[2];
      v67 = v50[3];
      v68 = v50[4];
      v64 = *v50;
      v51 = ImportExport.Participant.description.getter();
      v63 = v49;
      v54 = *(v49 + 16);
      v53 = *(v49 + 24);
      if (v54 >= v53 >> 1)
      {
        v56 = v51;
        v57 = v52;
        sub_1A83EF534((v53 > 1), v54 + 1, 1);
        v52 = v57;
        v51 = v56;
        v49 = v63;
      }

      *(v49 + 16) = v54 + 1;
      v55 = v49 + 16 * v54;
      *(v55 + 32) = v51;
      *(v55 + 40) = v52;
      v50 += 9;
      --v48;
    }

    while (v48);
  }

  *&v64 = v49;
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950);
  v58 = sub_1A84E5D6C();
  v60 = v59;

  MEMORY[0x1AC56A990](v58, v60);

  MEMORY[0x1AC56A990](4065836, 0xE300000000000000);
  return v73;
}

unint64_t sub_1A841825C(char a1)
{
  result = 0x65636E6575716573;
  switch(a1)
  {
    case 1:
      result = 1684632935;
      break;
    case 2:
    case 13:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x444970756F7267;
      break;
    case 5:
      result = 0x6D614E70756F7267;
      break;
    case 6:
      result = 0x746E756F636361;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x7069636974726170;
      break;
    case 9:
      result = 0x64656E6E69507369;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x5465636976726573;
      break;
    case 12:
      result = 0x79547265746C6966;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0x70756F7247736372;
      break;
    case 16:
      result = 0x6F685070756F7267;
      break;
    case 17:
      result = 0x69747265706F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A8418474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A841FF80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A84184A8(uint64_t a1)
{
  v2 = sub_1A841E17C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A84184E4(uint64_t a1)
{
  v2 = sub_1A841E17C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.Conversation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E74D8, &qword_1A8502958);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - v8;
  v10 = a1[4];
  sub_1A82471E0(a1, a1[3]);
  sub_1A841E17C();
  sub_1A84E68AC();
  v11 = *v3;
  LOBYTE(v57) = 0;
  sub_1A84E673C();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    LOBYTE(v57) = 1;
    sub_1A84E66CC();
    v14 = v3[3];
    v15 = v3[4];
    LOBYTE(v57) = 2;
    sub_1A84E66CC();
    LOBYTE(v57) = *(v3 + 40);
    LOBYTE(v48) = 3;
    sub_1A841E1D0();
    sub_1A84E672C();
    v16 = v3[6];
    v17 = v3[7];
    LOBYTE(v57) = 4;
    sub_1A84E66AC();
    v18 = v3[8];
    v19 = v3[9];
    LOBYTE(v57) = 5;
    sub_1A84E66AC();
    v20 = v3[10];
    v21 = v3[11];
    v66 = 6;
    sub_1A84E66CC();
    v22 = *(v3 + 12);
    v23 = *(v3 + 10);
    v62 = *(v3 + 11);
    v63 = v22;
    v24 = *(v3 + 12);
    v25 = *(v3 + 14);
    v64 = *(v3 + 13);
    v65 = v25;
    v26 = *(v3 + 8);
    v27 = *(v3 + 6);
    v58 = *(v3 + 7);
    v59 = v26;
    v28 = *(v3 + 8);
    v29 = *(v3 + 10);
    v60 = *(v3 + 9);
    v61 = v29;
    v30 = *(v3 + 6);
    v54 = v24;
    v55 = v64;
    v56 = *(v3 + 14);
    v57 = v30;
    v50 = v28;
    v51 = v60;
    v52 = v23;
    v53 = v62;
    v48 = v27;
    v49 = v58;
    v47 = 7;
    sub_1A8400E7C(&v57, v46);
    sub_1A841E224();
    sub_1A84E672C();
    v46[6] = v54;
    v46[7] = v55;
    v46[8] = v56;
    v46[2] = v50;
    v46[3] = v51;
    v46[4] = v52;
    v46[5] = v53;
    v46[0] = v48;
    v46[1] = v49;
    sub_1A8400ED8(v46);
    v45 = v3[30];
    HIBYTE(v44) = 8;
    sub_1A83EA2FC(&qword_1EB2E74F8, &qword_1A8502960);
    sub_1A841E3C8(&qword_1EB2E7500, sub_1A841E224);
    sub_1A84E672C();
    v31 = *(v3 + 248);
    LOBYTE(v45) = 9;
    sub_1A84E66DC();
    v32 = v3[32];
    v33 = v3[33];
    LOBYTE(v45) = 10;
    sub_1A84E66CC();
    LOBYTE(v45) = *(v3 + 272);
    HIBYTE(v44) = 11;
    sub_1A841E278();
    sub_1A84E672C();
    LOBYTE(v45) = *(v3 + 273);
    HIBYTE(v44) = 12;
    sub_1A841E2CC();
    sub_1A84E672C();
    v34 = v3[35];
    v35 = v3[36];
    LOBYTE(v45) = 13;
    sub_1A84E66AC();
    v36 = v3[37];
    v37 = v3[38];
    LOBYTE(v45) = 14;
    sub_1A84E66AC();
    v38 = v3[39];
    v39 = v3[40];
    LOBYTE(v45) = 15;
    sub_1A84E66AC();
    v40 = type metadata accessor for ImportExport.Conversation();
    v41 = *(v40 + 80);
    LOBYTE(v45) = 16;
    type metadata accessor for ImportExport.Attachment();
    sub_1A841EFF0(&qword_1EB2E73A0, type metadata accessor for ImportExport.Attachment);
    sub_1A84E66BC();
    v42 = *(v40 + 84);
    LOBYTE(v45) = 17;
    sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    sub_1A83F0624(&qword_1EB2E7378, &qword_1EB2E6F60, &qword_1A8501F10);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImportExport.Conversation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v110 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v109 = *(v110 - 8);
  v4 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v6 = &v101 - v5;
  v7 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v101 - v9;
  v106 = sub_1A83EA2FC(&qword_1EB2E7518, &qword_1A8502968);
  v105 = *(v106 - 8);
  v11 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v13 = &v101 - v12;
  v14 = sub_1A84E5B9C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = type metadata accessor for ImportExport.Conversation();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 84);
  *&v115 = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v108 = v21;
  v111 = v20;
  sub_1A84E594C();
  v23 = a1[3];
  v22 = a1[4];
  v107 = a1;
  sub_1A82471E0(a1, v23);
  sub_1A841E17C();
  sub_1A84E689C();
  if (v2)
  {
    v124 = v2;
    v27 = v111;
    sub_1A8244788(v107);
    return (*(v109 + 8))(&v27[v108], v110);
  }

  v103 = v10;
  v102 = v6;
  v24 = v105;
  LOBYTE(v115) = 0;
  v25 = v106;
  v26 = sub_1A84E667C();
  v27 = v111;
  *v111 = v26;
  LOBYTE(v115) = 1;
  *(v27 + 1) = sub_1A84E660C();
  *(v27 + 2) = v29;
  LOBYTE(v115) = 2;
  v30 = 0;
  *(v27 + 3) = sub_1A84E660C();
  *(v27 + 4) = v31;
  LOBYTE(v113) = 3;
  sub_1A841E320();
  sub_1A84E666C();
  v27[40] = v115;
  LOBYTE(v115) = 4;
  *(v27 + 6) = sub_1A84E65DC();
  *(v27 + 7) = v47;
  LOBYTE(v115) = 5;
  *(v27 + 8) = sub_1A84E65DC();
  *(v27 + 9) = v48;
  LOBYTE(v115) = 6;
  v49 = sub_1A84E660C();
  v124 = 0;
  *(v27 + 10) = v49;
  *(v27 + 11) = v50;
  v114 = 7;
  sub_1A841E374();
  v51 = v124;
  sub_1A84E666C();
  v124 = v51;
  if (v51)
  {
    (*(v24 + 8))(v13, v25);
    v52 = 0;
    v53 = 0;
    v54 = 0;
    LODWORD(v105) = 0;
    LODWORD(v106) = 0;
    v55 = 0;
    goto LABEL_5;
  }

  v101 = 0;
  v56 = v122;
  v57 = v123;
  *(v27 + 12) = v121;
  *(v27 + 13) = v56;
  *(v27 + 14) = v57;
  v58 = v118;
  *(v27 + 8) = v117;
  *(v27 + 9) = v58;
  v59 = v120;
  *(v27 + 10) = v119;
  *(v27 + 11) = v59;
  v60 = v116;
  *(v27 + 6) = v115;
  *(v27 + 7) = v60;
  sub_1A83EA2FC(&qword_1EB2E74F8, &qword_1A8502960);
  v112 = 8;
  sub_1A841E3C8(&qword_1EB2E7530, sub_1A841E374);
  v61 = v124;
  sub_1A84E666C();
  v124 = v61;
  if (v61)
  {
    (*(v24 + 8))(v13, v25);
    v53 = 0;
    v54 = 0;
    LODWORD(v105) = 0;
    LODWORD(v106) = 0;
    v55 = 0;
    v52 = 1;
    v30 = v101;
    goto LABEL_5;
  }

  *(v27 + 30) = v113;
  LOBYTE(v113) = 9;
  v62 = v124;
  v63 = sub_1A84E661C();
  v124 = v62;
  if (v62 || (v111[248] = v63 & 1, LOBYTE(v113) = 10, v64 = v124, v65 = sub_1A84E660C(), (v124 = v64) != 0))
  {
    (*(v24 + 8))(v13, v106);
    v54 = 0;
    LODWORD(v105) = 0;
    LODWORD(v106) = 0;
    v55 = 0;
    v52 = 1;
    v53 = 1;
LABEL_27:
    v30 = v101;
    v27 = v111;
LABEL_5:
    sub_1A8244788(v107);
    v32 = *(v27 + 2);

    if (!v30)
    {
      v37 = *(v27 + 4);
    }

    v33 = *(v27 + 7);

    v38 = *(v27 + 9);

    v34 = *(v27 + 11);

    if (v52)
    {
      v39 = *(v27 + 12);
      v40 = *(v27 + 14);
      v122 = *(v27 + 13);
      v123 = v40;
      v41 = *(v27 + 9);
      v117 = *(v27 + 8);
      v118 = v41;
      v42 = *(v27 + 10);
      v120 = *(v27 + 11);
      v121 = v39;
      v119 = v42;
      v43 = *(v27 + 7);
      v115 = *(v27 + 6);
      v116 = v43;
      sub_1A8400ED8(&v115);
      if (v53)
      {
LABEL_9:
        v35 = *(v27 + 30);

        if ((v54 & 1) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    else if (v53)
    {
      goto LABEL_9;
    }

    if (!v54)
    {
LABEL_10:
      if (v105)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

LABEL_16:
    v44 = *(v27 + 33);

    if (v105)
    {
LABEL_11:
      v36 = *(v27 + 36);

      if ((v106 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v106)
    {
LABEL_12:
      if (!v55)
      {
        return (*(v109 + 8))(&v27[v108], v110);
      }

LABEL_19:
      v46 = *(v27 + 40);

      return (*(v109 + 8))(&v27[v108], v110);
    }

LABEL_18:
    v45 = *(v27 + 38);

    if ((v55 & 1) == 0)
    {
      return (*(v109 + 8))(&v27[v108], v110);
    }

    goto LABEL_19;
  }

  v67 = v111;
  *(v111 + 32) = v65;
  *(v67 + 33) = v66;
  v112 = 11;
  sub_1A841E440();
  v68 = v124;
  sub_1A84E666C();
  v124 = v68;
  if (v68)
  {
    goto LABEL_31;
  }

  v111[272] = v113;
  v112 = 12;
  sub_1A841E494();
  v69 = v124;
  sub_1A84E666C();
  v124 = v69;
  if (v69 || (v111[273] = v113, LOBYTE(v113) = 13, v70 = v124, v71 = sub_1A84E65DC(), (v124 = v70) != 0))
  {
LABEL_31:
    (*(v24 + 8))(v13, v106);
    LODWORD(v105) = 0;
    LODWORD(v106) = 0;
    v55 = 0;
    v52 = 1;
    v53 = 1;
    v54 = 1;
    goto LABEL_27;
  }

  v73 = v111;
  *(v111 + 35) = v71;
  *(v73 + 36) = v72;
  LOBYTE(v113) = 14;
  v74 = v124;
  v75 = sub_1A84E65DC();
  v124 = v74;
  if (v74)
  {
    (*(v24 + 8))(v13, v106);
    LODWORD(v106) = 0;
    v55 = 0;
    v52 = 1;
    v53 = 1;
    v54 = 1;
    v77 = &v125;
LABEL_36:
    *(v77 - 64) = 1;
    goto LABEL_27;
  }

  v78 = v111;
  *(v111 + 37) = v75;
  *(v78 + 38) = v76;
  LOBYTE(v113) = 15;
  v79 = v124;
  v80 = sub_1A84E65DC();
  v124 = v79;
  if (v79)
  {
    (*(v24 + 8))(v13, v106);
    v55 = 0;
    v52 = 1;
    v53 = 1;
    v54 = 1;
    LODWORD(v105) = 1;
    v77 = &v126;
    goto LABEL_36;
  }

  v82 = v111;
  *(v111 + 39) = v80;
  *(v82 + 40) = v81;
  type metadata accessor for ImportExport.Attachment();
  LOBYTE(v113) = 16;
  sub_1A841EFF0(&qword_1EB2E7398, type metadata accessor for ImportExport.Attachment);
  v83 = v124;
  sub_1A84E65FC();
  v124 = v83;
  if (v83)
  {
    (*(v24 + 8))(v13, v106);
    v52 = 1;
    v53 = 1;
    v54 = 1;
    LODWORD(v105) = 1;
    LODWORD(v106) = 1;
    v55 = 1;
    goto LABEL_27;
  }

  sub_1A841E4E8(v103, &v111[*(v16 + 80)]);
  LOBYTE(v113) = 17;
  sub_1A83F0624(&qword_1EB2E7390, &qword_1EB2E6F60, &qword_1A8501F10);
  v84 = v124;
  sub_1A84E666C();
  v124 = v84;
  if (v84)
  {
    (*(v24 + 8))(v13, v106);
    sub_1A8244788(v107);
    v27 = v111;
    v85 = *(v111 + 2);

    v86 = *(v27 + 4);

    v87 = *(v27 + 7);

    v88 = *(v27 + 9);

    v89 = *(v27 + 11);

    v90 = *(v27 + 12);
    v91 = *(v27 + 14);
    v122 = *(v27 + 13);
    v123 = v91;
    v92 = *(v27 + 9);
    v117 = *(v27 + 8);
    v118 = v92;
    v93 = *(v27 + 10);
    v120 = *(v27 + 11);
    v121 = v90;
    v119 = v93;
    v94 = *(v27 + 7);
    v115 = *(v27 + 6);
    v116 = v94;
    sub_1A8400ED8(&v115);
    v95 = *(v27 + 30);

    v96 = *(v27 + 33);

    v97 = *(v27 + 36);

    v98 = *(v27 + 38);

    v99 = *(v27 + 40);

    sub_1A824B2D4(&v27[*(v16 + 80)], &qword_1EB2E6F50, &unk_1A8502920);
    return (*(v109 + 8))(&v27[v108], v110);
  }

  (*(v24 + 8))(v13, v106);
  v100 = v111;
  (*(v109 + 40))(&v111[v108], v102, v110);
  sub_1A8420890(v100, v104, type metadata accessor for ImportExport.Conversation);
  sub_1A8244788(v107);
  return sub_1A84208F8(v100, type metadata accessor for ImportExport.Conversation);
}

uint64_t sub_1A841996C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t ImportExport.Conversation.FilterType.description.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 1802401130;
  v4 = 0x6F6D6F7250736D73;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x536E776F6E6B6E75;
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

uint64_t ImportExport.Conversation.FilterType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A84E65AC();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A8419A7C()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A8419B6C()
{
  *v0;
  *v0;
  *v0;
  sub_1A84E5E5C();
}

uint64_t sub_1A8419C48()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A8419D34@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ImportExport.Conversation.FilterType.init(rawValue:)(a1);
}

void sub_1A8419D40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE400000000000000;
  v6 = 1802401130;
  v7 = 0xEE006C616E6F6974;
  v8 = 0x6F6D6F7250736D73;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001A852EB90;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x536E776F6E6B6E75;
    v3 = 0xED00007265646E65;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1A8419EA8()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 1802401130;
  v4 = 0x6F6D6F7250736D73;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x536E776F6E6B6E75;
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

uint64_t ImportExport.Conversation.ConversationType.description.getter()
{
  if (*v0)
  {
    result = 0x7564697669646E69;
  }

  else
  {
    result = 0x70756F7267;
  }

  *v0;
  return result;
}

uint64_t ImportExport.Conversation.ConversationType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1A84E65AC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1A8419FF0()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A841A074()
{
  *v0;
  sub_1A84E5E5C();
}

uint64_t sub_1A841A0E4()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A841A164@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1A84E65AC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1A841A1C4(uint64_t *a1@<X8>)
{
  v2 = 0x70756F7267;
  if (*v1)
  {
    v2 = 0x7564697669646E69;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A841A2B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7564697669646E69;
  }

  else
  {
    v4 = 0x70756F7267;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v6 = 0x7564697669646E69;
  }

  else
  {
    v6 = 0x70756F7267;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006C61;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A84E67AC();
  }

  return v9 & 1;
}

uint64_t sub_1A841A35C()
{
  if (*v0)
  {
    result = 0x7564697669646E69;
  }

  else
  {
    result = 0x70756F7267;
  }

  *v0;
  return result;
}

uint64_t ImportExport.Conversation.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  result = sub_1A84E5E5C();
  if (v0[7])
  {
    v4 = v0[6];

    return sub_1A84E5E5C();
  }

  return result;
}

uint64_t ImportExport.Conversation.hashValue.getter()
{
  sub_1A84E684C();
  v1 = v0[1];
  v2 = v0[2];
  sub_1A84E5E5C();
  if (v0[7])
  {
    v3 = v0[6];
    sub_1A84E5E5C();
  }

  return sub_1A84E687C();
}

uint64_t sub_1A841A448()
{
  sub_1A84E684C();
  v1 = v0[1];
  v2 = v0[2];
  sub_1A84E5E5C();
  if (v0[7])
  {
    v3 = v0[6];
    sub_1A84E5E5C();
  }

  return sub_1A84E687C();
}

uint64_t sub_1A841A4A0()
{
  v1 = v0[1];
  v2 = v0[2];
  result = sub_1A84E5E5C();
  if (v0[7])
  {
    v4 = v0[6];

    return sub_1A84E5E5C();
  }

  return result;
}

uint64_t sub_1A841A4F4()
{
  sub_1A84E684C();
  v1 = v0[1];
  v2 = v0[2];
  sub_1A84E5E5C();
  if (v0[7])
  {
    v3 = v0[6];
    sub_1A84E5E5C();
  }

  return sub_1A84E687C();
}

uint64_t ImportExport.Conversation.participant(at:)@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0 || (v4 = *(v2 + 240), *(v4 + 16) <= a1))
  {
    sub_1A84E646C();

    *&v21[0] = 0xD000000000000023;
    *(&v21[0] + 1) = 0x80000001A8530610;
    v20[0] = a1;
    v17 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v17);

    MEMORY[0x1AC56A990](758130720, 0xE400000000000000);
    v20[0] = *(*(v2 + 240) + 16) - 1;
    v18 = sub_1A84E676C();
    MEMORY[0x1AC56A990](v18);

    MEMORY[0x1AC56A990](41, 0xE100000000000000);
    sub_1A841D4A8();
    swift_allocError();
    *v19 = v21[0];
    *(v19 + 16) = 6;
    return swift_willThrow();
  }

  else
  {
    v5 = (v4 + 144 * a1);
    v21[0] = v5[2];
    v6 = v5[3];
    v7 = v5[4];
    v8 = v5[6];
    v21[3] = v5[5];
    v21[4] = v8;
    v21[1] = v6;
    v21[2] = v7;
    v9 = v5[7];
    v10 = v5[8];
    v11 = v5[10];
    v21[7] = v5[9];
    v21[8] = v11;
    v21[5] = v9;
    v21[6] = v10;
    v12 = v5[9];
    a2[6] = v5[8];
    a2[7] = v12;
    a2[8] = v5[10];
    v13 = v5[5];
    a2[2] = v5[4];
    a2[3] = v13;
    v14 = v5[7];
    a2[4] = v5[6];
    a2[5] = v14;
    v15 = v5[3];
    *a2 = v5[2];
    a2[1] = v15;
    return sub_1A8400E7C(v21, v20);
  }
}

Swift::Int_optional __swiftcall ImportExport.Conversation.participantIndex(for:)(Swift::String a1)
{
  v2 = *(v1 + 240);
  v3 = *(v2 + 16);
  if (v3)
  {
    object = a1._object;
    countAndFlagsBits = a1._countAndFlagsBits;
    v6 = 0;
    v7 = (v2 + 32);
    while (v6 < *(v2 + 16))
    {
      v21[0] = *v7;
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[4];
      v21[3] = v7[3];
      v21[4] = v10;
      v21[1] = v8;
      v21[2] = v9;
      v11 = v7[5];
      v12 = v7[6];
      v13 = v7[8];
      v21[7] = v7[7];
      v21[8] = v13;
      v21[5] = v11;
      v21[6] = v12;
      v14 = v7[7];
      v20[15] = v7[6];
      v20[16] = v14;
      v20[17] = v7[8];
      v15 = v7[3];
      v20[11] = v7[2];
      v20[12] = v15;
      v16 = v7[5];
      v20[13] = v7[4];
      v20[14] = v16;
      v17 = v7[1];
      v20[9] = *v7;
      v20[10] = v17;
      sub_1A8400E7C(v21, v20);
      v18.value._countAndFlagsBits = countAndFlagsBits;
      v18.value._object = object;
      v19 = ImportExport.Participant.contains(_:)(v18);
      a1._countAndFlagsBits = sub_1A8400ED8(v21);
      if (v19)
      {
        LOBYTE(a1._object) = 0;
        goto LABEL_8;
      }

      ++v6;
      v7 += 9;
      if (v3 == v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v6 = 0;
    LOBYTE(a1._object) = 1;
LABEL_8:
    a1._countAndFlagsBits = v6;
  }

  return *&a1._countAndFlagsBits;
}

void *ImportExport.Conversation.participantIndex(for:)(void *result)
{
  v2 = *(v1 + 240);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result[3];
    v6 = result[4];
    v7 = (v2 + 32);
    v8 = result[1];
    v9 = result[2];
    while (v4 < *(v2 + 16))
    {
      v33 = *v7;
      v10 = v7[1];
      v11 = v7[2];
      v12 = v7[4];
      v36 = v7[3];
      v37 = v12;
      v34 = v10;
      v35 = v11;
      v13 = v7[5];
      v14 = v7[6];
      v15 = v7[8];
      v40 = v7[7];
      v41 = v15;
      v38 = v13;
      v39 = v14;
      v16 = v7[7];
      v30 = v7[6];
      v31 = v16;
      v32 = v7[8];
      v17 = v7[3];
      v26 = v7[2];
      v27 = v17;
      v18 = v7[5];
      v28 = v7[4];
      v29 = v18;
      v19 = v7[1];
      v24 = *v7;
      v25 = v19;
      sub_1A8400E7C(&v33, &v23);
      v20.value._countAndFlagsBits = v8;
      v20.value._object = v9;
      if (ImportExport.Participant.contains(_:)(v20))
      {
        sub_1A8400ED8(&v33);
        return v4;
      }

      v30 = v39;
      v31 = v40;
      v32 = v41;
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v29 = v38;
      v24 = v33;
      v25 = v34;
      v21.value._countAndFlagsBits = v5;
      v21.value._object = v6;
      v22 = ImportExport.Participant.contains(_:)(v21);
      result = sub_1A8400ED8(&v33);
      if (v22)
      {
        return v4;
      }

      ++v4;
      v7 += 9;
      if (v3 == v4)
      {
        return 0;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t ImportExport.Conversation.participantIndex(for:)(uint64_t *a1)
{
  v2 = *(v1 + 240);
  v3 = *(v2 + 16);
  v4 = 0;
  if (v3)
  {
    v5 = *a1;
    v6 = a1[1];
    for (i = (v2 + 40); ; i += 18)
    {
      v8 = *(i - 1) == v5 && *i == v6;
      if (v8 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return 0;
      }
    }
  }

  return v4;
}

void ImportExport.Conversation.participant(for:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = ImportExport.Conversation.participantIndex(for:)(a1);
  if (v5)
  {
    sub_1A8402420(&__dst);
    v6 = v31;
    a2[6] = v30;
    a2[7] = v6;
    a2[8] = v32;
    v7 = v27;
    a2[2] = v26;
    a2[3] = v7;
    v8 = v29;
    a2[4] = v28;
    a2[5] = v8;
    v9 = v25;
    *a2 = __dst;
    a2[1] = v9;
    return;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = *(v2 + 240);
  if (v4 >= *(v10 + 16))
  {
LABEL_8:
    __break(1u);
    return;
  }

  v11 = (v10 + 144 * v4);
  v23[0] = v11[2];
  v12 = v11[3];
  v13 = v11[4];
  v14 = v11[6];
  v23[3] = v11[5];
  v23[4] = v14;
  v23[1] = v12;
  v23[2] = v13;
  v15 = v11[7];
  v16 = v11[8];
  v17 = v11[10];
  v23[7] = v11[9];
  v23[8] = v17;
  v23[5] = v15;
  v23[6] = v16;
  memmove(&__dst, v11 + 2, 0x90uLL);
  nullsub_4(&__dst);
  v18 = v31;
  a2[6] = v30;
  a2[7] = v18;
  a2[8] = v32;
  v19 = v27;
  a2[2] = v26;
  a2[3] = v19;
  v20 = v29;
  a2[4] = v28;
  a2[5] = v20;
  v21 = v25;
  *a2 = __dst;
  a2[1] = v21;
  sub_1A8400E7C(v23, &v22);
}

uint64_t static ImportExport.Conversation.fetchNextConversation(startingAtRowIDGreaterThan:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A841AC54, 0, 0);
}

uint64_t sub_1A841AC54()
{
  v1 = v0[9];
  sub_1A83EA2FC(&qword_1EB2E9060, &qword_1A850A730);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A8502910;
  sub_1A8244B68(0, &qword_1EB2E7548, 0x1E696AE18);
  sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A85013E0;
  v4 = *v1;
  v5 = MEMORY[0x1E69E73D8];
  *(v3 + 56) = MEMORY[0x1E69E7360];
  *(v3 + 64) = v5;
  *(v3 + 32) = v4;
  *(v2 + 32) = sub_1A84E614C();
  v0[2] = 3;
  v6 = sub_1A84E676C();
  MEMORY[0x1AC56A990](v6);

  v7 = sub_1A84E614C();

  *(v2 + 40) = v7;
  v8 = sub_1A84E5FEC();

  v9 = [objc_opt_self() andPredicateWithSubpredicates_];

  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = [objc_opt_self() synchronousDatabase];
  sub_1A8244B68(0, &qword_1EB2E7550, 0x1E696AEB0);
  v12 = v9;
  v13 = sub_1A84E5FEC();
  v0[6] = sub_1A842096C;
  v0[7] = v10;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A841B03C;
  v0[5] = &unk_1F1B725F8;
  v14 = _Block_copy(v0 + 2);
  v15 = v0[7];

  v16 = 1;
  [v11 fetchChatRecordsFilteredUsingPredicate:v12 sortedUsingDescriptors:v13 limit:1 completionHandler:v14];
  _Block_release(v14);

  swift_unknownObjectRelease();
  swift_beginAccess();
  v17 = *(v10 + 16);
  if (v17)
  {
    v18 = v0[8];
    v19 = v0[9];
    v20 = v17;
    *v19 = [v20 rowID];
    sub_1A8475A14(v20, v18);
    v16 = 0;
  }

  v21 = v0[8];
  v22 = type metadata accessor for ImportExport.Conversation();
  (*(*(v22 - 8) + 56))(v21, v16, 1, v22);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1A841B03C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1A8244B68(0, &qword_1EB2E7558, 0x1E69A5DA0);
  v3 = sub_1A84E5FFC();

  v2(v3);
}

uint64_t static ImportExport.Conversation.fetchConversation(forRowID:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A841B0E0, 0, 0);
}

uint64_t sub_1A841B0E0()
{
  v1 = v0[9];
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = [objc_opt_self() synchronousDatabase];
  sub_1A8244B68(0, &qword_1EB2E7548, 0x1E696AE18);
  sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7360];
  *(v4 + 16) = xmmword_1A85013E0;
  v6 = MEMORY[0x1E69E73D8];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v1;
  v7 = sub_1A84E614C();
  sub_1A8244B68(0, &qword_1EB2E7550, 0x1E696AEB0);
  v8 = sub_1A84E5FEC();
  v0[6] = sub_1A842096C;
  v0[7] = v2;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A841B03C;
  v0[5] = &unk_1F1B72620;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  v11 = 1;
  [v3 fetchChatRecordsFilteredUsingPredicate:v7 sortedUsingDescriptors:v8 limit:1 completionHandler:v9];
  _Block_release(v9);

  swift_unknownObjectRelease();
  swift_beginAccess();
  v12 = *(v2 + 16);
  if (v12)
  {
    sub_1A8475A14(v12, v0[8]);
    v11 = 0;
  }

  v13 = v0[8];
  v14 = type metadata accessor for ImportExport.Conversation();
  (*(*(v14 - 8) + 56))(v13, v11, 1, v14);

  v15 = v0[1];

  return v15();
}

uint64_t static ImportExport.Conversation.fetchConversation(forGUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A841B3CC, 0, 0);
}

uint64_t sub_1A841B3CC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = [objc_opt_self() synchronousDatabase];
  sub_1A8244B68(0, &qword_1EB2E7548, 0x1E696AE18);
  sub_1A83EA2FC(&qword_1EB2E7048, &qword_1A8502980);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A85013E0;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1A83F8174();
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;

  v6 = sub_1A84E614C();
  sub_1A8244B68(0, &qword_1EB2E7550, 0x1E696AEB0);
  v7 = sub_1A84E5FEC();
  v0[6] = sub_1A841EB90;
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A841B03C;
  v0[5] = &unk_1F1B72648;
  v8 = _Block_copy(v0 + 2);
  v9 = v0[7];

  v10 = 1;
  [v4 fetchChatRecordsFilteredUsingPredicate:v6 sortedUsingDescriptors:v7 limit:1 completionHandler:v8];
  _Block_release(v8);

  swift_unknownObjectRelease();
  swift_beginAccess();
  v11 = *(v3 + 16);
  if (v11)
  {
    sub_1A8475A14(v11, v0[8]);
    v10 = 0;
  }

  v12 = v0[8];
  v13 = type metadata accessor for ImportExport.Conversation();
  (*(*(v13 - 8) + 56))(v12, v10, 1, v13);

  v14 = v0[1];

  return v14();
}

void sub_1A841B6A0(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v6 = a1;
    v7 = sub_1A84E654C();
    a1 = v6;
    if (v7 < 1)
    {
      return;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1AC56AF80](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
  swift_beginAccess();
  v5 = *(a2 + 16);
  *(a2 + 16) = v4;
}

uint64_t static ImportExport.Conversation.fetchConversations(withParticipants:serviceName:groupName:groupID:conversationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v10 = *(type metadata accessor for ImportExport.Conversation() - 8);
  *(v8 + 72) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = *a8;

  return MEMORY[0x1EEE6DFA0](sub_1A841B834, 0, 0);
}

size_t sub_1A841B834()
{
  v1 = *(v0 + 88);
  if (*(*(v0 + 16) + 16) <= 2uLL)
  {
    v2 = 45;
  }

  else
  {
    v2 = 43;
  }

  if (v1 != 2)
  {
    if (v1)
    {

      v2 = 45;
    }

    else
    {
      v3 = sub_1A84E67AC();

      if (v3)
      {
        v2 = 45;
      }

      else
      {
        v2 = 43;
      }
    }
  }

  v4 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  v8 = [objc_opt_self() synchronousDatabase];
  v9 = sub_1A84E5FEC();
  v10 = sub_1A84E5D8C();
  if (v4)
  {
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    v13 = sub_1A84E5D8C();
    if (*(v0 + 64))
    {
LABEL_12:
      v14 = *(v0 + 56);
      v15 = sub_1A84E5D8C();
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
    if (*(v0 + 64))
    {
      goto LABEL_12;
    }
  }

  v15 = 0;
LABEL_15:
  v16 = [v8 chatRecordsWithHandles:v9 serviceName:v10 displayName:v13 groupID:v15 style:v2];
  swift_unknownObjectRelease();

  sub_1A8244B68(0, &qword_1EB2E7558, 0x1E69A5DA0);
  v17 = sub_1A84E5FFC();

  if (v17 >> 62)
  {
    goto LABEL_30;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
    while (1)
    {
      v30 = MEMORY[0x1E69E7CC0];
      result = sub_1A83EF678(0, v18 & ~(v18 >> 63), 0);
      if (v18 < 0)
      {
        break;
      }

      v20 = 0;
      v21 = *(v0 + 72);
      v22 = v30;
      while (1)
      {
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if ((v17 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1AC56AF80](v20, v17);
        }

        else
        {
          if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v24 = *(v17 + 8 * v20 + 32);
        }

        sub_1A8475A14(v24, *(v0 + 80));
        v26 = *(v30 + 16);
        v25 = *(v30 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1A83EF678(v25 > 1, v26 + 1, 1);
        }

        v27 = *(v0 + 80);
        *(v30 + 16) = v26 + 1;
        sub_1A8420828(v27, v30 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v26, type metadata accessor for ImportExport.Conversation);
        ++v20;
        if (v23 == v18)
        {

          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v18 = sub_1A84E654C();
      if (!v18)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_31:

    v22 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v28 = *(v0 + 80);

    v29 = *(v0 + 8);

    return v29(v22);
  }

  return result;
}

uint64_t sub_1A841BBF8(uint64_t a1)
{
  v2 = sub_1A841EDF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841BC34(uint64_t a1)
{
  v2 = sub_1A841EDF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A841BC70()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x45444970756F7267;
    if (v1 == 1)
    {
      v5 = 0xD000000000000015;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD00000000000001ELL;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 != 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000018;
    if (v1 == 3)
    {
      v3 = 0xD000000000000014;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A841BD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8420534(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A841BD9C(uint64_t a1)
{
  v2 = sub_1A841EBAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841BDD8(uint64_t a1)
{
  v2 = sub_1A841EBAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A841BE14(uint64_t a1)
{
  v2 = sub_1A841EDA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841BE50(uint64_t a1)
{
  v2 = sub_1A841EDA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A841BE8C(uint64_t a1)
{
  v2 = sub_1A841ED50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841BEC8(uint64_t a1)
{
  v2 = sub_1A841ED50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A841BF04(uint64_t a1)
{
  v2 = sub_1A841EC00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841BF40(uint64_t a1)
{
  v2 = sub_1A841EC00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A841BF7C(uint64_t a1)
{
  v2 = sub_1A841EC54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841BFB8(uint64_t a1)
{
  v2 = sub_1A841EC54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A841BFF4(uint64_t a1)
{
  v2 = sub_1A841ECFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A841C030(uint64_t a1)
{
  v2 = sub_1A841ECFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A841C06C(uint64_t a1)
{
  v2 = sub_1A841ECA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}