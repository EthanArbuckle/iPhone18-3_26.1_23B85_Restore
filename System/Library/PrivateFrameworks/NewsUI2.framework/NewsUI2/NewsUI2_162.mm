uint64_t sub_2198F0A9C(uint64_t (*a1)(uint64_t))
{
  if (qword_280E8D8C0 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v2 = sub_219BE5314();
  return a1(v2);
}

uint64_t sub_2198F0CB4(void *a1, void *a2)
{
  if (qword_280E8D8C0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  v6 = [a1 contentID];
  v7 = sub_219BF5414();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2186FC3BC();
  *(v5 + 64) = v11;
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v12 = [a2 description];
  v13 = sub_219BF5414();
  v15 = v14;

  *(v5 + 96) = v10;
  *(v5 + 104) = v11;
  *(v5 + 72) = v13;
  *(v5 + 80) = v15;
  sub_219BF6214();
  sub_219BE5314();

  if (qword_27CC08858 != -1)
  {
    swift_once();
  }

  sub_2198F3064(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  __swift_project_value_buffer(v16, qword_27CC20A60);
  v17 = [a2 unarchiveIntoContentContext_];
  v18 = swift_allocObject();
  v18[2] = v2;
  v18[3] = a1;
  v18[4] = v17;
  v19 = v2;
  v20 = a1;
  v21 = v17;
  sub_219BE3494();
}

uint64_t sub_2198F0F04(uint64_t a1, unint64_t a2, void *a3)
{
  v65 = a3;
  v6 = sub_219BED224();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = a1;
  v10 = *(a1 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager__activeContentIDs);
  v11 = sub_2186C6148(0, &qword_280E8E3B0);

  *v9 = sub_219BF66A4();
  v12 = *MEMORY[0x277D85200];
  v13 = (v7 + 104);
  v69 = *(v7 + 104);
  v69(v9, v12, v6);
  v14 = sub_219BED254();
  v16 = *(v7 + 8);
  v15 = (v7 + 8);
  v67 = v16;
  v16(v9, v6);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v66 = v11;
  v18 = *(v10 + 16);

  v19 = a2;
  v20 = [a2 contentID];
  v21 = sub_219BF5414();
  v23 = v22;

  LOBYTE(v20) = sub_2188537B8(v21, v23, v18);

  if ((v20 & 1) == 0)
  {
    return result;
  }

  sub_21870F5B4(0, &qword_280E8B590, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  v25 = [v65 interestToken];
  sub_219BF70B4();
  swift_unknownObjectRelease();
  v62 = v19;
  v26 = [v19 contentID];
  v61 = sub_219BF5414();
  v28 = v27;

  v11 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager__interestTokensByContentID;
  a2 = *(v68 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager__interestTokensByContentID);

  *v9 = sub_219BF66A4();
  v64 = v12;
  v63 = v13;
  v69(v9, v12, v6);
  v14 = sub_219BED254();
  v13 = v67;
  v67(v9, v6);
  if ((v14 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v29 = *(a2 + 16);

  if (!*(v29 + 16))
  {

    goto LABEL_9;
  }

  v30 = sub_21870F700(v61, v28);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_2186D1230(*(v29 + 56) + 32 * v30, v72);

  sub_218751558(v72, &v73);
  sub_2186D1230(&v73, v72);
  a2 = *(v3 + 16);
  v17 = *(v3 + 24);
  v14 = a2 + 1;
  if (a2 >= v17 >> 1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v73);
    *(v3 + 16) = v14;
    sub_218751558(v72, (v3 + 32 * a2 + 32));
LABEL_10:
    v33 = [v62 contentID];
    a2 = sub_219BF5414();
    v35 = v34;

    sub_21870F5B4(0, &unk_27CC20B70, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83940]);
    v74 = v36;
    *&v73 = v3;
    v3 = *(v68 + v11);

    v11 = v66;
    *v9 = sub_219BF66A4();
    v69(v9, v64, v6);
    v14 = sub_219BED254();
    v13(v9, v6);
    if ((v14 & 1) == 0)
    {
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
      goto LABEL_33;
    }

    v37 = *(v3 + 16);
    v71 = v37;
    if (v74)
    {
      sub_218751558(&v73, v72);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70 = v37;
      sub_21948CB08(v72, a2, v35, isUniquelyReferenced_nonNull_native);

      a2 = v70;
      v71 = v70;
    }

    else
    {

      sub_218806FD0(&v73);
      sub_2195EA4A0(a2, v35, v72);

      sub_218806FD0(v72);
      a2 = v71;
    }

    *v9 = sub_219BF66A4();
    v39 = v64;
    v69(v9, v64, v6);
    v14 = sub_219BED254();
    v13 = v67;
    v67(v9, v6);
    if ((v14 & 1) == 0)
    {
      goto LABEL_29;
    }

    *(v3 + 16) = a2;

    v40 = v62;
    v41 = [v62 contentID];
    v60 = sub_219BF5414();
    v61 = v42;

    v43 = [v40 contentID];
    v62 = sub_219BF5414();
    v45 = v44;

    v3 = v13;
    v46 = v39;
    v47 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager__storageSizeByContentID;
    a2 = *(v68 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager__storageSizeByContentID);

    *v9 = sub_219BF66A4();
    v48 = v46;
    v13 = v63;
    v69(v9, v48, v6);
    v14 = sub_219BED254();
    (v3)(v9, v6);
    if ((v14 & 1) == 0)
    {
      goto LABEL_30;
    }

    v14 = *(a2 + 16);

    if (*(v14 + 16))
    {
      v49 = sub_21870F700(v62, v45);
      v51 = v50;

      if (v51)
      {
        a2 = *(*(v14 + 56) + 8 * v49);

        goto LABEL_21;
      }
    }

    else
    {
    }

    a2 = 0;
LABEL_21:
    v52 = [v65 storageSize];
    v53 = v52 + a2;
    v11 = v66;
    if (__OFADD__(a2, v52))
    {
      goto LABEL_31;
    }

    a2 = *(v68 + v47);

    *v9 = sub_219BF66A4();
    v3 = v64;
    v54 = v6;
    v55 = v6;
    v6 = v15;
    v15 = v69;
    v69(v9, v64, v54);
    v14 = sub_219BED254();
    v13 = v67;
    v67(v9, v55);
    if ((v14 & 1) == 0)
    {
      goto LABEL_32;
    }

    v56 = *(a2 + 16);

    v57 = swift_isUniquelyReferenced_nonNull_native();
    *&v73 = v56;
    sub_21948EFEC(v53, v60, v61, v57);

    v58 = v73;
    *v9 = sub_219BF66A4();
    v15(v9, v3, v55);
    v14 = sub_219BED254();
    v13(v9, v55);
    if (v14)
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    v3 = sub_2191F7FC8((v17 > 1), v14, 1, v3);
  }

  *(a2 + 16) = v58;
}

uint64_t sub_2198F177C(uint64_t a1, void *a2, double a3)
{
  v42 = a2;
  v41 = type metadata accessor for OfflineContentRequest(0);
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v6 = (v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = v39 - v8;
  v10 = sub_219BED224();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager__offlineContentRequests);
  sub_2186C6148(0, &qword_280E8E3B0);

  *v13 = sub_219BF66A4();
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = sub_219BED254();
  result = (*(v11 + 8))(v13, v10);
  if (v15)
  {
    v17 = *(v14 + 16);

    v18 = *(v17 + 16);
    if (v18)
    {
      v39[1] = a1;
      v19 = 0;
      v40 = v17 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      do
      {
        if (v19 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        sub_2198F30C8(v40 + *(v43 + 72) * v19, v9);
        sub_2198F30C8(v9, v6);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v21 = *v6;
        v22 = v6[1];
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            sub_218950608(0, &unk_280E8F880);
            v25 = v6 + *(v31 + 64);
            v32 = sub_219BF53D4();

            v33 = NDAudioContentIDFromArticleID();

            v21 = sub_219BF5414();
            v22 = v34;

            goto LABEL_14;
          }

          v23 = &unk_280E8F880;
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v23 = &qword_280E8F8B0;
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v23 = &unk_280E8F8A0;
        }

        else
        {
          v23 = &unk_280E8F890;
        }

        sub_218950608(0, v23);
        v25 = v6 + *(v24 + 64);
LABEL_14:
        sub_219242288(v25, type metadata accessor for OfflineContentRequest.Source);
        v26 = [v42 contentID];
        v27 = sub_219BF5414();
        v29 = v28;

        if (v21 == v27 && v22 == v29)
        {

          sub_219242288(v9, type metadata accessor for OfflineContentRequest);
LABEL_22:

          v35 = [v42 contentID];
          v36 = sub_219BF5414();
          v38 = v37;

          sub_2198EB780(v36, v38);

          sub_2198F1C28(a3);
        }

        v30 = sub_219BF78F4();

        result = sub_219242288(v9, type metadata accessor for OfflineContentRequest);
        if (v30)
        {
          goto LABEL_22;
        }

        ++v19;
      }

      while (v18 != v19);
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_2198F1C28(double a1)
{
  v2 = sub_219BE6234();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_219BE2184();
  if (v8 <= a1)
  {
    sub_21870F5B4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    *v5 = sub_219BE3014();
    (*(v3 + 104))(v5, *MEMORY[0x277D6D558], v2);
    sub_219BE2164();
    (*(v3 + 8))(v5, v2);
    v8 = a1;
    return sub_219BE21B4();
  }

  return result;
}

uint64_t sub_2198F1E70(char *a1, void *a2, char *a3)
{
  v109 = a3;
  v112 = a2;
  v4 = sub_219BE6234();
  v108 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for OfflineContentRequest(0);
  v113 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v8 = (&v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v96 - v10;
  v12 = sub_219BED224();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&a1[OBJC_IVAR____TtC7NewsUI221OfflineContentManager__offlineContentRequests];
  v17 = sub_2186C6148(0, &qword_280E8E3B0);

  v105 = v17;
  *v15 = sub_219BF66A4();
  v18 = *(v13 + 104);
  v103 = *MEMORY[0x277D85200];
  v104 = v13 + 104;
  v102 = v18;
  v18(v15);
  LOBYTE(v17) = sub_219BED254();
  v19 = *(v13 + 8);
  v106 = v15;
  v107 = v13 + 8;
  v101 = v19;
  v19(v15, v12);
  if ((v17 & 1) == 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
LABEL_24:
    sub_219BF61F4();
    sub_2186F20D4();
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_219C09EC0;
    v40 = v112;
    v41 = [v112 contentID];
    v42 = sub_219BF5414();
    v44 = v43;

    v45 = MEMORY[0x277D837D0];
    *(v39 + 56) = MEMORY[0x277D837D0];
    v46 = sub_2186FC3BC();
    *(v39 + 64) = v46;
    *(v39 + 32) = v42;
    *(v39 + 40) = v44;
    v115 = 0;
    v116 = 0xE000000000000000;
    v114 = a1;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    v47 = v115;
    v48 = v116;
    *(v39 + 96) = v45;
    *(v39 + 104) = v46;
    *(v39 + 72) = v47;
    *(v39 + 80) = v48;
    sub_219BE5314();

    v49 = [v40 contentID];
    v50 = sub_219BF5414();
    v52 = v51;

    sub_2198EB780(v50, v52);

    v53 = v97;
    *v97 = a1;
    v54 = v108;
    v55 = v99;
    (*(v108 + 104))(v53, *MEMORY[0x277D6D568], v99);
    v56 = a1;
    sub_219BE2164();
    (*(v54 + 8))(v53, v55);
    v115 = 0;
    sub_219BE21B4();
  }

  v100 = v12;
  v20 = *(v16 + 16);

  v21 = *(v20 + 16);
  if (!v21)
  {
  }

  v97 = v6;
  v98 = a1;
  v99 = v4;
  v22 = 0;
  v110 = v20 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
  while (1)
  {
    if (v22 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    sub_2198F30C8(v110 + *(v113 + 72) * v22, v11);
    sub_2198F30C8(v11, v8);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v25 = *v8;
    v24 = v8[1];
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_218950608(0, &unk_280E8F880);
        v28 = v8 + *(v33 + 64);
        v34 = sub_219BF53D4();

        v35 = NDAudioContentIDFromArticleID();

        v25 = sub_219BF5414();
        v24 = v36;

        goto LABEL_14;
      }

      v26 = &unk_280E8F880;
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v26 = &qword_280E8F8B0;
    }

    else
    {
      v26 = (EnumCaseMultiPayload == 3 ? &unk_280E8F8A0 : &unk_280E8F890);
    }

    sub_218950608(0, v26);
    v28 = v8 + *(v27 + 64);
LABEL_14:
    sub_219242288(v28, type metadata accessor for OfflineContentRequest.Source);
    a1 = [v112 contentID];
    v29 = sub_219BF5414();
    v31 = v30;

    if (v25 == v29 && v24 == v31)
    {
      break;
    }

    v32 = sub_219BF78F4();

    sub_219242288(v11, type metadata accessor for OfflineContentRequest);
    if (v32)
    {
      goto LABEL_22;
    }

    if (v21 == ++v22)
    {
    }
  }

  sub_219242288(v11, type metadata accessor for OfflineContentRequest);
LABEL_22:

  a1 = v109;
  if (v109)
  {
    v38 = v109;
    if (qword_280E8D8C0 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_24;
  }

  v57 = v99;
  v58 = v98;
  if (qword_280E8D8C0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_219C0B8C0;
  v60 = v112;
  v61 = [v112 contentID];
  v62 = sub_219BF5414();
  v64 = v63;

  *(v59 + 56) = MEMORY[0x277D837D0];
  *(v59 + 64) = sub_2186FC3BC();
  *(v59 + 32) = v62;
  *(v59 + 40) = v64;
  v65 = [v60 contentID];
  v66 = sub_219BF5414();
  v68 = v67;

  v69 = *&v58[OBJC_IVAR____TtC7NewsUI221OfflineContentManager__storageSizeByContentID];

  v70 = sub_219BF66A4();
  v71 = v106;
  *v106 = v70;
  v72 = v100;
  v102(v71, v103, v100);
  LOBYTE(v65) = sub_219BED254();
  result = v101(v71, v72);
  if (v65)
  {
    v73 = *(v69 + 16);

    v74 = MEMORY[0x277D84A28];
    v75 = MEMORY[0x277D84A90];
    *(v59 + 96) = MEMORY[0x277D84A28];
    *(v59 + 104) = v75;
    if (*(v73 + 16))
    {
      v76 = sub_21870F700(v66, v68);
      v78 = v77;

      if (v78)
      {
        v79 = *(*(v73 + 56) + 8 * v76);

LABEL_33:
        *(v59 + 72) = v79;
        v80 = sub_2198EBB34();
        *(v59 + 136) = v74;
        *(v59 + 144) = v75;
        *(v59 + 112) = v80;
        sub_219BF6214();
        sub_219BE5314();

        sub_219BE2184();
        v81 = v115;
        sub_21870F5B4(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_219C09BA0;
        v83 = v112;
        v84 = [v112 contentID];
        v85 = sub_219BF5414();
        v87 = v86;

        *(inited + 32) = v85;
        *(inited + 40) = v87;
        v88 = sub_218845F78(inited);
        swift_setDeallocating();
        sub_2189AD3D8(inited + 32);
        v115 = sub_2194796A0(v88, v81);
        sub_2198F3CC8(&qword_280E8E9C0, 255, sub_2186E2394);
        sub_219BE21B4();

        v89 = [v83 contentID];
        v90 = sub_219BF5414();
        v92 = v91;

        sub_2198EB780(v90, v92);

        v93 = v108;
        v94 = v97;
        (*(v108 + 104))(v97, *MEMORY[0x277D6D570], v57);
        sub_219BE2164();
        (*(v93 + 8))(v94, v57);
        v115 = 0x3FF0000000000000;
        sub_219BE21B4();

        MEMORY[0x28223BE20](v95);
        *(&v96 - 2) = v58;
        sub_21870F5B4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_219BE30B4();
      }
    }

    else
    {
    }

    v79 = 0;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t sub_2198F2AFC()
{
  sub_2198F3064(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v1 = v0;
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - v2;
  __swift_allocate_value_buffer(v4, qword_27CC20A60);
  v5 = __swift_project_value_buffer(v1, qword_27CC20A60);
  v6 = [objc_opt_self() defaultManager];
  v7 = *MEMORY[0x277D313F0];
  v8 = [v6 containerURLForSecurityApplicationGroupIdentifier_];

  if (v8)
  {
    sub_219BDB8B4();

    v9 = sub_219BDB954();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  }

  else
  {
    v10 = sub_219BDB954();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  return sub_218AB007C(v3, v5);
}

uint64_t sub_2198F2CB8()
{
  sub_21870F5B4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_2198F2D40()
{
  sub_21870F5B4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

unint64_t sub_2198F2FA0()
{
  result = qword_280E8E3F0;
  if (!qword_280E8E3F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E3F0);
  }

  return result;
}

uint64_t objectdestroy_39Tm_1()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

void sub_2198F3064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2198F30C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineContentRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_2198F312C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_2198F3554(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t sub_2198F31F8()
{
  result = qword_280E8E520;
  if (!qword_280E8E520)
  {
    sub_2186C6148(255, &qword_280E8E528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8E520);
  }

  return result;
}

uint64_t sub_2198F3260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2198F32C8(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v30 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = v6;
    v26 = v2;
    v24[1] = v24;
    MEMORY[0x28223BE20](a1);
    v27 = v24 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v7);
    v6 = 0;
    v8 = v4;
    v10 = *(v4 + 56);
    v4 += 56;
    v9 = v10;
    v11 = 1 << *(v4 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v14 = (v11 + 63) >> 6;
    v15 = *a2;
    v28 = 0;
    v29 = v15;
    while (v13)
    {
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v19 = v16 | (v6 << 6);
      v2 = sub_219BF5414();

      a2 = sub_219BF5624();

      if (a2)
      {
        *&v27[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v28++, 1))
        {
          __break(1u);
          return sub_21987C7C8(v27, v25, v28, v8);
        }
      }
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v14)
      {
        return sub_21987C7C8(v27, v25, v28, v8);
      }

      v18 = *(v4 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = sub_2198F312C(v22, v6, v4);

  MEMORY[0x21CECF960](v22, -1, -1);
  return v23;
}

uint64_t sub_2198F3554(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    sub_219BF5414();

    v14 = sub_219BF5624();

    if (v14)
    {
      *(v17 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_21987C7C8(v17, a2, v18, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2198F36D0(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v37 = a2;
  v38 = a1;
  v6 = sub_219BED224();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_2186C6148(0, &qword_280E8E3B0);
  *v9 = sub_219BF66A4();
  v10 = *MEMORY[0x277D85200];
  v39 = *(v7 + 104);
  v39(v9, v10, v6);
  v11 = sub_219BED254();
  v12 = *(v7 + 8);
  result = v12(v9, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v41 = sub_218C4CA54();
  if (!v41)
  {
    v33 = a4;
    return sub_2198F3AE8(v33, v38, v37, a3);
  }

  v35 = a3;
  v14 = *(a4 + 32);

  *v9 = sub_219BF66A4();
  v39(v9, v10, v6);
  v15 = sub_219BED254();
  result = v12(v9, v6);
  if ((v15 & 1) == 0)
  {
    goto LABEL_19;
  }

  v36 = a4;
  v17 = *(v14 + 16);
  v16 = *(v14 + 24);
  sub_218C4DDD0(v17, v16);

  if (!v17 || (v18 = , sub_2198F3C6C(v18, v16), v19 = sub_21941B000(v38, v17), , (v19 & 1) == 0))
  {
    sub_2186C6148(0, &qword_280E8E400);
    v20 = sub_219BF5904();
    [v41 setDownloadRequests_];
  }

  v21 = *(v36 + 32);

  *v9 = sub_219BF66A4();
  v39(v9, v10, v6);
  v22 = sub_219BED254();
  result = v12(v9, v6);
  if ((v22 & 1) == 0)
  {
    goto LABEL_20;
  }

  v24 = *(v21 + 16);
  v23 = *(v21 + 24);
  sub_218C4DDD0(v24, v23);

  if (!v24 || (v25 = v23, sub_2198F3C6C(v24, v23), sub_2186C6148(0, &qword_280E8E528), v26 = v37, v27 = sub_219BF6DD4(), v26, v25, (v27 & 1) == 0))
  {
    [v41 setDownloadLimits_];
  }

  v28 = *(v36 + 32);

  *v9 = sub_219BF66A4();
  v39(v9, v10, v6);
  v29 = sub_219BED254();
  result = v12(v9, v6);
  if (v29)
  {
    v30 = v28[2];
    v31 = v28[3];
    v32 = v28[4];
    sub_218C4DDD0(v30, v31);

    a3 = v35;
    if (!v30 || (sub_2198F3C6C(v30, v31), v32 != a3))
    {
      [v41 registerDownloadConsumer_];
    }

    swift_unknownObjectRelease();
    v33 = v36;
    return sub_2198F3AE8(v33, v38, v37, a3);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2198F3AE8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_219BED224();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 32);
  sub_2186C6148(0, &qword_280E8E3B0);

  v13 = a3;
  v14 = a4;

  *v11 = sub_219BF66A4();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  LOBYTE(a4) = sub_219BED254();
  result = (*(v9 + 8))(v11, v8);
  if (a4)
  {
    v16 = v12[2];
    v17 = v12[3];
    v12[2] = a2;
    v12[3] = v13;
    v12[4] = v14;
    sub_2198F3C6C(v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2198F3C6C(uint64_t result, void *a2)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2198F3CC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2198F3D10(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2198F3064(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2198F3D68(uint64_t a1, void *a2, void *a3)
{
  v7 = *(type metadata accessor for OfflineContentRequest(0) - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_2198EDB34(a1, a2, a3, v8, v9, v10);
}

void sub_2198F3E10()
{
  v1 = *(type metadata accessor for OfflineContentRequest(0) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2198EDCBC(v3, v4, v5, (v0 + 5), v0 + v2, v6);
}

uint64_t sub_2198F3F1C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_2198F51F4(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  *a2 = a1;
  type metadata accessor for FeedGroupSectionTitle(0);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for FeedGroupSectionHeader(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for FeedGroupSectionSubtitle(0);
  (*(*(v9 - 8) + 56))(&a2[v8], 1, 1, v9);
  v10 = [swift_unknownObjectRetain() identifier];
  if (!v10)
  {
    sub_219BF5414();
    v10 = sub_219BF53D4();
  }

  v11 = [objc_opt_self() nss:v10 NewsURLForTagID:?];

  sub_219BDB8B4();
  swift_unknownObjectRelease();

  v12 = sub_219BDB954();
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  return sub_218AB007C(v6, &a2[*(v7 + 24)]);
}

uint64_t sub_2198F40EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FeedGroupSectionSubtitle(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198F51F4(0, &unk_280EAE640, type metadata accessor for TagFeedCurationHeaderSubtitle);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for FeedGroupSectionTitle(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for TagFeedCurationHeaderTitle(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2198F52C4(a1, v16, type metadata accessor for TagFeedCurationHeaderTitle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_219BF2124();
    (*(*(v17 - 8) + 32))(v13, v16, v17);
  }

  else
  {
    *v13 = *v16;
  }

  swift_storeEnumTagMultiPayload();
  sub_2198F53F4(v13, a2, type metadata accessor for FeedGroupSectionTitle);
  v18 = type metadata accessor for TagFeedCurationHeader(0);
  sub_2198F532C(a1 + *(v18 + 20), v10, &unk_280EAE640, type metadata accessor for TagFeedCurationHeaderSubtitle);
  v19 = type metadata accessor for FeedGroupSectionHeader(0);
  v20 = *(v19 + 20);
  v21 = type metadata accessor for TagFeedCurationHeaderSubtitle(0);
  v22 = 1;
  if ((*(*(v21 - 8) + 48))(v10, 1, v21) != 1)
  {
    v23 = sub_219BF2124();
    (*(*(v23 - 8) + 32))(v7, v10, v23);
    sub_2198F53F4(v7, a2 + v20, type metadata accessor for FeedGroupSectionSubtitle);
    v22 = 0;
  }

  (*(v5 + 56))(a2 + v20, v22, 1, v4);
  sub_219245564(a2 + *(v19 + 24));
  return sub_2198F5398(a1);
}

char *sub_2198F4470(uint64_t a1)
{
  v3 = sub_219BF2124();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v48 - v6;
  sub_2198F51F4(0, &unk_280EC20C0, type metadata accessor for FeedGroupSectionSubtitle);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  sub_2198F51F4(0, &unk_280E90890, MEMORY[0x277D333A8]);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v59 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = sub_219BF14C4();
  v63 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v54 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v53 = &v48 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v56 = &v48 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v55 = &v48 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v48 - v24;
  v60 = a1;
  v61 = v1;
  sub_2198F4B2C();
  v26 = sub_2191F7664(0, 1, 1, MEMORY[0x277D84F90]);
  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_2191F7664(v27 > 1, v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = *(v63 + 32);
  v58 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v57 = *(v63 + 72);
  v62 = v29;
  v29(&v26[v58 + v57 * v28], v25, v15);
  v30 = type metadata accessor for FeedGroupSectionHeader(0);
  sub_2198F532C(v61 + *(v30 + 20), v9, &unk_280EC20C0, type metadata accessor for FeedGroupSectionSubtitle);
  v31 = type metadata accessor for FeedGroupSectionSubtitle(0);
  v32 = 1;
  if ((*(*(v31 - 8) + 48))(v9, 1, v31) != 1)
  {
    v33 = v51;
    v34 = v49;
    v35 = v9;
    v36 = v52;
    (*(v51 + 32))(v49, v35, v52);
    (*(v33 + 16))(v50, v34, v36);

    sub_219BF14A4();
    (*(v33 + 8))(v34, v36);
    v32 = 0;
  }

  v37 = v63;
  (*(v63 + 56))(v14, v32, 1, v15);
  v38 = *(v37 + 48);
  if (v38(v14, 1, v15) == 1)
  {
    sub_2198F5268(v14, &unk_280E90890, MEMORY[0x277D333A8]);
  }

  else
  {
    v39 = v55;
    v62(v55, v14, v15);
    (*(v37 + 16))(v56, v39, v15);
    v41 = *(v26 + 2);
    v40 = *(v26 + 3);
    if (v41 >= v40 >> 1)
    {
      v26 = sub_2191F7664(v40 > 1, v41 + 1, 1, v26);
    }

    (*(v37 + 8))(v55, v15);
    *(v26 + 2) = v41 + 1;
    v62(&v26[v58 + v41 * v57], v56, v15);
  }

  v42 = v59;
  sub_2198F4D78(*(v60 + 32), v59);
  if (v38(v42, 1, v15) == 1)
  {
    sub_2198F5268(v42, &unk_280E90890, MEMORY[0x277D333A8]);
  }

  else
  {
    v43 = v53;
    v62(v53, v42, v15);
    v44 = v54;
    (*(v37 + 16))(v54, v43, v15);
    v46 = *(v26 + 2);
    v45 = *(v26 + 3);
    if (v46 >= v45 >> 1)
    {
      v26 = sub_2191F7664(v45 > 1, v46 + 1, 1, v26);
    }

    (*(v37 + 8))(v43, v15);
    *(v26 + 2) = v46 + 1;
    v62(&v26[v58 + v46 * v57], v44, v15);
  }

  return v26;
}

uint64_t sub_2198F4B2C()
{
  v1 = sub_219BF2124();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  v8 = type metadata accessor for FeedGroupSectionTitle(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2198F52C4(v0, v10, type metadata accessor for FeedGroupSectionTitle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v7, v10, v1);
    (*(v2 + 16))(v5, v7, v1);

    sub_219BF14A4();
    return (*(v2 + 8))(v7, v1);
  }

  else
  {
    v12 = *v10;

    v13 = [v12 displayName];
    sub_219BF5414();

    sub_219BF20F4();

    sub_219BF14A4();
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_2198F4D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a1;
  v4 = sub_219BF2124();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = MEMORY[0x277CC9260];
  sub_2198F51F4(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = sub_219BDB954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FeedGroupSectionHeader(0);
  sub_2198F532C(v2 + *(v13 + 24), v8, &unk_280EE9D00, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2198F5268(v8, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v14 = 1;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);

    sub_219BF20E4();
    sub_219BF14A4();
    (*(v10 + 8))(v12, v9);
    v14 = 0;
  }

  v15 = sub_219BF14C4();
  return (*(*(v15 - 8) + 56))(a2, v14, 1, v15);
}

uint64_t sub_2198F5000()
{
  v1 = v0;
  v2 = sub_219BF2124();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FeedGroupSectionTitle(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2198F52C4(v1, v8, type metadata accessor for FeedGroupSectionTitle);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v9 = sub_219BF20D4();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v10 = [*v8 name];
    v9 = sub_219BF5414();
    swift_unknownObjectRelease();
  }

  return v9;
}

void sub_2198F51F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2198F5268(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2198F51F4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2198F52C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2198F532C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2198F51F4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2198F5398(uint64_t a1)
{
  v2 = type metadata accessor for TagFeedCurationHeader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2198F53F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2198F5484()
{
  type metadata accessor for FeedGroupSectionTitle(319);
  if (v0 <= 0x3F)
  {
    sub_2198F51F4(319, &unk_280EC20C0, type metadata accessor for FeedGroupSectionSubtitle);
    if (v1 <= 0x3F)
    {
      sub_2198F51F4(319, &unk_280EE9D00, MEMORY[0x277CC9260]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2198F558C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 432))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2198F55D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 432) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2198F5694(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3)
{
  v374 = a3;
  v375 = a2;
  sub_2198F9D08(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v373 = v4;
  v372 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v371 = &v339[-v5];
  v397 = sub_219BF2CB4();
  v351 = *(v397 - 8);
  MEMORY[0x28223BE20](v397);
  v396 = &v339[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v395 = sub_219BF2634();
  v350 = *(v395 - 8);
  MEMORY[0x28223BE20](v395);
  v394 = &v339[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v435 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v435);
  v353 = &v339[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v400 = &v339[-v10];
  MEMORY[0x28223BE20](v11);
  v402 = &v339[-v12];
  MEMORY[0x28223BE20](v13);
  v387 = &v339[-v14];
  MEMORY[0x28223BE20](v15);
  v420 = &v339[-v16];
  MEMORY[0x28223BE20](v17);
  v433 = &v339[-v18];
  MEMORY[0x28223BE20](v19);
  v418 = &v339[-v20];
  MEMORY[0x28223BE20](v21);
  v432 = &v339[-v22];
  MEMORY[0x28223BE20](v23);
  v416 = &v339[-v24];
  MEMORY[0x28223BE20](v25);
  v431 = &v339[-v26];
  MEMORY[0x28223BE20](v27);
  v414 = &v339[-v28];
  MEMORY[0x28223BE20](v29);
  v393 = &v339[-v30];
  MEMORY[0x28223BE20](v31);
  v386 = &v339[-v32];
  MEMORY[0x28223BE20](v33);
  v389 = &v339[-v34];
  sub_218950B84();
  v434 = v35;
  v376 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v430 = &v339[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v37);
  v421 = &v339[-v38];
  MEMORY[0x28223BE20](v39);
  v419 = &v339[-v40];
  MEMORY[0x28223BE20](v41);
  v417 = &v339[-v42];
  MEMORY[0x28223BE20](v43);
  v415 = &v339[-v44];
  MEMORY[0x28223BE20](v45);
  v413 = &v339[-v46];
  MEMORY[0x28223BE20](v47);
  v392 = &v339[-v48];
  MEMORY[0x28223BE20](v49);
  v388 = &v339[-v50];
  MEMORY[0x28223BE20](v51);
  v412 = &v339[-v52];
  sub_218B061E4();
  v54 = v53;
  v403 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v365 = &v339[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v56);
  v362 = &v339[-v57];
  MEMORY[0x28223BE20](v58);
  v360 = &v339[-v59];
  MEMORY[0x28223BE20](v60);
  v358 = &v339[-v61];
  MEMORY[0x28223BE20](v62);
  v391 = &v339[-v63];
  sub_2198F9C74();
  v390 = v64;
  MEMORY[0x28223BE20](v64);
  v428 = &v339[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v66);
  v426 = &v339[-v67];
  MEMORY[0x28223BE20](v68);
  v425 = &v339[-v69];
  MEMORY[0x28223BE20](v70);
  v424 = &v339[-v71];
  MEMORY[0x28223BE20](v72);
  v423 = &v339[-v73];
  MEMORY[0x28223BE20](v74);
  v422 = &v339[-v75];
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v76 - 8);
  v370 = &v339[-((v77 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v78);
  v364 = &v339[-v79];
  MEMORY[0x28223BE20](v80);
  v385 = &v339[-v81];
  MEMORY[0x28223BE20](v82);
  v349 = &v339[-v83];
  MEMORY[0x28223BE20](v84);
  v384 = &v339[-v85];
  MEMORY[0x28223BE20](v86);
  v348 = &v339[-v87];
  MEMORY[0x28223BE20](v88);
  v383 = &v339[-v89];
  MEMORY[0x28223BE20](v90);
  v347 = &v339[-v91];
  MEMORY[0x28223BE20](v92);
  v382 = &v339[-v93];
  MEMORY[0x28223BE20](v94);
  v346 = &v339[-v95];
  MEMORY[0x28223BE20](v96);
  v356 = &v339[-v97];
  MEMORY[0x28223BE20](v98);
  v409 = &v339[-v99];
  MEMORY[0x28223BE20](v100);
  v408 = &v339[-v101];
  MEMORY[0x28223BE20](v102);
  v407 = &v339[-v103];
  MEMORY[0x28223BE20](v104);
  v106 = &v339[-v105];
  sub_218950928();
  v108 = v107;
  v109 = *(v107 - 1);
  MEMORY[0x28223BE20](v107);
  v352 = &v339[-((v110 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v111);
  v381 = &v339[-v112];
  MEMORY[0x28223BE20](v113);
  v368 = &v339[-v114];
  MEMORY[0x28223BE20](v115);
  v363 = &v339[-v116];
  MEMORY[0x28223BE20](v117);
  v344 = &v339[-v118];
  MEMORY[0x28223BE20](v119);
  v361 = &v339[-v120];
  MEMORY[0x28223BE20](v121);
  v343 = &v339[-v122];
  MEMORY[0x28223BE20](v123);
  v359 = &v339[-v124];
  MEMORY[0x28223BE20](v125);
  v342 = &v339[-v126];
  MEMORY[0x28223BE20](v127);
  v357 = &v339[-v128];
  MEMORY[0x28223BE20](v129);
  v341 = &v339[-v130];
  MEMORY[0x28223BE20](v131);
  v345 = &v339[-v132];
  MEMORY[0x28223BE20](v133);
  v398 = &v339[-v134];
  MEMORY[0x28223BE20](v135);
  v355 = &v339[-v136];
  MEMORY[0x28223BE20](v137);
  v377 = &v339[-v138];
  MEMORY[0x28223BE20](v139);
  v404 = &v339[-v140];
  MEMORY[0x28223BE20](v141);
  v143 = &v339[-v142];
  MEMORY[0x28223BE20](v144);
  v146 = &v339[-v145];
  sub_218950ACC();
  v148 = v147;
  v149 = MEMORY[0x28223BE20](v147);
  v151 = &v339[-((v150 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v369 = v152;
  v153 = *(v152 + 16);
  v399 = v151;
  v367 = v152 + 16;
  v366 = v153;
  v153(v149);
  v427 = v148;
  v410 = a1;
  sub_219BEB354();
  v154 = *(v109 + 48);
  v155 = v154(v106, 1, v108);
  v436 = v54;
  v405 = v109;
  v406 = v109 + 48;
  v429 = v154;
  if (v155 == 1)
  {
    sub_2198F9EB4(v106, sub_218A2D984);
  }

  else
  {
    v156 = *(v109 + 32);
    v156(v146, v106, v108);
    v157 = v407;
    sub_2198CE64C(v407);
    if (v154(v157, 1, v108) == 1)
    {
      (*(v109 + 8))(v146, v108);
      sub_2198F9EB4(v157, sub_218A2D984);
    }

    else
    {
      v156(v143, v157, v108);
      sub_219BEB234();
      v158 = *(v109 + 8);
      v158(v143, v108);
      v158(v146, v108);
    }

    v54 = v436;
  }

  v159 = v408;
  sub_219BEB354();
  v160 = v429(v159, 1, v108);
  v161 = v434;
  if (v160 == 1)
  {
    sub_2198F9EB4(v159, sub_218A2D984);
  }

  else
  {
    v162 = v405;
    v163 = v404;
    (*(v405 + 32))(v404, v159, v108);
    v164 = v377;
    sub_2198CF7A4(v377);
    sub_219BEB234();
    v165 = *(v162 + 8);
    v165(v164, v108);
    v165(v163, v108);
  }

  v166 = v382;
  v167 = v409;
  sub_219BEB354();
  v168 = v429;
  v169 = v429(v167, 1, v108);
  v404 = v108;
  if (v169 == 1)
  {
    sub_2198F9EB4(v167, sub_218A2D984);
  }

  else
  {
    v170 = v405;
    v171 = v355;
    (*(v405 + 32))(v355, v167, v108);
    (*(v170 + 16))(v398, v171, v108);
    v172 = v391;
    sub_219BE6974();
    v173 = v403;
    v174 = v422;
    (*(v403 + 16))(v422, v172, v54);
    v175 = *(v390 + 36);
    sub_2186D59FC(&qword_280EE7538, sub_218B061E4);
    sub_219BF5DF4();
    (*(v173 + 8))(v172, v54);
    sub_219BF5E84();
    v176 = v389;
    v177 = v388;
    if (*(v174 + v175) != v437[0])
    {
      v409 = (v376 + 16);
      v408 = (v376 + 32);
      v407 = (v376 + 8);
      v354 = *MEMORY[0x277D33B98];
      v380 = (v351 + 104);
      v379 = (v351 + 8);
      v378 = (v350 + 8);
      v340 = *MEMORY[0x277D33B80];
      do
      {
        v189 = sub_219BF5EC4();
        v190 = v412;
        (*v409)(v412);
        v189(v437, 0);
        sub_219BF5E94();
        (*v408)(v177, v190, v161);
        sub_219BE5FC4();
        sub_218F382AC(v437);
        sub_2198F9EB4(v176, type metadata accessor for FollowingModel);
        if (v437[3])
        {
          sub_219113278();
          type metadata accessor for FollowingEditorialModel();
          if (swift_dynamicCast())
          {
            v191 = v438;
            v192 = v386;
            sub_219BE5FC4();
            v193 = sub_218F37A90();
            sub_2198F9EB4(v192, type metadata accessor for FollowingModel);
            v401 = v191;
            if (v193)
            {
              v194 = *(v193 + 24);

              v195 = *(v194 + 16);
              swift_unknownObjectRetain();

              __swift_project_boxed_opaque_existential_1((v411 + 392), *(v411 + 416));
              v196 = v396;
              *v396 = v195;
              v197 = v397;
              (*v380)(v196, v354, v397);
              swift_unknownObjectRetain();
              v198 = v394;
              sub_219BF4794();
              (*v379)(v196, v197);
              LOBYTE(v193) = sub_219BF2614();
              swift_unknownObjectRelease();
            }

            else
            {
              __swift_project_boxed_opaque_existential_1((v411 + 392), *(v411 + 416));
              v199 = *(v191 + 16);
              v200 = *(v199 + 24);
              v201 = v396;
              *v396 = *(v199 + 16);
              v201[1] = v200;
              v202 = v397;
              (*v380)(v201, v340, v397);

              v198 = v394;
              sub_219BF4794();
              (*v379)(v201, v202);
              v193 = sub_219BF2614();
            }

            (*v378)(v198, v395);
            v203 = *(v401 + 16);
            v204 = swift_allocObject();
            *(v204 + 16) = v203;
            *(v204 + 24) = v193 & 1;
            *v393 = v204;
            swift_storeEnumTagMultiPayload();
            sub_2186D59FC(&qword_280EDC630, type metadata accessor for FollowingModel);

            v205 = v392;
            sub_219BE5FB4();
            v177 = v388;
            v108 = v404;
            sub_219BE69E4();

            v206 = *v407;
            v161 = v434;
            (*v407)(v205, v434);
            v206(v177, v161);
            v54 = v436;
            v176 = v389;
          }

          else
          {
            v161 = v434;
            (*v407)(v177, v434);
          }
        }

        else
        {
          (*v407)(v177, v161);
          sub_2198F9EB4(v437, sub_219113244);
        }

        v174 = v422;
        sub_219BF5E84();
      }

      while (*(v174 + v175) != v437[0]);
    }

    sub_2198F9EB4(v174, sub_2198F9C74);
    v178 = v355;
    v179 = v398;
    sub_219BEB234();
    v180 = *(v405 + 8);
    v180(v179, v108);
    v180(v178, v108);
    v168 = v429;
    v166 = v382;
  }

  v181 = v356;
  sub_219BEB354();
  if (v168(v181, 1, v108) == 1)
  {
    sub_2198F9EB4(v181, sub_218A2D984);
    v182 = v400;
    v183 = v402;
    v184 = v405;
    v185 = v387;
  }

  else
  {
    v186 = *(v405 + 32);
    v187 = v345;
    v186(v345, v181, v108);
    v188 = v346;
    sub_2198D068C(v346);
    if (v168(v188, 1, v108) == 1)
    {
      v184 = v405;
      (*(v405 + 8))(v187, v108);
      sub_2198F9EB4(v188, sub_218A2D984);
      v182 = v400;
      v183 = v402;
    }

    else
    {
      v207 = v341;
      v186(v341, v188, v108);
      sub_219BEB234();
      v208 = v405;
      v209 = *(v405 + 8);
      v209(v207, v108);
      v209(v187, v108);
      v182 = v400;
      v183 = v402;
      v184 = v208;
    }

    v185 = v387;
    v166 = v382;
  }

  sub_219BEB354();
  if (v429(v166, 1, v108) == 1)
  {
    sub_2198F9EB4(v166, sub_218A2D984);
  }

  else
  {
    v210 = MEMORY[0x277D84F90];
    v422 = *(v184 + 32);
    v412 = (v184 + 32);
    (v422)(v357, v166, v108);
    v211 = v358;
    sub_219BE6974();
    v438 = v210;
    (*(v403 + 16))(v391, v211, v54);
    sub_2186D59FC(&qword_280EE7540, sub_218B061E4);
    v212 = v423;
    sub_219BF56A4();
    v213 = *(v390 + 36);
    sub_2186D59FC(&qword_280EE7538, sub_218B061E4);
    sub_219BF5E84();
    if (*(v212 + v213) != v437[0])
    {
      v214 = (v376 + 16);
      v215 = (v376 + 8);
      v210 = MEMORY[0x277D84F90];
      while (2)
      {
        v409 = v210;
LABEL_35:
        v216 = sub_219BF5EC4();
        v217 = v413;
        v218 = v434;
        (*v214)(v413);
        v216(v437, 0);
        sub_219BF5E94();
        v219 = v414;
        sub_219BE5FC4();
        (*v215)(v217, v218);
        sub_2198F9DC8(v219, v431);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
            v220 = type metadata accessor for FollowingAudioModel;
            goto LABEL_37;
          case 6u:
          case 7u:

            MEMORY[0x21CECC690](v225);
            v54 = v436;
            v212 = v423;
            if (*((v438 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v438 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v409 = *((v438 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_219BF5A14();
            }

            sub_219BF5A54();
            v210 = v438;
            sub_219BF5E84();
            v108 = v404;
            if (*(v212 + v213) != v437[0])
            {
              continue;
            }

            goto LABEL_47;
          case 0xBu:
            v221 = v431;

            sub_2198F9E2C(0, &qword_280ECED10, type metadata accessor for FollowingButtonModel, sub_218748D40);
            v223 = *(v222 + 48);
            sub_218748D40();
            (*(*(v224 - 8) + 8))(&v221[v223], v224);
            goto LABEL_38;
          case 0x10u:
            v220 = type metadata accessor for FollowingMySportsModel;
            goto LABEL_37;
          case 0x11u:
            v220 = type metadata accessor for FollowingPuzzleHubModel;
            goto LABEL_37;
          default:
            v220 = type metadata accessor for FollowingModel;
LABEL_37:
            sub_2198F9EB4(v431, v220);
LABEL_38:
            v54 = v436;
            v212 = v423;
            sub_219BF5E84();
            if (*(v212 + v213) != v437[0])
            {
              goto LABEL_35;
            }

            v108 = v404;
            v210 = v409;
            break;
        }

        break;
      }
    }

LABEL_47:
    sub_2198F9EB4(v212, sub_2198F9C74);
    (*(v403 + 8))(v358, v54);
    v226 = v347;
    sub_2198D09F4(v210, v347);

    v227 = v429(v226, 1, v108);
    v185 = v387;
    if (v227 == 1)
    {
      v184 = v405;
      (*(v405 + 8))(v357, v108);
      sub_2198F9EB4(v226, sub_218A2D984);
    }

    else
    {
      v228 = v342;
      (v422)(v342, v226, v108);
      v229 = v357;
      sub_219BEB234();
      v184 = v405;
      v230 = *(v405 + 8);
      v230(v228, v108);
      v230(v229, v108);
    }

    v182 = v400;
    v183 = v402;
    v161 = v434;
  }

  sub_219BEB354();
  v231 = v383;
  if (v429(v383, 1, v108) == 1)
  {
    sub_2198F9EB4(v231, sub_218A2D984);
  }

  else
  {
    v431 = *(v184 + 32);
    v423 = (v184 + 32);
    (v431)(v359, v231, v108);
    v232 = v360;
    sub_219BE6974();
    v233 = MEMORY[0x277D84F90];
    v438 = MEMORY[0x277D84F90];
    (*(v403 + 16))(v391, v232, v54);
    sub_2186D59FC(&qword_280EE7540, sub_218B061E4);
    v234 = v424;
    sub_219BF56A4();
    v235 = *(v390 + 36);
    sub_2186D59FC(&qword_280EE7538, sub_218B061E4);
    sub_219BF5E84();
    if (*(v234 + v235) != v437[0])
    {
      v236 = (v376 + 16);
      v237 = (v376 + 8);
      while (2)
      {
        v422 = v233;
LABEL_56:
        v238 = sub_219BF5EC4();
        v239 = v415;
        v240 = v434;
        (*v236)(v415);
        v238(v437, 0);
        sub_219BF5E94();
        v241 = v416;
        sub_219BE5FC4();
        (*v237)(v239, v240);
        sub_2198F9DC8(v241, v432);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
            v242 = type metadata accessor for FollowingAudioModel;
            goto LABEL_58;
          case 6u:
          case 7u:

            MEMORY[0x21CECC690](v247);
            v54 = v436;
            v234 = v424;
            if (*((v438 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v438 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v422 = *((v438 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_219BF5A14();
            }

            sub_219BF5A54();
            v233 = v438;
            sub_219BF5E84();
            v108 = v404;
            if (*(v234 + v235) != v437[0])
            {
              continue;
            }

            goto LABEL_68;
          case 0xBu:
            v243 = v432;

            sub_2198F9E2C(0, &qword_280ECED10, type metadata accessor for FollowingButtonModel, sub_218748D40);
            v245 = *(v244 + 48);
            sub_218748D40();
            (*(*(v246 - 8) + 8))(&v243[v245], v246);
            goto LABEL_59;
          case 0x10u:
            v242 = type metadata accessor for FollowingMySportsModel;
            goto LABEL_58;
          case 0x11u:
            v242 = type metadata accessor for FollowingPuzzleHubModel;
            goto LABEL_58;
          default:
            v242 = type metadata accessor for FollowingModel;
LABEL_58:
            sub_2198F9EB4(v432, v242);
LABEL_59:
            v54 = v436;
            v234 = v424;
            sub_219BF5E84();
            if (*(v234 + v235) != v437[0])
            {
              goto LABEL_56;
            }

            v108 = v404;
            v233 = v422;
            break;
        }

        break;
      }
    }

LABEL_68:
    sub_2198F9EB4(v234, sub_2198F9C74);
    (*(v403 + 8))(v360, v54);
    v248 = v348;
    sub_2198D0D0C(v233, v348);

    v249 = v429(v248, 1, v108);
    v185 = v387;
    if (v249 == 1)
    {
      v184 = v405;
      (*(v405 + 8))(v359, v108);
      sub_2198F9EB4(v248, sub_218A2D984);
    }

    else
    {
      v250 = v343;
      (v431)(v343, v248, v108);
      v251 = v359;
      sub_219BEB234();
      v184 = v405;
      v252 = *(v405 + 8);
      v252(v250, v108);
      v252(v251, v108);
    }

    v182 = v400;
    v183 = v402;
    v161 = v434;
  }

  sub_219BEB354();
  v253 = v384;
  if (v429(v384, 1, v108) == 1)
  {
    sub_2198F9EB4(v253, sub_218A2D984);
    v254 = v428;
  }

  else
  {
    v255 = *(v184 + 32);
    v431 = (v184 + 32);
    v432 = v255;
    (v255)(v361, v253, v108);
    v256 = v362;
    sub_219BE6974();
    v257 = MEMORY[0x277D84F90];
    v438 = MEMORY[0x277D84F90];
    (*(v403 + 16))(v391, v256, v54);
    sub_2186D59FC(&qword_280EE7540, sub_218B061E4);
    v258 = v425;
    sub_219BF56A4();
    v259 = *(v390 + 36);
    sub_2186D59FC(&qword_280EE7538, sub_218B061E4);
    sub_219BF5E84();
    if (*(v258 + v259) != v437[0])
    {
      v260 = (v376 + 16);
      v261 = (v376 + 8);
      while (2)
      {
        v424 = v257;
LABEL_77:
        v262 = sub_219BF5EC4();
        v263 = v417;
        v264 = v434;
        (*v260)(v417);
        v262(v437, 0);
        sub_219BF5E94();
        v265 = v418;
        sub_219BE5FC4();
        (*v261)(v263, v264);
        sub_2198F9DC8(v265, v433);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
            v266 = type metadata accessor for FollowingAudioModel;
            goto LABEL_79;
          case 6u:
          case 7u:

            MEMORY[0x21CECC690](v271);
            v54 = v436;
            v258 = v425;
            if (*((v438 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v438 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v424 = *((v438 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_219BF5A14();
            }

            sub_219BF5A54();
            v257 = v438;
            sub_219BF5E84();
            v108 = v404;
            if (*(v258 + v259) != v437[0])
            {
              continue;
            }

            goto LABEL_89;
          case 0xBu:
            v267 = v433;

            sub_2198F9E2C(0, &qword_280ECED10, type metadata accessor for FollowingButtonModel, sub_218748D40);
            v269 = *(v268 + 48);
            sub_218748D40();
            (*(*(v270 - 8) + 8))(&v267[v269], v270);
            goto LABEL_80;
          case 0x10u:
            v266 = type metadata accessor for FollowingMySportsModel;
            goto LABEL_79;
          case 0x11u:
            v266 = type metadata accessor for FollowingPuzzleHubModel;
            goto LABEL_79;
          default:
            v266 = type metadata accessor for FollowingModel;
LABEL_79:
            sub_2198F9EB4(v433, v266);
LABEL_80:
            v54 = v436;
            v258 = v425;
            sub_219BF5E84();
            if (*(v258 + v259) != v437[0])
            {
              goto LABEL_77;
            }

            v108 = v404;
            v257 = v424;
            break;
        }

        break;
      }
    }

LABEL_89:
    sub_2198F9EB4(v258, sub_2198F9C74);
    (*(v403 + 8))(v362, v54);
    v272 = v349;
    sub_2198D1190(v257, v349);

    v273 = v429(v272, 1, v108);
    v254 = v428;
    v185 = v387;
    if (v273 == 1)
    {
      v184 = v405;
      (*(v405 + 8))(v361, v108);
      sub_2198F9EB4(v272, sub_218A2D984);
    }

    else
    {
      v274 = v344;
      (v432)(v344, v272, v108);
      v275 = v361;
      sub_219BEB234();
      v184 = v405;
      v276 = *(v405 + 8);
      v276(v274, v108);
      v276(v275, v108);
    }

    v182 = v400;
    v183 = v402;
    v161 = v434;
  }

  sub_219BEB354();
  v277 = v385;
  if (v429(v385, 1, v108) == 1)
  {
    sub_2198F9EB4(v277, sub_218A2D984);
  }

  else
  {
    (*(v184 + 32))(v363, v277, v108);
    v278 = v365;
    sub_219BE6974();
    v279 = MEMORY[0x277D84F90];
    v438 = MEMORY[0x277D84F90];
    (*(v403 + 16))(v391, v278, v54);
    sub_2186D59FC(&qword_280EE7540, sub_218B061E4);
    v280 = v426;
    sub_219BF56A4();
    v281 = *(v390 + 36);
    sub_2186D59FC(&qword_280EE7538, sub_218B061E4);
    v282 = v280;
    sub_219BF5E84();
    if (*&v280[v281] != v437[0])
    {
      v283 = (v376 + 16);
      v284 = (v376 + 8);
      while (2)
      {
        v433 = v279;
LABEL_98:
        v285 = sub_219BF5EC4();
        v286 = v419;
        (*v283)(v419);
        v285(v437, 0);
        sub_219BF5E94();
        v287 = v420;
        sub_219BE5FC4();
        (*v284)(v286, v161);
        sub_2198F9DC8(v287, v185);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
            v288 = type metadata accessor for FollowingAudioModel;
            goto LABEL_100;
          case 6u:
          case 7u:

            MEMORY[0x21CECC690](v292);
            v282 = v426;
            if (*((v438 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v438 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_219BF5A14();
              v185 = v387;
            }

            sub_219BF5A54();
            v279 = v438;
            sub_219BF5E84();
            v161 = v434;
            if (*(v282 + v281) != v437[0])
            {
              continue;
            }

            goto LABEL_110;
          case 0xBu:

            sub_2198F9E2C(0, &qword_280ECED10, type metadata accessor for FollowingButtonModel, sub_218748D40);
            v290 = *(v289 + 48);
            sub_218748D40();
            (*(*(v291 - 8) + 8))(v185 + v290, v291);
            goto LABEL_101;
          case 0x10u:
            v288 = type metadata accessor for FollowingMySportsModel;
            goto LABEL_100;
          case 0x11u:
            v288 = type metadata accessor for FollowingPuzzleHubModel;
            goto LABEL_100;
          default:
            v288 = type metadata accessor for FollowingModel;
LABEL_100:
            sub_2198F9EB4(v185, v288);
LABEL_101:
            v282 = v426;
            sub_219BF5E84();
            if (*(v282 + v281) != v437[0])
            {
              goto LABEL_98;
            }

            v279 = v433;
            break;
        }

        break;
      }
    }

LABEL_110:
    sub_2198F9EB4(v282, sub_2198F9C74);
    v54 = v436;
    (*(v403 + 8))(v365, v436);
    v293 = v377;
    sub_2198D1458(v279);

    v294 = v363;
    sub_219BEB234();
    v184 = v405;
    v295 = *(v405 + 8);
    v108 = v404;
    v295(v293, v404);
    v295(v294, v108);
    v182 = v400;
    v183 = v402;
    v254 = v428;
  }

  v296 = v364;
  sub_219BEB354();
  if (v429(v296, 1, v108) == 1)
  {
    sub_2198F9EB4(v296, sub_218A2D984);
    v297 = v427;
    v298 = v399;
  }

  else
  {
    v299 = v368;
    (*(v184 + 32))(v368, v296, v108);
    (*(v184 + 16))(v381, v299, v108);
    v300 = v391;
    sub_219BE6974();
    v301 = v403;
    (*(v403 + 16))(v254, v300, v54);
    v302 = *(v390 + 36);
    sub_2186D59FC(&qword_280EE7538, sub_218B061E4);
    sub_219BF5DF4();
    (*(v301 + 8))(v300, v54);
    sub_219BF5E84();
    if (*(v254 + v302) != v437[0])
    {
      v431 = (v376 + 32);
      v432 = (v376 + 16);
      v433 = (v376 + 8);
      LODWORD(v425) = *MEMORY[0x277D33B98];
      v423 = (v351 + 8);
      v424 = (v351 + 104);
      v422 = (v350 + 8);
      while (2)
      {
        v319 = sub_219BF5EC4();
        v320 = v421;
        (*v432)(v421);
        v319(v437, 0);
        sub_219BF5E94();
        (*v431)(v430, v320, v161);
        sub_219BE5FC4();
        sub_2198F9DC8(v183, v182);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
            (*v433)(v430, v161);
            v318 = type metadata accessor for FollowingAudioModel;
            goto LABEL_121;
          case 6u:
          case 7u:
            v321 = *(*v182 + 24);
            v426 = *v182;
            v322 = v426;
            __swift_project_boxed_opaque_existential_1((v411 + 392), *(v411 + 416));
            v323 = v396;
            *v396 = *(v321 + 16);
            v324 = v397;
            (*v424)(v323, v425, v397);

            swift_unknownObjectRetain();
            v325 = v394;
            v326 = v400;
            sub_219BF4794();
            (*v423)(v323, v324);
            v327 = sub_219BF2614();
            (*v422)(v325, v395);
            LOBYTE(v324) = v322[16];
            type metadata accessor for FollowingTagModel();
            v328 = swift_allocObject();
            *(v328 + 16) = v324;
            *(v328 + 24) = v321;
            *(v328 + 32) = v327 & 1;
            swift_getObjectType();

            sub_219BF6274();
            v329 = v353;
            *v353 = v328;
            swift_storeEnumTagMultiPayload();
            sub_218EF1468(v329, v393);
            sub_2186D59FC(&qword_280EDC630, type metadata accessor for FollowingModel);

            v330 = v392;
            v182 = v326;
            v331 = v430;
            sub_219BE5FB4();
            sub_219BE69E4();

            v161 = v434;

            v332 = *v433;
            (*v433)(v330, v161);
            sub_2198F9EB4(v329, type metadata accessor for FollowingModel);
            v332(v331, v161);
            v183 = v402;
            goto LABEL_122;
          case 0xBu:
            (*v433)(v430, v161);

            sub_2198F9E2C(0, &qword_280ECED10, type metadata accessor for FollowingButtonModel, sub_218748D40);
            v334 = *(v333 + 48);
            sub_218748D40();
            v336 = v335;
            v337 = *(*(v335 - 8) + 8);
            v338 = v182 + v334;
            v183 = v402;
            v337(v338, v336);
            goto LABEL_122;
          case 0x10u:
            (*v433)(v430, v161);
            v318 = type metadata accessor for FollowingMySportsModel;
            goto LABEL_121;
          case 0x11u:
            (*v433)(v430, v161);
            v318 = type metadata accessor for FollowingPuzzleHubModel;
            goto LABEL_121;
          default:
            (*v433)(v430, v161);
            v318 = type metadata accessor for FollowingModel;
LABEL_121:
            sub_2198F9EB4(v182, v318);
LABEL_122:
            v254 = v428;
            sub_219BF5E84();
            if (*(v254 + v302) != v437[0])
            {
              continue;
            }

            goto LABEL_115;
        }
      }
    }

LABEL_115:
    sub_2198F9EB4(v254, sub_2198F9C74);
    v303 = v368;
    v304 = v381;
    v297 = v427;
    v298 = v399;
    sub_219BEB234();
    v184 = v405;
    v305 = *(v405 + 8);
    v108 = v404;
    v305(v304, v404);
    v305(v303, v108);
  }

  v306 = v370;
  sub_219BEB354();
  if (v429(v306, 1, v108) == 1)
  {
    sub_2198F9EB4(v306, sub_218A2D984);
  }

  else
  {
    v307 = v352;
    (*(v184 + 32))(v352, v306, v108);
    v308 = v377;
    sub_2198F91B4(v307, v377);
    sub_219BEB234();
    v309 = *(v184 + 8);
    v309(v308, v108);
    v309(v307, v108);
  }

  sub_2198F9E2C(0, &qword_280EE3788, sub_218950ACC, MEMORY[0x277D6D878]);
  v311 = *(v310 + 48);
  v312 = v371;
  (v366)(v371, v298, v297);
  v313 = *MEMORY[0x277D6D868];
  v314 = sub_219BE6DF4();
  (*(*(v314 - 8) + 104))(&v312[v311], v313, v314);
  v315 = v372;
  v316 = v373;
  (*(v372 + 104))(v312, *MEMORY[0x277D6DF70], v373);
  v375(v312);
  (*(v315 + 8))(v312, v316);
  return (*(v369 + 8))(v298, v297);
}

uint64_t sub_2198F91B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218748D40();
  v69 = v5;
  v67 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v68 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v77);
  v71 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v79 = &v59 - v9;
  sub_218950B84();
  v11 = v10;
  v66 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v75 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  MEMORY[0x28223BE20](v16);
  v74 = &v59 - v17;
  sub_218B061E4();
  v19 = v18;
  v78 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v72 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198F9C74();
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  v26 = v25;
  v27 = *(*(v25 - 8) + 16);
  v76 = a2;
  v27(a2, a1, v25);
  __swift_project_boxed_opaque_existential_1((v2 + 392), *(v2 + 416));
  v28 = sub_219BF4784();
  v29 = v72;
  v73 = v26;
  sub_219BE6974();
  v30 = v78;
  v31 = v29;
  (v78[2])(v24, v29, v19);
  v32 = *(v22 + 44);
  sub_2186D59FC(&qword_280EE7538, sub_218B061E4);
  sub_219BF5DF4();
  (v30[1])(v31, v19);
  sub_219BF5E84();
  if (*&v24[v32] != v80[0])
  {
    v78 = (v66 + 2);
    v72 = (v66 + 4);
    v70 = v28 & 1;
    v61 = (v67 + 32);
    v60 = (v67 + 16);
    v59 = (v67 + 8);
    v34 = (v66 + 1);
    do
    {
      v38 = sub_219BF5EC4();
      v39 = *v78;
      v40 = v74;
      (*v78)(v74);
      v38(v80, 0);
      sub_219BF5E94();
      (*v72)(v15, v40, v11);
      sub_219BE5FC4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v36 = type metadata accessor for FollowingModel;
      v42 = v75;
      switch(EnumCaseMultiPayload)
      {
        case 2:
          v35 = type metadata accessor for FollowingAudioModel;
          goto LABEL_5;
        case 8:
        case 9:
        case 10:
        case 12:
        case 13:
          v54 = *(*v79 + 16);
          v55 = *(*v79 + 24);
          v56 = *(*v79 + 40);
          v64 = *(*v79 + 32);
          v65 = v54;
          v66 = v56;
          v67 = v55;
          type metadata accessor for FollowingButtonModel();
          v57 = swift_allocObject();
          v58 = v67;
          *(v57 + 16) = v65;
          *(v57 + 24) = v58;
          *(v57 + 32) = v64;
          *(v57 + 40) = v56;
          *(v57 + 48) = v70;
          *v71 = v57;
          swift_storeEnumTagMultiPayload();
          v65 = sub_2186D59FC(&qword_280EDC630, type metadata accessor for FollowingModel);

          sub_219BE5FB4();

          goto LABEL_7;
        case 11:
          v43 = v79;
          v44 = *v79;
          sub_2198F9E2C(0, &qword_280ECED10, type metadata accessor for FollowingButtonModel, sub_218748D40);
          v64 = v45;
          (*v61)(v68, v43 + *(v45 + 48), v69);
          v46 = v44[3];
          v63 = v44[2];
          v66 = v44;
          v67 = v46;
          v47 = v44[4];
          v48 = v44[5];
          v62 = v47;
          v65 = v48;
          type metadata accessor for FollowingButtonModel();
          v49 = swift_allocObject();
          v51 = v67;
          v50 = v68;
          *(v49 + 16) = v63;
          *(v49 + 24) = v51;
          *(v49 + 32) = v62;
          *(v49 + 40) = v48;
          *(v49 + 48) = v70;
          v52 = *(v64 + 48);
          v53 = v71;
          *v71 = v49;
          (*v60)(v53 + v52, v50, v69);
          swift_storeEnumTagMultiPayload();
          v64 = sub_2186D59FC(&qword_280EDC630, type metadata accessor for FollowingModel);

          sub_219BE5FB4();

          (*v59)(v68, v69);
          goto LABEL_7;
        case 16:
          v35 = type metadata accessor for FollowingMySportsModel;
          goto LABEL_5;
        case 17:
          v35 = type metadata accessor for FollowingPuzzleHubModel;
LABEL_5:
          v36 = v35;
          break;
        default:
          break;
      }

      sub_2198F9EB4(v79, v36);
      (v39)(v42, v15, v11);
LABEL_7:
      sub_219BE69E4();
      v37 = *v34;
      (*v34)(v42, v11);
      v37(v15, v11);
      sub_219BF5E84();
    }

    while (*&v24[v32] != v80[0]);
  }

  return sub_2198F9EB4(v24, sub_2198F9C74);
}

uint64_t sub_2198F9B98(uint64_t a1)
{
  v2 = sub_218B12630();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2198F9BD8()
{
  result = qword_280E9DA40;
  if (!qword_280E9DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9DA40);
  }

  return result;
}

void sub_2198F9C74()
{
  if (!qword_280E8D530)
  {
    sub_218B061E4();
    sub_2186D59FC(&qword_280EE7538, sub_218B061E4);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D530);
    }
  }
}

void sub_2198F9D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D59FC(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2198F9DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2198F9E2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2198F9EB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2198F9F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_218C90C1C();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FF4C0(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C90CC8(a1, v8);
  v14 = *(v11 + 48);
  if (v14(v8, 1, v10) == 1)
  {
    type metadata accessor for SearchFeedServiceConfig();
    sub_218C90E50(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig);
    sub_219BEE974();
    if (v14(v8, 1, v10) != 1)
    {
      sub_218C90D2C(v8);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v8, v10);
  }

  (*(v11 + 32))(a3, v13, v10);
  if (!a2)
  {
    v16[1] = 5;
    sub_2186F9548();
    swift_allocObject();
    a2 = sub_219BEF534();
  }

  sub_218C90D2C(a1);
  result = type metadata accessor for ChannelsSearchFeedGroupKnobs();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_2198FA1C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = a2;
  sub_218C90C1C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198FA740(0, &qword_280E8CC48, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198FA6EC();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2186FF4C0(0);
    v15 = 0;
    sub_218C90E50(&unk_280E91A00, sub_2186FF4C0);
    sub_219BF7674();
    sub_2186F9548();
    v14 = 1;
    sub_218C90E50(&qword_280E913B8, sub_2186F9548);
    sub_219BF7674();
    sub_2198F9F3C(v6, v13[1], v13[0]);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2198FA42C(void *a1)
{
  v3 = v1;
  sub_2198FA740(0, &qword_27CC20BE0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198FA6EC();
  sub_219BF7B44();
  v13 = 0;
  sub_2186FF4C0(0);
  sub_218C90E50(&qword_27CC10588, sub_2186FF4C0);
  sub_219BF7834();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for ChannelsSearchFeedGroupKnobs() + 20));
    v11[15] = 1;
    sub_2186F9548();
    sub_218C90E50(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2198FA644(uint64_t a1)
{
  v2 = sub_2198FA6EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2198FA680(uint64_t a1)
{
  v2 = sub_2198FA6EC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2198FA6EC()
{
  result = qword_280EB4E50;
  if (!qword_280EB4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4E50);
  }

  return result;
}

void sub_2198FA740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2198FA6EC();
    v7 = a3(a1, &type metadata for ChannelsSearchFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2198FA7B8()
{
  result = qword_27CC20BE8;
  if (!qword_27CC20BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20BE8);
  }

  return result;
}

unint64_t sub_2198FA810()
{
  result = qword_280EB4E40;
  if (!qword_280EB4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4E40);
  }

  return result;
}

unint64_t sub_2198FA868()
{
  result = qword_280EB4E48;
  if (!qword_280EB4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4E48);
  }

  return result;
}

uint64_t sub_2198FA8BC()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2198FA944(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 36))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2198FA9A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_2198FAA08()
{
  sub_219BF2394();
  v0 = sub_219BF2364();
  v1 = MEMORY[0x21CEC9110]();

  return v1;
}

uint64_t sub_2198FAA74()
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2198FAAF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2198FACC0();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2198FAB3C()
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

unint64_t sub_2198FABB8()
{
  result = qword_27CC20BF0;
  if (!qword_27CC20BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20BF0);
  }

  return result;
}

unint64_t sub_2198FAC10()
{
  result = qword_27CC20BF8;
  if (!qword_27CC20BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20BF8);
  }

  return result;
}

unint64_t sub_2198FAC68()
{
  result = qword_27CC20C00;
  if (!qword_27CC20C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20C00);
  }

  return result;
}

unint64_t sub_2198FACC0()
{
  result = qword_27CC20C08;
  if (!qword_27CC20C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20C08);
  }

  return result;
}

unint64_t sub_2198FAD18()
{
  result = qword_27CC20C10;
  if (!qword_27CC20C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20C10);
  }

  return result;
}

void sub_2198FAD6C()
{
  sub_219BED0C4();
  v0 = objc_opt_self();
  v1 = sub_219BF53D4();
  sub_218A293AC();
  v2 = sub_219BF6BB4();
  v3 = [objc_opt_self() configurationWithFont_];

  v4 = [v0 ts:v1 internalSystemImageNamed:v3 withConfiguration:?];
  if (v4)
  {
    [v4 imageWithRenderingMode_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2198FAE84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_218706154(0, &qword_27CC20C18, MEMORY[0x277D6D6E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_219BE6904();
  sub_219BE1E34();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a2, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_2198FAFD0@<X0>(uint64_t *a1@<X8>)
{
  v64 = a1;
  v1 = sub_219BE6754();
  MEMORY[0x28223BE20](v1 - 8);
  v62 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_219BE77E4();
  v69 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE7F34();
  v5 = *(v4 - 8);
  v72 = v4;
  v73 = v5;
  MEMORY[0x28223BE20](v4);
  v71 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218706154(0, &unk_280EE5358, sub_2198FBF44, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v54 - v8;
  sub_2198FBF44();
  v70 = v10;
  v11 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v12 = sub_219BE81E4();
  v67 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218706154(0, &qword_280E8BE60, MEMORY[0x277D6DBB8], MEMORY[0x277D84560]);
  v61 = sub_219BE7854();
  v16 = *(v61 - 8);
  v56 = *(v16 + 72);
  v60 = v16;
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219CB2DB0;
  v63 = v18;
  v68 = v18 + v17;
  v66 = sub_219BEAF34();
  sub_219BEA894();
  *v15 = sub_219BEA874();
  v19 = *(v13 + 104);
  v19(v15, *MEMORY[0x277D6DE78], v12);
  LOBYTE(v74) = 0;
  sub_219BE71E4();
  LOBYTE(v74) = 0;
  sub_219BE71E4();
  (*(v11 + 56))(v9, 0, 1, v70);
  v65 = *MEMORY[0x277D6DDC0];
  v20 = v72;
  v21 = *(v73 + 104);
  v73 += 104;
  v70 = v21;
  v21(v71);
  sub_2198FBF9C();
  sub_219BE7834();
  sub_219BEAF54();
  sub_219BEA9A4();
  *v15 = 101;
  v19(v15, *MEMORY[0x277D6DE80], v67);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();
  v24 = [v23 bundleForClass_];
  sub_219BDB5E4();

  v66 = v23;
  v67 = ObjCClassFromMetadata;
  v25 = [v23 bundleForClass_];
  sub_219BDB5E4();

  (v70)(v71, v65, v20);
  v26 = v56;
  v27 = v68;
  sub_219BE7844();
  v28 = sub_219BE5CC4();
  sub_219BE5C74();
  v29 = v27;
  sub_219BE5CB4();
  v30 = *MEMORY[0x277D6DBB0];
  v31 = *(v69 + 104);
  v69 += 104;
  v55 = v31;
  v33 = v58;
  v32 = v59;
  v31(v58, v30, v59);
  v34 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v35 = [v34 UUIDString];

  sub_219BF5414();
  sub_219BE77F4();
  v57 = v28;
  v74 = sub_219BE5CA4();
  v65 = *MEMORY[0x277D6DDB8];
  v70(v71);
  sub_219BE7C24();
  sub_2187B7098(&qword_280EE4E48, MEMORY[0x277D6DCC8]);
  sub_219BE7814();
  v55(v33, v30, v32);
  v36 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v37 = [v36 UUIDString];

  sub_219BF5414();
  sub_219BE77F4();
  v69 = v29 - v26 + 8 * v26;
  if (qword_280EE5DA0 != -1)
  {
    swift_once();
  }

  v74 = qword_280F62500;

  sub_219BE6744();
  v39 = v66;
  v38 = v67;
  v40 = [v66 bundleForClass_];
  sub_219BDB5E4();
  v59 = v41;

  v42 = [v39 bundleForClass_];
  sub_219BDB5E4();

  v43 = v71;
  (v70)(v71, v65, v72);
  sub_219BE6774();
  sub_2187B7098(&unk_280EE59E0, MEMORY[0x277D6D6B0]);
  sub_219BE7804();
  v44 = v68;
  sub_219BE5C84();
  if (qword_280EE5D98 != -1)
  {
    swift_once();
  }

  v45 = v61;
  v46 = __swift_project_value_buffer(v61, qword_280F624E8);
  v47 = *(v60 + 16);
  v47(v44 + 9 * v26, v46, v45);
  if (qword_280EE5DB0 != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v45, qword_280F62508);
  v47(v44 + 10 * v26, v48, v45);
  v69 = v44 + 11 * v26;
  v74 = sub_219BE5C94();
  v50 = v66;
  v49 = v67;
  v51 = [v66 bundleForClass_];
  sub_219BDB5E4();

  v52 = [v50 bundleForClass_];
  sub_219BDB5E4();

  (v70)(v43, v65, v72);
  sub_219BE6D04();
  sub_2187B7098(&qword_280EE5708, MEMORY[0x277D6D808]);
  result = sub_219BE7824();
  *v64 = v63;
  return result;
}

uint64_t sub_2198FBC60()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2198FBD54()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2198FBE14()
{
  sub_219BE6904();
  sub_219BE2914();
}

uint64_t sub_2198FBE74(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218706154(0, &qword_280E8F4E0, MEMORY[0x277D6DBB8], MEMORY[0x277D83940]);
  result = sub_219BE1DF4();
  if (v2)
  {
    sub_219BE5CC4();
    sub_219BE5CA4();
    return sub_219BE68F4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2198FBF44()
{
  if (!qword_280EE5368)
  {
    v0 = sub_219BE71F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5368);
    }
  }
}

unint64_t sub_2198FBF9C()
{
  result = qword_280EE4FF8;
  if (!qword_280EE4FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4FF8);
  }

  return result;
}

void sub_2198FBFF8()
{
  ObjectType = swift_getObjectType();
  if (sub_219BED0C4())
  {
    v11 = sub_219BF65B4();
    [v11 setRightBarButtonItem_];
    v2 = v11;
  }

  else
  {
    v3 = sub_219901310(&qword_280EC4FC0, type metadata accessor for FollowingViewController);
    v4 = v0;
    v5 = MEMORY[0x21CEBCBD0](ObjectType, v3);
    if (v5)
    {
      v6 = v5;
      swift_getObjectType();
      sub_219BE90C4();
    }

    v7 = __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC7NewsUI223FollowingViewController_styler], *&v4[OBJC_IVAR____TtC7NewsUI223FollowingViewController_styler + 24]);
    v12 = [v4 navigationItem];
    v8 = *v7;
    if (sub_219BED0C4())
    {
      v2 = v12;
    }

    else
    {
      v9 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
      [v9 configureWithDefaultBackground];
      v10 = *(*__swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
      sub_218A754A4(v9, v10);

      [v12 setScrollEdgeAppearance_];
      v2 = v9;
    }
  }
}

id sub_2198FC254()
{
  ObjectType = swift_getObjectType();

  sub_219BE58F4();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2198FC478()
{
  v1 = v0;
  v51.receiver = v0;
  v51.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v51, sel_viewDidLoad);
  if ((sub_219BED0C4() & 1) == 0)
  {
    v2 = *&v0[OBJC_IVAR____TtC7NewsUI223FollowingViewController_searchCoordinator];
    v3 = sub_219BF65B4();
    [v3 setSearchController_];

    v4 = sub_219BF65B4();
    [v4 setHidesSearchBarWhenScrolling_];

    swift_unknownObjectWeakAssign();
  }

  if (sub_219BED0C4())
  {
    sub_2198FCCB0(0);
  }

  else
  {
    v5 = sub_219BF65B4();
    v6 = [v0 editButtonItem];
    [v5 setRightBarButtonItem_];
  }

  v7 = *&v1[OBJC_IVAR____TtC7NewsUI223FollowingViewController_blueprintViewController];
  [v1 addChildViewController_];
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = v8;
  v10 = [v7 view];
  if (!v10)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = v10;
  [v9 addSubview_];

  [v7 didMoveToParentViewController_];
  v12 = [v7 view];
  if (!v12)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = v12;
  v14 = [v1 view];
  if (!v14)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setFrame_];
  sub_219BE86B4();
  sub_219901310(&unk_280EC4FA0, type metadata accessor for FollowingViewController);
  sub_219BE8CA4();
  swift_allocObject();
  v24 = v1;
  sub_219BE8C94();
  sub_219BE70B4();

  sub_219BE8664();
  v25 = sub_219BE7BC4();

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = objc_opt_self();
  v28 = [v27 bundleForClass_];
  sub_219BDB5E4();

  v29 = sub_219BF53D4();

  [v25 setAccessibilityLabel_];

  sub_219BE8664();
  v30 = sub_219BE7BC4();

  sub_219BF25D4();
  sub_219901310(&qword_280E903F8, MEMORY[0x277D33920]);
  sub_219BF6C74();

  v31 = [v24 traitCollection];
  sub_2198FCD94(v31);

  if ([*&v24[OBJC_IVAR____TtC7NewsUI223FollowingViewController_featureAvailability] useOfflineMode])
  {
    v32 = sub_219BF65B4();
    v33 = [v32 searchController];

    if (v33)
    {
      v34 = [v33 searchBar];

      v35 = [v34 searchTextField];
      if ([v24 isEditing])
      {
        LOBYTE(v36) = 0;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(&v24[OBJC_IVAR____TtC7NewsUI223FollowingViewController_offlineProvider], *&v24[OBJC_IVAR____TtC7NewsUI223FollowingViewController_offlineProvider + 24]);
        v36 = sub_219BEED44() ^ 1;
      }

      [v35 setEnabled_];
    }

    v37 = [v24 editButtonItem];
    __swift_project_boxed_opaque_existential_1(&v24[OBJC_IVAR____TtC7NewsUI223FollowingViewController_offlineProvider], *&v24[OBJC_IVAR____TtC7NewsUI223FollowingViewController_offlineProvider + 24]);
    [v37 setEnabled_];
  }

  v38 = [v24 traitCollection];
  v39 = [v38 horizontalSizeClass];

  if (v39 == 1)
  {
    v40 = sub_219BF65B4();
    v41 = [v40 searchController];

    if (v41)
    {
      v42 = [v41 searchResultsController];

      if (v42)
      {
        type metadata accessor for SearchHomeCoordinatingController();
        if (swift_dynamicCastClass())
        {
          sub_21903F2DC(0);
        }
      }
    }
  }

  if (sub_219BED0C4())
  {
    sub_219BE2CF4();
    v43 = sub_219901310(&unk_280EC4FB0, type metadata accessor for FollowingViewController);
    sub_219BE8894();
    v44 = sub_219BE88A4();
    v44(v24, v43);
    sub_2188050C0();
    v45 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v50 action:sel_bannerTapped];
    [*(v50 + qword_280EABEF0) addGestureRecognizer_];
  }

  v46 = [v27 bundleForClass_];
  sub_219BDB5E4();

  v47 = sub_219BF65B4();
  v48 = sub_219BF53D4();

  [v47 setBackButtonTitle_];

  v49 = sub_219BF65B4();
  [v49 setBackButtonDisplayMode_];
}

void sub_2198FCCB0(char a1)
{
  v2 = v1;
  sub_219BE2CF4();
  v4 = sub_219BE8854();

  v5 = sub_219BF65B4();
  v6 = v5;
  if (v4)
  {
    [v5 setRightBarButtonItem:0 animated:a1 & 1];
  }

  else
  {
    v7 = [v2 editButtonItem];
    [v6 setRightBarButtonItem:v7 animated:a1 & 1];

    v6 = v7;
  }
}

void sub_2198FCD94(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_219BE8664();
  v5 = sub_219BE7BC4();

  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  [v5 setBackgroundColor_];

  v8 = &v2[OBJC_IVAR____TtC7NewsUI223FollowingViewController_styler];
  v9 = __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI223FollowingViewController_styler], *&v2[OBJC_IVAR____TtC7NewsUI223FollowingViewController_styler + 24]);
  v10 = sub_219901310(&qword_280EC4FC0, type metadata accessor for FollowingViewController);
  v11 = MEMORY[0x21CEBCBD0](ObjectType, v10);
  if (v11)
  {
    v12 = v11;
    v13 = *v9;
    v14 = [v11 view];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = *(*__swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    [v15 setBackgroundColor_];
  }

  if ((sub_219BED0C4() & 1) == 0)
  {
    v21 = sub_219BF65B4();
    v22 = [v21 searchController];

    if (v22)
    {
      if ([v22 isActive])
      {
        v23 = MEMORY[0x21CEBCBD0](ObjectType, v10);
        if (v23)
        {
          v24 = v23;
          swift_getObjectType();
          sub_219BE90C4();
        }

        v25 = __swift_project_boxed_opaque_existential_1(v8, *(v8 + 3));
        v37 = [v2 navigationItem];
        v26 = *v25;
        if ((sub_219BED0C4() & 1) == 0)
        {
          v35 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
          [v35 configureWithDefaultBackground];
          v36 = *(*__swift_project_boxed_opaque_existential_1((v26 + 16), *(v26 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
          sub_218A754A4(v35, v36);

          [v37 setScrollEdgeAppearance_];
          v34 = v35;
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    v30 = MEMORY[0x21CEBCBD0](ObjectType, v10);
    if (v30)
    {
      v31 = v30;
      swift_getObjectType();
      sub_219BE90C4();
    }

    v32 = __swift_project_boxed_opaque_existential_1(v8, *(v8 + 3));
    v27 = [v2 navigationItem];
    v33 = *v32;
    if (sub_219BED0C4())
    {
      [v27 setLargeTitleDisplayMode_];
      v37 = [v6 clearColor];
      sub_219BEDA04();
    }

    else
    {
      v37 = *(*__swift_project_boxed_opaque_existential_1((v33 + 16), *(v33 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
      sub_218A7575C(v27, v37);
    }

    goto LABEL_24;
  }

  v17 = __swift_project_boxed_opaque_existential_1(v8, *(v8 + 3));
  v18 = sub_219BF65B4();
  v19 = *v17;
  if (sub_219BED0C4())
  {
    [v18 setLargeTitleDisplayMode_];
    v20 = [v6 clearColor];
    sub_219BEDA04();
  }

  else
  {
    v20 = *(*__swift_project_boxed_opaque_existential_1((v19 + 16), *(v19 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    sub_218A7575C(v18, v20);
  }

  if ([a1 horizontalSizeClass] == 1 && objc_msgSend(a1, sel_userInterfaceIdiom) == 1)
  {
    v27 = sub_219BF65B4();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v37 = sub_219BF53D4();

    [v27 setTitle_];
LABEL_24:

    goto LABEL_25;
  }

  v37 = sub_219BF65B4();
  [v37 setTitle_];
LABEL_25:
  v34 = v37;
LABEL_26:
}

void sub_2198FD37C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_219BE61B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v18 - v11;
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_viewWillAppear_, a1 & 1, v10);
  sub_219BE86A4();
  sub_219BE6F74();

  (*(v6 + 104))(v8, *MEMORY[0x277D6D520], v5);
  sub_219901310(&qword_280EE5AF0, MEMORY[0x277D6D528]);
  v13 = sub_219BF53A4();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v12, v5);
  if ((v13 & 1) == 0)
  {
    v15 = *(*&v2[OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler] + 40);
    v16 = swift_getObjectType();
    (*(v15 + 32))(0, 0, v16, v15);
  }

  v17 = [v2 traitCollection];
  sub_2198FCD94(v17);
}

id sub_2198FD604(char a1)
{
  v2 = v1;
  v18.receiver = v2;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_viewDidAppear_, a1 & 1);
  v2[OBJC_IVAR____TtC7NewsUI223FollowingViewController_viewHasAppearedAtLeastOnce] = 1;
  v4 = *(*&v2[OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler] + 40);
  ObjectType = swift_getObjectType();
  (*(v4 + 152))(0, ObjectType, v4);
  v6 = [v2 presentedViewController];
  if (v6)
  {
    v7 = v6;
    v16 = &unk_282B81A38;
    v8 = swift_dynamicCastObjCProtocolConditional();
    if (v8)
    {
      [v8 presenterDidAppear_];
    }
  }

  result = [v2 view];
  if (result)
  {
    v10 = result;
    v11 = [result window];

    if (v11)
    {
      v12 = [v11 traitCollection];

      if (v12)
      {
        v13 = [objc_opt_self() currentDevice];
        v14 = [v13 userInterfaceIdiom];

        if (v14 > 1 || v14 == -1 || v14 && (v14 != 1 || [v12 horizontalSizeClass] != 1))
        {
        }

        else
        {
          v15 = swift_allocObject();
          *(v15 + 16) = 2;
          v17 = v15 | 0x3000000000000000;
          sub_219BE7884();

          sub_218932F9C(v17);
        }
      }
    }

    return sub_219BE5964();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2198FD914(char a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_viewDidDisappear_, a1 & 1);
  v4 = [v2 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 topViewController];

    if (v6)
    {
      if (sub_219BF6554())
      {
        v7 = *(*&v2[OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler] + 40);
        ObjectType = swift_getObjectType();
        (*(v7 + 104))(ObjectType, v7);
        sub_2198FDA8C(0, 0);
      }
    }
  }

  v9 = [v2 presentedViewController];
  if (v9)
  {
    v10 = v9;
    v11 = swift_dynamicCastObjCProtocolConditional();
    if (v11)
    {
      [v11 presenterDidDisappear_];
    }
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 2;
  v14 = v12 | 0x3000000000000000;
  sub_219BE7864();
  return sub_218932F9C(v14);
}

id sub_2198FDA8C(int a1, char a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&v2[OBJC_IVAR____TtC7NewsUI223FollowingViewController_featureAvailability];
  if ([v7 useOfflineMode])
  {
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI223FollowingViewController_offlineProvider], *&v2[OBJC_IVAR____TtC7NewsUI223FollowingViewController_offlineProvider + 24]);
    a1 &= sub_219BEED44() ^ 1;
  }

  v25.receiver = v2;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, sel_setEditing_animated_, a1 & 1, a2 & 1);
  sub_219BE8654();
  sub_219BE8664();
  v8 = sub_219BE7BC4();

  [v8 setDragInteractionEnabled_];

  sub_219BE8664();
  v9 = sub_219BE7BC4();

  v10 = [v9 collectionViewLayout];

  [v10 invalidateLayout];
  v11 = [v7 useOfflineMode];
  v12 = (v11 ^ 1) & (a1 ^ 1);
  if (((v11 ^ 1) & 1) == 0 && (a1 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC7NewsUI223FollowingViewController_offlineProvider], *&v3[OBJC_IVAR____TtC7NewsUI223FollowingViewController_offlineProvider + 24]);
    v12 = sub_219BEED44() ^ 1;
  }

  v13 = sub_219BF65B4();
  v14 = [v13 searchController];

  if (v14)
  {
    v15 = [v14 searchBar];

    v16 = [v15 searchTextField];
    [v16 setEnabled_];
  }

  if (v12)
  {
    goto LABEL_13;
  }

  result = [v3 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = [result traitCollection];

  v20 = [v19 horizontalSizeClass];
  if (v20 != 1)
  {
LABEL_13:
    if (a1)
    {
      v22 = *&v3[OBJC_IVAR____TtC7NewsUI223FollowingViewController_searchCoordinator];
      *(v22 + 40) = 0;
      return [*(v22 + 24) setActive_];
    }
  }

  else
  {
    v21 = *&v3[OBJC_IVAR____TtC7NewsUI223FollowingViewController_searchCoordinator];
    *(v21 + 40) = 0;
    result = [*(v21 + 24) setActive_];
    if (a1)
    {
      return result;
    }
  }

  v23 = *(*&v3[OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler] + 40);
  v24 = swift_getObjectType();
  return (*(v23 + 152))(0, v24, v23);
}

uint64_t sub_2198FDF00()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v11, sel_viewSafeAreaInsetsDidChange);
  if ((*(v0 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_viewHasAppearedAtLeastOnce) & 1) == 0)
  {
    sub_219BE8664();
    v3 = sub_219BE7BC4();

    [v3 contentSize];

    result = sub_219BF6BA4();
    if ((result & 1) == 0)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_219902434;
      *(v6 + 24) = v5;
      v10[4] = sub_218807D50;
      v10[5] = v6;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 1107296256;
      v10[2] = sub_218807CE4;
      v10[3] = &block_descriptor_67_0;
      v7 = _Block_copy(v10);
      v8 = v1;

      [v4 performWithoutAnimation_];
      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_2198FE0E8(void *a1)
{
  v2 = [a1 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 _expectedContentInsetDeltaForViewController_];
    v5 = v4;

    sub_219BE8664();
    v6 = sub_219BE7BC4();

    [v6 setContentOffset_];
  }
}

uint64_t sub_2198FE34C()
{
  sub_219113A48(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198FE780(v9);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    return sub_2199013BC(v9, sub_218A7BA30);
  }

  (*(v12 + 32))(v14, v9, v11);
  if ((sub_219BE5F94() & 1) == 0)
  {
    return (*(v12 + 8))(v14, v11);
  }

  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      (*(v12 + 8))(v14, v11);
      v16 = type metadata accessor for FollowingAudioModel;
      goto LABEL_6;
    case 6u:
    case 7u:
      v17 = *v6;
      v18 = *(v0 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler);
      v19 = sub_219BE6174();
      (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
      v20 = *(v18 + 40);
      ObjectType = swift_getObjectType();
      (*(v20 + 88))(v17, v3, 2, ObjectType, v20);

      sub_2199013BC(v3, sub_219113A48);
      return (*(v12 + 8))(v14, v11);
    case 0xBu:
      (*(v12 + 8))(v14, v11);

      sub_218748BF4();
      v23 = *(v22 + 48);
      sub_218748D40();
      return (*(*(v24 - 8) + 8))(&v6[v23], v24);
    case 0x10u:
      (*(v12 + 8))(v14, v11);
      v16 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_6;
    case 0x11u:
      (*(v12 + 8))(v14, v11);
      v16 = type metadata accessor for FollowingPuzzleHubModel;
      goto LABEL_6;
    default:
      (*(v12 + 8))(v14, v11);
      v16 = type metadata accessor for FollowingModel;
LABEL_6:
      result = sub_2199013BC(v6, v16);
      break;
  }

  return result;
}

uint64_t sub_2198FE780@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  sub_218748534(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - v4;
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDC104();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_219BEA2B4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2199013BC(v8, sub_218747BDC);
    v13 = 1;
    v14 = v18;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_219BE86A4();
    v19 = v20;
    sub_2187486B4(0);
    sub_219901310(&unk_280EE5550, sub_2187486B4);
    sub_219BE7B94();

    v14 = v18;
    sub_219BEB344();
    (*(v3 + 8))(v5, v2);
    (*(v10 + 8))(v12, v9);
    v13 = 0;
  }

  sub_218950B84();
  return (*(*(v15 - 8) + 56))(v14, v13, 1, v15);
}

uint64_t sub_2198FEB30(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_219BDC144())
  {
    sub_2198FE780(v8);
    if ((*(v11 + 48))(v8, 1, v10) == 1)
    {
      sub_2199013BC(v8, sub_218A7BA30);
      v14 = 0;
    }

    else
    {
      (*(v11 + 32))(v13, v8, v10);
      v14 = sub_219BE5F94();
      (*(v11 + 8))(v13, v10);
    }
  }

  else
  {
    sub_2199023CC(a2, v24, sub_21880702C);
    v15 = v25;
    if (v25)
    {
      v16 = __swift_project_boxed_opaque_existential_1(v24, v25);
      v17 = *(v15 - 8);
      v18 = MEMORY[0x28223BE20](v16);
      v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      v21 = sub_219BF78D4();
      (*(v17 + 8))(v20, v15);
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      v21 = 0;
    }

    v23.receiver = v2;
    v23.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v23, sel_canPerformAction_withSender_, a1, v21);
    swift_unknownObjectRelease();
  }

  return v14 & 1;
}

id sub_2198FEEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*(v3 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_featureAvailability) useOfflineMode] || (__swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_offlineProvider), *(v3 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_offlineProvider + 24)), (sub_219BEED44() & 1) == 0) || (sub_218950B84(), sub_219BE5FC4(), v11 = sub_218F38050(), result = sub_2199013BC(v10, type metadata accessor for FollowingModel), (v11 & 1) != 0))
  {
    sub_2198FF03C(a1, a2, a3);
    sub_219BED0C4();
    v13 = *(v4 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_searchCoordinator);
    *(v13 + 40) = 0;
    return [*(v13 + 24) setActive_];
  }

  return result;
}

id sub_2198FF03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a3;
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v30 = a2;
  sub_219BE5F84();
  sub_218748534(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v31 = a1;
  sub_219BEB244();

  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_2199013BC(v12, sub_218A2D984);
    v18 = 0;
  }

  else
  {
    (*(v15 + 32))(v17, v12, v14);
    sub_219BE6934();
    (*(v15 + 8))(v17, v14);
    v39[2] = v35;
    v39[3] = v36;
    v39[4] = v37;
    v40 = v38;
    v39[0] = v33;
    v39[1] = v34;
    v18 = sub_2199FCA40();
    sub_2189C3F04(v39);
  }

  result = [v4 view];
  if (result)
  {
    v20 = result;
    v21 = [result window];

    if (v21)
    {
      v22 = [v21 traitCollection];
      v23 = [v22 horizontalSizeClass];

      if (v23 != 1)
      {
        sub_219BE5F24();
      }
    }

    sub_219901310(&qword_280EDC640, type metadata accessor for FollowingModel);
    v24 = v30;
    v25 = sub_219BEB304();
    v33 = xmmword_219C14A10;
    v34 = 0uLL;
    sub_2193FD074(v24, v25, v18, &v33);
    v26 = sub_219BDC104();
    v27 = *(v26 - 8);
    (*(v27 + 16))(v9, v32, v26);
    (*(v27 + 56))(v9, 0, 1, v26);
    v28 = OBJC_IVAR____TtC7NewsUI223FollowingViewController_previousSelectedIndexPath;
    swift_beginAccess();
    sub_2197D462C(v9, v4 + v28);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2198FF498(uint64_t a1, char *a2)
{
  v54 = a1;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  v53 = v6;
  v51 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219902368();
  v13 = v12;
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v16 - 8);
  v49 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v46 - v22;
  v24 = type metadata accessor for FollowingModel();
  *&v25 = MEMORY[0x28223BE20](v24 - 8).n128_u64[0];
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v2 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_featureAvailability) useOfflineMode])
  {
    v50 = v23;
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_offlineProvider), *(v2 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_offlineProvider + 24));
    v23 = v50;
    if (sub_219BEED44())
    {
      sub_219BE5FC4();
      v28 = sub_218F38050();
      sub_2199013BC(v27, type metadata accessor for FollowingModel);
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v29 = *(v10 + 16);
  v50 = a2;
  v29(v23, a2, v9);
  (*(v10 + 56))(v23, 0, 1, v9);
  sub_2198FE780(v20);
  v30 = *(v13 + 48);
  sub_2199023CC(v23, v15, sub_218A7BA30);
  sub_2199023CC(v20, &v15[v30], sub_218A7BA30);
  v31 = *(v10 + 48);
  if (v31(v15, 1, v9) == 1)
  {
    sub_2199013BC(v20, sub_218A7BA30);
    sub_2199013BC(v23, sub_218A7BA30);
    if (v31(&v15[v30], 1, v9) == 1)
    {
      sub_2199013BC(v15, sub_218A7BA30);
      return 0;
    }

    goto LABEL_9;
  }

  v33 = v49;
  sub_2199023CC(v15, v49, sub_218A7BA30);
  if (v31(&v15[v30], 1, v9) != 1)
  {
    v41 = &v15[v30];
    v42 = v47;
    (*(v10 + 32))(v47, v41, v9);
    sub_219901310(&unk_280EE5C80, sub_218950B84);
    v43 = v33;
    v44 = sub_219BF53A4();
    v45 = *(v10 + 8);
    v45(v42, v9);
    sub_2199013BC(v20, sub_218A7BA30);
    sub_2199013BC(v23, sub_218A7BA30);
    v45(v43, v9);
    sub_2199013BC(v15, sub_218A7BA30);
    v34 = v50;
    if ((v44 & 1) == 0)
    {
      goto LABEL_10;
    }

    return 0;
  }

  sub_2199013BC(v20, sub_218A7BA30);
  sub_2199013BC(v23, sub_218A7BA30);
  (*(v10 + 8))(v33, v9);
LABEL_9:
  sub_2199013BC(v15, sub_219902368);
  v34 = v50;
LABEL_10:
  sub_219BE5F84();
  sub_218748534(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v35 = v52;
  sub_219BEB244();

  v36 = v51;
  v37 = v53;
  if ((*(v51 + 48))(v35, 1, v53) == 1)
  {
    sub_2199013BC(v35, sub_218A2D984);
    v38 = 0;
  }

  else
  {
    v39 = v48;
    (*(v36 + 32))(v48, v35, v37);
    sub_219BE6934();
    (*(v36 + 8))(v39, v37);
    v61[3] = v58;
    v61[4] = v59;
    v62 = v60;
    v61[0] = v55;
    v61[1] = v56;
    v61[2] = v57;
    v38 = sub_2199FCA40();
    sub_2189C3F04(v61);
  }

  sub_219901310(&qword_280EDC640, type metadata accessor for FollowingModel);
  v40 = sub_219BEB304();
  return sub_2193FD990(v34, v40, v38);
}

uint64_t sub_2198FFCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a3, v5, v7);
  result = (*(v6 + 88))(v9, v5);
  if (result == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v9, v5);
LABEL_3:
    v11 = *(*(v3 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v11 + 112))(ObjectType, v11);
  }

  if (result == *MEMORY[0x277D6E928])
  {
    v13 = *(v3 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = *(v13 + 40);
    v16 = swift_getObjectType();
    v17 = *(v15 + 32);

    v17(sub_219902360, v14, v16, v15);
  }

  else
  {
    if (result == *MEMORY[0x277D6E948] || result == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (result != *MEMORY[0x277D6E958] && result != *MEMORY[0x277D6E970])
    {
      result = sub_219BF7514();
      __break(1u);
    }
  }

  return result;
}

void sub_2198FFF48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_219BF65B4();

    v3 = [v2 searchController];
    if (v3)
    {
      v4 = [v3 searchBar];

      v5 = [v4 text];
      if (v5)
      {
        v6 = sub_219BF5414();
        v8 = v7;

        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v6 & 0xFFFFFFFFFFFFLL;
        }

        if (v9)
        {
          v10 = *&v1[OBJC_IVAR____TtC7NewsUI223FollowingViewController_searchCoordinator];
          *(v10 + 40) = 1;
          v11 = *(v10 + 24);

          v12 = [v11 searchBar];
          [v12 becomeFirstResponder];

          v1 = v12;
        }
      }
    }
  }
}

uint64_t sub_2199000A8(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 40))(a2, 2, ObjectType, v4);
}

uint64_t sub_2199001B0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 88), *(*(v0 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 112));
  v1 = off_282A57C70;
  type metadata accessor for FollowingTracker();
  return v1();
}

char *sub_219900230(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a1;
  sub_218950B84();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v49 = objc_opt_self();
  v50 = ObjCClassFromMetadata;
  v11 = [v49 bundleForClass_];
  v47 = sub_219BDB5E4();
  v46 = v12;

  sub_219BF5114();
  v13 = sub_219BF50F4();
  v14 = swift_allocObject();
  v51 = v3;
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(v9, a2, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v7 + 32))(v17 + v15, v9, v6);
  *(v17 + v16) = v14;
  v18 = v48;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
  v19 = v18;
  *&v53 = v47;
  *(&v53 + 1) = v46;
  *&v54 = v13;
  *(&v54 + 1) = 2;
  *&v55 = sub_219901C5C;
  *(&v55 + 1) = v17;
  *&v56 = sub_21876836C;
  *(&v56 + 1) = 0;
  v57 = 0;

  sub_219901BA8(&v53, v52);
  v20 = sub_2191FA710(0, 1, 1, MEMORY[0x277D84F90]);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_2191FA710((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = &v20[72 * v22];
  *(v23 + 2) = v53;
  v24 = v54;
  v25 = v55;
  v26 = v56;
  v23[96] = v57;
  *(v23 + 4) = v25;
  *(v23 + 5) = v26;
  *(v23 + 3) = v24;
  v27 = sub_2192E840C();
  v29 = v28;
  v30 = *(*(v19 + 24) + 27);
  if (v30 < 0 && (v30 & 1) != 0)
  {
    v31 = [v49 bundleForClass_];
    sub_219BDB5E4();
    v32 = 1;
  }

  else
  {
    v31 = [v49 bundleForClass_];
    sub_219BDB5E4();
    v32 = 0;
  }

  sub_219901358(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_219C09BA0;
  *(v33 + 56) = MEMORY[0x277D837D0];
  *(v33 + 64) = sub_2186FC3BC();
  *(v33 + 32) = v27;
  *(v33 + 40) = v29;
  v34 = sub_219BF5454();
  v36 = v35;

  if (v32)
  {
    v37 = sub_219BF50C4();
  }

  else
  {
    v37 = sub_219BF50A4();
  }

  v38 = v37;
  v39 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v19;
  v41 = *(v20 + 2);
  v42 = *(v20 + 3);

  if (v41 >= v42 >> 1)
  {
    v20 = sub_2191FA710((v42 > 1), v41 + 1, 1, v20);
  }

  sub_219901C0C(&v53);
  *(v20 + 2) = v41 + 1;
  v43 = &v20[72 * v41];
  *(v43 + 4) = v34;
  *(v43 + 5) = v36;
  *(v43 + 6) = v38;
  *(v43 + 7) = 2;
  *(v43 + 8) = sub_219901CF4;
  *(v43 + 9) = v40;
  *(v43 + 10) = sub_21876836C;
  *(v43 + 11) = 0;
  v43[96] = 1;
  return v20;
}

uint64_t sub_2199007C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE7654();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE7634();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  MEMORY[0x28223BE20](v13);
  (*(v15 + 16))(&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v10 + 104))(v12, *MEMORY[0x277D6DA70], v9);
  (*(v6 + 104))(v8, *MEMORY[0x277D6DAB0], v5);
  sub_219901CFC(0, &qword_27CC16390, MEMORY[0x277D6E3E0]);
  swift_allocObject();
  v16 = sub_219BE9044();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v18 = *(Strong + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler);
  v19 = Strong;
  swift_unknownObjectRetain();

  v20 = *(v18 + 40);
  ObjectType = swift_getObjectType();
  (*(v20 + 64))(a3, v16, ObjectType, v20);

  return swift_unknownObjectRelease();
}

uint64_t sub_219900AD0(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler];
  swift_unknownObjectRetain();

  v5 = *(v4 + 40);
  ObjectType = swift_getObjectType();
  (*(v5 + 56))(a2, ObjectType, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_219900B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219113A48(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = *&Strong[OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler];
  swift_unknownObjectRetain();

  v9 = sub_219BE6174();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = *(v8 + 40);
  ObjectType = swift_getObjectType();
  (*(v10 + 88))(a3, v6, 2, ObjectType, v10);
  sub_2199013BC(v6, sub_219113A48);
  swift_unknownObjectRelease();
  return 1;
}

void sub_219900C98()
{
  sub_2186C66AC();
  v0 = sub_219BF6F44();
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_219900D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 40);
  ObjectType = swift_getObjectType();
  return (*(v5 + 40))(a4, 1, ObjectType, v5);
}

uint64_t sub_219900DF0()
{
  v0 = sub_219BF65B4();
  v1 = [v0 searchController];

  if (v1)
  {
    v2 = [v1 searchBar];
    v3 = [v2 searchTextField];

    LODWORD(v2) = [v3 isEditing];
    if (v2)
    {
      v4 = [v1 searchBar];

      return v4;
    }
  }

  return sub_219BE8764();
}

uint64_t sub_219900F8C()
{
  sub_219BE86B4();
  sub_219BE70C4();
}

uint64_t sub_219900FE0@<X0>(uint64_t *a1@<X8>)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  *a1 = v2;
  v3 = *MEMORY[0x277D6DA10];
  v4 = sub_219BE74B4();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_219901084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D56E0](a1, ObjectType, a3);
}

id sub_21990115C()
{
  result = [v0 tabBarController];
  if (result)
  {
    v2 = result;
    v3 = [result traitCollection];

    v4 = [v3 horizontalSizeClass];
    return (v4 == 1);
  }

  return result;
}

uint64_t sub_2199011D4()
{
  sub_219BE2CF4();
  v0 = sub_219BE8854();

  return v0 & 1;
}

double sub_219901224()
{
  sub_219BE2CF4();
  sub_219BE8864();
  v1 = v0;

  return v1;
}

uint64_t sub_219901310(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_219901358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2199013BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21990141C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v52 = MEMORY[0x277D84F90];
  if (*(*(a1 + 24) + 27) < 0)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v49 = 0x8000000219D3D1D0;
    sub_219BDB5E4();

    v6 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v3;
    v8 = objc_allocWithZone(MEMORY[0x277D75088]);

    v9 = sub_219BF53D4();

    *&v55 = sub_21990246C;
    *(&v55 + 1) = v7;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v10 = &block_descriptor_47_0;
    goto LABEL_10;
  }

  if (*(a1 + 16) <= 1u && *(a1 + 16))
  {

    goto LABEL_9;
  }

  v11 = sub_219BF78F4();

  if (v11)
  {
LABEL_9:
    type metadata accessor for Localized();
    v12 = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v49 = 0x8000000219D3D190;
    sub_219BDB5E4();

    v14 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v3;
    v8 = objc_allocWithZone(MEMORY[0x277D75088]);

    v9 = sub_219BF53D4();

    *&v55 = sub_219901C3C;
    *(&v55 + 1) = v15;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v10 = &block_descriptor_40_3;
LABEL_10:
    *&v54 = sub_218C5B6F8;
    *(&v54 + 1) = v10;
    v16 = _Block_copy(&aBlock);
    v17 = [v8 initWithName:v9 actionHandler:{v16, v49}];

    _Block_release(v16);

    v18 = v17;
    MEMORY[0x21CECC690]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_35;
    }

    goto LABEL_11;
  }

  while (1)
  {
    v19 = sub_219900230(v3, a2);
    v18 = *(v19 + 2);
    v20 = MEMORY[0x277D84F90];
    if (v18)
    {
      v21 = 0;
      v22 = v19 + 32;
      v23 = MEMORY[0x277D84F90];
      do
      {
        v24 = *(v19 + 2);
        v25 = &v22[72 * v21];
        v26 = v21;
        while (1)
        {
          if (v26 >= v24)
          {
            __break(1u);
            goto LABEL_34;
          }

          v27 = *(v25 + 1);
          v28 = *(v25 + 2);
          v29 = *(v25 + 3);
          v57 = v25[64];
          v30 = *v25;
          v56 = v29;
          v54 = v27;
          v55 = v28;
          aBlock = v30;
          v21 = v26 + 1;
          if (v57)
          {
            break;
          }

          v25 += 72;
          ++v26;
          if (v18 == v21)
          {
            goto LABEL_26;
          }
        }

        v3 = v19;
        sub_219901BA8(&aBlock, v50);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C37050(0, *(v23 + 16) + 1, 1);
          v23 = v51;
        }

        v33 = *(v23 + 16);
        v32 = *(v23 + 24);
        a2 = v33 + 1;
        v19 = v3;
        if (v33 >= v32 >> 1)
        {
          sub_218C37050((v32 > 1), v33 + 1, 1);
          v19 = v3;
          v23 = v51;
        }

        *(v23 + 16) = a2;
        v34 = v23 + 72 * v33;
        *(v34 + 32) = aBlock;
        v35 = v54;
        v36 = v55;
        v37 = v56;
        *(v34 + 96) = v57;
        *(v34 + 64) = v36;
        *(v34 + 80) = v37;
        *(v34 + 48) = v35;
      }

      while (v18 - 1 != v26);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

LABEL_26:

    a2 = *(v23 + 16);
    if (!a2)
    {
      break;
    }

    v51 = v20;
    sub_219BF73F4();
    v38 = 0;
    v39 = 32;
    v3 = &block_descriptor_184;
    while (v38 < *(v23 + 16))
    {
      ++v38;
      aBlock = *(v23 + v39);
      v40 = *(v23 + v39 + 16);
      v41 = *(v23 + v39 + 32);
      v42 = *(v23 + v39 + 48);
      v57 = *(v23 + v39 + 64);
      v56 = v42;
      v54 = v40;
      v55 = v41;
      v43 = swift_allocObject();
      memmove((v43 + 16), (v23 + v39), 0x41uLL);
      v44 = objc_allocWithZone(MEMORY[0x277D75088]);
      sub_219901BA8(&aBlock, v50);
      sub_219901BA8(&aBlock, v50);
      v45 = sub_219BF53D4();
      v50[4] = sub_219901BE0;
      v50[5] = v43;
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 1107296256;
      v50[2] = sub_218C5B6F8;
      v50[3] = &block_descriptor_184;
      v46 = _Block_copy(v50);
      [v44 initWithName:v45 actionHandler:v46];

      _Block_release(v46);

      sub_219901C0C(&aBlock);
      sub_219BF73D4();
      v18 = *(v51 + 16);
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v39 += 72;
      if (a2 == v38)
      {

        v47 = v51;
        goto LABEL_32;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    sub_219BF5A14();
LABEL_11:
    sub_219BF5A54();
  }

  v47 = MEMORY[0x277D84F90];
LABEL_32:
  sub_2191ED524(v47);
  return v52;
}

uint64_t sub_219901C5C()
{
  sub_218950B84();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v4);
  v6 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2199007C8(v0 + v3, v5, v6);
}

void sub_219901CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FollowingModel();
    v7 = sub_219901310(&qword_280EDC630, type metadata accessor for FollowingModel);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_219901D98(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = v2 == 0x6573776F7262 && v3 == 0xE600000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {
    __swift_project_boxed_opaque_existential_1((*(v1 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 48), *(*(v1 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 72));
    return sub_218BF4F3C();
  }

  else if (v2 == 0xD000000000000013 && 0x8000000219CF2020 == v3 || (sub_219BF78F4() & 1) != 0)
  {
    v6 = *(*(v1 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    return (*(v6 + 72))(ObjectType, v6);
  }

  else if (v2 == 0xD000000000000013 && 0x8000000219CE4590 == v3 || (sub_219BF78F4() & 1) != 0)
  {
    __swift_project_boxed_opaque_existential_1((*(v1 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 48), *(*(v1 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 72));
    return sub_218BF5C30();
  }

  else if (v2 == 0x61466567616E616DLL && v3 == 0xEC000000796C696DLL || (sub_219BF78F4() & 1) != 0 || v2 == 0xD000000000000012 && 0x8000000219D3B660 == v3 || (sub_219BF78F4() & 1) != 0)
  {
    __swift_project_boxed_opaque_existential_1((*(v1 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 48), *(*(v1 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 72));
    return sub_218BF55E0();
  }

  else if (v2 == 0x64656B696C736964 && v3 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {
    v8 = *(v1 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler);
    __swift_project_boxed_opaque_existential_1(v8 + 6, v8[9]);
    v9 = v8[5];
    v10 = swift_getObjectType();
    v11 = (*(v9 + 80))(v10, v9);
    sub_218BF31EC(v11);
  }

  else if (v2 == 0x6C616E7265746E69 && v3 == 0xED00006775626544 || (result = sub_219BF78F4(), (result & 1) != 0))
  {
    __swift_project_boxed_opaque_existential_1((*(v1 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 48), *(*(v1 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 72));
    return sub_218BF55B8();
  }

  return result;
}

uint64_t sub_2199020A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_219BE7654();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE7634();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  MEMORY[0x28223BE20](v14);
  (*(v16 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  (*(v11 + 104))(v13, *MEMORY[0x277D6DA70], v10);
  (*(v7 + 104))(v9, *MEMORY[0x277D6DA98], v6);
  sub_219901CFC(0, &qword_27CC16390, MEMORY[0x277D6E3E0]);
  swift_allocObject();
  v17 = sub_219BE9044();
  v18 = *(*(v3 + OBJC_IVAR____TtC7NewsUI223FollowingViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  (*(v18 + 64))(a1, v17, ObjectType, v18);
}

void sub_219902368()
{
  if (!qword_27CC20C58)
  {
    sub_218A7BA30(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20C58);
    }
  }
}

uint64_t sub_2199023CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219902470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v18 = a1;
  v20 = sub_219BE5134();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE0A84();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BE0F64();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDFD34();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE51C4();
  sub_219BDFD24();
  sub_2199054E4(&qword_27CC20C60, MEMORY[0x277D2E098]);
  sub_219BDCCC4();
  (*(v13 + 8))(v15, v12);
  (*(v3 + 16))(v5, v21, v20);
  sub_219902814(v5, v8);
  sub_219BE0F54();
  sub_2199054E4(&qword_27CC20C88, MEMORY[0x277D2EE18]);
  v16 = v19;
  sub_219BDCCC4();
  (*(v9 + 8))(v11, v16);
  sub_219BE0D94();
  sub_2199054E4(&qword_27CC20C98, MEMORY[0x277D2ECE0]);
  memset(v22, 0, sizeof(v22));
  sub_219BDCCE4();
  return sub_218806FD0(v22);
}

uint64_t sub_219902814@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE5134();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v34[-v10];
  v12 = *(v5 + 16);
  v12(&v34[-v10], a1, v4, v9);
  v13 = (*(v5 + 88))(v11, v4);
  if (v13 == *MEMORY[0x277D347F0])
  {
    goto LABEL_2;
  }

  if (v13 == *MEMORY[0x277D34808])
  {
    (*(v5 + 8))(a1, v4);
    v14 = MEMORY[0x277D2EA58];
    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x277D34800])
  {
    (*(v5 + 8))(a1, v4);
    v14 = MEMORY[0x277D2EA50];
    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x277D347E8])
  {
    (*(v5 + 8))(a1, v4);
    v14 = MEMORY[0x277D2EA38];
    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x277D347E0])
  {
    (*(v5 + 8))(a1, v4);
    v14 = MEMORY[0x277D2EA30];
    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x277D347F8])
  {
    (*(v5 + 8))(a1, v4);
    v14 = MEMORY[0x277D2EA48];
    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x277D347D8])
  {
LABEL_2:
    (*(v5 + 8))(a1, v4);
    v14 = MEMORY[0x277D2EA40];
LABEL_13:
    v15 = *v14;
    v16 = sub_219BE0A84();
    return (*(*(v16 - 8) + 104))(a2, v15, v16);
  }

  if (qword_27CC08640 != -1)
  {
    swift_once();
  }

  v18 = sub_219BE5434();
  __swift_project_value_buffer(v18, qword_27CCD8BD0);
  (v12)(v7, a1, v4);
  v19 = sub_219BE5414();
  v20 = sub_219BF61F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v37 = v21;
    v38 = swift_slowAlloc();
    v39 = v38;
    *v21 = 136315138;
    sub_2199054E4(&qword_27CC20C78, MEMORY[0x277D34810]);
    v36 = v19;
    v22 = sub_219BF7894();
    v24 = v23;
    v25 = *(v5 + 8);
    v35 = v20;
    v25(v7, v4);
    v26 = sub_2186D1058(v22, v24, &v39);

    v28 = v36;
    v27 = v37;
    *(v37 + 1) = v26;
    v29 = v27;
    _os_log_impl(&dword_2186C1000, v28, v35, "Encountered an unknown live activity subscription source. activity=%s.", v27, 0xCu);
    v30 = v38;
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x21CECF960](v30, -1, -1);
    MEMORY[0x21CECF960](v29, -1, -1);

    v31 = a1;
  }

  else
  {

    v25 = *(v5 + 8);
    v25(a1, v4);
    v31 = v7;
  }

  v25(v31, v4);
  v32 = *MEMORY[0x277D2EA40];
  v33 = sub_219BE0A84();
  (*(*(v33 - 8) + 104))(a2, v32, v33);
  return (v25)(v11, v4);
}

uint64_t sub_219902D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v18 = a1;
  v20 = sub_219BE5134();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE0864();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BE0CD4();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDFD34();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE51C4();
  sub_219BDFD24();
  sub_2199054E4(&qword_27CC20C60, MEMORY[0x277D2E098]);
  sub_219BDCCC4();
  (*(v13 + 8))(v15, v12);
  (*(v3 + 16))(v5, v21, v20);
  sub_2199030B0(v5, v8);
  sub_219BE0CC4();
  sub_2199054E4(&qword_27CC20C68, MEMORY[0x277D2EC58]);
  v16 = v19;
  sub_219BDCCC4();
  (*(v9 + 8))(v11, v16);
  sub_219BE1064();
  sub_2199054E4(&qword_27CC20C70, MEMORY[0x277D2EEB0]);
  memset(v22, 0, sizeof(v22));
  sub_219BDCCE4();
  return sub_218806FD0(v22);
}

uint64_t sub_2199030B0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE5134();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v51[-v9];
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v51[-v13];
  v15 = *(v5 + 16);
  v15(&v51[-v13], a1, v4, v12);
  v16 = (*(v5 + 88))(v14, v4);
  if (v16 == *MEMORY[0x277D347F0])
  {
    (*(v5 + 8))(a1, v4);
LABEL_3:
    v17 = MEMORY[0x277D2E868];
LABEL_8:
    v18 = *v17;
    v19 = sub_219BE0864();
    return (*(*(v19 - 8) + 104))(a2, v18, v19);
  }

  if (v16 == *MEMORY[0x277D34808])
  {
    (*(v5 + 8))(a1, v4);
    v17 = MEMORY[0x277D2E878];
    goto LABEL_8;
  }

  if (v16 == *MEMORY[0x277D34800])
  {
    (*(v5 + 8))(a1, v4);
    v17 = MEMORY[0x277D2E870];
    goto LABEL_8;
  }

  if (v16 == *MEMORY[0x277D347E8] || v16 == *MEMORY[0x277D347E0] || v16 == *MEMORY[0x277D347F8])
  {
    if (qword_27CC08640 != -1)
    {
      swift_once();
    }

    v23 = sub_219BE5434();
    __swift_project_value_buffer(v23, qword_27CCD8BD0);
    (v15)(v10, a1, v4);
    v24 = sub_219BE5414();
    v25 = sub_219BF61F4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v54 = v26;
      v55 = swift_slowAlloc();
      v56 = v55;
      *v26 = 136315138;
      sub_2199054E4(&qword_27CC20C78, MEMORY[0x277D34810]);
      v27 = sub_219BF7894();
      v29 = v28;
      v30 = *(v5 + 8);
      v30(v10, v4);
      v31 = sub_2186D1058(v27, v29, &v56);

      v32 = v54;
      *(v54 + 1) = v31;
      _os_log_impl(&dword_2186C1000, v24, v25, "Encountered an unknown live activity dismissal source. activity=%s.", v32, 0xCu);
      v33 = v55;
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x21CECF960](v33, -1, -1);
      MEMORY[0x21CECF960](v32, -1, -1);

      v30(a1, v4);
    }

    else
    {

      v34 = *(v5 + 8);
      v34(a1, v4);
      v34(v10, v4);
    }

    goto LABEL_3;
  }

  if (v16 == *MEMORY[0x277D347D8])
  {
    (*(v5 + 8))(a1, v4);
    v17 = MEMORY[0x277D2E860];
    goto LABEL_8;
  }

  if (qword_27CC08640 != -1)
  {
    swift_once();
  }

  v35 = sub_219BE5434();
  __swift_project_value_buffer(v35, qword_27CCD8BD0);
  (v15)(v7, a1, v4);
  v36 = sub_219BE5414();
  v37 = sub_219BF61F4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v54 = v38;
    v55 = swift_slowAlloc();
    v56 = v55;
    *v38 = 136315138;
    sub_2199054E4(&qword_27CC20C78, MEMORY[0x277D34810]);
    v53 = v36;
    v39 = sub_219BF7894();
    v41 = v40;
    v42 = *(v5 + 8);
    v52 = v37;
    v42(v7, v4);
    v43 = sub_2186D1058(v39, v41, &v56);

    v45 = v53;
    v44 = v54;
    *(v54 + 1) = v43;
    v46 = v44;
    _os_log_impl(&dword_2186C1000, v45, v52, "Encountered an unknown live activity dismissal source. activity=%s.", v44, 0xCu);
    v47 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x21CECF960](v47, -1, -1);
    MEMORY[0x21CECF960](v46, -1, -1);

    v48 = a1;
  }

  else
  {

    v42 = *(v5 + 8);
    v42(a1, v4);
    v48 = v7;
  }

  v42(v48, v4);
  v49 = *MEMORY[0x277D2E868];
  v50 = sub_219BE0864();
  (*(*(v50 - 8) + 104))(a2, v49, v50);
  return (v42)(v14, v4);
}

uint64_t sub_219903750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v37 = a3;
  v4 = sub_219BDBD34();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BE5134();
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE0A84();
  MEMORY[0x28223BE20](v7 - 8);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE0F64();
  v10 = *(v9 - 8);
  v42 = v9;
  v43 = v10;
  MEMORY[0x28223BE20](v9);
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE0944();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x28223BE20](v12);
  v32 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE0DB4();
  v15 = *(v14 - 8);
  v35 = v14;
  v36 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BE1594();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BDFD34();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE51C4();
  sub_219BDFD24();
  sub_2199054E4(&qword_27CC20C60, MEMORY[0x277D2E098]);
  sub_219BDCCC4();
  (*(v23 + 8))(v25, v22);
  swift_getErrorValue();
  sub_219BF7A14();
  sub_2199054E4(&qword_280EE7FC0, MEMORY[0x277D2F440]);
  sub_219BDCCC4();
  (*(v19 + 8))(v21, v18);
  (*(v33 + 104))(v32, *MEMORY[0x277D2E918], v34);
  sub_219BE0DA4();
  sub_2199054E4(&qword_27CC20C80, MEMORY[0x277D2ECF0]);
  v26 = v35;
  sub_219BDCCC4();
  (*(v36 + 8))(v17, v26);
  v27 = v40;
  (*(v41 + 16))(v40, v45, v44);
  sub_219902814(v27, v39);
  v28 = v38;
  sub_219BE0F54();
  sub_2199054E4(&qword_27CC20C88, MEMORY[0x277D2EE18]);
  v29 = v42;
  sub_219BDCCC4();
  (*(v43 + 8))(v28, v29);
  sub_219BE1364();
  v30 = v46;
  sub_219BDBD24();
  sub_2199054E4(&qword_27CC20C90, MEMORY[0x277D2F1E8]);
  sub_219BDCC34();
  return (*(v47 + 8))(v30, v48);
}

uint64_t sub_219903E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v5 = sub_219BE5134();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();
  v7 = sub_219BE51D4();
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v4[11] = *(v8 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219903FB4, 0, 0);
}

void sub_219903FB4()
{
  v83 = v0;
  v1 = v0[10];
  v2 = sub_219BE51A4();
  v3 = 0;
  v4 = v2 + 56;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = (63 - v6) >> 6;
  v80 = v1;
  v81 = (v1 + 32);
  v77 = v2;
  v79 = (v1 + 8);
  while (v7)
  {
    v9 = v3;
LABEL_11:
    (*(v80 + 16))(v0[17], *(v77 + 48) + *(v80 + 72) * (__clz(__rbit64(v7)) | (v9 << 6)), v0[9]);
    if (qword_27CC08640 != -1)
    {
      swift_once();
    }

    v7 &= v7 - 1;
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[9];
    v13 = sub_219BE5434();
    __swift_project_value_buffer(v13, qword_27CCD8BD0);
    (*v81)(v11, v10, v12);
    v14 = sub_219BE5414();
    v15 = sub_219BF61F4();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[16];
    v18 = v0[9];
    if (v16)
    {
      bufa = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v82[0] = v75;
      *bufa = 136315138;
      sub_2199054E4(&qword_27CC18818, MEMORY[0x277D34850]);
      v72 = v15;
      v19 = sub_219BF7894();
      v21 = v20;
      (*v79)(v17, v18);
      v22 = sub_2186D1058(v19, v21, v82);

      *(bufa + 4) = v22;
      _os_log_impl(&dword_2186C1000, v14, v72, "Found a live activity that was not in our persistence. Either it somehow got added while News was terminated, or we failed to persist it when it started. activity=%s.", bufa, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x21CECF960](v75, -1, -1);
      MEMORY[0x21CECF960](bufa, -1, -1);
    }

    else
    {

      (*v79)(v17, v18);
    }

    v3 = v9;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v67 = v0[10];
  v23 = v0[6];
  v69 = v0;

  v24 = sub_219BE5194();
  v25 = 0;
  v26 = v24 + 56;
  v68 = v24;
  v27 = -1;
  v28 = -1 << *(v24 + 32);
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v24 + 56);
  v30 = (63 - v28) >> 6;
  v66 = v23;
  v64 = v30;
  v65 = v24 + 56;
  while (v29)
  {
    v43 = v69;
LABEL_27:
    v46 = v43[14];
    v45 = v43[15];
    v47 = v43[9];
    v48 = *(v80 + 16);
    v48(v45, *(v68 + 48) + *(v80 + 72) * (__clz(__rbit64(v29)) | (v25 << 6)), v47);
    v78 = *(v80 + 32);
    v78(v46, v45, v47);
    if (qword_27CC08640 != -1)
    {
      swift_once();
    }

    v50 = v43[13];
    v49 = v43[14];
    v51 = v43[9];
    v52 = sub_219BE5434();
    __swift_project_value_buffer(v52, qword_27CCD8BD0);
    v76 = v48;
    v48(v50, v49, v51);
    v53 = sub_219BE5414();
    v54 = sub_219BF6214();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v43[13];
    v57 = v43[9];
    if (v55)
    {
      v58 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v82[0] = v71;
      *v58 = 136315138;
      sub_2199054E4(&qword_27CC18818, MEMORY[0x277D34850]);
      v59 = sub_219BF7894();
      v61 = v60;
      buf = *v79;
      (*v79)(v56, v57);
      v62 = sub_2186D1058(v59, v61, v82);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_2186C1000, v53, v54, "About to track a live activity end event for an activity that was dismissed while News was not running. activity=%s.", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x21CECF960](v71, -1, -1);
      MEMORY[0x21CECF960](v58, -1, -1);
    }

    else
    {

      buf = *v79;
      (*v79)(v56, v57);
    }

    v31 = v43[14];
    v29 &= v29 - 1;
    v32 = v43[11];
    v33 = v43[12];
    v34 = v43;
    v37 = v43 + 8;
    v35 = v43[8];
    v36 = v37[1];
    v38 = v34[5];
    v39 = v34[3];
    v70 = v31;
    v76(v33);
    (*(v66 + 16))(v35, v39, v38);
    v40 = (*(v67 + 80) + 16) & ~*(v67 + 80);
    v41 = (v32 + *(v66 + 80) + v40) & ~*(v66 + 80);
    v42 = swift_allocObject();
    v78(v42 + v40, v33, v36);
    (*(v66 + 32))(v42 + v41, v35, v38);
    sub_219BDD154();

    (buf)(v70, v36);
    v30 = v64;
    v26 = v65;
  }

  v43 = v69;
  while (1)
  {
    v44 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v44 >= v30)
    {

      v63 = v69[1];

      v63();
      return;
    }

    v29 = *(v26 + 8 * v44);
    ++v25;
    if (v29)
    {
      v25 = v44;
      goto LABEL_27;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_219904760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v5 = sub_219BE5134();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();
  v7 = sub_219BE51D4();
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v4[11] = *(v8 + 64);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219904890, 0, 0);
}

uint64_t sub_219904890()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  (*(v4 + 16))(v1, v0[2], v3);
  (*(v7 + 16))(v5, v8, v6);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = (v2 + *(v7 + 80) + v9) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v4 + 32))(v11 + v9, v1, v3);
  (*(v7 + 32))(v11 + v10, v5, v6);
  sub_219BDD154();

  v12 = v0[1];

  return v12();
}

uint64_t sub_219904A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v5 = sub_219BE5134();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();
  v7 = sub_219BE51D4();
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v4[11] = *(v8 + 64);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219904B40, 0, 0);
}

uint64_t sub_219904B40()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  (*(v4 + 16))(v1, v0[2], v3);
  (*(v7 + 16))(v5, v8, v6);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = (v2 + *(v7 + 80) + v9) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v4 + 32))(v11 + v9, v1, v3);
  (*(v7 + 32))(v11 + v10, v5, v6);
  sub_219BDD154();

  v12 = v0[1];

  return v12();
}

uint64_t sub_219904CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a2;
  v5[3] = a3;
  v6 = sub_219BE5134();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v5[8] = *(v7 + 64);
  v5[9] = swift_task_alloc();
  v8 = sub_219BE51D4();
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v5[12] = *(v9 + 64);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219904DF0, 0, 0);
}

uint64_t sub_219904DF0()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v16 = v5;
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[3];
  v17 = v0[4];
  (*(v4 + 16))(v2, v0[2], v3);
  (*(v7 + 16))(v5, v8, v6);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = (v1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (*(v7 + 80) + v10 + 8) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v9, v2, v3);
  *(v12 + v10) = v17;
  (*(v7 + 32))(v12 + v11, v16, v6);
  v13 = v17;
  sub_219BDD154();

  v14 = v0[1];

  return v14();
}

uint64_t sub_219904F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v5 = sub_219BE5134();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v4[7] = *(v6 + 64);
  v4[8] = swift_task_alloc();
  v7 = sub_219BE51D4();
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v4[11] = *(v8 + 64);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2199050C4, 0, 0);
}

uint64_t sub_2199050C4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  (*(v4 + 16))(v1, v0[2], v3);
  (*(v7 + 16))(v5, v8, v6);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = (v2 + *(v7 + 80) + v9) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v4 + 32))(v11 + v9, v1, v3);
  (*(v7 + 32))(v11 + v10, v5, v6);
  sub_219BDD154();

  v12 = v0[1];

  return v12();
}

uint64_t sub_219905244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2187608D4;

  return sub_219903E48(v6, a2, a3);
}

uint64_t sub_219905300(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_219BE51D4() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_219BE5134() - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

uint64_t sub_2199053E8(uint64_t a1)
{
  v3 = *(sub_219BE51D4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_219BE5134() - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_219903750(a1, v1 + v4, v7, v8);
}

uint64_t sub_2199054E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21990559C()
{
  type metadata accessor for EmailSignupViewModel.Asset(319);
  if (v0 <= 0x3F)
  {
    sub_2186E3374();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_219905638()
{
  result = sub_219BDB954();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_219905768(uint64_t a1)
{
  v3 = CACurrentMediaTime();
  sub_219905904(v1, a1);
  sub_219BE3204();
  v4 = sub_219BE2E54();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v3;
  v5 = sub_219BE2E54();
  sub_219BE2874();
  sub_219BE2F74();

  v6 = sub_219BE2E54();
  v7 = sub_219BE2FD4();

  return v7;
}

uint64_t sub_219905904(void *a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_219907A10(a2))
  {
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v8 = sub_219BE5434();
    __swift_project_value_buffer(v8, qword_280F62790);
    v9 = sub_219BE5414();
    v10 = sub_219BF6214();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2186C1000, v9, v10, "BG worker will perform full update of offline feeds", v11, 2u);
      MEMORY[0x21CECF960](v11, -1, -1);
    }

    if (qword_27CC08860 != -1)
    {
      swift_once();
    }

    sub_219BDBD24();
    type metadata accessor for OfflineFeedsBackgroundWorker();
    sub_218788850(&unk_27CC20CC8, v12, type metadata accessor for OfflineFeedsBackgroundWorker);
    sub_219BDCA54();
    (*(v5 + 8))(v7, v4);
    v13 = a1[5];
    v14 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v13);
    return (*(v14 + 32))(v13, v14);
  }

  else
  {
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v16 = sub_219BE5434();
    __swift_project_value_buffer(v16, qword_280F62790);
    v17 = sub_219BE5414();
    v18 = sub_219BF6214();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2186C1000, v17, v18, "BG worker will perform micro-update of offline feeds", v19, 2u);
      MEMORY[0x21CECF960](v19, -1, -1);
    }

    if (qword_27CC08868 != -1)
    {
      swift_once();
    }

    sub_219BDBD24();
    type metadata accessor for OfflineFeedsBackgroundWorker();
    sub_218788850(&unk_27CC20CC8, v20, type metadata accessor for OfflineFeedsBackgroundWorker);
    sub_219BDCA54();
    (*(v5 + 8))(v7, v4);
    v21 = a1[5];
    v22 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v21);
    return (*(v22 + 56))(v21, v22);
  }
}

uint64_t sub_219905CE8(uint64_t a1, uint64_t a2)
{
  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F62790);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2186C1000, v4, v5, "BG worker will force-save content context", v6, 2u);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  [*(a2 + 96) save];
  v7 = sub_219BE5414();
  v8 = sub_219BF6214();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2186C1000, v7, v8, "BG worker will flush pending content requests", v9, 2u);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  v10 = *(a2 + 80);
  v11 = *(a2 + 88);
  __swift_project_boxed_opaque_existential_1((a2 + 56), v10);
  return (*(v11 + 32))(v10, v11);
}

uint64_t sub_219905E80@<X0>(uint64_t a1@<X8>)
{
  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62790);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (!os_log_type_enabled(v3, v4))
  {
    goto LABEL_8;
  }

  v5 = swift_slowAlloc();
  *v5 = 134349056;
  result = sub_219BF5CD4();
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v7 < 9.22337204e18)
  {
    *(v5 + 4) = v7;
    _os_log_impl(&dword_2186C1000, v3, v4, "BG worker finished, duration=%{public}lldms", v5, 0xCu);
    MEMORY[0x21CECF960](v5, -1, -1);
LABEL_8:

    v8 = *MEMORY[0x277D6CD58];
    v9 = sub_219BE2874();
    return (*(*(v9 - 8) + 104))(a1, v8, v9);
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_21990601C(void *a1)
{
  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62790);
  v3 = a1;
  oslog = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446210;
    v9 = v6;
    sub_218A450F0();
    sub_219BF7484();
    v7 = sub_2186D1058(0, 0xE000000000000000, &v9);

    *(v5 + 4) = v7;
    _os_log_impl(&dword_2186C1000, oslog, v4, "BG worker failed with error: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2199061CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_218788720(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15[-v7];
  v16 = a1;
  v17 = sub_218D25000(MEMORY[0x277D84F90], sub_219907D28, v15, a2);

  sub_2195ECFC8(&v17);

  v9 = v17;
  if (*(v17 + 16))
  {
    v10 = sub_219BDBD34();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v8, v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

    (*(v11 + 56))(v8, 0, 1, v10);
    return (*(v11 + 32))(a3, v8, v10);
  }

  else
  {

    v13 = sub_219BDBD34();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v8, 1, 1, v13);
    sub_219BDBBD4();
    result = (*(v14 + 48))(v8, 1, v13);
    if (result != 1)
    {
      return sub_218710AE0(v8, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  return result;
}

uint64_t sub_219906478()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2199064F8(uint64_t a1, uint64_t a2)
{
  v17[0] = a1;
  v17[1] = a2;
  sub_218788720(0, &qword_280EE9BD0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = sub_219BDC084();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  v12 = sub_219BDBE44();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, *MEMORY[0x277CC9810], v12);
  sub_219BDBE54();
  (*(v13 + 8))(v15, v12);
  sub_219BDC024();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_218710AE0(v4, &qword_280EE9BD0, MEMORY[0x277CC9A70]);
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v9, v11, v5);
  sub_219BDBF64();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_2199067D4(char **a1, uint64_t *a2, uint64_t a3)
{
  v107 = a3;
  v103 = a1;
  v94 = sub_219BDBEB4();
  v4 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v102 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BDBED4();
  v6 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v100 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_219BDBE74();
  v8 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v98 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_218788720(0, &qword_280EE9BD0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v97 = &v65 - v12;
  sub_218788720(0, &unk_280EE9C00, MEMORY[0x277CC99E8], v10);
  MEMORY[0x28223BE20](v13 - 8);
  v96 = &v65 - v14;
  v95 = sub_219BDB534();
  v15 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218788720(0, &qword_280EE9C40, MEMORY[0x277CC9578], v10);
  MEMORY[0x28223BE20](v17 - 8);
  v92 = &v65 - v18;
  v91 = sub_219BDBD34();
  v70 = *(v91 - 8);
  v19 = MEMORY[0x28223BE20](v91);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v90 = &v65 - v23;
  MEMORY[0x28223BE20](v22);
  v89 = &v65 - v24;
  v105 = sub_219BDBF94();
  v66 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v26 = *a2;
  v27 = a2[1];
  v28 = a2[2];
  v104 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v26;
  v71 = v27;
  sub_2199064F8(v26, v27);
  if (!(v28 >> 62))
  {
    result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return (*(v66 + 8))(v104, v105);
  }

  result = sub_219BF7214();
  if (!result)
  {
    return (*(v66 + 8))(v104, v105);
  }

LABEL_3:
  if (result >= 1)
  {
    v31 = 0;
    v87 = v28 & 0xC000000000000001;
    v86 = (v66 + 56);
    v85 = (v8 + 104);
    v84 = (v6 + 104);
    v83 = *MEMORY[0x277CC9878];
    v82 = (v4 + 104);
    v81 = (v4 + 8);
    v80 = *MEMORY[0x277CC9900];
    v79 = (v6 + 8);
    v78 = (v8 + 8);
    v77 = *MEMORY[0x277CC98E8];
    v76 = (v15 + 8);
    v75 = (v70 + 48);
    v74 = (v70 + 32);
    v73 = (v70 + 16);
    v72 = (v70 + 8);
    *&v29 = 136446722;
    v67 = v29;
    v69 = v21;
    v106 = v28;
    v88 = result;
    do
    {
      v109 = v31;
      if (v87)
      {
        v41 = MEMORY[0x21CECE0F0](v31, v28);
      }

      else
      {
        v41 = *(v28 + 8 * v31 + 32);
      }

      v108 = v41;
      [v41 integerValue];
      (*v86)(v96, 1, 1, v105);
      v42 = sub_219BDC084();
      (*(*(v42 - 8) + 56))(v97, 1, 1, v42);
      v43 = v93;
      sub_219BDB514();
      v44 = v98;
      v45 = v99;
      (*v85)(v98, v83, v99);
      v47 = v100;
      v46 = v101;
      (*v84)(v100, v80, v101);
      v48 = v102;
      v49 = v94;
      (*v82)(v102, v77, v94);
      v50 = v92;
      sub_219BDBF44();
      v51 = v50;
      (*v81)(v48, v49);
      (*v79)(v47, v46);
      (*v78)(v44, v45);
      (*v76)(v43, v95);
      v52 = v50;
      v53 = v91;
      if ((*v75)(v52, 1, v91) == 1)
      {
        sub_218710AE0(v51, &qword_280EE9C40, MEMORY[0x277CC9578]);
        if (qword_280EE6070 != -1)
        {
          swift_once();
        }

        v54 = sub_219BE5434();
        __swift_project_value_buffer(v54, qword_280F62790);
        v55 = v69;
        (*v73)(v69, v107, v53);

        v28 = v106;

        v56 = v108;
        v57 = sub_219BE5414();
        v58 = sub_219BF61F4();

        if (os_log_type_enabled(v57, v58))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v110 = v108;
          *v32 = v67;
          sub_218788850(&qword_280EE9C60, 255, MEMORY[0x277CC9578]);
          v34 = sub_219BF7894();
          v36 = v35;
          (*v72)(v55, v53);
          v37 = sub_2186D1058(v34, v36, &v110);

          *(v32 + 4) = v37;
          *(v32 + 12) = 2082;
          *(v32 + 14) = sub_2186D1058(v68, v71, &v110);
          *(v32 + 22) = 2114;
          *(v32 + 24) = v56;
          *v33 = v56;
          v38 = v56;
          _os_log_impl(&dword_2186C1000, v57, v58, "BG worker failed to convert date, after=%{public}s, tz=%{public}s, seconds=%{public}@", v32, 0x20u);
          sub_218962D30(v33);
          v39 = v33;
          v28 = v106;
          MEMORY[0x21CECF960](v39, -1, -1);
          v40 = v108;
          swift_arrayDestroy();
          MEMORY[0x21CECF960](v40, -1, -1);
          MEMORY[0x21CECF960](v32, -1, -1);
        }

        else
        {

          (*v72)(v55, v53);
        }
      }

      else
      {
        v59 = *v74;
        v60 = v89;
        (*v74)(v89, v51, v53);
        (*v73)(v90, v60, v53);
        v61 = *v103;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_2191FA298(0, *(v61 + 2) + 1, 1, v61);
        }

        v28 = v106;
        v63 = *(v61 + 2);
        v62 = *(v61 + 3);
        if (v63 >= v62 >> 1)
        {
          v61 = sub_2191FA298(v62 > 1, v63 + 1, 1, v61);
        }

        v64 = v70;
        (*(v70 + 8))(v89, v53);
        *(v61 + 2) = v63 + 1;
        v59(&v61[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v63], v90, v53);
        *v103 = v61;
      }

      v31 = v109 + 1;
    }

    while (v88 != v109 + 1);
    return (*(v66 + 8))(v104, v105);
  }

  __break(1u);
  return result;
}

uint64_t sub_21990756C()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC20CA0 = result;
  return result;
}

uint64_t sub_219907770()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D090], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  sub_21870E204();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC20CA8 = result;
  return result;
}

uint64_t sub_219907A10(uint64_t a1)
{
  v2 = sub_219BE2BE4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE2A34();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D6CDC8])
  {
    (*(v7 + 96))(v10, v6);
    v13 = *v10;
    v12 = *(v10 + 1);
    sub_218788784();
    v15 = *(v14 + 48);

    (*(v3 + 32))(v5, &v10[v15], v2);
    if (v13 == 0xD00000000000001FLL && 0x8000000219D3D6A0 == v12)
    {
    }

    else
    {
      v17 = sub_219BF78F4();

      if ((v17 & 1) == 0)
      {
        (*(v3 + 8))(v5, v2);
        v18 = 0;
        return v18 & 1;
      }
    }

    sub_218788850(&unk_280EE7320, 255, MEMORY[0x277D6CE10]);
    v18 = sub_219BF70D4();
    (*(v3 + 8))(v5, v2);
    return v18 & 1;
  }

  if (v11 == *MEMORY[0x277D6CDB0] || v11 == *MEMORY[0x277D6CDB8] || v11 == *MEMORY[0x277D6CDC0])
  {
    v18 = 0;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v18 = 1;
  }

  return v18 & 1;
}

NewsUI2::PuzzleRevealType_optional __swiftcall PuzzleRevealType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_219BF7614();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PuzzleRevealType.rawValue.getter()
{
  v1 = 1685221239;
  if (*v0 != 1)
  {
    v1 = 0x72657474656CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_219907DE8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1685221239;
  if (v2 != 1)
  {
    v4 = 0x72657474656CLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7105633;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1685221239;
  if (*a2 != 1)
  {
    v8 = 0x72657474656CLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7105633;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

unint64_t sub_219907ED0()
{
  result = qword_27CC20CE0;
  if (!qword_27CC20CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20CE0);
  }

  return result;
}

uint64_t sub_219907F24()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219907FB4()
{
  sub_219BF5524();
}

uint64_t sub_219908030()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_2199080C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1685221239;
  if (v2 != 1)
  {
    v5 = 0x72657474656CLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7105633;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2199081D4()
{
  result = qword_27CC20CE8;
  if (!qword_27CC20CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20CE8);
  }

  return result;
}

uint64_t sub_21990822C(void *a1)
{
  sub_218C19FB4();
  v3 = v2;
  v90 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BDB354();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6);
  v83 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_2186E5CE4(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v87 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = v76 - v12;
  sub_2186E5CE4(0, &unk_280EE9DB0, MEMORY[0x277CC8958], v8);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = v76 - v14;
  v15 = sub_219BDB954();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v19);
  v21 = v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UserNotification.DeliveryStatus(0);
  *&v23 = MEMORY[0x28223BE20](v22 - 8).n128_u64[0];
  v25 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  v26 = [a1 notification];
  v27 = [v26 request];

  sub_218C1A090();
  (*(*(v28 - 8) + 56))(v25, 2, 2, v28);
  v29 = objc_allocWithZone(type metadata accessor for UserNotification(0));
  v30 = sub_2196575B8(v27, v25);

  sub_218A7A6E8(v30 + OBJC_IVAR____TtC7NewsUI216UserNotification_kind, v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v79 = v30;
    v81 = v3;
    v82 = v5;
    sub_2187ACC2C();
    v32 = &v21[*(v31 + 48)];
    v34 = *v32;
    v33 = *(v32 + 1);
    v88 = v16;
    v35 = *(v16 + 32);
    v78 = v15;
    v76[0] = v35;
    v76[1] = v16 + 32;
    v35(v18, v21, v15);
    v36 = v18;
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v37 = MEMORY[0x277D84560];
    sub_2186E5CE4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v38 = swift_allocObject();
    v77 = xmmword_219C09EC0;
    *(v38 + 16) = xmmword_219C09EC0;
    v39 = sub_219BDB804();
    v41 = v40;
    v42 = MEMORY[0x277D837D0];
    *(v38 + 56) = MEMORY[0x277D837D0];
    v43 = sub_2186FC3BC();
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    *(v38 + 96) = v42;
    *(v38 + 104) = v43;
    *(v38 + 64) = v43;
    *(v38 + 72) = v34;
    *(v38 + 80) = v33;

    sub_219BF6214();
    sub_219BE5314();

    v44 = v91;
    v80 = v36;
    sub_219BDB264();
    sub_2186E5CE4(0, &qword_27CC0F588, MEMORY[0x277CC8918], v37);
    sub_219BDB224();
    v45 = swift_allocObject();
    *(v45 + 16) = v77;
    sub_219BDB1F4();

    v46 = [v84 notification];
    v47 = [v46 request];

    v48 = [v47 content];
    v49 = [v48 interruptionLevel];

    v92 = v49;
    sub_219BF7894();
    sub_219BDB1F4();

    v51 = v85;
    v50 = v86;
    v52 = *(v85 + 48);
    if (v52(v44, 1, v86) || (v57 = sub_219BDB234()) == 0)
    {

      v53 = MEMORY[0x277D84F90];
    }

    else
    {
      v53 = v57;
    }

    v58 = v52(v44, 1, v50);
    v59 = v90;
    if (v58)
    {

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }

    else
    {
      v92 = v53;
      sub_2191F0658(v45);
      sub_219BDB244();
    }

    v60 = v44;
    v61 = v88;
    v62 = v78;
    if (v52(v60, 1, v50))
    {
      v63 = v89;
      (*(v61 + 56))(v89, 1, 1, v62);
    }

    else
    {
      v64 = v83;
      (*(v51 + 16))(v83, v60, v50);
      v63 = v89;
      sub_219BDB274();
      (*(v51 + 8))(v64, v50);
    }

    v65 = v81;
    v66 = swift_allocBox();
    v68 = v67;
    v69 = v87;
    sub_2188383F8(v63, v87);
    v70 = *(v61 + 48);
    if (v70(v69, 1, v62) == 1)
    {
      v71 = *(v61 + 16);
      v72 = v80;
      v71(v68, v80, v62);
      if (v70(v69, 1, v62) != 1)
      {
        sub_219908D98(v69, &unk_280EE9D00, MEMORY[0x277CC9260]);
      }
    }

    else
    {
      (v76[0])(v68, v69, v62);
      v72 = v80;
    }

    v73 = v66 | 0x6000000000000000;
    v74 = v82;
    *v82 = v73;
    (*(v59 + 104))(v74, *MEMORY[0x277D6E710], v65);
    sub_2186E5CE4(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v56 = sub_219BE3014();

    sub_219908D98(v63, &unk_280EE9D00, MEMORY[0x277CC9260]);
    (*(v88 + 8))(v72, v62);
    sub_219908D98(v91, &unk_280EE9DB0, MEMORY[0x277CC8958]);
  }

  else
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
    v54 = sub_219BE8DC4();
    sub_21953BAF0();
    swift_allocError();
    (*(*(v54 - 8) + 104))(v55, *MEMORY[0x277D6E2B0], v54);
    sub_2186E5CE4(0, &qword_27CC0F1E8, sub_218C19FB4, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v56 = sub_219BE2FF4();

    sub_2187ADBD4(v21);
  }

  return v56;
}

uint64_t sub_219908D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186E5CE4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id sub_219908E08(void *a1, uint64_t a2)
{
  sub_21899E550();
  inited = swift_initStackObject();
  v5 = MEMORY[0x277D740C0];
  *(inited + 16) = xmmword_219C09BA0;
  v6 = *v5;
  *(inited + 32) = *v5;
  v7 = *(a2 + 40);
  *(inited + 64) = sub_2186F8B0C();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v10 = objc_opt_self();
    v11 = v6;
    v9 = [v10 whiteColor];
    v7 = 0;
  }

  *(inited + 40) = v9;
  v12 = v7;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_21899E5A8(inited + 32);
  type metadata accessor for Key(0);
  sub_21899E604();
  v13 = sub_219BF5204();

  [a1 setTitleTextAttributes:v13 forState:0];

  v14 = *(a2 + 32);
  if (v14)
  {
    v15 = *(a2 + 32);
  }

  else
  {
    v15 = [objc_opt_self() systemPinkColor];
    v14 = 0;
  }

  v16 = v14;
  [a1 setTintColor_];

  return [a1 setStyle_];
}

uint64_t sub_219908FA8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_219BEE544();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v2[9] = *(v4 + 64);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for FeedAvailability();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2199090B8, 0, 0);
}

uint64_t sub_2199090B8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if ([*(Strong + 56) useFood])
    {
      v0[16] = *(v2 + 64);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v4 = swift_task_alloc();
      v0[17] = v4;
      *v4 = v0;
      v4[1] = sub_219909284;

      return MEMORY[0x282193DF0](0, ObjectType);
    }

    sub_21990A334();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
  }

  else
  {
    sub_21990A334();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_219909284(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_219909CFC;
  }

  else
  {
    swift_unknownObjectRelease();
    v4 = sub_2199093A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2199093A0()
{
  v16 = v0;
  v1 = [*(v0 + 144) foodHubTagID];
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = v1;
    v4 = sub_219BF5414();
    v6 = v5;

    v7 = v2[12];
    v8 = v2[13];
    __swift_project_boxed_opaque_existential_1(v2 + 9, v7);
    memset(v14, 0, sizeof(v14));
    v15 = -1;
    *(v0 + 160) = (*(v8 + 8))(v4, v6, 12, v14, v7, v8);

    v9 = swift_task_alloc();
    *(v0 + 168) = v9;
    *v9 = v0;
    v9[1] = sub_219909590;
    v10 = *(v0 + 112);

    return MEMORY[0x2821D23D8](v10);
  }

  else
  {
    sub_21990A334();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_219909590()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_219909D94;
  }

  else
  {

    v2 = sub_2199096AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2199096AC()
{
  sub_218C8CC10(v0[14], v0[13]);
  if (swift_getEnumCaseMultiPayload())
  {
    v1 = v0[14];
    sub_2190BB958(v0[13], type metadata accessor for FeedAvailability);
    sub_21990A334();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_2190BB958(v1, type metadata accessor for FeedAvailability);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[13];
    v0[23] = *v5;
    sub_218BFB73C();
    sub_218BFB694(v5 + *(v6 + 48));
    swift_getKeyPath();
    swift_unknownObjectRetain();
    sub_219BEE534();
    sub_219BF5BD4();
    v0[24] = sub_219BF5BC4();
    v8 = sub_219BF5B44();

    return MEMORY[0x2822009F8](sub_2199098A0, v8, v7);
  }
}

uint64_t sub_2199098A0()
{
  v1 = v0[23];
  v2 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2186DB6BC();
  (*(v6 + 16))(v4, v3, v7);
  v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v6 + 32))(v9 + v8, v4, v7);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  v10 = v1;

  v11 = sub_219BE1E04();
  v0[25] = v11;

  if (v11)
  {
    v12 = sub_219909A1C;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_219909A1C()
{
  v0[26] = sub_2190BA664();
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_219909AC4;
  v2 = v0[5];

  return MEMORY[0x2821D23D8](v2);
}

uint64_t sub_219909AC4()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_219909E3C;
  }

  else
  {
    v2 = sub_219909BF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219909BF8()
{
  v1 = v0[23];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[8];
  swift_unknownObjectRelease();

  sub_2190BB958(v2, type metadata accessor for FeedAvailability);
  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_219909CFC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219909D94()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219909E3C()
{
  v1 = v0[23];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[8];
  swift_unknownObjectRelease();

  sub_2190BB958(v2, type metadata accessor for FeedAvailability);
  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

void sub_219909F38()
{
  if (qword_280EE6028 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62718);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Will erase offline feed", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  sub_219BF0E04();
  oslog = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, oslog, v4, "Did erase offline feed", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }
}

uint64_t sub_21990A1D0()
{
  sub_21881ADAC(0, &qword_27CC20CF0, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D6CF30]);
  swift_allocObject();
  swift_weakInit();
  return sub_219BE2F54();
}

uint64_t sub_21990A298(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_219908FA8(a1, v1);
}

unint64_t sub_21990A334()
{
  result = qword_27CC20CF8;
  if (!qword_27CC20CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20CF8);
  }

  return result;
}

unint64_t sub_21990A39C()
{
  result = qword_27CC20D08;
  if (!qword_27CC20D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20D08);
  }

  return result;
}

uint64_t sub_21990A400(void *a1, char a2)
{
  sub_21990A798(0, &qword_27CC20D10, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21990A744();
  sub_219BF7B44();
  v10[15] = a2;
  sub_218933D28();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21990A558(uint64_t a1)
{
  v2 = sub_21990A744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21990A594(uint64_t a1)
{
  v2 = sub_21990A744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21990A5D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_21990A798(0, &qword_280E8CB98, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21990A744();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  (*(v7 + 8))(v9, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = 6;
  return result;
}

unint64_t sub_21990A744()
{
  result = qword_280EAF7B8[0];
  if (!qword_280EAF7B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAF7B8);
  }

  return result;
}

void sub_21990A798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21990A744();
    v7 = a3(a1, &type metadata for PaywallTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21990A810()
{
  result = qword_27CC20D18;
  if (!qword_27CC20D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20D18);
  }

  return result;
}

unint64_t sub_21990A868()
{
  result = qword_280EAF7A8;
  if (!qword_280EAF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAF7A8);
  }

  return result;
}

unint64_t sub_21990A8C0()
{
  result = qword_280EAF7B0;
  if (!qword_280EAF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAF7B0);
  }

  return result;
}

uint64_t sub_21990A914(uint64_t *a1)
{
  v3 = *v1;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE99E0 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  if (v30)
  {
    v5 = a1[5];
    v6 = *(a1 + 48);
    v7 = sub_21990D42C(v5, v6);
    MEMORY[0x28223BE20](v7);
    sub_218A4247C(0, &qword_280E8EC00, &qword_280E8E260);
    sub_219BE3204();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v3;
    v9 = sub_219BE2E54();
    sub_21990D924();
    sub_219BE2F84();

    v10 = a1[1];
    v30 = *a1;
    v11 = a1[3];
    v29[0] = a1[2];
    v34 = v11;
    v12 = a1[4];
    v13 = swift_allocObject();
    v14 = *(a1 + 1);
    *(v13 + 16) = *a1;
    *(v13 + 32) = v14;
    *(v13 + 48) = *(a1 + 2);
    *(v13 + 64) = *(a1 + 48);
    sub_21990B5C0(&v30, &v33, type metadata accessor for FCOperationPurpose);
    v15 = v10;
    sub_21990B5C0(v29, &v33, sub_2186E2394);
    sub_21990B5C0(&v34, &v33, sub_2186E2394);
    v16 = v12;
    sub_21990D9EC(v5, v6);
    v17 = sub_219BE2E54();
    sub_21990B660(0);
    v18 = sub_219BE2F84();
  }

  else
  {
    MEMORY[0x28223BE20](v4);
    sub_21990B4BC(0);
    sub_219BE3204();
    v19 = *a1;
    v20 = a1[1];
    v21 = a1[3];
    v33 = a1[2];
    v34 = v19;
    v32 = v21;
    v22 = a1[4];
    v30 = a1[5];
    v31 = *(a1 + 48);
    v23 = swift_allocObject();
    v24 = *(a1 + 1);
    *(v23 + 16) = *a1;
    *(v23 + 32) = v24;
    *(v23 + 48) = *(a1 + 2);
    *(v23 + 64) = *(a1 + 48);
    sub_21990B5C0(&v34, v29, type metadata accessor for FCOperationPurpose);
    v25 = v20;
    sub_21990B5C0(&v33, v29, sub_2186E2394);
    sub_21990B5C0(&v32, v29, sub_2186E2394);
    v26 = v22;
    sub_21990B628(&v30, v29);
    v27 = sub_219BE2E54();
    sub_21990B660(0);
    sub_219BE2F84();

    v17 = sub_219BE2E54();
    v18 = sub_219BE2F84();
  }

  return v18;
}

uint64_t sub_21990AD98(uint64_t a1, uint64_t *a2)
{
  sub_218A4247C(0, &qword_280E8ED00, &qword_280E8E680);
  sub_219BE3204();
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  v18 = a2[2];
  v19 = v3;
  v17 = v5;
  v6 = a2[4];
  v15 = a2[5];
  v16 = *(a2 + 48);
  v7 = swift_allocObject();
  v8 = *(a2 + 1);
  *(v7 + 16) = *a2;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a2 + 2);
  *(v7 + 64) = *(a2 + 48);
  sub_21990B5C0(&v19, v14, type metadata accessor for FCOperationPurpose);
  v9 = v4;
  sub_21990B5C0(&v18, v14, sub_2186E2394);
  sub_21990B5C0(&v17, v14, sub_2186E2394);
  v10 = v6;
  sub_21990B628(&v15, v14);
  v11 = sub_219BE2E54();
  sub_21990B4BC(0);
  v12 = sub_219BE2F64();

  return v12;
}

uint64_t sub_21990AF28(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v33 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v4, 0);
    v5 = v33;
    v6 = (a1 + 48);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v33 = v5;
      v9 = *(v5 + 16);
      v10 = *(v5 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_21870B65C((v10 > 1), v9 + 1, 1);
        v5 = v33;
      }

      *(v5 + 16) = v9 + 1;
      v11 = v5 + 16 * v9;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v6 += 3;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v12 = a2[1];
  sub_21990B694(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09BA0;
  v14 = *(v5 + 16);
  v15 = MEMORY[0x277D83C10];
  *(v13 + 56) = MEMORY[0x277D83B88];
  *(v13 + 64) = v15;
  *(v13 + 32) = v14;
  sub_219BF6214();
  sub_219BE5314();

  if (*(v5 + 16))
  {
    MEMORY[0x28223BE20](v16);
    sub_218A80AC8();
    sub_219BE3204();

    v17 = *a2;
    v18 = a2[3];
    v36 = a2[2];
    v37 = v17;
    v35 = v18;
    v19 = a2[4];
    v33 = a2[5];
    v34 = *(a2 + 48);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    v21 = *(a2 + 1);
    *(v20 + 24) = *a2;
    *(v20 + 40) = v21;
    *(v20 + 56) = *(a2 + 2);
    *(v20 + 72) = *(a2 + 48);

    sub_21990B5C0(&v37, v32, type metadata accessor for FCOperationPurpose);
    v31 = v12;
    sub_21990B5C0(&v36, v32, sub_2186E2394);
    sub_21990B5C0(&v35, v32, sub_2186E2394);
    v22 = v19;
    sub_21990B628(&v33, v32);
    v23 = sub_219BE2E54();
    sub_21990D924();
    sub_219BE2F84();

    v24 = swift_allocObject();
    v25 = *(a2 + 1);
    *(v24 + 16) = *a2;
    *(v24 + 32) = v25;
    *(v24 + 48) = *(a2 + 2);
    *(v24 + 64) = *(a2 + 48);
    sub_21990B5C0(&v37, v32, type metadata accessor for FCOperationPurpose);
    v26 = v31;
    sub_21990B5C0(&v36, v32, sub_2186E2394);
    sub_21990B5C0(&v35, v32, sub_2186E2394);
    v27 = v22;
    sub_21990B628(&v33, v32);
    v28 = sub_219BE2E54();
    sub_21990B660(0);
    v29 = sub_219BE2F84();

    return v29;
  }

  else
  {

    sub_21990B694(0, &unk_280EE6B50, sub_21990B660, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_21990B3B0()
{
  sub_21990B694(0, &unk_280EE6B50, sub_21990B660, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_21990B440()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1(v0 + 144);

  return swift_deallocClassInstance();
}

void sub_21990B4F0()
{
  if (!qword_280E8E690)
  {
    sub_2186D6710(255, &qword_280E8E680);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E690);
    }
  }
}

uint64_t sub_21990B56C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21990B5C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21990B694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21990B6F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (!*(a2 + 48))
  {
    sub_21990E3B0(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_219C146A0;
    *(v3 + 32) = v2;
    sub_218E5B618();
    swift_allocObject();
    swift_unknownObjectRetain();
    return sub_219BE3014();
  }

  if (*(a2 + 48) == 1)
  {
    sub_218E5B618();
    swift_allocObject();

    return sub_219BE3014();
  }

  __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  sub_219BF1C44();
  v5 = sub_219BE2E54();
  sub_218A4247C(0, &qword_280E8ED00, &qword_280E8E680);
  v6 = sub_219BE2F74();

  return v6;
}

uint64_t sub_21990B884(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v4 = 0;
    v35 = v2 & 0xFFFFFFFFFFFFFF8;
    v36 = v2 & 0xC000000000000001;
    v30 = v2;
    v34 = v2 + 32;
    v32 = MEMORY[0x277D84F90];
    v31 = i;
    while (1)
    {
      if (v36)
      {
        v10 = MEMORY[0x21CECE0F0](v4, v30);
        v11 = __OFADD__(v4++, 1);
        if (v11)
        {
          break;
        }

        goto LABEL_9;
      }

      if (v4 >= *(v35 + 16))
      {
        goto LABEL_28;
      }

      v10 = *(v34 + 8 * v4);
      swift_unknownObjectRetain();
      v11 = __OFADD__(v4++, 1);
      if (v11)
      {
        break;
      }

LABEL_9:
      v12 = [v10 highlightsArticleListID];
      if (v12)
      {
        v13 = v12;
        v33 = sub_219BF5414();
        v15 = v14;

        v16 = *(a2 + 16);
        v17 = [v10 identifier];
        v18 = sub_219BF5414();
        v20 = v19;

        if (*(v16 + 16))
        {
          sub_219BF7AA4();
          sub_219BF5524();
          v21 = sub_219BF7AE4();
          v22 = -1 << *(v16 + 32);
          v23 = v21 & ~v22;
          if ((*(v16 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
          {
            v24 = ~v22;
            while (1)
            {
              v25 = (*(v16 + 48) + 16 * v23);
              v26 = *v25 == v18 && v25[1] == v20;
              if (v26 || (sub_219BF78F4() & 1) != 0)
              {
                break;
              }

              v23 = (v23 + 1) & v24;
              if (((*(v16 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            v2 = *(a2 + 8);
            sub_21990B694(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
            v5 = swift_allocObject();
            *(v5 + 16) = xmmword_219C09BA0;
            v6 = [v10 identifier];
            v7 = sub_219BF5414();
            v9 = v8;

            *(v5 + 56) = MEMORY[0x277D837D0];
            *(v5 + 64) = sub_2186FC3BC();
            *(v5 + 32) = v7;
            *(v5 + 40) = v9;
            sub_219BF6214();
            sub_219BE5314();

            i = v31;
            goto LABEL_5;
          }
        }

LABEL_19:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_2191FB934(0, v32[2] + 1, 1, v32);
        }

        i = v31;
        v2 = v32[2];
        v27 = v32[3];
        if (v2 >= v27 >> 1)
        {
          v32 = sub_2191FB934((v27 > 1), v2 + 1, 1, v32);
        }

        v32[2] = v2 + 1;
        v28 = &v32[3 * v2];
        v28[4] = v10;
        v28[5] = v33;
        v28[6] = v15;
        if (v4 == v31)
        {
          goto LABEL_30;
        }
      }

      else
      {
LABEL_5:
        swift_unknownObjectRelease();
        if (v4 == i)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

LABEL_30:
  sub_21990B694(0, &unk_280EE6A88, sub_21990B4BC, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_21990BC80(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 subscribedTags];
  sub_2186D6710(0, &qword_280E8E680);
  v4 = sub_219BF5924();

  *a2 = v4;
}

void sub_21990BCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2186C6148(0, &unk_27CC0D5F0);
  sub_218A4247C(0, &qword_280E8EC00, &qword_280E8E260);
  sub_218A80B84();
  v70 = MEMORY[0x277D837E0];
  v6 = sub_219BF5234();
  v7 = v6;
  v72 = v4;
  v8 = *(a3 + 16);
  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
LABEL_40:

    v79 = v9;
    sub_21990E3B0(0, &qword_27CC20D38, &type metadata for HighlightSourceHeadline, MEMORY[0x277D83940]);
    sub_21990E314(&qword_27CC20D90, &qword_27CC20D38, &type metadata for HighlightSourceHeadline);
    v50 = sub_219BF56E4();
    v80 = v72;

    v51 = *(v50 + 16);
    if (v51)
    {
      v52 = 0;
      v53 = v50 + 40;
      v54 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v52 >= *(v50 + 16))
        {
          goto LABEL_69;
        }

        v55 = *(v53 - 8);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v56 = [v55 sportsEventIDs];
        if (v56)
        {
          v57 = v56;
          v58 = sub_219BF5924();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v58 = MEMORY[0x277D84F90];
        }

        v59 = *(v58 + 16);
        v60 = *(v54 + 2);
        v61 = v60 + v59;
        if (__OFADD__(v60, v59))
        {
          goto LABEL_70;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v61 <= *(v54 + 3) >> 1)
        {
          if (!*(v58 + 16))
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v60 <= v61)
          {
            v63 = v60 + v59;
          }

          else
          {
            v63 = v60;
          }

          v54 = sub_218840D24(isUniquelyReferenced_nonNull_native, v63, 1, v54);
          if (!*(v58 + 16))
          {
LABEL_42:

            if (v59)
            {
              goto LABEL_71;
            }

            goto LABEL_43;
          }
        }

        if ((*(v54 + 3) >> 1) - *(v54 + 2) < v59)
        {
          goto LABEL_72;
        }

        swift_arrayInitWithCopy();

        if (v59)
        {
          v64 = *(v54 + 2);
          v48 = __OFADD__(v64, v59);
          v65 = v64 + v59;
          if (v48)
          {
            goto LABEL_73;
          }

          *(v54 + 2) = v65;
        }

LABEL_43:
        ++v52;
        v53 += 16;
        if (v51 == v52)
        {
          goto LABEL_62;
        }
      }
    }

    v54 = MEMORY[0x277D84F90];
LABEL_62:
    v66 = sub_218845F78(v54);

    v79 = v50;
    sub_21990DAC8();
    swift_allocObject();
    sub_219BE3014();
    __swift_project_boxed_opaque_existential_1((a2 + 96), *(a2 + 120));
    v67 = *(v66 + 16);
    if (v67)
    {
      v68 = sub_21947D1C0(*(v66 + 16), 0);
      v69 = sub_2194ABD64(&v79, v68 + 4, v67, v66);
      sub_21892DE98();
      if (v69 == v67)
      {
LABEL_66:
        sub_219BF3AB4();

        sub_219BE31C4();

        return;
      }

      __break(1u);
    }

    goto LABEL_66;
  }

  v10 = 0;
  v11 = a3 + 48;
  v75 = v8;
  v76 = v6;
  v71 = v11;
  while (1)
  {
    v73 = v9;
    v12 = (v11 + 24 * v10);
    v13 = v10;
    while (1)
    {
      if (v13 >= v8)
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      if (__OFADD__(v13, 1))
      {
        goto LABEL_68;
      }

      v21 = *(v12 - 1);
      v22 = *v12;
      v23 = *(v7 + 16);
      v24 = *(v12 - 2);
      swift_unknownObjectRetain();

      v80 = v13 + 1;
      v78 = v22;
      if (v23)
      {
        v25 = sub_21870F700(v21, v22);
        v26 = *(a4 + 8);
        if (v27)
        {
          break;
        }
      }

      sub_21990B694(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_219C09EC0;
      v15 = [v24 identifier];
      v16 = sub_219BF5414();
      v18 = v17;

      v19 = MEMORY[0x277D837D0];
      *(v14 + 56) = MEMORY[0x277D837D0];
      v20 = sub_2186FC3BC();
      *(v14 + 32) = v16;
      *(v14 + 40) = v18;
      *(v14 + 96) = v19;
      *(v14 + 104) = v20;
      *(v14 + 64) = v20;
      *(v14 + 72) = v21;
      *(v14 + 80) = v78;

      sub_219BF6214();
      sub_219BE5314();

      swift_unknownObjectRelease();
      ++v13;
      v12 += 3;
      v8 = v75;
      v7 = v76;
      if (v80 == v75)
      {
        v9 = v73;
        goto LABEL_40;
      }
    }

    v28 = *(*(v7 + 56) + 8 * v25);
    v29 = *(a4 + 24);

    v30 = v26;
    v31 = v24;
    v32 = sub_21990DCB8(v30, v29, v28, v24);

    if (v32 >> 62)
    {
      v33 = sub_219BF7214();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = v73;
    v35 = MEMORY[0x277D84F90];
    if (!v33)
    {

      goto LABEL_22;
    }

    v79 = MEMORY[0x277D84F90];
    sub_218C383F0(0, v33 & ~(v33 >> 63), 0);
    if (v33 < 0)
    {
      goto LABEL_76;
    }

    v36 = 0;
    v35 = v79;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x21CECE0F0](v36, v32);
      }

      else
      {
        v37 = *(v32 + 8 * v36 + 32);
        swift_unknownObjectRetain();
      }

      v79 = v35;
      v39 = *(v35 + 16);
      v38 = *(v35 + 24);
      swift_unknownObjectRetain();
      if (v39 >= v38 >> 1)
      {
        sub_218C383F0((v38 > 1), v39 + 1, 1);
        v35 = v79;
      }

      ++v36;
      *(v35 + 16) = v39 + 1;
      v40 = v35 + 16 * v39;
      *(v40 + 32) = v37;
      *(v40 + 40) = v31;
    }

    while (v33 != v36);

    v34 = v73;
LABEL_22:
    v41 = *(v35 + 16);
    v42 = *(v34 + 2);
    v43 = v42 + v41;
    if (__OFADD__(v42, v41))
    {
      goto LABEL_74;
    }

    v44 = swift_isUniquelyReferenced_nonNull_native();
    if (v44 && (v45 = *(v34 + 3) >> 1, v45 >= v43))
    {
      v9 = v34;
    }

    else
    {
      v46 = v42 <= v43 ? v42 + v41 : v42;
      v9 = sub_2191FBAA4(v44, v46, 1, v34);
      v45 = *(v9 + 3) >> 1;
    }

    v11 = v71;
    if (*(v35 + 16))
    {
      break;
    }

    if (v41)
    {
      goto LABEL_75;
    }

LABEL_36:

    swift_unknownObjectRelease();
    v8 = v75;
    v7 = v76;
    v10 = v80;
    if (v80 == v75)
    {
      goto LABEL_40;
    }
  }

  if (v45 - *(v9 + 2) < v41)
  {
    goto LABEL_77;
  }

  swift_arrayInitWithCopy();

  if (!v41)
  {
    goto LABEL_36;
  }

  v47 = *(v9 + 2);
  v48 = __OFADD__(v47, v41);
  v49 = v47 + v41;
  if (!v48)
  {
    *(v9 + 2) = v49;
    goto LABEL_36;
  }

LABEL_78:
  __break(1u);
}

uint64_t sub_21990C4CC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_218718690(a1 + 16, v17);
  v6 = v18;
  v5 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v7 = *(a2 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v20 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v7, 0);
    v8 = v20;
    v9 = (a2 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v20 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_21870B65C((v12 > 1), v13 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v9 += 6;
      --v7;
    }

    while (v7);
  }

  v15 = MEMORY[0x21CEC9610](v8, *a3, v6, v5);

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v15;
}

void sub_21990C60C(unint64_t *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a1;
  aBlock[0] = a3;
  sub_21990E3B0(0, &unk_27CC1ABE0, &type metadata for TagHighlightsService.MockHighlightHeadline, MEMORY[0x277D83940]);
  sub_21990E314(&qword_27CC20D40, &unk_27CC1ABE0, &type metadata for TagHighlightsService.MockHighlightHeadline);
  sub_21990DA08();
  v7 = sub_219BF56C4();
  v8 = v6;
  v9 = v7;
  if (v6 >> 62)
  {
    goto LABEL_51;
  }

  v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v54 = v3;
  v55 = a2;
  if (!v10)
  {
    goto LABEL_52;
  }

LABEL_3:
  v11 = v8;
  v64 = MEMORY[0x277D84F90];
  sub_218C383F0(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    return;
  }

  v12 = 0;
  v13 = v64;
  v14 = v11;
  v8 = v11 & 0xC000000000000001;
  v56 = v11 & 0xFFFFFFFFFFFFFF8;
  v60 = v11 & 0xC000000000000001;
  v58 = v9;
  v59 = v11;
  v57 = v10;
  do
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_45;
    }

    if (v60)
    {
      v15 = MEMORY[0x21CECE0F0](v12, v14);
    }

    else
    {
      if (v12 >= *(v56 + 16))
      {
        while (1)
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v48 = v8;
          v49 = sub_219BF7214();
          v8 = v48;
          v10 = v49;
          v54 = v4;
          v55 = a2;
          if (v49)
          {
            goto LABEL_3;
          }

LABEL_52:

          v13 = MEMORY[0x277D84F90];
          v34 = *(MEMORY[0x277D84F90] + 16);
          if (!v34)
          {
            goto LABEL_53;
          }

LABEL_25:
          v9 = 0;
          v35 = v13 + 40;
          v36 = MEMORY[0x277D84F90];
          while (v9 < *(v13 + 16))
          {
            v37 = v13;
            v38 = *(v35 - 8);
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v39 = [v38 sportsEventIDs];
            if (v39)
            {
              v40 = v39;
              v41 = sub_219BF5924();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v41 = MEMORY[0x277D84F90];
            }

            v4 = *(v41 + 16);
            a2 = *(v36 + 2);
            v42 = &a2[v4];
            if (__OFADD__(a2, v4))
            {
              goto LABEL_46;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v42 > *(v36 + 3) >> 1)
            {
              if (a2 <= v42)
              {
                v44 = &a2[v4];
              }

              else
              {
                v44 = a2;
              }

              v36 = sub_218840D24(isUniquelyReferenced_nonNull_native, v44, 1, v36);
            }

            v13 = v37;
            if (*(v41 + 16))
            {
              v8 = (*(v36 + 3) >> 1) - *(v36 + 2);
              if (v8 < v4)
              {
                goto LABEL_48;
              }

              swift_arrayInitWithCopy();

              if (v4)
              {
                v45 = *(v36 + 2);
                v46 = __OFADD__(v45, v4);
                v47 = v45 + v4;
                if (v46)
                {
                  goto LABEL_50;
                }

                *(v36 + 2) = v47;
              }
            }

            else
            {

              if (v4)
              {
                goto LABEL_47;
              }
            }

            ++v9;
            v35 += 16;
            if (v34 == v9)
            {
              goto LABEL_54;
            }
          }

LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
        }
      }

      v15 = *(v14 + 8 * v12 + 32);
      swift_unknownObjectRetain();
    }

    v16 = [v15 identifier];
    v17 = sub_219BF5414();
    v19 = v18;

    v61 = v12 + 1;
    v62 = v13;
    if (*(v9 + 16))
    {
      v20 = sub_21870F700(v17, v19);
      v22 = v21;

      if (v22)
      {
        v23 = (*(v9 + 56) + 48 * v20);
        v24 = *v23;
        v25 = v23[1];
        v27 = v23[2];
        v26 = v23[3];
        v29 = v23[4];
        v28 = v23[5];

        swift_unknownObjectRetain();
        goto LABEL_15;
      }
    }

    else
    {
    }

    v24 = 0;
    v25 = 0;
    v27 = 0;
    v26 = 0;
    v29 = 0;
    v28 = 0;
LABEL_15:
    v30 = swift_allocObject();
    v30[2] = v24;
    v30[3] = v25;
    v30[4] = v27;
    v30[5] = v26;
    v30[6] = v29;
    v30[7] = v28;
    aBlock[4] = sub_21990DA5C;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21990CDA0;
    aBlock[3] = &block_descriptor_185;
    v31 = _Block_copy(aBlock);
    sub_21990DA64(v24, v25);

    a2 = FCMutateHeadlineWithBlock();
    _Block_release(v31);
    if (!a2)
    {
      goto LABEL_60;
    }

    if (v25)
    {
      sub_21990DA64(v24, v25);
      swift_unknownObjectRelease();

      sub_21990DB44(v24, v25);
    }

    else
    {
      if (qword_27CC08870 != -1)
      {
        swift_once();
      }

      v28 = qword_27CC20D20;
      swift_unknownObjectRelease();
    }

    v13 = v62;
    v9 = v58;
    v14 = v59;
    v64 = v62;
    v4 = *(v62 + 16);
    v32 = *(v62 + 24);
    if (v4 >= v32 >> 1)
    {
      sub_218C383F0((v32 > 1), v4 + 1, 1);
      v14 = v59;
      v13 = v64;
    }

    *(v13 + 16) = v4 + 1;
    v33 = v13 + 16 * v4;
    *(v33 + 32) = a2;
    *(v33 + 40) = v28;
    ++v12;
  }

  while (v61 != v57);

  v34 = *(v13 + 16);
  if (v34)
  {
    goto LABEL_25;
  }

LABEL_53:
  v36 = MEMORY[0x277D84F90];
LABEL_54:
  v50 = sub_218845F78(v36);

  aBlock[0] = v13;
  sub_21990DAC8();
  swift_allocObject();
  sub_219BE3014();
  __swift_project_boxed_opaque_existential_1(v55 + 12, *(v55 + 15));
  v51 = *(v50 + 16);
  if (v51)
  {
    v52 = sub_21947D1C0(*(v50 + 16), 0);
    v53 = sub_2194ABD64(aBlock, v52 + 4, v51, v50);
    sub_21892DE98();
    if (v53 != v51)
    {
      __break(1u);
      goto LABEL_57;
    }
  }

  else
  {
LABEL_57:
  }

  sub_219BF3AB4();

  sub_219BE31C4();
}

void sub_21990CCDC(id a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8))
    {
      v3 = sub_219BF53D4();
      [a1 setVideoType_];

      v4 = sub_219BF5904();
    }

    else
    {
      [a1 setVideoType_];
      v4 = 0;
    }

    v5 = v4;
    [a1 setSportsEventIDs_];
  }
}

void sub_21990CDA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_21990CE0C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  result = [*(a2 + 136) subscribedTagIDs];
  if (result)
  {
    v7 = result;
    v8 = sub_219BF5924();

    v9 = sub_218845F78(v8);

    sub_2194F3AB8(v4, v5, v9, *(a3 + 32));

    sub_21990B694(0, &unk_280EE6B50, sub_21990B660, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21990CF10()
{
  v0 = objc_allocWithZone(MEMORY[0x277D31348]);
  v1 = sub_219BF53D4();
  v2 = sub_219BF53D4();
  v3 = [v0 initWithTagType:2 identifier:v1 name:v2];

  if (v3)
  {
    qword_27CC20D20 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_21990CFB0()
{
  v0 = objc_allocWithZone(MEMORY[0x277D31348]);
  v1 = sub_219BF53D4();
  v2 = sub_219BF53D4();
  v3 = [v0 initWithTagType:2 identifier:v1 name:v2];

  if (v3)
  {
    qword_27CC20D28 = v3;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_21990D050()
{
  sub_21990B694(0, &qword_27CC20D58, sub_21990DBA8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000017;
  *(inited + 16) = xmmword_219C09EC0;
  *(inited + 40) = 0x8000000219D3D980;
  sub_21990E3B0(0, &qword_27CC17458, &type metadata for TagHighlightsService.MockHighlightHeadline, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C10590;
  if (qword_27CC08870 != -1)
  {
    v10 = v1;
    swift_once();
    v1 = v10;
  }

  v2 = qword_27CC20D20;
  *(v1 + 32) = 0xD000000000000017;
  *(v1 + 40) = 0x8000000219D3D9A0;
  *(v1 + 48) = &unk_282A2AD80;
  *(v1 + 56) = 0xD000000000000010;
  *(v1 + 64) = 0x8000000219CFB180;
  *(v1 + 72) = v2;
  *(v1 + 80) = 0xD000000000000017;
  *(v1 + 88) = 0x8000000219D3D9C0;
  *(v1 + 96) = &unk_282A2ADB0;
  *(v1 + 104) = 0xD000000000000010;
  *(v1 + 112) = 0x8000000219CFB180;
  *(v1 + 120) = v2;
  *(v1 + 128) = 0xD000000000000017;
  *(v1 + 136) = 0x8000000219D3D9E0;
  *(v1 + 144) = &unk_282A2ADE0;
  *(v1 + 152) = 0xD000000000000010;
  *(v1 + 160) = 0x8000000219CFB180;
  *(v1 + 168) = v2;
  *(v1 + 176) = 0xD000000000000017;
  *(v1 + 184) = 0x8000000219D3DA00;
  *(v1 + 192) = &unk_282A2AE10;
  *(v1 + 200) = 0xD000000000000016;
  *(v1 + 208) = 0x8000000219CFB1A0;
  *(v1 + 216) = v2;
  *(v1 + 224) = 0xD000000000000017;
  *(v1 + 232) = 0x8000000219D3DA20;
  *(v1 + 240) = &unk_282A2AE40;
  *(v1 + 248) = 0xD000000000000010;
  *(v1 + 256) = 0x8000000219CFB180;
  *(v1 + 264) = v2;
  *(v1 + 272) = 0xD000000000000017;
  *(v1 + 280) = 0x8000000219D3DA40;
  *(v1 + 288) = &unk_282A2AE70;
  *(v1 + 296) = 0xD000000000000010;
  *(v1 + 304) = 0x8000000219CFB180;
  *(v1 + 312) = v2;
  *(v1 + 320) = 0xD000000000000017;
  *(v1 + 328) = 0x8000000219D3DA60;
  *(v1 + 336) = &unk_282A2AEA0;
  *(v1 + 344) = 0xD00000000000001CLL;
  *(v1 + 368) = 0xD000000000000017;
  *(v1 + 376) = 0x8000000219D3DA80;
  *(v1 + 352) = 0x8000000219CFB160;
  *(v1 + 360) = v2;
  *(v1 + 384) = &unk_282A2AEE0;
  *(v1 + 392) = 0xD00000000000001CLL;
  *(v1 + 400) = 0x8000000219CFB160;
  *(v1 + 408) = v2;
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000017;
  *(inited + 64) = 0x8000000219D3DAA0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C0B8C0;
  v4 = qword_27CC08878;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x8000000219D3DAC0;
  v6 = qword_27CC20D28;
  *(v3 + 48) = &unk_282A2AF20;
  *(v3 + 56) = 0xD000000000000016;
  *(v3 + 64) = 0x8000000219CFB1A0;
  *(v3 + 72) = v6;
  *(v3 + 80) = 0xD000000000000017;
  *(v3 + 88) = 0x8000000219D3DAE0;
  *(v3 + 96) = &unk_282A2AF50;
  *(v3 + 104) = 0xD000000000000010;
  *(v3 + 112) = 0x8000000219CFB180;
  *(v3 + 120) = v6;
  *(v3 + 128) = 0xD000000000000017;
  *(v3 + 136) = 0x8000000219D3DB00;
  *(v3 + 144) = &unk_282A2AF80;
  *(v3 + 152) = 0xD000000000000010;
  *(v3 + 160) = 0x8000000219CFB180;
  *(v3 + 168) = v6;
  *(inited + 72) = v3;
  v7 = v6;
  v8 = sub_2194B1E94(inited);
  swift_setDeallocating();
  sub_21990DBA8();
  swift_arrayDestroy();
  return v8;
}

char *sub_21990D42C(unint64_t a1, char a2)
{
  v2 = a1;
  if (!a2)
  {
LABEL_34:
    swift_unknownObjectRetain();
    v26 = sub_21990D050();
    v27 = [v2 identifier];
    v28 = sub_219BF5414();
    v30 = v29;

    if (*(v26 + 16))
    {
      v31 = sub_21870F700(v28, v30);
      v33 = v32;

      if (v33)
      {
        v6 = *(*(v26 + 56) + 8 * v31);

        sub_21990B56C(v2, 0);
        return v6;
      }
    }

    else
    {
    }

    sub_21990B56C(v2, 0);
    return MEMORY[0x277D84F90];
  }

  if (a2 != 1)
  {
    v34 = sub_21990D050();
    v3 = v34;
    v2 = v34 + 64;
    v35 = 1 << *(v34 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v34 + 64);
    v38 = (v35 + 63) >> 6;

    v39 = 0;
    v6 = MEMORY[0x277D84F90];
LABEL_41:
    if (v37)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= v38)
      {

        return v6;
      }

      v37 = *(v2 + 8 * v40);
      ++v39;
      if (v37)
      {
        v39 = v40;
LABEL_46:
        v41 = *(*(v3 + 56) + ((v39 << 9) | (8 * __clz(__rbit64(v37)))));
        v42 = *(v41 + 16);
        v43 = *(v6 + 2);
        v44 = v43 + v42;
        if (__OFADD__(v43, v42))
        {
          goto LABEL_70;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v44 > *(v6 + 3) >> 1)
        {
          if (v43 <= v44)
          {
            v46 = v43 + v42;
          }

          else
          {
            v46 = v43;
          }

          v6 = sub_2191FB7FC(isUniquelyReferenced_nonNull_native, v46, 1, v6);
        }

        v37 &= v37 - 1;
        if (*(v41 + 16))
        {
          if ((*(v6 + 3) >> 1) - *(v6 + 2) < v42)
          {
            goto LABEL_72;
          }

          swift_arrayInitWithCopy();

          if (v42)
          {
            v47 = *(v6 + 2);
            v24 = __OFADD__(v47, v42);
            v48 = v47 + v42;
            if (v24)
            {
              goto LABEL_73;
            }

            *(v6 + 2) = v48;
          }
        }

        else
        {

          if (v42)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_74:
    v4 = sub_219BF7214();
    goto LABEL_5;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    v50 = v3;
    v51 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v51)
      {
        v8 = v2;
        v9 = MEMORY[0x21CECE0F0](v5, v2);
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v5 >= *(v3 + 16))
        {
          goto LABEL_65;
        }

        v8 = v2;
        v9 = *(v2 + 8 * v5 + 32);
        swift_unknownObjectRetain();
        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      v10 = sub_21990D050();
      v11 = [v9 identifier];
      v12 = sub_219BF5414();
      v14 = v13;

      if (*(v10 + 16))
      {
        v15 = sub_21870F700(v12, v14);
        v17 = v16;

        if (v17)
        {
          v3 = *(*(v10 + 56) + 8 * v15);

          swift_unknownObjectRelease();

          goto LABEL_18;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      v3 = MEMORY[0x277D84F90];
LABEL_18:
      v18 = *(v3 + 16);
      v19 = *(v6 + 2);
      v20 = v19 + v18;
      if (__OFADD__(v19, v18))
      {
        goto LABEL_66;
      }

      v21 = swift_isUniquelyReferenced_nonNull_native();
      if ((v21 & 1) != 0 && v20 <= *(v6 + 3) >> 1)
      {
        if (!*(v3 + 16))
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (v19 <= v20)
        {
          v22 = v19 + v18;
        }

        else
        {
          v22 = v19;
        }

        v6 = sub_2191FB7FC(v21, v22, 1, v6);
        if (!*(v3 + 16))
        {
LABEL_7:

          if (v18)
          {
            goto LABEL_67;
          }

          goto LABEL_8;
        }
      }

      if ((*(v6 + 3) >> 1) - *(v6 + 2) < v18)
      {
        goto LABEL_68;
      }

      swift_arrayInitWithCopy();

      if (v18)
      {
        v23 = *(v6 + 2);
        v24 = __OFADD__(v23, v18);
        v25 = v23 + v18;
        if (v24)
        {
          goto LABEL_69;
        }

        *(v6 + 2) = v25;
      }

LABEL_8:
      ++v5;
      v7 = v2 == v4;
      v3 = v50;
      v2 = v8;
      if (v7)
      {
        goto LABEL_60;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_60:
  sub_21990B56C(v2, 1);
  return v6;
}