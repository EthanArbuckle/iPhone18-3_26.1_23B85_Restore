uint64_t sub_1C6D218E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v124 = a7;
  v125 = a3;
  v127 = a5;
  v128 = a6;
  v126 = a4;
  sub_1C6D265B8(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v129 = &v124 - v11;
  v12 = sub_1C6D76F90();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6D75F50();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = sub_1C6D789A0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F40();
  sub_1C6D78980();
  v24 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  sub_1C6D26458(a1 + v24, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v25 = v23;
  v26 = a1;
  (*(v20 + 32))(a1 + v24, v25, v19);
  (*(v20 + 56))(a1 + v24, 0, 1, v19);
  (*(v13 + 16))(v16, a2, v12);
  v27 = (*(v13 + 88))(v16, v12);
  if (v27 == *MEMORY[0x1E69E3600] || v27 == *MEMORY[0x1E69E35E8])
  {
    return (*(v13 + 8))(v16, v12);
  }

  if (v27 == *MEMORY[0x1E69E3638])
  {
    (*(v13 + 96))(v16, v12);
    v30 = *v16;
    v29 = *(v16 + 1);
    v31 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted();
    MEMORY[0x1EEE9AC00](v31);
    *(&v124 - 2) = v30;
    *(&v124 - 1) = v29;
    sub_1C6D2669C(&qword_1EC1D7AE8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
    v32 = v129;
    sub_1C6D78C30();

    v33 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    return sub_1C6D2661C(v32, v26, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  if (v27 == *MEMORY[0x1E69E3668])
  {
    (*(v13 + 96))(v16, v12);
    v35 = *v16;
    v34 = *(v16 + 1);
    v36 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted();
    MEMORY[0x1EEE9AC00](v36);
    *(&v124 - 2) = v35;
    *(&v124 - 1) = v34;
    sub_1C6D2669C(&qword_1EC1D83D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    v32 = v129;
    sub_1C6D78C30();

    v33 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
    goto LABEL_18;
  }

  if (v27 == *MEMORY[0x1E69E3650])
  {
    (*(v13 + 96))(v16, v12);
    v38 = *v16;
    v37 = *(v16 + 1);
    v39 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed();
    MEMORY[0x1EEE9AC00](v39);
    *(&v124 - 2) = v38;
    *(&v124 - 1) = v37;
    sub_1C6D2669C(&unk_1EC1D9940, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    v32 = v129;
    sub_1C6D78C30();

    v33 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
    goto LABEL_18;
  }

  if (v27 == *MEMORY[0x1E69E3688])
  {
    (*(v13 + 96))(v16, v12);
    v41 = *v16;
    v40 = *(v16 + 1);
    v42 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed();
    MEMORY[0x1EEE9AC00](v42);
    *(&v124 - 2) = v41;
    *(&v124 - 1) = v40;
    sub_1C6D2669C(&qword_1EC1D81D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    v32 = v129;
    sub_1C6D78C30();

    v33 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
    goto LABEL_18;
  }

  if (v27 == *MEMORY[0x1E69E3658])
  {
    (*(v13 + 96))(v16, v12);
    v44 = *v16;
    v43 = *(v16 + 1);
    v45 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore();
    MEMORY[0x1EEE9AC00](v45);
    *(&v124 - 2) = v44;
    *(&v124 - 1) = v43;
    sub_1C6D2669C(&qword_1EC1D7208, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    v32 = v129;
    sub_1C6D78C30();

    v33 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
    goto LABEL_18;
  }

  if (v27 == *MEMORY[0x1E69E3680])
  {
    (*(v13 + 96))(v16, v12);
    v47 = *v16;
    v46 = *(v16 + 1);
    v48 = *(v16 + 2);
    v49 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
    MEMORY[0x1EEE9AC00](v49);
    *(&v124 - 4) = v47;
    *(&v124 - 3) = v46;
    *(&v124 - 2) = v48;
    sub_1C6D2669C(&qword_1EDCE4AC0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    v32 = v129;
    sub_1C6D78C30();

    v33 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
    goto LABEL_18;
  }

  if (v27 == *MEMORY[0x1E69E3610])
  {
    (*(v13 + 96))(v16, v12);
    v51 = *v16;
    v50 = *(v16 + 1);
    v52 = *(v16 + 2);
    v53 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
    MEMORY[0x1EEE9AC00](v53);
    *(&v124 - 4) = v51;
    *(&v124 - 3) = v50;
    *(&v124 - 2) = v52;
    sub_1C6D2669C(&qword_1EC1D83F0, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    v32 = v129;
    sub_1C6D78C30();

    v33 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
    goto LABEL_18;
  }

  if (v27 == *MEMORY[0x1E69E35F8])
  {
    (*(v13 + 96))(v16, v12);
    v54 = *(v16 + 6);
    sub_1C6D23D48(v16, v130);
    v55 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
    MEMORY[0x1EEE9AC00](v55);
    v56 = v125;
    v57 = v126;
    *(&v124 - 6) = v130;
    *(&v124 - 5) = v56;
    v59 = v127;
    v58 = v128;
    *(&v124 - 4) = v57;
    *(&v124 - 3) = v59;
    *(&v124 - 2) = v58;
    *(&v124 - 1) = v54;
    sub_1C6D2669C(&qword_1EDCE4B90, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    v60 = v129;
    sub_1C6D78C30();
    v61 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3628])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v130);
    v62 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
    MEMORY[0x1EEE9AC00](v62);
    v63 = v125;
    v64 = v126;
    *(&v124 - 6) = v130;
    *(&v124 - 5) = v63;
    v66 = v127;
    v65 = v128;
    *(&v124 - 4) = v64;
    *(&v124 - 3) = v66;
    *(&v124 - 2) = v65;
    sub_1C6D2669C(&unk_1EDCE4358, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    v60 = v129;
    sub_1C6D78C30();
    v61 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E35F0])
  {
    (*(v13 + 96))(v16, v12);
    v67 = *(v16 + 6);
    sub_1C6D23D48(v16, v130);
    v68 = sub_1C6D233D4(v124, v130);
    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
    MEMORY[0x1EEE9AC00](v69);
    v70 = v125;
    v71 = v126;
    *(&v124 - 8) = v130;
    *(&v124 - 7) = v70;
    v73 = v127;
    v72 = v128;
    *(&v124 - 6) = v71;
    *(&v124 - 5) = v73;
    *(&v124 - 4) = v72;
    *(&v124 - 3) = v67;
    *(&v124 - 2) = v68;
    sub_1C6D2669C(&qword_1EDCE4C60, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    v60 = v129;
    sub_1C6D78C30();

    v61 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3630])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v130);
    v74 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked();
    MEMORY[0x1EEE9AC00](v74);
    v75 = v125;
    v76 = v126;
    *(&v124 - 6) = v130;
    *(&v124 - 5) = v75;
    v78 = v127;
    v77 = v128;
    *(&v124 - 4) = v76;
    *(&v124 - 3) = v78;
    *(&v124 - 2) = v77;
    sub_1C6D2669C(&qword_1EC1D7F30, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    v60 = v129;
    sub_1C6D78C30();
    v61 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3660])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v130);
    v79 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked();
    MEMORY[0x1EEE9AC00](v79);
    v80 = v125;
    v81 = v126;
    *(&v124 - 6) = v130;
    *(&v124 - 5) = v80;
    v83 = v127;
    v82 = v128;
    *(&v124 - 4) = v81;
    *(&v124 - 3) = v83;
    *(&v124 - 2) = v82;
    sub_1C6D2669C(&qword_1EC1D69D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    v60 = v129;
    sub_1C6D78C30();
    v61 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3670])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v130);
    v84 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked();
    MEMORY[0x1EEE9AC00](v84);
    v85 = v125;
    v86 = v126;
    *(&v124 - 6) = v130;
    *(&v124 - 5) = v85;
    v88 = v127;
    v87 = v128;
    *(&v124 - 4) = v86;
    *(&v124 - 3) = v88;
    *(&v124 - 2) = v87;
    sub_1C6D2669C(&qword_1EC1D83C0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    v60 = v129;
    sub_1C6D78C30();
    v61 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3690])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v130);
    v89 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked();
    MEMORY[0x1EEE9AC00](v89);
    v90 = v125;
    v91 = v126;
    *(&v124 - 6) = v130;
    *(&v124 - 5) = v90;
    v93 = v127;
    v92 = v128;
    *(&v124 - 4) = v91;
    *(&v124 - 3) = v93;
    *(&v124 - 2) = v92;
    sub_1C6D2669C(&qword_1EC1D83E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    v60 = v129;
    sub_1C6D78C30();
    v61 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3648])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v130);
    v94 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
    MEMORY[0x1EEE9AC00](v94);
    v95 = v125;
    v96 = v126;
    *(&v124 - 6) = v130;
    *(&v124 - 5) = v95;
    v98 = v127;
    v97 = v128;
    *(&v124 - 4) = v96;
    *(&v124 - 3) = v98;
    *(&v124 - 2) = v97;
    sub_1C6D2669C(&qword_1EC1D83B8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
    v60 = v129;
    sub_1C6D78C30();
    v61 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3640])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v130);
    v99 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved();
    MEMORY[0x1EEE9AC00](v99);
    v100 = v125;
    v101 = v126;
    *(&v124 - 6) = v130;
    *(&v124 - 5) = v100;
    v103 = v127;
    v102 = v128;
    *(&v124 - 4) = v101;
    *(&v124 - 3) = v103;
    *(&v124 - 2) = v102;
    sub_1C6D2669C(&qword_1EC1D83C8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    v60 = v129;
    sub_1C6D78C30();
    v61 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3678])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v130);
    v104 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved();
    MEMORY[0x1EEE9AC00](v104);
    v105 = v125;
    v106 = v126;
    *(&v124 - 6) = v130;
    *(&v124 - 5) = v105;
    v108 = v127;
    v107 = v128;
    *(&v124 - 4) = v106;
    *(&v124 - 3) = v108;
    *(&v124 - 2) = v107;
    sub_1C6D2669C(&qword_1EC1D7058, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    v60 = v129;
    sub_1C6D78C30();
    v61 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3608])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v130);
    v109 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited();
    MEMORY[0x1EEE9AC00](v109);
    v110 = v125;
    v111 = v126;
    *(&v124 - 6) = v130;
    *(&v124 - 5) = v110;
    v113 = v127;
    v112 = v128;
    *(&v124 - 4) = v111;
    *(&v124 - 3) = v113;
    *(&v124 - 2) = v112;
    sub_1C6D2669C(&qword_1EC1D83D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    v60 = v129;
    sub_1C6D78C30();
    v61 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3620])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v130);
    v114 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened();
    MEMORY[0x1EEE9AC00](v114);
    v115 = v125;
    v116 = v126;
    *(&v124 - 6) = v130;
    *(&v124 - 5) = v115;
    v118 = v127;
    v117 = v128;
    *(&v124 - 4) = v116;
    *(&v124 - 3) = v118;
    *(&v124 - 2) = v117;
    sub_1C6D2669C(&qword_1EC1D7A88, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
    v60 = v129;
    sub_1C6D78C30();
    v61 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else
  {
    if (v27 != *MEMORY[0x1E69E3618])
    {
      return (*(v13 + 8))(v16, v12);
    }

    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v130);
    v119 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished();
    MEMORY[0x1EEE9AC00](v119);
    v120 = v125;
    v121 = v126;
    *(&v124 - 6) = v130;
    *(&v124 - 5) = v120;
    v123 = v127;
    v122 = v128;
    *(&v124 - 4) = v121;
    *(&v124 - 3) = v123;
    *(&v124 - 2) = v122;
    sub_1C6D2669C(&qword_1EC1D83E0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    v60 = v129;
    sub_1C6D78C30();
    v61 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  swift_storeEnumTagMultiPayload();
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  sub_1C6D2661C(v60, v26, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  return __swift_destroy_boxed_opaque_existential_1(v130);
}

uint64_t sub_1C6D23110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v26 = a5;
  v27 = a6;
  v34 = sub_1C6D78A00();
  v11 = *(v34 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = v26;
  v33 = v27;
  sub_1C6D2669C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78C30();
  v20 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v21 = *(v20 + 20);
  sub_1C6D26458(a1 + v21, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D266E4(v19, a1 + v21, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v22 = (*(v16 + 56))(a1 + v21, 0, 1, v15);
  MEMORY[0x1CCA54E80](v22, v28 / 1000.0);
  v23 = *(v20 + 24);
  sub_1C6D26458(a1 + v23, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v24 = v34;
  (*(v11 + 32))(a1 + v23, v14, v34);
  return (*(v11 + 56))(a1 + v23, 0, 1, v24);
}

uint64_t sub_1C6D233D4(uint64_t *a1, void *a2)
{
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v4 = sub_1C6D762C0();
  v6 = *a1;
  if (*(*a1 + 16))
  {
    v7 = sub_1C6B5DEA8(v4, v5);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v7);

      v11 = sub_1C6D762C0();
      sub_1C6BC1FD8(0, v11, v12);
      return v10;
    }
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C6D234AC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v39 = a8;
  v30 = a5;
  v31 = a6;
  v33 = sub_1C6D78A00();
  v12 = *(v33 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = v30;
  v38 = v31;
  sub_1C6D2669C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78C30();
  v21 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v22 = *(v21 + 24);
  sub_1C6D26458(&a1[v22], &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D266E4(v20, &a1[v22], type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v23 = (*(v17 + 56))(&a1[v22], 0, 1, v16);
  MEMORY[0x1CCA54E80](v23, v32 / 1000.0);
  v24 = *(v21 + 28);
  sub_1C6D26458(&a1[v24], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v25 = v33;
  (*(v12 + 32))(&a1[v24], v15, v33);
  (*(v12 + 56))(&a1[v24], 0, 1, v25);
  v26 = *a1;
  v27 = v39;

  *a1 = v27;
  return result;
}

uint64_t sub_1C6D23790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  sub_1C6D2669C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78C30();
  v17 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared() + 24);
  sub_1C6D26458(a1 + v17, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D266E4(v16, a1 + v17, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return (*(v13 + 56))(a1 + v17, 0, 1, v12);
}

uint64_t sub_1C6D2394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v22 = a8;
  v21[0] = a7;
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = a4;
  v21[7] = a5;
  v21[8] = a6;
  sub_1C6D2669C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78C30();
  v19 = *(v22(0) + 20);
  sub_1C6D26458(a1 + v19, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D266E4(v18, a1 + v19, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return (*(v15 + 56))(a1 + v19, 0, 1, v14);
}

uint64_t sub_1C6D23B00(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 1);

  *a1 = a2;
  *(a1 + 1) = a3;
  MEMORY[0x1CCA54E80](v16, a4 / 1000.0);
  v17 = *(a5(0) + 24);
  sub_1C6D26458(&a1[v17], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v11 + 32))(&a1[v17], v14, v10);
  return (*(v11 + 56))(&a1[v17], 0, 1, v10);
}

uint64_t sub_1C6D23CFC(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1[1];

  *a1 = v4;
  a1[1] = v3;
  return result;
}

_OWORD *sub_1C6D23D48(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1C6D240B0@<X0>(_BYTE *a1@<X8>)
{
  v2 = &a1[*(type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures() + 44)];
  sub_1C6D78A30();
  *a1 = sub_1C6D76280() & 1;
  a1[1] = sub_1C6D76290() & 1;
  a1[2] = sub_1C6D76210() & 1;
  a1[3] = sub_1C6D76260() & 1;
  a1[4] = sub_1C6D76270() & 1;
  a1[6] = sub_1C6D76240() & 1;
  result = sub_1C6D762A0();
  a1[5] = result & 1;
  return result;
}

uint64_t sub_1C6D24180(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v176 = a5;
  v182 = a6;
  v180 = a4;
  v175 = a3;
  v8 = MEMORY[0x1E69E6720];
  sub_1C6D265B8(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v168 = v166 - v11;
  v12 = sub_1C6D78A80();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v170 = v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v169 = v166 - v16;
  v181 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v167 = *(v181 - 8);
  v17 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v19 = v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v171 = v166 - v21;
  sub_1C6D265B8(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, v8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = v166 - v24;
  v26 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v173 = *(v26 - 8);
  v174 = v26;
  v27 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v172 = v166 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v30 = sub_1C6D76220();
  v32 = v31;
  v33 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v34 = *(a1 + v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(a1 + v33);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v37 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    v36 = sub_1C6D2BEA8(v36);
    *(a1 + v33) = v36;
  }

  swift_beginAccess();
  v40 = *(v36 + 4);
  *(v36 + 3) = v30;
  *(v36 + 4) = v32;

  v41 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v42 = sub_1C6D762B0();
  v43 = *(a1 + v33);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(a1 + v33);
  if ((v44 & 1) == 0)
  {
    v46 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    v45 = sub_1C6D2BEA8(v45);
    *(a1 + v33) = v45;
  }

  swift_beginAccess();
  v49 = *(v45 + 2);
  *(v45 + 2) = v42;

  v50 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v51 = sub_1C6D76250();
  v178 = v19;
  if ((v52 & 1) == 0)
  {
    v53 = v51;
    if (HIDWORD(v51))
    {
      if (qword_1EDCE9828 != -1)
      {
        swift_once();
      }

      v166[1] = qword_1EDCE9830;
      sub_1C6D79AA0();
      sub_1C6D265B8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1C6D7E630;
      *&v183 = v53;
      v55 = sub_1C6D7A0E0();
      v57 = v56;
      *(v54 + 56) = MEMORY[0x1E69E6158];
      *(v54 + 64) = sub_1C6B2064C();
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_1C6D78D30();
    }

    else
    {
      v58 = *(a1 + v33);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v60 = *(a1 + v33);
      if ((v59 & 1) == 0)
      {
        v61 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
        v62 = *(v61 + 48);
        v63 = *(v61 + 52);
        swift_allocObject();
        v60 = sub_1C6D2BEA8(v60);
        *(a1 + v33) = v60;
      }

      v64 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
      swift_beginAccess();
      *&v60[v64] = v53;
    }
  }

  v65 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v66 = sub_1C6D76230();
  if (v66)
  {
    v67 = v66;
  }

  else
  {
    v67 = MEMORY[0x1E69E7CC0];
  }

  v68 = *(a1 + v33);
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(a1 + v33);
  if ((v69 & 1) == 0)
  {
    v71 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v72 = *(v71 + 48);
    v73 = *(v71 + 52);
    swift_allocObject();
    v70 = sub_1C6D2BEA8(v70);
    *(a1 + v33) = v70;
  }

  v74 = v177;
  v75 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  v76 = *&v70[v75];
  *&v70[v75] = v67;

  v77 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v78 = v172;
  sub_1C6D240B0(v172);
  v79 = *(a1 + v33);
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *(a1 + v33);
  if ((v80 & 1) == 0)
  {
    v82 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    swift_allocObject();
    v81 = sub_1C6D2BEA8(v81);
    *(a1 + v33) = v81;
  }

  sub_1C6D266E4(v78, v25, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  (*(v173 + 56))(v25, 0, 1, v174);
  v85 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  sub_1C6D2661C(v25, &v81[v85], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  swift_endAccess();
  sub_1C6D2503C(a2, &v183);
  v86 = v183;
  v87 = BYTE8(v183);
  v88 = *(a1 + v33);
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *(a1 + v33);
  if ((v89 & 1) == 0)
  {
    v91 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v92 = *(v91 + 48);
    v93 = *(v91 + 52);
    swift_allocObject();
    v90 = sub_1C6D2BEA8(v90);
    *(a1 + v33) = v90;
  }

  v94 = v181;
  v95 = &v90[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed];
  swift_beginAccess();
  *v95 = v86;
  v95[8] = v87;
  sub_1C6D25424(a2, &v183);
  v96 = v183;
  v97 = BYTE8(v183);
  v98 = *(a1 + v33);
  v99 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *(a1 + v33);
  if ((v99 & 1) == 0)
  {
    v101 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v102 = *(v101 + 48);
    v103 = *(v101 + 52);
    swift_allocObject();
    v100 = sub_1C6D2BEA8(v100);
    *(a1 + v33) = v100;
  }

  v104 = &v100[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group];
  swift_beginAccess();
  *v104 = v96;
  v104[8] = v97;
  sub_1C6D25D8C(a2, &v183);
  v105 = v183;
  v106 = BYTE8(v183);
  v107 = *(a1 + v33);
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *(a1 + v33);
  if ((v108 & 1) == 0)
  {
    v110 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v111 = *(v110 + 48);
    v112 = *(v110 + 52);
    swift_allocObject();
    v109 = sub_1C6D2BEA8(v109);
    *(a1 + v33) = v109;
  }

  v113 = &v109[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction];
  swift_beginAccess();
  *v113 = v105;
  v113[8] = v106;
  v114 = v180;
  v179 = a1;
  if (v180 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v185 = 0;
  v183 = 0u;
  v184 = 0u;
  v115 = v175;
  sub_1C6BC372C(v175, v180);
  sub_1C6B1CD10(v115, v114);
  sub_1C6D78A70();
  sub_1C6D2669C(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v116 = v171;
  v117 = v74;
  sub_1C6D78BE0();
  if (!v74)
  {
    v123 = v179;
    v124 = *(v179 + v33);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1C6B75B88(v175, v114);
      v125 = *(v123 + v33);
    }

    else
    {
      v126 = *(v123 + v33);
      v127 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v128 = *(v127 + 48);
      v129 = *(v127 + 52);
      swift_allocObject();

      v125 = sub_1C6D2BEA8(v130);
      sub_1C6B75B88(v175, v114);
      v116 = v171;

      *(v123 + v33) = v125;
    }

    v131 = v168;
    sub_1C6D266E4(v116, v168, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v167 + 56))(v131, 0, 1, v94);
    v132 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
    swift_beginAccess();
    sub_1C6D2661C(v131, &v125[v132], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_endAccess();
LABEL_35:
    v122 = v182;
    goto LABEL_36;
  }

  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  sub_1C6D79AA0();
  sub_1C6D265B8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1C6D7E630;
  swift_getErrorValue();
  v119 = sub_1C6D7A1D0();
  v121 = v120;
  *(v118 + 56) = MEMORY[0x1E69E6158];
  *(v118 + 64) = sub_1C6B2064C();
  *(v118 + 32) = v119;
  *(v118 + 40) = v121;
  sub_1C6D78D30();
  sub_1C6B75B88(v175, v180);

  v74 = 0;
  v94 = v181;
  v122 = v182;
LABEL_36:
  v133 = v178;
  if (v122 >> 60 == 15)
  {
    v134 = v179;
  }

  else
  {
    v185 = 0;
    v183 = 0u;
    v184 = 0u;
    v135 = v176;
    sub_1C6BC372C(v176, v122);
    sub_1C6B1CD10(v135, v122);
    sub_1C6D78A70();
    sub_1C6D2669C(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v136 = v74;
    sub_1C6D78BE0();
    if (v74)
    {
      v134 = v179;
      if (qword_1EDCE9828 != -1)
      {
        swift_once();
      }

      v181 = qword_1EDCE9830;
      sub_1C6D79AA0();
      sub_1C6D265B8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
      v137 = swift_allocObject();
      *(v137 + 16) = xmmword_1C6D7E630;
      swift_getErrorValue();
      v138 = sub_1C6D7A1D0();
      v140 = v139;
      *(v137 + 56) = MEMORY[0x1E69E6158];
      *(v137 + 64) = sub_1C6B2064C();
      *(v137 + 32) = v138;
      *(v137 + 40) = v140;
      sub_1C6D78D30();
      sub_1C6B75B88(v176, v182);
    }

    else
    {
      v134 = v179;
      v141 = *(v179 + v33);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_1C6B75B88(v176, v122);
        v142 = *(v134 + v33);
      }

      else
      {
        v143 = v122;
        v144 = *(v134 + v33);
        v145 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
        v146 = *(v145 + 48);
        v147 = *(v145 + 52);
        swift_allocObject();

        v142 = sub_1C6D2BEA8(v148);
        v149 = v143;
        v133 = v178;
        sub_1C6B75B88(v176, v149);

        *(v134 + v33) = v142;
      }

      v150 = v133;
      v151 = v168;
      sub_1C6D266E4(v150, v168, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      (*(v167 + 56))(v151, 0, 1, v94);
      v152 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
      swift_beginAccess();
      sub_1C6D2661C(v151, &v142[v152], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      swift_endAccess();
    }
  }

  v153 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_1C6D76350();
  if (v155)
  {
    v156 = result;
    v157 = v155;
    v158 = *(v134 + v33);
    v159 = swift_isUniquelyReferenced_nonNull_native();
    v160 = *(v134 + v33);
    if ((v159 & 1) == 0)
    {
      v161 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v162 = *(v161 + 48);
      v163 = *(v161 + 52);
      swift_allocObject();
      v160 = sub_1C6D2BEA8(v160);
      *(v134 + v33) = v160;
    }

    v164 = &v160[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
    swift_beginAccess();
    v165 = *(v164 + 1);
    *v164 = v156;
    *(v164 + 1) = v157;
  }

  return result;
}

uint64_t sub_1C6D2503C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6D77090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D76360();
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69E3780])
  {
    *a2 = 0;
LABEL_3:
    *(a2 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x1E69E3758])
  {
    *a2 = 1;
    *(a2 + 8) = 1;
  }

  else
  {
    if (result == *MEMORY[0x1E69E3788])
    {
      *a2 = 2;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3720])
    {
      *a2 = 3;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3728])
    {
      *a2 = 4;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3730])
    {
      *a2 = 5;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3770])
    {
      *a2 = 6;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3750])
    {
      *a2 = 7;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E36F8])
    {
      *a2 = 8;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3738])
    {
      *a2 = 9;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3740])
    {
      *a2 = 10;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3708])
    {
      *a2 = 11;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3710])
    {
      *a2 = 12;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3748])
    {
      *a2 = 13;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3778])
    {
      *a2 = 14;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3760])
    {
      *a2 = 15;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E36F0])
    {
      *a2 = 16;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3718])
    {
      *a2 = 17;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3768])
    {
      *a2 = 18;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3700])
    {
      *a2 = 19;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3790])
    {
      *a2 = 20;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E36E8])
    {
      *a2 = 21;
      goto LABEL_3;
    }

    *a2 = 0;
    *(a2 + 8) = 1;
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1C6D25424@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6D770A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D76370();
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69E39A0])
  {
    *a2 = 0;
  }

  else
  {
    if (result == *MEMORY[0x1E69E3988])
    {
      *a2 = 1;
      *(a2 + 8) = 1;
      return result;
    }

    if (result == *MEMORY[0x1E69E39D8])
    {
      v11 = 2;
    }

    else if (result == *MEMORY[0x1E69E3798])
    {
      v11 = 3;
    }

    else if (result == *MEMORY[0x1E69E3858])
    {
      v11 = 4;
    }

    else if (result == *MEMORY[0x1E69E39C8])
    {
      v11 = 5;
    }

    else if (result == *MEMORY[0x1E69E37E8])
    {
      v11 = 6;
    }

    else if (result == *MEMORY[0x1E69E3828])
    {
      v11 = 7;
    }

    else if (result == *MEMORY[0x1E69E3978])
    {
      v11 = 8;
    }

    else if (result == *MEMORY[0x1E69E3968])
    {
      v11 = 9;
    }

    else if (result == *MEMORY[0x1E69E38A0])
    {
      v11 = 10;
    }

    else if (result == *MEMORY[0x1E69E3940])
    {
      v11 = 11;
    }

    else if (result == *MEMORY[0x1E69E3910])
    {
      v11 = 12;
    }

    else if (result == *MEMORY[0x1E69E39C0])
    {
      v11 = 13;
    }

    else if (result == *MEMORY[0x1E69E39E8])
    {
      v11 = 14;
    }

    else if (result == *MEMORY[0x1E69E37A0])
    {
      v11 = 15;
    }

    else if (result == *MEMORY[0x1E69E3860])
    {
      v11 = 16;
    }

    else if (result == *MEMORY[0x1E69E37C8])
    {
      v11 = 17;
    }

    else if (result == *MEMORY[0x1E69E3920])
    {
      v11 = 18;
    }

    else if (result == *MEMORY[0x1E69E3808])
    {
      v11 = 19;
    }

    else if (result == *MEMORY[0x1E69E38C8])
    {
      v11 = 20;
    }

    else if (result == *MEMORY[0x1E69E3980])
    {
      v11 = 21;
    }

    else if (result == *MEMORY[0x1E69E37C0])
    {
      v11 = 22;
    }

    else if (result == *MEMORY[0x1E69E39B0])
    {
      v11 = 23;
    }

    else if (result == *MEMORY[0x1E69E3998])
    {
      v11 = 24;
    }

    else if (result == *MEMORY[0x1E69E3970])
    {
      v11 = 25;
    }

    else if (result == *MEMORY[0x1E69E38D0])
    {
      v11 = 26;
    }

    else if (result == *MEMORY[0x1E69E3800])
    {
      v11 = 27;
    }

    else if (result == *MEMORY[0x1E69E3880])
    {
      v11 = 28;
    }

    else if (result == *MEMORY[0x1E69E3918])
    {
      v11 = 29;
    }

    else if (result == *MEMORY[0x1E69E37D8])
    {
      v11 = 30;
    }

    else if (result == *MEMORY[0x1E69E37D0])
    {
      v11 = 31;
    }

    else if (result == *MEMORY[0x1E69E3928])
    {
      v11 = 32;
    }

    else if (result == *MEMORY[0x1E69E37B0])
    {
      v11 = 33;
    }

    else if (result == *MEMORY[0x1E69E39D0])
    {
      v11 = 34;
    }

    else if (result == *MEMORY[0x1E69E3838])
    {
      v11 = 35;
    }

    else if (result == *MEMORY[0x1E69E3960])
    {
      v11 = 36;
    }

    else if (result == *MEMORY[0x1E69E38A8])
    {
      v11 = 37;
    }

    else if (result == *MEMORY[0x1E69E3840])
    {
      v11 = 38;
    }

    else if (result == *MEMORY[0x1E69E38D8])
    {
      v11 = 39;
    }

    else if (result == *MEMORY[0x1E69E3930])
    {
      v11 = 40;
    }

    else if (result == *MEMORY[0x1E69E3990])
    {
      v11 = 41;
    }

    else if (result == *MEMORY[0x1E69E37A8])
    {
      v11 = 42;
    }

    else if (result == *MEMORY[0x1E69E39B8])
    {
      v11 = 43;
    }

    else if (result == *MEMORY[0x1E69E39A8])
    {
      v11 = 44;
    }

    else if (result == *MEMORY[0x1E69E3810])
    {
      v11 = 45;
    }

    else if (result == *MEMORY[0x1E69E38F0])
    {
      v11 = 46;
    }

    else if (result == *MEMORY[0x1E69E37F8])
    {
      v11 = 47;
    }

    else if (result == *MEMORY[0x1E69E3848])
    {
      v11 = 48;
    }

    else if (result == *MEMORY[0x1E69E3878])
    {
      v11 = 49;
    }

    else if (result == *MEMORY[0x1E69E3958])
    {
      v11 = 50;
    }

    else if (result == *MEMORY[0x1E69E3830])
    {
      v11 = 51;
    }

    else if (result == *MEMORY[0x1E69E3818])
    {
      v11 = 52;
    }

    else if (result == *MEMORY[0x1E69E3898])
    {
      v11 = 53;
    }

    else if (result == *MEMORY[0x1E69E38C0])
    {
      v11 = 54;
    }

    else if (result == *MEMORY[0x1E69E3868])
    {
      v11 = 55;
    }

    else if (result == *MEMORY[0x1E69E3900])
    {
      v11 = 56;
    }

    else if (result == *MEMORY[0x1E69E38B8])
    {
      v11 = 57;
    }

    else if (result == *MEMORY[0x1E69E38B0])
    {
      v11 = 58;
    }

    else if (result == *MEMORY[0x1E69E38E8])
    {
      v11 = 59;
    }

    else if (result == *MEMORY[0x1E69E3950])
    {
      v11 = 60;
    }

    else if (result == *MEMORY[0x1E69E3938])
    {
      v11 = 61;
    }

    else if (result == *MEMORY[0x1E69E39E0])
    {
      v11 = 62;
    }

    else if (result == *MEMORY[0x1E69E38F8])
    {
      v11 = 63;
    }

    else if (result == *MEMORY[0x1E69E37B8])
    {
      v11 = 64;
    }

    else if (result == *MEMORY[0x1E69E3850])
    {
      v11 = 65;
    }

    else if (result == *MEMORY[0x1E69E3948])
    {
      v11 = 66;
    }

    else if (result == *MEMORY[0x1E69E3888])
    {
      v11 = 67;
    }

    else if (result == *MEMORY[0x1E69E3870])
    {
      v11 = 68;
    }

    else if (result == *MEMORY[0x1E69E3908])
    {
      v11 = 69;
    }

    else if (result == *MEMORY[0x1E69E3820])
    {
      v11 = 70;
    }

    else if (result == *MEMORY[0x1E69E37E0])
    {
      v11 = 71;
    }

    else if (result == *MEMORY[0x1E69E37F0])
    {
      v11 = 72;
    }

    else if (result == *MEMORY[0x1E69E3890])
    {
      v11 = 73;
    }

    else
    {
      if (result != *MEMORY[0x1E69E38E0])
      {
        *a2 = 0;
        *(a2 + 8) = 1;
        return (*(v5 + 8))(v8, v4);
      }

      v11 = 74;
    }

    *a2 = v11;
  }

  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_1C6D25D8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6D76B90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D76340();
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69E3540])
  {
    *a2 = 0;
LABEL_3:
    *(a2 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x1E69E3558])
  {
    *a2 = 1;
    *(a2 + 8) = 1;
  }

  else
  {
    if (result == *MEMORY[0x1E69E3538])
    {
      *a2 = 2;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3500])
    {
      *a2 = 3;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3550])
    {
      *a2 = 4;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3548])
    {
      *a2 = 5;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3518])
    {
      *a2 = 6;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3530])
    {
      *a2 = 7;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3528])
    {
      *a2 = 8;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3510])
    {
      *a2 = 9;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3520])
    {
      *a2 = 10;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3508])
    {
      *a2 = 11;
      goto LABEL_3;
    }

    *a2 = 0;
    *(a2 + 8) = 1;
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1C6D26034(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v31 = a3;
  v32 = a4;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v35 = *(v45 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v19 = sub_1C6D762C0();
  v21 = v20;
  v22 = a1[1];

  *a1 = v19;
  a1[1] = v21;
  v36 = a2;
  v23 = v11;
  v37 = v31;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  sub_1C6D2669C(&unk_1EDCE3F90, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  sub_1C6D78C30();
  v24 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);
  sub_1C6D26458(a1 + v24, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D264F4(v17, a1 + v24);
  (*(v35 + 56))(a1 + v24, 0, 1, v45);
  sub_1C6D264F4(v17, v14);
  sub_1C6D266E4(v14, v11, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  sub_1C6D265B8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C6D7E630;
  v43 = 0;
  v44 = 0xE000000000000000;
  v26 = *&v11[*(v8 + 20)] + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
  swift_beginAccess();
  v27 = *(v26 + 8);
  v41 = *v26;
  v42 = v27;
  sub_1C6D79E60();
  v28 = v43;
  v29 = v44;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1C6B2064C();
  *(v25 + 32) = v28;
  *(v25 + 40) = v29;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  sub_1C6D26558(v17, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  return sub_1C6D26558(v23, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
}

uint64_t sub_1C6D26458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6D265B8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6D264F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6D26558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6D265B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6D2661C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6D265B8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6D2669C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6D266E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked();
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

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked()
{
  result = qword_1EDCE3D90;
  if (!qword_1EDCE3D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked() + 20);
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked() + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6D26A70@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked();
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

uint64_t sub_1C6D26C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked() + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleUndisliked.article.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked() + 20);
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

BOOL Com_Apple_News_Personalization_SessionEventArticleUndisliked.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked();
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleUndisliked.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked() + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6D271D0()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9730);
  __swift_project_value_buffer(v0, qword_1EC1D9730);
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

uint64_t static Com_Apple_News_Personalization_SessionEventArticleUndisliked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.decodeMessage<A>(decoder:)()
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
      sub_1C6D27470();
    }
  }

  return result;
}

uint64_t sub_1C6D27470()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked() + 20);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6D27EBC(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.traverse<A>(visitor:)()
{
  result = sub_1C6D2757C(v0);
  if (!v1)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6D2757C(uint64_t a1)
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
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked();
  sub_1C6B482A8(a1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B4833C(v5);
  }

  sub_1C6B483C8(v5, v10);
  sub_1C6D27EBC(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked();
  sub_1C6D27EBC(&qword_1EC1D9748, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D27858(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D27EBC(&qword_1EC1D9760, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D278D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D2797C(uint64_t a1)
{
  v2 = sub_1C6D27EBC(&qword_1EC1D83E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D279E8()
{
  sub_1C6D27EBC(&qword_1EC1D83E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B30_SessionEventArticleUndislikedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked() + 20);
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
      sub_1C6D27EBC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
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

uint64_t sub_1C6D27EBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.features.setter(uint64_t a1)
{
  v2 = v1;
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  v8 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_1C6D2BEA8(v11);
    *(v2 + v8) = v11;
  }

  sub_1C6BB7E24(a1, v7, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v15 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
  v16 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  sub_1C6D2C4B4(v7, &v11[v16], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  return swift_endAccess();
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.publisherID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1C6D2BEA8(v9);
    *(v3 + v6) = v9;
  }

  swift_beginAccess();
  v13 = *(v9 + 4);
  *(v9 + 3) = a1;
  *(v9 + 4) = a2;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.topicIds.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1C6D2BEA8(v7);
    *(v2 + v4) = v7;
  }

  swift_beginAccess();
  v11 = *(v7 + 2);
  *(v7 + 2) = a1;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.length.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1C6D2BEA8(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  result = swift_beginAccess();
  *&v7[v11] = a1;
  return result;
}

uint64_t sub_1C6D282D0(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20 - v8;
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v11 = *(v2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v13 = sub_1C6D2BEA8(v13);
    *(v4 + v10) = v13;
  }

  sub_1C6BB7E24(a1, v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  v18 = *a2;
  swift_beginAccess();
  sub_1C6D2C4B4(v9, &v13[v18], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return swift_endAccess();
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.adCategories.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1C6D2BEA8(v7);
    *(v2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  v12 = *&v7[v11];
  *&v7[v11] = a1;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.publisherID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  return v2;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.topicIds.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.adCategories.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v2 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.length.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v2 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1C6D28708@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = *(v2 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  sub_1C6BB7D34(v9 + v10, v8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_1C6BB7E24(v8, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a2 = xmmword_1C6D7F510;
  v13 = a2 + *(v11 + 20);
  sub_1C6D78A30();
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.features.getter@<X0>(_DWORD *a1@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v8 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  sub_1C6BB7D34(v7 + v8, v6, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v9 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C6BB7E24(v6, a1, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  *(a1 + 3) = 0;
  *a1 = 0;
  v11 = a1 + *(v9 + 44);
  sub_1C6D78A30();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v6, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  return result;
}

uint64_t sub_1C6D28A8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20)) + *a1;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a2 = *v4;
  *(a2 + 8) = v6;
  return result;
}

BOOL Com_Apple_News_Personalization_SessionArticleLegacyMetadata.hasGroupBackingTagID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID;
  swift_beginAccess();
  return *(v1 + 8) != 0;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.groupBackingTagID.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL sub_1C6D28C20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t (*a4)(void))
{
  sub_1C6BBB75C(0, a1, a2, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_1C6BB7D34(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_1C6BB7DB4(v12, a1, a2);
  return v16;
}

uint64_t sub_1C6D28D70(uint64_t *a1, void *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v8 = *(v2 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v10 = sub_1C6D2BEA8(v10);
    *(v4 + v7) = v10;
  }

  v14 = &v10[*a2];
  result = swift_beginAccess();
  *v14 = v5;
  v14[8] = v6;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.groupBackingTagID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v9 = sub_1C6D2BEA8(v9);
    *(v3 + v6) = v9;
  }

  v13 = &v9[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
  swift_beginAccess();
  v14 = *(v13 + 1);
  *v13 = a1;
  *(v13 + 1) = a2;
}

uint64_t sub_1C6D28EE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C6D28F3C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);

  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1C6D2BEA8(v7);
    *(a2 + v4) = v7;
  }

  swift_beginAccess();
  v11 = *(v7 + 2);
  *(v7 + 2) = v3;
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.topicIds.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 16);

  return sub_1C6D29088;
}

void sub_1C6D29088(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = sub_1C6D2BEA8(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = *(v10 + 2);
    *(v10 + 2) = v3;

    v17 = *v4;
  }

  else
  {
    v18 = *(v6 + v5);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v5);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 88);
      v22 = *(v2 + 80);
      v23 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = sub_1C6D2BEA8(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = *(v20 + 2);
    *(v20 + 2) = v3;
  }

  free(v2);
}

uint64_t sub_1C6D291B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1C6D29214(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = sub_1C6D2BEA8(v8);
    *(a2 + v5) = v8;
  }

  swift_beginAccess();
  v12 = *(v8 + 4);
  *(v8 + 3) = v4;
  *(v8 + 4) = v3;
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.publisherID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  *(v4 + 72) = *(v6 + 24);
  *(v4 + 80) = v7;

  return sub_1C6D29368;
}

void sub_1C6D29368(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = sub_1C6D2BEA8(v10);
      *(v12 + v11) = v10;
    }

    swift_beginAccess();
    v16 = *(v10 + 4);
    *(v10 + 3) = v3;
    *(v10 + 4) = v5;

    v17 = *(v2 + 80);
  }

  else
  {
    v18 = *(v6 + v4);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v6 + v4);
    if ((v19 & 1) == 0)
    {
      v21 = *(v2 + 96);
      v22 = *(v2 + 88);
      v23 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v20 = sub_1C6D2BEA8(v20);
      *(v22 + v21) = v20;
    }

    swift_beginAccess();
    v26 = *(v20 + 4);
    *(v20 + 3) = v3;
    *(v20 + 4) = v5;
  }

  free(v2);
}

uint64_t sub_1C6D29498(uint64_t a1, uint64_t a2)
{
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BB8128(a1, v12, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v13 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v16 = sub_1C6D2BEA8(v16);
    *(a2 + v13) = v16;
  }

  sub_1C6BB7E24(v12, v7, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  (*(v9 + 56))(v7, 0, 1, v8);
  v20 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  sub_1C6D2C4B4(v7, &v16[v20], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  return swift_endAccess();
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.features.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  sub_1C6BB7D34(v17 + v18, v9, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *(v15 + 3) = 0;
    *v15 = 0;
    v20 = v15 + *(v10 + 44);
    sub_1C6D78A30();
    if (v19(v9, 1, v10) != 1)
    {
      sub_1C6BB7DB4(v9, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    }
  }

  else
  {
    sub_1C6BB7E24(v9, v15, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  return sub_1C6D2994C;
}

void sub_1C6D2994C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1C6BB8128(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_1C6D2BEA8(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1C6BB7E24(v14, v18, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
    swift_beginAccess();
    sub_1C6D2C4B4(v18, &v7[v19], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    swift_endAccess();
    sub_1C6BB8984(v13, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_1C6D2BEA8(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_1C6BB7E24(v13, v18, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
    swift_beginAccess();
    sub_1C6D2C4B4(v18, &v23[v31], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

uint64_t sub_1C6D29BEC(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1C6D2BEA8(v7);
    *(a2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  result = swift_beginAccess();
  *&v7[v11] = v3;
  return result;
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.length.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1C6D29D30;
}

void sub_1C6D29D30(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v7 = sub_1C6D2BEA8(v7);
    *(v9 + v8) = v7;
  }

  v13 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  *&v7[v13] = v2;

  free(v1);
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.group.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_1C6D29EB0;
}

uint64_t sub_1C6D29EBC@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20)) + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_1C6D29F30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v10 = *(a2 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v12 = sub_1C6D2BEA8(v12);
    *(a2 + v9) = v12;
  }

  v16 = &v12[*a5];
  result = swift_beginAccess();
  *v16 = v7;
  v16[8] = v8;
  return result;
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.feed.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_1C6D2A094;
}

void sub_1C6D2A0A0(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 80);
  v9 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v4 + 84);
    v13 = *(v4 + 88);
    v14 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v11 = sub_1C6D2BEA8(v11);
    *(v13 + v12) = v11;
  }

  v17 = &v11[*a3];
  swift_beginAccess();
  *v17 = v5;
  v17[8] = v8;

  free(v4);
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.viewAction.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_1C6D2A234;
}

uint64_t sub_1C6D2A240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BB8128(a1, v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v17 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v18 = *(a2 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a2 + v17);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v20 = sub_1C6D2BEA8(v20);
    *(a2 + v17) = v20;
  }

  sub_1C6BB7E24(v16, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  (*(v13 + 56))(v11, 0, 1, v12);
  v24 = *a5;
  swift_beginAccess();
  sub_1C6D2C4B4(v11, &v20[v24], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return swift_endAccess();
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.embedding.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
  swift_beginAccess();
  sub_1C6BB7D34(v17 + v18, v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *v15 = xmmword_1C6D7F510;
    v20 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v19(v9, 1, v10) != 1)
    {
      sub_1C6BB7DB4(v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }
  }

  else
  {
    sub_1C6BB7E24(v9, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return sub_1C6D2A6F8;
}

uint64_t sub_1C6D2A740@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _OWORD *a3@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = *(a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v11 = *a2;
  swift_beginAccess();
  sub_1C6BB7D34(v10 + v11, v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return sub_1C6BB7E24(v9, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a3 = xmmword_1C6D7F510;
  v14 = a3 + *(v12 + 20);
  sub_1C6D78A30();
  result = (v13)(v9, 1, v12);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.bodyEmbedding.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
  swift_beginAccess();
  sub_1C6BB7D34(v17 + v18, v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *v15 = xmmword_1C6D7F510;
    v20 = v15 + *(v10 + 20);
    sub_1C6D78A30();
    if (v19(v9, 1, v10) != 1)
    {
      sub_1C6BB7DB4(v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }
  }

  else
  {
    sub_1C6BB7E24(v9, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return sub_1C6D2AB94;
}

void sub_1C6D2ABA0(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    v6 = *(v4 + 72);
    sub_1C6BB8128(*(v4 + 120), *(v4 + 112), type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v7 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = *(v4 + 128);
      v11 = *(v4 + 72);
      v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v9 = sub_1C6D2BEA8(v9);
      *(v11 + v10) = v9;
    }

    v16 = *(v4 + 112);
    v15 = *(v4 + 120);
    v17 = *(v4 + 96);
    v18 = *(v4 + 104);
    v20 = *(v4 + 80);
    v19 = *(v4 + 88);
    sub_1C6BB7E24(v16, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v18 + 56))(v20, 0, 1, v17);
    v21 = *a3;
    swift_beginAccess();
    sub_1C6D2C4B4(v20, &v9[v21], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_endAccess();
    sub_1C6BB8984(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  else
  {
    v22 = *(v4 + 72);
    v23 = *(v22 + v5);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v22 + v5);
    if ((v24 & 1) == 0)
    {
      v26 = *(v4 + 128);
      v27 = *(v4 + 72);
      v28 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v29 = *(v28 + 48);
      v30 = *(v28 + 52);
      swift_allocObject();
      v25 = sub_1C6D2BEA8(v25);
      *(v27 + v26) = v25;
    }

    v16 = *(v4 + 112);
    v15 = *(v4 + 120);
    v31 = *(v4 + 96);
    v32 = *(v4 + 104);
    v20 = *(v4 + 80);
    v19 = *(v4 + 88);
    sub_1C6BB7E24(v15, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v32 + 56))(v20, 0, 1, v31);
    v33 = *a3;
    swift_beginAccess();
    sub_1C6D2C4B4(v20, &v25[v33], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_endAccess();
  }

  free(v15);
  free(v16);
  free(v19);
  free(v20);

  free(v4);
}

uint64_t sub_1C6D2AE3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  sub_1C6BBB75C(0, a1, a2, MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - v12;
  v14 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v17 = sub_1C6D2BEA8(v17);
    *(v9 + v14) = v17;
  }

  v21 = a3(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_1C6D2C4B4(v13, &v17[v22], a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C6D2AFA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v4 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C6D2B014(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);

  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v7 = sub_1C6D2BEA8(v7);
    *(a2 + v4) = v7;
  }

  v11 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  v12 = *&v7[v11];
  *&v7[v11] = v3;
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.adCategories.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C6D2B170;
}

void sub_1C6D2B170(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = sub_1C6D2BEA8(v10);
      *(v12 + v11) = v10;
    }

    v16 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
    swift_beginAccess();
    v17 = *&v10[v16];
    *&v10[v16] = v3;

    v18 = *v4;
  }

  else
  {
    v19 = *(v6 + v5);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v5);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 88);
      v23 = *(v2 + 80);
      v24 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = sub_1C6D2BEA8(v21);
      *(v23 + v22) = v21;
    }

    v27 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
    swift_beginAccess();
    v28 = *&v21[v27];
    *&v21[v27] = v3;
  }

  free(v2);
}

uint64_t sub_1C6D2B2B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_1C6D2B330(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);

  v6 = *(a2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v8 = sub_1C6D2BEA8(v8);
    *(a2 + v5) = v8;
  }

  v12 = &v8[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
  swift_beginAccess();
  v13 = *(v12 + 1);
  *v12 = v4;
  *(v12 + 1) = v3;
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.groupBackingTagID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_1C6D2B4B4;
}

void sub_1C6D2B4B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v10 = sub_1C6D2BEA8(v10);
      *(v12 + v11) = v10;
    }

    v16 = &v10[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
    swift_beginAccess();
    v17 = *(v16 + 1);
    *v16 = v3;
    *(v16 + 1) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v21 = sub_1C6D2BEA8(v21);
      *(v23 + v22) = v21;
    }

    v27 = &v21[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
    swift_beginAccess();
    v28 = *(v27 + 1);
    *v27 = v3;
    *(v27 + 1) = v5;
  }

  free(v2);
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionArticleLegacyMetadata.clearGroupBackingTagID()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v5 = sub_1C6D2BEA8(v5);
    *(v1 + v2) = v5;
  }

  v9 = &v5[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
  swift_beginAccess();
  v10 = *(v9 + 1);
  *v9 = 0;
  *(v9 + 1) = 0;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  if (qword_1EDCE41F8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EDCE4200;
}

uint64_t sub_1C6D2B828()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE3FA8);
  __swift_project_value_buffer(v0, qword_1EDCE3FA8);
  sub_1C6BBB75C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C6D7EED0;
  v5 = v30 + v4;
  v6 = v30 + v4 + *(v2 + 56);
  *(v30 + v4) = 1;
  *v6 = "topic_ids";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "publisher_id";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "features";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v9();
  v14 = (v5 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "length";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "group";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "feed";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "view_action";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 8;
  *v23 = "embedding";
  *(v23 + 1) = 9;
  v23[16] = 2;
  v9();
  v24 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v24 = "body_embedding";
  *(v24 + 8) = 14;
  *(v24 + 16) = 2;
  v9();
  v25 = (v5 + 9 * v3);
  v26 = v25 + *(v2 + 56);
  *v25 = 10;
  *v26 = "ad_categories";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v3);
  v28 = v27 + *(v2 + 56);
  *v27 = 11;
  *v28 = "group_backing_tag_id";
  *(v28 + 1) = 20;
  v28[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionArticleLegacyMetadata._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE3FA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE3FA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *sub_1C6D2BD04()
{
  v0 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C6D2BD44();
  qword_1EDCE4200 = result;
  return result;
}

char *sub_1C6D2BD44()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 2) = MEMORY[0x1E69E7CC0];
  *(v0 + 3) = 0;
  *(v0 + 4) = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  v3 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length] = 0;
  v4 = &v0[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v0[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v0[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction];
  *v6 = 0;
  v6[8] = 1;
  v7 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v9 = *(*(v8 - 8) + 56);
  v9(&v0[v7], 1, 1, v8);
  v9(&v0[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding], 1, 1, v8);
  *&v0[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories] = v1;
  v10 = &v0[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
  *v10 = 0;
  *(v10 + 1) = 0;
  return v0;
}

char *sub_1C6D2BEA8(void *a1)
{
  v63 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
  v3 = MEMORY[0x1E69E6720];
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v52 - v6;
  v56 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures;
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, v3);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = &v52 - v9;
  *(v1 + 2) = MEMORY[0x1E69E7CC0];
  *(v1 + 3) = 0;
  *(v1 + 4) = 0xE000000000000000;
  v10 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  v53 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  v11 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v55 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  *&v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length] = 0;
  v12 = &v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed];
  v57 = &v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction];
  v58 = &v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction];
  *v14 = 0;
  v14[8] = 1;
  v15 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
  v59 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v17 = *(*(v16 - 8) + 56);
  v17(&v1[v15], 1, 1, v16);
  v60 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
  v17(&v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding], 1, 1, v16);
  v61 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  *&v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories] = MEMORY[0x1E69E7CC0];
  v18 = &v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
  *v18 = 0;
  *(v18 + 1) = 0;
  swift_beginAccess();
  v19 = a1[2];
  swift_beginAccess();
  *(v1 + 2) = v19;
  swift_beginAccess();
  v21 = a1[3];
  v20 = a1[4];
  swift_beginAccess();
  *(v1 + 3) = v21;
  *(v1 + 4) = v20;
  v22 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;

  swift_beginAccess();
  v23 = a1 + v22;
  v24 = v54;
  v25 = v56;
  sub_1C6BB7D34(v23, v54, qword_1EDCE5190, v56);
  v26 = v53;
  swift_beginAccess();
  sub_1C6D2C4B4(v24, &v1[v26], qword_1EDCE5190, v25);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  LODWORD(v27) = *(a1 + v27);
  v28 = v55;
  swift_beginAccess();
  *&v1[v28] = v27;
  v29 = a1 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = v29[8];
  swift_beginAccess();
  *v12 = v30;
  v12[8] = v29;
  v31 = a1 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
  swift_beginAccess();
  v32 = *v31;
  LOBYTE(v31) = v31[8];
  v33 = v57;
  swift_beginAccess();
  *v33 = v32;
  v33[8] = v31;
  v34 = a1 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction;
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = v34[8];
  v36 = v58;
  swift_beginAccess();
  *v36 = v35;
  v36[8] = v34;
  v37 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
  swift_beginAccess();
  v38 = v62;
  v39 = v63;
  sub_1C6BB7D34(a1 + v37, v62, qword_1EDCEA710, v63);
  v40 = v59;
  swift_beginAccess();
  sub_1C6D2C4B4(v38, &v1[v40], qword_1EDCEA710, v39);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
  swift_beginAccess();
  sub_1C6BB7D34(a1 + v41, v38, qword_1EDCEA710, v39);
  v42 = v60;
  swift_beginAccess();
  sub_1C6D2C4B4(v38, &v1[v42], qword_1EDCEA710, v39);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  v44 = *(a1 + v43);
  v45 = v61;
  swift_beginAccess();
  v46 = *&v1[v45];
  *&v1[v45] = v44;

  v47 = (a1 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  swift_beginAccess();
  v49 = *v47;
  v48 = v47[1];

  swift_beginAccess();
  v50 = *(v18 + 1);
  *v18 = v49;
  *(v18 + 1) = v48;

  return v1;
}

uint64_t sub_1C6D2C4B4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BBB75C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6D2C534()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_1C6BB7DB4(v0 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BB7DB4(v0 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7DB4(v0 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v3 = *(v0 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories);

  v4 = *(v0 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = sub_1C6D2BEA8(v12);
    *(v4 + v8) = v11;
  }

  return sub_1C6D2C6EC(v11, a1, a2, a3);
}

uint64_t sub_1C6D2C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C6D78AD0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            sub_1C6D2C980();
          }

          else if (result == 2)
          {
            sub_1C6D2CA04();
          }
        }

        else if (result == 3)
        {
          sub_1C6D2CA88();
        }

        else
        {
          if (result != 4)
          {
            v11 = sub_1C6C0FB94;
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
            goto LABEL_5;
          }

          sub_1C6D2CB64();
        }
      }

      else if (result > 8)
      {
        switch(result)
        {
          case 9:
            sub_1C6D2CC98(a2, a1, a3, a4, &OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding);
            break;
          case 10:
            sub_1C6D2CD70();
            break;
          case 11:
            sub_1C6D2CDFC();
            break;
        }
      }

      else
      {
        if (result == 6)
        {
          v11 = sub_1C6C0FBE8;
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
          goto LABEL_5;
        }

        if (result == 7)
        {
          v11 = sub_1C6C0FC3C;
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction;
LABEL_5:
          sub_1C6D2CBF0(v12, v13, v14, v15, v16, v11);
          goto LABEL_6;
        }

        sub_1C6D2CC98(a2, a1, a3, a4, &OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding);
      }

LABEL_6:
      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6D2C980()
{
  swift_beginAccess();
  sub_1C6D78B60();
  return swift_endAccess();
}

uint64_t sub_1C6D2CA04()
{
  swift_beginAccess();
  sub_1C6D78B80();
  return swift_endAccess();
}

uint64_t sub_1C6D2CA88()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  sub_1C6D2ECFC(&qword_1EDCE51F0, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6D78BB0();
  return swift_endAccess();
}

uint64_t sub_1C6D2CB64()
{
  swift_beginAccess();
  sub_1C6D78B90();
  return swift_endAccess();
}

uint64_t sub_1C6D2CBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  v8 = swift_beginAccess();
  a6(v8);
  sub_1C6D78B00();
  return swift_endAccess();
}

uint64_t sub_1C6D2CC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_1C6D2ECFC(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6D78BB0();
  return swift_endAccess();
}

uint64_t sub_1C6D2CD70()
{
  swift_beginAccess();
  sub_1C6D78B60();
  return swift_endAccess();
}

uint64_t sub_1C6D2CDFC()
{
  swift_beginAccess();
  sub_1C6D78B70();
  return swift_endAccess();
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  result = sub_1C6D2CEF4(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6D2CEF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  if (*(a1[2] + 16))
  {
    v10 = a1[2];

    sub_1C6D78CB0();

    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  v12 = a1[4];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = a1[3] & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = a1[4];

    v15 = v5;
    sub_1C6D78CC0();

    if (v5)
    {
      return result;
    }
  }

  else
  {
    v15 = v5;
  }

  result = sub_1C6D2D288(a1, a2, a3, a4);
  if (!v15)
  {
    v16 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
    swift_beginAccess();
    if (*(a1 + v16))
    {
      sub_1C6D78CD0();
    }

    v17 = a1 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
    swift_beginAccess();
    v26 = *v17;
    v28 = v17[8];
    if (Com_Apple_News_Personalization_GroupType.rawValue.getter())
    {
      v27 = *v17;
      v29 = v17[8];
      sub_1C6C0FB94();
      sub_1C6D78C70();
    }

    v18 = a1 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
    swift_beginAccess();
    if (*v18)
    {
      v24 = *v18;
      v25 = v18[8];
      sub_1C6C0FBE8();
      sub_1C6D78C70();
    }

    v19 = a1 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction;
    swift_beginAccess();
    v22 = *v19;
    v23 = v19[8];
    sub_1C6C0FC3C();
    sub_1C6D78C70();
    sub_1C6D2D4D4(a1, a2, a3, a4, &OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding, 8);
    sub_1C6D2D4D4(a1, a2, a3, a4, &OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding, 9);
    v20 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
    swift_beginAccess();
    if (*(*(a1 + v20) + 16))
    {
      v21 = *(a1 + v20);

      sub_1C6D78CB0();
    }

    return sub_1C6D2D724(a1);
  }

  return result;
}

uint64_t sub_1C6D2D288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  sub_1C6BB7D34(a1 + v14, v8, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BB7DB4(v8, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  sub_1C6BB7E24(v8, v13, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6D2ECFC(&qword_1EDCE51F0, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6D78CF0();
  return sub_1C6BB8984(v13, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
}

uint64_t sub_1C6D2D4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v19[1] = a6;
  v19[2] = a3;
  v19[7] = a4;
  v19[0] = a2;
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v19 - v10;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  swift_beginAccess();
  sub_1C6BB7D34(a1 + v17, v11, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1C6BB7DB4(v11, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  sub_1C6BB7E24(v11, v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6D2ECFC(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6D78CF0();
  return sub_1C6BB8984(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
}

uint64_t sub_1C6D2D724(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  result = swift_beginAccess();
  if (v1[1])
  {
    v3 = *v1;
    v4 = v1[1];

    sub_1C6D78CC0();
  }

  return result;
}

BOOL sub_1C6D2D7CC(uint64_t a1, uint64_t *a2)
{
  v126 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v129 = *(v126 - 8);
  v4 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v117 - v8;
  sub_1C6BBB640(0, &qword_1EC1D6BA8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v127 = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v125 = &v117 - v14;
  v15 = MEMORY[0x1E69E6720];
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v121 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v123 = &v117 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v124 = &v117 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v128 = &v117 - v24;
  v25 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v132 = *(v25 - 8);
  v133 = v25;
  v26 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v131 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BBB640(0, &qword_1EC1D7458, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v29 = v28;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v117 - v31;
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, v15);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v117 - v38;
  swift_beginAccess();
  v40 = *(a1 + 16);
  swift_beginAccess();
  if ((sub_1C6B55CF8(v40, a2[2]) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v41 = a1;
  v42 = *(a1 + 24);
  v130 = v41;
  v43 = *(v41 + 32);
  swift_beginAccess();
  if ((v42 != a2[3] || v43 != a2[4]) && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  v119 = v12;
  v120 = v36;
  v118 = v6;
  v44 = a2;
  v45 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  v46 = v130;
  swift_beginAccess();
  sub_1C6BB7D34(v46 + v45, v39, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v47 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  v48 = *(v29 + 48);
  sub_1C6BB7D34(v39, v32, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BB7D34(v44 + v47, &v32[v48], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v49 = v133;
  v50 = *(v132 + 48);
  if (v50(v32, 1, v133) == 1)
  {

    sub_1C6BB7DB4(v39, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    v51 = v46;
    if (v50(&v32[v48], 1, v49) == 1)
    {
      sub_1C6BB7DB4(v32, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      goto LABEL_12;
    }

LABEL_10:
    sub_1C6BBB6B8(v32, &qword_1EC1D7458, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    goto LABEL_43;
  }

  v52 = v44;
  v53 = v120;
  sub_1C6BB7D34(v32, v120, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if (v50(&v32[v48], 1, v49) == 1)
  {

    sub_1C6BB7DB4(v39, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    sub_1C6BB8984(v53, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    goto LABEL_10;
  }

  v54 = v131;
  sub_1C6BB7E24(&v32[v48], v131, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v55 = v130;

  v56 = _s19NewsPersonalization010Com_Apple_a1_B16_ArticleFeaturesV2eeoiySbAC_ACtFZ_0(v53, v54);
  sub_1C6BB8984(v54, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BB7DB4(v39, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v57 = v53;
  v44 = v52;
  sub_1C6BB8984(v57, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v51 = v55;
  sub_1C6BB7DB4(v32, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if ((v56 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_12:
  v58 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  LODWORD(v58) = *(v51 + v58);
  v59 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  if (v58 != *(v44 + v59))
  {
    goto LABEL_43;
  }

  v60 = (v51 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group);
  swift_beginAccess();
  v61 = *v60;
  v62 = *(v60 + 8);
  v63 = v44 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
  swift_beginAccess();
  v64 = *v63;
  v65 = v63[8];
  v136 = v61;
  v137 = v62;
  v134 = v64;
  v135 = v65;
  v66 = Com_Apple_News_Personalization_GroupType.rawValue.getter();
  if (v66 != Com_Apple_News_Personalization_GroupType.rawValue.getter())
  {
    goto LABEL_43;
  }

  v67 = v51 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
  swift_beginAccess();
  v68 = *v67;
  v69 = *(v67 + 8);
  v70 = v44 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
  swift_beginAccess();
  v71 = v70[8];
  if (!sub_1C6B69164(v68, v69, *v70))
  {
    goto LABEL_43;
  }

  v72 = v51 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction;
  swift_beginAccess();
  v73 = *v72;
  v74 = *(v72 + 8);
  v75 = v44 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction;
  swift_beginAccess();
  v76 = v75[8];
  if (!sub_1C6B69164(v73, v74, *v75))
  {
    goto LABEL_43;
  }

  v77 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
  swift_beginAccess();
  v78 = v128;
  sub_1C6BB7D34(v51 + v77, v128, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v79 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
  swift_beginAccess();
  v80 = *(v127 + 48);
  v81 = v125;
  sub_1C6BB7D34(v78, v125, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7D34(v44 + v79, v81 + v80, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v82 = v129 + 48;
  v83 = *(v129 + 48);
  v84 = v126;
  if (v83(v81, 1, v126) == 1)
  {
    sub_1C6BB7DB4(v78, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v85 = v83(v81 + v80, 1, v84);
    v86 = v119;
    if (v85 == 1)
    {
      v133 = v83;
      v129 = v82;
      sub_1C6BB7DB4(v81, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_19;
    }

LABEL_30:
    sub_1C6BBB6B8(v81, &qword_1EC1D6BA8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_43;
  }

  v101 = v124;
  sub_1C6BB7D34(v81, v124, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v102 = v83(v81 + v80, 1, v84);
  v86 = v119;
  if (v102 == 1)
  {
    sub_1C6BB7DB4(v128, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v101, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_30;
  }

  v103 = v81 + v80;
  v104 = v122;
  sub_1C6BB7E24(v103, v122, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((sub_1C6B5E090(*v101, *(v101 + 8), *v104, *(v104 + 8)) & 1) == 0)
  {
    sub_1C6BB7DB4(v128, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v104, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v101, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v108 = v81;
LABEL_42:
    sub_1C6BB7DB4(v108, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_43;
  }

  v133 = v83;
  v129 = v82;
  v105 = *(v84 + 20);
  sub_1C6D78A40();
  sub_1C6D2ECFC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  v106 = sub_1C6D79560();
  sub_1C6BB7DB4(v128, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB8984(v104, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v84 = v126;
  sub_1C6BB8984(v101, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7DB4(v81, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((v106 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_19:
  v87 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
  swift_beginAccess();
  v88 = v123;
  sub_1C6BB7D34(v51 + v87, v123, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v89 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
  swift_beginAccess();
  v90 = *(v127 + 48);
  sub_1C6BB7D34(v88, v86, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7D34(v44 + v89, v86 + v90, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v91 = v133;
  if (v133(v86, 1, v84) == 1)
  {
    sub_1C6BB7DB4(v88, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v91(v86 + v90, 1, v84) == 1)
    {
      sub_1C6BB7DB4(v86, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_22;
    }

LABEL_36:
    sub_1C6BBB6B8(v86, &qword_1EC1D6BA8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_43;
  }

  v107 = v121;
  sub_1C6BB7D34(v86, v121, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (v91(v86 + v90, 1, v84) == 1)
  {
    sub_1C6BB7DB4(v123, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v107, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_36;
  }

  v109 = v86 + v90;
  v110 = v118;
  sub_1C6BB7E24(v109, v118, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((sub_1C6B5E090(*v107, *(v107 + 8), *v110, *(v110 + 8)) & 1) == 0)
  {
    sub_1C6BB7DB4(v123, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v107, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v108 = v86;
    goto LABEL_42;
  }

  v111 = *(v84 + 20);
  sub_1C6D78A40();
  sub_1C6D2ECFC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  v112 = sub_1C6D79560();
  sub_1C6BB7DB4(v123, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB8984(v110, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB8984(v107, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7DB4(v86, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((v112 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_22:
  v92 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  v93 = *(v51 + v92);
  v94 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  if ((sub_1C6B55CF8(v93, *(v44 + v94)) & 1) == 0)
  {
    goto LABEL_43;
  }

  v95 = (v51 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  swift_beginAccess();
  v96 = *v95;
  v97 = v95[1];
  v98 = (v44 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  swift_beginAccess();
  v99 = v98[1];
  if (!v97)
  {
    v114 = v98[1];

    if (!v99)
    {
      return 1;
    }

    return 0;
  }

  if (!v99)
  {
LABEL_43:

    return 0;
  }

  if (v96 == *v98 && v97 == v99)
  {
    v100 = v98[1];

    return 1;
  }

  v115 = v98[1];
  v116 = sub_1C6D7A130();

  return (v116 & 1) != 0;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  sub_1C6D2ECFC(&qword_1EC1D9768, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D2E8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v4 = *(a1 + 20);
  if (qword_1EDCE41F8 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1EDCE4200;
}

uint64_t sub_1C6D2E9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D2ECFC(&qword_1EC1D9778, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D2EA38@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE3FA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE3FA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D2EAE0(uint64_t a1)
{
  v2 = sub_1C6D2ECFC(&unk_1EDCE3F90, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D2EB4C()
{
  sub_1C6D2ECFC(&unk_1EDCE3F90, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B29_SessionArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_1C6D2D7CC(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_1C6D78A40();
  sub_1C6D2ECFC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6D2ECFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6D2EE44()
{
  result = sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C6D2EED0()
{
  sub_1C6BBB75C(319, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1C6BBB75C(319, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed() + 20);
  return sub_1C6D78A30();
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed()
{
  result = qword_1EDCE36A0;
  if (!qword_1EDCE36A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed() + 20);
  sub_1C6D78A40();
  sub_1C6D2FAB4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6D2F2F8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9780);
  __swift_project_value_buffer(v0, qword_1EC1D9780);
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

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9780);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed.decodeMessage<A>(decoder:)()
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
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed() + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed();
  sub_1C6D2FAB4(&qword_1EC1D9798, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D2F6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D2FAB4(&qword_1EC1D97B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D2F738@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9780);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D2F7E0(uint64_t a1)
{
  v2 = sub_1C6D2FAB4(&qword_1EC1D7658, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D2F84C()
{
  sub_1C6D2FAB4(&qword_1EC1D7658, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);

  return sub_1C6D78C20();
}

uint64_t sub_1C6D2F9E8(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  sub_1C6D78A40();
  sub_1C6D2FAB4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6D2FAB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6D2FAFC(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1C6D2FB30()
{
  sub_1C6B1AC10();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_1C6D78290();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6D2FE90;
  *(v3 + 24) = v2;
  v4 = v1;
  v5 = sub_1C6D78210();
  v6 = sub_1C6D782A0();

  return v6;
}

uint64_t sub_1C6D2FC5C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC19NewsPersonalization26RecipeAutoFavoritesManager_resourceManager);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1C6D2FCF8;

  return sub_1C6BBF878();
}

uint64_t sub_1C6D2FCF8()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C6D2FDF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6BB6A40;

  return sub_1C6D2FC3C(a1, v4);
}

uint64_t sub_1C6D2FE90()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC19NewsPersonalization26RecipeAutoFavoritesManager_service);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 16))(ObjectType, v2);
}

uint64_t sub_1C6D2FEE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id RecipeAutoFavoritesManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecipeAutoFavoritesManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecipeAutoFavoritesManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id RecipeAutoFavoritesManager.autofavoriteTagIDs()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC19NewsPersonalization26RecipeAutoFavoritesManager_persistence) + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  if (!v2)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = sub_1C6D79570();
    v2 = [v3 stringArrayForKey_];

    if (v2)
    {
      v5 = sub_1C6D79780();

      v2 = sub_1C6B1E610(v5);
    }
  }

  os_unfair_lock_unlock((v1 + 24));
  if (!v2)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6D78D30();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1C6D30230()
{
  v1 = *(*(v0 + 144) + OBJC_IVAR____TtC19NewsPersonalization26RecipeAutoFavoritesManager_resourceManager);
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_1C6D302CC;

  return sub_1C6BBF878();
}

uint64_t sub_1C6D302CC()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C6D303C8, 0, 0);
}

uint64_t sub_1C6D303C8()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC19NewsPersonalization26RecipeAutoFavoritesManager_service);
  v0[2] = v0;
  v0[3] = sub_1C6D1C608;
  v2 = swift_continuation_init();
  sub_1C6D1CDEC();
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C6D2FAFC;
  v0[13] = &block_descriptor_14;
  v0[14] = v2;
  [v1 prepareFavorites_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C6D30648(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C6D306F0;

  return RecipeAutoFavoritesManager.prepareFavorites()();
}

uint64_t sub_1C6D306F0()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1C6D30828(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1C6BE1AB0;

  return v7();
}

uint64_t sub_1C6D30910(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1C6BB6A40;

  return v8();
}

uint64_t sub_1C6D309F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C6B1ABB8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BE15F4(a3, v12);
  v13 = sub_1C6D79880();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C6B1AB5C(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1C6D79870();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1C6D79840();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1C6D79600() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1C6B1AB5C(a3);

    return v23;
  }

LABEL_8:
  sub_1C6B1AB5C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1C6D30CF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C6BB6A40;

  return sub_1C6D30648(v2, v3);
}

uint64_t sub_1C6D30DA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C6BE1AB0;

  return sub_1C6BE1658(a1, v5);
}

void sub_1C6D30E5C()
{
  if (!qword_1EDCE0650[0])
  {
    sub_1C6B37F88();
    sub_1C6D30EC0();
    v0 = type metadata accessor for PersonalizedPaywallDataService();
    if (!v1)
    {
      atomic_store(v0, qword_1EDCE0650);
    }
  }
}

unint64_t sub_1C6D30EC0()
{
  result = qword_1EDCEA338;
  if (!qword_1EDCEA338)
  {
    sub_1C6B37F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA338);
  }

  return result;
}

uint64_t ComputeService<>.getTabiData()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D3152C(0, &qword_1EDCE5D08, sub_1C6D310A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  sub_1C6D78450();
  sub_1C6D310A0();
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v5, 1, v6) == 1)
  {
    sub_1C6D31C30(v5, &qword_1EDCE5D08, sub_1C6D310A0);
    v9 = 1;
  }

  else
  {
    sub_1C6D3115C(a1);
    (*(v8 + 8))(v5, v7);
    v9 = 0;
  }

  v10 = sub_1C6D77EA0();
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

void sub_1C6D310A0()
{
  if (!qword_1EDCE5D10)
  {
    type metadata accessor for Package();
    sub_1C6D31104();
    v0 = sub_1C6D785D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE5D10);
    }
  }
}

unint64_t sub_1C6D31104()
{
  result = qword_1EDCE6708;
  if (!qword_1EDCE6708)
  {
    type metadata accessor for Package();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6708);
  }

  return result;
}

uint64_t sub_1C6D3115C@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D3152C(0, &qword_1EDCE7AC0, MEMORY[0x1E69B4968]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  sub_1C6D310A0();
  v10 = sub_1C6D785A0();
  sub_1C6D31580(v10, v9);

  v11 = sub_1C6D78590();
  v12 = *(v11 + 16);
  if (v12)
  {
    v23 = v6;
    v24 = v9;
    v25 = v1;
    v26 = a1;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v12, 0);
    v13 = v27;
    v14 = (v11 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v27 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_1C6B39280((v17 > 1), v18 + 1, 1);
        v13 = v27;
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v14 += 2;
      --v12;
    }

    while (v12);

    v6 = v23;
    v9 = v24;
  }

  else
  {
  }

  sub_1C6D785C0();
  if (!v20)
  {
    sub_1C6D785B0();
  }

  sub_1C6D78580();
  sub_1C6D78570();
  sub_1C6D31BB0(v9, v6);
  sub_1C6D785B0();
  sub_1C6D77E90();
  return sub_1C6D31C30(v9, &qword_1EDCE7AC0, MEMORY[0x1E69B4968]);
}

uint64_t sub_1C6D313A0@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D3152C(0, &qword_1EDCE5D08, sub_1C6D310A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = *v1;
  sub_1C6D78450();
  sub_1C6D310A0();
  v9 = v8;
  v10 = *(v8 - 8);
  if ((*(v10 + 48))(v6, 1, v8) == 1)
  {
    sub_1C6D31C30(v6, &qword_1EDCE5D08, sub_1C6D310A0);
    v11 = 1;
  }

  else
  {
    sub_1C6D3115C(a1);
    (*(v10 + 8))(v6, v9);
    v11 = 0;
  }

  v12 = sub_1C6D77EA0();
  return (*(*(v12 - 8) + 56))(a1, v11, 1, v12);
}

void sub_1C6D3152C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1C6D31580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D31740(0xD00000000000001ALL, 0x80000001C6DA0A80, a1);
  sub_1C6D31740(0x2D656C6369747261, 0xEF676E69726F6373, a1);
  sub_1C6D31740(0xD000000000000014, 0x80000001C6DA5140, a1);
  sub_1C6D31740(0xD000000000000012, 0x80000001C6DA0D40, a1);
  sub_1C6D31740(0xD000000000000010, 0x80000001C6DA8C90, a1);
  sub_1C6D31740(0x726F63732D676174, 0xEB00000000676E69, a1);
  sub_1C6D31740(0x676775732D676174, 0xEF736E6F69747365, a1);
  sub_1C6D77B60();
  v4 = sub_1C6D77B70();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_1C6D31740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D75F50();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v38 - v10;
  v11 = sub_1C6D773B0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1C6D78880();
  v14 = *(v50 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C6D78410();
  v17 = *(v49 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1C6D77670();
  v54 = *(v48 - 8);
  v20 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v39 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(a3 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v22 = sub_1C6B5DEA8(a1, a2);
  if ((v23 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v24 = *(*(a3 + 56) + 8 * v22);
  v25 = *(v24 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    v56 = MEMORY[0x1E69E7CC0];

    sub_1C6B39A78(0, v25, 0);
    v26 = v56;
    v27 = v17 + 16;
    v28 = *(v17 + 16);
    v29 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v38 = v24;
    v30 = v24 + v29;
    v43 = *(v27 + 56);
    v44 = v28;
    v45 = v27;
    v41 = (v27 - 8);
    v42 = (v14 + 8);
    v40 = v54 + 32;
    v31 = v39;
    v32 = v49;
    v33 = v47;
    do
    {
      v55 = v25;
      v34 = v46;
      v44(v46, v30, v32);
      sub_1C6D783F0();
      sub_1C6D78870();
      sub_1C6D78860();
      sub_1C6D77390();
      (*v42)(v33, v50);
      sub_1C6D78400();
      sub_1C6D77660();
      (*v41)(v34, v32);
      v56 = v26;
      v36 = *(v26 + 16);
      v35 = *(v26 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1C6B39A78(v35 > 1, v36 + 1, 1);
        v31 = v39;
        v26 = v56;
      }

      *(v26 + 16) = v36 + 1;
      (*(v54 + 32))(v26 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v36, v31, v48);
      v30 += v43;
      v25 = v55 - 1;
    }

    while (v55 != 1);
  }

  return v26;
}

uint64_t sub_1C6D31BB0(uint64_t a1, uint64_t a2)
{
  sub_1C6D3152C(0, &qword_1EDCE7AC0, MEMORY[0x1E69B4968]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6D31C30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6D3152C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t UserEventHistoryJSONSerializer.serializeUserEventHistory()()
{
  v0 = sub_1C6D78E40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B761BC();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E7F88], v0);
  v5 = sub_1C6D79B30();
  (*(v1 + 8))(v4, v0);

  v6 = sub_1C6D78390();

  return v6;
}

uint64_t sub_1C6D31DD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v7[4] = sub_1C6D32368;
  v7[5] = a1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C6D32240;
  v7[3] = &block_descriptor_15;
  v2 = _Block_copy(v7);

  [v1 writeJSON_];
  _Block_release(v2);
  sub_1C6B1AC10();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_1C6D78300();
}

uint64_t sub_1C6D31EE0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C6D78A60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Personalization_Session();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(a2 + 24) + 24);
  UserEventHistorySessionUnarchiver.unarchive(session:)();
  sub_1C6D78A50();
  sub_1C6D32370();
  v13 = sub_1C6D78BC0();
  (*(v4 + 8))(v7, v3);
  sub_1C6D323C8(v11);
  return v13;
}

id sub_1C6D32240(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v10 = sub_1C6D75E50();
    sub_1C6B75B88(v6, v8);
    v9 = v10;
  }

  return v9;
}

uint64_t UserEventHistoryJSONSerializer.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t UserEventHistoryJSONSerializer.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1C6D32370()
{
  result = qword_1EDCE2AE0;
  if (!qword_1EDCE2AE0)
  {
    type metadata accessor for Com_Apple_News_Personalization_Session();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2AE0);
  }

  return result;
}

uint64_t sub_1C6D323C8(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Personalization_Session();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6D32424(uint64_t a1)
{
  sub_1C6B3C1F8();
  v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v37 - v7;
  v8 = sub_1C6D78630();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v50 = v12;
  v37 = v1;
  v51 = MEMORY[0x1E69E7CC0];
  sub_1C6B39AC8(0, v13, 0);
  v14 = v51;
  v15 = a1 + 64;
  v16 = -1 << *(a1 + 32);
  result = sub_1C6D79CC0();
  v18 = result;
  v19 = 0;
  v42 = (v9 + 32);
  v43 = v9;
  v38 = a1 + 72;
  v39 = v13;
  v40 = a1 + 64;
  v41 = a1;
  while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
  {
    v22 = v18 >> 6;
    if ((*(v15 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v47 = v19;
    v48 = v23;
    v24 = *(a1 + 56) + *(v46 + 72) * v18;
    v25 = v44;
    sub_1C6D3B544(v24, v44, sub_1C6B3C1F8);
    v26 = v8;
    v27 = v45;
    sub_1C6D3B544(v25, v45, sub_1C6B3C1F8);
    v49 = *v42;
    v49(v50, v27, v26);
    sub_1C6D3B6DC(v25, sub_1C6B3C1F8);
    v51 = v14;
    v29 = *(v14 + 16);
    v28 = *(v14 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_1C6B39AC8(v28 > 1, v29 + 1, 1);
      v14 = v51;
    }

    *(v14 + 16) = v29 + 1;
    result = (v49)(v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v29, v50, v26);
    a1 = v41;
    v20 = 1 << *(v41 + 32);
    if (v18 >= v20)
    {
      goto LABEL_22;
    }

    v15 = v40;
    v30 = *(v40 + 8 * v22);
    if ((v30 & (1 << v18)) == 0)
    {
      goto LABEL_23;
    }

    if (v48 != *(v41 + 36))
    {
      goto LABEL_24;
    }

    v8 = v26;
    v31 = v30 & (-2 << (v18 & 0x3F));
    if (v31)
    {
      v20 = __clz(__rbit64(v31)) | v18 & 0x7FFFFFFFFFFFFFC0;
      v21 = v39;
    }

    else
    {
      v32 = v22 << 6;
      v33 = v22 + 1;
      v21 = v39;
      v34 = (v38 + 8 * v22);
      while (v33 < (v20 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = sub_1C6B360A8(v18, v48, 0);
          v20 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      result = sub_1C6B360A8(v18, v48, 0);
    }

LABEL_4:
    v19 = v47 + 1;
    v18 = v20;
    if (v47 + 1 == v21)
    {
      return v14;
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
  return result;
}

void sub_1C6D32814(void **a1)
{
  sub_1C6B3C1F8();
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1C6C74020(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_1C6D38D1C(v6);
  *a1 = v4;
}

uint64_t sub_1C6D328BC(uint64_t a1)
{
  *(v2 + 840) = v1;
  *(v2 + 832) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C6D328E0, 0, 0);
}

uint64_t sub_1C6D328E0()
{
  *(v0 + 848) = *__swift_project_boxed_opaque_existential_1((*(v0 + 840) + OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_userEmbeddingConfigurationService), *(*(v0 + 840) + OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_userEmbeddingConfigurationService + 24));

  return MEMORY[0x1EEE6DFA0](sub_1C6D32960, 0, 0);
}

uint64_t sub_1C6D32960()
{
  v1 = v0[106];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1C6D32B04;
  v2 = swift_continuation_init();
  sub_1C6D38CB4();
  sub_1C6D783A0();
  *(swift_allocObject() + 16) = v2;
  v3 = sub_1C6D78210();
  sub_1C6D782B0();

  *(swift_allocObject() + 16) = v2;
  v4 = sub_1C6D78210();
  sub_1C6D782E0();

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C6D32B04()
{
  v1 = *v0;
  v2 = *v0;
  if (*(*v0 + 48))
  {
    v3 = *(*v0 + 48);
    swift_willThrow();
    v4 = *(v2 + 1);

    return v4();
  }

  else
  {
    v6 = v1[6];
    v1[19] = v1[5];
    v1[20] = v6;
    v7 = v1[7];
    v8 = v1[8];
    v9 = v1[10];
    v1[23] = v1[9];
    v1[24] = v9;
    v1[21] = v7;
    v1[22] = v8;
    v10 = v1[11];
    v11 = v1[12];
    v12 = v1[14];
    v1[27] = v1[13];
    v1[28] = v12;
    v1[25] = v10;
    v1[26] = v11;
    v13 = v1[15];
    v14 = v1[16];
    v15 = v1[17];
    *(v1 + 505) = *(v1 + 281);
    v1[30] = v14;
    v1[31] = v15;
    v1[29] = v13;

    return MEMORY[0x1EEE6DFA0](sub_1C6D32C90, 0, 0);
  }
}

uint64_t sub_1C6D32C90()
{
  *(v0 + 856) = *(*(v0 + 840) + OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_userEmbeddingManager);
  v1 = *(v0 + 480);
  *(v0 + 688) = *(v0 + 464);
  *(v0 + 704) = v1;
  *(v0 + 720) = *(v0 + 496);
  *(v0 + 729) = *(v0 + 505);
  v2 = *(v0 + 416);
  *(v0 + 624) = *(v0 + 400);
  *(v0 + 640) = v2;
  v3 = *(v0 + 448);
  *(v0 + 656) = *(v0 + 432);
  *(v0 + 672) = v3;
  v4 = *(v0 + 352);
  *(v0 + 560) = *(v0 + 336);
  *(v0 + 576) = v4;
  v5 = *(v0 + 384);
  *(v0 + 592) = *(v0 + 368);
  *(v0 + 608) = v5;
  v6 = *(v0 + 320);
  *(v0 + 528) = *(v0 + 304);
  *(v0 + 544) = v6;
  v7 = swift_task_alloc();
  *(v0 + 864) = v7;
  *v7 = v0;
  v7[1] = sub_1C6D32D80;
  v8 = *(v0 + 840);

  return sub_1C6D330F0((v0 + 528));
}

uint64_t sub_1C6D32D80(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 864);
  v7 = *v2;
  *(v3 + 872) = a1;
  *(v3 + 880) = v1;

  if (v1)
  {
    v5 = sub_1C6D330C0;
  }

  else
  {
    v5 = sub_1C6D32E98;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C6D32E98()
{
  v1 = *(v0 + 456);
  *(v0 + 784) = *(v0 + 440);
  *(v0 + 800) = v1;
  *(v0 + 809) = *(v0 + 465);
  v2 = *(v0 + 424);
  *(v0 + 752) = *(v0 + 408);
  *(v0 + 768) = v2;
  sub_1C6D77FA0();
  v3 = sub_1C6D77F90();
  v4 = swift_task_alloc();
  *(v0 + 888) = v4;
  *v4 = v0;
  v4[1] = sub_1C6D32F7C;
  v5 = *(v0 + 872);
  v6 = *(v0 + 856);
  v7 = *(v0 + 832);

  return UserEmbeddingManager.generateEmbedding(history:configuration:writeHumanReadableHistoryToDisk:)(v7, v5, (v0 + 752), v3 & 1);
}

uint64_t sub_1C6D32F7C()
{
  v2 = *(*v1 + 888);
  v3 = *v1;
  v3[112] = v0;

  if (v0)
  {
    v4 = v3[109];

    return MEMORY[0x1EEE6DFA0](sub_1C6D330D8, 0, 0);
  }

  else
  {
    v5 = v3[109];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1C6D330F0(_OWORD *a1)
{
  v3 = v1;
  *(v2 + 488) = v3;
  *(v2 + 496) = swift_getObjectType();
  v5 = sub_1C6D771C0();
  *(v2 + 504) = v5;
  v6 = *(v5 - 8);
  *(v2 + 512) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 520) = swift_task_alloc();
  v8 = sub_1C6D77140();
  *(v2 + 528) = v8;
  v9 = *(v8 - 8);
  *(v2 + 536) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 544) = swift_task_alloc();
  v11 = a1[11];
  *(v2 + 176) = a1[10];
  *(v2 + 192) = v11;
  *(v2 + 208) = a1[12];
  *(v2 + 217) = *(a1 + 201);
  v12 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v12;
  v13 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v13;
  v14 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v14;
  v15 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v15;
  v16 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1C6D33260, 0, 0);
}

uint64_t sub_1C6D33260()
{
  sub_1C6D77FA0();
  if ((sub_1C6D77F90() & 1) == 0)
  {
    goto LABEL_6;
  }

  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 504);
  v6 = *(v0 + 512);
  v7 = *(v0 + 496);
  v23 = *(v0 + 488);
  sub_1C6B471CC();
  (*(v2 + 104))(v1, *MEMORY[0x1E69D6D10], v3);
  (*(v6 + 104))(v4, *MEMORY[0x1E69D6E90], v5);
  sub_1C6D77210();
  sub_1C6D3B790(qword_1EDCE1C18, v8, type metadata accessor for AppUserEmbeddingManager);
  LOBYTE(v1) = sub_1C6D77130();

  if (v1)
  {
    if (qword_1EDCE7180 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    sub_1C6D78D30();
    v34 = *(v0 + 176);
    v35 = *(v0 + 192);
    *v36 = *(v0 + 208);
    *&v36[9] = *(v0 + 217);
    v30 = *(v0 + 112);
    v31 = *(v0 + 128);
    v32 = *(v0 + 144);
    v33 = *(v0 + 160);
    v26 = *(v0 + 48);
    v27 = *(v0 + 64);
    v28 = *(v0 + 80);
    v29 = *(v0 + 96);
    v24 = *(v0 + 16);
    v25 = *(v0 + 32);
    v9 = sub_1C6D3A7B8();
    v19 = *(v0 + 544);
    v20 = *(v0 + 520);
    v21 = v9;

    v22 = *(v0 + 8);

    return v22(v21);
  }

  else
  {
LABEL_6:
    v10 = *(v0 + 192);
    *(v0 + 400) = *(v0 + 176);
    *(v0 + 416) = v10;
    *(v0 + 432) = *(v0 + 208);
    *(v0 + 441) = *(v0 + 217);
    v11 = *(v0 + 128);
    *(v0 + 336) = *(v0 + 112);
    *(v0 + 352) = v11;
    v12 = *(v0 + 160);
    *(v0 + 368) = *(v0 + 144);
    *(v0 + 384) = v12;
    v13 = *(v0 + 64);
    *(v0 + 272) = *(v0 + 48);
    *(v0 + 288) = v13;
    v14 = *(v0 + 96);
    *(v0 + 304) = *(v0 + 80);
    *(v0 + 320) = v14;
    v15 = *(v0 + 32);
    *(v0 + 240) = *(v0 + 16);
    *(v0 + 256) = v15;
    v16 = swift_task_alloc();
    *(v0 + 552) = v16;
    *v16 = v0;
    v16[1] = sub_1C6D33644;
    v17 = *(v0 + 488);

    return sub_1C6D33814((v0 + 240));
  }
}

uint64_t sub_1C6D33644(uint64_t a1)
{
  v4 = *(*v2 + 552);
  v5 = *v2;
  v5[70] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6D337A4, 0, 0);
  }

  else
  {
    v6 = v5[68];
    v7 = v5[65];

    v8 = v5[1];

    return v8(a1);
  }
}

uint64_t sub_1C6D337A4()
{
  v1 = v0[68];
  v2 = v0[65];

  v3 = v0[1];
  v4 = v0[70];

  return v3();
}

uint64_t sub_1C6D33814(_OWORD *a1)
{
  *(v2 + 520) = v1;
  *(v2 + 512) = a1;
  v3 = a1[11];
  *(v2 + 176) = a1[10];
  *(v2 + 192) = v3;
  *(v2 + 208) = a1[12];
  *(v2 + 217) = *(a1 + 201);
  v4 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v4;
  v5 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v5;
  v6 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v6;
  v7 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v7;
  v8 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1C6D33878, 0, 0);
}

uint64_t sub_1C6D33878()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = (v0 + 240);
  v4 = (v0 + 488);
  v59 = v1 + 62;
  if (qword_1EDCE7180 != -1)
  {
    swift_once();
  }

  v5 = v1[65];
  v6 = v1[64];
  sub_1C6B1D314();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C6D7E630;
  v1[58] = 0;
  v1[59] = 0xE000000000000000;
  v8 = v6[10];
  v9 = v6[11];
  v10 = v6[12];
  *(v3 + 201) = *(v6 + 201);
  v3[11] = v9;
  v3[12] = v10;
  v3[10] = v8;
  v11 = v6[6];
  v12 = v6[7];
  v13 = v6[9];
  v3[8] = v6[8];
  v3[9] = v13;
  v3[6] = v11;
  v3[7] = v12;
  v14 = v6[2];
  v15 = v6[3];
  v16 = v6[5];
  v3[4] = v6[4];
  v3[5] = v16;
  v3[2] = v14;
  v3[3] = v15;
  v17 = v6[1];
  *v3 = *v6;
  v3[1] = v17;
  sub_1C6D79E60();
  v18 = v1[58];
  v19 = v1[59];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1C6B2064C();
  *(v7 + 32) = v18;
  *(v7 + 40) = v19;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  sub_1C6D79AC0();
  sub_1C6D78D30();
  sub_1C6D77FA0();
  LOBYTE(v19) = sub_1C6D77F90();
  v60 = v1;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = (v20 + 16);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = (v22 + 16);
  v24 = MEMORY[0x1E69E7CD0];
  v60[61] = MEMORY[0x1E69E7CC8];
  v60[62] = v24;
  v25 = *(v5 + OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_sessionDataProvider);
  v26 = swift_task_alloc();
  *(v26 + 16) = v2;
  *(v26 + 24) = v4;
  *(v26 + 32) = v20;
  *(v26 + 40) = v22;
  *(v26 + 48) = v19 & 1;
  *(v26 + 56) = v59;
  (*(*v25 + 160))(0, 0, 0, sub_1C6D3B3E0, v26);

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C6D7EB10;
  swift_beginAccess();
  v28 = MEMORY[0x1E69E6530];
  v29 = *(v20 + 16);
  v30 = MEMORY[0x1E69E65A8];
  *(v27 + 56) = MEMORY[0x1E69E6530];
  *(v27 + 64) = v30;
  *(v27 + 32) = v29;
  swift_beginAccess();
  v31 = *v23;
  *(v27 + 96) = v28;
  *(v27 + 104) = v30;
  *(v27 + 72) = v31;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v32 = sub_1C6D3784C(v2, v4, v23, v21);
  v34 = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1C6D807C0;
  v36 = *(v32 + 16);
  *(v35 + 56) = v28;
  *(v35 + 64) = v30;
  *(v35 + 32) = v36;
  *(v35 + 96) = v28;
  *(v35 + 104) = v30;
  *(v35 + 72) = v29;
  *(v35 + 136) = v28;
  *(v35 + 144) = v30;
  v37 = v60;
  *(v35 + 112) = v34;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v38 = v60[10];
  v39 = *(v60 + 88);
  if (v60[5])
  {
    if (v60[11])
    {
      goto LABEL_15;
    }

LABEL_12:
    if (v31 < v38)
    {

      sub_1C6D79D50();
      MEMORY[0x1CCA55B00](0xD000000000000026, 0x80000001C6DA9140);
      v60[63] = v38;
      v47 = sub_1C6D7A0E0();
      v44 = v34;
      MEMORY[0x1CCA55B00](v47);

      goto LABEL_14;
    }

LABEL_15:
    v49 = v60[62];

    v50 = v60[61];

    v51 = v60[1];

    return v51(v32);
  }

  v40 = v60[4];
  if (v60[11])
  {
    if (v29 >= v40)
    {
      goto LABEL_15;
    }

    sub_1C6D79D50();
    MEMORY[0x1CCA55B00](0xD000000000000026, 0x80000001C6DA91B0);
    v60[63] = v40;
    v41 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v41);

    MEMORY[0x1CCA55B00](0xD00000000000001ELL, 0x80000001C6DA9170);
    v60[63] = v29;
LABEL_19:
    v54 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v54);

    goto LABEL_20;
  }

  if (v29 >= v40)
  {
    goto LABEL_12;
  }

  v42 = v29;

  if (v34 >= v38)
  {
    sub_1C6D79D50();
    MEMORY[0x1CCA55B00](0xD000000000000026, 0x80000001C6DA91B0);
    v60[63] = v40;
    v53 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v53);

    MEMORY[0x1CCA55B00](0xD00000000000001ELL, 0x80000001C6DA9170);
    v60[63] = v29;
    goto LABEL_19;
  }

  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD000000000000026, 0x80000001C6DA91B0);
  v60[63] = v40;
  v43 = sub_1C6D7A0E0();
  v44 = v34;
  MEMORY[0x1CCA55B00](v43);

  MEMORY[0x1CCA55B00](0xD00000000000001ELL, 0x80000001C6DA9170);
  v60[63] = v42;
  v45 = sub_1C6D7A0E0();
  MEMORY[0x1CCA55B00](v45);

  MEMORY[0x1CCA55B00](0xD000000000000049, 0x80000001C6DA91E0);
  v60[63] = v38;
  v46 = sub_1C6D7A0E0();
  MEMORY[0x1CCA55B00](v46);

  v37 = v60;
LABEL_14:
  MEMORY[0x1CCA55B00](0xD00000000000001ELL, 0x80000001C6DA9170);
  v37[63] = v44;
  v48 = sub_1C6D7A0E0();
  MEMORY[0x1CCA55B00](v48);

  MEMORY[0x1CCA55B00](0xD00000000000001ELL, 0x80000001C6DA9190);
LABEL_20:
  sub_1C6D3B29C();
  swift_allocError();
  *v55 = 0;
  *(v55 + 8) = 0xE000000000000000;
  *(v55 + 16) = 0;
  swift_willThrow();
  v56 = v37[62];

  v57 = v37[61];

  v58 = v37[1];

  return v58();
}

uint64_t sub_1C6D3410C(uint64_t a1, BOOL *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int a7, uint64_t *a8)
{
  v240 = a3;
  v241 = a8;
  LODWORD(v235) = a7;
  v238 = a6;
  v239 = a2;
  v244 = a5;
  v251 = a4;
  sub_1C6B3C1F8();
  v243 = v9;
  v250 = *(v9 - 8);
  v10 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v229 = &v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v231 = &v227 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v228 = &v227 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v234 = &v227 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v233 = &v227 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v242 = &v227 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v252 = &v227 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v247 = &v227 - v25;
  sub_1C6B1B7C0(0, &qword_1EDCDFB90, sub_1C6D3B458);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v246 = &v227 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v245 = (&v227 - v30);
  sub_1C6B1B7C0(0, &unk_1EDCE5CE0, sub_1C6B3C1F8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v232 = &v227 - v33;
  v34 = sub_1C6D789A0();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v237 = &v227 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v248 = &v227 - v39;
  v40 = MEMORY[0x1E69AA900];
  sub_1C6B1B7C0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v236 = &v227 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v227 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v227 - v48;
  v50 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 36);
  v253 = a1;
  sub_1C6D3B5AC(a1 + v50, v49, &qword_1EDCE66F0, v40);
  v249 = v35;
  v51 = *(v35 + 48);
  LODWORD(a1) = v51(v49, 1, v34);
  sub_1C6D3B618(v49, &qword_1EDCE66F0, v40);
  if (a1 == 1)
  {
    if (qword_1EDCE7180 == -1)
    {
LABEL_3:
      sub_1C6D79AB0();
LABEL_15:
      result = sub_1C6D78D30();
LABEL_16:
      v63 = 1;
      goto LABEL_17;
    }

LABEL_152:
    swift_once();
    goto LABEL_3;
  }

  sub_1C6D3B5AC(v253 + v50, v46, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v52 = v34;
  v53 = v50;
  if (v51(v46, 1, v34) == 1)
  {
    v54 = v248;
    sub_1C6D78990();
    v55 = v51(v46, 1, v34);
    v56 = v249;
    if (v55 != 1)
    {
      sub_1C6D3B618(v46, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    v54 = v248;
    v56 = v249;
    (*(v249 + 32))(v248, v46, v52);
  }

  sub_1C6D78970();
  v58 = v57;
  v59 = *(v56 + 8);
  v59(v54, v52);
  if (v58 <= 1672556400.0)
  {
    if (qword_1EDCE7180 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    goto LABEL_15;
  }

  v60 = v236;
  sub_1C6D3B5AC(v253 + v53, v236, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  if (v51(v60, 1, v52) == 1)
  {
    v61 = v237;
    sub_1C6D78990();
    if (v51(v60, 1, v52) != 1)
    {
      sub_1C6D3B618(v60, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    v61 = v237;
    (*(v56 + 32))(v237, v60, v52);
  }

  sub_1C6D78970();
  v65 = v64;
  v59(v61, v52);
  v66 = v240;
  v67 = *(v240 + 208);
  if (v67 > v65)
  {
    if (qword_1EDCE7180 != -1)
    {
LABEL_157:
      swift_once();
    }

    sub_1C6B1D314();
    v68 = swift_allocObject();
    v69 = MEMORY[0x1E69E63B0];
    *(v68 + 16) = xmmword_1C6D7E630;
    v70 = MEMORY[0x1E69E6438];
    *(v68 + 56) = v69;
    *(v68 + 64) = v70;
    *(v68 + 32) = v67;
    sub_1C6D79AC0();
LABEL_22:
    sub_1C6D78D30();

    goto LABEL_16;
  }

  if (*(v240 + 216))
  {
    if (*(*v251 + 16))
    {
      v71 = *(v240 + 96);
      sub_1C6D43454(v71);
      if (v72)
      {
        if (qword_1EDCE7180 != -1)
        {
LABEL_164:
          swift_once();
        }

        sub_1C6B1D314();
        v73 = swift_allocObject();
        v74 = v73;
        *(v73 + 16) = xmmword_1C6D7E630;
        if (v71 == 1)
        {
          v75 = 0xE400000000000000;
          v76 = 2036625250;
        }

        else if (v71)
        {
          v75 = 0xE700000000000000;
          v76 = 0x6E776F6E6B6E75;
        }

        else
        {
          v75 = 0xE500000000000000;
          v76 = 0x656C746974;
        }

        *(v73 + 56) = MEMORY[0x1E69E6158];
        *(v73 + 64) = sub_1C6B2064C();
        *(v74 + 32) = v76;
        *(v74 + 40) = v75;
        sub_1C6D79AC0();
        goto LABEL_22;
      }
    }
  }

  v230 = *(v66 + 32);
  LODWORD(v237) = *(v66 + 40);
  if ((v237 & 1) == 0)
  {
    v77 = v244;
    swift_beginAccess();
    if (*(v77 + 16) >= v230 && (*(v66 + 88) & 1) == 0)
    {
      v78 = *(v66 + 80);
      v79 = v238;
      result = swift_beginAccess();
      if (*(v79 + 16) >= v78)
      {
        goto LABEL_16;
      }
    }
  }

  v235 = sub_1C6D359D8(*(v66 + 96), *(v66 + 184), *v66, *(v66 + 8), *(v66 + 48), *(v66 + 56), v235 & 1);
  v81 = v80;
  v82 = v80 + 56;
  v83 = 1 << *(v80 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v80 + 56);
  v86 = (v83 + 63) >> 6;

  v87 = 0;
  if (v85)
  {
    while (1)
    {
      v88 = v87;
LABEL_42:
      v89 = __clz(__rbit64(v85));
      v85 &= v85 - 1;
      v90 = (*(v81 + 48) + ((v88 << 10) | (16 * v89)));
      v91 = *v90;
      v92 = v90[1];

      v93 = v232;
      sub_1C6BC4E7C(v91, v92, v232);
      sub_1C6D3B618(v93, &unk_1EDCE5CE0, sub_1C6B3C1F8);
      sub_1C6B1E6A8(v254, v91, v92);

      if (!v85)
      {
        goto LABEL_38;
      }
    }
  }

  while (1)
  {
LABEL_38:
    v88 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    if (v88 >= v86)
    {
      break;
    }

    v85 = *(v82 + 8 * v88);
    ++v87;
    if (v85)
    {
      v87 = v88;
      goto LABEL_42;
    }
  }

  v94 = v235;
  v95 = *(v235 + 16);

  if (!v95)
  {
  }

  v96 = *(v94 + 64);
  v227 = v94 + 64;
  v97 = 1 << *(v94 + 32);
  if (v97 < 64)
  {
    v98 = ~(-1 << v97);
  }

  else
  {
    v98 = -1;
  }

  v99 = v98 & v96;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v100 = 0;
  v101 = (v97 + 63) >> 6;
  v103 = v246;
  v102 = v247;
  v236 = v101;
  while (2)
  {
    if (!v99)
    {
      if (v101 <= v100 + 1)
      {
        v105 = v100 + 1;
      }

      else
      {
        v105 = v101;
      }

      v106 = v105 - 1;
      while (1)
      {
        v104 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          break;
        }

        if (v104 >= v101)
        {
          sub_1C6D3B458();
          v114 = v167;
          (*(*(v167 - 8) + 56))(v103, 1, 1, v167);
          v108 = 0;
          v100 = v106;
          goto LABEL_60;
        }

        v99 = *(v227 + 8 * v104);
        ++v100;
        if (v99)
        {
          v100 = v104;
          goto LABEL_59;
        }
      }

      __break(1u);
      goto LABEL_151;
    }

    v104 = v100;
LABEL_59:
    v107 = __clz(__rbit64(v99));
    v108 = (v99 - 1) & v99;
    v109 = v107 | (v104 << 6);
    v110 = (*(v235 + 48) + 16 * v109);
    v112 = *v110;
    v111 = v110[1];
    sub_1C6D3B544(*(v235 + 56) + *(v250 + 72) * v109, v102, sub_1C6B3C1F8);
    sub_1C6D3B458();
    v114 = v113;
    v115 = *(v113 + 48);
    *v103 = v112;
    v103[1] = v111;
    sub_1C6D3B674(v102, v103 + v115, sub_1C6B3C1F8);
    (*(*(v114 - 8) + 56))(v103, 0, 1, v114);

LABEL_60:
    v116 = v245;
    sub_1C6D3B4C4(v103, v245);
    sub_1C6D3B458();
    if ((*(*(v114 - 8) + 48))(v116, 1, v114) != 1)
    {
      v249 = v108;
      v118 = *v116;
      v117 = v116[1];
      v119 = v116 + *(v114 + 48);
      v120 = v243;
      v121 = *&v119[*(v243 + 48)];
      v122 = sub_1C6D78630();
      v248 = *(v122 - 8);
      v123 = *(v248 + 4);
      (v123)(v242, v119, v122);
      v124 = *(v120 + 48);
      v125 = v252;
      v123();
      *(v125 + v124) = v121;
      v126 = *v251;
      v127 = *(*v251 + 16);
      v128 = v117;
      v253 = v118;
      if (v127)
      {
        v129 = sub_1C6B5DEA8(v118, v117);
        if (v130)
        {
          v131 = *(v250 + 72);
          v132 = v234;
          sub_1C6D3B544(*(v126 + 56) + v131 * v129, v234, sub_1C6B3C1F8);
          v133 = v233;
          sub_1C6D3B674(v132, v233, sub_1C6B3C1F8);
          v134 = v247;
          sub_1C6D3B544(v133, v247, sub_1C6B3C1F8);
          v135 = sub_1C6D78620();
          v136 = *(v248 + 1);
          v136(v134, v122);
          if (v135)
          {

            sub_1C6D3B6DC(v133, sub_1C6B3C1F8);
            sub_1C6D3B6DC(v252, sub_1C6B3C1F8);
            v102 = v134;
            v103 = v246;
            v101 = v236;
            v99 = v249;
            if (v237)
            {
              continue;
            }

            goto LABEL_132;
          }

          v248 = v131;
          v181 = v252;
          sub_1C6D3B544(v252, v134, sub_1C6B3C1F8);
          v71 = sub_1C6D78620();
          v136(v134, v122);
          v99 = v249;
          if (v71 == 1)
          {
            v182 = *(v244 + 16);
            v183 = v237;
            if (v182 < v230)
            {
              v183 = 1;
            }

            v103 = v246;
            if (v183 == 1)
            {
              v155 = __OFADD__(v182, 1);
              v184 = v182 + 1;
              if (v155)
              {
                goto LABEL_159;
              }

              *(v244 + 16) = v184;
              v185 = *(v238 + 16);
              v155 = __OFSUB__(v185, 1);
              v186 = v185 - 1;
              if (v155)
              {
                goto LABEL_161;
              }

              *(v238 + 16) = v186;
              sub_1C6D3B544(v252, v228, sub_1C6B3C1F8);
              v187 = v251;
              v188 = *v251;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v254[0] = *v187;
              v190 = v254[0];
              *v187 = 0x8000000000000000;
              v191 = sub_1C6B5DEA8(v253, v128);
              v193 = *(v190 + 16);
              v194 = (v192 & 1) == 0;
              v155 = __OFADD__(v193, v194);
              v195 = v193 + v194;
              if (v155)
              {
                goto LABEL_162;
              }

              v196 = v192;
              if (*(v190 + 24) >= v195)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_121;
                }

                v219 = v191;
                sub_1C6B751D4();
                v191 = v219;
                v208 = v253;
                if ((v196 & 1) == 0)
                {
                  goto LABEL_137;
                }

LABEL_122:
                v209 = v191;

                v210 = v254[0];
                sub_1C6D3B3F4(v228, *(v254[0] + 56) + v209 * v248);
                sub_1C6D3B6DC(v133, sub_1C6B3C1F8);
                sub_1C6D3B6DC(v252, sub_1C6B3C1F8);
              }

              else
              {
                sub_1C6B72894(v195, isUniquelyReferenced_nonNull_native);
                v191 = sub_1C6B5DEA8(v253, v128);
                if ((v196 & 1) != (v197 & 1))
                {
LABEL_165:
                  result = sub_1C6D7A1C0();
                  __break(1u);
                  return result;
                }

LABEL_121:
                v208 = v253;
                if (v196)
                {
                  goto LABEL_122;
                }

LABEL_137:
                v210 = v254[0];
                *(v254[0] + 8 * (v191 >> 6) + 64) |= 1 << v191;
                v220 = (v210[6] + 16 * v191);
                *v220 = v208;
                v220[1] = v128;
                sub_1C6D3B674(v228, v210[7] + v191 * v248, sub_1C6B3C1F8);
                sub_1C6D3B6DC(v133, sub_1C6B3C1F8);
                sub_1C6D3B6DC(v252, sub_1C6B3C1F8);
                v221 = v210[2];
                v155 = __OFADD__(v221, 1);
                v222 = v221 + 1;
                if (v155)
                {
                  goto LABEL_163;
                }

                v210[2] = v222;
              }

              v102 = v247;
              v101 = v236;
              v223 = *v251;
              *v251 = v210;
LABEL_131:

              if (v237)
              {
                continue;
              }

              goto LABEL_132;
            }

            v205 = *(v238 + 16);
            v155 = __OFSUB__(v205, 1);
            v206 = v205 - 1;
            v71 = v253;
            if (v155)
            {
              goto LABEL_160;
            }

            *(v238 + 16) = v206;
            v207 = v232;
            sub_1C6BC4E7C(v71, v128, v232);
            sub_1C6D3B618(v207, &unk_1EDCE5CE0, sub_1C6B3C1F8);
            sub_1C6B1E6A8(v254, v71, v128);

            sub_1C6D3B6DC(v133, sub_1C6B3C1F8);
            sub_1C6D3B6DC(v252, sub_1C6B3C1F8);
            v102 = v247;
            v101 = v236;
LABEL_132:
            if (*(v244 + 16) >= v230 && (*(v240 + 88) & 1) == 0 && *(v238 + 16) >= *(v240 + 80))
            {

              goto LABEL_143;
            }

            continue;
          }

          sub_1C6D3B6DC(v133, sub_1C6B3C1F8);
          v180 = v181;
LABEL_111:
          sub_1C6D3B6DC(v180, sub_1C6B3C1F8);
          v102 = v247;
LABEL_112:
          v103 = v246;
          v101 = v236;
          if (v237)
          {
            continue;
          }

          goto LABEL_132;
        }
      }

      v137 = *v241;
      v138 = v252;
      v99 = v249;
      if (*(*v241 + 16))
      {
        v139 = *(v137 + 40);
        sub_1C6D7A260();

        v140 = v253;
        sub_1C6D79610();
        v141 = sub_1C6D7A2B0();
        v142 = -1 << *(v137 + 32);
        v143 = v141 & ~v142;
        if ((*(v137 + 56 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143))
        {
          v144 = v140;
          v145 = v128;
          v146 = ~v142;
          while (1)
          {
            v147 = (*(v137 + 48) + 16 * v143);
            if (*v147 == v144 && v147[1] == v145)
            {
              break;
            }

            v149 = sub_1C6D7A130();
            v144 = v253;
            v145 = v128;
            if (v149)
            {
              break;
            }

            v143 = (v143 + 1) & v146;
            if (((*(v137 + 56 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143) & 1) == 0)
            {
              goto LABEL_75;
            }
          }

          v180 = v138;
          goto LABEL_111;
        }

LABEL_75:
      }

      v102 = v247;
      sub_1C6D3B544(v138, v247, sub_1C6B3C1F8);
      v150 = sub_1C6D78620();
      v151 = *(v248 + 1);
      v151(v102, v122);
      if (!v150)
      {
        v168 = *(v238 + 16);
        if ((*(v240 + 88) & 1) != 0 || v168 < *(v240 + 80))
        {
          v155 = __OFADD__(v168, 1);
          v169 = v168 + 1;
          if (v155)
          {
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          *(v238 + 16) = v169;
          sub_1C6D3B544(v138, v231, sub_1C6B3C1F8);
          v170 = v251;
          v171 = *v251;
          v172 = swift_isUniquelyReferenced_nonNull_native();
          v254[0] = *v170;
          v173 = v254[0];
          *v170 = 0x8000000000000000;
          v174 = sub_1C6B5DEA8(v253, v128);
          v176 = *(v173 + 16);
          v177 = (v175 & 1) == 0;
          v155 = __OFADD__(v176, v177);
          v178 = v176 + v177;
          v103 = v246;
          if (v155)
          {
            goto LABEL_154;
          }

          v71 = v175;
          if (*(v173 + 24) < v178)
          {
            sub_1C6B72894(v178, v172);
            v174 = sub_1C6B5DEA8(v253, v128);
            if ((v71 & 1) != (v179 & 1))
            {
              goto LABEL_165;
            }

LABEL_108:
            v198 = v253;
            if (v71)
            {
              goto LABEL_109;
            }

LABEL_124:
            v200 = v254[0];
            *(v254[0] + 8 * (v174 >> 6) + 64) |= 1 << v174;
            v212 = (v200[6] + 16 * v174);
            *v212 = v198;
            v212[1] = v128;
            sub_1C6D3B674(v231, v200[7] + *(v250 + 72) * v174, sub_1C6B3C1F8);
            sub_1C6D3B6DC(v252, sub_1C6B3C1F8);
            v213 = v200[2];
            v155 = __OFADD__(v213, 1);
            v214 = v213 + 1;
            if (v155)
            {
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
              goto LABEL_164;
            }

LABEL_129:
            v200[2] = v214;
LABEL_130:
            v101 = v236;
            v218 = *v251;
            *v251 = v200;
            goto LABEL_131;
          }

          if (v172)
          {
            goto LABEL_108;
          }

          v211 = v174;
          sub_1C6B751D4();
          v174 = v211;
          v198 = v253;
          if ((v71 & 1) == 0)
          {
            goto LABEL_124;
          }

LABEL_109:
          v199 = v174;

          v200 = v254[0];
          v201 = *(v254[0] + 56) + *(v250 + 72) * v199;
          v202 = v231;
LABEL_117:
          sub_1C6D3B3F4(v202, v201);
          sub_1C6D3B6DC(v252, sub_1C6B3C1F8);
          goto LABEL_130;
        }
      }

      sub_1C6D3B544(v138, v102, sub_1C6B3C1F8);
      v152 = sub_1C6D78620();
      v151(v102, v122);
      if (v152 != 1)
      {
        sub_1C6D3B6DC(v138, sub_1C6B3C1F8);

        goto LABEL_112;
      }

      v153 = *(v244 + 16);
      v154 = v237;
      if (v153 < v230)
      {
        v154 = 1;
      }

      v103 = v246;
      if (v154 != 1)
      {
        sub_1C6D3B6DC(v252, sub_1C6B3C1F8);

        v101 = v236;
        goto LABEL_132;
      }

      v155 = __OFADD__(v153, 1);
      v156 = v153 + 1;
      if (v155)
      {
        goto LABEL_155;
      }

      *(v244 + 16) = v156;
      sub_1C6D3B544(v252, v229, sub_1C6B3C1F8);
      v157 = v251;
      v158 = *v251;
      v159 = swift_isUniquelyReferenced_nonNull_native();
      v254[0] = *v157;
      v160 = v254[0];
      *v157 = 0x8000000000000000;
      v161 = sub_1C6B5DEA8(v253, v128);
      v163 = *(v160 + 16);
      v164 = (v162 & 1) == 0;
      v155 = __OFADD__(v163, v164);
      v165 = v163 + v164;
      if (v155)
      {
        goto LABEL_156;
      }

      v71 = v162;
      if (*(v160 + 24) >= v165)
      {
        if (v159)
        {
          goto LABEL_115;
        }

        v215 = v161;
        sub_1C6B751D4();
        v161 = v215;
        v203 = v253;
        if (v71)
        {
LABEL_116:
          v204 = v161;

          v200 = v254[0];
          v201 = *(v254[0] + 56) + *(v250 + 72) * v204;
          v202 = v229;
          goto LABEL_117;
        }
      }

      else
      {
        sub_1C6B72894(v165, v159);
        v161 = sub_1C6B5DEA8(v253, v128);
        if ((v71 & 1) != (v166 & 1))
        {
          goto LABEL_165;
        }

LABEL_115:
        v203 = v253;
        if (v71)
        {
          goto LABEL_116;
        }
      }

      v200 = v254[0];
      *(v254[0] + 8 * (v161 >> 6) + 64) |= 1 << v161;
      v216 = (v200[6] + 16 * v161);
      *v216 = v203;
      v216[1] = v128;
      sub_1C6D3B674(v229, v200[7] + *(v250 + 72) * v161, sub_1C6B3C1F8);
      sub_1C6D3B6DC(v252, sub_1C6B3C1F8);
      v217 = v200[2];
      v155 = __OFADD__(v217, 1);
      v214 = v217 + 1;
      if (v155)
      {
        goto LABEL_158;
      }

      goto LABEL_129;
    }

    break;
  }

  if (v237)
  {
LABEL_145:
    v63 = 0;
    goto LABEL_17;
  }

LABEL_143:
  v224 = v244;
  result = swift_beginAccess();
  if (*(v224 + 16) < v230 || (*(v240 + 88) & 1) != 0)
  {
    goto LABEL_145;
  }

  v225 = *(v240 + 80);
  v226 = v238;
  result = swift_beginAccess();
  v63 = *(v226 + 16) >= v225;
LABEL_17:
  *v239 = v63;
  return result;
}

uint64_t sub_1C6D359D8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v220 = a6;
  v214 = a5;
  v231 = a4;
  v219 = a3;
  v247 = a1;
  v248 = a2;
  v218 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v9 = *(*(v218 - 8) + 64);
  MEMORY[0x1EEE9AC00](v218);
  v250 = &v198 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B1B7C0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v232 = &v198 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v217 = &v198 - v15;
  v229 = sub_1C6D789A0();
  v244 = *(v229 - 8);
  v16 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v229);
  v228 = &v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v227 = &v198 - v19;
  sub_1C6B3C1F8();
  v236 = v20;
  v243 = *(v20 - 8);
  v21 = *(v243 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v198 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v212 = &v198 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v221 = &v198 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v225 = &v198 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v226 = &v198 - v31;
  sub_1C6B1B7C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v230 = &v198 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v215 = &v198 - v36;
  v233 = sub_1C6D78A00();
  v242 = *(v233 - 8);
  v37 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v233);
  v224 = &v198 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v216 = &v198 - v40;
  sub_1C6B1B7C0(0, &unk_1EDCE5CE0, sub_1C6B3C1F8);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v223 = &v198 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v222 = &v198 - v45;
  sub_1C6B1B7C0(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v235 = (&v198 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v49);
  v234 = (&v198 - v50);
  v51 = _s23EmbeddingValidityResultOMa(0);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v240 = &v198 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v239 = &v198 - v55;
  v246 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v241 = *(v246 - 8);
  v56 = *(v241 + 64);
  MEMORY[0x1EEE9AC00](v246);
  v238 = (&v198 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v58);
  v237 = (&v198 - v59);
  v213 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v60 = *(*(v213 - 8) + 64);
  MEMORY[0x1EEE9AC00](v213);
  v245 = &v198 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B1B7C0(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v65 = &v198 - v64;
  v66 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v67 = *(v66 - 8);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v70 = &v198 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v198 - v72;
  v74 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v78 = &v198 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = MEMORY[0x1E69E7CD0];
  v79 = *(v7 + 16);
  v80 = *(v79 + 16);
  if (!v80)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v210 = v23;
  v208 = a7;
  v209 = v7;
  v81 = 0;
  v254 = v79 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
  v253 = (v67 + 48);
  v241 += 48;
  v211 = (v242 + 48);
  v203 = (v242 + 32);
  v205 = (v242 + 8);
  v82 = v243;
  v242 = v243 + 56;
  v207 = (v244 + 48);
  v204 = (v244 + 32);
  v206 = (v244 + 8);
  v244 = MEMORY[0x1E69E7CC8];
  v83 = v250;
  v84 = v79;
  v249 = v66;
  v251 = v70;
  v252 = v76;
  while (v81 < *(v84 + 16))
  {
    sub_1C6D3B544(v254 + *(v76 + 72) * v81, v78, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    sub_1C6D3B5AC(v78, v65, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6D3B6DC(v78, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    if ((*v253)(v65, 1, v66) != 1)
    {
      v85 = v80;
      v86 = v84;
      sub_1C6D3B674(v65, v73, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v87 = v73;
      v88 = v73;
      v89 = v251;
      sub_1C6D3B544(v87, v251, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 3) < 0x12)
      {
        goto LABEL_8;
      }

      if (EnumCaseMultiPayload)
      {
        v89 = v251;
        if (EnumCaseMultiPayload == 1)
        {
LABEL_8:
          sub_1C6D3B6DC(v88, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          v83 = v250;
          sub_1C6D3B6DC(v89, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          v76 = v252;
          v73 = v88;
          goto LABEL_9;
        }

        sub_1C6D3B674(v251, v83, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
        v91 = v240;
        sub_1C6D43E04(v247, v248, v240);
        v92 = v91;
        v73 = v88;
        if ((*v241)(v91, 2, v246))
        {
          v93 = v250;
          sub_1C6D3B6DC(v250, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
          sub_1C6D3B6DC(v88, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          sub_1C6D3B6DC(v92, _s23EmbeddingValidityResultOMa);
          v83 = v93;
          v76 = v252;
LABEL_9:
          v84 = v86;
LABEL_10:
          v80 = v85;
LABEL_11:
          v66 = v249;
          goto LABEL_4;
        }

        sub_1C6D3B674(v91, v238, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v99 = v235;
        Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v235);
        v100 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
        v84 = v86;
        if ((*(*(v100 - 8) + 48))(v99, 1, v100) == 1)
        {
          sub_1C6D3B6DC(v238, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v83 = v250;
          sub_1C6D3B6DC(v250, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
          sub_1C6D3B6DC(v73, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          sub_1C6D3B618(v99, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v76 = v252;
          goto LABEL_10;
        }

        v118 = v99[1];
        v243 = *v99;
        v202 = v118;

        sub_1C6D3B6DC(v99, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v119 = v230;
        v80 = v85;
        v120 = v211;
        if ((v231 & 1) == 0)
        {
          sub_1C6D3B5AC(v250 + *(v218 + 28), v230, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          v121 = v233;
          v201 = *v120;
          if ((v201)(v119, 1, v233) == 1)
          {
            sub_1C6D789F0();
            v122 = (v201)(v119, 1, v121);
            v123 = v224;
            if (v122 != 1)
            {
              sub_1C6D3B618(v119, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
            }
          }

          else
          {
            v123 = v224;
            (*v203)(v224, v119, v121);
          }

          v131 = sub_1C6D789E0();
          (*v205)(v123, v233);
          if (v131 < v219)
          {
            sub_1C6B1E6A8(&v255, v243, v202);
            goto LABEL_50;
          }
        }

        v132 = v244;
        v133 = v202;
        if (*(v244 + 16) && (v134 = sub_1C6B5DEA8(v243, v202), (v135 & 1) != 0))
        {
          v136 = *(v132 + 56);
          v201 = *(v82 + 72);
          v137 = v223;
          sub_1C6D3B544(v136 + v201 * v134, v223, sub_1C6B3C1F8);
          (*(v82 + 56))(v137, 0, 1, v236);
          v138 = v137;
          v139 = v202;
          sub_1C6D3B618(v138, &unk_1EDCE5CE0, sub_1C6B3C1F8);
          if (!*(v132 + 16))
          {
            goto LABEL_50;
          }

          v140 = sub_1C6B5DEA8(v243, v139);
          if ((v141 & 1) == 0)
          {
            goto LABEL_50;
          }

          v142 = *(v244 + 56) + v140 * v201;
          v201 = sub_1C6B3C1F8;
          v143 = v212;
          sub_1C6D3B544(v142, v212, sub_1C6B3C1F8);
          sub_1C6D3B544(v143, v221, v201);
          v144 = sub_1C6D78620();
          v145 = v143;
          v133 = v202;
          sub_1C6D3B6DC(v145, sub_1C6B3C1F8);
          v146 = sub_1C6D78630();
          (*(*(v146 - 8) + 8))(v221, v146);
          if (v144)
          {
LABEL_50:

            sub_1C6D3B6DC(v238, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            v147 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead;
            v83 = v250;
            v148 = v250;
LABEL_79:
            sub_1C6D3B6DC(v148, v147);
            sub_1C6D3B6DC(v73, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
            v76 = v252;
            goto LABEL_11;
          }
        }

        else
        {
          v149 = v223;
          (*v242)(v223, 1, 1, v236);
          sub_1C6D3B618(v149, &unk_1EDCE5CE0, sub_1C6B3C1F8);
        }

        v150 = v243;
        sub_1C6D39EFC(v243, v133);

        v152 = *v238;
        v151 = v238[1];
        if (v208)
        {
          v199 = v238[1];

          v151 = v199;
          v201 = v150;
          v200 = v133;
        }

        else
        {
          v201 = 0;
          v200 = 0;
        }

        v153 = v232;
        sub_1C6B1CD10(v152, v151);
        sub_1C6D78610();
        v154 = type metadata accessor for Com_Apple_News_Personalization_Session();
        sub_1C6D3B5AC(v209 + *(v154 + 36), v153, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
        v155 = *v207;
        v156 = v153;
        v157 = v229;
        if ((*v207)(v156, 1, v229) == 1)
        {
          sub_1C6D78990();
          v158 = v155(v232, 1, v157);
          v159 = v228;
          if (v158 != 1)
          {
            sub_1C6D3B618(v232, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
          }
        }

        else
        {
          v159 = v228;
          (*v204)(v228, v232, v157);
        }

        v160 = *(v236 + 48);
        sub_1C6D78970();
        v162 = v161;
        (*v206)(v159, v157);
        v163 = v210;
        *&v210[v160] = v162;
        v164 = v221;
        sub_1C6D3B674(v163, v221, sub_1C6B3C1F8);
        v165 = v244;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v255 = v165;
        sub_1C6BC59E8(v164, v243, v202, isUniquelyReferenced_nonNull_native);

        sub_1C6D3B6DC(v238, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v83 = v250;
        sub_1C6D3B6DC(v250, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
        sub_1C6D3B6DC(v73, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v244 = v255;
        v76 = v252;
        goto LABEL_11;
      }

      v94 = v245;
      sub_1C6D3B674(v251, v245, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
      v95 = v239;
      sub_1C6D43E04(v247, v248, v239);
      if ((*v241)(v95, 2, v246))
      {
        sub_1C6D3B6DC(v94, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        sub_1C6D3B6DC(v88, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        sub_1C6D3B6DC(v95, _s23EmbeddingValidityResultOMa);
        v66 = v249;
        v83 = v250;
        v76 = v252;
        v73 = v88;
        v84 = v86;
        v80 = v85;
        goto LABEL_4;
      }

      sub_1C6D3B674(v95, v237, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v96 = v234;
      Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v234);
      v97 = v96;
      v98 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v73 = v88;
      v84 = v86;
      if ((*(*(v98 - 8) + 48))(v96, 1, v98) == 1)
      {
        sub_1C6D3B6DC(v237, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6D3B6DC(v245, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        sub_1C6D3B6DC(v73, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        sub_1C6D3B618(v96, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v66 = v249;
        v83 = v250;
        v76 = v252;
        v80 = v85;
        goto LABEL_4;
      }

      v101 = *v96;
      v102 = v96[1];

      sub_1C6D3B6DC(v97, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v103 = v101;
      v202 = v256;
      v104 = *(v256 + 16);
      v80 = v85;
      v243 = v103;
      if (v104)
      {
        v105 = v202;
        v106 = *(v202 + 40);
        sub_1C6D7A260();
        sub_1C6D79610();
        v107 = sub_1C6D7A2B0();
        v103 = v243;
        v108 = v105 + 56;
        v109 = -1 << *(v105 + 32);
        v110 = v107 & ~v109;
        if ((*(v108 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110))
        {
          v111 = v108;
          v201 = ~v109;
          while (1)
          {
            v112 = (*(v202 + 48) + 16 * v110);
            if (*v112 == v103 && v112[1] == v102)
            {
              break;
            }

            v114 = sub_1C6D7A130();
            v103 = v243;
            if (v114)
            {
              break;
            }

            v110 = (v110 + 1) & v201;
            if (((*(v111 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

LABEL_62:

          sub_1C6D3B6DC(v237, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_1C6D3B6DC(v245, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
          sub_1C6D3B6DC(v73, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_63:
          v83 = v250;
          v76 = v252;
          goto LABEL_11;
        }
      }

LABEL_31:
      if (*(v244 + 16))
      {
        v115 = sub_1C6B5DEA8(v103, v102);
        if (v116)
        {
          v117 = v222;
          sub_1C6D3B544(*(v244 + 56) + *(v82 + 72) * v115, v222, sub_1C6B3C1F8);
          (*(v82 + 56))(v117, 0, 1, v236);

          sub_1C6D3B6DC(v237, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_1C6D3B6DC(v245, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
          sub_1C6D3B6DC(v73, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          sub_1C6D3B618(v117, &unk_1EDCE5CE0, sub_1C6B3C1F8);
          goto LABEL_63;
        }
      }

      v124 = v222;
      (*v242)(v222, 1, 1, v236);
      sub_1C6D3B618(v124, &unk_1EDCE5CE0, sub_1C6B3C1F8);
      v125 = v211;
      v200 = v102;
      if ((v220 & 1) == 0)
      {
        v126 = v215;
        sub_1C6D3B5AC(v245 + *(v213 + 24), v215, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        v127 = v233;
        v202 = *v125;
        if ((v202)(v126, 1, v233) == 1)
        {
          sub_1C6D789F0();
          v128 = (v202)(v126, 1, v127);
          v129 = v216;
          v130 = v127;
          if (v128 != 1)
          {
            sub_1C6D3B618(v215, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          }
        }

        else
        {
          v129 = v216;
          (*v203)(v216, v126, v127);
          v130 = v127;
        }

        v167 = v129;
        v168 = sub_1C6D789E0();
        (*v205)(v167, v130);
        v102 = v200;
        if (v168 < v214)
        {
          goto LABEL_62;
        }
      }

      v170 = *v237;
      v169 = v237[1];
      if (v208)
      {
        v171 = v237[1];

        v169 = v171;
        v202 = v243;
        v201 = v102;
      }

      else
      {
        v202 = 0;
        v201 = 0;
      }

      v172 = v207;
      sub_1C6B1CD10(v170, v169);
      sub_1C6D78610();
      v173 = type metadata accessor for Com_Apple_News_Personalization_Session();
      v174 = v217;
      sub_1C6D3B5AC(v209 + *(v173 + 36), v217, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v175 = v229;
      v202 = *v172;
      if ((v202)(v174, 1, v229) == 1)
      {
        sub_1C6D78990();
        v176 = v175;
        if ((v202)(v174, 1, v175) != 1)
        {
          sub_1C6D3B618(v217, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
        }
      }

      else
      {
        (*v204)(v227, v174, v175);
        v176 = v175;
      }

      v177 = *(v236 + 48);
      v178 = v227;
      sub_1C6D78970();
      v180 = v179;
      (*v206)(v178, v176);
      v181 = v226;
      *&v226[v177] = v180;
      sub_1C6D3B674(v181, v225, sub_1C6B3C1F8);
      v182 = v244;
      LODWORD(v202) = swift_isUniquelyReferenced_nonNull_native();
      v255 = v182;
      v183 = v200;
      v185 = sub_1C6B5DEA8(v243, v200);
      v186 = *(v182 + 16);
      v187 = (v184 & 1) == 0;
      v188 = v186 + v187;
      if (__OFADD__(v186, v187))
      {
        goto LABEL_86;
      }

      if (*(v182 + 24) >= v188)
      {
        v83 = v250;
        if ((v202 & 1) == 0)
        {
          v202 = v185;
          LODWORD(v244) = v184;
          sub_1C6B751D4();
          LOBYTE(v184) = v244;
          v185 = v202;
          goto LABEL_75;
        }
      }

      else
      {
        LODWORD(v244) = v184;
        sub_1C6B72894(v188, v202);
        v189 = sub_1C6B5DEA8(v243, v183);
        v190 = v184 & 1;
        LOBYTE(v184) = v244;
        if ((v244 & 1) != v190)
        {
          goto LABEL_88;
        }

        v185 = v189;
LABEL_75:
        v83 = v250;
      }

      if ((v184 & 1) == 0)
      {
        v192 = v255;
        v255[(v185 >> 6) + 8] |= 1 << v185;
        v193 = (v192[6] + 16 * v185);
        *v193 = v243;
        v193[1] = v183;
        sub_1C6D3B674(v225, v192[7] + *(v82 + 72) * v185, sub_1C6B3C1F8);
        sub_1C6D3B6DC(v237, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6D3B6DC(v245, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        sub_1C6D3B6DC(v73, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v194 = v192[2];
        v195 = __OFADD__(v194, 1);
        v196 = v194 + 1;
        if (v195)
        {
          goto LABEL_87;
        }

        v244 = v192;
        v192[2] = v196;
        v76 = v252;
        goto LABEL_11;
      }

      v191 = v185;

      v244 = v255;
      sub_1C6D3B3F4(v225, v255[7] + *(v82 + 72) * v191);
      sub_1C6D3B6DC(v237, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v147 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
      v148 = v245;
      goto LABEL_79;
    }

    sub_1C6D3B618(v65, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v76 = v252;
LABEL_4:
    if (++v81 == v80)
    {
      return v244;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6D3784C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = sub_1C6D78630();
  v64 = *(v9 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v66 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = v57 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v57 - v15;
  sub_1C6B3C1F8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v65 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 200))
  {
    if (qword_1EDCE7180 != -1)
    {
      swift_once();
    }

    sub_1C6D79AC0();
    sub_1C6D78D30();
    goto LABEL_14;
  }

  v21 = *(a1 + 192);
  swift_beginAccess();
  v22 = v21 * *a4;
  if (COERCE__INT64(fabs(v22)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v22 < 9.22337204e18)
  {
    v63 = v18;
    v4 = v22;
    if (qword_1EDCE7180 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_9:
  sub_1C6B1D314();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C6D7EB10;
  v24 = MEMORY[0x1E69E6438];
  *(v23 + 56) = MEMORY[0x1E69E63B0];
  *(v23 + 64) = v24;
  v25 = MEMORY[0x1E69E6530];
  *(v23 + 32) = v21;
  v26 = MEMORY[0x1E69E65A8];
  *(v23 + 96) = v25;
  *(v23 + 104) = v26;
  *(v23 + 72) = v4;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  swift_beginAccess();
  v27 = *a3;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C6D7E630;
  *(v28 + 56) = v25;
  *(v28 + 64) = v26;
  *(v28 + 32) = v4;
  sub_1C6D79AC0();
  if (v27 <= v4)
  {
    sub_1C6D78D30();

LABEL_14:
    v35 = *a2;

    v37 = sub_1C6D32424(v36);

    swift_beginAccess();
    v38 = *a3;
    return v37;
  }

  sub_1C6D78D30();

  v29 = *a2;
  v30 = *(*a2 + 16);
  if (v30)
  {
    v31 = sub_1C6B67500(*(*a2 + 16), 0);
    v32 = v63;
    sub_1C6B68478(v67, v31 + ((*(v63 + 80) + 32) & ~*(v63 + 80)), v30, v29);
    v34 = v33;
    v61 = v67[3];
    v62 = v67[2];
    v60 = v67[4];
    swift_bridgeObjectRetain_n();
    sub_1C6B688C4();
    if (v34 != v30)
    {
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {
    v40 = *a2;

    v31 = MEMORY[0x1E69E7CC0];
    v32 = v63;
  }

  v58 = v4;
  v67[0] = v31;
  sub_1C6D32814(v67);

  v41 = v67[0][2];
  if (v41)
  {
    v60 = 0;
    v42 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v57[1] = v67[0];
    v43 = v67[0] + v42;
    v44 = *(v32 + 72);
    v45 = (v64 + 32);
    v61 = (v64 + 16);
    v62 = (v64 + 8);
    v63 = v44;
    v37 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v49 = v65;
      sub_1C6D3B544(v43, v65, sub_1C6B3C1F8);
      v50 = *v45;
      (*v45)(v16, v49, v9);
      if (sub_1C6D78620())
      {
        (*v61)(v66, v16, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1C6B67290(0, v37[2] + 1, 1, v37);
        }

        v52 = v37[2];
        v51 = v37[3];
        if (v52 >= v51 >> 1)
        {
          v37 = sub_1C6B67290(v51 > 1, v52 + 1, 1, v37);
        }

        v46 = v64;
        (*(v64 + 8))(v16, v9);
        v37[2] = v52 + 1;
        v47 = v37 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v52;
        v48 = v66;
      }

      else
      {
        v53 = v60;
        if (v60 >= v58)
        {
          (*v62)(v16, v9);
          goto LABEL_21;
        }

        (*v61)(v59, v16, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1C6B67290(0, v37[2] + 1, 1, v37);
        }

        v55 = v37[2];
        v54 = v37[3];
        if (v55 >= v54 >> 1)
        {
          v37 = sub_1C6B67290(v54 > 1, v55 + 1, 1, v37);
        }

        v60 = (v53 + 1);
        v56 = v64;
        (*(v64 + 8))(v16, v9);
        v37[2] = v55 + 1;
        v47 = v37 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v55;
        v48 = v59;
      }

      v50(v47, v48, v9);
LABEL_21:
      v43 += v63;
      if (!--v41)
      {

        return v37;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C6D37FE8(void *a1)
{
  v3 = v1;
  sub_1C6D3BC64(0, &unk_1EC1D98F8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v17[-v9 - 8];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D3BC10();
  sub_1C6D7A300();
  v12 = *v3;
  LOBYTE(v18) = 0;
  sub_1C6D7A080();
  if (!v2)
  {
    v18 = *(v3 + 1);
    v19 = v18;
    v17[23] = 1;
    sub_1C6D3BCC8(&v19, v17);
    sub_1C6B1CCBC();
    sub_1C6D7A090();
    sub_1C6B1C9F0(v18, *(&v18 + 1));
    v13 = v3[3];
    v14 = v3[4];
    LOBYTE(v18) = 2;
    sub_1C6D7A040();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1C6D381C0()
{
  v1 = 0x6E69646465626D65;
  if (*v0 != 1)
  {
    v1 = 0x656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_1C6D38220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6D3B894(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6D38248(uint64_t a1)
{
  v2 = sub_1C6D3BC10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6D38284(uint64_t a1)
{
  v2 = sub_1C6D3BC10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C6D382C0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D3B9AC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1C6D38308(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_1C6D37FE8(a1);
}

uint64_t sub_1C6D383D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_1C6D78EB0();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6D384A0, 0, 0);
}

uint64_t sub_1C6D384A0()
{
  if (qword_1EDCE7180 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v0[14] = qword_1EDCE7188;
  sub_1C6D79AC0();
  sub_1C6D78D30();
  sub_1C6D78EA0();
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_1C6D385B0;
  v3 = v0[7];

  return sub_1C6D328BC((v0 + 4));
}

uint64_t sub_1C6D385B0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1C6D3883C;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1C6D386CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

unint64_t sub_1C6D386CC()
{
  v1 = v0[12];
  v2 = v0[13];
  sub_1C6D78EA0();
  sub_1C6B1D314();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7E630;
  v4 = sub_1C6D78E90();
  result = sub_1C6D78E90();
  v6 = v4 - result;
  if (v4 < result)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[13];
    v8 = v0[14];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[9];
    v12 = v0[10];
    v13 = v0[8];
    v14 = MEMORY[0x1E69E6438];
    *(v3 + 56) = MEMORY[0x1E69E63B0];
    *(v3 + 64) = v14;
    *(v3 + 32) = v6 / 1000000.0;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v13(v15);
    v16 = *(v10 + 8);
    v16(v9, v12);
    v16(v7, v12);
    v18 = v0[12];
    v17 = v0[13];

    v19 = v0[1];

    return v19();
  }

  return result;
}

uint64_t sub_1C6D3883C()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[8];
  v3 = v0[9];
  (*(v0[11] + 8))(v0[13], v0[10]);
  sub_1C6D79AA0();
  sub_1C6B1D314();
  v5 = swift_allocObject();
  v0[2] = 0;
  *(v5 + 16) = xmmword_1C6D7E630;
  v0[3] = 0xE000000000000000;
  v0[6] = v1;
  sub_1C6B10A98(0, &qword_1EDCEA410);
  sub_1C6D79E60();
  v6 = v0[2];
  v7 = v0[3];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1C6B2064C();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_1C6D78D30();

  v4(v8);

  v10 = v0[12];
  v9 = v0[13];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1C6D389B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_userEmbeddingManager);
  UserEmbeddingManager.userEmbedding.getter(&v9);
  v2 = v9;
  if (v9)
  {
    v3 = v10;
    v4 = sub_1C6D75B70();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_1C6D75B60();
    v9 = v2;
    v10 = v3;
    sub_1C6D3B73C();
    v7 = sub_1C6D75B50();

    return v7;
  }

  else
  {
    if (qword_1EDCE7180 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6D78D30();
    return 0;
  }
}

uint64_t sub_1C6D38BD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C6BB6A40;

  return sub_1C6D383D0(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1C6D38CB4()
{
  result = qword_1EDCE6530;
  if (!qword_1EDCE6530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCE6530);
  }

  return result;
}

void sub_1C6D38D1C(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C6D7A0C0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C6B3C1F8();
        v6 = sub_1C6D797F0();
        *(v6 + 16) = v5;
      }

      sub_1C6B3C1F8();
      v8[0] = v6 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80));
      v8[1] = v5;
      sub_1C6D390A0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C6D38E48(0, v2, 1, a1);
  }
}

void sub_1C6D38E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1C6B3C1F8();
  v9 = v8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - v18;
  v32 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v37 = v20;
    v31 = v21;
    v25 = v20 + v21 * a3;
LABEL_5:
    v35 = v22;
    v36 = a3;
    v33 = v25;
    v34 = v24;
    while (1)
    {
      sub_1C6D3B544(v25, v19, sub_1C6B3C1F8);
      sub_1C6D3B544(v22, v15, sub_1C6B3C1F8);
      v26 = *(v9 + 48);
      v27 = *&v19[v26];
      v28 = *&v15[v26];
      sub_1C6D3B6DC(v15, sub_1C6B3C1F8);
      sub_1C6D3B6DC(v19, sub_1C6B3C1F8);
      if (v28 >= v27)
      {
LABEL_4:
        a3 = v36 + 1;
        v22 = v35 + v31;
        v24 = v34 - 1;
        v25 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      sub_1C6D3B674(v25, v12, sub_1C6B3C1F8);
      swift_arrayInitWithTakeFrontToBack();
      sub_1C6D3B674(v12, v22, sub_1C6B3C1F8);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1C6D390A0(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  sub_1C6B3C1F8();
  v10 = v9;
  v120 = *(v9 - 8);
  v11 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v115 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v123 = &v109 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v109 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v109 - v18;
  v122 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v104 = a4;
    }

    else
    {
LABEL_129:
      v104 = sub_1C6C73C90(a4);
    }

    v126 = v104;
    a4 = *(v104 + 2);
    if (a4 >= 2)
    {
      while (*v122)
      {
        v105 = *&v104[16 * a4];
        v106 = v104;
        v107 = *&v104[16 * a4 + 24];
        sub_1C6D39A04(*v122 + *(v120 + 72) * v105, *v122 + *(v120 + 72) * *&v104[16 * a4 + 16], *v122 + *(v120 + 72) * v107, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v107 < v105)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_1C6C73C90(v106);
        }

        if (a4 - 2 >= *(v106 + 2))
        {
          goto LABEL_123;
        }

        v108 = &v106[16 * a4];
        *v108 = v105;
        *(v108 + 1) = v107;
        v126 = v106;
        sub_1C6C73C04(a4 - 1);
        v104 = v126;
        a4 = *(v126 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v111 = a4;
  v125 = v10;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v116 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v120 + 72);
      v5 = *v122 + v25 * v24;
      v119 = *v122;
      v26 = v119;
      sub_1C6D3B544(v119 + v25 * v24, v19, sub_1C6B3C1F8);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v124;
      sub_1C6D3B544(v27, v124, sub_1C6B3C1F8);
      v30 = *(v10 + 48);
      v31 = *&v19[v30];
      v32 = *(v29 + v30);
      sub_1C6D3B6DC(v29, sub_1C6B3C1F8);
      sub_1C6D3B6DC(v19, sub_1C6B3C1F8);
      v110 = v28;
      v33 = v28 + 2;
      v121 = v25;
      v34 = v119 + v25 * (v28 + 2);
      while (v20 != v33)
      {
        sub_1C6D3B544(v34, v19, sub_1C6B3C1F8);
        v35 = v124;
        sub_1C6D3B544(v5, v124, sub_1C6B3C1F8);
        v36 = *(v125 + 48);
        v37 = *&v19[v36];
        v38 = *(v35 + v36);
        sub_1C6D3B6DC(v35, sub_1C6B3C1F8);
        sub_1C6D3B6DC(v19, sub_1C6B3C1F8);
        ++v33;
        v34 += v121;
        v5 += v121;
        if (v32 < v31 == v38 >= v37)
        {
          v20 = v33 - 1;
          break;
        }
      }

      v23 = v110;
      a4 = v111;
      v10 = v125;
      if (v32 < v31)
      {
        if (v20 < v110)
        {
          goto LABEL_126;
        }

        if (v110 < v20)
        {
          v109 = v6;
          v39 = v121 * (v20 - 1);
          v40 = v20 * v121;
          v41 = v20;
          v42 = v20;
          v43 = v110;
          v44 = v110 * v121;
          do
          {
            if (v43 != --v42)
            {
              v45 = *v122;
              if (!*v122)
              {
                goto LABEL_132;
              }

              v5 = v45 + v44;
              sub_1C6D3B674(v45 + v44, v115, sub_1C6B3C1F8);
              if (v44 < v39 || v5 >= v45 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1C6D3B674(v115, v45 + v39, sub_1C6B3C1F8);
            }

            ++v43;
            v39 -= v121;
            v40 -= v121;
            v44 += v121;
          }

          while (v43 < v42);
          v6 = v109;
          v23 = v110;
          a4 = v111;
          v10 = v125;
          v20 = v41;
        }
      }
    }

    v46 = v122[1];
    if (v20 < v46)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_125;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v46)
        {
          v47 = v122[1];
        }

        else
        {
          v47 = v23 + a4;
        }

        if (v47 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v20 != v47)
        {
          break;
        }
      }
    }

    v21 = v20;
    if (v20 < v23)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v22 = v116;
    }

    else
    {
      v22 = sub_1C6B657D0(0, *(v116 + 2) + 1, 1, v116);
    }

    a4 = *(v22 + 2);
    v48 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      v22 = sub_1C6B657D0((v48 > 1), a4 + 1, 1, v22);
    }

    *(v22 + 2) = v5;
    v49 = &v22[16 * a4];
    *(v49 + 4) = v23;
    *(v49 + 5) = v21;
    v50 = *v112;
    if (!*v112)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v52 = *(v22 + 4);
          v53 = *(v22 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_52:
          if (v55)
          {
            goto LABEL_113;
          }

          v68 = &v22[16 * v5];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_116;
          }

          v74 = &v22[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_120;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v78 = &v22[16 * v5];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_66:
        if (v73)
        {
          goto LABEL_115;
        }

        v81 = &v22[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_118;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v51 - 1;
        if (v51 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v122)
        {
          goto LABEL_131;
        }

        v89 = v22;
        v90 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v51 + 40];
        sub_1C6D39A04(*v122 + *(v120 + 72) * v90, *v122 + *(v120 + 72) * *&v22[16 * v51 + 32], *v122 + *(v120 + 72) * v5, v50);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v90)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v91 = v89;
        }

        else
        {
          v91 = sub_1C6C73C90(v89);
        }

        v10 = v125;
        if (a4 >= *(v91 + 2))
        {
          goto LABEL_110;
        }

        v92 = &v91[16 * a4];
        *(v92 + 4) = v90;
        *(v92 + 5) = v5;
        v126 = v91;
        sub_1C6C73C04(v51);
        v22 = v126;
        v5 = *(v126 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v22[16 * v5 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_111;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_112;
      }

      v63 = &v22[16 * v5];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_114;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_117;
      }

      if (v67 >= v59)
      {
        v85 = &v22[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_121;
        }

        if (v54 < v88)
        {
          v51 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = v122[1];
    a4 = v111;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  v109 = v6;
  v110 = v23;
  a4 = *v122;
  v93 = *(v120 + 72);
  v94 = *v122 + v93 * (v20 - 1);
  v95 = -v93;
  v96 = v23 - v20;
  v113 = v93;
  v114 = v47;
  v5 = a4 + v20 * v93;
LABEL_86:
  v121 = v20;
  v117 = v5;
  v118 = v96;
  v119 = v94;
  v97 = v125;
  while (1)
  {
    sub_1C6D3B544(v5, v19, sub_1C6B3C1F8);
    v98 = v124;
    sub_1C6D3B544(v94, v124, sub_1C6B3C1F8);
    v99 = *(v97 + 48);
    v100 = *&v19[v99];
    v101 = *(v98 + v99);
    sub_1C6D3B6DC(v98, sub_1C6B3C1F8);
    sub_1C6D3B6DC(v19, sub_1C6B3C1F8);
    if (v101 >= v100)
    {
LABEL_85:
      v20 = v121 + 1;
      v21 = v114;
      v94 = v119 + v113;
      v96 = v118 - 1;
      v5 = v117 + v113;
      if (v121 + 1 != v114)
      {
        goto LABEL_86;
      }

      v6 = v109;
      v23 = v110;
      v10 = v125;
      if (v114 < v110)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v102 = v123;
    sub_1C6D3B674(v5, v123, sub_1C6B3C1F8);
    v97 = v125;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C6D3B674(v102, v94, sub_1C6B3C1F8);
    v94 += v95;
    v5 += v95;
    if (__CFADD__(v96++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

void sub_1C6D39A04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a3;
  sub_1C6B3C1F8();
  v48 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v43 - v12;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_61;
  }

  v16 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v17 = (a2 - a1) / v15;
  v52 = a1;
  v51 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43[1] = v4;
    v26 = a4 + v19;
    if (v19 < 1)
    {
      v29 = a4 + v19;
    }

    else
    {
      v27 = -v15;
      v28 = a4 + v19;
      v29 = v26;
      v45 = v27;
      v46 = a4;
      do
      {
        v43[0] = v29;
        v30 = a2;
        v31 = a2 + v27;
        while (1)
        {
          v33 = v49;
          if (v30 <= a1)
          {
            v52 = v30;
            v50 = v43[0];
            goto LABEL_59;
          }

          v44 = v29;
          v49 += v27;
          v34 = v28 + v27;
          sub_1C6D3B544(v34, v13, sub_1C6B3C1F8);
          v35 = v31;
          v36 = v31;
          v37 = v13;
          v38 = v47;
          sub_1C6D3B544(v36, v47, sub_1C6B3C1F8);
          v39 = *(v48 + 48);
          v40 = *(v37 + v39);
          v41 = *(v38 + v39);
          v42 = v38;
          v13 = v37;
          sub_1C6D3B6DC(v42, sub_1C6B3C1F8);
          sub_1C6D3B6DC(v37, sub_1C6B3C1F8);
          if (v41 < v40)
          {
            break;
          }

          v29 = v34;
          if (v33 < v28 || v49 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v35;
          }

          else
          {
            v31 = v35;
            if (v33 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v34;
          v32 = v34 > v46;
          v27 = v45;
          if (!v32)
          {
            a2 = v30;
            goto LABEL_58;
          }
        }

        if (v33 < v30 || v49 >= v30)
        {
          a2 = v35;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v44;
          v27 = v45;
        }

        else
        {
          v29 = v44;
          v27 = v45;
          a2 = v35;
          if (v33 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v28 > v46);
    }

LABEL_58:
    v52 = a2;
    v50 = v29;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v20 = a4 + v18;
    v50 = a4 + v18;
    if (v18 >= 1 && a2 < v49)
    {
      do
      {
        sub_1C6D3B544(a2, v13, sub_1C6B3C1F8);
        v22 = v47;
        sub_1C6D3B544(a4, v47, sub_1C6B3C1F8);
        v23 = *(v48 + 48);
        v24 = *&v13[v23];
        v25 = *(v22 + v23);
        sub_1C6D3B6DC(v22, sub_1C6B3C1F8);
        sub_1C6D3B6DC(v13, sub_1C6B3C1F8);
        if (v25 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v15;
          a4 += v15;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v15)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        a1 += v15;
        v52 = a1;
      }

      while (a4 < v20 && a2 < v49);
    }
  }

LABEL_59:
  sub_1C6C73DEC(&v52, &v51, &v50);
}

uint64_t sub_1C6D39EFC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1C6D7A260();
  sub_1C6D79610();
  v7 = sub_1C6D7A2B0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1C6D7A130() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C6C25AB0();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1C6D3A2E8(v9);
  *v2 = v20;
  return v13;
}