id sub_1B0A7D9FC()
{
  v71 = 0;
  v70 = 0;
  v54 = 0;
  v61 = sub_1B0E43108();
  v55 = *(v61 - 8);
  v56 = v61 - 8;
  v35 = (v55[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v61);
  v0 = &v12 - v35;
  v64 = &v12 - v35;
  v71 = v1;
  v66 = [objc_opt_self() createMessage];
  v70 = v66;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v36 = *v60;
  v37 = *(v60 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v38 = sub_1B0E44AC8();

  [v66 setMessageId_];
  MEMORY[0x1E69E5920](v38);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v39 = *(v60 + 2);
  v40 = *(v60 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v41 = sub_1B0E44AC8();

  [v66 setPublisherBulletinId_];
  MEMORY[0x1E69E5920](v41);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v42 = *(v60 + 4);
  v43 = *(v60 + 5);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v44 = sub_1B0E44AC8();

  [v66 setNotificationMessageId_];
  MEMORY[0x1E69E5920](v44);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v45 = *(v60 + 6);
  v46 = *(v60 + 7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v47 = sub_1B0E44AC8();

  [v66 setAccountId_];
  MEMORY[0x1E69E5920](v47);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v48 = *(v60 + 8);
  v49 = *(v60 + 9);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v50 = sub_1B0E44AC8();

  [v66 setConversationId_];
  MEMORY[0x1E69E5920](v50);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v51 = *(v60 + 10);
  v52 = *(v60 + 11);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v53 = sub_1B0E44AC8();

  [v66 setMailboxId_];
  MEMORY[0x1E69E5920](v53);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v67 = type metadata accessor for WatchOSRender.Message();
  v2 = v67[10];
  v59 = v55[2];
  v58 = v55 + 2;
  v59(v0, &v60[v2], v61);
  v3 = sub_1B0E43068();
  v4 = v64;
  v57 = v3;
  v63 = v55[1];
  v62 = v55 + 1;
  v63(v64, v61);
  [v66 setDateSent_];
  MEMORY[0x1E69E5920](v57);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v59(v4, &v60[v67[11]], v61);
  v5 = sub_1B0E43068();
  v6 = v60;
  v65 = v5;
  v63(v64, v61);
  [v66 setDateReceived_];
  MEMORY[0x1E69E5920](v65);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = (v6 + v67[12]);
  v68 = *v7;
  v69 = v7[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v69)
  {
    v33 = v68;
    v34 = v69;
    v30 = v69;
    v31 = sub_1B0E44AC8();

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v13 = v32;
  [v66 setFrom_];
  MEMORY[0x1E69E5920](v13);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = *&v60[v67[13]];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = MEMORY[0x1E69E6158];
  v15 = sub_1B0E451A8();

  [v66 setTo_];
  MEMORY[0x1E69E5920](v15);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = *&v60[v67[14]];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v17 = sub_1B0E451A8();

  [v66 setCc_];
  MEMORY[0x1E69E5920](v17);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v19 = *&v60[v67[15]];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = sub_1B0E451A8();

  [v66 setBcc_];
  MEMORY[0x1E69E5920](v20);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v8 = &v60[v67[16]];
  v21 = *v8;
  v22 = v8[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v23 = sub_1B0E44AC8();

  [v66 setSubject_];
  MEMORY[0x1E69E5920](v23);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v9 = &v60[v67[17]];
  v24 = *v9;
  v25 = v9[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v26 = sub_1B0E44AC8();

  [v66 setMessageIdHeader_];
  MEMORY[0x1E69E5920](v26);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v10 = &v60[v67[18]];
  v27 = *v10;
  v28 = v10[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29 = sub_1B0E44AC8();

  [v66 setPreview_];
  MEMORY[0x1E69E5920](v29);
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  [v66 setStatus_];
  swift_unknownObjectRelease();
  return v66;
}

uint64_t sub_1B0A7E3F0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v23 = a4;
  v24 = a3;
  v28 = a2;
  v27 = a1;
  v45 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v35 = 0;
  v32 = 0;
  v31 = 0;
  v38 = a1;
  v39 = a2;
  v37 = a3;
  v36 = a4;
  v44 = 0;
  v34 = 0;
  v26 = *(v4 + 16);
  v25 = v26;
  swift_unknownObjectRetain();
  swift_getObjectType();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29 = sub_1B0E44AC8();

  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v22 = 0;
  v20 = 0;
  v33 = 0;
  v21 = [v26 parseHTMLBody:v29 encoding:4 maxLength:v24 maxImageWidth:&v34 partiallyParsed:v23 imageAttachmentsLoaded:? urlsFound:?];
  v18 = v21;
  v19 = v33;
  v5 = v33;
  v6 = v44;
  v44 = v19;

  swift_unknownObjectRelease();
  if (v21)
  {
    v17 = v18;
    v16 = v18;
    v32 = v18;
    swift_unknownObjectRelease();
    v15 = v34 != 1;
    v31 = v34 != 1;
    v11 = v16;
    v12 = v15;
    sub_1B06D4E94(&v44);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1B06D4E94(&v44);
    v13 = 0;
    v14 = 0;
  }

  v9 = v14;
  v10 = v13;
  v7 = __OFSUB__(*MEMORY[0x1E69E9840], v45);
  return v13;
}

uint64_t sub_1B0A7E7B8()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0A7E7F0(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_1B0A7E83C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for WatchOSRender.Message() + 40);
  v2 = sub_1B0E43108();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B0A7E8B4(uint64_t a1)
{
  v12 = a1;
  v7 = 0;
  v11 = sub_1B0E43108();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  (*(v9 + 16))(v2);
  v3 = type metadata accessor for WatchOSRender.Message();
  (*(v9 + 40))(v1 + *(v3 + 40), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t sub_1B0A7E9D4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for WatchOSRender.Message() + 44);
  v2 = sub_1B0E43108();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B0A7EA4C(uint64_t a1)
{
  v12 = a1;
  v7 = 0;
  v11 = sub_1B0E43108();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  (*(v9 + 16))(v2);
  v3 = type metadata accessor for WatchOSRender.Message();
  (*(v9 + 40))(v1 + *(v3 + 44), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t sub_1B0A7EB6C()
{
  v1 = (v0 + *(type metadata accessor for WatchOSRender.Message() + 48));
  v3 = *v1;
  v4 = v1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v3;
}

uint64_t sub_1B0A7EBB4(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v2 + *(type metadata accessor for WatchOSRender.Message() + 48));
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1B0A7EC10()
{
  v2 = *(v0 + *(type metadata accessor for WatchOSRender.Message() + 52));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0A7EC48(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(type metadata accessor for WatchOSRender.Message() + 52));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B0A7EC94()
{
  v2 = *(v0 + *(type metadata accessor for WatchOSRender.Message() + 56));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0A7ECCC(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(type metadata accessor for WatchOSRender.Message() + 56));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B0A7ED18()
{
  v2 = *(v0 + *(type metadata accessor for WatchOSRender.Message() + 60));
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0A7ED50(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = (v1 + *(type metadata accessor for WatchOSRender.Message() + 60));
  v3 = *v2;
  *v2 = a1;
}

uint64_t sub_1B0A7ED9C()
{
  v1 = (v0 + *(type metadata accessor for WatchOSRender.Message() + 64));
  v3 = *v1;
  v4 = v1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v3;
}

uint64_t sub_1B0A7EDE4(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v2 + *(type metadata accessor for WatchOSRender.Message() + 64));
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1B0A7EE40()
{
  v1 = (v0 + *(type metadata accessor for WatchOSRender.Message() + 68));
  v3 = *v1;
  v4 = v1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v3;
}

uint64_t sub_1B0A7EE88(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v2 + *(type metadata accessor for WatchOSRender.Message() + 68));
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1B0A7EEE4()
{
  v1 = (v0 + *(type metadata accessor for WatchOSRender.Message() + 72));
  v3 = *v1;
  v4 = v1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v3;
}

uint64_t sub_1B0A7EF2C(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v2 + *(type metadata accessor for WatchOSRender.Message() + 72));
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_1B0A7EFAC(uint64_t a1)
{
  v2 = type metadata accessor for WatchOSRender.Message();
  result = a1;
  *(v1 + *(v2 + 76)) = a1;
  return result;
}

BOOL sub_1B0A7EFE4(char *a1, char *a2)
{
  v81 = a1;
  v89 = a2;
  v101 = 0;
  v100 = 0;
  v82 = sub_1B0E43108();
  v83 = *(v82 - 8);
  v84 = v82 - 8;
  v85 = (v83[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v81);
  v86 = &v15[-v85];
  v87 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v15[-v87];
  v101 = v4;
  v100 = v5;
  v90 = *v4;
  v93 = v4[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v91 = *v89;
  v92 = *(v89 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v94 = MEMORY[0x1B2726DE0](v90, v93, v91, v92);

  if ((v94 & 1) == 0)
  {
    return 0;
  }

  v76 = *(v81 + 2);
  v79 = *(v81 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v77 = *(v89 + 2);
  v78 = *(v89 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v80 = MEMORY[0x1B2726DE0](v76, v79, v77, v78);

  if ((v80 & 1) == 0)
  {
    return 0;
  }

  v71 = *(v81 + 4);
  v74 = *(v81 + 5);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v72 = *(v89 + 4);
  v73 = *(v89 + 5);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v75 = MEMORY[0x1B2726DE0](v71, v74, v72, v73);

  if ((v75 & 1) == 0)
  {
    return 0;
  }

  v66 = *(v81 + 6);
  v69 = *(v81 + 7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v67 = *(v89 + 6);
  v68 = *(v89 + 7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v70 = MEMORY[0x1B2726DE0](v66, v69, v67, v68);

  if ((v70 & 1) == 0)
  {
    return 0;
  }

  v61 = *(v81 + 8);
  v64 = *(v81 + 9);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v62 = *(v89 + 8);
  v63 = *(v89 + 9);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v65 = MEMORY[0x1B2726DE0](v61, v64, v62, v63);

  if ((v65 & 1) == 0)
  {
    return 0;
  }

  v56 = *(v81 + 10);
  v59 = *(v81 + 11);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v57 = *(v89 + 10);
  v58 = *(v89 + 11);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v60 = MEMORY[0x1B2726DE0](v56, v59, v57, v58);

  if ((v60 & 1) == 0)
  {
    return 0;
  }

  v50 = type metadata accessor for WatchOSRender.Message();
  v6 = &v81[v50[10]];
  v52 = v83[2];
  v51 = v83 + 2;
  v52(v88, v6, v82);
  v52(v86, &v89[v50[10]], v82);
  v55 = sub_1B0E430C8();
  v54 = v83[1];
  v53 = v83 + 1;
  v54(v86, v82);
  v54(v88, v82);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

  v52(v88, &v81[v50[11]], v82);
  v52(v86, &v89[v50[11]], v82);
  v49 = sub_1B0E430C8();
  v54(v86, v82);
  v54(v88, v82);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

  v7 = &v81[v50[12]];
  v46 = *v7;
  v47 = v7[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v48 = *&v89[v50[12]];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v98[0] = v46;
  v98[1] = v47;
  v99 = v48;
  if (v47)
  {
    sub_1B070B280(v98, &v97);
    if (*(&v99 + 1))
    {
      v43 = &v96;
      v96 = v97;
      v42 = &v95;
      v95 = v99;
      v44 = MEMORY[0x1B2726DE0](v97, *(&v97 + 1), v99, *(&v99 + 1));
      sub_1B03B1198(v42);
      sub_1B03B1198(v43);
      sub_1B03B1198(v98);
      v45 = v44;
      goto LABEL_15;
    }

    sub_1B03B1198(&v97);
    goto LABEL_17;
  }

  if (*(&v99 + 1))
  {
LABEL_17:
    sub_1B06FF6F0(v98);
    v45 = 0;
    goto LABEL_15;
  }

  sub_1B03B1198(v98);
  v45 = 1;
LABEL_15:
  v41 = v45;

  if (v41)
  {
    v39 = *&v81[v50[13]];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v38 = *&v89[v50[13]];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = sub_1B0E45368();

    if (v40)
    {
      v36 = *&v81[v50[14]];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v35 = *&v89[v50[14]];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v37 = sub_1B0E45368();

      if (v37)
      {
        v33 = *&v81[v50[15]];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v32 = *&v89[v50[15]];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v34 = sub_1B0E45368();

        if (v34)
        {
          v8 = &v81[v50[16]];
          v27 = *v8;
          v30 = v8[1];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v9 = &v89[v50[16]];
          v28 = *v9;
          v29 = v9[1];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v31 = MEMORY[0x1B2726DE0](v27, v30, v28, v29);

          if (v31)
          {
            v10 = &v81[v50[17]];
            v22 = *v10;
            v25 = v10[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v11 = &v89[v50[17]];
            v23 = *v11;
            v24 = v11[1];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v26 = MEMORY[0x1B2726DE0](v22, v25, v23, v24);

            if (v26)
            {
              v12 = &v81[v50[18]];
              v17 = *v12;
              v20 = v12[1];
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v13 = &v89[v50[18]];
              v18 = *v13;
              v19 = v13[1];
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v21 = MEMORY[0x1B2726DE0](v17, v20, v18, v19);

              return (v21 & 1) != 0 && *&v81[v50[19]] == *&v89[v50[19]];
            }

            else
            {
              return 0;
            }
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

char *sub_1B0A7FD1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v35 = a3;
  v48 = a1;
  v56 = a2;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v43 = 0;
  v36 = sub_1B0E43108();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v40 = &v25 - v39;
  v47 = type metadata accessor for Message(v3);
  v53 = *(v47 - 8);
  v46 = v47 - 8;
  v41 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47);
  v55 = &v25 - v41;
  v42 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3D58, &qword_1B0EE0DD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v59 = (&v25 - v42);
  v60 = type metadata accessor for WatchOSHeaderInfo();
  v57 = *(v60 - 8);
  v58 = v60 - 8;
  v44 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v25 - v44;
  v64 = &v25 - v44;
  v49 = type metadata accessor for WatchOSRender.Message.InfoFromHeader();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v55);
  v5 = v53;
  v6 = (&v25 - v52);
  v54 = &v25 - v52;
  v63 = &v25 - v52;
  v62 = v7;
  v61 = v56;
  *v6 = 0;
  v6[1] = 0;
  (*(v5 + 16))(v4);

  WatchOSHeaderInfo.init(message:cache:)(v55, v56, v59);
  if ((*(v57 + 48))(v59, 1, v60) == 1)
  {
    sub_1B0A81ADC(v59);

    (*(v53 + 8))(v48, v47);
    sub_1B03B1198(v54);
    return (*(v50 + 56))(v35, 1, 1, v49);
  }

  else
  {
    sub_1B0A81BE0(v59, v45);
    v26 = *v45;
    v27 = *(v45 + 1);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v9 = v27;
    v10 = v54;
    v11 = *(v54 + 1);
    *v54 = v26;
    *(v10 + 1) = v9;

    v28 = *(v45 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v12 = v45;
    *(v54 + 2) = v28;
    v29 = *(v12 + 3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = v45;
    *(v54 + 3) = v29;
    v30 = *(v13 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = v45;
    *(v54 + 4) = v30;
    v31 = *(v14 + 5);
    v32 = *(v14 + 6);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v15 = v32;
    v16 = v45;
    v17 = v54;
    *(v54 + 5) = v31;
    *(v17 + 6) = v15;
    v33 = *(v16 + 7);
    v34 = *(v16 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18 = v40;
    v19 = v34;
    v20 = v60;
    v21 = v37;
    v22 = v36;
    v23 = v45;
    v24 = v54;
    *(v54 + 7) = v33;
    *(v24 + 8) = v19;
    (*(v21 + 16))(v18, &v23[*(v20 + 40)], v22);
    (*(v37 + 32))(&v54[*(v49 + 40)], v40, v36);
    sub_1B0A81CA4(v45);
    sub_1B0A81D64(v54, v35);
    (*(v50 + 56))(v35, 0, 1, v49);

    (*(v53 + 8))(v48, v47);
    return sub_1B0A81A1C(v54);
  }
}

uint64_t sub_1B0A802C8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for WatchOSRender.Message.InfoFromLibrary() + 40);
  v2 = sub_1B0E43108();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B0A80340(uint64_t a1)
{
  v12 = a1;
  v7 = 0;
  v11 = sub_1B0E43108();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  (*(v9 + 16))(v2);
  v3 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary();
  (*(v9 + 40))(v1 + *(v3 + 40), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t sub_1B0A80484(uint64_t a1)
{
  v2 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary();
  result = a1;
  *(v1 + *(v2 + 44)) = a1;
  return result;
}

uint64_t sub_1B0A804E0(uint64_t a1)
{
  v2 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary();
  result = a1;
  *(v1 + *(v2 + 48)) = a1;
  return result;
}

BOOL sub_1B0A80518(void *a1, char *a2)
{
  v41 = a1;
  v49 = a2;
  v56 = 0;
  v55 = 0;
  v42 = sub_1B0E43108();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (v43[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v8[-v45];
  v47 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v8[-v47];
  v56 = v4;
  v55 = v5;
  v50 = *v4;
  v53 = v4[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v51 = *v49;
  v52 = *(v49 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v54 = MEMORY[0x1B2726DE0](v50, v53, v51, v52);

  if (v54)
  {
    v36 = v41[2];
    v39 = v41[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v37 = *(v49 + 2);
    v38 = *(v49 + 3);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v40 = MEMORY[0x1B2726DE0](v36, v39, v37, v38);

    if (v40)
    {
      v31 = v41[4];
      v34 = v41[5];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v32 = *(v49 + 4);
      v33 = *(v49 + 5);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v35 = MEMORY[0x1B2726DE0](v31, v34, v32, v33);

      if (v35)
      {
        v26 = v41[6];
        v29 = v41[7];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v27 = *(v49 + 6);
        v28 = *(v49 + 7);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v30 = MEMORY[0x1B2726DE0](v26, v29, v27, v28);

        if (v30)
        {
          v21 = v41[8];
          v24 = v41[9];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v22 = *(v49 + 8);
          v23 = *(v49 + 9);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v25 = MEMORY[0x1B2726DE0](v21, v24, v22, v23);

          if (v25)
          {
            v16 = v41[10];
            v19 = v41[11];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v17 = *(v49 + 10);
            v18 = *(v49 + 11);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v20 = MEMORY[0x1B2726DE0](v16, v19, v17, v18);

            if (v20)
            {
              v10 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary();
              v6 = v41 + v10[10];
              v12 = v43[2];
              v11 = v43 + 2;
              v12(v48, v6, v42);
              v12(v46, &v49[v10[10]], v42);
              v15 = sub_1B0E430C8();
              v14 = v43[1];
              v13 = v43 + 1;
              v14(v46, v42);
              v14(v48, v42);
              if (v15)
              {
                return *(v41 + v10[11]) == *&v49[v10[11]] && *(v41 + v10[12]) == *&v49[v10[12]];
              }

              else
              {
                return 0;
              }
            }

            else
            {
              return 0;
            }
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

int *sub_1B0A80AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  *(a9 + 9) = a11;
  *(a9 + 10) = a12;
  *(a9 + 11) = a13;
  v20 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary();
  v18 = v20[10];
  v16 = sub_1B0E43108();
  (*(*(v16 - 8) + 32))(&a9[v18], a14);
  result = v20;
  *&a9[v20[11]] = a15;
  *&a9[v20[12]] = a16;
  return result;
}

id sub_1B0A80C0C()
{
  v3 = objc_opt_self();
  (MEMORY[0x1E69E5928])();
  v2 = [v1 messageFlags];
  (MEMORY[0x1E69E5920])();
  return [v3 nnmkMailItemStatusFromMFMessageFlags:v2 conversationFlags:{objc_msgSend(v1, sel_conversationFlags)}];
}

uint64_t type metadata accessor for WatchOSRender.Message.InfoFromHeader()
{
  v1 = qword_1EB6E3D88;
  if (!qword_1EB6E3D88)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata accessor for WatchOSRender.Message()
{
  v1 = qword_1EB6E3D68;
  if (!qword_1EB6E3D68)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_1B0A80D90(void *a1)
{
  v11 = type metadata accessor for WatchOSRender.Message.InfoFromHeader();
  if (!(*(*(v11 - 8) + 48))(a1, 1))
  {
    v1 = a1[1];

    v2 = a1[2];

    v3 = a1[3];

    v4 = a1[4];

    v5 = a1[6];

    v6 = a1[8];

    v9 = a1 + *(v11 + 40);
    v7 = sub_1B0E43108();
    (*(*(v7 - 8) + 8))(v9);
  }

  return a1;
}

uint64_t sub_1B0A80E94()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B0A80ECC(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t sub_1B0A80F18@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for WatchOSRender.Message.InfoFromHeader() + 40);
  v2 = sub_1B0E43108();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B0A80F90(uint64_t a1)
{
  v12 = a1;
  v7 = 0;
  v11 = sub_1B0E43108();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v11);
  v8 = &v5 - v6;
  (*(v9 + 16))(v2);
  v3 = type metadata accessor for WatchOSRender.Message.InfoFromHeader();
  (*(v9 + 40))(v1 + *(v3 + 40), v8, v11);
  return (*(v9 + 8))(v12, v11);
}

BOOL sub_1B0A810B0(void *a1, __int128 *a2)
{
  v41 = a1;
  v49 = a2;
  v59 = 0;
  v58 = 0;
  v42 = sub_1B0E43108();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (v43[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v8[-v45];
  v47 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v8[-v47];
  v59 = v4;
  v58 = v5;
  v50 = *v4;
  v51 = v4[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v52 = *v49;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v56[0] = v50;
  v56[1] = v51;
  v57 = v52;
  if (v51)
  {
    sub_1B070B280(v56, &v55);
    if (*(&v57 + 1))
    {
      v37 = &v54;
      v54 = v55;
      v38 = v56;
      v36 = &v53;
      v53 = v57;
      v39 = MEMORY[0x1B2726DE0](v55, *(&v55 + 1), v57, *(&v57 + 1));
      sub_1B03B1198(v36);
      sub_1B03B1198(v37);
      sub_1B03B1198(v38);
      v40 = v39;
      goto LABEL_7;
    }

    sub_1B03B1198(&v55);
    goto LABEL_9;
  }

  if (*(&v57 + 1))
  {
LABEL_9:
    sub_1B06FF6F0(v56);
    v40 = 0;
    goto LABEL_7;
  }

  sub_1B03B1198(v56);
  v40 = 1;
LABEL_7:
  v35 = v40;

  if (v35)
  {
    v33 = v41[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v32 = *(v49 + 2);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v34 = sub_1B0E45368();

    if (v34)
    {
      v30 = v41[3];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v29 = *(v49 + 3);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v31 = sub_1B0E45368();

      if (v31)
      {
        v27 = v41[4];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v26 = *(v49 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v28 = sub_1B0E45368();

        if (v28)
        {
          v21 = v41[5];
          v24 = v41[6];
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v22 = *(v49 + 5);
          v23 = *(v49 + 6);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v25 = MEMORY[0x1B2726DE0](v21, v24, v22, v23);

          if (v25)
          {
            v16 = v41[7];
            v19 = v41[8];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v17 = *(v49 + 7);
            v18 = *(v49 + 8);
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v20 = MEMORY[0x1B2726DE0](v16, v19, v17, v18);

            if (v20)
            {
              v10 = type metadata accessor for WatchOSRender.Message.InfoFromHeader();
              v6 = v41 + *(v10 + 40);
              v12 = v43[2];
              v11 = v43 + 2;
              v12(v48, v6, v42);
              v12(v46, v49 + *(v10 + 40), v42);
              v15 = sub_1B0E430C8();
              v14 = v43[1];
              v13 = v43 + 1;
              v14(v46, v42);
              v14(v48, v42);
              return (v15 & 1) != 0;
            }

            else
            {
              return 0;
            }
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0A81754()
{
  v2 = *(v0 + 16);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B0A81780()
{
  v4 = *v0;
  v5 = [objc_opt_self() createContentAttributedStringHTMLParser];
  if (v5)
  {
    swift_unknownObjectRetain();
    *(v3 + 16) = v5;
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }
}

uint64_t sub_1B0A81864()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1B0A81958(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  v4 = *(type metadata accessor for WatchOSRender.Message.InfoFromHeader() + 40);
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 32))(a2 + v4, a1 + v4);
  return a2;
}

char *sub_1B0A81A1C(char *a1)
{
  v1 = *(a1 + 1);

  v2 = *(a1 + 2);

  v3 = *(a1 + 3);

  v4 = *(a1 + 4);

  v5 = *(a1 + 6);

  v6 = *(a1 + 8);

  v9 = *(type metadata accessor for WatchOSRender.Message.InfoFromHeader() + 40);
  v7 = sub_1B0E43108();
  (*(*(v7 - 8) + 8))(&a1[v9]);
  return a1;
}

void *sub_1B0A81ADC(void *a1)
{
  v11 = type metadata accessor for WatchOSHeaderInfo();
  if (!(*(*(v11 - 8) + 48))(a1, 1))
  {
    v1 = a1[1];

    v2 = a1[2];

    v3 = a1[3];

    v4 = a1[4];

    v5 = a1[6];

    v6 = a1[8];

    v9 = a1 + *(v11 + 40);
    v7 = sub_1B0E43108();
    (*(*(v7 - 8) + 8))(v9);
  }

  return a1;
}

uint64_t sub_1B0A81BE0(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  v4 = *(type metadata accessor for WatchOSHeaderInfo() + 40);
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 32))(a2 + v4, a1 + v4);
  return a2;
}

char *sub_1B0A81CA4(char *a1)
{
  v1 = *(a1 + 1);

  v2 = *(a1 + 2);

  v3 = *(a1 + 3);

  v4 = *(a1 + 4);

  v5 = *(a1 + 6);

  v6 = *(a1 + 8);

  v9 = *(type metadata accessor for WatchOSHeaderInfo() + 40);
  v7 = sub_1B0E43108();
  (*(*(v7 - 8) + 8))(&a1[v9]);
  return a1;
}

char *sub_1B0A81D64(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 1) = v4;
  v5 = *(a1 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 2) = v5;
  v6 = *(a1 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 3) = v6;
  v7 = *(a1 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 4) = v7;
  *(a2 + 5) = *(a1 + 5);
  v8 = *(a1 + 6);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 6) = v8;
  *(a2 + 7) = *(a1 + 7);
  v9 = *(a1 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 8) = v9;
  v10 = *(type metadata accessor for WatchOSRender.Message.InfoFromHeader() + 40);
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 16))(&a2[v10], &a1[v10]);
  return a2;
}

unint64_t sub_1B0A81EB4()
{
  v2 = qword_1EB6E3D60;
  if (!qword_1EB6E3D60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3D60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B0A81F94()
{
  v4 = sub_1B0E43108();
  if (v0 <= 0x3F)
  {
    v4 = sub_1B07CEB70();
    if (v1 <= 0x3F)
    {
      v4 = sub_1B041BC68();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1B0A82190()
{
  v2 = sub_1B0E43108();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1B0A822E0()
{
  v4 = sub_1B07CEB70();
  if (v0 <= 0x3F)
  {
    v4 = sub_1B041BC68();
    if (v1 <= 0x3F)
    {
      v4 = sub_1B0E43108();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

unint64_t sub_1B0A8246C()
{
  v2 = qword_1EB6E3D98;
  if (!qword_1EB6E3D98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E3D98);
    return WitnessTable;
  }

  return v2;
}

id sub_1B0A82564()
{
  sub_1B07B8964();
  type metadata accessor for ResourceBundleClass();
  result = sub_1B0A825AC();
  qword_1EB6E3DA0 = result;
  return result;
}

id sub_1B0A825AC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

uint64_t *sub_1B0A82604()
{
  if (qword_1EB6E0B88 != -1)
  {
    swift_once();
  }

  return &qword_1EB6E3DA0;
}

uint64_t sub_1B0A82664()
{
  v2 = sub_1B0E435E8();
  __swift_allocate_value_buffer(v2, qword_1EB738210);
  __swift_project_value_buffer(v2, qword_1EB738210);
  sub_1B0E44838();
  v0 = sub_1B0A82604();
  MEMORY[0x1E69E5928](*v0);
  return sub_1B0E435D8();
}

uint64_t sub_1B0A826FC()
{
  if (qword_1EB6E0B90 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E435E8();
  return __swift_project_value_buffer(v0, qword_1EB738210);
}

uint64_t sub_1B0A82768@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A826FC();
  v1 = sub_1B0E435E8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B0A827CC()
{
  v2 = sub_1B0E435E8();
  __swift_allocate_value_buffer(v2, qword_1EB738228);
  __swift_project_value_buffer(v2, qword_1EB738228);
  sub_1B0E44838();
  v0 = sub_1B0A82604();
  MEMORY[0x1E69E5928](*v0);
  return sub_1B0E435D8();
}

uint64_t sub_1B0A82864()
{
  if (qword_1EB6E0B98 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E435E8();
  return __swift_project_value_buffer(v0, qword_1EB738228);
}

uint64_t sub_1B0A828D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A82864();
  v1 = sub_1B0E435E8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B0A82934()
{
  v2 = sub_1B0E435E8();
  __swift_allocate_value_buffer(v2, qword_1EB738240);
  __swift_project_value_buffer(v2, qword_1EB738240);
  sub_1B0E44838();
  v0 = sub_1B0A82604();
  MEMORY[0x1E69E5928](*v0);
  return sub_1B0E435D8();
}

uint64_t sub_1B0A829CC()
{
  if (qword_1EB6E0BA0 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E435E8();
  return __swift_project_value_buffer(v0, qword_1EB738240);
}

uint64_t sub_1B0A82A38@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A829CC();
  v1 = sub_1B0E435E8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B0A82A9C()
{
  v2 = sub_1B0E435E8();
  __swift_allocate_value_buffer(v2, qword_1EB738258);
  __swift_project_value_buffer(v2, qword_1EB738258);
  sub_1B0E44838();
  v0 = sub_1B0A82604();
  MEMORY[0x1E69E5928](*v0);
  return sub_1B0E435D8();
}

uint64_t sub_1B0A82B34()
{
  if (qword_1EB6E0BA8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E435E8();
  return __swift_project_value_buffer(v0, qword_1EB738258);
}

uint64_t sub_1B0A82BA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A82B34();
  v1 = sub_1B0E435E8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B0A82C04()
{
  v2 = sub_1B0E435E8();
  __swift_allocate_value_buffer(v2, qword_1EB738270);
  __swift_project_value_buffer(v2, qword_1EB738270);
  sub_1B0E44838();
  v0 = sub_1B0A82604();
  MEMORY[0x1E69E5928](*v0);
  return sub_1B0E435D8();
}

uint64_t sub_1B0A82C9C()
{
  if (qword_1EB6E0BB0 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E435E8();
  return __swift_project_value_buffer(v0, qword_1EB738270);
}

uint64_t sub_1B0A82D08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A82C9C();
  v1 = sub_1B0E435E8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B0A82D6C()
{
  v2 = sub_1B0E435E8();
  __swift_allocate_value_buffer(v2, qword_1EB738288);
  __swift_project_value_buffer(v2, qword_1EB738288);
  sub_1B0E44838();
  v0 = sub_1B0A82604();
  MEMORY[0x1E69E5928](*v0);
  return sub_1B0E435D8();
}

uint64_t sub_1B0A82E04()
{
  if (qword_1EB6E0BB8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E435E8();
  return __swift_project_value_buffer(v0, qword_1EB738288);
}

uint64_t sub_1B0A82E70@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A82E04();
  v1 = sub_1B0E435E8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B0A82ED4()
{
  v2 = sub_1B0E435E8();
  __swift_allocate_value_buffer(v2, qword_1EB7382A0);
  __swift_project_value_buffer(v2, qword_1EB7382A0);
  sub_1B0E44838();
  v0 = sub_1B0A82604();
  MEMORY[0x1E69E5928](*v0);
  return sub_1B0E435D8();
}

uint64_t sub_1B0A82F6C()
{
  if (qword_1EB6E0BC0 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E435E8();
  return __swift_project_value_buffer(v0, qword_1EB7382A0);
}

uint64_t sub_1B0A82FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A82F6C();
  v1 = sub_1B0E435E8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B0A8303C()
{
  v2 = sub_1B0E435E8();
  __swift_allocate_value_buffer(v2, qword_1EB7382B8);
  __swift_project_value_buffer(v2, qword_1EB7382B8);
  sub_1B0E44838();
  v0 = sub_1B0A82604();
  MEMORY[0x1E69E5928](*v0);
  return sub_1B0E435D8();
}

uint64_t sub_1B0A830D4()
{
  if (qword_1EB6E0BC8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E435E8();
  return __swift_project_value_buffer(v0, qword_1EB7382B8);
}

uint64_t sub_1B0A83140@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A830D4();
  v1 = sub_1B0E435E8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B0A831A4()
{
  v2 = sub_1B0E435E8();
  __swift_allocate_value_buffer(v2, qword_1EB7382D0);
  __swift_project_value_buffer(v2, qword_1EB7382D0);
  sub_1B0E44838();
  v0 = sub_1B0A82604();
  MEMORY[0x1E69E5928](*v0);
  return sub_1B0E435D8();
}

uint64_t sub_1B0A8323C()
{
  if (qword_1EB6E0BD0 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E435E8();
  return __swift_project_value_buffer(v0, qword_1EB7382D0);
}

uint64_t sub_1B0A832A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A8323C();
  v1 = sub_1B0E435E8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B0A8330C()
{
  v2 = sub_1B0E435E8();
  __swift_allocate_value_buffer(v2, qword_1EB7382E8);
  __swift_project_value_buffer(v2, qword_1EB7382E8);
  sub_1B0E44838();
  v0 = sub_1B0A82604();
  MEMORY[0x1E69E5928](*v0);
  return sub_1B0E435D8();
}

uint64_t sub_1B0A833A4()
{
  if (qword_1EB6E0BD8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E435E8();
  return __swift_project_value_buffer(v0, qword_1EB7382E8);
}

uint64_t sub_1B0A83410@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A833A4();
  v1 = sub_1B0E435E8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1B0A83474()
{
  v2 = sub_1B0E435E8();
  __swift_allocate_value_buffer(v2, qword_1EB738300);
  __swift_project_value_buffer(v2, qword_1EB738300);
  sub_1B0E44838();
  v0 = sub_1B0A82604();
  MEMORY[0x1E69E5928](*v0);
  return sub_1B0E435D8();
}

uint64_t sub_1B0A8350C()
{
  if (qword_1EB6E0BE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E435E8();
  return __swift_project_value_buffer(v0, qword_1EB738300);
}

uint64_t sub_1B0A83578@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0A8350C();
  v1 = sub_1B0E435E8();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void *SetDetailsEncProb(uint64_t a1, int a2, int a3, std::string::value_type *__s)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 32) + 304 * v5;
  *v6 = a2;
  *(v6 + 4) = a3;
  std::string::__assign_external((v6 + 8), __s);
  result = memcpy((*(a1 + 32) + 304 * v5 + 32), (a1 + 532), 0x10CuLL);
  ++*(a1 + 40);
  return result;
}

void *SetDetailsEncProbCopyOffset(uint64_t a1, int a2, std::string::value_type *__s)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 32) + 304 * v4;
  *v5 = *(v5 - 304);
  *(v5 + 4) = a2;
  std::string::__assign_external((v5 + 8), __s);
  result = memcpy((*(a1 + 32) + 304 * v4 + 32), (a1 + 532), 0x10CuLL);
  ++*(a1 + 40);
  return result;
}

void *SetDetailsEncLabel(uint64_t a1, const std::string::value_type *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32) + 304 * v3;
  *v4 = *(v4 - 304);
  *(v4 + 4) = -1;
  std::string::__assign_external((v4 + 8), a2);
  result = memcpy((*(a1 + 32) + 304 * v3 + 32), (a1 + 532), 0x10CuLL);
  ++*(a1 + 40);
  return result;
}

void *SetDetailsLabel(uint64_t a1, const std::string::value_type *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = 304 * v3 - 304;
  v6 = *(v4 + v5);
  v7 = v4 + 304 * v3;
  *v7 = v6;
  *(v7 + 4) = -1;
  std::string::__assign_external((v7 + 8), a2);
  result = memcpy((*(a1 + 32) + 304 * v3 + 32), (*(a1 + 32) + v5 + 32), 0x10CuLL);
  ++*(a1 + 40);
  return result;
}

uint64_t UTF88Sub(int a1, unsigned int a2)
{
  v2 = (a2 >> 4) & 3;
  v3 = v2 | 4;
  if (a1 != 226)
  {
    v3 = (a2 >> 4) & 3;
  }

  v4 = v2 | 8;
  if (((1 << (a1 + 62)) & 0x219) == 0)
  {
    v4 = (a2 >> 4) & 3;
  }

  if (a1 - 194 <= 9)
  {
    v5 = v4;
  }

  else
  {
    v5 = (a2 >> 4) & 3;
  }

  if ((a1 & 0xF0) != 0xC0)
  {
    v5 = v3;
  }

  v6 = v2 | 0xC;
  if (a1 == -61)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t CompactEncDet::BackmapEncodingToRankedEncoding(int a1)
{
  result = 0;
  while (kMapToEncoding[result] != a1)
  {
    if (++result == 67)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

std::string *DecodeActive@<X0>(__int16 a1@<W0>, std::string *a2@<X8>)
{
  memset(a2, 170, sizeof(std::string));
  result = std::string::basic_string[abi:ne200100]<0>(a2, "");
  if ((a1 & 0x80) != 0)
  {
    result = std::string::append(a2, "Binary ", 7uLL);
  }

  if ((a1 & 0x40) != 0)
  {
    result = std::string::append(a2, "UTF1632 ", 8uLL);
  }

  if ((a1 & 0x20) != 0)
  {
    result = std::string::append(a2, "UTF8UTF8 ", 9uLL);
  }

  if ((a1 & 0x10) != 0)
  {
    result = std::string::append(a2, "UTF8 ", 5uLL);
  }

  if ((a1 & 8) != 0)
  {
    result = std::string::append(a2, "Iso2022 ", 8uLL);
  }

  if ((a1 & 4) != 0)
  {
    result = std::string::append(a2, "Hz ", 3uLL);
  }

  if ((a1 & 2) != 0)
  {
    result = std::string::append(a2, "UTF7A ", 6uLL);
  }

  if (a1)
  {
    result = std::string::append(a2, "SevenBit ", 9uLL);
  }

  if ((a1 & 0x200) != 0)
  {
    result = std::string::append(a2, "Indic ", 6uLL);
  }

  if ((a1 & 0x400) != 0)
  {
    result = std::string::append(a2, "HighAlpha ", 0xAuLL);
  }

  if ((a1 & 0x800) != 0)
  {
    result = std::string::append(a2, "HighAccent ", 0xBuLL);
  }

  if ((a1 & 0x1000) != 0)
  {
    return std::string::append(a2, "EUCJP ", 6uLL);
  }

  return result;
}

void sub_1B0A839B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void PsSourceInit(int a1)
{
  pssourcenext = 0;
  pssourcewidth = a1;
  if (pssource_mark_buffer)
  {
    MEMORY[0x1B272A6C0](pssource_mark_buffer, 0x1000C8077774924);
  }

  operator new[]();
}

uint64_t PsSourceFinish(void)
{
  v0 = (2 * pssourcewidth);
  v1 = pssource_mark_buffer;
  v2 = v0 & (v0 >> 31);
  v3 = v0 - 1;
  while (1)
  {
    v4 = __OFSUB__(v0, 1);
    LODWORD(v0) = v0 - 1;
    if (v0 < 0 != v4)
    {
      break;
    }

    v5 = *(pssource_mark_buffer + v3--);
    if (v5 != 32)
    {
      v2 = v0 + 1;
      break;
    }
  }

  *(pssource_mark_buffer + v2) = 0;
  fprintf(*MEMORY[0x1E69E9848], "(      %s) do-src\n", v1);
  v6 = pssource_mark_buffer;
  v7 = 2 * pssourcewidth;
  memset(pssource_mark_buffer, 32, v7);
  *(v6 + v7) = 0;
  result = MEMORY[0x1B272A6C0](v6, 0x1000C8077774924);
  pssource_mark_buffer = 0;
  return result;
}

size_t PsSource(size_t result, const unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v4 = (result - a2) / pssourcewidth * pssourcewidth;
  if (v4 >= pssourcenext)
  {
    v5 = a3;
    pssourcenext = v4 + pssourcewidth;
    v6 = (2 * pssourcewidth);
    v7 = pssource_mark_buffer;
    v8 = v6 & (v6 >> 31);
    v9 = v6 - 1;
    while (1)
    {
      v10 = __OFSUB__(v6, 1);
      LODWORD(v6) = v6 - 1;
      if (v6 < 0 != v10)
      {
        break;
      }

      v11 = *(pssource_mark_buffer + v9--);
      if (v11 != 32)
      {
        v8 = v6 + 1;
        break;
      }
    }

    *(pssource_mark_buffer + v8) = 0;
    v12 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "(      %s) do-src\n", v7);
    v13 = pssource_mark_buffer;
    v14 = pssourcewidth;
    memset(pssource_mark_buffer, 32, 2 * pssourcewidth);
    *(v13 + 2 * v14) = 0;
    v15 = &a2[v4];
    if (v14 >= v5 - v15)
    {
      v16 = (v5 - v15);
    }

    else
    {
      v16 = v14;
    }

    fprintf(*v12, "(%05x ", v4);
    if (v16 >= 1)
    {
      do
      {
        v18 = *v15++;
        v17 = v18;
        if (v18 == 10)
        {
          v19 = 32;
        }

        else
        {
          v19 = v17;
        }

        if (v19 == 13)
        {
          v19 = 32;
        }

        if (v19 == 9)
        {
          LOBYTE(v19) = 32;
        }

        switch(v17)
        {
          case '\\':
            v20 = *v12;
            v21 = "\\\\ ";
            break;
          case ')':
            v20 = *v12;
            v21 = "\\) ";
            break;
          case '(':
            v20 = *v12;
            v21 = "\\( ";
            break;
          default:
            v22 = *v12;
            if ((v19 - 32) > 0x5E)
            {
              fprintf(v22, "%02x");
            }

            else
            {
              fprintf(v22, "%c ");
            }

            goto LABEL_27;
        }

        fputs(v21, v20);
LABEL_27:
        --v16;
      }

      while (v16);
    }

    result = fwrite(") do-src\n", 9uLL, 1uLL, *v12);
    v23 = next_do_src_line;
    *(&do_src_offset + (next_do_src_line & 0xF)) = v4;
    next_do_src_line = v23 + 1;
  }

  return result;
}

uint64_t PsMark(uint64_t result, int a2, const unsigned __int8 *a3, int a4)
{
  v4 = (result - a3) % pssourcewidth;
  if (a4)
  {
    v5 = 120;
  }

  else
  {
    v5 = 45;
  }

  v6 = pssource_mark_buffer;
  v7 = 2 * v4;
  *(pssource_mark_buffer + v7) = 61;
  *(v6 + v7 + 1) = 61;
  if (a2 >= 2)
  {
    v8 = (v6 + 2 * v4 + 3);
    v9 = a2 - 1;
    do
    {
      *(v8 - 1) = v5;
      *v8 = v5;
      v8 += 2;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t PsHighlight(uint64_t result, const unsigned __int8 *a2, int a3, int a4)
{
  v4 = result - a2 + 1;
  v5 = v4 / pssourcewidth * pssourcewidth;
  v6 = v4 % pssourcewidth;
  v7 = next_do_src_line - 1;
  v8 = 1;
  while (*(&do_src_offset + (v7 & 0xF)) != v5)
  {
    ++v8;
    --v7;
    if (v8 == 17)
    {
      return result;
    }
  }

  return fprintf(*MEMORY[0x1E69E9848], "%d %d %d do-highlight%d\n", v8, v6 - 1, a3, a4);
}

void InitDetectEncodingState(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  *(a1 + 180) = 0u;
  *(a1 + 164) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 31) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 145) = 0u;
  *(a1 + 196) = xmmword_1B0EA45D0;
  *(a1 + 240) = xmmword_1B0EA45E0;
  *(a1 + 256) = 1200;
  *(a1 + 236) = -1;
  *(a1 + 228) = -1;
  *(a1 + 220) = -1;
  *(a1 + 212) = 23;
  do
  {
    if ((kSpecialMask[kMapToEncoding[v1]] & 0x200) == 0)
    {
      *(a1 + 264 + 4 * v2++) = v1;
    }

    ++v1;
  }

  while (v1 != 67);
  *(a1 + 260) = v2;
  bzero((a1 + 532), 0x334uLL);
}

uint64_t ApplyCompressedProb(unsigned __int8 *a1, int a2, int a3, uint64_t a4)
{
  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  v6 = (a4 + 1068);
  v7 = a4 + 532;
  v8 = -1;
  v9 = (a4 + 532);
  v10 = &a1[a2];
  do
  {
    v12 = *a1++;
    v11 = v12;
    if (!v12)
    {
      break;
    }

    v13 = v11 & 0xF;
    if ((v11 & 0xF) != 0)
    {
      v14 = v11 >> 4;
      v15 = &v9[v14];
      v16 = &v6[v14];
      v17 = (v15 - v7) >> 2;
      v18 = v13;
      v19 = a1;
      v20 = v15;
      v21 = v16;
      do
      {
        v23 = *v19++;
        v22 = v23;
        v24 = v8 <= v23;
        if (v8 >= v23)
        {
          result = result;
        }

        else
        {
          result = v17;
        }

        if (v24)
        {
          v8 = v22;
        }

        if (a3 >= 1)
        {
          v25 = 3 * a3 * v22 / 0x64u;
          if (*v20 > v25)
          {
            v25 = *v20;
          }

          *v20 = v25;
          *v21 = 1;
        }

        LODWORD(v17) = v17 + 1;
        ++v21;
        ++v20;
        --v18;
      }

      while (v18);
      a1 += v13;
      v9 = &v15[v13];
      v6 = &v16[v13];
    }

    else
    {
      v9 += v11;
      v6 += v11;
    }
  }

  while (a1 < v10);
  return result;
}

uint64_t TopCompressedProb(const char *a1, int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  result = 0;
  v6 = &a1[a2];
  do
  {
    v8 = *a1++;
    v7 = v8;
    if (!v8)
    {
      break;
    }

    v9 = v7 & 0xF;
    if ((v7 & 0xF) != 0)
    {
      v10 = (v7 >> 4) + v3;
      v11 = v7 & 0xF;
      v12 = a1;
      v13 = v10;
      do
      {
        v15 = *v12++;
        v14 = v15;
        v16 = v4 <= v15;
        if (v4 >= v15)
        {
          result = result;
        }

        else
        {
          result = v13;
        }

        if (v16)
        {
          v4 = v14;
        }

        ++v13;
        --v11;
      }

      while (v11);
      a1 += v9;
      v3 = v10 + v9;
    }

    else
    {
      v3 += v7;
    }
  }

  while (a1 < v6);
  return result;
}

uint64_t HintBinaryLookup8(uint64_t a1, signed int a2, unint64_t *a3)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = bswap64(*a3);
    do
    {
      v5 = (v3 + a2) >> 1;
      v6 = bswap64(*(a1 + 20 * v5));
      v7 = v6 >= v4;
      v8 = v6 > v4;
      v9 = !v7;
      v10 = v8 - v9;
      if (v10 < 0)
      {
        v3 = v5 + 1;
      }

      else
      {
        a2 = (v3 + a2) >> 1;
        if (!v10)
        {
          return v5;
        }
      }
    }

    while (v3 < a2);
  }

  return 0xFFFFFFFFLL;
}

uint64_t HintBinaryLookup4(uint64_t a1, signed int a2, unsigned int *a3)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = bswap32(*a3);
    do
    {
      v5 = (v3 + a2) >> 1;
      v6 = bswap32(*(a1 + 20 * v5));
      v7 = v6 >= v4;
      v8 = v6 > v4;
      v9 = !v7;
      v10 = v8 - v9;
      if (v10 < 0)
      {
        v3 = v5 + 1;
      }

      else
      {
        a2 = (v3 + a2) >> 1;
        if (!v10)
        {
          return v5;
        }
      }
    }

    while (v3 < a2);
  }

  return 0xFFFFFFFFLL;
}

uint64_t ApplyTldHint(char *__s, int a2, uint64_t a3)
{
  if (*__s == 126)
  {
    return 0;
  }

  memset(v17, 170, sizeof(v17));
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  MakeChar4(__p, v17);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17[2]) >= 0)
  {
    v7 = v17;
  }

  else
  {
    v7 = v17[0];
  }

  v8 = HintBinaryLookup4(kTLDHintProbs, 247, v7);
  if (v8 < 0)
  {
    v3 = 0;
  }

  else
  {
    v9 = ApplyCompressedProb(&kTLDHintProbs[20 * v8 + 4], 16, a2, a3);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = 4;
    }

    *(a3 + 48) = v10;
    v11 = *(a3 + 32);
    if (v11)
    {
      v12 = *(a3 + 40);
      v13 = v11 + 304 * v12;
      *v13 = 0;
      *(v13 + 4) = v10;
      std::string::__assign_external((v13 + 8), __s);
      memcpy((*(a3 + 32) + 304 * v12 + 32), (a3 + 532), 0x10CuLL);
      ++*(a3 + 40);
    }

    v3 = 1;
  }

  if (SHIBYTE(v17[2]) < 0)
  {
    operator delete(v17[0]);
  }

  return v3;
}

void sub_1B0A84338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ApplyCharsetHint(char *__s, int a2, uint64_t a3)
{
  if (*__s == 126)
  {
    return 0;
  }

  memset(&__str, 170, sizeof(__str));
  std::string::basic_string[abi:ne200100]<0>(&__p, __s);
  MakeChar44(&__p, &__str);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  v8 = HintBinaryLookup8(kCharsetHintProbs, 438, p_str);
  if (v8 < 0)
  {
    v3 = 0;
    goto LABEL_61;
  }

  v9 = ApplyCompressedProb(&kCharsetHintProbs[20 * v8 + 8], 12, a2, a3);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = 4;
  }

  *(a3 + 48) = v10;
  if (*(a3 + 204) == 23 && *(a3 + 208) == 23)
  {
    v11 = 604;
    switch(v9)
    {
      case 9u:
        v12 = 12;
        goto LABEL_34;
      case 0xAu:
        *(a3 + 52) = 0;
        v11 = 572;
        goto LABEL_43;
      case 0xBu:
        v15 = 34;
        goto LABEL_32;
      case 0xCu:
        v12 = 9;
LABEL_34:
        *(a3 + 52) = v12;
        *(a3 + 568) += 120;
        v11 = 580;
        goto LABEL_43;
      case 0xDu:
        *(a3 + 52) = 0;
        v11 = 584;
        goto LABEL_43;
      case 0xEu:
        v16 = 28;
        goto LABEL_41;
      case 0xFu:
        *(a3 + 52) = 0;
        v11 = 592;
        goto LABEL_43;
      case 0x10u:
        v17 = 29;
        goto LABEL_39;
      case 0x11u:
        v13 = 25;
        goto LABEL_36;
      case 0x12u:
        goto LABEL_43;
      case 0x14u:
        v14 = 23;
        goto LABEL_22;
      case 0x16u:
        *(a3 + 52) = 0;
        v11 = 620;
        goto LABEL_43;
      case 0x17u:
        v14 = 20;
LABEL_22:
        *(a3 + 52) = v14;
        *(a3 + 612) += 120;
        v11 = 624;
        goto LABEL_43;
      case 0x19u:
        v13 = 17;
LABEL_36:
        *(a3 + 52) = v13;
        *(a3 + 632) += 120;
        v11 = 600;
        goto LABEL_43;
      case 0x1Au:
        v11 = 636;
        goto LABEL_43;
      case 0x1Bu:
        *(a3 + 52) = 0;
        v11 = 640;
        goto LABEL_43;
      case 0x1Cu:
        v16 = 14;
LABEL_41:
        *(a3 + 52) = v16;
        *(a3 + 588) += 120;
        v11 = 644;
        goto LABEL_43;
      case 0x1Du:
        v17 = 16;
LABEL_39:
        *(a3 + 52) = v17;
        *(a3 + 648) += 120;
        v11 = 596;
        goto LABEL_43;
      case 0x1Eu:
        *(a3 + 52) = 0;
        v11 = 652;
        goto LABEL_43;
      case 0x22u:
        v15 = 11;
LABEL_32:
        *(a3 + 52) = v15;
        *(a3 + 668) += 120;
        v11 = 576;
        goto LABEL_43;
      case 0x26u:
        *(a3 + 52) = 0;
        v11 = 684;
        goto LABEL_43;
      case 0x2Bu:
        *(a3 + 52) = 0;
        v11 = 704;
LABEL_43:
        *(a3 + v11) += 120;
        break;
      default:
        break;
    }
  }

  v18 = *(a3 + 32);
  if (v18)
  {
    v19 = *(a3 + 40);
    v20 = v18 + 304 * v19;
    *v20 = 0;
    *(v20 + 4) = v10;
    std::string::__assign_external((v20 + 8), __s);
    memcpy((*(a3 + 32) + 304 * v19 + 32), (a3 + 532), 0x10CuLL);
    ++*(a3 + 40);
  }

  if (v10 > 4 || ((1 << v10) & 0x16) == 0)
  {
    *(a3 + 768) -= 2400;
  }

  std::string::basic_string(&__p, &__str, 0, 4uLL, &v26);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 4 || LODWORD(__p.__r_.__value_.__l.__data_) != 1919251317)
    {
      goto LABEL_60;
    }

LABEL_58:
    *(a3 + 764) += 7200;
    goto LABEL_60;
  }

  if (__p.__r_.__value_.__l.__size_ != 4)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_60;
  }

  v22 = *__p.__r_.__value_.__l.__data_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (v22 == 1919251317)
  {
    goto LABEL_58;
  }

LABEL_60:
  v3 = 1;
LABEL_61:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_1B0A846E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ApplyEncodingHint(int a1, int a2, uint64_t a3)
{
  v5 = 0;
  v6 = a1 ^ (a1 >> 31);
  while (kMapToEncoding[v5] != v6)
  {
    if (++v5 == 67)
    {
      v5 = -1;
      break;
    }
  }

  if (a1 >= 0)
  {
    v7 = 6 * a2;
  }

  else
  {
    v7 = -6 * a2;
  }

  *(a3 + 532 + 4 * v5) += v7;
  if (*(a3 + 32))
  {
    v8 = MyEncodingName(v6);
    v9 = *(a3 + 40);
    v10 = *(a3 + 32) + 304 * v9;
    *v10 = 0xFFFFFFFF00000000;
    std::string::__assign_external((v10 + 8), v8);
    memcpy((*(a3 + 32) + 304 * v9 + 32), (a3 + 532), 0x10CuLL);
    ++*(a3 + 40);
  }

  return 1;
}

uint64_t ApplyUILanguageHint(unsigned int a1, int a2, uint64_t a3)
{
  if (a1 == 26)
  {
    return 0;
  }

  memset(v21, 170, sizeof(v21));
  v6 = LanguageName(a1);
  std::string::basic_string[abi:ne200100]<0>(__p, v6);
  MakeChar8(__p, v21);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = HIBYTE(v21[2]);
  if (SHIBYTE(v21[2]) >= 0)
  {
    v8 = v21;
  }

  else
  {
    v8 = v21[0];
  }

  v9 = HintBinaryLookup8(kLangHintProbs, 151, v8);
  if (v9 < 0)
  {
    v3 = 0;
    if ((v7 & 0x80) == 0)
    {
      return v3;
    }

    goto LABEL_19;
  }

  v10 = ApplyCompressedProb(&kLangHintProbs[20 * v9 + 8], 12, a2, a3);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 4;
  }

  *(a3 + 48) = v11;
  v12 = *(a3 + 32);
  v13 = SHIBYTE(v21[2]);
  if (!v12)
  {
    v3 = 1;
    if ((SHIBYTE(v21[2]) & 0x80) == 0)
    {
      return v3;
    }

    goto LABEL_19;
  }

  v14 = v21[0];
  v15 = *(a3 + 40);
  v16 = v12 + 304 * v15;
  *v16 = 0;
  *(v16 + 4) = v11;
  if (v13 >= 0)
  {
    v17 = v21;
  }

  else
  {
    v17 = v14;
  }

  std::string::__assign_external((v16 + 8), v17);
  memcpy((*(a3 + 32) + 304 * v15 + 32), (a3 + 532), 0x10CuLL);
  ++*(a3 + 40);
  v3 = 1;
  if ((HIBYTE(v21[2]) & 0x80) != 0)
  {
LABEL_19:
    operator delete(v21[0]);
  }

  return v3;
}

void sub_1B0A84940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ApplyDefaultHint(unsigned int a1, uint64_t a2)
{
  v3 = 0;
  v4 = (a2 + 532);
  do
  {
    v5 = 3 * kDefaultProb[v3];
    if (kSpecialMask[kMapToEncoding[v3]])
    {
      v5 = 0;
    }

    *(v4 + v3++) = v5;
  }

  while (v3 != 67);
  if (a1 < 2)
  {
    *(a2 + 768) = *(a2 + 540) - 60;
  }

  if (FLAGS_demo_nodefault == 1)
  {
    *(v4 + 252) = 0u;
    v4[14] = 0u;
    v4[15] = 0u;
    v4[12] = 0u;
    v4[13] = 0u;
    v4[10] = 0u;
    v4[11] = 0u;
    v4[8] = 0u;
    v4[9] = 0u;
    v4[6] = 0u;
    v4[7] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = *(a2 + 40);
    v8 = v6 + 304 * v7;
    *v8 = 0xFFFFFFFF00000000;
    v9 = (v8 + 8);
    if (*(v8 + 31) < 0)
    {
      *(v8 + 16) = 7;
      v9 = *v9;
    }

    else
    {
      *(v8 + 31) = 7;
    }

    strcpy(v9, "Default");
    memcpy((*(a2 + 32) + 304 * v7 + 32), v4, 0x10CuLL);
    ++*(a2 + 40);
  }

  return 1;
}

const char *MyMemrchr(const char *a1, unsigned __int8 a2, uint64_t a3)
{
  v3 = &a1[a3 - 1];
  while (v3 >= a1)
  {
    v4 = *v3--;
    if (v4 == a2)
    {
      return v3 + 1;
    }
  }

  return 0;
}

uint64_t ExtractTLD(char *a1, char *__dst, int a3, const char **a4, int *a5)
{
  v10 = a3;
  result = strncpy(__dst, "~", a3);
  v12 = v10 - 1;
  __dst[v10 - 1] = 0;
  *a4 = 0;
  *a5 = 0;
  if (a1)
  {
    result = strlen(a1);
    v13 = result;
    if (result)
    {
      if (result < 11)
      {
        result = strncpy(__dst, a1, v10);
        __dst[v12] = 0;
      }

      else
      {
        result = strchr(a1, 47);
        if (result)
        {
          v14 = result;
          if (result != a1 && *(result - 1) == 58 && *(result + 1) == 47)
          {
            v15 = result - a1;
            if (result == a1)
            {
LABEL_11:
              v16 = (result + 2);
              v17 = strchr((result + 2), 47);
              v18 = &a1[v13 & 0x7FFFFFFF];
              if (v17)
              {
                v18 = v17;
              }

              v19 = v18 - v16;
              result = memchr((v14 + 2), 58, v18 - v16);
              if (result)
              {
                v19 = result - v16;
              }

              v20 = v19 + 2;
              v21 = (v19 + v14 + 3);
              v22 = -1;
              while (v20 >= 3)
              {
                --v20;
                v23 = *(v21 - 2);
                --v21;
                ++v22;
                if (v23 == 46)
                {
                  if (v22 >= a3)
                  {
                    v24 = v12;
                  }

                  else
                  {
                    v24 = v22;
                  }

                  result = memcpy(__dst, v21, v24);
                  __dst[v24] = 0;
                  break;
                }
              }

              *a4 = v16;
              *a5 = v19;
            }

            else
            {
              while (a1[v15 - 1] != 46)
              {
                if (!--v15)
                {
                  goto LABEL_11;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *ApplyHints(char *a1, char *a2, char *a3, int a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v39 = *MEMORY[0x1E69E9840];
  memset(__dst, 170, sizeof(__dst));
  ExtractTLD(a1, __dst, 16, &v37, &v36);
  *(a7 + 48) = 4;
  if (a2)
  {
    LODWORD(v15) = 4;
    if (*a2 == 126)
    {
      LODWORD(a2) = 0;
    }

    else
    {
      *(a7 + 52) = 4;
      LODWORD(a2) = ApplyCharsetHint(a2, 100, a7);
      v15 = *(a7 + 48);
      *(a7 + 204) = kMapToEncoding[v15];
      if (v15 == 4 || v15 == 1)
      {
        *(a7 + 64) = 1;
      }
    }
  }

  else
  {
    LODWORD(v15) = 4;
  }

  if (a3)
  {
    if (*a3 != 126)
    {
      *(a7 + 52) = v15;
      LODWORD(a2) = ApplyCharsetHint(a3, 100, a7) + a2;
      v16 = *(a7 + 48);
      LODWORD(v15) = *(a7 + 48);
      *(a7 + 208) = kMapToEncoding[v16];
      if (v16 == 4 || v15 == 1)
      {
        *(a7 + 64) = 1;
      }
    }
  }

  if (a4 != 23)
  {
    *(a7 + 52) = v15;
    ApplyEncodingHint(a4, 50, a7);
    LODWORD(a2) = a2 + 1;
  }

  if (a5 != 26)
  {
    *(a7 + 52) = *(a7 + 48);
    LODWORD(a2) = ApplyUILanguageHint(a5, 50, a7) + a2;
  }

  if (a1)
  {
    *(a7 + 200) = CompactEncDet::TopEncodingOfTLDHint(__dst, v14);
    if (a2 == 1)
    {
      if (*__dst != 7171939)
      {
        *(a7 + 52) = *(a7 + 48);
        ApplyTldHint(__dst, 50, a7);
        v19 = *(a7 + 48);
        if (v19 == 4 || v19 == 1)
        {
          *(a7 + 64) = 1;
        }
      }

      goto LABEL_31;
    }

    if (a2)
    {
      goto LABEL_31;
    }

    *(a7 + 52) = *(a7 + 48);
    v17 = ApplyTldHint(__dst, 100, a7);
    LODWORD(a2) = v17;
    v18 = *(a7 + 48);
    if (v18 == 4 || v18 == 1)
    {
      *(a7 + 64) = 1;
    }

    if (!(*__dst ^ 0x7568 | __dst[2]))
    {
      *(a7 + 64) = 1;
      if (v17)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

  if (!a2)
  {
LABEL_25:
    *(a7 + 64) = 1;
    *(a7 + 52) = *(a7 + 48);
    ApplyDefaultHint(a6, a7);
  }

LABEL_31:
  *(a7 + 628) = *(a7 + 556) - 60;
  v20 = *(a7 + 544) - 60;
  *(a7 + 608) = v20;
  *(a7 + 660) = v20;
  v21 = *(a7 + 564);
  *(a7 + 564) = v21 - 60;
  *(a7 + 672) = v21 - 120;
  v22 = *(a7 + 32);
  if (v22)
  {
    v23 = *(a7 + 40);
    v24 = v22 + 304 * v23;
    *v24 = 0xFFFFFFFF00000000;
    v25 = (v24 + 8);
    if (*(v24 + 31) < 0)
    {
      *(v24 + 16) = 8;
      v25 = *v25;
    }

    else
    {
      *(v24 + 31) = 8;
    }

    strcpy(v25, "Endhints");
    memcpy((*(a7 + 32) + 304 * v23 + 32), (a7 + 532), 0x10CuLL);
    v26 = *(a7 + 40) + 1;
    *(a7 + 40) = v26;
    if (FLAGS_enc_detect_detail2 == 1)
    {
      v27 = watch1_rankedenc;
      if ((watch1_rankedenc & 0x80000000) == 0)
      {
        v28 = *(a7 + 32) + 304 * v26;
        *v28 = 0;
        *(v28 + 4) = v27;
        v29 = (v28 + 8);
        if (*(v28 + 31) < 0)
        {
          *(v28 + 16) = 0;
          v29 = *v29;
        }

        else
        {
          *(v28 + 31) = 0;
        }

        *v29 = 0;
        memcpy((*(a7 + 32) + 304 * v26 + 32), (a7 + 532), 0x10CuLL);
        LODWORD(v26) = *(a7 + 40) + 1;
        *(a7 + 40) = v26;
      }

      v30 = watch2_rankedenc;
      if ((watch2_rankedenc & 0x80000000) == 0)
      {
        v31 = v26;
        v32 = *(a7 + 32) + 304 * v26;
        *v32 = 0;
        *(v32 + 4) = v30;
        v33 = (v32 + 8);
        if (*(v32 + 31) < 0)
        {
          *(v32 + 16) = 0;
          v33 = *v33;
        }

        else
        {
          *(v32 + 31) = 0;
        }

        *v33 = 0;
        memcpy((*(a7 + 32) + 304 * v31 + 32), (a7 + 532), 0x10CuLL);
        ++*(a7 + 40);
      }
    }
  }

  if (*(a7 + 48) == *(a7 + 52))
  {
    *(a7 + 52) = 0;
  }

  if (FLAGS_force127 == 1)
  {
    *(a7 + 65) = FLAGS_force127;
    if (FLAGS_enc_detect_source == 1)
    {
      PsHighlight(0, *a7, 0, 2);
    }
  }

  if (FLAGS_counts == 1)
  {
    if (*(a7 + 64) == 1)
    {
      ++looking_used;
    }

    if (*(a7 + 65) == 1)
    {
      ++doing_used;
    }
  }

  result = memcpy((a7 + 800), (a7 + 532), 0x10CuLL);
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CompactEncDet::TopEncodingOfTLDHint(CompactEncDet *this, const char *a2)
{
  memset(v10, 170, sizeof(v10));
  std::string::basic_string[abi:ne200100]<0>(__p, this);
  MakeChar4(__p, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = SHIBYTE(v10[2]);
  v3 = v10[0];
  if (v10[2] >= 0)
  {
    v4 = v10;
  }

  else
  {
    v4 = v10[0];
  }

  v5 = HintBinaryLookup4(kTLDHintProbs, 247, v4);
  if (v5 < 0)
  {
    v6 = 23;
    if ((v2 & 0x80000000) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

  v6 = kMapToEncoding[TopCompressedProb(&kTLDHintProbs[20 * v5 + 4], 16)];
  if (v2 < 0)
  {
LABEL_8:
    operator delete(v3);
  }

  return v6;
}

void sub_1B0A851FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *InitialBytesBoost(unsigned __int8 *result, int a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (a2 < 4)
  {
    goto LABEL_30;
  }

  v4 = *result;
  v5 = result[1];
  v6 = v5 | (v4 << 8);
  v7 = result[3] | (result[2] << 8);
  v8 = (result[2] << 8) | (v6 << 16);
  if (v8 != -272908544)
  {
    v12 = _byteswap_ushort(*(result + 1)) | (v6 << 16);
    if (v12 == -131072)
    {
      *(a3 + 212) = 60;
      v9 = 57;
      v10 = 1200;
LABEL_9:
      v11 = 760;
      goto LABEL_16;
    }

    if (v12 == 65279)
    {
      *(a3 + 212) = 59;
      v9 = 56;
      v10 = 1200;
LABEL_7:
      v11 = 756;
      goto LABEL_16;
    }

    if (v6 == 65534)
    {
      *(a3 + 212) = 58;
      v9 = 39;
      v10 = 1800;
LABEL_15:
      v11 = 688;
      goto LABEL_16;
    }

    if (v6 == 65279)
    {
      *(a3 + 212) = 57;
      v9 = 37;
      v10 = 1800;
LABEL_13:
      v11 = 680;
      goto LABEL_16;
    }

    if (!v8 && kIsPrintableAscii[result[3]])
    {
      *(a3 + 756) += 600;
      v9 = 56;
      v10 = -600;
      goto LABEL_9;
    }

    if ((v12 & 0xFFFFFF) == 0 && kIsPrintableAscii[v4])
    {
      *(a3 + 760) += 600;
      v9 = 57;
      v10 = -600;
      goto LABEL_7;
    }

    if (!*result && kIsPrintableAscii[v5])
    {
      v9 = 37;
      v10 = 600;
      goto LABEL_13;
    }

    if (!result[1] && kIsPrintableAscii[v4])
    {
      v9 = 39;
      v10 = 600;
      goto LABEL_15;
    }

    if (v12 == -1 || !v12)
    {
      v10 = -600;
      *(a3 + 756) = vadd_s32(*(a3 + 756), vdup_n_s32(0xFFFFFDA8));
      *(a3 + 680) -= 600;
      v9 = -1;
      goto LABEL_15;
    }

    if (v6 == 0xFFFF || !v6)
    {
      *(a3 + 680) -= 600;
      v9 = -1;
      v10 = -600;
      goto LABEL_15;
    }

    v9 = -1;
    if (v8 == -2556160)
    {
      goto LABEL_53;
    }

    v10 = 7200;
    v11 = 764;
    switch(v12)
    {
      case -1991225785:
        goto LABEL_16;
      case 1195984440:
        goto LABEL_16;
      case 1347093252:
        goto LABEL_16;
    }

    v11 = 764;
    if (v8 == 529205248)
    {
      goto LABEL_16;
    }

    if (v6 == 30938)
    {
      goto LABEL_16;
    }

    if (v12 == 626017350)
    {
      goto LABEL_16;
    }

    v11 = 764;
    if ((_byteswap_ushort(*(result + 1)) & 0xFF1F | (v6 << 16)) == 0x63535700 || (_byteswap_ushort(*(result + 1)) & 0xFF1F | (v6 << 16)) == 0x66535700)
    {
      goto LABEL_16;
    }

    v11 = 764;
    if (v12 <= 1213681695)
    {
      if (v12 > 943870034)
      {
        if (v12 == 943870035)
        {
          goto LABEL_16;
        }

        v21 = 1128485700;
      }

      else
      {
        if (v12 == 23487344)
        {
          goto LABEL_16;
        }

        v21 = 704662861;
      }

      goto LABEL_75;
    }

    if (v12 <= 1346655070)
    {
      if (v12 != 1213681696)
      {
        v21 = 1296891946;
        goto LABEL_75;
      }

      if (a2 < 0x13)
      {
        goto LABEL_99;
      }

      v23 = *result == 0x75636F442E505748 && *(result + 1) == 0x6C69462E746E656DLL;
      if (!v23 || *(result + 11) != 0x562E656C69462E74)
      {
        v25 = *result == 0x75636F4420505748 && *(result + 1) == 0x6C694620746E656DLL;
        if (!v25 || *(result + 11) != 0x5620656C69462074)
        {
          goto LABEL_99;
        }
      }
    }

    else
    {
      if (v12 != 1346655071)
      {
        if (v12 == 1397312848)
        {
          goto LABEL_16;
        }

        v21 = 2135247942;
LABEL_75:
        if (v12 != v21)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (a2 < 0xE || (*result == 0x535245565F534450 ? (v22 = *(result + 6) == 0x44495F4E4F495352) : (v22 = 0), !v22))
      {
LABEL_99:
        v10 = 2400;
        goto LABEL_54;
      }
    }

LABEL_53:
    v10 = 7200;
LABEL_54:
    v11 = 764;
    goto LABEL_16;
  }

  *(a3 + 212) = 22;
  *(a3 + 540) += 1200;
  v9 = 2;
  v10 = 1200;
  v11 = 768;
LABEL_16:
  *(a3 + v11) += v10;
LABEL_17:
  v13 = *(a3 + 680);
  v14 = v13 > 0 || *(a3 + 688) >= 1;
  v15 = *(a3 + 756);
  if (v15 <= 0 && *(a3 + 760) < 1)
  {
    v16 = 0;
    if (v14)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v16 = 1;
  if (!v14)
  {
LABEL_23:
    *(a3 + 680) = v13 - 4800;
    *(a3 + 688) -= 9600;
  }

LABEL_24:
  if ((v16 & 1) == 0)
  {
    *(a3 + 756) = v15 - 4800;
    *(a3 + 760) -= 4800;
  }

  if ((FLAGS_ced_allow_utf8utf8 & 1) == 0)
  {
    *(a3 + 768) -= 4800;
  }

  *(a3 + 796) -= 4800;
  if (*(a3 + 32))
  {
    memset(__str, 170, sizeof(__str));
    snprintf(__str, 0x10uLL, "%04x%04x", v6, v7);
    v18 = *(a3 + 40);
    v17 = (a3 + 40);
    v19 = *(v17 - 1) + 304 * v18;
    *v19 = 0;
    *(v19 + 4) = v9;
    std::string::__assign_external((v19 + 8), __str);
    result = memcpy((*(v17 - 1) + 304 * v18 + 32), v17 + 123, 0x10CuLL);
    ++*v17;
  }

LABEL_30:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IntCompare(_DWORD *a1, _DWORD *a2)
{
  if (*a1 <= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t Base64ScanLen(const unsigned __int8 *a1, const unsigned __int8 *a2)
{
  if (a2 - a1 >= 4 && *a1 == 43 && a1[1] == 43 && a1[2] == 43)
  {
    return 81;
  }

  v3 = a1;
  do
  {
    if (v3 >= a2)
    {
      break;
    }

    v4 = *v3++;
  }

  while ((kBase64Value[v4] & 0x80000000) == 0);
  return (~a1 + v3);
}

BOOL GoodUnicodeFromBase64(const unsigned __int8 *a1, const unsigned __int8 *a2)
{
  v2 = a2 - a1;
  if (a2 <= a1)
  {
    v6 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = a1;
    do
    {
      v9 = *v7++;
      v8 = v9;
      v10 = v9 - 97;
      v11 = v9 - 65;
      if (v9 == 48)
      {
        v12 = v6 + 1;
      }

      else
      {
        v12 = v6;
      }

      v13 = v8 == 43;
      if (v8 == 43)
      {
        v14 = v6;
      }

      else
      {
        v14 = v12;
      }

      if (v13)
      {
        v15 = v3 + 1;
      }

      else
      {
        v15 = v3;
      }

      v16 = v11 > 0x19;
      if (v11 > 0x19)
      {
        v17 = v5;
      }

      else
      {
        v14 = v6;
        v17 = v5 + 1;
      }

      if (!v16)
      {
        v15 = v3;
      }

      if (v10 <= 0x19)
      {
        ++v4;
      }

      else
      {
        v6 = v14;
        v5 = v17;
        v3 = v15;
      }
    }

    while (v7 != a2);
  }

  v18 = v2 >> 4;
  if (v3 > (v2 >> 4) + 1 || v4 <= v18 || v5 <= v18 || v6 <= v2 >> 5)
  {
    return 0;
  }

  v23 = v2 & 7;
  v24 = a1[v2 - 1];
  if (v23 != 6)
  {
    return v23 != 3 || (kBase64Value[v24] & 3) == 0;
  }

  return (kBase64Value[v24] & 0xF) == 0;
}

uint64_t UTF7BoostWhack(uint64_t result, int a2, int a3)
{
  v3 = *(result + 4 * a2 + 1544);
  if (v3 >= *(result + 88))
  {
    v4 = result;
    ++*(result + 84);
    if (a3 != 45)
    {
      if ((a3 - 48) >= 0xA && ((a3 & 0xDF) - 65) >= 0x1Au && ((a3 - 43) & 0xFB) != 0)
      {
LABEL_6:
        v5 = *(v4 + 708);
LABEL_7:
        *(v4 + 708) = v5 - 600;
        return result;
      }

      v6 = (*result + v3 + 1);
      result = Base64ScanLen(v6, *(result + 8));
      if (result != 3 && result != 6)
      {
        v8 = result;
        if ((result & 7) == 7 || ((1 << (result & 7)) & 0x49) == 0)
        {
          goto LABEL_6;
        }

        result = GoodUnicodeFromBase64(v6, &v6[result]);
        v5 = *(v4 + 708);
        if (!result)
        {
          goto LABEL_7;
        }

        *(v4 + 708) = v5 + 600;
        *(v4 + 88) = v3 + v8 + 1;
      }
    }
  }

  return result;
}

uint64_t HzBoostWhack(uint64_t result, int a2)
{
  v2 = 600;
  if (a2 > 124)
  {
    if (a2 == 125)
    {
      goto LABEL_9;
    }

    if (a2 != 126)
    {
LABEL_8:
      v2 = -600;
      goto LABEL_9;
    }
  }

  else if (a2 != 10)
  {
    if (a2 != 123)
    {
      goto LABEL_8;
    }

LABEL_9:
    *(result + 692) += v2;
  }

  return result;
}

_DWORD *BinaryBoostWhack(_DWORD *result, unsigned int a2, unsigned int a3)
{
  v3 = 1 << ((a2 >> 6) & 2 | (a3 >> 7));
  v4 = 1 << ((a2 >> 3) & 0x1C | (a3 >> 6));
  v5 = result[19];
  if ((v5 & v3) == 0)
  {
    result[19] = v5 | v3;
    v6 = result[17] + 1;
    result[17] = v6;
    if (v6 == 4)
    {
      result[191] += 1200;
    }
  }

  v7 = result[20];
  if ((v7 & v4) == 0)
  {
    result[20] = v7 | v4;
    v8 = result[18];
    result[18] = v8 + 1;
    if (v8 >= 10)
    {
      result[191] += 2400;
    }
  }

  return result;
}

uint64_t UTF1632BoostWhack(uint64_t result, char a2, int a3)
{
  if (a3)
  {
    v3 = -600;
    *(result + 756) = vadd_s32(*(result + 756), vdup_n_s32(0xFFFFFDA8));
    v4 = 688;
    v5 = 680;
  }

  else
  {
    *(result + 680) -= 600;
    *(result + 688) -= 600;
    if ((a2 & 3u) - 1 >= 2)
    {
      if ((a2 & 3) != 0)
      {
        return result;
      }

      v3 = 60;
      v4 = 756;
      v5 = 760;
    }

    else
    {
      v3 = 60;
      v4 = 760;
      v5 = 756;
    }
  }

  *(result + v5) -= 600;
  *(result + v4) += v3;
  return result;
}

uint64_t CheckUTF8Seq(_DWORD *a1, char a2)
{
  v2 = a1[335];
  v3 = a1[337];
  if (v2 >= v3)
  {
    v4 = 0;
    goto LABEL_12;
  }

  v4 = 0;
  v5 = a1 + 24;
  v6 = a1 + 2 * v2 + 1449;
  v7 = &a1[v2 + 434];
  do
  {
    v8 = *(v6 - 1);
    v9 = *v6;
    if (v2 <= 0)
    {
      v10 = a1[23];
    }

    else
    {
      v10 = a1[23];
      if (*v7 == *(v7 - 1) + 2)
      {
        v11 = v10;
        goto LABEL_8;
      }
    }

    v11 = 0;
    v12 = kMiniUTF8Count[16 * v10 + 2];
    ++v5[v12];
    a1[23] = 0;
LABEL_8:
    v13 = vuzp1_s16(vceq_s32(vdup_n_s32(v8), 0xDF000000C9), 0xDF000000C9);
    v14 = v9;
    v15 = vand_s8(vzip1_s16(v13, vdup_lane_s16(v13, 1)), vand_s8(vceq_s16((*&vdup_n_s16(v9) & 0xFF00FF00FF00FFLL), 0xAB0093009200AELL), 0x8000400020001));
    v15.i32[0] = vaddv_s16(v15) & 0xF;
    v16 = vcnt_s8(v15);
    v16.i16[0] = vaddlv_u8(v16);
    v17 = v8 >> 4;
    v18 = kMiniUTF8Count[16 * v11 + v17];
    ++v5[v18];
    v4 += v16.i32[0];
    v19 = kMiniUTF8State[16 * a1[23] + v17];
    a1[23] = v19;
    v20 = kMiniUTF8Count[16 * v19 + (v14 >> 4)];
    v6 += 2;
    ++v5[v20];
    a1[23] = kMiniUTF8State[16 * a1[23] + (v14 >> 4)];
    ++v2;
    ++v7;
  }

  while (v3 != v2);
  if (v4 > 0)
  {
    a1[134] += 120 * v4;
    a1[137] += 120 * v4;
  }

LABEL_12:
  v21 = a1[27];
  v22 = a1[28];
  v24 = a1[25];
  v23 = a1[26];
  v25 = (120 * (4 * v22 + 2 * v23 + 3 * (v21 - v4))) >> a2;
  v26 = v25 + a1[135];
  v27 = a1[192];
  v28 = v21 + v23;
  v29 = a1[29];
  a1[28] = 0;
  a1[29] = v28 + v22 + v29;
  v30 = (120 * v24) >> a2;
  a1[135] = v26 - v30;
  a1[192] = v25 + v27 - v30;
  *(a1 + 13) = 0;
  a1[25] = 0;
  return (v25 - v30);
}

uint64_t CheckUTF8UTF8Seq(uint64_t a1, char a2)
{
  v2 = *(a1 + 1340);
  v3 = *(a1 + 1348);
  if (2 * v2 < 2 * v3)
  {
    v4 = a1 + 1448 + 2 * v3;
    v5 = a1 + 1448 + 2 * v2;
    v6 = a1 + 128;
    do
    {
      v7 = *(a1 + 120);
      if (v2 < 1 || *(a1 + 1736 + 4 * v2) != *(a1 + 1736 + 4 * (v2 - 1)) + 2)
      {
        *(a1 + 124) = 0;
        v8 = kMiniUTF8UTF8Count[16 * v7 + 2];
        ++*(v6 + 4 * v8);
        v7 = kMiniUTF8UTF8State[16 * v7 + 2];
      }

      v9 = *(a1 + 124);
      if (v5 + v9 + 1 < v4)
      {
        v10 = *(v5 + v9);
        v11 = (*(v9 + v5 + 1) >> 4) & 3;
        v12 = v11 | 4;
        if (v10 != 226)
        {
          v12 = (*(v9 + v5 + 1) >> 4) & 3;
        }

        v13 = (v10 - 194) > 9 || ((1 << (v10 + 62)) & 0x219) == 0;
        v14 = v11 | 8;
        if (v13)
        {
          v14 = (*(v9 + v5 + 1) >> 4) & 3;
        }

        if ((v10 & 0xF0) == 0xC0)
        {
          v15 = v14;
        }

        else
        {
          v15 = v12;
        }

        v16 = v11 | 0xC;
        if (v10 == 195)
        {
          v17 = v16;
        }

        else
        {
          v17 = v15;
        }

        *(a1 + 124) = v9 ^ kMiniUTF8UTF8Odd[16 * v7 + v17];
        v18 = kMiniUTF8UTF8Count[16 * v7 + v17];
        ++*(v6 + 4 * v18);
        *(a1 + 120) = kMiniUTF8UTF8State[16 * v7 + v17];
        LODWORD(v2) = v2 + 1;
      }

      v5 += 2;
    }

    while (v5 < v4);
  }

  v19 = *(a1 + 148);
  v20 = *(a1 + 140) + *(a1 + 136) + *(a1 + 144);
  *(a1 + 768) += (240 * v20) >> a2;
  *(a1 + 148) = v20 + v19;
  *(a1 + 132) = 0;
  *(a1 + 140) = 0;
  return ((240 * v20) >> a2);
}

_DWORD *CheckIso2022ActiveSeq(_DWORD *result)
{
  v1 = 2 * result[335];
  v2 = result[337];
  if (v1 < 2 * v2)
  {
    v3 = result + 2 * v2 + 1448;
    for (i = result + v1 + 1448; i < v3; i += 2)
    {
      v5 = *i;
      switch(v5)
      {
        case 0xEu:
          result[154] -= 600;
          if (!result[38])
          {
            goto LABEL_22;
          }

          break;
        case 0xFu:
          result[154] -= 600;
          v8 = result[38];
          if (v8)
          {
            if (v8 == 3)
            {
              v9 = 60;
            }

            else
            {
              if (v8 != 2)
              {
                goto LABEL_31;
              }

              v9 = -60;
            }

            result[178] += v9;
            result[175] += v9;
            goto LABEL_31;
          }

LABEL_22:
          result[178] -= 2400;
          v7 = result[175] - 2400;
LABEL_23:
          result[175] = v7;
          result[38] = 1;
          continue;
        case 0x1Bu:
          v6 = i[1];
          if (v6 == 40)
          {
            v13 = result[38];
            if (v13 == 3)
            {
              v14 = 60;
LABEL_30:
              result[154] += v14;
            }

            else if (v13 == 2)
            {
              v14 = -60;
              goto LABEL_30;
            }

LABEL_31:
            result[38] = 2;
            continue;
          }

          if (v6 != 36)
          {
            result[154] -= 600;
            result[178] -= 600;
            v7 = result[175] - 600;
            goto LABEL_23;
          }

          break;
        default:
          if (v5 <= 31)
          {
            v10 = v5 > 0xD;
            v11 = (1 << v5) & 0x3600;
            if (v10 || v11 == 0)
            {
              result[154] -= 600;
              result[178] -= 600;
              result[175] -= 600;
            }
          }

          continue;
      }

      result[38] = 3;
    }
  }

  if (!result[38])
  {
    result[178] &= result[178] >> 31;
    result[175] &= result[175] >> 31;
    result[154] &= result[154] >> 31;
  }

  return result;
}

_DWORD *CheckHzActiveSeq(_DWORD *result)
{
  v1 = 2 * result[334];
  v2 = result[336];
  if (v1 < 2 * v2)
  {
    v3 = result + 2 * v2 + 1352;
    for (i = result + v1 + 1352; i < v3; i += 2)
    {
      if (*i == 126)
      {
        v5 = i[1];
        if (v5 == 123)
        {
          result[39] = 3;
          if (*i != 126)
          {
            continue;
          }

          v5 = i[1];
        }

        if (v5 == 125)
        {
          v6 = result[39];
          if (v6 == 3)
          {
            v7 = 60;
LABEL_12:
            result[173] += v7;
          }

          else if (v6 == 2)
          {
            v7 = -60;
            goto LABEL_12;
          }

          result[39] = 2;
        }
      }
    }
  }

  if (!result[39])
  {
    result[173] &= result[173] >> 31;
  }

  return result;
}

uint64_t CheckEucJpSeq(uint64_t result)
{
  v1 = 2 * *(result + 1340);
  v2 = *(result + 1348);
  if (v1 < 2 * v2)
  {
    v3 = result + 1448 + 2 * v2;
    v4 = (result + 1448 + v1);
    v5 = *(result + 160);
    do
    {
      if (v5)
      {
        *(result + 560) += 120;
      }

      v6 = *v4;
      v7 = v4[1];
      if (v6 < 0)
      {
        if (v6 != -113)
        {
          goto LABEL_10;
        }

        v5 ^= 1u;
        v8 = v5 & 1;
      }

      else
      {
        v8 = 0;
        v5 = 0;
      }

      *(result + 160) = v8;
LABEL_10:
      if ((v7 & 0x80000000) == 0)
      {
        v9 = 0;
        v5 = 0;
LABEL_14:
        *(result + 160) = v9;
        goto LABEL_15;
      }

      if (v7 == -113)
      {
        v5 ^= 1u;
        v9 = v5 & 1;
        goto LABEL_14;
      }

LABEL_15:
      v4 += 2;
    }

    while (v4 < v3);
  }

  return result;
}

int32x2_t CheckBinaryDensity(int a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = *(a2 + 1736);
    v4 = -2400;
    if (v3 > 6143)
    {
      goto LABEL_10;
    }

    v5 = a1 - *a2;
    if (v5 >= 0x2000)
    {
      goto LABEL_10;
    }

    v6 = *(a2 + 1348);
    v7 = v5 - v3;
    if (v7 > 32 * v6)
    {
      *(a2 + 764) -= 2400;
      result = vadd_s32(*(a2 + 756), vdup_n_s32(0xFFFFF6A0));
      *(a2 + 756) = result;
      *(a2 + 680) -= 2400;
      *(a2 + 688) -= 2400;
    }

    if (v6 >= 8 && 8 * v6 >= v7 && *(a2 + 68) >= 2)
    {
      v4 = 60;
LABEL_10:
      *(a2 + 764) += v4;
      result = vadd_s32(*(a2 + 756), vdup_n_s32(v4));
      *(a2 + 756) = result;
      *(a2 + 680) += v4;
      *(a2 + 688) += v4;
    }
  }

  return result;
}

void ActiveSpecialBoostWhack(int a1, uint64_t a2)
{
  v2 = a2;
  v52 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 1344) - *(a2 + 1336);
  v4 = *(a2 + 1348);
  v5 = *(a2 + 1340);
  if ((*(a2 + 196) & 6) == 0 || v3 < 1)
  {
    goto LABEL_24;
  }

  v47 = *(a2 + 1340);
  v49 = *(a2 + 1348);
  v7 = 0;
  v8 = a2 + 1352;
  v9 = a2 + 1544;
  do
  {
    v10 = *(v2 + 1336);
    v11 = v10;
    v12 = v7 + v10;
    v13 = 2 * (v7 + v10);
    v14 = *(v8 + v13);
    v15 = *(v8 + v13 + 1);
    if (v14 != 126)
    {
      if (v14 == 43)
      {
        UTF7BoostWhack(v2, v12, *(v8 + v13 + 1));
        if (*(v2 + 32))
        {
          memset(__str, 170, sizeof(__str));
          snprintf(__str, 0x10uLL, "%02x%02x+", 43, v15);
          v16 = kMostLikelyEncoding[v15 + 11008];
          v17 = *(v2 + 40);
          v18 = *(v2 + 32) + 304 * v17;
          *v18 = *(v9 + 4 * (v7 + v11));
          *(v18 + 4) = v16;
          std::string::__assign_external((v18 + 8), __str);
          memcpy((*(v2 + 32) + 304 * v17 + 32), (v2 + 532), 0x10CuLL);
          ++*(v2 + 40);
        }
      }

      goto LABEL_20;
    }

    v19 = 600;
    if (*(v8 + v13 + 1) <= 0x7Cu)
    {
      if (v15 == 10)
      {
        goto LABEL_18;
      }

      if (v15 == 123)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v15 != 125)
    {
      if (v15 == 126)
      {
        goto LABEL_18;
      }

LABEL_16:
      v19 = -600;
    }

LABEL_17:
    *(v2 + 692) += v19;
LABEL_18:
    if (*(v2 + 32))
    {
      memset(__str, 170, sizeof(__str));
      snprintf(__str, 0x10uLL, "%02x%02x~", 126, v15);
      v20 = kMostLikelyEncoding[v15 + 32256];
      v21 = *(v2 + 40);
      v22 = *(v2 + 32) + 304 * v21;
      *v22 = *(v9 + 4 * (v7 + v11));
      *(v22 + 4) = v20;
      std::string::__assign_external((v22 + 8), __str);
      memcpy((*(v2 + 32) + 304 * v21 + 32), (v2 + 532), 0x10CuLL);
      ++*(v2 + 40);
    }

LABEL_20:
    ++v7;
  }

  while (v3 != v7);
  v4 = v49;
  v5 = v47;
  if (*(v2 + 84) > 7 && !*(v2 + 88))
  {
    *(v2 + 708) -= 4800;
  }

LABEL_24:
  v23 = v4 - v5;
  if ((*(v2 + 196) & 0x10F8) == 0 || v23 < 1)
  {
    goto LABEL_58;
  }

  v25 = 0;
  v26 = 0;
  v27 = v2 + 1448;
  v48 = v4 - v5;
  v50 = v2 + 1736;
  v28 = v2 + 2120;
  v46 = v2 + 2120;
  while (2)
  {
    v29 = v25 + *(v2 + 1340);
    v30 = 2 * v29;
    v31 = *(v27 + v30);
    v32 = *(v50 + 4 * v29);
    v33 = *(v27 + v30 + 1);
    if (v26 <= *(v28 + 4 * v29))
    {
      v26 = *(v28 + 4 * v29);
    }

    if (v31 == 255)
    {
      if (v33 == 255)
      {
        UTF1632BoostWhack(v2, v32, 255);
      }

      if (*(v2 + 32))
      {
        memset(__str, 170, sizeof(__str));
        snprintf(__str, 0x10uLL, "%02x%02xF", 255, v33);
        v35 = kMostLikelyEncoding[v33 + 65280];
        v36 = *(v2 + 40);
        v37 = v2;
        v38 = *(v2 + 32) + 304 * v36;
        *v38 = *(v50 + 4 * v29);
        *(v38 + 4) = v35;
        std::string::__assign_external((v38 + 8), __str);
        memcpy((*(v2 + 32) + 304 * v36 + 32), (v2 + 532), 0x10CuLL);
        ++*(v2 + 40);
        goto LABEL_46;
      }
    }

    else if (!*(v27 + 2 * v29))
    {
      if (*(v27 + v30 + 1))
      {
        if (kIsPrintableAscii[v33])
        {
          v34 = (*(v50 + 4 * v29) & 1) == 0;
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          *(v50 + 4 * v29) = v32 & 0xFFFFFFFE;
        }
      }

      else
      {
        UTF1632BoostWhack(v2, v32, 0);
      }

      if (*(v2 + 32))
      {
        memset(__str, 170, sizeof(__str));
        snprintf(__str, 0x10uLL, "%02x%02xZ", 0, v33);
        v39 = kMostLikelyEncoding[v33];
        v37 = v2;
        v41 = *(v2 + 40);
        v40 = (v2 + 40);
        v42 = *(v40 - 1) + 304 * v41;
        *v42 = *(v50 + 4 * v29);
        *(v42 + 4) = v39;
        std::string::__assign_external((v42 + 8), __str);
        memcpy((*(v40 - 1) + 304 * v41 + 32), (v37 + 532), 0x10CuLL);
        ++*v40;
LABEL_46:
        v2 = v37;
        v28 = v46;
        v23 = v48;
      }
    }

    if ((*(v2 + 196) & 0x80) != 0)
    {
      BinaryBoostWhack(v2, v31, v33);
    }

    if (v23 != ++v25)
    {
      continue;
    }

    break;
  }

  v43 = *(v2 + 196);
  if ((v43 & 0x10) == 0)
  {
    if ((v43 & 0x20) == 0)
    {
      goto LABEL_52;
    }

LABEL_62:
    CheckUTF8UTF8Seq(v2, v26);
    v43 = *(v2 + 196);
    if ((v43 & 8) != 0)
    {
      goto LABEL_63;
    }

LABEL_53:
    if ((v43 & 4) == 0)
    {
      goto LABEL_54;
    }

LABEL_64:
    CheckHzActiveSeq(v2);
    v43 = *(v2 + 196);
    if ((v43 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

LABEL_55:
    CheckEucJpSeq(v2);
    v43 = *(v2 + 196);
    goto LABEL_56;
  }

  CheckUTF8Seq(v2, v26);
  v43 = *(v2 + 196);
  if ((v43 & 0x20) != 0)
  {
    goto LABEL_62;
  }

LABEL_52:
  if ((v43 & 8) == 0)
  {
    goto LABEL_53;
  }

LABEL_63:
  CheckIso2022ActiveSeq(v2);
  v43 = *(v2 + 196);
  if ((v43 & 4) != 0)
  {
    goto LABEL_64;
  }

LABEL_54:
  if ((v43 & 0x1000) != 0)
  {
    goto LABEL_55;
  }

LABEL_56:
  if ((v43 & 0xC0) != 0)
  {
    CheckBinaryDensity(a1, v2, v23);
  }

LABEL_58:
  if (*(v2 + 32))
  {
    SetDetailsEncLabel(v2, "seq");
  }

  v44 = *MEMORY[0x1E69E9840];
}

uint64_t PrintTopEnc(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(v20 + 12) = v4;
  __base[14] = v4;
  v20[0] = v4;
  __base[12] = v4;
  __base[13] = v4;
  __base[10] = v4;
  __base[11] = v4;
  __base[8] = v4;
  __base[9] = v4;
  __base[6] = v4;
  __base[7] = v4;
  __base[4] = v4;
  __base[5] = v4;
  __base[2] = v4;
  __base[3] = v4;
  __base[0] = v4;
  __base[1] = v4;
  v5 = *(a1 + 260);
  if (v5 >= 1)
  {
    v6 = (a1 + 264);
    v7 = __base;
    v8 = *(a1 + 260);
    do
    {
      v9 = *v6++;
      *v7++ = *(a1 + 532 + 4 * v9);
      --v8;
    }

    while (v8);
  }

  qsort(__base, v5, 4uLL, IntCompare);
  v10 = *(a1 + 260);
  if (a2 < v10)
  {
    v10 = a2;
  }

  v11 = *(__base + v10 - 1);
  printf("rankedencodingList top %d: ", v10);
  v12 = *(a1 + 260);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = a1 + 532;
    do
    {
      v15 = *(a1 + 264 + 4 * v13);
      if (v11 <= *(v14 + 4 * v15))
      {
        v16 = MyEncodingName(kMapToEncoding[v15]);
        printf("%s=%d ", v16, *(v14 + 4 * v15));
        v12 = *(a1 + 260);
      }

      ++v13;
    }

    while (v13 < v12);
  }

  result = puts("\n");
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t RepeatedBigram(int *a1, unsigned int a2, int a3)
{
  v3 = (a3 | (a2 << 8)) & 0x1FF0;
  if (a2 >= 0x20)
  {
    v3 = a3 | (a2 << 8);
  }

  if (v3 == a1[55] || v3 == a1[56] || v3 == a1[57] || v3 == a1[58])
  {
    return 1;
  }

  v4 = 0;
  a1[a1[54] + 55] = v3;
  a1[54] = (a1[54] + 1) & 3;
  return v4;
}

BOOL RepeatedBinary(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = 1 << ((a2 >> 3) & 0x1C | (a3 >> 6));
  v4 = *(a1 + 80);
  if ((v4 & v3) == 0)
  {
    *(a1 + 80) = v4 | v3;
    ++*(a1 + 72);
  }

  return (v4 & v3) != 0;
}

uint64_t ReRank(uint64_t result)
{
  *(result + 248) = -1;
  v1 = *(result + 260);
  if (v1 >= 1)
  {
    v2 = (result + 264);
    v3 = result + 532;
    v4 = 0xFFFFFFFFLL;
    v5 = 0xFFFFFFFFLL;
    do
    {
      v7 = *v2++;
      v6 = v7;
      v8 = *(v3 + 4 * v7);
      if (v5 >= v8)
      {
        if (v4 < v8 && kMapEncToBaseEncoding[kMapToEncoding[*(result + 240)]] != kMapEncToBaseEncoding[kMapToEncoding[v6]])
        {
          *(result + 252) = v8;
          *(result + 244) = v6;
          goto LABEL_10;
        }
      }

      else
      {
        v9 = *(result + 240);
        if (kMapEncToBaseEncoding[kMapToEncoding[v9]] != kMapEncToBaseEncoding[kMapToEncoding[v6]])
        {
          *(result + 252) = v5;
          *(result + 244) = v9;
          v8 = *(v3 + 4 * v6);
          v4 = v5;
        }

        v5 = v8;
        *(result + 248) = v8;
        *(result + 240) = v6;
      }

      v8 = v4;
LABEL_10:
      v4 = v8;
      --v1;
    }

    while (v1);
  }

  return result;
}

_DWORD *SimplePrune(_DWORD *result, int a2)
{
  v2 = result[62];
  result[49] = 0;
  v3 = result[65];
  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = v2 - a2;
    v7 = result + 66;
    do
    {
      v8 = v7[v4];
      if (result[v8 + 133] >= v6)
      {
        result[49] |= kSpecialMask[kMapToEncoding[v8]];
        v7[v5++] = v8;
        v3 = result[65];
      }

      ++v4;
    }

    while (v4 < v3);
  }

  result[65] = v5;
  return result;
}

uint64_t CalcReliable(uint64_t result)
{
  *(result + 45) = 0;
  v1 = *(result + 1348);
  if (!v1 || *(result + 248) - *(result + 252) >= FLAGS_ced_reliable_difference || v1 == 1 && *(result + 240) == kMostLikelyEncoding[__rev16(*(result + 1448))])
  {
    *(result + 45) = 1;
    return result;
  }

  v2 = *(result + 260);
  if (v2 == 3)
  {
    v3 = kMapEncToBaseEncoding[kMapToEncoding[*(result + 264)]];
    if (v3 != kMapEncToBaseEncoding[kMapToEncoding[*(result + 268)]] || v3 != kMapEncToBaseEncoding[kMapToEncoding[*(result + 272)]])
    {
      return result;
    }

    goto LABEL_14;
  }

  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return result;
    }

LABEL_15:
    *(result + 44) = 257;
    return result;
  }

  if (kMapEncToBaseEncoding[kMapToEncoding[*(result + 264)]] == kMapEncToBaseEncoding[kMapToEncoding[*(result + 268)]])
  {
LABEL_14:
    if (*(result + 56) >= 3)
    {
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t FindTop2(uint64_t result, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  *a4 = -1;
  *a5 = -1;
  *a2 = 0;
  *a3 = 0;
  if (*(result + 260) >= 1)
  {
    v5 = 0;
    v6 = result + 532;
    while (1)
    {
      v7 = *(result + 264 + 4 * v5);
      v8 = *(v6 + 4 * v7);
      if (*a4 < v8)
      {
        break;
      }

      if (*a5 < v8)
      {
        *a5 = v8;
        v9 = a3;
        goto LABEL_7;
      }

LABEL_8:
      if (++v5 >= *(result + 260))
      {
        return result;
      }
    }

    *a5 = *a4;
    *a3 = *a2;
    *a4 = *(v6 + 4 * v7);
    v9 = a2;
LABEL_7:
    *v9 = v7;
    goto LABEL_8;
  }

  return result;
}

uint64_t PrintRankedEncodingList(uint64_t a1, const char *a2)
{
  printf("Current ranked encoding list %s\n", a2);
  if (*(a1 + 260) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(a1 + 264 + 4 * v3);
      if (v4 < 0x44)
      {
        MyEncodingName(kMapToEncoding[v4]);
        v5 = *(a1 + 532 + 4 * v4);
        printf(" [%d] rankedencoding = %d %-12.12s enc_prob = %d\n");
      }

      else
      {
        printf(" [%d] BOGUS rankedencoding = %d\n");
      }

      ++v3;
    }

    while (v3 < *(a1 + 260));
  }

  return puts("End current ranked encoding list\n");
}

char *Latin127Str(unint64_t a1)
{
  tri_string = aAbcdefghijklmn[(a1 >> 10) & 0x1F];
  byte_1EB7077D9 = aAbcdefghijklmn[(a1 >> 5) & 0x1F];
  byte_1EB7077DA = aAbcdefghijklmn[a1 & 0x1F];
  byte_1EB7077DB = 0;
  return &tri_string;
}

BOOL BoostLatin127Trigrams(int a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8) - *a2 - 2;
  if (a1 + 32 >= v3)
  {
    v4 = *(a2 + 8) - *a2 - 2;
  }

  else
  {
    v4 = a1 + 32;
  }

  if (v3 > a1)
  {
    v6 = 0;
    v7 = &v2[v4];
    v8 = &v2[a1];
    v24 = (a2 + 652);
    v25 = (a2 + 596);
    v22 = (a2 + 568);
    v23 = (a2 + 704);
    v20 = (a2 + 536);
    v21 = (a2 + 580);
    v9 = (a2 + 548);
    v10 = (a2 + 592);
    v11 = v8;
    while (1)
    {
      v12 = *++v11;
      v13 = kMapToFiveBits[v8[2]];
      v14 = (kLatin127Trigrams[kMapToFiveBits[v12] | (32 * kMapToFiveBits[*v8])] >> (2 * v13)) & 3;
      if (((kLatin127Trigrams[kMapToFiveBits[v12] | (32 * kMapToFiveBits[*v8])] >> (2 * v13)) & 3) != 0)
      {
        break;
      }

LABEL_16:
      v8 = v11;
      if (v11 >= v7)
      {
        return v6 > 0;
      }
    }

    if (FLAGS_enc_detect_source == 1)
    {
      PsHighlight(v8, *a2, v14, 1);
    }

    if (v14 == 1)
    {
      v15 = -1;
      v18 = v20;
      v16 = v9;
      v17 = v10;
    }

    else
    {
      if (v14 == 2)
      {
        v15 = 1;
        v17 = v21;
        v16 = v22;
LABEL_15:
        *v16 += 60;
        *v17 += 60;
        v6 += v15;
        goto LABEL_16;
      }

      *(a2 + 648) += 60;
      v15 = 1;
      v16 = v24;
      v18 = v25;
      v17 = v23;
    }

    *v18 += 60;
    goto LABEL_15;
  }

  return 0;
}

uint64_t BoostPrune(uint64_t result, uint64_t a2, int a3)
{
  v3 = a3;
  v112 = result;
  v128 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 1348);
  v119 = v5 - *(a2 + 1340);
  if (a3 == 2)
  {
    if ((*(a2 + 46) & 1) == 0 && v5 <= 11)
    {
      v6 = 0;
      if (v5 <= 2)
      {
        v5 = 2;
      }

      v7 = v5 + 1;
      do
      {
        *(a2 + v6 + 532) = *(a2 + v6 + 532) - *(a2 + v6 + 800) + *(a2 + v6 + 800) * v7 / 12;
        v6 += 4;
      }

      while (v6 != 268);
      *(a2 + 46) = 1;
      if (*(a2 + 32))
      {
        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *__str = v8;
        v127 = v8;
        snprintf(__str, 0x20uLL, "Hints %d/%d", v7, 12);
        SetDetailsEncLabel(a2, __str);
        v3 = 2;
      }
    }

    v111 = (a2 + 56);
    ++*(a2 + 56);
  }

  else
  {
    v63 = *(a2 + 1344);
    v64 = *(a2 + 1336);
    v65 = *(a2 + 56);
    *(a2 + 56) = v65 + 1;
    v111 = (a2 + 56);
    if (*(a2 + 260) < 2)
    {
      goto LABEL_217;
    }

    if ((v65 & 0x80000000) == 0 && v63 - v64 == -v119)
    {
      goto LABEL_218;
    }
  }

  if (v119 < 1)
  {
    v118 = 0;
    goto LABEL_107;
  }

  LOBYTE(v9) = 0;
  v118 = 0;
  LODWORD(v10) = 0;
  v11 = 0;
  v117 = a2 + 1448;
  v12 = a2 + 1736;
  v13 = a2 + 532;
  v14 = a2 + 264;
  v114 = 32;
  v115 = 32;
  do
  {
    v122 = v9;
    v123 = v11;
    v15 = v10;
    v16 = *(a2 + 1340) + v11;
    v17 = *(v117 + 2 * v16);
    v18 = *(v117 + 2 * v16 + 1);
    v10 = v17 & 0xF0 | (v18 >> 4);
    v120 = *(v12 + 4 * v16);
    if (v16 >= 1 && *(v12 + 4 * v16) == *(v12 + 4 * (v16 - 1)) + 2)
    {
      v19 = (~v10 & 0xCC) == 0 || (~v15 & 0xCC) == 0;
    }

    else
    {
      v19 = 0;
    }

    v124 = *(a2 + 1340) + v11;
    v125 = *(v117 + 2 * v16);
    v20 = *(a2 + 2120 + 4 * v16);
    v21 = RepeatedBigram(a2, v17, v18);
    if (v21)
    {
      v22 = 0;
      v23 = 0;
      v24 = v125;
      goto LABEL_72;
    }

    v25 = 0xFu >> v20;
    if ((FLAGS_demo_nodefault & 1) == 0)
    {
      *(v13 + 4 * *(a2 + 48)) += v25;
      *(v13 + 4 * *(a2 + 52)) += v25;
    }

    v24 = v125;
    v116 = v21;
    if (*(a2 + 260) < 1)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v26 = 0;
      v23 = 0;
      v22 = 0;
      v27 = 0;
      v28 = 1 << ((v125 >> 3) & 0x1C | (v18 >> 6));
      v29 = FLAGS_enc_detect_detail2;
      v30 = watch1_rankedenc;
      v31 = watch2_rankedenc;
      v33 = v125 == v115 && v18 == v114;
      do
      {
        v34 = *(v14 + 4 * v26);
        v35 = kMapToEncoding[v34];
        if (v34 == 58)
        {
          v36 = *(a2 + 80);
          if ((v36 & v28) != 0)
          {
            v37 = 2;
          }

          else
          {
            v37 = 0;
            *(a2 + 80) = v36 | v28;
            ++*(a2 + 72);
          }
        }

        else
        {
          v37 = 0;
        }

        v38 = &unigram_table + 808 * v34;
        v39 = v38[v10 + 552];
        if (v38[v10 + 552])
        {
          if (v39)
          {
            v40 = *(*&v38[8 * ((v18 >> 5) & 3)] + (v18 & 0x1F | (32 * (v125 & 0x1F))));
          }

          else
          {
            v40 = *(v38 + 9);
          }

          v41 = (v38[(v18 & 0x80 ^ v125) + 40] + v39 + v38[v18 + 296] + v40) >> v37 >> v20;
          *(v13 + 4 * v34) += v41;
          if (v29)
          {
            if (v30 == v34)
            {
              v23 = v41;
            }

            if (v31 == v34)
            {
              v22 = v41;
            }
          }
        }

        else if (!v33)
        {
          *(v13 + 4 * v34) -= 0x258u >> v20;
          v27 = 1;
        }

        if (v19 && (kSpecialMask[v35] & 0x400) != 0)
        {
          *(v13 + 4 * v34) += v25;
        }

        ++v26;
      }

      while (v26 < *(a2 + 260));
      v42 = (v27 & 1) == 0;
      if (v27)
      {
        v43 = v18;
      }

      else
      {
        v43 = v114;
      }

      v44 = v115;
      v21 = v116;
      v24 = v125;
      if (!v42)
      {
        v44 = v125;
      }

      v114 = v43;
      v115 = v44;
    }

    v45 = v120;
    if (v124 < 16)
    {
      v46 = kMostLikelyEncoding[v18 | (v24 << 8)];
      *(v13 + 4 * v46) += v25;
    }

    ++v118;
    if (*(a2 + 65) == 1)
    {
      v47 = &v120[*a2 - 1];
    }

    else
    {
      if (*(a2 + 64) != 1)
      {
        goto LABEL_72;
      }

      v52 = &v120[*a2];
      v47 = (v52 - 1);
      if ((v123 & 7) != 0 && (v52 + 2) <= *(a2 + 8) && ((kLatin127Trigrams[kMapToFiveBits[*v52] | (32 * kMapToFiveBits[*(v52 - 1)])] >> (2 * kMapToFiveBits[v52[1]])) & 2) == 0)
      {
        goto LABEL_72;
      }
    }

    v48 = v120 & 0xFFFFFFE0;
    if (*(a2 + 60) <= (v120 & 0xFFFFFFE0))
    {
      v121 = v47;
      v49 = BoostLatin127Trigrams(v45 & 0xFFFFFFE0, a2);
      v50 = *(a2 + 65);
      if (FLAGS_counts == 1 && (*(a2 + 65) & 1) == 0 && v49)
      {
        ++doing_used;
      }

      if (!(v50 & 1 | ((FLAGS_enc_detect_source & 1) == 0) | !v49))
      {
        v51 = v49;
        PsHighlight(v121, *a2, 0, 2);
        v49 = v51;
        v50 = *(a2 + 65);
      }

      *(a2 + 65) = v50 | v49;
      *(a2 + 60) = v48 + 32;
      v24 = v125;
      v21 = v116;
    }

LABEL_72:
    ++*(a2 + 164 + ((v24 >> 3) & 0x1C));
    if (*(a2 + 32))
    {
      memset(__str, 170, sizeof(__str));
      if (v20)
      {
        v53 = 45;
      }

      else
      {
        v53 = 32;
      }

      v54 = 93;
      if (!v21)
      {
        v54 = 32;
      }

      v110 = v54;
      v55 = 91;
      if (!v21)
      {
        v55 = 32;
      }

      v56 = v24;
      snprintf(__str, 0x10uLL, "%c%02x%02x%c%c", v55, v24, v18, v110, v53);
      v57 = kMostLikelyEncoding[v18 | (v56 << 8)];
      v58 = *(a2 + 40);
      v59 = *(a2 + 32) + 304 * v58;
      *v59 = *(a2 + 1736 + 4 * v124);
      *(v59 + 4) = v57;
      std::string::__assign_external((v59 + 8), __str);
      memcpy((*(a2 + 32) + 304 * v58 + 32), (a2 + 532), 0x10CuLL);
      ++*(a2 + 40);
      LOBYTE(v24) = v125;
    }

    if (FLAGS_enc_detect_detail2 == 1 && v23 | v22)
    {
      *&v60 = 0xAAAAAAAAAAAAAAAALL;
      *(&v60 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__str = v60;
      v127 = v60;
      if (v22 >= 0)
      {
        v61 = 43;
      }

      else
      {
        v61 = 45;
      }

      v109 = v61;
      if (v23 >= 0)
      {
        v62 = 43;
      }

      else
      {
        v62 = 45;
      }

      snprintf(__str, 0x20uLL, "%c%d %c%d", v62, v23, v109, v22);
      SetDetailsEncLabel(a2, __str);
      LOBYTE(v24) = v125;
    }

    v9 = (v24 | v122);
    v11 = v123 + 1;
    v12 = a2 + 1736;
  }

  while (v123 + 1 != v119);
  if (v118 >= 1 && (v9 & 0x80000000) == 0)
  {
    v66 = *(a2 + 260);
    if (v66 >= 1)
    {
      for (i = 0; i < v66; ++i)
      {
        v68 = *(v14 + 4 * i);
        if ((kSpecialMask[kMapToEncoding[v68]] & 0x100) != 0)
        {
          *(v13 + 4 * v68) -= 60 * v118;
          v66 = *(a2 + 260);
        }
      }
    }

    v118 = 1;
  }

  v3 = a3;
LABEL_107:
  if (*(a2 + 196))
  {
    ActiveSpecialBoostWhack(v112, a2);
    v3 = a3;
  }

  *(a2 + 16) = v112;
  *(a2 + 1336) = *(a2 + 1344);
  v69 = *(a2 + 1348);
  *(a2 + 1340) = v69;
  if (v3 == 2)
  {
    if (*(a2 + 92))
    {
      *(a2 + 540) -= 120;
    }

    if (*(a2 + 120))
    {
      *(a2 + 768) -= 120;
    }

    if (!*(a2 + 116))
    {
      *(a2 + 540) -= 4800;
      *(a2 + 768) -= 4800;
    }

    if (!*(a2 + 148))
    {
      *(a2 + 768) -= 4800;
    }

    v70 = *(a2 + 68);
    if (v70 <= 3)
    {
      if (v70 == 3)
      {
        v71 = -1200;
      }

      else
      {
        v71 = -2400;
      }

      *(a2 + 764) += v71;
    }

    if (v69 < 1 || (*(a2 + 196) & 8) == 0 || *(a2 + 1448) != 27 || *(a2 + 1449) != 36)
    {
      goto LABEL_142;
    }

    v72 = *a2 + *(a2 + 1736);
    if (v72 >= *(a2 + 8) - 3)
    {
      v73 = -600;
      v75 = 700;
      v76 = 712;
      v77 = 616;
    }

    else
    {
      v73 = 600;
      v74 = *(v72 + 2);
      v75 = 700;
      v76 = 712;
      v77 = 616;
      if (v74 != 66 && v74 != 64)
      {
        if (v74 != 41)
        {
          goto LABEL_142;
        }

        v78 = *(v72 + 3);
        if (v78 == 71)
        {
          goto LABEL_134;
        }

        if (v78 != 67)
        {
          if (v78 == 65)
          {
LABEL_134:
            v73 = 600;
            v75 = 616;
            v76 = 700;
            v77 = 712;
            goto LABEL_141;
          }

LABEL_142:
          if (*(a2 + 32))
          {
            SetDetailsEncLabel(a2, "pre-final");
          }

          result = ReRank(a2);
          v79 = 0;
LABEL_145:
          v3 = a3;
          goto LABEL_146;
        }

        v73 = 600;
        v75 = 616;
        v76 = 712;
        v77 = 700;
      }
    }

LABEL_141:
    *(a2 + v77) += v73;
    *(a2 + v76) -= 600;
    *(a2 + v75) -= 600;
    goto LABEL_142;
  }

  result = ReRank(a2);
  if (v3 == 1)
  {
    if (*(a2 + 32))
    {
      result = SetDetailsEncLabel(a2, "slow-end");
      v79 = 1;
      goto LABEL_145;
    }

    v79 = 1;
  }

  else
  {
    v79 = 0;
  }

LABEL_146:
  v80 = *(a2 + 256);
  v81 = *(a2 + 240) == 58;
  if (v80 >= 301)
  {
    if (v118)
    {
      v82 = -300;
    }

    else
    {
      v82 = -150;
    }

    *(a2 + 256) = v80 + v82;
  }

  v83 = v80 << v81;
  v84 = *(a2 + 248);
  *(a2 + 196) = 0;
  v85 = *(a2 + 260);
  if (v85 >= 1)
  {
    v86 = 0;
    v87 = 0;
    v88 = v84 - v83;
    v89 = a2 + 264;
    while (1)
    {
      v90 = *(v89 + 4 * v86);
      result = *(a2 + 532 + 4 * v90);
      if (v79)
      {
        v91 = kMapToEncoding[v90];
        if ((kSpecialMask[v91] & 1) != 0 && result <= 0)
        {
          break;
        }
      }

      if (result >= v88)
      {
        LODWORD(v91) = kMapToEncoding[v90];
LABEL_164:
        *(a2 + 196) |= kSpecialMask[v91];
        *(v89 + 4 * v87++) = v90;
        v85 = *(a2 + 260);
      }

LABEL_165:
      if (++v86 >= v85)
      {
        goto LABEL_168;
      }
    }

    if (v90 != *(a2 + 240) || result < v88)
    {
      goto LABEL_165;
    }

    goto LABEL_164;
  }

  v87 = 0;
LABEL_168:
  if (*(a2 + 32))
  {
    *&v93 = 0xAAAAAAAAAAAAAAAALL;
    *(&v93 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__str = v93;
    v127 = v93;
    snprintf(__str, 0x20uLL, "%d prune", v83 / 30);
    result = SetDetailsEncLabel(a2, __str);
    v3 = a3;
  }

  *(a2 + 260) = v87;
  v94 = *(a2 + 1348);
  if (v3 != 2)
  {
    goto LABEL_198;
  }

  if (!v94)
  {
    v95 = *(a2 + 240);
    if (v95 > 0x3A || ((1 << v95) & 0x400350000200000) == 0)
    {
      *(a2 + 240) = 0;
      *(a2 + 532) += 1200;
    }
  }

  v96 = *(a2 + 240);
  if (*(a2 + 180) < 1)
  {
    switch(v96)
    {
      case 4:
        v97 = 1;
        v98 = 536;
        break;
      case 28:
        v97 = 14;
        v98 = 588;
        break;
      case 22:
        v97 = 13;
        v98 = 584;
        break;
      default:
        goto LABEL_191;
    }

LABEL_190:
    *(a2 + 240) = v97;
    *(a2 + v98) += 1200;
    goto LABEL_191;
  }

  if (v96 > 13)
  {
    if (v96 == 14)
    {
      v97 = 28;
      v98 = 644;
    }

    else
    {
      if (v96 != 34)
      {
        goto LABEL_191;
      }

      v97 = 11;
      v98 = 576;
    }

    goto LABEL_190;
  }

  if (v96 == 1)
  {
    v97 = 4;
    v98 = 548;
    goto LABEL_190;
  }

  if (v96 == 13)
  {
    v97 = 22;
    v98 = 620;
    goto LABEL_190;
  }

LABEL_191:
  if (*(a2 + 32))
  {
    *&v99 = 0xAAAAAAAAAAAAAAAALL;
    *(&v99 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__str = v99;
    v127 = v99;
    snprintf(__str, 0x20uLL, "final %d", v112 - *a2);
    SetDetailsEncLabel(a2, __str);
    v100 = *(a2 + 248) - *(a2 + 252);
    if (v100 > 59)
    {
      MyEncodingName(kMapToEncoding[*(a2 + 240)]);
      if (v100 > 0x5DB)
      {
        snprintf(__str, 0x20uLL, "%s");
      }

      else
      {
        snprintf(__str, 0x20uLL, "+%d %s");
      }
    }

    else
    {
      MyEncodingName(kMapToEncoding[*(a2 + 240)]);
      snprintf(__str, 0x20uLL, "+%d.%d %s ");
    }

    v101 = *(a2 + 40);
    v102 = *(a2 + 240);
    v103 = *(a2 + 32) + 304 * v101;
    *v103 = *(v103 - 304);
    *(v103 + 4) = v102;
    std::string::__assign_external((v103 + 8), __str);
    result = memcpy((*(a2 + 32) + 304 * v101 + 32), (a2 + 532), 0x10CuLL);
    ++*(a2 + 40);
    v94 = *(a2 + 1348);
  }

LABEL_198:
  v105 = *(a2 + 248) - *(a2 + 252) >= FLAGS_ced_reliable_difference || v94 == 0;
  *(a2 + 45) = v105;
  if (v94 == 1 && *(a2 + 240) == kMostLikelyEncoding[__rev16(*(a2 + 1448))])
  {
    *(a2 + 45) = 1;
  }

  v106 = *(a2 + 260);
  if (v106 == 1)
  {
    goto LABEL_216;
  }

  if (v106 != 3)
  {
    if (v106 != 2 || kMapEncToBaseEncoding[kMapToEncoding[*(a2 + 264)]] != kMapEncToBaseEncoding[kMapToEncoding[*(a2 + 268)]] || *v111 <= 2)
    {
      goto LABEL_218;
    }

LABEL_216:
    *(a2 + 45) = 1;
LABEL_217:
    *(a2 + 44) = 1;
    goto LABEL_218;
  }

  v107 = kMapEncToBaseEncoding[kMapToEncoding[*(a2 + 264)]];
  if (v107 == kMapEncToBaseEncoding[kMapToEncoding[*(a2 + 268)]] && v107 == kMapEncToBaseEncoding[kMapToEncoding[*(a2 + 272)]] && *v111 >= 3)
  {
    goto LABEL_216;
  }

LABEL_218:
  v108 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IncrementAndBoostPrune(unsigned __int8 *a1, int a2, uint64_t a3, int a4, int a5)
{
  *(a3 + 24) = a1;
  if (a2 < 2)
  {
    v5 = 32;
  }

  else
  {
    v5 = a1[1];
  }

  v6 = *a1;
  v7 = a5 - 1;
  v8 = *(a3 + 1344 + 4 * v7);
  if (v8 < 17)
  {
    goto LABEL_11;
  }

  v9 = 0;
  if (!*a1 || v6 == 43 || v6 == 126)
  {
    return v9;
  }

  if (v8 < 0x30)
  {
LABEL_11:
    v10 = a1 - *a3;
    v11 = 2 * v8;
    v12 = a3 + 96 * v7 + 1352;
    *(v12 + v11) = v6;
    *(v12 + v11 + 1) = v5;
    v13 = a3 + 192 * v7 + 4 * v8;
    *(v13 + 1544) = v10;
    *(v13 + 1928) = a4;
    ++*(a3 + 1344 + 4 * v7);
    LOBYTE(v8) = v8 + 1;
  }

  else if (a5 == 2)
  {
    *(a3 + 44) = 1;
  }

  if ((*(a3 + 44) & 1) == 0 && (v8 & 7) != 0)
  {
    return 0;
  }

  BoostPrune((a1 + 2), a3, 0);
  return 1;
}

uint64_t DumpSummary(uint64_t a1, int a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = a1 + 4 * a2;
  printf("  %sSummary[%2d]: ", kWhatSetName[a2], *(v6 + 1344));
  v7 = *(v6 + 1344);
  if (v3 >= v7)
  {
    v3 = v7;
  }

  else
  {
    v3 = v3;
  }

  if (v3 >= 1)
  {
    v8 = 0;
    v9 = (a1 + 96 * a2 + 1353);
    do
    {
      printf("%02x%02x ", *(v9 - 1), *v9);
      if ((~v8 & 7) == 0)
      {
        printf("  ");
      }

      v9 += 2;
      ++v8;
    }

    while (v3 != v8);
  }

  return putchar(10);
}

size_t BeginDetail(uint64_t a1)
{
  v2 = MEMORY[0x1E69E9848];
  fprintf(*MEMORY[0x1E69E9848], "%d [", 67);
  for (i = 0; i != 67; ++i)
  {
    v4 = *v2;
    v5 = MyEncodingName(kMapToEncoding[i]);
    fprintf(v4, "(%s)", v5);
    HIDWORD(v6) = -858993459 * (i - 9);
    LODWORD(v6) = HIDWORD(v6);
    if ((v6 >> 1) <= 0x19999998)
    {
      fwrite("\n    ", 5uLL, 1uLL, *v2);
    }
  }

  result = fwrite("] size-detail\n", 0xEuLL, 1uLL, *v2);
  *(a1 + 40) = 0;
  return result;
}

uint64_t DetailOffsetChar(int a1)
{
  if (a1 >= 0x20)
  {
    v1 = 32;
  }

  else
  {
    v1 = 43;
  }

  if (a1 >= 0x10)
  {
    v2 = v1;
  }

  else
  {
    v2 = 95;
  }

  if (a1 >= 3)
  {
    v3 = v2;
  }

  else
  {
    v3 = 61;
  }

  if (a1)
  {
    return v3;
  }

  else
  {
    return 32;
  }
}

size_t DumpDetail(uint64_t a1)
{
  v2 = MEMORY[0x1E69E9848];
  result = fprintf(*MEMORY[0x1E69E9848], "%d count-detail\n", *(a1 + 40));
  v4 = *(a1 + 40);
  if (v4 > 1)
  {
    v5 = *(a1 + 32);
    v6 = v5 + 304 * v4 - 576;
    do
    {
      v7 = v4--;
      *(v5 + 304 * v7 - 304) -= *(v5 + 304 * v7 - 608);
      v8 = 67;
      v9 = v6;
      do
      {
        v9[76] -= *v9;
        ++v9;
        --v8;
      }

      while (v8);
      v6 -= 304;
    }

    while (v7 > 2);
    LODWORD(v4) = *(a1 + 40);
  }

  if (v4 >= 1)
  {
    v10 = 0;
    v11 = 32;
    while (1)
    {
      v12 = *(a1 + 32);
      v13 = v12 + 304 * v10;
      v14 = (v13 + 8);
      v15 = *(v13 + 31);
      if (v15 < 0)
      {
        break;
      }

      LODWORD(v13) = *(v13 + 31);
      if ((v15 & 0x80000000) != 0)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (*(v14 + v13 - 1) == 33)
      {
        fwrite("1 0.9 0.9 do-flag\n", 0x12uLL, 1uLL, *v2);
        v12 = *(a1 + 32);
      }

      v16 = *(v12 + 304 * v10);
      if (v16 >= 0x20)
      {
        v17 = 32;
      }

      else
      {
        v17 = 43;
      }

      if (v16 < 0x10)
      {
        v17 = 95;
      }

      if (v16 < 3)
      {
        v17 = 61;
      }

      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = 32;
      }

      v19 = v12 + 304 * v10;
      v20 = (v19 + 8);
      if (*(v19 + 31) < 0)
      {
        v20 = *v20;
      }

      fprintf(*v2, "(%c%s) %d [", v18, v20, *(v12 + 304 * v10 + 4));
      for (i = 0; i != 67; ++i)
      {
        fprintf(*v2, "%d ", *(*(a1 + 32) + v11 + 4 * i));
        HIDWORD(v22) = -858993459 * (i - 9);
        LODWORD(v22) = HIDWORD(v22);
        if ((v22 >> 1) <= 0x19999998)
        {
          fwrite("  ", 2uLL, 1uLL, *v2);
        }
      }

      result = fwrite("] do-detail-e\n", 0xEuLL, 1uLL, *v2);
      ++v10;
      v11 += 304;
      if (v10 >= *(a1 + 40))
      {
        goto LABEL_34;
      }
    }

    v13 = *(v13 + 16);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v14 = *v14;
    goto LABEL_12;
  }

LABEL_34:
  *(a1 + 40) = 0;
  return result;
}

uint64_t DumpReliable(uint64_t a1)
{
  printf("Not reliable: ");
  v2 = *(a1 + 1348);
  if (v2 < 1)
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = (a1 + 1449);
    v6 = *(a1 + 1348);
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 2;
      v3 += v8;
      v4 += v7;
      --v6;
    }

    while (v6);
  }

  if (v2 <= 1)
  {
    v2 = 1;
  }

  v9 = v3 / v2;
  v10 = v4 / v2;
  printf("center %02X,%02X\n", v3 / v2, v4 / v2);
  if (*(a1 + 260) < 1)
  {
    v20 = 0;
    v13 = 999.0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 999.0;
    do
    {
      v14 = *(a1 + 264 + 4 * v11);
      v15 = &unigram_table + 808 * v14;
      v16 = MyEncodingName(kMapToEncoding[v14]);
      v17 = v15[32];
      v18 = v15[33];
      printf("  %8s = %4d at %02x,%02x +/- %02X,%02X ", v16, *(a1 + 532 + 4 * v14), v17, v18, v15[34], v15[35]);
      v19 = sqrt((v10 - v18) * (v10 - v18) + (v9 - v17) * (v9 - v17));
      printf("(%3.1f)\n", v19);
      if (v13 > v19)
      {
        v12 = v14;
        v13 = v19;
      }

      ++v11;
    }

    while (v11 < *(a1 + 260));
    v20 = v12;
  }

  v21 = MyEncodingName(kMapToEncoding[v20]);
  return printf("Closest=%s (%3.1f)\n", v21, v13);
}

BOOL QuickPrintableAsciiScan(int8x8_t *a1, int a2)
{
  v2 = a1 + a2;
  do
  {
    v3 = a1;
    if (a1 >= (v2 - 7))
    {
      break;
    }

    ++a1;
    v4 = vorr_s8(vadd_s8(*v3, 0x101010101010101), vadd_s8(*v3, 0xE0E0E0E0E0E0E0E0));
  }

  while (((v4.i32[0] | v4.i32[1] | ((*&v4 | HIDWORD(*&v4)) >> 16) | ((v4.i32[0] | v4.i32[1] | ((*&v4 | HIDWORD(*&v4)) >> 16)) >> 8)) & 0x80) == 0);
  do
  {
    v5 = v3;
    if (v3 >= v2)
    {
      break;
    }

    v3 = (v3 + 1);
  }

  while (kIsPrintableAscii[v5->u8[0]]);
  return v5 >= v2;
}

BOOL TextInsideTag(const unsigned __int8 *a1, const unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v3 = a2 - 192;
  if (a2 - 192 < a1)
  {
    v3 = a1;
  }

  v4 = a2 - 1;
  while (1)
  {
    if (v3 > v4)
    {
      return 0;
    }

    v5 = *(a2 - 1);
    if ((v5 & 0xFFFFFFFD) == 0x3C)
    {
      break;
    }

    v6 = v5 != 47 || a2 >= a3;
    if (!v6 && *a2 == 42)
    {
      return 1;
    }

    v4 = a2 - 2;
    --a2;
  }

  if (v5 == 60)
  {
    return 1;
  }

  if (v5 != 62 || a2 - 7 < a1)
  {
    return 0;
  }

  v7 = *(a2 - 7);
  if (v7 == 115)
  {
    return (*(a2 - 6) & 0xDF) == 0x43 && (*(a2 - 5) & 0xDF) == 0x52 && (*(a2 - 4) & 0xDF) == 0x49 && (*(a2 - 3) & 0xDF) == 0x50 && (*(a2 - 2) & 0xDF) == 0x54;
  }

  return v7 == 60 && (*(a2 - 6) & 0xDF) == 0x54 && (*(a2 - 5) & 0xDF) == 0x49 && (*(a2 - 4) & 0xDF) == 0x54 && (*(a2 - 3) & 0xDF) == 0x4C && (*(a2 - 2) & 0xDF) == 0x45;
}

const unsigned __int8 *SkipToTagEnd(const unsigned __int8 *a1, const unsigned __int8 *a2)
{
  result = a1 + 1;
  while (result <= a2)
  {
    v4 = *result++;
    if ((v4 & 0xFFFFFFFD) == 0x3C)
    {
      return result;
    }
  }

  return a1 + 2;
}

uint64_t LookupWatchEnc(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (*(a1 + 8) != 8)
    {
      a1 = *a1;
      goto LABEL_9;
    }

    a1 = *a1;
  }

  else if (v1 != 8)
  {
    goto LABEL_9;
  }

  if (*a1 == 0x3846545538465455)
  {
    return 59;
  }

LABEL_9:
  v3 = -1431655766;
  if (!EncodingFromName(a1, &v3))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  while (kMapToEncoding[result] != v3)
  {
    if (++result == 67)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t CompatibleEnc(unsigned int a1, unsigned int a2)
{
  result = 0;
  if (a1 > 0x4A)
  {
    return result;
  }

  if (a2 > 0x4A)
  {
    return result;
  }

  result = 1;
  if (a1 == a2)
  {
    return result;
  }

  if (a2 == 23)
  {
    return result;
  }

  if (a1 == 23)
  {
    return result;
  }

  if (a2 == 24)
  {
    return result;
  }

  if (a1 == 24)
  {
    return result;
  }

  v4 = kMapEncToBaseEncoding[a1];
  v5 = kMapEncToBaseEncoding[a2];
  if (v4 == v5)
  {
    return result;
  }

  if (a1 == 63)
  {
    if (a2 == 22 || !v5)
    {
      return result;
    }

    if (a2 != 63)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (a2 != 63)
  {
    return 0;
  }

  if (a1 != 22)
  {
LABEL_17:
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SupersetEnc(uint64_t result, unsigned int a2)
{
  if (kMapEncToSuperLevel[result] >= kMapEncToSuperLevel[a2])
  {
    return result;
  }

  else
  {
    return a2;
  }
}

uint64_t Rescore(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (FLAGS_counts == 1)
  {
    ++rescore_used;
  }

  v6 = *(a4 + 1348);
  if (v6 < 1)
  {
    goto LABEL_35;
  }

  v7 = 0;
  v8 = 0;
  v9 = a3 - a2;
  v10 = a4 + 264;
  v11 = a4 + 532;
  do
  {
    v12 = *(a4 + 1736 + 4 * v7);
    if (v12 < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(a2 - 1 + v12) & 0xC0;
    }

    v14 = v12 + 1;
    if (v14 >= v9)
    {
      v15 = 0;
    }

    else
    {
      v15 = (*(a2 + v14) >> 4) & 0xC;
    }

    v16 = v12 + 2;
    if (v16 >= v9)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(a2 + v16) >> 6;
    }

    v18 = (v13 | v15 | v17) & 0xAAAAAAAA | (*(a2 + v12) >> 1) & 0x20;
    if (v18 == 32)
    {
      v19 = *(a4 + 260);
      if (v19 < 1)
      {
        goto LABEL_26;
      }

      for (i = 0; i < v19; ++i)
      {
        v21 = *(v10 + 4 * i);
        if ((kSpecialMask[kMapToEncoding[v21]] & 0x800) != 0)
        {
          *(v11 + 4 * v21) += 60;
          v19 = *(a4 + 260);
          v8 = 1;
        }
      }
    }

    if (v18 == 170)
    {
      v22 = *(a4 + 260);
      if (v22 >= 1)
      {
        for (j = 0; j < v22; ++j)
        {
          v24 = *(v10 + 4 * j);
          if ((kSpecialMask[kMapToEncoding[v24]] & 0x800) != 0)
          {
            *(v11 + 4 * v24) -= 60;
            v22 = *(a4 + 260);
            v8 = 1;
          }
        }
      }
    }

LABEL_26:
    ++v7;
  }

  while (v7 != v6);
  if (v8)
  {
    ReRank(a4);
    a1 = kMapToEncoding[*(a4 + 240)];
    if (*(a4 + 32))
    {
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__str = v25;
      v33 = v25;
      v26 = MyEncodingName(a1);
      snprintf(__str, 0x20uLL, "=Rescore %s", v26);
      v27 = 0;
      while (kMapToEncoding[v27] != a1)
      {
        if (++v27 == 67)
        {
          LODWORD(v27) = -1;
          break;
        }
      }

      v28 = *(a4 + 40);
      v29 = *(a4 + 32) + 304 * v28;
      *v29 = 0;
      *(v29 + 4) = v27;
      std::string::__assign_external((v29 + 8), __str);
      memcpy((*(a4 + 32) + 304 * v28 + 32), (a4 + 532), 0x10CuLL);
      ++*(a4 + 40);
    }

    SimplePrune(a4, 300);
    CalcReliable(a4);
  }

LABEL_35:
  v30 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t AddToSet(uint64_t result, int *a2, int *a3)
{
  v3 = 0;
  while (kMapToEncoding[v3] != result)
  {
    if (++v3 == 67)
    {
      LODWORD(v3) = -1;
      break;
    }
  }

  v4 = *a2;
  if (*a2 < 1)
  {
LABEL_9:
    *a2 = v4 + 1;
    a3[v4] = v3;
  }

  else
  {
    v5 = *a2;
    v6 = a3;
    while (1)
    {
      v7 = *v6++;
      if (v7 == v3)
      {
        break;
      }

      if (!--v5)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t RobustScan(const char *a1, unsigned int a2, int a3, int *a4, _DWORD *a5)
{
  v5 = a5;
  if (FLAGS_counts == 1)
  {
    ++robust_used;
  }

  if (a3 >= 1)
  {
    bzero(a5, 4 * a3);
  }

  v10 = vmin_s32(vdup_n_s32(a2), 0x1000000040000);
  v11 = &a1[v10.i32[0]];
  v12 = (v11 - 1);
  v13 = MEMORY[0x1E69E9848];
  if (FLAGS_enc_detect_source == 1)
  {
    PsSourceInit(32);
  }

  if (v12 > a1)
  {
    v14 = 0;
    v15 = (v11 - 3);
    v16 = &a1[v10.i32[1] - 1];
    v17 = &a1[v10.i32[0] - 1];
    while (1)
    {
      while (a1 < v15 && (((a1[1] | *a1) | (a1[2] | a1[3])) & 0x80) == 0)
      {
        a1 += 4;
      }

      if (a1 >= v12)
      {
        v20 = v14;
      }

      else
      {
        v18 = v17 - a1;
        a1 += 2;
        while (1)
        {
          v19 = *(a1 - 2);
          if (v19 < 0)
          {
            break;
          }

          ++a1;
          if (!--v18)
          {
            v20 = v14;
            a1 = v17;
            goto LABEL_18;
          }
        }

        if (a3 >= 1)
        {
          v21 = *(a1 - 1);
          v22 = v19 & 0xF0 | (v21 >> 4);
          v23 = v21 & 0x80 ^ v19;
          v24 = (32 * (v19 & 0x1Fu)) & 0xFFFFFFFFFFFFFFE0 | v21 & 0x1F;
          v25 = a3;
          v26 = a4;
          v27 = v5;
          do
          {
            v28 = *v26++;
            v29 = &unigram_table + 808 * v28;
            v30 = v29[v22 + 552];
            if (v30)
            {
              v31 = *(*&v29[8 * ((v21 >> 5) & 3)] + v24);
            }

            else
            {
              v31 = *(v29 + 9);
            }

            *v27++ += v29[v21 + 296] + v29[v23 + 40] + v30 + v31;
            --v25;
          }

          while (v25);
        }

        v20 = (v14 + 1);
        if (v14 >= 1000 && a1 > v16)
        {
          goto LABEL_30;
        }
      }

LABEL_18:
      v14 = v20;
      if (a1 >= v12)
      {
        goto LABEL_30;
      }
    }
  }

  v20 = 0;
LABEL_30:
  if (FLAGS_enc_detect_source == 1)
  {
    fprintf(*v13, "(  bigram_count = %d) do-src\n", v20);
    if (v20 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v20;
    }

    if (a3 >= 1)
    {
      v32 = a3;
      do
      {
        v33 = *v13;
        v34 = *a4++;
        v35 = MyEncodingName(kMapToEncoding[v34]);
        LODWORD(v34) = *v5++;
        fprintf(v33, "(  enc[%-12.12s] = %7d (avg %d)) do-src\n", v35, v34, v34 / v20);
        --v32;
      }

      while (v32);
    }

    PsSourceFinish();
  }

  return v20;
}

uint64_t Rescan(uint64_t a1, const char *a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, char a11, uint64_t a12)
{
  v12 = a2;
  v106 = *MEMORY[0x1E69E9840];
  if (FLAGS_counts == 1)
  {
    ++rescan_used;
  }

  if (a4 - a3 >= 801)
  {
    v14 = a9;
    v15 = a4 - a2;
    v16 = *(a12 + 204);
    if (v16 == 23)
    {
      v16 = *(a12 + 208);
      if (v16 == 23)
      {
        v16 = *(a12 + 212);
      }
    }

    v17 = kMapToEncoding[*(a12 + 244)];
    v18 = (a3 - a2 + ((a4 - a3) >> 1)) & 0xFFFFFFFE;
    v19 = &a2[v18];
    if ((v19 - 192) >= a3)
    {
      v20 = (v19 - 192);
    }

    else
    {
      v20 = a3;
    }

    v21 = v18 | 1;
    v22 = v19 - 1;
    v80 = *(a12 + 45);
    while (v20 <= v22)
    {
      v23 = *v22--;
      --v21;
      if ((v23 & 0x80000000) == 0)
      {
        v18 = v21 & 0xFFFFFFFE;
        break;
      }
    }

    v24 = a12;
    v82 = a4 - a2;
    if (*(a12 + 32))
    {
      v79 = a8;
      v77 = a6;
      v78 = a7;
      v76 = a5;
      SetDetailsEncLabel(a12, ">> Rescan");
      DumpDetail(a12);
      *&v25 = 0xAAAAAAAAAAAAAAAALL;
      *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__str = v25;
      *&__str[16] = v25;
      snprintf(__str, 0x20uLL, ">> Rescan[%d..%d]", v18, v15);
      v15 = v82;
      fprintf(*MEMORY[0x1E69E9848], "() end-detail (%s) start-detail\n\n", __str);
      v14 = a9;
      a5 = v76;
      a6 = v77;
      a7 = v78;
      a8 = v79;
      v12 = a2;
    }

    v84 = -86;
    v83 = -1431655766;
    BYTE4(v75) = a11;
    LODWORD(v75) = a10;
    v26 = InternalDetectEncoding(5, &v12[v18], v15 - v18, a5, a6, a7, a8, v14, v75, v85, &v84, &v83);
    v27 = v84;
    *(a12 + 45) = v84;
    v28 = a1;
    if (v26 != 24)
    {
      v29 = CompatibleEnc(v16, v26);
      v28 = a1;
      if (v29)
      {
        if (kMapEncToSuperLevel[v16] >= kMapEncToSuperLevel[v26])
        {
          v28 = v16;
        }

        else
        {
          v28 = v26;
        }
      }

      if (v27 && v80 && (CompatibleEnc(a1, v26) & 1) != 0)
      {
        if (kMapEncToSuperLevel[a1] >= kMapEncToSuperLevel[v26])
        {
          a1 = a1;
        }

        else
        {
          a1 = v26;
        }

        goto LABEL_107;
      }

      if (v27)
      {
        v30 = CompatibleEnc(a1, v26) & v29;
        v24 = a12;
        if (v30)
        {
LABEL_106:
          a1 = v28;
          goto LABEL_107;
        }
      }

      else
      {
        v24 = a12;
      }
    }

    v31 = 0;
    v105 = 0xAAAAAAAAAAAAAAAALL;
    *&v32 = 0xAAAAAAAAAAAAAAAALL;
    *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v104 = v32;
    v103 = v32;
    v102 = v32;
    v101 = v32;
    v100 = v32;
    v99 = v32;
    v98 = v32;
    v97 = v32;
    v96 = v32;
    v95 = v32;
    v94 = v32;
    v93 = v32;
    v92 = v32;
    v91 = v32;
    *&__str[20] = v32;
    *&__str[4] = v32;
    *(v89 + 12) = v32;
    v88[14] = v32;
    v89[0] = v32;
    v88[12] = v32;
    v88[13] = v32;
    v88[10] = v32;
    v88[11] = v32;
    v88[8] = v32;
    v88[9] = v32;
    v88[6] = v32;
    v88[7] = v32;
    v88[4] = v32;
    v88[5] = v32;
    v88[2] = v32;
    v88[3] = v32;
    v88[0] = v32;
    v88[1] = v32;
    while (kMapToEncoding[v31] != a1)
    {
      if (++v31 == 67)
      {
        LODWORD(v31) = -1;
        break;
      }
    }

    v33 = 0;
    *__str = v31;
    while (kMapToEncoding[v33] != v17)
    {
      if (++v33 == 67)
      {
        LODWORD(v33) = -1;
        break;
      }
    }

    if (v31 == v33)
    {
      v34 = 1;
    }

    else
    {
      *&__str[4] = v33;
      v34 = 2;
    }

    v35 = 0;
    while (kMapToEncoding[v35] != v26)
    {
      if (++v35 == 67)
      {
        LODWORD(v35) = -1;
        break;
      }
    }

    v36 = 0;
    while (*&__str[v36] != v35)
    {
      v36 += 4;
      if (4 * v34 == v36)
      {
        *&__str[4 * v34++] = v35;
        break;
      }
    }

    v37 = 0;
    while (kMapToEncoding[v37] != v83)
    {
      if (++v37 == 67)
      {
        LODWORD(v37) = -1;
        break;
      }
    }

    v38 = 0;
    while (*&__str[v38] != v37)
    {
      v38 += 4;
      if (4 * v34 == v38)
      {
        *&__str[4 * v34++] = v37;
        break;
      }
    }

    v39 = *(v24 + 204);
    if (v39 != 23)
    {
      v40 = 0;
      while (kMapToEncoding[v40] != v39)
      {
        if (++v40 == 67)
        {
          LODWORD(v40) = -1;
          break;
        }
      }

      v41 = v34;
      v42 = __str;
      v43 = v34;
      while (1)
      {
        v44 = *v42;
        v42 += 4;
        if (v44 == v40)
        {
          break;
        }

        if (!--v43)
        {
          ++v34;
          *&__str[4 * v41] = v40;
          break;
        }
      }
    }

    v45 = *(v24 + 208);
    if (v45 != 23)
    {
      v46 = 0;
      while (kMapToEncoding[v46] != v45)
      {
        if (++v46 == 67)
        {
          LODWORD(v46) = -1;
          break;
        }
      }

      v47 = v34;
      v48 = __str;
      v49 = v34;
      while (1)
      {
        v50 = *v48;
        v48 += 4;
        if (v50 == v46)
        {
          break;
        }

        if (!--v49)
        {
          ++v34;
          *&__str[4 * v47] = v46;
          break;
        }
      }
    }

    v51 = *(v24 + 212);
    if (v51 != 23)
    {
      v52 = 0;
      while (kMapToEncoding[v52] != v51)
      {
        if (++v52 == 67)
        {
          LODWORD(v52) = -1;
          break;
        }
      }

      v53 = v34;
      v54 = __str;
      v55 = v34;
      while (1)
      {
        v56 = *v54;
        v54 += 4;
        if (v56 == v52)
        {
          break;
        }

        if (!--v55)
        {
          ++v34;
          *&__str[4 * v53] = v52;
          break;
        }
      }
    }

    v57 = *(v24 + 200);
    if (v57 != 23)
    {
      v58 = 0;
      while (kMapToEncoding[v58] != v57)
      {
        if (++v58 == 67)
        {
          LODWORD(v58) = -1;
          break;
        }
      }

      v59 = v34;
      v60 = __str;
      v61 = v34;
      while (1)
      {
        v62 = *v60;
        v60 += 4;
        if (v62 == v58)
        {
          break;
        }

        if (!--v61)
        {
          ++v34;
          *&__str[4 * v59] = v58;
          break;
        }
      }
    }

    if (*(v24 + 32))
    {
      SetDetailsEncLabel(v24, ">> RobustScan");
      DumpDetail(v24);
      *&v63 = 0xAAAAAAAAAAAAAAAALL;
      *(&v63 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__s = v63;
      v87 = v63;
      snprintf(__s, 0x20uLL, ">> RobustScan[0..%d]", v82);
      fprintf(*MEMORY[0x1E69E9848], "() end-detail (%s) start-detail\n\n", __s);
    }

    v64 = RobustScan(a2, v82, v34, __str, v88);
    v65 = 0;
    v66 = -1;
    do
    {
      if (v66 < *(v88 + v65))
      {
        v28 = kMapToEncoding[*&__str[v65]];
        v66 = *(v88 + v65);
      }

      v65 += 4;
    }

    while (4 * v34 != v65);
    if (*(v24 + 32))
    {
      *&v67 = 0xAAAAAAAAAAAAAAAALL;
      *(&v67 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__s = v67;
      v87 = v67;
      v68 = MyEncodingName(v28);
      snprintf(__s, 0x20uLL, "=Robust[%d] %s", v64, v68);
      v69 = 0;
      while (kMapToEncoding[v69] != v28)
      {
        if (++v69 == 67)
        {
          LODWORD(v69) = -1;
          break;
        }
      }

      v71 = *(v24 + 40);
      v70 = (v24 + 40);
      v72 = *(v70 - 1) + 304 * v71;
      *v72 = 0;
      *(v72 + 4) = v69;
      std::string::__assign_external((v72 + 8), __s);
      memcpy((*(v70 - 1) + 304 * v71 + 32), (a12 + 532), 0x10CuLL);
      ++*v70;
    }

    goto LABEL_106;
  }

LABEL_107:
  v73 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t InternalDetectEncoding(char a1, int8x8_t *a2, int a3, char *a4, char *a5, char *a6, int a7, unsigned int a8, unsigned int a9, char a10, _DWORD *a11, _BYTE *a12, _DWORD *a13)
{
  v105 = *MEMORY[0x1E69E9840];
  *a11 = 0;
  *a12 = 0;
  *a13 = 24;
  if (!a3)
  {
    v19 = 0;
    *a12 = 1;
    goto LABEL_181;
  }

  if (a3 <= 500 && a10 && QuickPrintableAsciiScan(a2, a3))
  {
    *a12 = 1;
    v19 = 24;
    goto LABEL_181;
  }

  memset(__b, 170, sizeof(__b));
  InitDetectEncodingState(__b);
  v102 = 0;
  v89 = a1;
  if (FLAGS_enc_detect_detail)
  {
    operator new[]();
  }

  v90 = a4;
  v91 = a8;
  v92 = a5;
  v93 = a6;
  if (a3 >= FLAGS_enc_detect_slow_max_kb << 10)
  {
    v20 = FLAGS_enc_detect_slow_max_kb << 10;
  }

  else
  {
    v20 = a3;
  }

  if (a3 >= FLAGS_enc_detect_fast_max_kb << 10)
  {
    v21 = FLAGS_enc_detect_fast_max_kb << 10;
  }

  else
  {
    v21 = a3;
  }

  v22 = a2 + v21;
  v97 = (v22 - 1);
  if (FLAGS_enc_detect_fast_max_kb << 10 >= v20)
  {
    v23 = a2 + v20 - 1;
  }

  else
  {
    v23 = (v22 - 1);
  }

  __b[0] = a2;
  __b[1] = a2 + v21;
  __b[2] = a2;
  __b[3] = a2 - 2;
  if (a10)
  {
    v24 = &kTestPrintableAscii;
  }

  else
  {
    v24 = &kTestPrintableAsciiTildePlus;
  }

  if (__b[4])
  {
    BeginDetail(__b);
    v25 = std::string::basic_string[abi:ne200100]<0>(__str, "");
    v26 = a7;
    v27 = LookupWatchEnc(v25);
    watch1_rankedenc = v27;
    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
      v27 = watch1_rankedenc;
    }

    v28 = MEMORY[0x1E69E9848];
    if ((v27 & 0x80000000) == 0)
    {
      fprintf(*MEMORY[0x1E69E9848], "/track-me %d def\n", v27);
    }

    v29 = std::string::basic_string[abi:ne200100]<0>(__str, "");
    v30 = LookupWatchEnc(v29);
    watch2_rankedenc = v30;
    if ((__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
      v30 = watch2_rankedenc;
    }

    if ((v30 & 0x80000000) == 0)
    {
      fprintf(*v28, "/track-me2 %d def\n", v30);
    }

    fprintf(*v28, "%% kDerateHintsBelow = %d\n", 12);
    a7 = v26;
  }

  v31 = a2 + a3;
  if (FLAGS_enc_detect_source == 1)
  {
    PsSourceInit(32);
  }

  ApplyHints(v90, v92, a6, a7, a8, a9, __b);
  InitialBytesBoost(a2, a3, __b);
  v98 = v20;
  v99 = 0;
  v87 = a7;
  v88 = 0;
  v95 = (v22 - 3);
  v32 = a2;
  v96 = (v31 - 1);
  v100 = a2 + a3;
  while (1)
  {
    while (v32 < v23)
    {
      while (2)
      {
        v33 = v32 - 1;
        v34 = a3 + a2 + 1 - v32;
        do
        {
          v35 = v32;
          v32 = v33 + 1;
          if (v33 + 1 >= v23)
          {
            goto LABEL_50;
          }

          v36 = *++v33;
          v37 = v24[v36];
          v32 = v35 + 1;
          --v34;
        }

        while (!v24[v36]);
        if (FLAGS_enc_detect_source == 1)
        {
          PsSource(v33, a2, v100);
        }

        if (v89 & 4 | a9 || !TextInsideTag(a2, v33, v23))
        {
          v38 = 0;
LABEL_45:
          if (FLAGS_enc_detect_source == 1)
          {
            PsMark(v33, 2, a2, v38);
          }

          v39 = IncrementAndBoostPrune(v33, v34, __b, v38, v37);
          v32 = &v33[v37];
          if (v39)
          {
            if ((__b[5] & 0x100000000) != 0)
            {
              v32 = &v35[v37];
            }

            else
            {
              if ((__b[24] & 0x100000000) != 0)
              {
                goto LABEL_50;
              }

              v32 = &v33[v37];
            }
          }

          else
          {
LABEL_50:
            if (v32 < v23)
            {
              continue;
            }
          }

          v31 = a2 + a3;
          goto LABEL_52;
        }

        break;
      }

      if (v99 < 12)
      {
        ++v99;
        v38 = 4;
        goto LABEL_45;
      }

      v32 = v33 + 1;
      v31 = a2 + a3;
      while (v32 <= v23)
      {
        v46 = *v32++;
        if ((v46 & 0xFFFFFFFD) == 0x3C)
        {
          goto LABEL_75;
        }
      }

      v32 = v33 + 2;
LABEL_75:
      v88 = 1;
    }

LABEL_52:
    if (v32 == v96)
    {
      v42 = *v32;
      v41 = v97;
      if (v24[v42])
      {
        v40 = 1;
        IncrementAndBoostPrune(v32, 1, __b, 0, v24[v42]);
      }

      else
      {
        v40 = 0;
      }
    }

    else
    {
      v40 = 0;
      v41 = v97;
    }

    if (FLAGS_enc_detect_source == 1)
    {
      PsSource(v32, a2, v31);
      v43 = pssource_mark_buffer;
      v44 = 2 * ((v32 - a2) % pssourcewidth);
      v45 = pssource_mark_buffer + v44;
      *v45 = 61;
      *(v43 + v44 + 1) = 61;
      *(v45 + 2) = 11565;
    }

    BoostPrune(v32, __b, 1);
    if ((__b[5] & 0x100000000) != 0)
    {
      v47 = v32;
      goto LABEL_101;
    }

    if ((__b[24] & 0x100000000) == 0 || v32 >= v41)
    {
      break;
    }

    v98 += FLAGS_enc_detect_slow_max_kb << 10;
    if (v98 <= v21)
    {
      v23 = &a2[-1] + v98 + 7;
    }

    else
    {
      v23 = v41;
    }

    if ((__b[24] & 0x600000000) == 0)
    {
      v24 = &kTestPrintableAscii;
    }
  }

  if (v32 >= v41)
  {
    v47 = v32;
    goto LABEL_97;
  }

  while (1)
  {
    if (v32 >= v95)
    {
      v48 = v97;
    }

    else
    {
      v48 = v97;
      do
      {
        if ((((v32[1] | *v32) | (v32[2] | v32[3])) & 0x80) != 0)
        {
          break;
        }

        v32 += 4;
      }

      while (v32 < v95);
    }

    if (v32 < v48)
    {
      break;
    }

    v47 = v32;
LABEL_94:
    v32 = v47;
    if (v47 >= v97)
    {
      goto LABEL_97;
    }
  }

  v49 = 0;
  while ((v32[v49] & 0x80000000) == 0)
  {
    ++v49;
    if (!&v32[1 - (a2 + v21) + v49])
    {
      v47 = &v32[v49];
      goto LABEL_94;
    }
  }

  if (FLAGS_enc_detect_source)
  {
    PsSource(&v32[v49], a2, v100);
    v50 = pssource_mark_buffer;
    v51 = 2 * ((v32 - a2 + v49) % pssourcewidth);
    v52 = pssource_mark_buffer + v51;
    *v52 = 61;
    *(v50 + v51 + 1) = 61;
    *(v52 + 2) = 11565;
  }

  v47 = &v32[v49 + 2];
  if (!IncrementAndBoostPrune(&v32[v49], v100 - (v32 + v49), __b, 0, 2) || BYTE4(__b[5]) != 1)
  {
    goto LABEL_94;
  }

  v47 = &v32[v49 + 2];
LABEL_97:
  if (v47 == v96)
  {
    v53 = v40;
  }

  else
  {
    v53 = 1;
  }

  v31 = a2 + a3;
  if (v53)
  {
LABEL_101:
    v54 = v87;
    goto LABEL_102;
  }

  v71 = *v47;
  v54 = v87;
  if (v24[v71])
  {
    IncrementAndBoostPrune(v47, 1, __b, 0, v24[v71]);
    v55 = a10;
  }

  else
  {
LABEL_102:
    v55 = a10;
  }

  if (FLAGS_enc_detect_source == 1)
  {
    PsSource(v47, a2, v31);
    v56 = pssource_mark_buffer;
    v57 = 2 * ((v47 - a2) % pssourcewidth);
    v58 = pssource_mark_buffer + v57;
    *v58 = 61;
    *(v56 + v57 + 1) = 61;
    *(v58 + 2) = 11565;
  }

  BoostPrune(v47, __b, 2);
  if (FLAGS_enc_detect_summary == 1)
  {
    DumpSummary(__b, 0, 32);
    DumpSummary(__b, 1, 32);
  }

  if (FLAGS_enc_detect_source == 1)
  {
    PsSourceFinish();
  }

  v59 = __b[30];
  if (LODWORD(__b[30]) != 0 || (v88 & 1) == 0)
  {
    v19 = kMapToEncoding[SLODWORD(__b[30])];
    v63 = __b[26];
    if (LODWORD(__b[26]) != 23 && HIDWORD(__b[25]) == 23)
    {
      v65 = __b[26];
    }

    else
    {
      v65 = HIDWORD(__b[25]);
    }

    v66 = HIDWORD(__b[26]);
    if (HIDWORD(__b[26]) != 23 && v65 == 23)
    {
      v68 = HIDWORD(__b[26]);
    }

    else
    {
      v68 = v65;
    }

    if (v68 == 23)
    {
      if (LODWORD(__b[30]) == 1)
      {
        v69 = a2 + a3;
        if ((__b[8] & 0x100) == 0)
        {
          goto LABEL_161;
        }

        goto LABEL_159;
      }

      v69 = a2 + a3;
      if (!kMapEncToBaseEncoding[v19] || v19 <= 0x3F && ((1 << v19) & 0x8000000001800000) != 0)
      {
        v70 = 1;
        goto LABEL_152;
      }

      v68 = __b[25];
      if (LODWORD(__b[25]) == 23)
      {
        v70 = 0;
        goto LABEL_152;
      }
    }

    else
    {
      v70 = CompatibleEnc(v68, HIDWORD(__b[25]));
      if (!v70 || (v70 = CompatibleEnc(v68, v63)) == 0)
      {
        v69 = a2 + a3;
LABEL_152:
        if ((__b[8] & 0x100) == 0 || v59 != 1 && kMapEncToBaseEncoding[v19] && (v19 > 0x3F || ((1 << v19) & 0x8000000001800000) == 0) && (v59 > 0x29 || ((1 << v59) & 0x20020011200) == 0))
        {
          if (!v70)
          {
            if (BYTE5(__b[5]) != 1)
            {
              v79 = 0;
              goto LABEL_169;
            }

            v81 = (v19 - 10) < 0x36 && ((0x20000000007803uLL >> (v19 - 10)) & 1) != 0 || v59 == 5 || (kMapEncToBaseEncoding[v19] - 13) < 2;
            v79 = 0;
            if (!v81)
            {
              goto LABEL_169;
            }

            if (SHIDWORD(__b[168]) < 6)
            {
              goto LABEL_169;
            }

            v79 = v89 & 1;
            v78 = 1;
            if ((v89 & 1) == 0)
            {
              goto LABEL_169;
            }

LABEL_162:
            if (v78)
            {
              v80 = 1;
              goto LABEL_170;
            }

LABEL_169:
            v19 = Rescore(v19, a2, v69, __b);
            v78 = BYTE5(__b[5]);
            v80 = v79;
LABEL_170:
            *a13 = kMapToEncoding[SHIDWORD(__b[30])];
            if (v89 & 1) != 0 || (v79 & v78 & 1) != 0 || (kSpecialMask[v19])
            {
              if ((v80 & 1) == 0)
              {
                BYTE5(__b[5]) = 0;
              }
            }

            else
            {
              v19 = Rescan(v19, a2, v47, v69, v90, v92, v93, v54, v91, a9, v55, __b);
            }

            if (__b[4])
            {
              DumpDetail(__b);
            }

            *a11 = v47 - a2 + 1;
            *a12 = BYTE5(__b[5]);
            goto LABEL_179;
          }

LABEL_161:
          v79 = 1;
          v78 = BYTE5(__b[5]);
          goto LABEL_162;
        }

LABEL_159:
        v78 = 1;
        BYTE5(__b[5]) = 1;
        v79 = 1;
        goto LABEL_162;
      }

      v70 = CompatibleEnc(v68, v66);
      v69 = a2 + a3;
      if (!v70)
      {
        goto LABEL_152;
      }
    }

    v70 = CompatibleEnc(v68, v19);
    goto LABEL_152;
  }

  if (__b[4])
  {
    v60 = __b[5];
    v61 = __b[4] + 304 * SLODWORD(__b[5]);
    *v61 = *(v61 - 304);
    *(v61 + 4) = -1;
    v62 = (v61 + 8);
    if (*(v61 + 31) < 0)
    {
      *(v61 + 16) = 15;
      v62 = *v62;
    }

    else
    {
      *(v61 + 31) = 15;
    }

    strcpy(v62, ">> Recurse/tags");
    memcpy((__b[4] + 304 * v60 + 32), &__b[66] + 4, 0x10CuLL);
    ++LODWORD(__b[5]);
    DumpDetail(__b);
    *&__str[28] = -1431655766;
    *&__str[20] = 0xAAAAAAAAAAAAAAAALL;
    strcpy(__str, ">> Recurse for tags");
    fprintf(*MEMORY[0x1E69E9848], "() end-detail (%s) start-detail\n\n", __str);
  }

  BYTE4(v86) = v55;
  LODWORD(v86) = a9;
  v72 = InternalDetectEncoding(4, a2, a3, v90, v92, v93, v54, v91, v86, a11, a12, a13);
  v19 = v72;
  if (__b[4])
  {
    *&v73 = 0xAAAAAAAAAAAAAAAALL;
    *(&v73 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__str = v73;
    *&__str[16] = v73;
    v74 = MyEncodingName(v72);
    snprintf(__str, 0x20uLL, "=2 %s", v74);
    v75 = 0;
    while (kMapToEncoding[v75] != v19)
    {
      if (++v75 == 67)
      {
        LODWORD(v75) = -1;
        break;
      }
    }

    v76 = __b[5];
    v77 = __b[4] + 304 * SLODWORD(__b[5]);
    *v77 = 0;
    *(v77 + 4) = v75;
    std::string::__assign_external((v77 + 8), __str);
    memcpy((__b[4] + 304 * v76 + 32), &__b[66] + 4, 0x10CuLL);
    ++LODWORD(__b[5]);
    DumpDetail(__b);
  }

LABEL_179:
  v82 = v102;
  v102 = 0;
  if (v82)
  {
    std::default_delete<DetailEntry []>::operator()[abi:ne200100]<DetailEntry>(&v102, v82);
  }

LABEL_181:
  v83 = *MEMORY[0x1E69E9840];
  return v19;
}

void sub_1B0A8A3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = a33;
  a33 = 0;
  if (v34)
  {
    std::default_delete<DetailEntry []>::operator()[abi:ne200100]<DetailEntry>(&a33, v34);
  }

  _Unwind_Resume(exception_object);
}

BOOL NoHintsCloseEnoughCompatible(unsigned int a1)
{
  if (a1 <= 0x4A && a1 - 10 < 0x36 && ((0x20000000007803uLL >> (a1 - 10)) & 1) != 0)
  {
    return 1;
  }

  return a1 == 16 || (kMapEncToBaseEncoding[a1] - 13) < 2;
}

uint64_t CompactEncDet::DetectEncoding(int8x8_t *a1, int a2, char *a3, char *a4, char *a5, int a6, unsigned int a7, unsigned int a8, char a9, int *a10, _BYTE *a11)
{
  v74 = *MEMORY[0x1E69E9840];
  if (FLAGS_ced_echo_input == 1)
  {
    memset(__dst, 170, 24);
    if (a2 < 0)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v56 = a8;
    if (a2 >= 0x17)
    {
      operator new();
    }

    __dst[23] = a2;
    if (a2)
    {
      memcpy(__dst, a1, a2);
    }

    __dst[a2] = 0;
    v18 = __dst;
    if (__dst[23] < 0)
    {
      v18 = *__dst;
    }

    fprintf(*MEMORY[0x1E69E9848], "CompactEncDet::DetectEncoding()\n%s\n\n", v18);
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }

    a8 = v56;
  }

  if (FLAGS_counts == 1)
  {
    rescore_used = 0;
    rescan_used = 0;
    robust_used = 0;
    looking_used = 0;
    doing_used = 0;
    encdet_used = 1;
  }

  if (FLAGS_dirtsimple == 1)
  {
    v19 = 0;
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *(v73 + 12) = v20;
    v72 = v20;
    v73[0] = v20;
    v70 = v20;
    v71 = v20;
    v68 = v20;
    v69 = v20;
    v66 = v20;
    v67 = v20;
    v64 = v20;
    v65 = v20;
    v62 = v20;
    v63 = v20;
    v60 = v20;
    v61 = v20;
    *__dst = v20;
    *&__dst[16] = v20;
    *&v58[12] = v20;
    v57[14] = v20;
    *v58 = v20;
    v57[12] = v20;
    v57[13] = v20;
    v57[10] = v20;
    v57[11] = v20;
    v57[8] = v20;
    v57[9] = v20;
    v57[6] = v20;
    v57[7] = v20;
    v57[4] = v20;
    v57[5] = v20;
    v57[2] = v20;
    v57[3] = v20;
    v57[0] = v20;
    v57[1] = v20;
    v21 = xmmword_1B0EA4600;
    v22 = xmmword_1B0EA4610;
    v23 = &__dst[8];
    v24 = vdupq_n_s64(4uLL);
    v25 = vdupq_n_s64(0x43uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v25, v22)), *v21.i8).u8[0])
      {
        *(v23 - 2) = v19;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x43uLL), *&v22)), *&v21).i8[2])
      {
        *(v23 - 1) = v19 + 1;
      }

      if (vuzp1_s16(*&v21, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x43uLL), *&v21))).i32[1])
      {
        *v23 = v19 + 2;
        v23[1] = v19 + 3;
      }

      v19 += 4;
      v21 = vaddq_s64(v21, v24);
      v22 = vaddq_s64(v22, v24);
      v23 += 4;
    }

    while (v19 != 68);
    RobustScan(a1, a2, 67, __dst, v57);
    v26 = 0;
    v27 = -1;
    v28 = 23;
    do
    {
      if (v27 < *(v57 + v26))
      {
        v28 = kMapToEncoding[*&__dst[v26]];
        v27 = *(v57 + v26);
      }

      v26 += 4;
    }

    while (v26 != 268);
    if (a2 >= 0x40000)
    {
      v29 = 0x40000;
    }

    else
    {
      v29 = a2;
    }

    *a10 = v29;
    *a11 = 1;
    if (FLAGS_counts)
    {
      printf("CEDcounts ");
      while (encdet_used--)
      {
        printf("encdet ");
      }

      while (rescore_used--)
      {
        printf("rescore ");
      }

      while (rescan_used--)
      {
        printf("rescan ");
      }

      while (robust_used--)
      {
        printf("robust ");
      }

      while (looking_used--)
      {
        printf("looking ");
      }

      while (doing_used--)
      {
        printf("doing ");
      }

LABEL_58:
      putchar(10);
    }
  }

  else
  {
    v28 = InternalDetectEncoding(0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, __dst);
    if (FLAGS_counts == 1)
    {
      printf("CEDcounts ");
      while (encdet_used--)
      {
        printf("encdet ");
      }

      while (rescore_used--)
      {
        printf("rescore ");
      }

      while (rescan_used--)
      {
        printf("rescan ");
      }

      while (robust_used--)
      {
        printf("robust ");
      }

      while (looking_used--)
      {
        printf("looking ");
      }

      while (doing_used--)
      {
        printf("doing ");
      }

      goto LABEL_58;
    }
  }

  v54 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t CompactEncDet::TopEncodingOfLangHint(CompactEncDet *this, const char *a2)
{
  memset(v10, 170, sizeof(v10));
  std::string::basic_string[abi:ne200100]<0>(__p, this);
  MakeChar8(__p, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = SHIBYTE(v10[2]);
  v3 = v10[0];
  if (v10[2] >= 0)
  {
    v4 = v10;
  }

  else
  {
    v4 = v10[0];
  }

  v5 = HintBinaryLookup8(kLangHintProbs, 151, v4);
  if (v5 < 0)
  {
    v6 = 23;
    if ((v2 & 0x80000000) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

  v6 = kMapToEncoding[TopCompressedProb(&kLangHintProbs[20 * v5 + 8], 12)];
  if (v2 < 0)
  {
LABEL_8:
    operator delete(v3);
  }

  return v6;
}

void sub_1B0A8AB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CompactEncDet::TopEncodingOfCharsetHint(CompactEncDet *this, const char *a2)
{
  memset(v10, 170, sizeof(v10));
  std::string::basic_string[abi:ne200100]<0>(__p, this);
  MakeChar44(__p, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v2 = SHIBYTE(v10[2]);
  v3 = v10[0];
  if (v10[2] >= 0)
  {
    v4 = v10;
  }

  else
  {
    v4 = v10[0];
  }

  v5 = HintBinaryLookup8(kCharsetHintProbs, 438, v4);
  if (v5 < 0)
  {
    v6 = 23;
    if ((v2 & 0x80000000) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

  v6 = kMapToEncoding[TopCompressedProb(&kCharsetHintProbs[20 * v5 + 8], 12)];
  if (v2 < 0)
  {
LABEL_8:
    operator delete(v3);
  }

  return v6;
}

void sub_1B0A8AC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7AA1F40, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::default_delete<DetailEntry []>::operator()[abi:ne200100]<DetailEntry>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 - 8);
    if (v2)
    {
      v3 = a2 + 304 * v2 - 296;
      v4 = -304 * v2;
      do
      {
        if (*(v3 + 23) < 0)
        {
          operator delete(*v3);
        }

        v3 -= 304;
        v4 += 304;
      }

      while (v4);
    }

    JUMPOUT(0x1B272A6C0);
  }
}

const char *MyEncodingName(unsigned int a1)
{
  if ((a1 & 0x80000000) == 0)
  {
    if (!a1)
    {
      return "Latin1";
    }

    if (a1 <= 0x4A)
    {
      return EncodingName(a1);
    }

    if (a1 <= 0x4E)
    {
      v2 = a1 - 75;
      v3 = kFakeEncodingName2;
      return v3[v2];
    }

    v2 = a1 - 100;
    if (a1 - 100 <= 0x13)
    {
      v3 = kFakeEncodingName;
      return v3[v2];
    }
  }

  return "~";
}

_BYTE *MakeChar44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  memset(a2, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a2, "________");
  v4 = *(a1 + 23);
  v5 = a1[1];
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(a1 + 23);
  }

  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = v4 >> 63;
    v10 = 1;
    do
    {
      if (v9)
      {
        v11 = *a1;
      }

      else
      {
        v11 = a1;
      }

      v12 = *(v11 + v6);
      if (kIsAlpha[v12])
      {
        if (v8 <= 3)
        {
          v13 = kCharsetToLowerTbl[v12];
          if (result[23] >= 0)
          {
            v14 = result;
          }

          else
          {
            v14 = *result;
          }

          v14[v8++] = v13;
        }
      }

      else if (kIsDigit[v12])
      {
        if (v7 > 3)
        {
          if (result[23] >= 0)
          {
            v16 = result;
          }

          else
          {
            v16 = *result;
          }

          v16[4] = v16[5];
          if (result[23] >= 0)
          {
            v17 = result;
          }

          else
          {
            v17 = *result;
          }

          v17[5] = v17[6];
          if (result[23] >= 0)
          {
            v18 = result;
          }

          else
          {
            v18 = *result;
          }

          v18[6] = v18[7];
          v15 = 7;
        }

        else
        {
          v15 = v7 + 4;
        }

        v19 = kCharsetToLowerTbl[v12];
        if (result[23] >= 0)
        {
          v20 = result;
        }

        else
        {
          v20 = *result;
        }

        v20[v15] = v19;
        ++v7;
      }

      v6 = v10;
      v21 = *(a1 + 23);
      v9 = v21 >> 63;
      if ((v21 & 0x80000000) != 0)
      {
        v21 = a1[1];
      }
    }

    while (v21 > v10++);
  }

  return result;
}

_BYTE *MakeChar4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  memset(a2, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a2, "____");
  v4 = *(a1 + 23);
  v5 = *(a1 + 23);
  v6 = v4 < 0;
  v7 = a1[1];
  if (v4 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      if (v6)
      {
        v12 = *a1;
      }

      else
      {
        v12 = a1;
      }

      v13 = *(v12 + v9);
      if (kIsDigit[v13] | kIsAlpha[v13])
      {
        v14 = v10 <= 3;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        if (result[23] >= 0)
        {
          v15 = result;
        }

        else
        {
          v15 = *result;
        }

        v15[v10++] = kCharsetToLowerTbl[v13];
        v5 = *(a1 + 23);
        v7 = a1[1];
      }

      v9 = v11;
      v6 = (v5 & 0x80u) != 0;
      if ((v5 & 0x80u) == 0)
      {
        v16 = v5;
      }

      else
      {
        v16 = v7;
      }

      v14 = v16 > v11++;
    }

    while (v14);
  }

  return result;
}

_BYTE *MakeChar8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  memset(a2, 170, 24);
  result = std::string::basic_string[abi:ne200100]<0>(a2, "________");
  v4 = *(a1 + 23);
  v5 = *(a1 + 23);
  v6 = v4 < 0;
  v7 = a1[1];
  if (v4 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 1;
    do
    {
      if (v6)
      {
        v12 = *a1;
      }

      else
      {
        v12 = a1;
      }

      v13 = *(v12 + v9);
      if (kIsDigit[v13] | kIsAlpha[v13])
      {
        v14 = v10 <= 7;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        if (result[23] >= 0)
        {
          v15 = result;
        }

        else
        {
          v15 = *result;
        }

        v15[v10++] = kCharsetToLowerTbl[v13];
        v5 = *(a1 + 23);
        v7 = a1[1];
      }

      v9 = v11;
      v6 = (v5 & 0x80u) != 0;
      if ((v5 & 0x80u) == 0)
      {
        v16 = v5;
      }

      else
      {
        v16 = v7;
      }

      v14 = v16 > v11++;
    }

    while (v14);
  }

  return result;
}

uint64_t CompactEncDet_detectEncoding(int8x8_t *a1, int a2, char *a3, int a4, int a5, unsigned int a6, _BYTE *a7)
{
  if (a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  v9 = 0;
  return CompactEncDet::DetectEncoding(a1, a2, 0, a3, 0, a5, a6, v7, 0, &v9, a7);
}

uint64_t CompactEncDet_EncodingFromName(uint64_t a1, _BYTE *a2)
{
  v4 = -1431655766;
  result = EncodingFromName(a1, &v4);
  *a2 = v4;
  return result;
}

uint64_t CompactEncDet_LanguageFromCode(uint64_t a1, _BYTE *a2)
{
  v4 = -1431655766;
  result = LanguageFromCode(a1, &v4);
  *a2 = v4;
  return result;
}

unint64_t IsEncEncCompatible(unsigned int a1, unsigned int a2)
{
  LOBYTE(v2) = 0;
  if (a1 <= 0x4A && a2 <= 0x4A)
  {
    LOBYTE(v2) = 1;
    if (a2 != a1 && a2 != 23)
    {
      if (a1 == 23)
      {
        LOBYTE(v2) = 0;
      }

      else if (a1 == 24)
      {
        v2 = 0x20EEFFFFFDEFFFuLL >> a2;
        if (a2 >= 0x36)
        {
          LOBYTE(v2) = 0;
        }
      }

      else if ((a1 || a2 != 27) && (a1 != 7 || a2 != 38) && (a1 != 38 || a2 != 7) && (a1 != 8 || a2 != 31) && (a1 != 33 || a2 != 34) && (a1 != 11 || a2 != 21) && (a1 != 13 || a2 != 20))
      {
        LOBYTE(v2) = a1 == 14 && a2 - 45 < 2 || a1 == 15 && a2 == 18 || a1 == 15 && a2 == 19 || (a2 != 15 ? (v3 = a2 == 19) : (v3 = 1), !v3 ? (v4 = 0) : (v4 = 1), a1 == 18 && (v4 & 1) != 0) || (a2 == 15 || a2 == 18) && a1 == 19;
      }
    }
  }

  return v2 & 1;
}

uint64_t IsIso2022Encoding(int a1)
{
  v1 = ((a1 - 12) < 0x3F) & (0x6000000000000001uLL >> (a1 - 12));
  if (a1 == 44)
  {
    v1 = 1;
  }

  if (a1 == 48)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

const char *EncodingName(unsigned int a1)
{
  if (a1 <= 0x4A)
  {
    return kEncodingInfoTable[3 * a1];
  }

  else
  {
    return "invalid_encoding";
  }
}

const char *MimeEncodingName(unsigned int a1)
{
  if (a1 <= 0x4A)
  {
    return kEncodingInfoTable[3 * a1 + 1];
  }

  else
  {
    return "";
  }
}

uint64_t EncodingFromName(uint64_t result, _DWORD *a2)
{
  *a2 = 23;
  if (result)
  {
    v3 = result;
    v4 = 0;
    for (i = kEncodingInfoTable; strcasecmp(v3, *i); i += 3)
    {
      if (++v4 == 75)
      {
        return 0;
      }
    }

    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t EncodingNameAliasToEncoding(char *a1)
{
  v3 = a1;
  if (!a1)
  {
    return 23;
  }

  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    EncodingNameAliasToEncoding();
  }

  if (GetEncodingMap(void)::onceToken != -1)
  {
    EncodingNameAliasToEncoding();
  }

  v1 = std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::find<char const*>(&xmmword_1EB6E7F28, &v3);
  if (v1)
  {
    return *(v1 + 6);
  }

  else
  {
    return 23;
  }
}

uint64_t PreferredWebOutputEncoding(unsigned int a1)
{
  if (a1 > 0x4A)
  {
    return 22;
  }

  else
  {
    return LODWORD(kEncodingInfoTable[3 * a1 + 2]);
  }
}

uint64_t *___ZL14GetEncodingMapv_block_invoke()
{
  v0 = 0;
  v1 = kEncodingInfoTable;
  do
  {
    v2 = *v1;
    v1 += 3;
    v6 = v2;
    v7 = &v6;
    *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = v0++;
  }

  while (v0 != 75);
  v3 = 0;
  v4 = &off_1E7AB53F0;
  do
  {
    v6 = *v4;
    if (!std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::find<char const*>(&xmmword_1EB6E7F28, &v6))
    {
      v7 = &v6;
      *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = v3;
    }

    ++v3;
    v4 += 3;
  }

  while (v3 != 75);
  v6 = "5601";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 16;
  v6 = "646";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 24;
  v6 = "852";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 39;
  v6 = "866";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 42;
  v6 = "8859-1";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "ansi-1251";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 26;
  v6 = "ansi_x3.4-1968";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 24;
  v6 = "arabic";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 5;
  v6 = "ascii";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "ascii-7-bit";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 24;
  v6 = "asmo-708";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 5;
  v6 = "bhaskar";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 55;
  v6 = "big5";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 13;
  v6 = "big5-cp950";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 20;
  v6 = "big5-hkscs";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 47;
  v6 = "chinese";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 14;
  v6 = "cns";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 19;
  v6 = "cns11643";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 19;
  v6 = "cp1250";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 29;
  v6 = "cp1251";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 26;
  v6 = "cp1252";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 27;
  v6 = "cp1253";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 41;
  v6 = "cp1254";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 31;
  v6 = "cp1255";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 36;
  v6 = "cp1256";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 35;
  v6 = "cp1257";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 32;
  v6 = "cp819";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "cp852";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 39;
  v6 = "cp866";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 42;
  v6 = "cp-866";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 42;
  v6 = "cp874";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 34;
  v6 = "cp932";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 21;
  v6 = "cp950";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 20;
  v6 = "csbig5";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 13;
  v6 = "cseucjpkdfmtjapanese";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 10;
  v6 = "cseuckr";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 16;
  v6 = "csgb2312";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 14;
  v6 = "csibm852";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 39;
  v6 = "csibm866";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 42;
  v6 = "csiso2022jp";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 12;
  v6 = "csiso2022kr";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 44;
  v6 = "csiso58gb231280";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 14;
  v6 = "csiso88598i";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 37;
  v6 = "csisolatin1";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "csisolatin2";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 1;
  v6 = "csisolatin3";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 2;
  v6 = "csisolatin4";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 3;
  v6 = "csisolatin5";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 8;
  v6 = "csisolatin6";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 9;
  v6 = "csisolatinarabic";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 5;
  v6 = "csisolatincyrillic";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 4;
  v6 = "csisolatingreek";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 6;
  v6 = "csisolatinhebrew";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 7;
  v6 = "csksc56011987";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 16;
  v6 = "csmacintosh";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 53;
  v6 = "csn-369103";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 40;
  v6 = "csshiftjis";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 11;
  v6 = "csunicode";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 57;
  v6 = "csunicode11";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 57;
  v6 = "csunicode11utf7";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 54;
  v6 = "csunicodeascii";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 57;
  v6 = "csunicodelatin1";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 57;
  v6 = "cyrillic";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 4;
  v6 = "ecma-114";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 5;
  v6 = "ecma-118";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 6;
  v6 = "elot_928";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 6;
  v6 = "euc";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 18;
  v6 = "euc-cn";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 15;
  v6 = "euc-dec";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 18;
  v6 = "euc-jp";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 10;
  v6 = "euc-kr";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 16;
  v6 = "eucgb2312_cn";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 14;
  v6 = "gb";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 14;
  v6 = "gb18030";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 46;
  v6 = "gb2132";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 14;
  v6 = "gb2312";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 14;
  v6 = "gb_2312-80";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 14;
  v6 = "gbk";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 45;
  v6 = "greek";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 6;
  v6 = "greek8";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 6;
  v6 = "hebrew";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 7;
  v6 = "htchanakya";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 56;
  v6 = "hz-gb-2312";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 62;
  v6 = "ibm819";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "ibm852";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 39;
  v6 = "ibm874";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 34;
  v6 = "iso-10646";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 57;
  v6 = "iso-10646-j-1";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 57;
  v6 = "iso-10646-ucs-2";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 17;
  v6 = "iso-10646-ucs-4";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 59;
  v6 = "iso-10646-ucs-basic";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 57;
  v6 = "iso-10646-unicode-latin1";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 57;
  v6 = "iso-2022-cn";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 48;
  v6 = "iso-2022-jp";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 12;
  v6 = "iso-2022-kr";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 44;
  v6 = "iso-8559-1";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "iso-874";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 34;
  v6 = "iso-8858-1";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "iso-8859-0";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 30;
  v6 = "iso-8859-1";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "iso-8859-10";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 9;
  v6 = "iso-8859-11";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 33;
  v6 = "iso-8859-13";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 43;
  v6 = "iso-8859-15";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 30;
  v6 = "iso-8859-2";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 1;
  v6 = "iso-8859-3";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 2;
  v6 = "iso-8859-4";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 3;
  v6 = "iso-8859-5";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 4;
  v6 = "iso-8859-6";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 5;
  v6 = "iso-8859-7";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 6;
  v6 = "iso-8859-8";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 7;
  v6 = "iso-8859-8-i";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 37;
  v6 = "iso-8859-9";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 8;
  v6 = "iso-9959-1";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "iso-ir-100";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "iso-ir-101";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 1;
  v6 = "iso-ir-109";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 2;
  v6 = "iso-ir-110";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 3;
  v6 = "iso-ir-126";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 6;
  v6 = "iso-ir-127";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 5;
  v6 = "iso-ir-138";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 7;
  v6 = "iso-ir-144";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 4;
  v6 = "iso-ir-148";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 8;
  v6 = "iso-ir-149";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 16;
  v6 = "iso-ir-157";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 9;
  v6 = "iso-ir-58";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 14;
  v6 = "iso-latin-1";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "iso_2022-cn";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 48;
  v6 = "iso_2022-kr";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 44;
  v6 = "iso_8859-1";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "iso_8859-10:1992";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 9;
  v6 = "iso_8859-11";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 33;
  v6 = "iso_8859-13";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 43;
  v6 = "iso_8859-15";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 30;
  v6 = "iso_8859-1:1987";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "iso_8859-2";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 1;
  v6 = "iso_8859-2:1987";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 1;
  v6 = "iso_8859-3";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 2;
  v6 = "iso_8859-3:1988";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 2;
  v6 = "iso_8859-4";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 3;
  v6 = "iso_8859-4:1988";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 3;
  v6 = "iso_8859-5";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 4;
  v6 = "iso_8859-5:1988";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 4;
  v6 = "iso_8859-6";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 5;
  v6 = "iso_8859-6:1987";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 5;
  v6 = "iso_8859-7";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 6;
  v6 = "iso_8859-7:1987";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 6;
  v6 = "iso_8859-8";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 7;
  v6 = "iso_8859-8:1988:";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 7;
  v6 = "iso_8859-9";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 8;
  v6 = "iso_8859-9:1989";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 8;
  v6 = "jagran";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 52;
  v6 = "jis";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 12;
  v6 = "koi8-cs";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 40;
  v6 = "koi8-r";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 25;
  v6 = "koi8-ru";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 28;
  v6 = "koi8-u";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 28;
  v6 = "koi8r";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 25;
  v6 = "koi8u";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 28;
  v6 = "korean";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 16;
  v6 = "ks-c-5601";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 16;
  v6 = "ks-c-5601-1987";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 16;
  v6 = "ks_c_5601-1989";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 16;
  v6 = "ksc";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 16;
  v6 = "l1";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "l2";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 1;
  v6 = "l3";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 2;
  v6 = "l4";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 3;
  v6 = "l5";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 8;
  v6 = "l6";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 9;
  v6 = "latin-1";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "latin1";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "latin2";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 1;
  v6 = "latin3";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 2;
  v6 = "latin4";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 3;
  v6 = "latin5";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 8;
  v6 = "latin6";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 9;
  v6 = "mac";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 53;
  v6 = "macintosh";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 53;
  v6 = "macintosh-roman";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 53;
  v6 = "ms932";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 21;
  v6 = "ms_kanji";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 21;
  v6 = "shift-jis";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 11;
  v6 = "shift_jis";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 11;
  v6 = "sjis";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 11;
  v6 = "sjs";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 11;
  v6 = "sun_eu_greek";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 6;
  v6 = "tab";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 51;
  v6 = "tam";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 50;
  v6 = "tis-620";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 33;
  v6 = "tscii";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 49;
  v6 = "un";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 23;
  v6 = "unicode";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 17;
  v6 = "unicode-1-1-utf-7";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 54;
  v6 = "unicode-1-1-utf-8";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 22;
  v6 = "unicode-2-0-utf-7";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 54;
  v6 = "unknown";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 23;
  v6 = "us";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "us-ascii";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 0;
  v6 = "utf-16be";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 57;
  v6 = "utf-16le";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 58;
  v6 = "utf-32be";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 59;
  v6 = "utf-32le";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 60;
  v6 = "utf-7";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 54;
  v6 = "utf-8";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 22;
  v6 = "utf7";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 54;
  v6 = "utf8";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 22;
  v6 = "visual";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 38;
  v6 = "win-1250";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 29;
  v6 = "win-1251";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 26;
  v6 = "window-874";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 34;
  v6 = "windows-1250";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 29;
  v6 = "windows-1251";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 26;
  v6 = "windows-1252";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 27;
  v6 = "windows-1253";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 41;
  v6 = "windows-1254";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 31;
  v6 = "windows-1255";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 36;
  v6 = "windows-1256";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 35;
  v6 = "windows-1257";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 32;
  v6 = "windows-31j";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 21;
  v6 = "windows-874";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 34;
  v6 = "windows-936";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 45;
  v6 = "x-big5";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 13;
  v6 = "x-binaryenc";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 61;
  v6 = "x-cp1250";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 29;
  v6 = "x-cp1251";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 26;
  v6 = "x-cp1252";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 27;
  v6 = "x-cp1253";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 41;
  v6 = "x-cp1254";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 31;
  v6 = "x-cp1255";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 36;
  v6 = "x-cp1256";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 35;
  v6 = "x-cp1257";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 32;
  v6 = "x-euc-jp";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 10;
  v6 = "x-euc-tw";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 19;
  v6 = "x-gbk";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 45;
  v6 = "x-iso-10646-ucs-2-be";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 57;
  v6 = "x-iso-10646-ucs-2-le";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 58;
  v6 = "x-iso-10646-ucs-4-be";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 59;
  v6 = "x-iso-10646-ucs-4-le";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 60;
  v6 = "x-jis";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 12;
  v6 = "x-mac-roman";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 53;
  v6 = "x-shift_jis";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 11;
  v6 = "x-sjis";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 11;
  v6 = "x-unicode-2-0-utf-7";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 54;
  v6 = "x-utf8utf8";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 63;
  v6 = "x-x-big5";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 13;
  v6 = "zh_cn.euc";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 14;
  v6 = "zh_tw-big5";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 13;
  v6 = "zh_tw-euc";
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(&xmmword_1EB6E7F28, &v6) + 6) = 19;
  v7 = "";
  return std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__erase_unique<char const*>(&xmmword_1EB6E7F28, &v7);
}

uint64_t std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<char const*,Encoding>,std::__unordered_map_hasher<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseHash,CStringAlnumCaseEqual,true>,std::__unordered_map_equal<char const*,std::__hash_value_type<char const*,Encoding>,CStringAlnumCaseEqual,CStringAlnumCaseHash,true>,std::allocator<std::__hash_value_type<char const*,Encoding>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(void *a1, char **a2)
{
  v4 = CStringAlnumCaseHash::operator()(a1, *a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!CStringAlnumCaseEqual::operator()(a1, v11[2], *a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t CStringAlnumCaseHash::operator()(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = 0;
    v4 = a2 + 1;
    v5 = MEMORY[0x1E69E9830];
    while ((v2 & 0x80) == 0)
    {
      if ((*(v5 + 4 * v2 + 60) & 0x500) != 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      v6 = *v4++;
      v2 = v6;
      if (!v6)
      {
        return v3;
      }
    }

    if (!__maskrune(v2, 0x500uLL))
    {
      goto LABEL_6;
    }

LABEL_5:
    v3 = 5 * v3 + __tolower(*(v4 - 1));
    goto LABEL_6;
  }

  return 0;
}

BOOL CStringAlnumCaseEqual::operator()(uint64_t a1, char *a2, char *a3)
{
  v5 = MEMORY[0x1E69E9830];
  do
  {
    while (1)
    {
      v6 = *a2++;
      if ((v6 & 0x80000000) != 0)
      {
        if (__maskrune(v6, 0x500uLL))
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if ((*(v5 + 4 * v6 + 60) & 0x500) != 0)
      {
        break;
      }

LABEL_6:
      if (!*(a2 - 1))
      {
        goto LABEL_7;
      }
    }

    do
    {
LABEL_7:
      v7 = *a3++;
      if ((v7 & 0x80000000) != 0)
      {
        if (__maskrune(v7, 0x500uLL))
        {
          break;
        }
      }

      else if ((*(v5 + 4 * v7 + 60) & 0x500) != 0)
      {
        break;
      }
    }

    while (*(a3 - 1));
    v8 = __tolower(*(a2 - 1));
    v9 = __tolower(*(a3 - 1));
  }

  while (v8 == v9 && *(a2 - 1));
  return v8 == v9;
}