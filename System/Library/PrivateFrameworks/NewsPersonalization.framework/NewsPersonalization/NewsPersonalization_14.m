uint64_t sub_1C6C65C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C68A94(a1, v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6C68A24(v8, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 20)
  {
    sub_1C6C514C8(v8, v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    sub_1C6C6851C(&qword_1EC1D7300, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
    sub_1C6D78CF0();
    return sub_1C6C51244(v12, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
  }

  result = sub_1C6C51244(v8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  __break(1u);
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEvent.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  sub_1C6C6851C(&qword_1EC1D83A0, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C65F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  sub_1C6D78A30();
  v6 = *(a1 + 24);
  v7 = sub_1C6D789A0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C6C6609C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C6851C(&qword_1EC1D83B0, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C66118@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE55D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE55D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C661C0(uint64_t a1)
{
  v2 = sub_1C6C6851C(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C6622C()
{
  sub_1C6C6851C(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B13_SessionEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1C6C50988(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v50 - v9;
  sub_1C6C68950(0, &unk_1EC1D6C40, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v54 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v50 - v12;
  v13 = sub_1C6D789A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69AA900];
  sub_1C6C50988(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v6);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v50 - v21;
  sub_1C6C68950(0, &qword_1EC1D6C50, &qword_1EDCE66F0, v18);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v50 - v26;
  v52 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v28 = *(v52 + 24);
  v29 = *(v24 + 56);
  v58 = a1;
  sub_1C6C68A94(a1 + v28, v27, &qword_1EDCE66F0, v18);
  v30 = v59 + v28;
  v31 = v59;
  sub_1C6C68A94(v30, &v27[v29], &qword_1EDCE66F0, v18);
  v32 = *(v14 + 48);
  if (v32(v27, 1, v13) != 1)
  {
    sub_1C6C68A94(v27, v22, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    if (v32(&v27[v29], 1, v13) != 1)
    {
      (*(v14 + 32))(v17, &v27[v29], v13);
      sub_1C6C6851C(&qword_1EC1D6C58, MEMORY[0x1E69AA900]);
      v37 = sub_1C6D79560();
      v38 = *(v14 + 8);
      v38(v17, v13);
      v38(v22, v13);
      sub_1C6C68A24(v27, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      if ((v37 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    (*(v14 + 8))(v22, v13);
LABEL_6:
    v33 = &qword_1EC1D6C50;
    v34 = &qword_1EDCE66F0;
    v35 = MEMORY[0x1E69AA900];
    v36 = v27;
LABEL_14:
    sub_1C6C689C8(v36, v33, v34, v35);
    goto LABEL_15;
  }

  if (v32(&v27[v29], 1, v13) != 1)
  {
    goto LABEL_6;
  }

  sub_1C6C68A24(v27, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
LABEL_8:
  v39 = *(v54 + 48);
  v40 = v57;
  sub_1C6C68A94(v58, v57, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  sub_1C6C68A94(v31, v40 + v39, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v41 = v56;
  v42 = *(v55 + 48);
  if (v42(v40, 1, v56) == 1)
  {
    if (v42(v40 + v39, 1, v41) == 1)
    {
      sub_1C6C68A24(v40, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_18:
      v49 = *(v52 + 20);
      sub_1C6D78A40();
      sub_1C6C6851C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v44 = sub_1C6D79560();
      return v44 & 1;
    }

    goto LABEL_13;
  }

  v43 = v53;
  sub_1C6C68A94(v40, v53, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  if (v42(v40 + v39, 1, v41) == 1)
  {
    sub_1C6C51244(v43, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_13:
    v33 = &unk_1EC1D6C40;
    v34 = qword_1EDCE5660;
    v35 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
    v36 = v40;
    goto LABEL_14;
  }

  v46 = v40 + v39;
  v47 = v51;
  sub_1C6C514C8(v46, v51, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v48 = _s19NewsPersonalization010Com_Apple_a1_B13_SessionEventV06OneOf_F0O2eeoiySbAE_AEtFZ_0(v43, v47);
  sub_1C6C51244(v47, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  sub_1C6C51244(v43, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  sub_1C6C68A24(v40, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  if (v48)
  {
    goto LABEL_18;
  }

LABEL_15:
  v44 = 0;
  return v44 & 1;
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B13_SessionEventV06OneOf_F0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v204 = a2;
  v205 = a1;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v187 = (&v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v168 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore();
  v5 = *(*(v168 - 8) + 64);
  MEMORY[0x1EEE9AC00](v168);
  v188 = (&v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v186 = (&v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v185 = (&v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v184 = (&v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v183 = (&v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v182 = (&v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v181 = (&v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v179 = (&v163 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v177 = (&v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v167 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed();
  v31 = *(*(v167 - 8) + 64);
  MEMORY[0x1EEE9AC00](v167);
  v180 = (&v163 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v166 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed();
  v33 = *(*(v166 - 8) + 64);
  MEMORY[0x1EEE9AC00](v166);
  v178 = (&v163 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted();
  v35 = *(*(v165 - 8) + 64);
  MEMORY[0x1EEE9AC00](v165);
  v176 = (&v163 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v164 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted();
  v37 = *(*(v164 - 8) + 64);
  MEMORY[0x1EEE9AC00](v164);
  v175 = (&v163 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v174 = (&v163 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked();
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v173 = &v163 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked();
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v172 = &v163 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v171 = (&v163 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v170 = (&v163 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v169 = &v163 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v163 = &v163 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v61 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v202 = (&v163 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v63);
  v203 = (&v163 - v64);
  MEMORY[0x1EEE9AC00](v65);
  v200 = (&v163 - v66);
  MEMORY[0x1EEE9AC00](v67);
  v198 = (&v163 - v68);
  MEMORY[0x1EEE9AC00](v69);
  v196 = (&v163 - v70);
  MEMORY[0x1EEE9AC00](v71);
  v194 = (&v163 - v72);
  MEMORY[0x1EEE9AC00](v73);
  v193 = (&v163 - v74);
  MEMORY[0x1EEE9AC00](v75);
  v192 = (&v163 - v76);
  MEMORY[0x1EEE9AC00](v77);
  v191 = (&v163 - v78);
  MEMORY[0x1EEE9AC00](v79);
  v190 = (&v163 - v80);
  MEMORY[0x1EEE9AC00](v81);
  v201 = (&v163 - v82);
  MEMORY[0x1EEE9AC00](v83);
  v199 = (&v163 - v84);
  MEMORY[0x1EEE9AC00](v85);
  v197 = (&v163 - v86);
  MEMORY[0x1EEE9AC00](v87);
  v195 = (&v163 - v88);
  MEMORY[0x1EEE9AC00](v89);
  v189 = (&v163 - v90);
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v163 - v92;
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v163 - v95;
  MEMORY[0x1EEE9AC00](v97);
  v99 = (&v163 - v98);
  MEMORY[0x1EEE9AC00](v100);
  v102 = (&v163 - v101);
  MEMORY[0x1EEE9AC00](v103);
  v105 = (&v163 - v104);
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v163 - v107;
  sub_1C6C68B14();
  v110 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109 - 8);
  v112 = &v163 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = *(v113 + 56);
  sub_1C6C68B78(v205, v112, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  v205 = v114;
  sub_1C6C68B78(v204, &v112[v114], type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C6C68B78(v112, v105, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v140 = v205;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v141 = v169;
        sub_1C6C514C8(&v112[v140], v169, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B27_SessionEventArticleVisitedV2eeoiySbAC_ACtFZ_0(v105, v141);
        v126 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
        sub_1C6C51244(v141, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited);
        v127 = v105;
        goto LABEL_47;
      }

      v158 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited;
      goto LABEL_89;
    case 2u:
      sub_1C6C68B78(v112, v102, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v133 = v205;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v119 = v170;
        sub_1C6C514C8(&v112[v133], v170, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B24_SessionEventArticleReadV2eeoiySbAC_ACtFZ_0(v102, v119);
        v121 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead;
        goto LABEL_46;
      }

      v157 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead;
      goto LABEL_85;
    case 3u:
      sub_1C6C68B78(v112, v99, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v135 = v205;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v136 = v171;
        sub_1C6C514C8(&v112[v135], v171, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventArticleSharedV2eeoiySbAC_ACtFZ_0(v99, v136);
        sub_1C6C51244(v136, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared);
        v127 = v99;
        v137 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared;
        goto LABEL_48;
      }

      v116 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared;
      v117 = v99;
      goto LABEL_90;
    case 4u:
      sub_1C6C68B78(v112, v96, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v124 = v205;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v125 = v172;
        sub_1C6C514C8(&v112[v124], v172, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B25_SessionEventArticleLikedV2eeoiySbAC_ACtFZ_0(v96, v125);
        v126 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked;
        sub_1C6C51244(v125, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
        v127 = v96;
        goto LABEL_47;
      }

      v116 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked;
      v117 = v96;
      goto LABEL_90;
    case 5u:
      sub_1C6C68B78(v112, v93, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v144 = v205;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v145 = v173;
        sub_1C6C514C8(&v112[v144], v173, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B28_SessionEventArticleDislikedV2eeoiySbAC_ACtFZ_0(v93, v145);
        v126 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked;
        sub_1C6C51244(v145, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
        v127 = v93;
        goto LABEL_47;
      }

      v116 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked;
      v117 = v93;
      goto LABEL_90;
    case 6u:
      v102 = v189;
      sub_1C6C68B78(v112, v189, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v147 = v205;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v119 = v174;
        sub_1C6C514C8(&v112[v147], v174, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B25_SessionEventArticleSavedV2eeoiySbAC_ACtFZ_0(v102, v119);
        v121 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved;
        goto LABEL_46;
      }

      v157 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved;
      goto LABEL_85;
    case 7u:
      v105 = v195;
      sub_1C6C68B78(v112, v195, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v138 = v205;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v158 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted;
        goto LABEL_89;
      }

      v130 = v175;
      sub_1C6C514C8(&v112[v138], v175, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted);
      if (*v105 == *v130 && v105[1] == v130[1] || (sub_1C6D7A130() & 1) != 0)
      {
        v139 = *(v164 + 20);
        sub_1C6D78A40();
        sub_1C6C6851C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        if (sub_1C6D79560())
        {
          v132 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted;
          goto LABEL_67;
        }
      }

      v161 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted;
      goto LABEL_98;
    case 8u:
      v105 = v197;
      sub_1C6C68B78(v112, v197, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v152 = v205;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v158 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted;
        goto LABEL_89;
      }

      v130 = v176;
      sub_1C6C514C8(&v112[v152], v176, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
      if (*v105 == *v130 && v105[1] == v130[1] || (sub_1C6D7A130() & 1) != 0)
      {
        v153 = *(v165 + 20);
        sub_1C6D78A40();
        sub_1C6C6851C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        if (sub_1C6D79560())
        {
          v132 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted;
          goto LABEL_67;
        }
      }

      v161 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted;
      goto LABEL_98;
    case 9u:
      v105 = v199;
      sub_1C6C68B78(v112, v199, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v129 = v205;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        v158 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
        goto LABEL_89;
      }

      v130 = v178;
      sub_1C6C514C8(&v112[v129], v178, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed);
      if (*v105 == *v130 && v105[1] == v130[1] || (sub_1C6D7A130() & 1) != 0)
      {
        v131 = *(v166 + 20);
        sub_1C6D78A40();
        sub_1C6C6851C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        if (sub_1C6D79560())
        {
          v132 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
          goto LABEL_67;
        }
      }

      v161 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed;
      goto LABEL_98;
    case 0xAu:
      v105 = v201;
      sub_1C6C68B78(v112, v201, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v150 = v205;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v158 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed;
        goto LABEL_89;
      }

      v130 = v180;
      sub_1C6C514C8(&v112[v150], v180, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
      if (*v105 == *v130 && v105[1] == v130[1] || (sub_1C6D7A130() & 1) != 0)
      {
        v151 = *(v167 + 20);
        sub_1C6D78A40();
        sub_1C6C6851C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
        if (sub_1C6D79560())
        {
          v132 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed;
          goto LABEL_67;
        }
      }

      v161 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed;
      goto LABEL_98;
    case 0xBu:
      v102 = v190;
      sub_1C6C68B78(v112, v190, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v123 = v205;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v119 = v177;
        sub_1C6C514C8(&v112[v123], v177, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B24_SessionEventTagFeedViewV2eeoiySbAC_ACtFZ_0(v102, v119);
        v121 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView;
        goto LABEL_46;
      }

      v157 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView;
      goto LABEL_85;
    case 0xCu:
      v102 = v191;
      sub_1C6C68B78(v112, v191, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v128 = v205;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v119 = v179;
        sub_1C6C514C8(&v112[v128], v179, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B25_SessionEventTrackVisitedV2eeoiySbAC_ACtFZ_0(v102, v119);
        v121 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited;
        goto LABEL_46;
      }

      v157 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited;
      goto LABEL_85;
    case 0xDu:
      v102 = v192;
      sub_1C6C68B78(v112, v192, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v146 = v205;
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        v119 = v181;
        sub_1C6C514C8(&v112[v146], v181, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventTrackListenedV2eeoiySbAC_ACtFZ_0(v102, v119);
        v121 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened;
        goto LABEL_46;
      }

      v157 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened;
      goto LABEL_85;
    case 0xEu:
      v102 = v193;
      sub_1C6C68B78(v112, v193, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v122 = v205;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v119 = v182;
        sub_1C6C514C8(&v112[v122], v182, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventTrackFinishedV2eeoiySbAC_ACtFZ_0(v102, v119);
        v121 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished;
        goto LABEL_46;
      }

      v157 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished;
      goto LABEL_85;
    case 0xFu:
      v102 = v194;
      sub_1C6C68B78(v112, v194, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v134 = v205;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        v119 = v183;
        sub_1C6C514C8(&v112[v134], v183, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B27_SessionEventArticleUnlikedV2eeoiySbAC_ACtFZ_0(v102, v119);
        v121 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked;
        goto LABEL_46;
      }

      v157 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked;
      goto LABEL_85;
    case 0x10u:
      v102 = v196;
      sub_1C6C68B78(v112, v196, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v118 = v205;
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v119 = v184;
        sub_1C6C514C8(&v112[v118], v184, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B30_SessionEventArticleUndislikedV2eeoiySbAC_ACtFZ_0(v102, v119);
        v121 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked;
        goto LABEL_46;
      }

      v157 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked;
      goto LABEL_85;
    case 0x11u:
      v102 = v198;
      sub_1C6C68B78(v112, v198, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v142 = v205;
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        v119 = v185;
        sub_1C6C514C8(&v112[v142], v185, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B27_SessionEventArticleUnsavedV2eeoiySbAC_ACtFZ_0(v102, v119);
        v121 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved;
        goto LABEL_46;
      }

      v157 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved;
      goto LABEL_85;
    case 0x12u:
      v102 = v200;
      sub_1C6C68B78(v112, v200, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v148 = v205;
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        v119 = v186;
        sub_1C6C514C8(&v112[v148], v186, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B26_SessionEventSportsTagSeenV2eeoiySbAC_ACtFZ_0(v102, v119);
        v121 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen;
        goto LABEL_46;
      }

      v157 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen;
      goto LABEL_85;
    case 0x13u:
      v105 = v203;
      sub_1C6C68B78(v112, v203, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v154 = v205;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        v158 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore;
LABEL_89:
        v116 = v158;
        v117 = v105;
        goto LABEL_90;
      }

      v130 = v188;
      sub_1C6C514C8(&v112[v154], v188, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore);
      if (*v105 == *v130 && v105[1] == v130[1] || (sub_1C6D7A130()) && (v155 = *(v168 + 20), sub_1C6D78A40(), sub_1C6C6851C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]), (sub_1C6D79560()))
      {
        v132 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore;
LABEL_67:
        v156 = v132;
        sub_1C6C51244(v130, v132);
        sub_1C6C51244(v105, v156);
        V2eeoiySbAC_ACtFZ_0 = 1;
        v149 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
      }

      else
      {
        v161 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore;
LABEL_98:
        v162 = v161;
        sub_1C6C51244(v130, v161);
        sub_1C6C51244(v105, v162);
        V2eeoiySbAC_ACtFZ_0 = 0;
        v149 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
      }

      goto LABEL_91;
    case 0x14u:
      v102 = v202;
      sub_1C6C68B78(v112, v202, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v143 = v205;
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v119 = v187;
        sub_1C6C514C8(&v112[v143], v187, type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B31_SessionEventNotificationVendedV2eeoiySbAC_ACtFZ_0(v102, v119);
        v121 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended;
LABEL_46:
        v126 = v121;
        sub_1C6C51244(v119, v121);
        v127 = v102;
        goto LABEL_47;
      }

      v157 = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended;
LABEL_85:
      v116 = v157;
      v117 = v102;
      goto LABEL_90;
    default:
      sub_1C6C68B78(v112, v108, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v115 = v205;
      if (swift_getEnumCaseMultiPayload())
      {
        v116 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
        v117 = v108;
LABEL_90:
        sub_1C6C51244(v117, v116);
        V2eeoiySbAC_ACtFZ_0 = 0;
        v149 = sub_1C6C68B14;
      }

      else
      {
        v160 = v163;
        sub_1C6C514C8(&v112[v115], v163, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        V2eeoiySbAC_ACtFZ_0 = _s19NewsPersonalization010Com_Apple_a1_B24_SessionEventArticleSeenV2eeoiySbAC_ACtFZ_0(v108, v160);
        v126 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
        sub_1C6C51244(v160, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        v127 = v108;
LABEL_47:
        v137 = v126;
LABEL_48:
        sub_1C6C51244(v127, v137);
        v149 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
      }

LABEL_91:
      sub_1C6C51244(v112, v149);
      return V2eeoiySbAC_ACtFZ_0 & 1;
  }
}

uint64_t sub_1C6C6851C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6C68664()
{
  sub_1C6C50988(319, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v1 <= 0x3F)
    {
      sub_1C6C50988(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C6C68760()
{
  result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted();
                  if (v9 <= 0x3F)
                  {
                    result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed();
                    if (v10 <= 0x3F)
                    {
                      result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed();
                      if (v11 <= 0x3F)
                      {
                        result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
                        if (v12 <= 0x3F)
                        {
                          result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited();
                          if (v13 <= 0x3F)
                          {
                            result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened();
                            if (v14 <= 0x3F)
                            {
                              result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished();
                              if (v15 <= 0x3F)
                              {
                                result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked();
                                if (v16 <= 0x3F)
                                {
                                  result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked();
                                  if (v17 <= 0x3F)
                                  {
                                    result = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved();
                                    if (v18 <= 0x3F)
                                    {
                                      result = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen();
                                      if (v19 <= 0x3F)
                                      {
                                        result = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore();
                                        if (v20 <= 0x3F)
                                        {
                                          result = type metadata accessor for Com_Apple_News_Personalization_SessionEventNotificationVended();
                                          if (v21 <= 0x3F)
                                          {
                                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                                            return 0;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
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

void sub_1C6C68950(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6C50988(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6C689C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C68950(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6C68A24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6C50988(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6C68A94(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C50988(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1C6C68B14()
{
  if (!qword_1EC1D84A0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D84A0);
    }
  }
}

uint64_t sub_1C6C68B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C68BE0(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B37F88();
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6C68DC8();
    result = sub_1C6D77FE0();
    if (v10[3])
    {
      v6 = type metadata accessor for DiagnosticFileProvider();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR____TtC19NewsPersonalization22DiagnosticFileProvider_computeService] = v4;
      sub_1C6B16F28(v10, &v7[OBJC_IVAR____TtC19NewsPersonalization22DiagnosticFileProvider_personalizationInspectionGroupProvider]);
      v9.receiver = v7;
      v9.super_class = v6;
      v8 = objc_msgSendSuper2(&v9, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v10);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C6C68CE0(uint64_t a1, void *a2)
{
  v2 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for DiagnosticFileProvider();
  v3 = sub_1C6D77FD0();
  if (v3)
  {
    sub_1C6C68D70();
    sub_1C6D78130();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1C6C68D70()
{
  result = qword_1EC1D84A8;
  if (!qword_1EC1D84A8)
  {
    type metadata accessor for DiagnosticFileProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D84A8);
  }

  return result;
}

unint64_t sub_1C6C68DC8()
{
  result = qword_1EDCDFC60;
  if (!qword_1EDCDFC60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCDFC60);
  }

  return result;
}

uint64_t sub_1C6C68E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 120) = a7;
  *(v8 + 128) = v7;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 80) = a1;
  *(v8 + 136) = *(a4 + 24);
  v9 = *(a4 + 56);
  *(v8 + 152) = *(a4 + 40);
  *(v8 + 160) = v9;
  return MEMORY[0x1EEE6DFA0](sub_1C6C68E6C, 0, 0);
}

uint64_t sub_1C6C68E6C()
{
  v1 = *(v0 + 128);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 168) = v6;
  *v6 = v0;
  v6[1] = sub_1C6C68F94;

  return v8(v2, v3);
}

uint64_t sub_1C6C68F94(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 168);
  v5 = *v3;
  v5[22] = a1;
  v5[23] = a2;
  v5[24] = v2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6C690CC, 0, 0);
  }
}

uint64_t sub_1C6C690CC()
{
  v271 = v0;
  if (qword_1EDCE23B8 != -1)
  {
    goto LABEL_213;
  }

  while (1)
  {
    v1 = *(v0 + 176);
    sub_1C6D79AC0();
    v2 = MEMORY[0x1E69E7CC0];
    sub_1C6D78D30();
    v266 = v1;
    v269 = v0;
    v262 = *(v1 + 16);
    if (!v262)
    {
      break;
    }

    v3 = *(v0 + 120);
    v4 = *(v0 + 104);
    v259 = *(v0 + 176) + 32;
    v0 = v3 + 56;

    v5 = 0;
    v257 = v2;
    while (v5 < *(v266 + 16))
    {
      v7 = v259 + 24 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      if (*(v3 + 16))
      {
        v11 = *(v3 + 40);
        sub_1C6D7A260();

        sub_1C6D79610();
        v12 = sub_1C6D7A2B0();
        v13 = -1 << *(v3 + 32);
        v14 = v12 & ~v13;
        if ((*(v0 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          v15 = ~v13;
          while (1)
          {
            v16 = (*(v3 + 48) + 16 * v14);
            v17 = *v16 == v9 && v16[1] == v8;
            if (v17 || (sub_1C6D7A130() & 1) != 0)
            {
              break;
            }

            v14 = (v14 + 1) & v15;
            if (((*(v0 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          v23 = v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1C6B66BA0(0, v2[2] + 1, 1, v2);
          }

          v25 = v23[2];
          v24 = v23[3];
          v2 = v23;
          if (v25 >= v24 >> 1)
          {
            v2 = sub_1C6B66BA0((v24 > 1), v25 + 1, 1, v23);
          }

          v2[2] = v25 + 1;
          v6 = &v2[5 * v25];
          v6[4] = v9;
          v6[5] = v8;
          *(v6 + 12) = v10;
          v6[7] = 0;
          goto LABEL_5;
        }
      }

      else
      {
      }

LABEL_19:
      v18 = *(v4 + 32);
      __swift_project_boxed_opaque_existential_1(*(v269 + 104), *(v4 + 24));

      v19 = sub_1C6CDE8A8(v9, v8);

      v20 = v19;
      if (v19 > 1u)
      {
        if (v19 != 2)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v257 = sub_1C6B66A5C(0, v257[2] + 1, 1, v257);
          }

          v29 = v257[2];
          v28 = v257[3];
          if (v29 >= v28 >> 1)
          {
            v257 = sub_1C6B66A5C((v28 > 1), v29 + 1, 1, v257);
          }

          v257[2] = v29 + 1;
          v30 = &v257[3 * v29];
          v30[4] = v9;
          v30[5] = v8;
          *(v30 + 12) = v10;
          goto LABEL_6;
        }

        v21 = v2;
        v22 = 5;
      }

      else
      {
        v21 = v2;
        if (v20)
        {
          v22 = 8;
        }

        else
        {
          v22 = 1;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1C6B66BA0(0, v21[2] + 1, 1, v21);
      }

      v27 = v21[2];
      v26 = v21[3];
      v2 = v21;
      if (v27 >= v26 >> 1)
      {
        v2 = sub_1C6B66BA0((v26 > 1), v27 + 1, 1, v21);
      }

      v2[2] = v27 + 1;
      v6 = &v2[5 * v27];
      v6[4] = v9;
      v6[5] = v8;
      *(v6 + 12) = v10;
      v6[7] = v22;
LABEL_5:
      *(v6 + 64) = 1;
LABEL_6:
      if (++v5 == v262)
      {
        v246 = v2;
        v0 = v269;
        v31 = *(v269 + 176);

        v2 = v257;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    swift_once();
  }

  v246 = v2;
LABEL_41:
  v32 = *(v0 + 152);
  sub_1C6B1D314();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C6D7EB10;
  v34 = v2[2];
  v35 = MEMORY[0x1E69E6530];
  v36 = MEMORY[0x1E69E65A8];
  *(v33 + 56) = MEMORY[0x1E69E6530];
  *(v33 + 64) = v36;
  *(v33 + 32) = v34;
  v37 = *(v266 + 16);
  *(v33 + 96) = v35;
  *(v33 + 104) = v36;
  *(v33 + 72) = v37;

  sub_1C6D79AC0();
  sub_1C6D78D30();

  sub_1C6B75C84(v32, v2);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1C6D7EB10;
  v242 = v43;
  v243 = v41;
  v45 = (v43 >> 1) - v41;
  if (__OFSUB__(v43 >> 1, v41))
  {
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
    goto LABEL_217;
  }

  v240 = v39;
  v46 = *(v0 + 184);
  v47 = *(v0 + 152);
  *(v44 + 56) = v35;
  *(v44 + 64) = v36;
  v250 = v45;
  *(v44 + 32) = v45;
  *(v44 + 96) = v35;
  *(v44 + 104) = v36;
  *(v44 + 72) = v47;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v258 = v2;
  v263 = *(v46 + 16);
  v267 = v46;
  if (v263)
  {
    v48 = *(v0 + 120);
    v255 = *(v0 + 104);
    v260 = *(v0 + 184) + 32;
    v49 = v48 + 56;

    v50 = 0;
    v51 = MEMORY[0x1E69E7CC0];
    v253 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v50 >= *(v267 + 16))
      {
        goto LABEL_207;
      }

      v52 = v260 + 24 * v50;
      v54 = *v52;
      v53 = *(v52 + 8);
      v55 = *(v52 + 16);
      if (*(v48 + 16))
      {
        v56 = *(v48 + 40);
        sub_1C6D7A260();

        sub_1C6D79610();
        v57 = sub_1C6D7A2B0();
        v58 = -1 << *(v48 + 32);
        v59 = v57 & ~v58;
        if ((*(v49 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
        {
          v60 = ~v58;
          while (1)
          {
            v61 = (*(v48 + 48) + 16 * v59);
            v62 = *v61 == v54 && v61[1] == v53;
            if (v62 || (sub_1C6D7A130() & 1) != 0)
            {
              break;
            }

            v59 = (v59 + 1) & v60;
            if (((*(v49 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
            {
              goto LABEL_56;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = sub_1C6B66BA0(0, v51[2] + 1, 1, v51);
          }

          v67 = v51[2];
          v66 = v51[3];
          if (v67 >= v66 >> 1)
          {
            v51 = sub_1C6B66BA0((v66 > 1), v67 + 1, 1, v51);
          }

          v51[2] = v67 + 1;
          v68 = &v51[5 * v67];
          v68[4] = v54;
          v68[5] = v53;
          *(v68 + 12) = v55;
          v68[7] = 0;
          goto LABEL_72;
        }
      }

      else
      {
      }

LABEL_56:
      v63 = *(v255 + 32);
      __swift_project_boxed_opaque_existential_1(*(v0 + 104), *(v255 + 24));

      v64 = sub_1C6CDE8A8(v54, v53);

      if (v64 <= 1u)
      {
        break;
      }

      if (v64 == 2)
      {
        v65 = 5;
LABEL_67:
        v0 = v269;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1C6B66BA0(0, v51[2] + 1, 1, v51);
        }

        v70 = v51[2];
        v69 = v51[3];
        if (v70 >= v69 >> 1)
        {
          v51 = sub_1C6B66BA0((v69 > 1), v70 + 1, 1, v51);
        }

        v51[2] = v70 + 1;
        v68 = &v51[5 * v70];
        v68[4] = v54;
        v68[5] = v53;
        *(v68 + 12) = v55;
        v68[7] = v65;
        goto LABEL_72;
      }

      v0 = v269;
      v71 = *(v269 + 112);

      LOBYTE(v71) = sub_1C6CDEB9C(v54, v53);

      if (v71)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v253 = sub_1C6B66A5C(0, v253[2] + 1, 1, v253);
        }

        v73 = v253[2];
        v72 = v253[3];
        if (v73 >= v72 >> 1)
        {
          v253 = sub_1C6B66A5C((v72 > 1), v73 + 1, 1, v253);
        }

        v253[2] = v73 + 1;
        v74 = &v253[3 * v73];
        v74[4] = v54;
        v74[5] = v53;
        *(v74 + 12) = v55;
        goto LABEL_73;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_1C6B66BA0(0, v51[2] + 1, 1, v51);
      }

      v76 = v51[2];
      v75 = v51[3];
      if (v76 >= v75 >> 1)
      {
        v51 = sub_1C6B66BA0((v75 > 1), v76 + 1, 1, v51);
      }

      v51[2] = v76 + 1;
      v68 = &v51[5 * v76];
      v68[4] = v54;
      v68[5] = v53;
      *(v68 + 12) = v55;
      v68[7] = 3;
LABEL_72:
      *(v68 + 64) = 1;
LABEL_73:
      if (++v50 == v263)
      {
        v77 = *(v0 + 184);

        v2 = v258;
        v78 = v253;
        goto LABEL_87;
      }
    }

    if (v64)
    {
      v65 = 8;
    }

    else
    {
      v65 = 1;
    }

    goto LABEL_67;
  }

  v51 = MEMORY[0x1E69E7CC0];
  v78 = MEMORY[0x1E69E7CC0];
LABEL_87:
  v79 = *(v0 + 160);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1C6D7EB10;
  v81 = v78[2];
  v82 = MEMORY[0x1E69E6530];
  *(v80 + 56) = MEMORY[0x1E69E6530];
  v83 = MEMORY[0x1E69E65A8];
  *(v80 + 64) = MEMORY[0x1E69E65A8];
  *(v80 + 32) = v81;
  v84 = *(v267 + 16);
  *(v80 + 96) = v82;
  *(v80 + 104) = v83;
  *(v80 + 72) = v84;

  sub_1C6D79AC0();
  sub_1C6D78D30();

  v254 = v78;
  sub_1C6B75C84(v79, v78);
  v245 = v85;
  v87 = v86;
  v89 = v88;
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_1C6D7EB10;
  v238 = v89;
  v244 = v87;
  if (__OFSUB__(v89 >> 1, v87))
  {
    goto LABEL_215;
  }

  v264 = v89 >> 1;
  v91 = *(v0 + 160);
  *(v90 + 56) = v82;
  *(v90 + 64) = v83;
  v251 = (v89 >> 1) - v87;
  *(v90 + 32) = v251;
  *(v90 + 96) = v82;
  *(v90 + 104) = v83;
  *(v90 + 72) = v91;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v92 = v2[2];
  if (v92 >= v250)
  {
    v93 = v250;
  }

  else
  {
    v93 = v2[2];
  }

  if ((v250 & 0x8000000000000000) != 0)
  {
    goto LABEL_216;
  }

  v94 = MEMORY[0x1E69E7CC0];
  v239 = v51;
  if (v92 > v250)
  {
    v95 = v92 - v93;
    v270[0] = MEMORY[0x1E69E7CC0];
    v96 = (v92 - v93) & ~((v92 - v93) >> 63);
    v0 = v258;

    sub_1C6B397F4(0, v96, 0);
    if ((v95 & 0x8000000000000000) != 0)
    {
LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

    v94 = v270[0];
    v97 = &v258[3 * v93 + 6];
    do
    {
      if (!v95)
      {
        goto LABEL_208;
      }

      v0 = *(v97 - 2);
      v98 = *(v97 - 1);
      v99 = *v97;
      v270[0] = v94;
      v101 = v94[2];
      v100 = v94[3];

      if (v101 >= v100 >> 1)
      {
        sub_1C6B397F4((v100 > 1), v101 + 1, 1);
        v94 = v270[0];
      }

      v94[2] = v101 + 1;
      v102 = &v94[3 * v101];
      v102[4] = v0;
      v102[5] = v98;
      *(v102 + 12) = v99;
      *(v102 + 52) = 0;
      v97 += 6;
      --v95;
    }

    while (v95);

    v0 = v269;
  }

  v103 = v254[2];
  v104 = v251;
  if (v103 >= v251)
  {
    v105 = v251;
  }

  else
  {
    v105 = v254[2];
  }

  v106 = MEMORY[0x1E69E65A8];
  if (v251 < 0)
  {
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
    goto LABEL_220;
  }

  v107 = MEMORY[0x1E69E7CC0];
  if (v103 <= v251)
  {
    goto LABEL_112;
  }

  v108 = v103 - v105;
  v270[0] = MEMORY[0x1E69E7CC0];
  v109 = (v103 - v105) & ~((v103 - v105) >> 63);

  sub_1C6B397F4(0, v109, 0);
  if (v108 < 0)
  {
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
    goto LABEL_223;
  }

  v107 = v270[0];
  v110 = &v254[3 * v105 + 6];
  v0 = 1;
  do
  {
    if (!v108)
    {
      goto LABEL_209;
    }

    v112 = *(v110 - 2);
    v111 = *(v110 - 1);
    v113 = *v110;
    v270[0] = v107;
    v115 = v107[2];
    v114 = v107[3];

    if (v115 >= v114 >> 1)
    {
      sub_1C6B397F4((v114 > 1), v115 + 1, 1);
      v107 = v270[0];
    }

    v107[2] = v115 + 1;
    v116 = &v107[3 * v115];
    v116[4] = v112;
    v116[5] = v111;
    *(v116 + 12) = v113;
    *(v116 + 52) = 1;
    v110 += 6;
    --v108;
  }

  while (v108);

  v0 = v269;
  v106 = MEMORY[0x1E69E65A8];
  v104 = v251;
LABEL_112:
  v117 = *(v0 + 192);
  v270[0] = v94;
  sub_1C6B38F04(v107);

  sub_1C6C6AF7C(v270);
  if (v117)
  {
  }

  v118 = v250 + v104;
  if (__OFADD__(v250, v104))
  {
    goto LABEL_222;
  }

  v119 = *(v0 + 144);
  v120 = __OFSUB__(v119, v118);
  v121 = v119 - v118;
  if (v120)
  {
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
    goto LABEL_229;
  }

  v122 = v270[0];
  v123 = *(v0 + 136);
  v124 = v121 & ~(v121 >> 63);
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_1C6D807C0;
  v126 = MEMORY[0x1E69E6530];
  *(v125 + 56) = MEMORY[0x1E69E6530];
  *(v125 + 64) = v106;
  *(v125 + 32) = v124;
  *(v125 + 96) = v126;
  *(v125 + 104) = v106;
  *(v125 + 72) = v119;
  v127 = v122[2];
  *(v125 + 136) = v126;
  *(v125 + 144) = v106;
  *(v125 + 112) = v127;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v234 = v124;
  sub_1C6B75C84(v124, v122);
  v235 = v128;
  v241 = v129;
  v237 = v130;
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_1C6D7E630;
  *(v131 + 56) = v126;
  *(v131 + 64) = v106;
  *(v131 + 32) = v123;
  v236 = v122;

  sub_1C6D79AC0();
  sub_1C6D78D30();

  v132 = MEMORY[0x1E69E7CC0];
  if (v104)
  {
    v270[0] = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v104, 0);
    v132 = v270[0];
    v133 = v264;
    if (v244 > v264)
    {
      v133 = v244;
    }

    v0 = v133 - v244;
    v134 = (v245 + 24 * v244 + 8);
    while (v0)
    {
      v136 = *(v134 - 1);
      v135 = *v134;
      v270[0] = v132;
      v138 = v132[2];
      v137 = v132[3];

      if (v138 >= v137 >> 1)
      {
        sub_1C6B39280((v137 > 1), v138 + 1, 1);
        v132 = v270[0];
      }

      v132[2] = v138 + 1;
      v139 = &v132[2 * v138];
      v139[4] = v136;
      v139[5] = v135;
      --v0;
      v134 += 3;
      if (!--v104)
      {
        goto LABEL_123;
      }
    }

    goto LABEL_210;
  }

LABEL_123:
  v0 = (v237 >> 1) - v241;
  if (__OFSUB__(v237 >> 1, v241))
  {
    goto LABEL_224;
  }

  v140 = MEMORY[0x1E69E7CC0];
  v141 = v269;
  if (!v0)
  {
    goto LABEL_135;
  }

  v270[0] = MEMORY[0x1E69E7CC0];
  sub_1C6B39280(0, v0 & ~(v0 >> 63), 0);
  if ((v0 & 0x8000000000000000) != 0)
  {
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v140 = v270[0];
  if (v241 <= (v237 >> 1))
  {
    v142 = v237 >> 1;
  }

  else
  {
    v142 = v241;
  }

  v143 = v142 - v241;
  v144 = (24 * v241 + v235 + 8);
  do
  {
    if (!v143)
    {
      goto LABEL_211;
    }

    v146 = *(v144 - 1);
    v145 = *v144;
    v270[0] = v140;
    v148 = v140[2];
    v147 = v140[3];

    if (v148 >= v147 >> 1)
    {
      sub_1C6B39280((v147 > 1), v148 + 1, 1);
      v140 = v270[0];
    }

    v140[2] = v148 + 1;
    v149 = &v140[2 * v148];
    v149[4] = v146;
    v149[5] = v145;
    --v143;
    v144 += 3;
    --v0;
  }

  while (v0);
  v141 = v269;
LABEL_135:
  v151 = v141[14];
  v150 = v141[15];
  v270[0] = v132;
  sub_1C6B38560(v140);
  v152 = v270[0];

  v0 = v141;
  v153 = sub_1C6C26A28(v152, v150);

  v154 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  v155 = [v151 defaultTags];
  if (!v155)
  {
LABEL_232:

    __break(1u);
LABEL_233:

    __break(1u);
    return result;
  }

  v156 = v155;
  v158 = v141[22];
  v157 = v141[23];
  sub_1C6B18500();
  v159 = sub_1C6D79490();

  v160 = sub_1C6C6BED4(v159, v158, v157);

  v265 = *(v160 + 16);
  if (v265)
  {
    v161 = 0;
    v261 = v160 + 32;
    v162 = v153 + 56;
    v247 = v141[23] + 48;
    v163 = MEMORY[0x1E69E7CC0];
    v252 = *(v0 + 104);
    v248 = MEMORY[0x1E69E7CC0];
    v256 = v160;
    while (1)
    {
      if (v161 >= *(v160 + 16))
      {
        goto LABEL_212;
      }

      v164 = v261 + 32 * v161;
      v165 = *v164;
      v166 = *(v164 + 8);
      v0 = *(v164 + 16);
      v167 = *(v164 + 24);
      if (*(v153 + 16))
      {
        v168 = *(v153 + 40);
        sub_1C6D7A260();

        sub_1C6D79610();
        v169 = sub_1C6D7A2B0();
        v170 = -1 << *(v153 + 32);
        v171 = v169 & ~v170;
        if ((*(v162 + ((v171 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v171))
        {
          v172 = ~v170;
          while (1)
          {
            v173 = (*(v153 + 48) + 16 * v171);
            v174 = *v173 == v165 && v173[1] == v166;
            if (v174 || (sub_1C6D7A130() & 1) != 0)
            {
              break;
            }

            v171 = (v171 + 1) & v172;
            if (((*(v162 + ((v171 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v171) & 1) == 0)
            {
              goto LABEL_150;
            }
          }

          v177 = 0;
          if ((v167 & 1) == 0)
          {
            if ((v0 & 0x8000000000000000) != 0)
            {
              goto LABEL_218;
            }

            if (v0 >= *(v267 + 16))
            {
              goto LABEL_219;
            }

            v177 = *(v247 + 24 * v0);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v163 = sub_1C6B66BA0(0, v163[2] + 1, 1, v163);
          }

          v0 = v163[2];
          v178 = v163[3];
          if (v0 >= v178 >> 1)
          {
            v163 = sub_1C6B66BA0((v178 > 1), v0 + 1, 1, v163);
          }

          v163[2] = v0 + 1;
          v179 = &v163[5 * v0];
          v179[4] = v165;
          v179[5] = v166;
          *(v179 + 12) = v177;
          v179[7] = 0;
          goto LABEL_170;
        }
      }

      else
      {
      }

LABEL_150:
      v175 = *(v252 + 32);
      __swift_project_boxed_opaque_existential_1(*(v269 + 104), *(v252 + 24));
      v176 = sub_1C6CDE8A8(v165, v166);
      if (v176 <= 1)
      {
        break;
      }

      if (v176 == 2)
      {
        v0 = 5;
LABEL_165:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v163 = sub_1C6B66BA0(0, v163[2] + 1, 1, v163);
        }

        v181 = v163[2];
        v180 = v163[3];
        if (v181 >= v180 >> 1)
        {
          v163 = sub_1C6B66BA0((v180 > 1), v181 + 1, 1, v163);
        }

        v163[2] = v181 + 1;
        v179 = &v163[5 * v181];
        v179[4] = v165;
        v179[5] = v166;
        *(v179 + 12) = 0;
        v179[7] = v0;
        goto LABEL_170;
      }

      if ((v167 & 1) == 0)
      {
        if (*(v269 + 136) >= v0)
        {
          if ((v0 & 0x8000000000000000) != 0)
          {
            goto LABEL_226;
          }

          if (v0 >= *(v267 + 16))
          {
            goto LABEL_227;
          }

          v187 = *(v247 + 24 * v0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v248 = sub_1C6B66A5C(0, v248[2] + 1, 1, v248);
          }

          v0 = v248[2];
          v188 = v248[3];
          if (v0 >= v188 >> 1)
          {
            v248 = sub_1C6B66A5C((v188 > 1), v0 + 1, 1, v248);
          }

          v248[2] = v0 + 1;
          v189 = &v248[3 * v0];
          v189[4] = v165;
          v189[5] = v166;
          *(v189 + 12) = v187;
        }

        else
        {
          if ((v0 & 0x8000000000000000) != 0)
          {
            goto LABEL_225;
          }

          if (v0 >= *(v267 + 16))
          {
            goto LABEL_228;
          }

          v183 = *(v247 + 24 * v0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v163 = sub_1C6B66BA0(0, v163[2] + 1, 1, v163);
          }

          v185 = v163[2];
          v184 = v163[3];
          if (v185 >= v184 >> 1)
          {
            v163 = sub_1C6B66BA0((v184 > 1), v185 + 1, 1, v163);
          }

          v163[2] = v185 + 1;
          v186 = &v163[5 * v185];
          v186[4] = v165;
          v186[5] = v166;
          *(v186 + 12) = v183;
          v186[7] = v0;
          *(v186 + 64) = 0;
        }

        goto LABEL_171;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v163 = sub_1C6B66BA0(0, v163[2] + 1, 1, v163);
      }

      v0 = v163[2];
      v182 = v163[3];
      if (v0 >= v182 >> 1)
      {
        v163 = sub_1C6B66BA0((v182 > 1), v0 + 1, 1, v163);
      }

      v163[2] = v0 + 1;
      v179 = &v163[5 * v0];
      v179[4] = v165;
      v179[5] = v166;
      *(v179 + 12) = 0;
      v179[7] = 4;
LABEL_170:
      *(v179 + 64) = 1;
LABEL_171:
      ++v161;
      v160 = v256;
      if (v161 == v265)
      {
        v268 = v163;

        v190 = v248;
        v154 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
        goto LABEL_195;
      }
    }

    if (v176)
    {
      v0 = 8;
    }

    else
    {
      v0 = 1;
    }

    goto LABEL_165;
  }

  v190 = MEMORY[0x1E69E7CC0];
  v268 = MEMORY[0x1E69E7CC0];
LABEL_195:
  v191 = *(v269 + 112);
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_1C6D7EB10;
  v193 = v190[2];
  v194 = MEMORY[0x1E69E6530];
  *(v192 + 56) = MEMORY[0x1E69E6530];
  v195 = MEMORY[0x1E69E65A8];
  *(v192 + 64) = MEMORY[0x1E69E65A8];
  *(v192 + 32) = v193;
  v249 = v190;

  v196 = [v191 v154[107]];
  if (!v196)
  {
    goto LABEL_233;
  }

  v197 = v196;
  v199 = *(v269 + 176);
  v198 = *(v269 + 184);

  v200 = MEMORY[0x1E69E6158];
  v201 = sub_1C6D79490();

  v202 = *(v201 + 16);

  *(v192 + 96) = v194;
  *(v192 + 104) = v195;
  *(v192 + 72) = v202;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v203 = sub_1C6C6AB1C(0, v236, v234);
  v270[0] = v246;
  sub_1C6B38DF0(v203);

  sub_1C6C6ADFC(v270);

  v204 = v270[0];
  v205 = sub_1C6C6C148(0, v235, v241, v237);
  v206 = sub_1C6BEEEB4(v205);

  v207 = v206[2];
  v120 = __OFADD__(v207, v250);
  v208 = v207 + v250;
  if (v120)
  {
    goto LABEL_230;
  }

  v270[0] = sub_1C6B66A5C(0, v208 & ~(v208 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v209 = swift_unknownObjectRetain();
  sub_1C6B3C2D0(v209, v240, v243, v242);
  swift_unknownObjectRelease();
  sub_1C6B38CDC(v206);
  v210 = v270[0];

  v211 = sub_1C6C6AB1C(1, v236, v234);

  v270[0] = v239;
  sub_1C6B38DF0(v211);

  sub_1C6C6ADFC(v270);

  v213 = v270[0];

  v214 = sub_1C6C6C148(1, v235, v241, v237);
  v215 = sub_1C6BEEEB4(v214);

  v216 = v215[2];
  v120 = __OFADD__(v216, v251);
  v217 = v216 + v251;
  if (v120)
  {
    goto LABEL_231;
  }

  v270[0] = sub_1C6B66A5C(0, v217 & ~(v217 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v218 = swift_unknownObjectRetain();
  sub_1C6B3C2D0(v218, v245, v244, v238);
  swift_unknownObjectRelease();
  sub_1C6B38CDC(v215);
  v219 = v270[0];
  sub_1C6D77FA0();
  if (sub_1C6D77F90())
  {
    v220 = swift_allocObject();
    *(v220 + 16) = xmmword_1C6D7E630;
    v222 = v268;
    v221 = v269;
    *(v269 + 64) = 0;
    *(v269 + 72) = 0xE000000000000000;
    *(v269 + 16) = v204;
    *(v269 + 24) = v210;
    v223 = v204;
    v224 = v249;
    *(v269 + 32) = v268;
    *(v269 + 40) = v249;
    *(v269 + 48) = v213;
    *(v269 + 56) = v219;
    sub_1C6C6C344();

    sub_1C6D79E60();

    v225 = v200;
    v226 = v210;
    v227 = v213;
    v229 = *(v269 + 64);
    v228 = *(v269 + 72);
    *(v220 + 56) = v225;
    *(v220 + 64) = sub_1C6B2064C();
    *(v220 + 32) = v229;
    *(v220 + 40) = v228;
    v213 = v227;
    v210 = v226;
    sub_1C6D79AC0();
    sub_1C6D78D30();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v222 = v268;
    v221 = v269;
    v223 = v204;
    v224 = v249;
  }

  v231 = v221[11];
  v230 = v221[12];
  v232 = v221[10];
  *v232 = v223;
  v232[1] = v210;
  *v231 = v222;
  v231[1] = v224;
  *v230 = v213;
  v230[1] = v219;
  v233 = v221[1];

  return v233();
}

uint64_t sub_1C6C6AB1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  if (a3 < 0)
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    v6 = result;

    v7 = MEMORY[0x1E69E7CC0];
    v8 = v6 & 1;
    v9 = v4;
    v10 = v4;
LABEL_6:
    v11 = 24 * v9;
    while (v3 != v10)
    {
      if (v9 < v4 || v10 >= v3)
      {
        __break(1u);
        goto LABEL_25;
      }

      v12 = *(a2 + v11 + 52);
      ++v10;
      v11 += 24;
      if (v12 == v8)
      {
        v13 = *(a2 + v11 + 16);
        v28 = *(a2 + v11 + 8);
        v14 = *(a2 + v11 + 24);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1C6B397F4(0, *(v7 + 16) + 1, 1);
        }

        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_1C6B397F4((v15 > 1), v16 + 1, 1);
        }

        *(v7 + 16) = v16 + 1;
        v17 = v7 + 24 * v16;
        *(v17 + 32) = v28;
        *(v17 + 40) = v13;
        *(v17 + 48) = v14;
        *(v17 + 52) = v12;
        v9 = v10;
        goto LABEL_6;
      }
    }

    v18 = *(v7 + 16);
    if (v18)
    {
      v29 = MEMORY[0x1E69E7CC0];
      v19 = v7;
      sub_1C6B39554(0, v18, 0);
      v20 = v29;
      v21 = (v19 + 48);
      do
      {
        v23 = *(v21 - 2);
        v22 = *(v21 - 1);
        v24 = *v21;
        v25 = *(v29 + 16);
        v26 = *(v29 + 24);

        if (v25 >= v26 >> 1)
        {
          sub_1C6B39554((v26 > 1), v25 + 1, 1);
        }

        *(v29 + 16) = v25 + 1;
        v27 = v29 + 40 * v25;
        *(v27 + 32) = v23;
        *(v27 + 40) = v22;
        *(v27 + 48) = v24;
        *(v27 + 56) = 7;
        *(v27 + 64) = 1;
        v21 += 6;
        --v18;
      }

      while (v18);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v20;
  }

  return result;
}

uint64_t sub_1C6C6AD4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a3 = *a1;
  *(a3 + 8) = v4;
  v6 = *(a2 + 16);
  v7 = v6 == 0;
  v8 = 0;
  if (v6)
  {
    v9 = (a2 + 40);
    while (1)
    {
      v10 = *(v9 - 1) == v5 && *v9 == v4;
      if (v10 || (sub_1C6D7A130() & 1) != 0)
      {
        break;
      }

      ++v8;
      v9 += 3;
      v7 = v6 == v8;
      if (v6 == v8)
      {
        v8 = 0;
        break;
      }
    }
  }

  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
}

uint64_t sub_1C6C6ADFC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C73FBC(v2);
  }

  v3 = v2[2];
  v22[0] = (v2 + 4);
  v22[1] = v3;
  result = sub_1C6D7A0C0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 7);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[8];
          if (*(v12 - 2) >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = *(v12 + 5);
          v17 = *(v12 + 48);
          v18 = *(v12 - 2);
          *(v12 + 1) = *(v12 - 6);
          *(v12 + 2) = v18;
          *(v12 + 6) = *(v12 + 1);
          *(v12 - 3) = v14;
          *(v12 - 2) = v15;
          *(v12 - 2) = v13;
          *v12 = v16;
          *(v12 + 8) = v17;
          v12 -= 10;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 10;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1C6B3C4F0(0, &qword_1EDCDFBC8);
      v7 = sub_1C6D797F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_1C6C6B0F4(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C6C6AF7C(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C73FD0(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_1C6D7A0C0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 5);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[8];
          if (v12[2] >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = *(v12 + 36);
          *(v12 + 1) = *(v12 - 2);
          *(v12 + 4) = *(v12 + 1);
          *(v12 - 1) = v14;
          *v12 = v15;
          v12[2] = v13;
          *(v12 + 12) = v16;
          v12 -= 6;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 6;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1C6B3C4F0(0, &qword_1EDCDFBC0);
      v7 = sub_1C6D797F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_1C6C6B6D8(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1C6C6B0F4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C6C73C90(v8);
      v8 = result;
    }

    v92 = (v8 + 16);
    v93 = *(v8 + 16);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = (v8 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_1C6C6BCA8((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v5)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v99 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7 + 16);
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 16);
      v13 = v9 + 2;
      v14 = (v11 + 56);
      while (v6 != v13)
      {
        v15 = *v14;
        v16 = v14[10];
        v14 += 10;
        ++v13;
        if (v12 < v10 == v15 >= v16)
        {
          v7 = v13 - 1;
          if (v12 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v17 = 40 * v7 - 16;
        v18 = 40 * v9 + 32;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v30 + v18);
            v22 = (v30 + v17);
            v23 = *(v21 - 4);
            v24 = *(v21 - 3);
            v25 = *(v21 - 4);
            v26 = *(v21 - 1);
            v27 = *v21;
            v28 = v22[1];
            v29 = *(v22 - 1);
            *(v21 - 2) = *(v22 - 3);
            *(v21 - 1) = v29;
            *v21 = v28;
            *(v22 - 3) = v23;
            *(v22 - 2) = v24;
            *(v22 - 2) = v25;
            *v22 = v26;
            *(v22 + 8) = v27;
          }

          ++v20;
          v17 -= 40;
          v18 += 40;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v45 = *(v8 + 16);
    v44 = *(v8 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_1C6B657D0((v44 > 1), v45 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v46;
    v47 = v8 + 32;
    v48 = (v8 + 32 + 16 * v45);
    *v48 = v9;
    v48[1] = v7;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 32);
          v51 = *(v8 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = (v8 + 16 * v46);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = (v47 + 16 * v49);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = (v8 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = (v47 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = (v47 + 16 * (v49 - 1));
        v88 = *v87;
        v89 = (v47 + 16 * v49);
        v90 = v89[1];
        sub_1C6C6BCA8((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v8 + 16);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove((v47 + 16 * v49), v89 + 2, 16 * (v91 - 1 - v49));
        *(v8 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v47 + 16 * v46;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = (v8 + 16 * v46);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = (v47 + 16 * v49);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v99;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v7 - 40;
  v33 = v9 - v7;
LABEL_30:
  v34 = v33;
  v35 = v32;
  while (1)
  {
    v36 = *(v35 + 56);
    if (*(v35 + 16) >= v36)
    {
LABEL_29:
      ++v7;
      v32 += 40;
      --v33;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v35 + 40);
    v37 = *(v35 + 48);
    v39 = *(v35 + 16);
    v40 = *(v35 + 32);
    *(v35 + 40) = *v35;
    v41 = *(v35 + 64);
    v42 = *(v35 + 72);
    *(v35 + 56) = v39;
    *(v35 + 72) = v40;
    *v35 = v38;
    *(v35 + 8) = v37;
    *(v35 + 16) = v36;
    *(v35 + 24) = v41;
    *(v35 + 32) = v42;
    v35 -= 40;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1C6C6B6D8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C6C73C90(v7);
      v7 = result;
    }

    v87 = (v7 + 16);
    v88 = *(v7 + 16);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = (v7 + 16 * v88);
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_1C6BF4318((*a3 + 24 * *v89), (*a3 + 24 * *v91), *a3 + 24 * v92, v96);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_114;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_115;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_116;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v94 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = *a3 + 24 * v8;
      v11 = *(v10 + 16);
      v12 = v8 + 2;
      v13 = (v10 + 40);
      while (v5 != v12)
      {
        v14 = *v13;
        v15 = v13[6];
        v13 += 6;
        ++v12;
        if (v11 < v9 == v14 >= v15)
        {
          v6 = v12 - 1;
          if (v11 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v11 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v16 = 24 * v6 - 8;
        v17 = 24 * v8 + 20;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v27 + v17);
            v21 = *(v27 + v17 - 20);
            v22 = (v27 + v16);
            v23 = *(v20 - 12);
            v24 = *(v20 - 1);
            v25 = *v20;
            v26 = *v22;
            *(v20 - 20) = *(v22 - 1);
            *(v20 - 4) = v26;
            *(v22 - 2) = v21;
            *(v22 - 1) = v23;
            *v22 = v24;
            *(v22 + 4) = v25;
          }

          ++v19;
          v16 -= 24;
          v17 += 24;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v40 = *(v7 + 16);
    v39 = *(v7 + 24);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1C6B657D0((v39 > 1), v40 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v41;
    v42 = v7 + 32;
    v43 = (v7 + 32 + 16 * v40);
    *v43 = v8;
    v43[1] = v6;
    v96 = *v95;
    if (!*v95)
    {
      goto LABEL_127;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v7 + 32);
          v46 = *(v7 + 40);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_57:
          if (v48)
          {
            goto LABEL_104;
          }

          v61 = (v7 + 16 * v41);
          v63 = *v61;
          v62 = v61[1];
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_106;
          }

          v67 = (v42 + 16 * v44);
          v69 = *v67;
          v68 = v67[1];
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_111;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v71 = (v7 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_72:
        if (v66)
        {
          goto LABEL_108;
        }

        v74 = (v42 + 16 * v44);
        v76 = *v74;
        v75 = v74[1];
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_110;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v82 = (v42 + 16 * (v44 - 1));
        v83 = *v82;
        v84 = (v42 + 16 * v44);
        v85 = v84[1];
        sub_1C6BF4318((*a3 + 24 * *v82), (*a3 + 24 * *v84), *a3 + 24 * v85, v96);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_99;
        }

        if (v44 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *(v7 + 16);
        if (v44 >= v86)
        {
          goto LABEL_101;
        }

        v41 = v86 - 1;
        result = memmove((v42 + 16 * v44), v84 + 2, 16 * (v86 - 1 - v44));
        *(v7 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_3;
        }
      }

      v49 = v42 + 16 * v41;
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_102;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_103;
      }

      v56 = (v7 + 16 * v41);
      v58 = *v56;
      v57 = v56[1];
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_105;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_107;
      }

      if (v60 >= v52)
      {
        v78 = (v42 + 16 * v44);
        v80 = *v78;
        v79 = v78[1];
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_113;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v94;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *(v32 + 40);
    if (*(v32 + 16) >= v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v35 = *(v32 + 24);
    v34 = *(v32 + 32);
    v36 = *(v32 + 44);
    v37 = *(v32 + 16);
    *(v32 + 24) = *v32;
    *(v32 + 40) = v37;
    *v32 = v35;
    *(v32 + 8) = v34;
    *(v32 + 16) = v33;
    *(v32 + 20) = v36;
    v32 -= 24;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1C6C6BCA8(float *__dst, float *__src, unint64_t a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 10 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[4] < v6[4])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 10;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 10;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 10;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    *(v7 + 4) = *(v14 + 4);
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 10 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v19 = (v5 + 40);
      if (*(v6 - 6) < *(v13 - 6))
      {
        v23 = v6 - 10;
        if (v19 != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 6);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v24;
          *(v5 + 16) = v25;
        }

        if (v13 <= v4 || (v6 -= 10, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v20 = v13 - 10;
      if (v19 != v13)
      {
        v21 = *v20;
        v22 = *(v13 - 6);
        *(v5 + 32) = *(v13 - 1);
        *v5 = v21;
        *(v5 + 16) = v22;
      }

      v5 -= 40;
      v13 -= 10;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v26 = 10 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26 * 4);
  }

  return 1;
}

uint64_t sub_1C6C6BED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v6 = a1;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1C6B39814(0, v4, 0);
  v5 = v45;
  v7 = v6 + 64;
  v8 = -1 << *(v6 + 32);
  v9 = sub_1C6D79CC0();
  v10 = 0;
  v36 = v6 + 72;
  v37 = v4;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v6 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    v39 = v10;
    v40 = *(v6 + 36);
    v14 = v6;
    v15 = (*(v6 + 48) + 16 * v9);
    v17 = *v15;
    v16 = v15[1];
    v41[0] = v17;
    v41[1] = v16;
    sub_1C6C6AD4C(v41, a3, v42);
    if (v3)
    {
      goto LABEL_27;
    }

    v18 = v42[0];
    v19 = v42[1];
    v20 = v43;
    v21 = v44;
    v45 = v5;
    v23 = *(v5 + 16);
    v22 = *(v5 + 24);
    if (v23 >= v22 >> 1)
    {
      v34 = v43;
      v35 = v42[0];
      v33 = v44;
      sub_1C6B39814((v22 > 1), v23 + 1, 1);
      v21 = v33;
      v20 = v34;
      v18 = v35;
      v5 = v45;
    }

    *(v5 + 16) = v23 + 1;
    v24 = v5 + 32 * v23;
    *(v24 + 32) = v18;
    *(v24 + 40) = v19;
    *(v24 + 48) = v20;
    *(v24 + 56) = v21;
    v11 = 1 << *(v14 + 32);
    if (v9 >= v11)
    {
      goto LABEL_24;
    }

    v25 = *(v7 + 8 * v13);
    if ((v25 & (1 << v9)) == 0)
    {
      goto LABEL_25;
    }

    v6 = v14;
    if (v40 != *(v14 + 36))
    {
      goto LABEL_26;
    }

    v26 = v25 & (-2 << (v9 & 0x3F));
    if (v26)
    {
      v11 = __clz(__rbit64(v26)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v12 = v39;
    }

    else
    {
      v27 = v13 << 6;
      v28 = v13 + 1;
      v29 = (v36 + 8 * v13);
      while (v28 < (v11 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          sub_1C6B360A8(v9, v40, 0);
          v11 = __clz(__rbit64(v30)) + v27;
          goto LABEL_20;
        }
      }

      sub_1C6B360A8(v9, v40, 0);
LABEL_20:
      v12 = v39;
    }

    v10 = v12 + 1;
    v9 = v11;
    v3 = 0;
    if (v10 == v37)
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
  return result;
}

uint64_t sub_1C6C6C148(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = a2 - 24;
  v8 = result & 1;
  v9 = a3;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = a3;
LABEL_2:
  v12 = (v7 + 24 * v9);
  while (v5 != v11)
  {
    if (v9 < a3 || v11 >= v5)
    {
      __break(1u);
      return result;
    }

    v13 = *(v12 + 44);
    ++v11;
    v12 += 3;
    if (v13 == v8)
    {
      v14 = v12[1];
      v27 = *v12;
      v28 = v7;
      v15 = *(v12 + 4);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C6B397F4(0, *(v10 + 16) + 1, 1);
      }

      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1C6B397F4((v16 > 1), v17 + 1, 1);
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 24 * v17;
      v7 = v28;
      *(v18 + 32) = v27;
      *(v18 + 40) = v14;
      *(v18 + 48) = v15;
      *(v18 + 52) = v13;
      v9 = v11;
      goto LABEL_2;
    }
  }

  v19 = *(v10 + 16);
  if (v19)
  {
    sub_1C6B395B4(0, v19, 0);
    v20 = (v10 + 48);
    do
    {
      v22 = *(v20 - 2);
      v21 = *(v20 - 1);
      v23 = *v20;
      v24 = *(v6 + 16);
      v25 = *(v6 + 24);

      if (v24 >= v25 >> 1)
      {
        sub_1C6B395B4((v25 > 1), v24 + 1, 1);
      }

      *(v6 + 16) = v24 + 1;
      v26 = v6 + 24 * v24;
      *(v26 + 32) = v22;
      *(v26 + 40) = v21;
      *(v26 + 48) = v23;
      v20 += 6;
      --v19;
    }

    while (v19);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

void sub_1C6C6C344()
{
  if (!qword_1EDCE2348)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDCE2348);
    }
  }
}

unint64_t sub_1C6C6C3BC()
{
  result = qword_1EC1D84B0;
  if (!qword_1EC1D84B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D84B0);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_Session.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_Personalization_Session.start(at:)(uint64_t a1)
{
  v21 = a1;
  v20 = sub_1C6D75F50();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D789A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C380BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 36);
  sub_1C6B823A4(v1 + v15, v14);
  v16 = (*(v7 + 48))(v14, 1, v6);
  sub_1C6C6D070(v14, sub_1C6C380BC);
  if (v16 == 1)
  {
    (*(v2 + 16))(v5, v21, v20);
    sub_1C6D78980();
    sub_1C6C6D070(v1 + v15, sub_1C6C380BC);
    (*(v7 + 32))(v1 + v15, v10, v6);
    return (*(v7 + 56))(v1 + v15, 0, 1, v6);
  }

  else
  {
    sub_1C6C6C6EC();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_1C6C6C6EC()
{
  result = qword_1EC1D84B8;
  if (!qword_1EC1D84B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D84B8);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_Session.end(at:)(uint64_t a1)
{
  v21 = a1;
  v20 = sub_1C6D75F50();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D789A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C380BC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for Com_Apple_News_Personalization_Session() + 40);
  sub_1C6B823A4(v1 + v15, v14);
  v16 = (*(v7 + 48))(v14, 1, v6);
  sub_1C6C6D070(v14, sub_1C6C380BC);
  if (v16 == 1)
  {
    (*(v2 + 16))(v5, v21, v20);
    sub_1C6D78980();
    sub_1C6C6D070(v1 + v15, sub_1C6C380BC);
    (*(v7 + 32))(v1 + v15, v10, v6);
    return (*(v7 + 56))(v1 + v15, 0, 1, v6);
  }

  else
  {
    sub_1C6C6C6EC();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }
}

uint64_t Com_Apple_News_Personalization_Session.serialize()()
{
  v27 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  v1 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v26[0] = v26 - v5;
  sub_1C6C380BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - v11;
  v13 = type metadata accessor for Com_Apple_News_Personalization_Session();
  sub_1C6B823A4(v0 + *(v13 + 36), v12);
  v14 = sub_1C6D789A0();
  v15 = *(*(v14 - 8) + 48);
  v16 = v15(v12, 1, v14);
  sub_1C6C6D070(v12, sub_1C6C380BC);
  if (v16 == 1)
  {
    sub_1C6C6C6EC();
    v17 = swift_allocError();
    v19 = 2;
LABEL_5:
    *v18 = v19;
    v22 = v17;
    swift_willThrow();
    return v22;
  }

  sub_1C6B823A4(v0 + *(v13 + 40), v9);
  v20 = v15(v9, 1, v14);
  v21 = sub_1C6C6D070(v9, sub_1C6C380BC);
  if (v20 == 1)
  {
    sub_1C6C6C6EC();
    v17 = swift_allocError();
    v19 = 3;
    goto LABEL_5;
  }

  MEMORY[0x1EEE9AC00](v21);
  v26[-2] = v0;
  sub_1C6C6D154(qword_1EDCE4988, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
  v22 = v26[1];
  sub_1C6D78C30();
  if (!v22)
  {
    Com_Apple_News_PersonalizationStorage_CompressedSession.validate()();
    if (v22)
    {
      sub_1C6C6D070(v3, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
    }

    else
    {
      v24 = v26[0];
      sub_1C6C6D1FC(v3, v26[0], type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
      sub_1C6D78BF0();
      sub_1C6C6D070(v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
      v22 = *v0;
      v25 = v0[1];
    }
  }

  return v22;
}

uint64_t sub_1C6C6CDC4()
{
  result = Com_Apple_News_Personalization_Session.serialize()();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C6C6CDF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78FA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D78F90();
  v9 = sub_1C6D78F80();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v12 = *(a1 + 8);

  *a1 = v9;
  *(a1 + 8) = v11;
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a1 + 32);

  *(a1 + 24) = v14;
  *(a1 + 32) = v13;
  v17 = *(a2 + 40);
  *(a1 + 40) = *(a2 + 32);
  *(a1 + 48) = v17;
  return result;
}

void *sub_1C6C6CF14(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Com_Apple_News_Personalization_Session();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1C6C6D154(&qword_1EDCE2AE0, type metadata accessor for Com_Apple_News_Personalization_Session);
  sub_1C6D78C30();
  sub_1C6C6D19C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  sub_1C6C6D1FC(v8, v13 + *(*v13 + 104), type metadata accessor for Com_Apple_News_Personalization_Session);

  return v13;
}

uint64_t sub_1C6C6D070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C6C6D0E4()
{
  result = qword_1EC1D84C0;
  if (!qword_1EC1D84C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D84C0);
  }

  return result;
}

uint64_t sub_1C6C6D154(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6C6D19C()
{
  if (!qword_1EDCE23D0)
  {
    type metadata accessor for Com_Apple_News_Personalization_Session();
    v0 = type metadata accessor for SessionContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE23D0);
    }
  }
}

uint64_t sub_1C6C6D1FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C6D288@<X0>(unsigned int (**a1)(char *, uint64_t, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a1;
  v91 = a3;
  v98 = a2;
  v76 = a4;
  sub_1C6B986D0();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v94 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v74 - v8;
  v95 = sub_1C6D78760();
  v75 = *(v95 - 8);
  v9 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v95 - 8);
  v93 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1C6D783E0();
  v11 = *(v100 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v100 - 8);
  v92 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v90 = (&v74 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v80 = &v74 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v74 - v19;
  v21 = sub_1C6D75F80();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1C6D78810();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v97 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v74 - v31);
  v33 = sub_1C6D787B0();
  v85 = *(v33 - 8);
  v86 = v33;
  v34 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v84 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  v96 = v36;
  v77 = *(v36 - 8);
  v37 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v74 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v27;
  v40 = *(v27 + 16);
  v83 = v32;
  v41 = v32;
  v42 = v91;
  v79 = v26;
  v40(v41, v98, v26);
  sub_1C6D75F70();
  v43 = sub_1C6D75F60();
  v81 = v44;
  v82 = v43;
  (*(v22 + 8))(v25, v21);
  v45 = *(v42 + 16);
  v46 = MEMORY[0x1E69E7CC0];
  v98 = v39;
  if (v45)
  {
    v101 = MEMORY[0x1E69E7CC0];
    sub_1C6B394C4(0, v45, 0);
    v46 = v101;
    v47 = (v42 + 40);
    v48 = v45;
    do
    {
      v49 = *(v47 - 1);
      v50 = *v47;

      sub_1C6D783C0();
      v101 = v46;
      v52 = *(v46 + 16);
      v51 = *(v46 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1C6B394C4(v51 > 1, v52 + 1, 1);
        v46 = v101;
      }

      *(v46 + 16) = v52 + 1;
      (*(v11 + 32))(v46 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v52, v20, v100);
      v47 += 2;
      --v48;
    }

    while (v48);
    v39 = v98;
    v42 = v91;
  }

  sub_1C6B68E34(v46);

  v53 = v84;
  sub_1C6D78790();
  v54 = v89;
  sub_1C6D784E0();
  v55 = v90;
  if (v54)
  {
    return (*(v85 + 8))(v53, v86);
  }

  (*(v85 + 8))(v53, v86);
  v57 = MEMORY[0x1E69E7CC0];
  v58 = v100;
  v82 = 0;
  if (v45)
  {
    v101 = MEMORY[0x1E69E7CC0];
    sub_1C6B394C4(0, v45, 0);
    v57 = v101;
    v59 = (v42 + 40);
    do
    {
      v61 = *(v59 - 1);
      v60 = *v59;

      sub_1C6D783C0();
      v101 = v57;
      v63 = *(v57 + 16);
      v62 = *(v57 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1C6B394C4(v62 > 1, v63 + 1, 1);
        v57 = v101;
      }

      *(v57 + 16) = v63 + 1;
      v64 = v57 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v63;
      v58 = v100;
      (*(v11 + 32))(v64, v55, v100);
      v59 += 2;
      --v45;
    }

    while (v45);
    v39 = v98;
  }

  result = sub_1C6D78800();
  v65 = v80;
  v91 = *(v57 + 16);
  if (v91)
  {
    v66 = 0;
    v87 = v11;
    v88 = (v75 + 48);
    v85 = v75 + 16;
    v86 = (v75 + 32);
    v83 = (v75 + 8);
    v84 = (v75 + 56);
    v89 = v11 + 16;
    v90 = (v11 + 8);
    while (v66 < *(v57 + 16))
    {
      v67 = *(v11 + 16);
      v67(v65, v57 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v66, v58);
      sub_1C6D78520();
      v68 = v99;
      v69 = v95;
      if ((*v88)(v99, 1, v95) == 1)
      {

        sub_1C6BAAF00(v68);
        type metadata accessor for FeatureSanitizationFactory.Errors();
        sub_1C6C6DC74();
        swift_allocError();
        v67(v73, v65, v58);
        swift_willThrow();
        (*v90)(v65, v58);
        (*(v78 + 8))(v97, v79);
        return (*(v77 + 8))(v39, v96);
      }

      ++v66;
      v70 = v93;
      (*v86)(v93, v68, v69);
      v67(v92, v65, v58);
      v71 = v94;
      (*v85)(v94, v70, v69);
      (*v84)(v71, 0, 1, v69);
      v11 = v87;
      sub_1C6D78830();
      v72 = v70;
      v39 = v98;
      (*v83)(v72, v69);
      result = (*v90)(v65, v58);
      if (v91 == v66)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    (*(v78 + 32))(v76, v97, v79);
    return (*(v77 + 8))(v39, v96);
  }

  return result;
}

uint64_t type metadata accessor for FeatureSanitizationFactory.Errors()
{
  result = qword_1EC1D84D0;
  if (!qword_1EC1D84D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C6C6DC74()
{
  result = qword_1EC1D84C8;
  if (!qword_1EC1D84C8)
  {
    type metadata accessor for FeatureSanitizationFactory.Errors();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D84C8);
  }

  return result;
}

uint64_t sub_1C6C6DCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D783E0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C6C6DD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D783E0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1C6C6DDB4(uint64_t a1)
{
  result = sub_1C6D783E0();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_1C6C6DE58()
{
  v1 = [v0 dampeningFactorMapping];
  sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
  v2 = sub_1C6D79490();

  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v38 = v2;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC8];
  if (v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= v7)
    {

      v33 = [v37 dampeningStrategy];
      [v37 defaultDampeningFactor];
      v34 = v9;
      v35 = v33;

      return MEMORY[0x1EEE5F1F8](v34, v35);
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
  }

  while (!v6);
  while (1)
  {
    v12 = __clz(__rbit64(v6)) | (v11 << 6);
    v13 = (*(v38 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v38 + 56) + 8 * v12);
    swift_bridgeObjectRetain_n();
    v17 = v16;
    sub_1C6D798A0();
    v19 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_1C6B5DEA8(v15, v14);
    v23 = v9[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      break;
    }

    v27 = v22;
    if (v9[3] >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v21;
        sub_1C6B72BD8();
        v21 = v32;
      }
    }

    else
    {
      sub_1C6B6E868(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1C6B5DEA8(v15, v14);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_26;
      }
    }

    v6 &= v6 - 1;
    if (v27)
    {
      v10 = v21;

      *(v9[7] + 8 * v10) = v19;

      v8 = v11;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v9[(v21 >> 6) + 8] |= 1 << v21;
      v29 = (v9[6] + 16 * v21);
      *v29 = v15;
      v29[1] = v14;
      *(v9[7] + 8 * v21) = v19;

      v30 = v9[2];
      v25 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v25)
      {
        goto LABEL_25;
      }

      v9[2] = v31;
      v8 = v11;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v11 = v8;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v34 = sub_1C6D7A1C0();
  __break(1u);
  return MEMORY[0x1EEE5F1F8](v34, v35);
}

BOOL FCPersonalizationPublisherDampeningConfig.isEqual(_:)(uint64_t a1)
{
  sub_1C6C6E30C(a1, v14);
  if (v15)
  {
    sub_1C6B0C69C(0, &qword_1EDCEA4B0, 0x1E69B5460);
    if (swift_dynamicCast())
    {
      v2 = [v1 dampeningFactorMapping];
      sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
      v3 = sub_1C6D79490();

      v4 = [v13 dampeningFactorMapping];
      v5 = sub_1C6D79490();

      sub_1C6B5D968(v3, v5);
      LOBYTE(v4) = v6;

      if (v4)
      {
        v7 = [v1 dampeningStrategy];
        if (v7 == [v13 dampeningStrategy])
        {
          [v1 defaultDampeningFactor];
          v9 = v8;
          [v13 defaultDampeningFactor];
          v11 = v10;

          return v9 == v11;
        }
      }
    }
  }

  else
  {
    sub_1C6B79FDC(v14);
  }

  return 0;
}

uint64_t sub_1C6C6E30C(uint64_t a1, uint64_t a2)
{
  sub_1C6B7A038();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1C6C6E370(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = FCPersonalizationPublisherDampeningConfig.isEqual(_:)(v8);

  sub_1C6B79FDC(v8);
  return v6;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
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

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened()
{
  result = qword_1EDCE31F0;
  if (!qword_1EDCE31F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1C6C6E67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
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

uint64_t sub_1C6C6E808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened() + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened() + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.metadata.modify(void *a1))(uint64_t **a1, char a2)
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
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened() + 24);
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

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened() + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C6EEA8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D84E0);
  __swift_project_value_buffer(v0, qword_1EC1D84E0);
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

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A58 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D84E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.decodeMessage<A>(decoder:)()
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
      sub_1C6C6F1C8();
    }
  }

  return result;
}

uint64_t sub_1C6C6F1C8()
{
  v0 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened() + 24);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6C6FC74(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CA0(), !v1))
  {
    result = sub_1C6C6F318(v0);
    if (!v1)
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6C6F318(uint64_t a1)
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
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
  sub_1C6B3E190(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B3E224(v5);
  }

  sub_1C6B3E2B0(v5, v10);
  sub_1C6C6FC74(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
  sub_1C6C6FC74(&qword_1EC1D84F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C6F5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C6FC74(&qword_1EC1D8510, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C6F670@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A58 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D84E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C6F718(uint64_t a1)
{
  v2 = sub_1C6C6FC74(&qword_1EC1D7670, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C6F784()
{
  sub_1C6C6FC74(&qword_1EC1D7670, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B43Storage_CompressedSessionEventTrackListenedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
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

  v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened();
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
      sub_1C6C6FC74(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
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

uint64_t sub_1C6C6FC74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted() + 20);
  return sub_1C6D78A30();
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted()
{
  result = qword_1EDCE4D08;
  if (!qword_1EDCE4D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagUnmuted.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted() + 20);
  sub_1C6D78A40();
  sub_1C6C707CC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.tagID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.tagID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6C6FFE8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D8518);
  __swift_project_value_buffer(v0, qword_1EC1D8518);
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

uint64_t static Com_Apple_News_Personalization_SessionEventTagUnmuted._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A60 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8518);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.decodeMessage<A>(decoder:)()
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

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.traverse<A>(visitor:)()
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
    v6 = v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted() + 20);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagUnmuted.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted();
  sub_1C6C707CC(&qword_1EC1D8530, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C703BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C707CC(&qword_1EC1D8548, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C70438@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A60 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D8518);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C704E0(uint64_t a1)
{
  v2 = sub_1C6C707CC(&qword_1EC1D83D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C7054C()
{
  sub_1C6C707CC(&qword_1EC1D83D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted);

  return sub_1C6D78C20();
}

uint64_t sub_1C6C706E8(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_1C6D78A40();
  sub_1C6C707CC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6C707CC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6C70814(char a1, id a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2;
    if (qword_1EDCE2068 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1D314();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C6D7EB10;
    sub_1C6D75DE0();
    sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
    v5 = sub_1C6D7A0E0();
    v7 = v6;
    v8 = MEMORY[0x1E69E6158];
    *(v4 + 56) = MEMORY[0x1E69E6158];
    v9 = sub_1C6B2064C();
    *(v4 + 64) = v9;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    *(v4 + 96) = v8;
    *(v4 + 104) = v9;
    *(v4 + 72) = 0;
    *(v4 + 80) = 0xE000000000000000;
    sub_1C6D78D30();

    v10 = a2;
    goto LABEL_5;
  }

  if (a1)
  {
    if (qword_1EDCE2068 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C6D7E630;
    sub_1C6D75DE0();
    sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
    v13 = sub_1C6D7A0E0();
    v15 = v14;
    v16 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v17 = sub_1C6B2064C();
    *(v12 + 64) = v17;
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v18 = [objc_opt_self() defaultManager];
    v19 = sub_1C6D75D30();
    v37 = 0;
    LODWORD(v15) = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:&v37];

    v20 = v37;
    if (v15)
    {
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1C6D7E630;
      v22 = v20;
      v23 = sub_1C6D7A0E0();
      *(v21 + 56) = v16;
      *(v21 + 64) = v17;
      *(v21 + 32) = v23;
      *(v21 + 40) = v24;
      sub_1C6D79AC0();
      sub_1C6D78D30();

      goto LABEL_6;
    }

    v30 = v37;
    v31 = sub_1C6D75CC0();

    swift_willThrow();
    sub_1C6D79AA0();
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C6D7EB10;
    v33 = sub_1C6D7A0E0();
    *(v32 + 56) = v16;
    *(v32 + 64) = v17;
    *(v32 + 32) = v33;
    *(v32 + 40) = v34;
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    v35 = v37;
    v36 = v38;
    *(v32 + 96) = v16;
    *(v32 + 104) = v17;
    *(v32 + 72) = v35;
    *(v32 + 80) = v36;
    sub_1C6D78D30();

    v10 = v31;
LABEL_5:

LABEL_6:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  if (qword_1EDCE2068 != -1)
  {
    swift_once();
  }

  sub_1C6D79AA0();
  sub_1C6B1D314();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C6D7E630;
  sub_1C6D75DE0();
  sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
  v26 = sub_1C6D7A0E0();
  v28 = v27;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1C6B2064C();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  sub_1C6D78D30();
  v29 = *MEMORY[0x1E69E9840];
}

void sub_1C6C70DF0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_1C6C70E68()
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EDCE2068 != -1)
  {
    swift_once();
  }

  sub_1C6B1D314();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C6D7E630;
  sub_1C6D75DE0();
  sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
  v1 = sub_1C6D7A0E0();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v4 = sub_1C6B2064C();
  *(v0 + 64) = v4;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  v5 = [objc_opt_self() defaultManager];
  v6 = sub_1C6D75D30();
  v17 = 0;
  LODWORD(v1) = [v5 removeItemAtURL:v6 error:&v17];

  if (v1)
  {
    v7 = v17;
  }

  else
  {
    v9 = v17;
    v10 = sub_1C6D75CC0();

    swift_willThrow();
    sub_1C6D79AA0();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C6D7EB10;
    v12 = sub_1C6D7A0E0();
    v13 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = v4;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    v15 = v17;
    v16 = v18;
    *(v11 + 96) = v13;
    *(v11 + 104) = v4;
    *(v11 + 72) = v15;
    *(v11 + 80) = v16;
    sub_1C6D78D30();
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C6C71158()
{
  v1 = OBJC_IVAR____TtC19NewsPersonalization36TopicClusteringJournalStorageService_journalsDirectory;
  v2 = sub_1C6D75DE0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void *sub_1C6C71204(uint64_t a1)
{
  v2 = sub_1C6D75F80();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D75F50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1C6D75DE0();
  v12 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_1EDCE2068 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();

    return sub_1C6D78D30();
  }

  v58 = v13;
  v16 = sub_1C6D75B70();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();

  sub_1C6D75B60();
  v62 = a1;
  sub_1C6D760F0();
  sub_1C6B20604(&unk_1EDCE62F8, MEMORY[0x1E69E31A0]);
  v55 = sub_1C6D75B50();
  v57 = v20;

  v56 = OBJC_IVAR____TtC19NewsPersonalization36TopicClusteringJournalStorageService_journalsDirectory;
  sub_1C6D760C0();
  sub_1C6D75F10();
  v22 = v21;
  v24 = *(v8 + 8);
  v23 = v8 + 8;
  v24(v11, v7);
  v25 = v22 * 1000.0;
  if (COERCE__INT64(fabs(v22 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  v23 = v60;
  if (v25 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v61 = v25;
  v62 = sub_1C6D7A0E0();
  v63 = v26;
  MEMORY[0x1CCA55B00](45, 0xE100000000000000);
  sub_1C6D75F70();
  v27 = sub_1C6D75F60();
  v29 = v28;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x1CCA55B00](v27, v29);

  v7 = v59;
  sub_1C6D75D50();

  if (qword_1EDCE2068 != -1)
  {
LABEL_27:
    swift_once();
  }

  v56 = qword_1EDCE2070;
  sub_1C6B1D314();
  v54[1] = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C6D807C0;
  v32 = sub_1C6D760D0();
  v33 = v57;
  if (v32 >> 62)
  {
    v34 = sub_1C6D79E90();
    v23 = v60;
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v34;
  v35 = sub_1C6D7A0E0();
  v37 = v36;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  v38 = sub_1C6B2064C();
  *(v31 + 64) = v38;
  *(v31 + 32) = v35;
  *(v31 + 40) = v37;
  v62 = 0;
  v63 = 0xE000000000000000;
  v39 = v33 >> 62;
  result = *(v7 + 16);
  if ((v33 >> 62) > 1)
  {
    v40 = 0;
    if (v39 != 2)
    {
      goto LABEL_23;
    }

    v42 = *(v55 + 16);
    v41 = *(v55 + 24);
    v40 = v41 - v42;
    if (!__OFSUB__(v41, v42))
    {
      goto LABEL_23;
    }

    __break(1u);
  }

  else if (!v39)
  {
    v40 = BYTE6(v33);
LABEL_23:
    v43 = [result stringFromByteCount_];
    v44 = sub_1C6D795A0();
    v46 = v45;

    MEMORY[0x1CCA55B00](v44, v46);

    v47 = v62;
    v48 = v63;
    v49 = MEMORY[0x1E69E6158];
    *(v31 + 96) = MEMORY[0x1E69E6158];
    *(v31 + 104) = v38;
    *(v31 + 72) = v47;
    *(v31 + 80) = v48;
    sub_1C6B20604(&qword_1EDCEA3B0, MEMORY[0x1E6968FB0]);
    v50 = sub_1C6D7A0E0();
    *(v31 + 136) = v49;
    *(v31 + 144) = v38;
    *(v31 + 112) = v50;
    *(v31 + 120) = v51;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v52 = v23;
    v53 = v55;
    sub_1C6D75E70();
    (*(v58 + 8))(v15, v52);
    sub_1C6B1C9F0(v53, v33);
  }

  if (!__OFSUB__(HIDWORD(v55), v55))
  {
    v40 = HIDWORD(v55) - v55;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6C71AC8()
{
  result = sub_1C6D75E00();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    v5 = sub_1C6D75B10();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_1C6D75B00();
    sub_1C6D760F0();
    sub_1C6B20604(&qword_1EC1D8558, MEMORY[0x1E69E31A0]);
    sub_1C6D75AF0();
    sub_1C6B1C9F0(v3, v4);

    return v8;
  }

  return result;
}

uint64_t sub_1C6C71E30()
{
  if (qword_1EDCE2068 != -1)
  {
    swift_once();
  }

  sub_1C6D79AC0();

  return sub_1C6D78D30();
}

unint64_t sub_1C6C71F08()
{
  result = qword_1EC1D8550;
  if (!qword_1EC1D8550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8550);
  }

  return result;
}

uint64_t sub_1C6C71F5C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v103 = a1;
  v9 = type metadata accessor for ClusteringJournalEntry();
  v111 = *(v9 - 8);
  v10 = *(v111 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v105 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v114 = &v100 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v100 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v100 - v19;
  v113 = a3;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v103;
    if (!*v103)
    {
      goto LABEL_135;
    }

    a4 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v116 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v113)
        {
          v96 = *(result + 16 * a4);
          v97 = result;
          v98 = *(result + 16 * (a4 - 1) + 40);
          sub_1C6C7316C(*v113 + *(v111 + 72) * v96, *v113 + *(v111 + 72) * *(result + 16 * (a4 - 1) + 32), *v113 + *(v111 + 72) * v98, v5);
          if (v6)
          {
          }

          if (v98 < v96)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_1C6C73C90(v97);
          }

          if (a4 - 2 >= *(v97 + 2))
          {
            goto LABEL_123;
          }

          v99 = &v97[16 * a4];
          *v99 = v96;
          *(v99 + 1) = v98;
          v116 = v97;
          sub_1C6C73C04(a4 - 1);
          result = v116;
          a4 = *(v116 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_1C6C73C90(a4);
    goto LABEL_99;
  }

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v102 = a4;
  v115 = v9;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    v106 = v23;
    if (v25 >= v21)
    {
      v21 = v25;
    }

    else
    {
      v26 = *v113;
      v27 = *(v111 + 72);
      v5 = *v113 + v27 * v25;
      sub_1C6B23588(v5, v20);
      sub_1C6B23588(v26 + v27 * v24, v17);
      v28 = *(v9 + 20);
      LODWORD(v110) = sub_1C6D75EE0();
      sub_1C6B19E08(v17, type metadata accessor for ClusteringJournalEntry);
      result = sub_1C6B19E08(v20, type metadata accessor for ClusteringJournalEntry);
      v101 = v24;
      v29 = v24 + 2;
      v112 = v27;
      v30 = v26 + v27 * v29;
      while (v21 != v29)
      {
        sub_1C6B23588(v30, v20);
        sub_1C6B23588(v5, v17);
        v31 = *(v115 + 20);
        v32 = sub_1C6D75EE0() & 1;
        sub_1C6B19E08(v17, type metadata accessor for ClusteringJournalEntry);
        result = sub_1C6B19E08(v20, type metadata accessor for ClusteringJournalEntry);
        ++v29;
        v30 += v112;
        v5 += v112;
        if ((v110 & 1) != v32)
        {
          v21 = v29 - 1;
          break;
        }
      }

      v24 = v101;
      a4 = v102;
      v9 = v115;
      if (v110)
      {
        if (v21 < v101)
        {
          goto LABEL_126;
        }

        if (v101 < v21)
        {
          v100 = v6;
          v33 = v112 * (v21 - 1);
          v34 = v21;
          v35 = v21 * v112;
          v110 = v21;
          v36 = v101;
          v37 = v101 * v112;
          do
          {
            if (v36 != --v34)
            {
              v38 = *v113;
              if (!*v113)
              {
                goto LABEL_132;
              }

              v5 = v38 + v37;
              sub_1C6B22BB0(v38 + v37, v105);
              if (v37 < v33 || v5 >= v38 + v35)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1C6B22BB0(v105, v38 + v33);
            }

            ++v36;
            v33 -= v112;
            v35 -= v112;
            v37 += v112;
          }

          while (v36 < v34);
          v6 = v100;
          v24 = v101;
          a4 = v102;
          v9 = v115;
          v21 = v110;
        }
      }
    }

    v39 = v113[1];
    if (v21 >= v39)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v21, v24))
    {
      goto LABEL_125;
    }

    if (v21 - v24 >= a4)
    {
LABEL_32:
      v41 = v21;
      if (v21 < v24)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v24, a4))
    {
      goto LABEL_127;
    }

    if ((v24 + a4) >= v39)
    {
      v40 = v113[1];
    }

    else
    {
      v40 = v24 + a4;
    }

    if (v40 < v24)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v21 == v40)
    {
      goto LABEL_32;
    }

    v100 = v6;
    v86 = v21;
    v87 = v24;
    v88 = *v113;
    v89 = *(v111 + 72);
    v90 = *v113 + v89 * (v21 - 1);
    v91 = -v89;
    v101 = v87;
    v92 = v87 - v21;
    v110 = v86;
    v104 = v89;
    v5 = v88 + v86 * v89;
    v107 = v40;
LABEL_86:
    v108 = v5;
    v109 = v92;
    v112 = v90;
    v93 = v90;
LABEL_87:
    sub_1C6B23588(v5, v20);
    sub_1C6B23588(v93, v17);
    v94 = *(v9 + 20);
    a4 = sub_1C6D75EE0();
    sub_1C6B19E08(v17, type metadata accessor for ClusteringJournalEntry);
    result = sub_1C6B19E08(v20, type metadata accessor for ClusteringJournalEntry);
    if (a4)
    {
      break;
    }

    v9 = v115;
LABEL_85:
    v90 = v112 + v104;
    v92 = v109 - 1;
    v41 = v107;
    v5 = v108 + v104;
    if (++v110 != v107)
    {
      goto LABEL_86;
    }

    v6 = v100;
    v24 = v101;
    if (v107 < v101)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v23 = v106;
    }

    else
    {
      result = sub_1C6B657D0(0, *(v106 + 2) + 1, 1, v106);
      v23 = result;
    }

    a4 = *(v23 + 2);
    v42 = *(v23 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_1C6B657D0((v42 > 1), a4 + 1, 1, v23);
      v23 = result;
    }

    *(v23 + 2) = v5;
    v43 = &v23[16 * a4];
    *(v43 + 4) = v24;
    *(v43 + 5) = v41;
    v44 = *v103;
    if (!*v103)
    {
      goto LABEL_134;
    }

    v107 = v41;
    if (a4)
    {
      while (2)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          v50 = &v23[16 * v5 + 32];
          v51 = *(v50 - 64);
          v52 = *(v50 - 56);
          v56 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          if (v56)
          {
            goto LABEL_111;
          }

          v55 = *(v50 - 48);
          v54 = *(v50 - 40);
          v56 = __OFSUB__(v54, v55);
          v48 = v54 - v55;
          v49 = v56;
          if (v56)
          {
            goto LABEL_112;
          }

          v57 = &v23[16 * v5];
          v59 = *v57;
          v58 = *(v57 + 1);
          v56 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v56)
          {
            goto LABEL_114;
          }

          v56 = __OFADD__(v48, v60);
          v61 = v48 + v60;
          if (v56)
          {
            goto LABEL_117;
          }

          if (v61 >= v53)
          {
            v79 = &v23[16 * v45 + 32];
            v81 = *v79;
            v80 = *(v79 + 1);
            v56 = __OFSUB__(v80, v81);
            v82 = v80 - v81;
            if (v56)
            {
              goto LABEL_121;
            }

            if (v48 < v82)
            {
              v45 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v49)
            {
              goto LABEL_113;
            }

            v62 = &v23[16 * v5];
            v64 = *v62;
            v63 = *(v62 + 1);
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_116;
            }

            v68 = &v23[16 * v45 + 32];
            v70 = *v68;
            v69 = *(v68 + 1);
            v56 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v56)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v66, v71))
            {
              goto LABEL_120;
            }

            if (v66 + v71 < v48)
            {
              goto LABEL_66;
            }

            if (v48 < v71)
            {
              v45 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v46 = *(v23 + 4);
            v47 = *(v23 + 5);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
            goto LABEL_52;
          }

          v72 = &v23[16 * v5];
          v74 = *v72;
          v73 = *(v72 + 1);
          v56 = __OFSUB__(v73, v74);
          v66 = v73 - v74;
          v67 = v56;
LABEL_66:
          if (v67)
          {
            goto LABEL_115;
          }

          v75 = &v23[16 * v45];
          v77 = *(v75 + 4);
          v76 = *(v75 + 5);
          v56 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v78 < v66)
          {
            break;
          }
        }

        a4 = v45 - 1;
        if (v45 - 1 >= v5)
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

        if (!*v113)
        {
          goto LABEL_131;
        }

        v83 = v23;
        v84 = *&v23[16 * a4 + 32];
        v5 = *&v23[16 * v45 + 40];
        sub_1C6C7316C(*v113 + *(v111 + 72) * v84, *v113 + *(v111 + 72) * *&v23[16 * v45 + 32], *v113 + *(v111 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1C6C73C90(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_110;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v116 = v83;
        result = sub_1C6C73C04(v45);
        v23 = v116;
        v5 = *(v116 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v21 = v113[1];
    v22 = v107;
    a4 = v102;
    v9 = v115;
    if (v107 >= v21)
    {
      goto LABEL_96;
    }
  }

  if (v88)
  {
    a4 = v114;
    sub_1C6B22BB0(v5, v114);
    v9 = v115;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C6B22BB0(a4, v93);
    v93 += v91;
    v5 += v91;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
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
  return result;
}

uint64_t sub_1C6C72810(int64_t *a1, uint64_t a2, int64_t *a3, int64_t a4)
{
  v5 = v4;
  v114 = a1;
  v8 = type metadata accessor for ClusteringJournalEntry();
  v122 = *(v8 - 8);
  v9 = *(v122 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v118 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v125 = &v109 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v127 = &v109 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v126 = &v109 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v21 = *v114;
    if (!*v114)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_97:
      v129 = v20;
      v105 = *(v20 + 2);
      if (v105 >= 2)
      {
        while (*a3)
        {
          v106 = *&v20[16 * v105];
          v107 = *&v20[16 * v105 + 24];
          sub_1C6C73678(*a3 + *(v122 + 72) * v106, *a3 + *(v122 + 72) * *&v20[16 * v105 + 16], *a3 + *(v122 + 72) * v107, v21);
          if (v5)
          {
          }

          if (v107 < v106)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_1C6C73C90(v20);
          }

          if (v105 - 2 >= *(v20 + 2))
          {
            goto LABEL_121;
          }

          v108 = &v20[16 * v105];
          *v108 = v106;
          *(v108 + 1) = v107;
          v129 = v20;
          result = sub_1C6C73C04(v105 - 1);
          v20 = v129;
          v105 = *(v129 + 2);
          if (v105 <= 1)
          {
          }
        }

        goto LABEL_131;
      }
    }

LABEL_127:
    result = sub_1C6C73C90(v20);
    v20 = result;
    goto LABEL_97;
  }

  v111 = a4;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v128 = v8;
  while (1)
  {
    v21 = v19;
    if (v19 + 1 >= v18)
    {
      v31 = v19 + 1;
    }

    else
    {
      v123 = v18;
      v113 = v5;
      v117 = *a3;
      v22 = v117;
      v23 = *(v122 + 72);
      v24 = v117 + v23 * (v19 + 1);
      v25 = v126;
      sub_1C6B23588(v24, v126);
      v26 = v127;
      sub_1C6B23588(v22 + v23 * v19, v127);
      v27 = *(v8 + 20);
      v28 = sub_1C6D75F50();
      v119 = sub_1C6B20604(&qword_1EDCE6388, MEMORY[0x1E6969530]);
      v120 = v28;
      LODWORD(v121) = sub_1C6D79540();
      sub_1C6B19E08(v26, type metadata accessor for ClusteringJournalEntry);
      result = sub_1C6B19E08(v25, type metadata accessor for ClusteringJournalEntry);
      v112 = v19;
      v29 = v19 + 2;
      v124 = v23;
      v30 = v117 + v23 * (v19 + 2);
      while (1)
      {
        v31 = v123;
        if (v123 == v29)
        {
          break;
        }

        v32 = v126;
        sub_1C6B23588(v30, v126);
        v33 = v127;
        sub_1C6B23588(v24, v127);
        v34 = *(v128 + 20);
        v35 = a3;
        v36 = v20;
        v37 = sub_1C6D79540() & 1;
        sub_1C6B19E08(v33, type metadata accessor for ClusteringJournalEntry);
        result = sub_1C6B19E08(v32, type metadata accessor for ClusteringJournalEntry);
        ++v29;
        v30 += v124;
        v24 += v124;
        v38 = (v121 & 1) == v37;
        v20 = v36;
        a3 = v35;
        if (!v38)
        {
          v31 = v29 - 1;
          break;
        }
      }

      v21 = v112;
      v5 = v113;
      v8 = v128;
      if ((v121 & 1) == 0)
      {
        if (v31 < v112)
        {
          goto LABEL_124;
        }

        if (v112 < v31)
        {
          v110 = v20;
          v39 = v124 * (v31 - 1);
          v40 = v31 * v124;
          v41 = v31;
          v42 = v112;
          v43 = v112 * v124;
          v115 = a3;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!v44)
              {
                goto LABEL_130;
              }

              sub_1C6B22BB0(v44 + v43, v118);
              if (v43 < v39 || v44 + v43 >= (v44 + v40))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1C6B22BB0(v118, v44 + v39);
              a3 = v115;
            }

            ++v42;
            v39 -= v124;
            v40 -= v124;
            v43 += v124;
          }

          while (v42 < v41);
          v21 = v112;
          v5 = v113;
          v20 = v110;
          v8 = v128;
        }
      }
    }

    v45 = a3[1];
    if (v31 >= v45)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v31, v21))
    {
      goto LABEL_123;
    }

    if (v31 - v21 >= v111)
    {
LABEL_32:
      v19 = v31;
      if (v31 < v21)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v21, v111))
    {
      goto LABEL_125;
    }

    if (v21 + v111 >= v45)
    {
      v46 = a3[1];
    }

    else
    {
      v46 = v21 + v111;
    }

    if (v46 < v21)
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (v31 == v46)
    {
      goto LABEL_32;
    }

    v110 = v20;
    v113 = v5;
    v115 = a3;
    v93 = *a3;
    sub_1C6D75F50();
    v94 = *(v122 + 72);
    v95 = v93 + v94 * (v31 - 1);
    v96 = -v94;
    v112 = v21;
    v97 = v21 - v31;
    v124 = v93;
    v116 = v94;
    v117 = v46;
    v98 = v93 + v31 * v94;
LABEL_86:
    v123 = v31;
    v119 = v98;
    v120 = v97;
    v121 = v95;
    v99 = v95;
LABEL_87:
    v100 = v126;
    sub_1C6B23588(v98, v126);
    v101 = v127;
    sub_1C6B23588(v99, v127);
    v102 = *(v8 + 20);
    sub_1C6B20604(&qword_1EDCE6388, MEMORY[0x1E6969530]);
    LOBYTE(v102) = sub_1C6D79540();
    sub_1C6B19E08(v101, type metadata accessor for ClusteringJournalEntry);
    result = sub_1C6B19E08(v100, type metadata accessor for ClusteringJournalEntry);
    if ((v102 & 1) == 0)
    {
      break;
    }

    v8 = v128;
LABEL_85:
    v31 = v123 + 1;
    v19 = v117;
    v95 = v121 + v116;
    v97 = v120 - 1;
    v98 = v119 + v116;
    if (v123 + 1 != v117)
    {
      goto LABEL_86;
    }

    v21 = v112;
    v5 = v113;
    a3 = v115;
    v20 = v110;
    if (v117 < v112)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v48 = *(v20 + 2);
    v47 = *(v20 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_1C6B657D0((v47 > 1), v48 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v49;
    v50 = &v20[16 * v48];
    *(v50 + 4) = v21;
    *(v50 + 5) = v19;
    v21 = *v114;
    if (!*v114)
    {
      goto LABEL_132;
    }

    if (v48)
    {
      while (2)
      {
        v51 = v49 - 1;
        if (v49 >= 4)
        {
          v56 = &v20[16 * v49 + 32];
          v57 = *(v56 - 64);
          v58 = *(v56 - 56);
          v62 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          if (v62)
          {
            goto LABEL_109;
          }

          v61 = *(v56 - 48);
          v60 = *(v56 - 40);
          v62 = __OFSUB__(v60, v61);
          v54 = v60 - v61;
          v55 = v62;
          if (v62)
          {
            goto LABEL_110;
          }

          v63 = &v20[16 * v49];
          v65 = *v63;
          v64 = *(v63 + 1);
          v62 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v62)
          {
            goto LABEL_112;
          }

          v62 = __OFADD__(v54, v66);
          v67 = v54 + v66;
          if (v62)
          {
            goto LABEL_115;
          }

          if (v67 >= v59)
          {
            v85 = &v20[16 * v51 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v62 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v62)
            {
              goto LABEL_119;
            }

            if (v54 < v88)
            {
              v51 = v49 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v55)
            {
              goto LABEL_111;
            }

            v68 = &v20[16 * v49];
            v70 = *v68;
            v69 = *(v68 + 1);
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_114;
            }

            v74 = &v20[16 * v51 + 32];
            v76 = *v74;
            v75 = *(v74 + 1);
            v62 = __OFSUB__(v75, v76);
            v77 = v75 - v76;
            if (v62)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v72, v77))
            {
              goto LABEL_118;
            }

            if (v72 + v77 < v54)
            {
              goto LABEL_66;
            }

            if (v54 < v77)
            {
              v51 = v49 - 2;
            }
          }
        }

        else
        {
          if (v49 == 3)
          {
            v52 = *(v20 + 4);
            v53 = *(v20 + 5);
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
            goto LABEL_52;
          }

          v78 = &v20[16 * v49];
          v80 = *v78;
          v79 = *(v78 + 1);
          v62 = __OFSUB__(v79, v80);
          v72 = v79 - v80;
          v73 = v62;
LABEL_66:
          if (v73)
          {
            goto LABEL_113;
          }

          v81 = &v20[16 * v51];
          v83 = *(v81 + 4);
          v82 = *(v81 + 5);
          v62 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v62)
          {
            goto LABEL_116;
          }

          if (v84 < v72)
          {
            break;
          }
        }

        v89 = v51 - 1;
        if (v51 - 1 >= v49)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v90 = *&v20[16 * v89 + 32];
        v91 = *&v20[16 * v51 + 40];
        sub_1C6C73678(*a3 + *(v122 + 72) * v90, *a3 + *(v122 + 72) * *&v20[16 * v51 + 32], *a3 + *(v122 + 72) * v91, v21);
        if (v5)
        {
        }

        if (v91 < v90)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1C6C73C90(v20);
        }

        if (v89 >= *(v20 + 2))
        {
          goto LABEL_108;
        }

        v92 = &v20[16 * v89];
        *(v92 + 4) = v90;
        *(v92 + 5) = v91;
        v129 = v20;
        result = sub_1C6C73C04(v51);
        v20 = v129;
        v49 = *(v129 + 2);
        if (v49 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = a3[1];
    v8 = v128;
    if (v19 >= v18)
    {
      goto LABEL_95;
    }
  }

  if (v124)
  {
    v103 = v125;
    sub_1C6B22BB0(v98, v125);
    v8 = v128;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C6B22BB0(v103, v99);
    v99 += v96;
    v98 += v96;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_1C6C7316C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for ClusteringJournalEntry();
  v8 = *(*(v49 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_1C6B23588(v33, v47);
          v35 = v48;
          sub_1C6B23588(v29, v48);
          v36 = *(v31 + 20);
          v37 = sub_1C6D75EE0();
          sub_1C6B19E08(v35, type metadata accessor for ClusteringJournalEntry);
          sub_1C6B19E08(v34, type metadata accessor for ClusteringJournalEntry);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_1C6B23588(a2, v47);
        v22 = v48;
        sub_1C6B23588(a4, v48);
        v23 = *(v49 + 20);
        v24 = sub_1C6D75EE0();
        sub_1C6B19E08(v22, type metadata accessor for ClusteringJournalEntry);
        sub_1C6B19E08(v21, type metadata accessor for ClusteringJournalEntry);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_1C6C73CD4(&v52, &v51, &v50, type metadata accessor for ClusteringJournalEntry);
  return 1;
}

uint64_t sub_1C6C73678(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for ClusteringJournalEntry();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v50 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v49 = &v40 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_59;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_60;
  }

  v17 = (a2 - a1) / v15;
  v53 = a1;
  v52 = a4;
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

    v27 = a4 + v19;
    if (v19 >= 1)
    {
      v28 = v8;
      v29 = -v15;
      v30 = v27;
      v44 = a1;
      v45 = a4;
      v43 = -v15;
      do
      {
        v41 = v27;
        v31 = a2 + v29;
        v47 = a2;
        v48 = a2 + v29;
        while (1)
        {
          if (a2 <= a1)
          {
            v53 = a2;
            v51 = v41;
            goto LABEL_57;
          }

          v33 = a3;
          v42 = v27;
          a3 += v29;
          v34 = v30 + v29;
          v35 = v49;
          sub_1C6B23588(v30 + v29, v49);
          v36 = v50;
          sub_1C6B23588(v31, v50);
          v37 = v28;
          v38 = *(v28 + 20);
          sub_1C6D75F50();
          sub_1C6B20604(&qword_1EDCE6388, MEMORY[0x1E6969530]);
          v39 = sub_1C6D79540();
          sub_1C6B19E08(v36, type metadata accessor for ClusteringJournalEntry);
          sub_1C6B19E08(v35, type metadata accessor for ClusteringJournalEntry);
          if ((v39 & 1) == 0)
          {
            break;
          }

          v27 = v34;
          if (v33 < v30 || a3 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v43;
            a1 = v44;
          }

          else
          {
            v29 = v43;
            a1 = v44;
            if (v33 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v37;
          v30 = v34;
          v32 = v34 > v45;
          a2 = v47;
          v31 = v48;
          if (!v32)
          {
            goto LABEL_55;
          }
        }

        if (v33 < v47 || a3 >= v47)
        {
          a2 = v48;
          v28 = v37;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v43;
          a1 = v44;
          v27 = v42;
        }

        else
        {
          v28 = v37;
          a2 = v48;
          v29 = v43;
          a1 = v44;
          v27 = v42;
          if (v33 != v47)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v30 > v45);
    }

LABEL_55:
    v53 = a2;
    v51 = v27;
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

    v48 = a4 + v18;
    v51 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v46 = v8;
      v47 = a3;
      do
      {
        v21 = v49;
        sub_1C6B23588(a2, v49);
        v22 = a2;
        v23 = v50;
        sub_1C6B23588(a4, v50);
        v24 = *(v8 + 20);
        sub_1C6D75F50();
        sub_1C6B20604(&qword_1EDCE6388, MEMORY[0x1E6969530]);
        v25 = sub_1C6D79540();
        sub_1C6B19E08(v23, type metadata accessor for ClusteringJournalEntry);
        sub_1C6B19E08(v21, type metadata accessor for ClusteringJournalEntry);
        if (v25)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            v8 = v46;
            swift_arrayInitWithTakeFrontToBack();
            v26 = v47;
            a2 = v22;
          }

          else
          {
            v8 = v46;
            v26 = v47;
            a2 = v22;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v52 = a4 + v15;
          a4 += v15;
        }

        else
        {
          a2 = v22 + v15;
          if (a1 < v22 || a1 >= a2)
          {
            v8 = v46;
            swift_arrayInitWithTakeFrontToBack();
            v26 = v47;
          }

          else
          {
            v8 = v46;
            v26 = v47;
            if (a1 != v22)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v15;
        v53 = a1;
      }

      while (a4 < v48 && a2 < v26);
    }
  }

LABEL_57:
  sub_1C6C73CD4(&v53, &v52, &v51, type metadata accessor for ClusteringJournalEntry);
  return 1;
}

uint64_t sub_1C6C73C04(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C6C73C90(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1C6C73CD4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1C6C73E1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C6B206A0(0, &qword_1EDCE6450, sub_1C6B68A4C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_1C6C7405C(char a1, void *a2)
{
  v4 = *(*(sub_1C6D75DE0() - 8) + 80);

  sub_1C6C70814(a1, a2);
}

uint64_t sub_1C6C740DC()
{
  sub_1C6B7E734();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v63 = v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7E910();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6D76740();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v67 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7EAA4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B206A0(0, &qword_1EDCE6280, MEMORY[0x1E69E3480], MEMORY[0x1E69E6720]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v78 = v56 - v14;
  v15 = sub_1C6D76730();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v76 = v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6D76700();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v72 = v56 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v73 = v56 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v74 = v56 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v75 = v56 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v64 = v56 - v31;
  v32 = sub_1C6D76770();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v77 = v56 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7EC90();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v65 = v56 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C6D76780();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v62 = v56 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1C6D760B0();
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v61 = v56 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *MEMORY[0x1E69E3190];
  (*(v46 + 104))(v43);
  v58 = sub_1C6B6061C(MEMORY[0x1E69E7CC0]);
  sub_1C6D766F0();
  sub_1C6D76750();
  sub_1C6D76720();
  v71 = sub_1C6D766C0();
  v47 = *(v71 - 8);
  v48 = *(v47 + 56);
  v69 = v47 + 56;
  v70 = v48;
  v48(v78, 1, 1, v71);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  v79 = v21;
  sub_1C6D766F0();
  v57 = sub_1C6D76680();
  sub_1C6D76690();
  sub_1C6D766A0();
  sub_1C6D76670();
  sub_1C6D76640();
  sub_1C6D76650();
  sub_1C6D766B0();
  sub_1C6D76660();
  sub_1C6B20604(&qword_1EDCE6288, MEMORY[0x1E69E3478]);
  sub_1C6B20604(&qword_1EDCE6290, MEMORY[0x1E69E3448]);
  v49 = v78;
  sub_1C6D766D0();
  v58 = sub_1C6B6061C(MEMORY[0x1E69E7CC0]);
  sub_1C6D766F0();
  sub_1C6D76750();
  sub_1C6D76720();
  v70(v49, 1, 1, v71);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  v57 = sub_1C6D76580();
  v56[1] = sub_1C6D76590();
  sub_1C6D765A0();
  sub_1C6D76570();
  sub_1C6D76540();
  sub_1C6D76550();
  sub_1C6D765B0();
  sub_1C6D76560();
  sub_1C6B20604(&qword_1EDCE62A8, MEMORY[0x1E69E33D8]);
  sub_1C6B20604(&qword_1EDCE62B0, MEMORY[0x1E69E33A8]);
  sub_1C6D766D0();
  (*(v59 + 104))(v67, *MEMORY[0x1E69E34D0], v60);
  v50 = MEMORY[0x1E69E7CC0];
  v60 = sub_1C6B60950(MEMORY[0x1E69E7CC0]);
  v59 = sub_1C6B6061C(v50);
  sub_1C6D766F0();
  sub_1C6D76750();
  sub_1C6D76720();
  v70(v49, 1, 1, v71);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  v58 = sub_1C6D76600();
  sub_1C6D76610();
  sub_1C6D76620();
  sub_1C6D765F0();
  sub_1C6D765C0();
  sub_1C6D765D0();
  sub_1C6D76630();
  sub_1C6D765E0();
  sub_1C6B20604(&qword_1EDCE6298, MEMORY[0x1E69E3428]);
  sub_1C6B20604(&qword_1EDCE62A0, MEMORY[0x1E69E33F8]);
  v51 = v78;
  sub_1C6D766D0();
  v59 = sub_1C6B6061C(MEMORY[0x1E69E7CC0]);
  sub_1C6D766F0();
  sub_1C6D76750();
  sub_1C6D76720();
  v70(v51, 1, 1, v71);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  v71 = sub_1C6D76460();
  sub_1C6D76470();
  sub_1C6D76480();
  sub_1C6D76450();
  sub_1C6D76430();
  sub_1C6D76440();
  sub_1C6D76490();
  sub_1C6D764A0();
  sub_1C6B20604(&qword_1EDCE62D0, MEMORY[0x1E69E3328]);
  sub_1C6B20604(&qword_1EDCE62C8, MEMORY[0x1E69E3338]);
  sub_1C6D766D0();
  sub_1C6D764B0();
  v52 = sub_1C6D760F0();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  return sub_1C6D760E0();
}

void sub_1C6C74F64()
{
  if (!qword_1EDCDFCD0)
  {
    sub_1C6B0C69C(255, &qword_1EDCDF8F0, 0x1E69B5580);
    v0 = sub_1C6D790C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDFCD0);
    }
  }
}

uint64_t sub_1C6C74FD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C6C75034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t UserEventHistorySessionUnarchiver.unarchive(session:)()
{
  v1 = sub_1C6D78A80();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D78FB0();
  if (v8 >> 60 == 15)
  {
    sub_1C6C7534C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v15 = v7;
    v16 = v8;
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v10 = v7;
    v11 = v8;
    sub_1C6B1CD10(v7, v8);
    sub_1C6D78A70();
    sub_1C6C756F8(qword_1EDCE4988, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
    sub_1C6D78C00();
    if (v0)
    {
      return sub_1C6B75B88(v10, v11);
    }

    else
    {
      v12 = type metadata accessor for Com_Apple_News_Personalization_Session();
      MEMORY[0x1EEE9AC00](v12);
      *&v13[-1] = v6;
      sub_1C6C756F8(&qword_1EDCE2AE0, type metadata accessor for Com_Apple_News_Personalization_Session);
      sub_1C6D78C30();
      sub_1C6B75B88(v10, v11);
      return sub_1C6C75740(v6, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSession);
    }
  }
}

unint64_t sub_1C6C7534C()
{
  result = qword_1EC1D8560;
  if (!qword_1EC1D8560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8560);
  }

  return result;
}

uint64_t RecipeUserEventHistorySessionUnarchiver.unarchive(session:)()
{
  v1 = sub_1C6D78A80();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_Envelope();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D78FB0();
  if (v9 >> 60 == 15)
  {
    sub_1C6C756A4();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v17 = v8;
    v18 = v9;
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    v11 = v8;
    v12 = v9;
    sub_1C6B1CD10(v8, v9);
    sub_1C6D78A70();
    sub_1C6C756F8(&qword_1EC1D6F98, type metadata accessor for Com_Apple_News_Personalization_Envelope);
    sub_1C6D78C00();
    if (!v0)
    {
      type metadata accessor for Com_Apple_News_Personalization_RecipeSession();
      v13 = *(v7 + 2);
      v17 = *(v7 + 1);
      v18 = v13;
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      sub_1C6B1CD10(v17, v13);
      sub_1C6D78A70();
      sub_1C6C756F8(qword_1EDCE5520, type metadata accessor for Com_Apple_News_Personalization_RecipeSession);
      sub_1C6D78C00();
      sub_1C6C75740(v7, type metadata accessor for Com_Apple_News_Personalization_Envelope);
    }

    return sub_1C6B75B88(v11, v12);
  }
}

unint64_t sub_1C6C756A4()
{
  result = qword_1EC1D8568;
  if (!qword_1EC1D8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8568);
  }

  return result;
}

uint64_t sub_1C6C756F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6C75740(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C6C75834()
{
  result = qword_1EC1D8570;
  if (!qword_1EC1D8570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8570);
  }

  return result;
}

unint64_t sub_1C6C7588C()
{
  result = qword_1EC1D8578;
  if (!qword_1EC1D8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8578);
  }

  return result;
}

uint64_t sub_1C6C758F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void (*a6)(_OWORD *, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, float a9@<S0>)
{
  v139 = a7;
  v149 = a6;
  v142 = a4;
  v152 = a3;
  v155 = a2;
  sub_1C6C76A88(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v145 = &v133 - v15;
  v144 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures();
  v143 = *(v144 - 8);
  v16 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v18 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C76A88(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v136 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v141 = &v133 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v150 = (&v133 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v135 = &v133 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v138 = &v133 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v140 = &v133 - v31;
  v148 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v32 = *(*(v148 - 1) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v151 = &v133 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v133 - v35;
  sub_1C6C76A88(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v147 = &v133 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v146 = &v133 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v133 - v43;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v133 - v46;
  v154 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v48 = *(v154 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v154);
  MEMORY[0x1EEE9AC00](v50);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v133 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v133 - v57;
  v153 = a5;
  v59 = *a5;
  v60 = a5[1];
  *a8 = v59;
  *(a8 + 8) = v60;
  v61 = v155;
  v155 = a8;
  v62 = v152;
  *(a8 + 16) = v61;
  *(a8 + 24) = v62;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v133 = v56;
  v134 = v55;
  v137 = v18;
  v63 = v155;
  *(v155 + 140) = a1;
  *(v63 + 144) = a9;
  v152 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);
  sub_1C6C76ADC(v153 + v152, v47, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v64 = *(v48 + 48);
  if (v64(v47, 1, v154) == 1)
  {

    sub_1C6C76B48(v47, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v65 = 0;
    v66 = 1;
    v58 = v148;
  }

  else
  {
    sub_1C6C76CD0(v47, v58, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C76CD0(v58, v53, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C76CD0(v53, v36, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v58 = v148;
    v67 = *&v36[v148[5]] + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
    swift_beginAccess();
    v65 = *v67;
    v66 = *(v67 + 8);

    sub_1C6C76C70(v36, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  v157 = v65;
  v158 = v66;
  v68 = Com_Apple_News_Personalization_GroupType.string.getter();
  if (v69)
  {
    v70 = v68;
  }

  else
  {
    v70 = 0;
  }

  v71 = 0xE000000000000000;
  if (v69)
  {
    v71 = v69;
  }

  a8 = v155;
  *(v155 + 32) = v70;
  *(a8 + 40) = v71;
  v72 = v153;
  sub_1C6C76ADC(v153 + v152, v44, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  if (v64(v44, 1, v154) == 1)
  {
    sub_1C6C76B48(v44, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v73 = 0;
    v74 = 1;
  }

  else
  {
    v75 = v133;
    sub_1C6C76CD0(v44, v133, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C76CD0(v75, v53, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C76CD0(v53, v36, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v76 = *&v36[*(v58 + 5)] + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
    swift_beginAccess();
    v73 = *v76;
    v74 = *(v76 + 8);
    sub_1C6C76C70(v36, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  v157 = v73;
  v158 = v74;
  v77 = Com_Apple_News_Personalization_FeedType.string.getter();
  if (v78)
  {
    v79 = v77;
  }

  else
  {
    v79 = 0;
  }

  v80 = 0xE000000000000000;
  if (v78)
  {
    v80 = v78;
  }

  *(a8 + 48) = v79;
  *(a8 + 56) = v80;
  v81 = v146;
  sub_1C6C76ADC(v72 + v152, v146, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  if (v64(v81, 1, v154) == 1)
  {
    sub_1C6C76B48(v81, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v82 = 0;
    v83 = 1;
  }

  else
  {
    v84 = v81;
    v85 = v134;
    sub_1C6C76CD0(v84, v134, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C76CD0(v85, v53, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C76CD0(v53, v36, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v86 = *&v36[*(v58 + 5)] + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction;
    swift_beginAccess();
    v82 = *v86;
    v83 = *(v86 + 8);
    sub_1C6C76C70(v36, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  }

  v53 = v151;
  v157 = v82;
  v158 = v83;
  v87 = sub_1C6C26E00();
  if (v88)
  {
    v89 = v87;
  }

  else
  {
    v89 = 0;
  }

  v90 = 0xE000000000000000;
  if (v88)
  {
    v90 = v88;
  }

  *(a8 + 64) = v89;
  *(a8 + 72) = v90;
  v91 = v147;
  sub_1C6C76ADC(v72 + v152, v147, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  if (v64(v91, 1, v154) != 1)
  {
    sub_1C6C76CD0(v91, v53, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    v60 = v149;
    goto LABEL_31;
  }

  sub_1C6C76B48(v91, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D78A30();
  a1 = *(v58 + 5);
  v60 = v149;
  if (qword_1EDCE41F8 != -1)
  {
    goto LABEL_66;
  }

  while (1)
  {
    *&v53[a1] = qword_1EDCE4200;

LABEL_31:
    v92 = *&v53[*(v58 + 5)];
    swift_beginAccess();
    v93 = v92[2];

    v94 = sub_1C6C0861C(v60, v93);

    v96 = *(v94 + 16);
    if (v96 != v60)
    {
      break;
    }

LABEL_34:
    *(a8 + 80) = v94;
    v98 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
    swift_beginAccess();
    *(a8 + 88) = *(v92 + v98);
    swift_beginAccess();
    v60 = v92[4];
    *(a8 + 96) = v92[3];
    *(a8 + 104) = v60;
    a1 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
    swift_beginAccess();
    v99 = *(v92 + a1);
    if ((v99 & 0x80000000) == 0)
    {
      *(a8 + 112) = v99;
      *(a8 + 152) = v139;
      v100 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
      swift_beginAccess();
      v101 = v138;
      sub_1C6C76ADC(v92 + v100, v138, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v102 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
      v152 = *(v102 - 8);
      v103 = *(v152 + 48);
      v104 = 1;
      v154 = v102;
      v105 = v103(v101, 1);

      sub_1C6C76B48(v101, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v106 = v140;
      if (v105 != 1)
      {
        v107 = v135;
        sub_1C6C76ADC(v92 + v100, v135, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        if ((v103)(v107, 1, v154) == 1)
        {
          *v106 = xmmword_1C6D7F510;
          v108 = v154;
          v109 = v106 + *(v154 + 20);
          sub_1C6D78A30();
          if ((v103)(v107, 1, v108) != 1)
          {
            sub_1C6C76B48(v107, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          }

          v104 = 0;
        }

        else
        {
          sub_1C6C76CD0(v107, v106, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v104 = 0;
        }
      }

      v110 = *(v152 + 56);
      v111 = 1;
      v112 = v154;
      v152 += 56;
      v149 = v110;
      v110(v106, v104, 1, v154);
      v148 = type metadata accessor for EventArticleFeatures();
      v113 = v155;
      sub_1C6C76BF0(v106, v155 + v148[23]);
      *(v113 + 160) = v142;
      v114 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
      swift_beginAccess();
      v115 = v141;
      sub_1C6C76ADC(v92 + v114, v141, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      LODWORD(v112) = (v103)(v115, 1, v112);
      sub_1C6C76B48(v115, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v116 = v112 == 1;
      v117 = v137;
      v118 = v153;
      v119 = v143;
      if (!v116)
      {
        v120 = v136;
        sub_1C6C76ADC(v92 + v114, v136, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        if ((v103)(v120, 1, v154) == 1)
        {
          v121 = v150;
          *v150 = xmmword_1C6D7F510;
          v122 = v154;
          v123 = v121 + *(v154 + 20);
          sub_1C6D78A30();
          if ((v103)(v120, 1, v122) != 1)
          {
            sub_1C6C76B48(v120, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          }
        }

        else
        {
          sub_1C6C76CD0(v120, v150, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        }

        v111 = 0;
      }

      v124 = v150;
      v149(v150, v111, 1, v154);
      sub_1C6C76BF0(v124, v155 + v148[24]);
      v125 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
      swift_beginAccess();
      v126 = v145;
      sub_1C6C76ADC(v92 + v125, v145, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      v127 = *(v119 + 48);
      v128 = v144;
      if (v127(v126, 1, v144) == 1)
      {
        *(v117 + 3) = 0;
        *v117 = 0;
        v129 = v117 + *(v128 + 44);
        sub_1C6D78A30();
        sub_1C6C76C70(v118, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        if (v127(v126, 1, v128) != 1)
        {
          sub_1C6C76B48(v126, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
        }
      }

      else
      {
        sub_1C6C76C70(v118, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        sub_1C6C76CD0(v126, v117, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      }

      sub_1C6C76C70(v151, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
      v130 = v155;
      if (*v117)
      {
        *(v155 + 116) = 1;
        if ((*(v117 + 1) & 1) == 0)
        {
          goto LABEL_53;
        }

LABEL_58:
        v130[30] = 1;
        if (*(v117 + 3))
        {
          goto LABEL_59;
        }

LABEL_54:
        v130[31] = 0;
        if ((*(v117 + 4) & 1) == 0)
        {
          goto LABEL_55;
        }

LABEL_60:
        v131 = 1;
        v130[32] = 1;
        if ((*(v117 + 6) & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        *(v155 + 116) = 0;
        if (*(v117 + 1))
        {
          goto LABEL_58;
        }

LABEL_53:
        v130[30] = 0;
        if ((*(v117 + 3) & 1) == 0)
        {
          goto LABEL_54;
        }

LABEL_59:
        v130[31] = 1;
        if (*(v117 + 4))
        {
          goto LABEL_60;
        }

LABEL_55:
        v130[32] = 0;
        if (*(v117 + 6))
        {
          v131 = 1;
        }

        else
        {
LABEL_61:
          v131 = 0;
        }
      }

      v130[33] = v131;
      v132 = *(v117 + 5);
      result = sub_1C6C76C70(v117, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      v130[34] = v132;
      return result;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    swift_once();
  }

  if (!__OFSUB__(v60, v96))
  {
    v97 = sub_1C6BFE220(0, 0xE000000000000000, v60 - v96);
    v156 = v94;
    sub_1C6B38560(v97);
    v94 = v156;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

void sub_1C6C76A88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1C6C76ADC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1C6C76A88(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6C76B48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6C76A88(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for EventArticleFeatures()
{
  result = qword_1EDCE7370;
  if (!qword_1EDCE7370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6C76BF0(uint64_t a1, uint64_t a2)
{
  sub_1C6C76A88(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C76C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6C76CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6C76D60()
{
  sub_1C6B855D0();
  if (v0 <= 0x3F)
  {
    sub_1C6C76A88(319, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t ArticleUnsaveEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77AF0();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleUnsaveEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77AF0();
  sub_1C6D773F0();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6C782C4(&qword_1EDCE5FD0, MEMORY[0x1E69B4598]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleUnsaveEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77AF0();
  sub_1C6D77410();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6C782C4(&qword_1EDCE5F20, MEMORY[0x1E69B4818]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleUnsaveEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B00();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleUnsaveEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C775C0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00]();
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6C776CC(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77AF0();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleUnsaveEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B10();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleUnsaveEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B30();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleUnsaveEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B20();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6C78004(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77AF0();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleUnsaveEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D77B30();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6C782C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6C78364()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77AF0();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6C78464()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B00();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleUnsaveEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C785B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77AF0();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6C786D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6C787DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77AF0();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6C788C8()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D77B30();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6C78A18(uint64_t result, uint64_t a2)
{
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v4 = result;
    v8 = sub_1C6C78DA0(2 * a2);
    v9 = v5;
    sub_1C6C78A90(&v8, 0);
    v6 = v8;
    v7 = v9;
    result = sub_1C6B1C9F0(*v4, *(v4 + 8));
    *v4 = v6;
    *(v4 + 8) = v7;
  }

  return result;
}

uint64_t *sub_1C6C78A90(uint64_t *result, int a2)
{
  v3 = result;
  v24 = *MEMORY[0x1E69E9840];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1C6B1C9F0(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1C6D7F510;
      sub_1C6B1C9F0(0, 0xC000000000000000);
      result = sub_1C6C78CF8(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_1C6B1C9F0(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v20 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = *result;

  sub_1C6B1C9F0(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_1C6D7F510;
  sub_1C6B1C9F0(0, 0xC000000000000000);
  sub_1C6D75DF0();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  result = sub_1C6D75BF0();
  if (result)
  {
    v13 = result;
    v14 = sub_1C6D75C20();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_1C6D75C10();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = memset(v13 + v15, a2, v19);
        *v3 = __b;
        v3[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6C78CF8(int *a1, int a2)
{
  result = sub_1C6D75E10();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_1C6D75BF0();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_1C6D75C20();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_1C6D75C10();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_1C6C78DA0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1C6D75C40();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1C6D75C00();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1C6D75E30();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

id static OS_os_log.tabiUserEventHistoryScoring.getter()
{
  if (qword_1EDCEA920 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCEA540;

  return v1;
}

uint64_t sub_1C6C78E9C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE7188 = result;
  return result;
}

uint64_t sub_1C6C78F74()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EC1D8588 = result;
  return result;
}

uint64_t sub_1C6C7904C()
{
  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE9D40 = result;
  return result;
}

uint64_t sub_1C6C790D8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCDFFF0 = result;
  return result;
}

uint64_t sub_1C6C791B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE2368 = result;
  return result;
}

uint64_t sub_1C6C7928C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE7930 = result;
  return result;
}

uint64_t sub_1C6C793B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCEA6A8 = result;
  return result;
}

uint64_t sub_1C6C79488()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EC1D85A0 = result;
  return result;
}

uint64_t sub_1C6C79560()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE0568 = result;
  return result;
}

uint64_t sub_1C6C79638()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE03C0 = result;
  return result;
}

uint64_t sub_1C6C79710()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE1AD8 = result;
  return result;
}

uint64_t sub_1C6C79814()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE18F8 = result;
  return result;
}

uint64_t sub_1C6C798EC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE0C60 = result;
  return result;
}

uint64_t sub_1C6C799F0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EC1D85B0 = result;
  return result;
}

uint64_t sub_1C6C79AC8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EC1D85B8 = result;
  return result;
}

void *sub_1C6C79BCC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  off_1EDCE18E8 = result;
  return result;
}

uint64_t sub_1C6C79CBC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EDCE96D0 = result;
  return result;
}

uint64_t sub_1C6C79D94()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1C6D795A0();
  }

  sub_1C6B1AAB0();
  result = sub_1C6D79BE0();
  qword_1EC1D85C0 = result;
  return result;
}

BOOL sub_1C6C79EE0()
{
  if (qword_1EDCE96C8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDCE96D0;
  v1 = sub_1C6D79A90();
  result = os_log_type_enabled(v0, v1);
  v3 = nullsub_1;
  if (result)
  {
    v3 = sub_1C6C79F7C;
  }

  qword_1EDCF0300 = v3;
  *algn_1EDCF0308 = 0;
  return result;
}

uint64_t sub_1C6C79F7C(uint64_t (*a1)(void))
{
  if (qword_1EDCE96C8 != -1)
  {
    swift_once();
  }

  sub_1C6D79A90();
  sub_1C6B1D314();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C6D7E630;
  v3 = a1();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1C6B2064C();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_1C6D78D30();
}

void sub_1C6C7A078(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31[1] = a2;
  v6 = sub_1C6D77BD0();
  v31[0] = *(v6 - 8);
  v7 = *(v31[0] + 64);
  MEMORY[0x1EEE9AC00](v6);
  v32 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C7A4D0();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D77290();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  (*(v19 + 16))(v31 - v18, a1, v15, v17);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v14, v10);
    v20 = sub_1C6D77270();
    v21 = sub_1C6D77330();
    v23 = v22;

    if (!v3)
    {
      sub_1C6C7A564(&qword_1EC1D8008, MEMORY[0x1E69B4988]);
      v24 = v32;
      sub_1C6D75AF0();
      a3[3] = v6;
      v26 = MEMORY[0x1E69B4988];
      a3[4] = sub_1C6C7A564(&qword_1EC1D85D0, MEMORY[0x1E69B4988]);
      a3[5] = sub_1C6C7A564(&qword_1EC1D85D8, v26);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a3);
      (*(v31[0] + 32))(boxed_opaque_existential_2, v24, v6);
      sub_1C6B1C9F0(v21, v23);
      v28 = *MEMORY[0x1E69E3670];
      v29 = sub_1C6D76F90();
      v30 = *(v29 - 8);
      (*(v30 + 104))(a3, v28, v29);
      (*(v30 + 56))(a3, 0, 1, v29);
    }
  }

  else
  {
    v25 = sub_1C6D76F90();
    (*(*(v25 - 8) + 56))(a3, 1, 1, v25);
  }
}

void sub_1C6C7A4D0()
{
  if (!qword_1EDCE6050)
  {
    sub_1C6D77BE0();
    sub_1C6C7A564(&qword_1EDCE5ED0, MEMORY[0x1E69B49A0]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6050);
    }
  }
}

uint64_t sub_1C6C7A564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Com_Apple_News_Personalization_SessionEventTagFollowed.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed() + 20);
  return sub_1C6D78A30();
}