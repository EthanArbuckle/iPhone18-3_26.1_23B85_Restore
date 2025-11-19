uint64_t sub_219857580()
{
  v1 = v0;
  v2 = type metadata accessor for SportsScoresTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SportsNavigationTagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_219BE8C14();
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TagFeedRouteModel();
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v49 = sub_219BE6944();
  v15 = v14;
  sub_219BE6934();
  switch((v56 >> 58) & 0x3C | (v56 >> 1) & 3)
  {
    case 0xCuLL:
      v35 = swift_projectBox();
      sub_219867D44(v35, v7, type metadata accessor for SportsNavigationTagFeedGroup);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v37 = Strong;
        *v13 = *v7;
        swift_storeEnumTagMultiPayload();
        swift_unknownObjectRetain();
        sub_219BE8C04();
        __swift_project_boxed_opaque_existential_1((v37 + 48), *(v37 + 72));
        v51 = v49;
        v52 = v15;
        v53 = 0;
        v54 = 0;
        v55 = 1;
        sub_218E40BA4(v13, v10, &v51);
        (*(v50 + 8))(v10, v8);
        sub_219869D08(v13, type metadata accessor for TagFeedRouteModel);
        sub_219869D08(v7, type metadata accessor for SportsNavigationTagFeedGroup);
        goto LABEL_22;
      }

      sub_219869D08(v7, type metadata accessor for SportsNavigationTagFeedGroup);

    case 0xFuLL:

      v38 = swift_unknownObjectWeakLoadStrong();
      if (!v38)
      {
      }

      v39 = v38;
      swift_storeEnumTagMultiPayload();
      sub_219BE8C04();
      __swift_project_boxed_opaque_existential_1((v39 + 48), *(v39 + 72));
      v51 = v49;
      v52 = v15;
      v53 = 0;
      v54 = 0;
      v55 = 1;
      sub_218E40BA4(v13, v10, &v51);
      (*(v50 + 8))(v10, v8);
      sub_219869D08(v13, type metadata accessor for TagFeedRouteModel);
      goto LABEL_23;
    case 0x10uLL:
      if ([*(*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor) feedConfiguration] == 3)
      {
        v25 = swift_unknownObjectWeakLoadStrong();
        if (!v25)
        {
        }

        v26 = v25;
        *v13 = 5;
        swift_storeEnumTagMultiPayload();
        sub_219BE8C04();
        __swift_project_boxed_opaque_existential_1((v26 + 48), *(v26 + 72));
        v51 = v49;
        v52 = v15;
        v53 = 0;
        v54 = 0;
        v55 = 1;
        sub_218E40BA4(v13, v10, &v51);
        (*(v50 + 8))(v10, v8);
        v27 = type metadata accessor for TagFeedRouteModel;
        v28 = v13;
      }

      else
      {
        v46 = swift_projectBox();
        sub_219867D44(v46, v4, type metadata accessor for SportsScoresTagFeedGroup);
        v47 = swift_unknownObjectWeakLoadStrong();
        if (!v47)
        {

          sub_219869D08(v4, type metadata accessor for SportsScoresTagFeedGroup);
        }

        v48 = v47;
        *v13 = *v4;
        swift_storeEnumTagMultiPayload();
        swift_unknownObjectRetain();
        sub_219BE8C04();
        __swift_project_boxed_opaque_existential_1((v48 + 48), *(v48 + 72));
        v51 = v49;
        v52 = v15;
        v53 = 0;
        v54 = 0;
        v55 = 1;
        sub_218E40BA4(v13, v10, &v51);
        (*(v50 + 8))(v10, v8);
        sub_219869D08(v13, type metadata accessor for TagFeedRouteModel);
        v27 = type metadata accessor for SportsScoresTagFeedGroup;
        v28 = v4;
      }

      sub_219869D08(v28, v27);
LABEL_22:

LABEL_23:

      return swift_unknownObjectRelease();
    case 0x13uLL:

      v29 = MEMORY[0x277D85000];
      v30 = swift_unknownObjectWeakLoadStrong();
      if (!v30)
      {
      }

      v19 = v30;
      v31 = [objc_msgSend(*(*(v1 + *((*v29 & *v1) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor) backingTag)];
      swift_unknownObjectRelease();
      v32 = sub_219BF5414();
      v34 = v33;

      *v13 = v32;
      *(v13 + 1) = v34;
      v24 = 4;
      goto LABEL_18;
    case 0x14uLL:

      v17 = MEMORY[0x277D85000];
      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
      }

      v19 = v18;
      v20 = [objc_msgSend(*(*(v1 + *((*v17 & *v1) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor) backingTag)];
      swift_unknownObjectRelease();
      v21 = sub_219BF5414();
      v23 = v22;

      *v13 = v21;
      *(v13 + 1) = v23;
      v24 = 7;
      goto LABEL_18;
    case 0x25uLL:

      v40 = MEMORY[0x277D85000];
      v41 = swift_unknownObjectWeakLoadStrong();
      if (!v41)
      {
      }

      v19 = v41;
      v42 = [objc_msgSend(*(*(v1 + *((*v40 & *v1) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor) backingTag)];
      swift_unknownObjectRelease();
      v43 = sub_219BF5414();
      v45 = v44;

      *v13 = v43;
      *(v13 + 1) = v45;
      v24 = 11;
LABEL_18:
      *(v13 + 2) = v24;
      swift_storeEnumTagMultiPayload();
      sub_219BE8C04();
      __swift_project_boxed_opaque_existential_1((v19 + 48), *(v19 + 72));
      v51 = v49;
      v52 = v15;
      v53 = 0;
      v54 = 0;
      v55 = 1;
      sub_218E40BA4(v13, v10, &v51);
      (*(v50 + 8))(v10, v8);
      sub_219869D08(v13, type metadata accessor for TagFeedRouteModel);

      return swift_unknownObjectRelease();
    default:
  }
}

uint64_t sub_219857EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v69 = a6;
  v64 = a1;
  v65 = a5;
  v59 = a4;
  v67 = a2;
  v72 = a7;
  v51 = *a3;
  v52 = *MEMORY[0x277D85000];
  v7 = sub_219BDE744();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v68 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BF0634();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v66 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &unk_280EE8AA0, MEMORY[0x277D30260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v62 = &v49 - v12;
  sub_2198668E4(0, &unk_280E90F00, MEMORY[0x277D32EE8], v10);
  MEMORY[0x28223BE20](v13 - 8);
  v56 = &v49 - v14;
  sub_2198668E4(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v10);
  MEMORY[0x28223BE20](v15 - 8);
  v53 = &v49 - v16;
  sub_2198668E4(0, &unk_280EE8C40, MEMORY[0x277D30018], v10);
  MEMORY[0x28223BE20](v17 - 8);
  v55 = &v49 - v18;
  sub_21898BF70();
  v49 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v50 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_219BDE7A4();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v54 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_218954350;
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, v10);
  MEMORY[0x28223BE20](v28 - 8);
  v73 = &v49 - v29;
  sub_219BE6EC4();
  v74 = v75;
  v30 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v30);
  sub_219BE7B94();

  v31 = v49;
  v32 = v59;
  sub_219BE5F84();
  sub_219BEB244();

  (*(v25 + 8))(v27, v24);
  (*(v20 + 16))(v50, v32, v31);
  swift_unknownObjectRetain();
  v33 = sub_219BF04D4();
  sub_2198587BC(v33, v34, v53);

  v35 = v61;
  v36 = *(v61 + 16);
  v37 = v56;
  v38 = v67;
  v39 = v63;
  v36(v56, v67, v63);
  v40 = *(v35 + 56);
  v41 = v39;
  v40(v37, 0, 1, v39);
  v42 = v55;
  sub_219BDE4B4();
  v43 = sub_219BDE4D4();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  sub_219858DA0(v73, v62);
  v36(v66, v38, v41);
  type metadata accessor for TagFeedModel(0);
  sub_218CF5CE4();
  v44 = v54;
  sub_219BDE794();
  type metadata accessor for TagFeedInteractor();
  swift_getWitnessTable();
  v45 = v68;
  sub_219BDEB64();
  sub_219BDE734();
  sub_219BDEC64();

  v46 = v72;
  sub_219BDE724();
  (*(v70 + 8))(v45, v71);
  (*(v58 + 8))(v44, v60);
  sub_219869D68(v73, &unk_280EE5830, v57);
  v47 = type metadata accessor for TagFeedRouteModel();
  swift_storeEnumTagMultiPayload();
  return (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
}

uint64_t sub_2198587BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a1;
  v41 = a2;
  v42 = a3;
  v3 = sub_219BE0674();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = &v35 - v6;
  sub_218954408();
  v39 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  sub_218954350();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v43 = v44;
  v19 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v19);
  sub_219BE7B94();

  v20 = v39;
  sub_219BEB244();
  (*(v8 + 8))(v10, v20);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_219869D68(v13, &unk_280EE5830, sub_218954350);
    v21 = sub_219BDDD94();
    return (*(*(v21 - 8) + 56))(v42, 1, 1, v21);
  }

  (*(v16 + 32))(v18, v13, v15);
  sub_219BE6934();
  (*(v16 + 8))(v18, v15);
  v23 = (v44 >> 58) & 0x3C | (v44 >> 1) & 3;

  v24 = **(&unk_278243208 + v23);
  v26 = v37;
  v25 = v38;
  v27 = v35;
  (*(v37 + 104))(v35, v24, v38);
  v28 = v36;
  (*(v26 + 32))(v36, v27, v25);
  v29 = (*(v26 + 88))(v28, v25);
  v30 = v42;
  if (v29 == *MEMORY[0x277D2E6C0] || v29 == *MEMORY[0x277D2E6B0] || v29 == *MEMORY[0x277D2E6A0])
  {
LABEL_9:
    v31 = MEMORY[0x277D2FD28];
    goto LABEL_10;
  }

  if (v29 != *MEMORY[0x277D2E6B8])
  {
    if (v29 != *MEMORY[0x277D2E6A8])
    {
      v34 = *MEMORY[0x277D2FD28];
      v33 = sub_219BDDD94();
      (*(*(v33 - 8) + 104))(v30, v34, v33);
      (*(v26 + 8))(v28, v25);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v31 = MEMORY[0x277D2FD38];
LABEL_10:
  v32 = *v31;
  v33 = sub_219BDDD94();
  (*(*(v33 - 8) + 104))(v30, v32, v33);
LABEL_11:
  sub_219BDDD94();
  return (*(*(v33 - 8) + 56))(v30, 0, 1, v33);
}

uint64_t sub_219858DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  sub_219869C88(a1, v16 - v5, &unk_280EE5830, sub_218954350);
  sub_218954350();
  v8 = v7;
  v9 = *(v7 - 8);
  if ((*(v9 + 48))(v6, 1, v7) == 1)
  {
    sub_219869D68(v6, &unk_280EE5830, sub_218954350);
    v10 = sub_219BDEA34();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  else
  {
    sub_219BE6934();
    v12 = v16[1];
    (*(v9 + 8))(v6, v8);
    v18 = &type metadata for TagFeedSectionDescriptor;
    v19 = sub_219867C88();
    *&v17 = v12;
    sub_2186CB1F0(&v17, v20);
    sub_2186CB1F0(v20, a2);
    v13 = *MEMORY[0x277D30258];
    v14 = sub_219BDEA34();
    v15 = *(v14 - 8);
    (*(v15 + 104))(a2, v13, v14);
    return (*(v15 + 56))(a2, 0, 1, v14);
  }
}

uint64_t sub_219859004(void (*a1)(char *, uint64_t))
{
  v90 = a1;
  ObjectType = swift_getObjectType();
  v84 = *MEMORY[0x277D85000] & *v1;
  v2 = sub_219BE9944();
  v82 = *(v2 - 8);
  v83 = v2;
  MEMORY[0x28223BE20](v2);
  v80 = v3;
  v81 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_219BED174();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v74 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BED1D4();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BED214();
  v71 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v68 - v8;
  v9 = sub_219BE9C04();
  v88 = *(v9 - 8);
  v89 = v9;
  MEMORY[0x28223BE20](v9);
  v78 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v87 = &v68 - v12;
  sub_218954408();
  v86 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE61B4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v68 - v22;
  v91 = v1;
  sub_219BE6EC4();
  sub_219BE6F74();

  v24 = *(v18 + 104);
  v24(v20, *MEMORY[0x277D6D510], v17);
  v95 = v23;
  v25 = sub_219BE61A4();
  v26 = *(v18 + 8);
  v93 = v18 + 8;
  v94 = v17;
  v92 = v26;
  v26(v20, v17);
  if (v25)
  {
    sub_219BE6EC4();
    v102 = aBlock;
    v27 = MEMORY[0x277D6D8B8];
    sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
    sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v27);
    sub_219BE7B94();

    v28 = sub_219759E94();
    (*(v14 + 8))(v16, v86);
    if ((~v28 & 0xF000000000000007) != 0)
    {
      sub_21885AB78(v28);
    }

    else
    {
      v29 = v87;
      sub_219BE9934();
      v30 = v88;
      v31 = v89;
      v32 = v78;
      (*(v88 + 104))(v78, *MEMORY[0x277D6E830], v89);
      v33 = sub_219BE9BF4();
      v34 = *(v30 + 8);
      v34(v32, v31);
      v34(v29, v31);
      if (v33)
      {
        if (qword_280E8D7F8 != -1)
        {
          swift_once();
        }

        sub_219BF6214();
        v35 = MEMORY[0x277D84F90];
        sub_219BE5314();
        Strong = swift_unknownObjectWeakLoadStrong();
        v37 = v92;
        if (Strong)
        {
          v38 = swift_unknownObjectWeakLoadStrong();
          if (v38)
          {
            *(swift_allocObject() + 16) = v38;
            swift_unknownObjectRetain();
            sub_219BE3494();
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        sub_2186C6148(0, &qword_280E8E3B0);
        v89 = sub_219BF66A4();
        v39 = v69;
        sub_219BED1F4();
        v40 = v70;
        sub_219BED244();
        v90 = *(v71 + 8);
        v90(v39, v79);
        v41 = swift_allocObject();
        v42 = v91;
        *(v41 + 16) = v91;
        v100 = sub_219869E58;
        v101 = v41;
        aBlock = MEMORY[0x277D85DD0];
        v97 = 1107296256;
        v98 = sub_218793E0C;
        v99 = &block_descriptor_178;
        v43 = _Block_copy(&aBlock);
        v44 = v42;

        v45 = v72;
        sub_219BED1A4();
        aBlock = v35;
        sub_2186CC41C(&qword_280E927E0, MEMORY[0x277D85198]);
        sub_2198668E4(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_21874EB68();
        v46 = v74;
        v47 = v77;
        sub_219BF7164();
        v48 = v89;
        MEMORY[0x21CECD420](v40, v45, v46, v43);
        _Block_release(v43);

        (*(v76 + 8))(v46, v47);
        v49 = v45;
        v50 = v95;
        (*(v73 + 8))(v49, v75);
        v90(v40, v79);
        v51 = v94;
        return v37(v50, v51);
      }
    }
  }

  v51 = v94;
  v24(v20, *MEMORY[0x277D6D520], v94);
  sub_2186CC41C(&qword_280EE5AF0, MEMORY[0x277D6D528]);
  v50 = v95;
  v52 = sub_219BF53A4();
  v37 = v92;
  v92(v20, v51);
  if ((v52 & 1) == 0)
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_219C09BA0;
    aBlock = 0;
    v97 = 0xE000000000000000;
    v54 = v87;
    v55 = v90;
    sub_219BE9934();
    v56 = v89;
    sub_219BF7484();
    (*(v88 + 8))(v54, v56);
    v57 = aBlock;
    v58 = v97;
    *(v53 + 56) = MEMORY[0x277D837D0];
    *(v53 + 64) = sub_2186FC3BC();
    *(v53 + 32) = v57;
    *(v53 + 40) = v58;
    sub_219BF6214();
    sub_219BE5314();

    MEMORY[0x28223BE20](v59);
    *(&v68 - 2) = v91;
    sub_219BE3204();
    v61 = v82;
    v60 = v83;
    v62 = v81;
    (*(v82 + 16))(v81, v55, v83);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v64 = swift_allocObject();
    v65 = v84;
    *(v64 + 16) = *(v84 + 80);
    *(v64 + 24) = *(v65 + 88);
    (*(v61 + 32))(v64 + v63, v62, v60);
    v66 = sub_219BE2E54();
    sub_219BE2F94();

    v50 = v95;
  }

  return v37(v50, v51);
}

void sub_219859CD4(_BYTE *a1, void *a2)
{
  v28 = a2;
  v4 = sub_219BED174();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BED1D4();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BED214();
  v29 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = sub_219BE9C04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v27 = v2;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09BA0;
    aBlock = 0;
    v36 = 0xE000000000000000;
    sub_219BE9934();
    sub_219BF7484();
    (*(v14 + 8))(v16, v13);
    v18 = aBlock;
    v19 = v36;
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = sub_2186FC3BC();
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    sub_219BF6214();
    sub_219BE5314();

    sub_2186C6148(0, &qword_280E8E3B0);
    v20 = sub_219BF66A4();
    sub_219BED1F4();
    sub_219BED244();
    v29 = *(v29 + 8);
    (v29)(v9, v41);
    v21 = swift_allocObject();
    v22 = v28;
    *(v21 + 16) = v28;
    v39 = sub_219866DBC;
    v40 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v36 = 1107296256;
    v37 = sub_218793E0C;
    v38 = &block_descriptor_45_5;
    v23 = _Block_copy(&aBlock);
    v24 = v22;

    sub_219BED1A4();
    aBlock = MEMORY[0x277D84F90];
    sub_2186CC41C(&qword_280E927E0, MEMORY[0x277D85198]);
    sub_2198668E4(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    v25 = v31;
    v26 = v34;
    sub_219BF7164();
    MEMORY[0x21CECD420](v12, v7, v25, v23);
    _Block_release(v23);

    (*(v33 + 8))(v25, v26);
    (*(v30 + 8))(v7, v32);
    (v29)(v12, v41);
  }
}

uint64_t sub_21985A274()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_searchCoordinator);
      if (!v2 || (*(v2 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented) & 1) == 0)
      {
        sub_219BE1E74();
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21985A374()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0xD0));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = off_282A2FF28[0];
  type metadata accessor for PuzzleBadgingCoordinator();
  return v2();
}

uint64_t sub_21985A3F4(uint64_t a1)
{
  result = sub_21985A4F4();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(swift_allocObject() + 16) = Strong;
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_21984E25C(a1);
  }

  return result;
}

uint64_t sub_21985A4F4()
{
  v40 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v40);
  v1 = &v34 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70();
  v3 = v2;
  v34 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219866BF4(0, &qword_280E8D4F0, sub_218954350, sub_2196AB238, MEMORY[0x277D84310]);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  sub_218954408();
  MEMORY[0x28223BE20](v9 - 8);
  sub_218954350();
  v11 = v10;
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v35 = &v34 - v14;
  MEMORY[0x28223BE20](v15);
  v38 = &v34 - v16;
  sub_219BE6EC4();
  v41[4] = v41[0];
  v17 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v17);
  sub_219BE7B94();

  v18 = sub_218B18E00();
  if (*(v18 + 16))
  {
    v19 = v39;
    v20 = *(v39 + 16);
    v21 = v35;
    v20(v35, v18 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v11);

    v22 = *(v19 + 32);
    v23 = v38;
    v22(v38, v21, v11);
    v20(v36, v23, v11);
    sub_2186CC41C(&unk_280EE5860, sub_218954350);
    sub_219BF56A4();
    v24 = *(v37 + 36);
    sub_2196AB238();
    sub_219BF5E84();
    v25 = v39;
    if (*&v8[v24] == v41[0])
    {
      v26 = 0;
    }

    else
    {
      v27 = (v34 + 16);
      v28 = (v34 + 8);
      while (1)
      {
        v29 = sub_219BF5EC4();
        (*v27)(v5);
        v29(v41, 0);
        sub_219BF5E94();
        sub_219BE5FC4();
        (*v28)(v5, v3);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_219869D08(v1, type metadata accessor for TagFeedModel);
        sub_219BF5E84();
        if (*&v8[v24] == v41[0])
        {
          v26 = 0;
          goto LABEL_10;
        }
      }

      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8]);
      v31 = *(v30 + 48);
      v32 = sub_219BF1584();
      (*(*(v32 - 8) + 8))(&v1[v31], v32);
      sub_219869D08(v1, type metadata accessor for TagFeedGapLocation);
      v26 = 1;
LABEL_10:
      v23 = v38;
      v25 = v39;
    }

    sub_219866C74(v8, &qword_280E8D4F0, sub_218954350, sub_2196AB238);
    (*(v25 + 8))(v23, v11);
  }

  else
  {

    return 1;
  }

  return v26;
}

uint64_t sub_21985AB44(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_219866F58(v3, a1, Strong);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21985ABEC()
{
  result = sub_219BDB1D4();
  if (result)
  {
    v1 = sub_21985ACC0(result);

    if (v1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        v4 = swift_unknownObjectWeakLoadStrong();
        if (v4)
        {
          sub_219867178(v3, v1, v4);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_21985ACC0(uint64_t a1)
{
  v8 = 0x6168436465646461;
  sub_219BF72A4();
  if (*(a1 + 16) && (v2 = sub_21931EECC(v9), (v3 & 1) != 0))
  {
    sub_2186D1230(*(a1 + 56) + 32 * v2, v10);
    sub_218B6B67C(v9);
    sub_2186E2394();
    if (swift_dynamicCast())
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_218B6B67C(v9);
  }

  v8 = 0xD000000000000011;
  sub_219BF72A4();
  if (*(a1 + 16) && (v4 = sub_21931EECC(v9), (v5 & 1) != 0))
  {
    sub_2186D1230(*(a1 + 56) + 32 * v4, v10);
    sub_218B6B67C(v9);
    sub_2186E2394();
    if (swift_dynamicCast())
    {
LABEL_9:
      v6 = sub_21984D97C(v8);

      return v6;
    }
  }

  else
  {
    sub_218B6B67C(v9);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21985AE58(void *a1)
{
  v2 = sub_219BDB1E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB1A4();
  v6 = a1;
  sub_21985ABEC();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21985AF80(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  sub_218774F78(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);

  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x70)]);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xA8)]);

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xD0)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xD8)]);
  return __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xE0)]);
}

uint64_t sub_21985B29C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v92 = a2;
  v82 = a4;
  v91 = a3;
  v5 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = &v68 - v7;
  v8 = sub_219BDC104();
  v9 = *(v8 - 8);
  v84 = v8;
  v85 = v9;
  MEMORY[0x28223BE20](v8);
  v83 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280EE3450, MEMORY[0x277D2D430], v5);
  MEMORY[0x28223BE20](v11 - 8);
  v79 = &v68 - v12;
  v13 = sub_219BEBE64();
  v80 = *(v13 - 8);
  v81 = v13;
  MEMORY[0x28223BE20](v13);
  v74 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280EE42A0, MEMORY[0x277D6E740], v5);
  MEMORY[0x28223BE20](v15 - 8);
  v75 = &v68 - v16;
  v78 = sub_219BE16D4();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, v5);
  MEMORY[0x28223BE20](v18 - 8);
  v86 = &v68 - v19;
  sub_218954350();
  v87 = *(v20 - 8);
  v88 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE5CD0, sub_21898BF70, v5);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v68 - v24;
  sub_21898BF70();
  v27 = v26;
  v90 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BDEDB4();
  if (v36)
  {
    sub_21985BF58(a1, v92, v91, v35, v36);
  }

  else
  {
    v72 = v29;
    v71 = v22;
    v73 = v32;
    v38 = v89;
    v39 = *(v93 + *((*MEMORY[0x277D85000] & *v93) + 0x98));
    sub_219BDEC74();
    sub_219BDEDC4();
    sub_219BEB1C4();

    v40 = v90;
    if ((*(v90 + 48))(v25, 1, v27) == 1)
    {
      (*(v73 + 8))(v34, v31);
      return sub_219869D68(v25, &unk_280EE5CD0, sub_21898BF70);
    }

    else
    {
      v70 = v39;
      v41 = v72;
      (*(v40 + 32))(v72, v25, v27);
      sub_219BDEDC4();
      v42 = v86;
      sub_219BEB244();

      v44 = v87;
      v43 = v88;
      if ((*(v87 + 48))(v42, 1, v88) == 1)
      {
        (*(v40 + 8))(v41, v27);
        (*(v73 + 8))(v34, v31);
        return sub_219869D68(v42, &unk_280EE5830, sub_218954350);
      }

      else
      {
        v69 = v27;
        v45 = *(v44 + 32);
        v46 = v71;
        v45(v71, v42, v43);
        v47 = sub_219BE97D4();
        v48 = v75;
        (*(*(v47 - 8) + 56))(v75, 1, 1, v47);
        v49 = v76;
        sub_21968E4D8(v46, v48, 0, 0, v76);
        sub_219869D68(v48, &qword_280EE42A0, MEMORY[0x277D6E740]);
        sub_2186CC41C(&unk_280EE7FB0, MEMORY[0x277D2F590]);
        v50 = v78;
        sub_219BDD1F4();
        (*(v77 + 8))(v49, v50);
        sub_2198680A8();
        v51 = v79;
        v92 = v34;
        sub_219BEB264();
        v52 = v80;
        v53 = v81;
        if ((*(v80 + 48))(v51, 1, v81) == 1)
        {
          sub_219869D68(v51, &qword_280EE3450, MEMORY[0x277D2D430]);
          v54 = v85;
          v55 = v83;
          v56 = v38;
        }

        else
        {
          v57 = v74;
          (*(v52 + 32))(v74, v51, v53);
          sub_219717458(v91, v94);
          v54 = v85;
          v55 = v83;
          v56 = v38;
          if (v95)
          {
            __swift_project_boxed_opaque_existential_1(v94, v95);
            sub_2186CC41C(&unk_280EE3458, MEMORY[0x277D2D430]);
            sub_219BEC144();
            (*(v52 + 8))(v57, v53);
            __swift_destroy_boxed_opaque_existential_1(v94);
          }

          else
          {
            (*(v52 + 8))(v57, v53);
            sub_219308EE0(v94);
          }
        }

        v58 = v73;
        v59 = v72;
        v60 = v92;
        sub_219BEB2F4();
        v61 = v84;
        v62 = (*(v54 + 48))(v56, 1, v84);
        v63 = v82;
        if (v62 == 1)
        {
          (*(v87 + 8))(v71, v88);
          (*(v90 + 8))(v59, v69);
          (*(v58 + 8))(v60, v31);
          return sub_219869D68(v56, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
        }

        else
        {
          (*(v54 + 32))(v55, v56, v61);
          if (v63)
          {
            (*(v54 + 8))(v55, v61);
            (*(v87 + 8))(v71, v88);
            (*(v90 + 8))(v72, v69);
          }

          else
          {
            v64 = sub_219BDEC24();
            v65 = v69;
            if (v64)
            {
              Strong = swift_unknownObjectWeakLoadStrong();
              v67 = v90;
              if (Strong)
              {
                if (swift_unknownObjectWeakLoadStrong())
                {
                  sub_2198688EC(v55);
                  swift_unknownObjectRelease();
                }

                swift_unknownObjectRelease();
              }

              (*(v54 + 8))(v55, v61);
              (*(v87 + 8))(v71, v88);
              (*(v67 + 8))(v72, v65);
            }

            else
            {
              (*(v54 + 8))(v55, v61);
              (*(v87 + 8))(v71, v88);
              (*(v90 + 8))(v72, v65);
            }
          }

          return (*(v58 + 8))(v92, v31);
        }
      }
    }
  }
}

uint64_t sub_21985BF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v61 = a4;
  v62 = a5;
  v58 = a3;
  v52 = a2;
  v7 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &qword_280EE3450, MEMORY[0x277D2D430], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = &v49 - v9;
  v10 = sub_219BEBE64();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x28223BE20](v10);
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v53 = &v49 - v13;
  v14 = sub_219BE16D4();
  v54 = *(v14 - 8);
  v55 = v14;
  MEMORY[0x28223BE20](v14);
  v51 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, v7);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v49 - v17;
  sub_218954350();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x277D85000];
  sub_219BDEC74();
  sub_219BEB244();
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    (*(v26 + 8))(v28, v25);
    v30 = &unk_280EE5830;
    v31 = sub_218954350;
    v32 = v18;
    return sub_219869D68(v32, v30, v31);
  }

  v49 = v21;
  v50 = v26;
  v62 = v25;
  (*(v21 + 32))(v23, v18, v20);
  v33 = (v6 + *((*v29 & *v6) + 0xE0));
  __swift_project_boxed_opaque_existential_1(v33, v33[3]);
  v61 = v20;
  sub_219BE6944();
  type metadata accessor for TagFeedModel(0);
  sub_2186F7410();
  sub_218CF5CE4();
  v34 = sub_219BF00E4();

  v35 = v53;
  sub_2190600D0(v34, 0, v53);
  v37 = v54;
  v36 = v55;
  v38 = v23;
  if ((*(v54 + 48))(v35, 1, v55) == 1)
  {
    sub_219869D68(v35, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  }

  else
  {
    v39 = v51;
    (*(v37 + 32))(v51, v35, v36);
    sub_2186CC41C(&unk_280EE7FB0, MEMORY[0x277D2F590]);
    sub_219BDD1F4();
    (*(v37 + 8))(v39, v36);
  }

  v41 = v59;
  v40 = v60;
  v42 = v56;
  v43 = v57;
  v44 = v62;
  v45 = v50;
  sub_2198680A8();
  sub_219BEB274();
  v46 = (*(v41 + 48))(v42, 1, v40);
  v47 = v58;
  if (v46 == 1)
  {
    (*(v49 + 8))(v38, v61);
    (*(v45 + 8))(v28, v44);
    v30 = &qword_280EE3450;
    v31 = MEMORY[0x277D2D430];
    v32 = v42;
    return sub_219869D68(v32, v30, v31);
  }

  (*(v41 + 32))(v43, v42, v40);
  sub_219717458(v47, v63);
  if (v64)
  {
    __swift_project_boxed_opaque_existential_1(v63, v64);
    sub_2186CC41C(&unk_280EE3458, MEMORY[0x277D2D430]);
    sub_219BEC144();
    (*(v41 + 8))(v43, v40);
    (*(v49 + 8))(v38, v61);
    (*(v45 + 8))(v28, v44);
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }

  else
  {
    (*(v41 + 8))(v43, v40);
    (*(v49 + 8))(v38, v61);
    (*(v45 + 8))(v28, v44);
    return sub_219308EE0(v63);
  }
}

uint64_t sub_21985C748(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v91 = a3;
  v89 = a4;
  v93 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v90 = v70 - v7;
  v78 = sub_219BDC104();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE5CD0, sub_21898BF70, v5);
  MEMORY[0x28223BE20](v9 - 8);
  v80 = v70 - v10;
  sub_21898BF70();
  v81 = *(v11 - 8);
  v82 = v11;
  MEMORY[0x28223BE20](v11);
  v76 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280EE3450, MEMORY[0x277D2D430], v5);
  MEMORY[0x28223BE20](v13 - 8);
  v86 = v70 - v14;
  v15 = sub_219BEBE64();
  v16 = *(v15 - 8);
  v87 = v15;
  v88 = v16;
  MEMORY[0x28223BE20](v15);
  v79 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280EE42A0, MEMORY[0x277D6E740], v5);
  MEMORY[0x28223BE20](v18 - 8);
  v84 = v70 - v19;
  v83 = sub_219BE16D4();
  v85 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v21 = v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, v5);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v70 - v23;
  sub_218954350();
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v31 = v30;
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v34 = v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BDD334();
  if (v36)
  {
    sub_2198680FC(a1, v93, v91, v35, v36);
  }

  v71 = v21;
  v72 = v29;
  v74 = v27;
  v38 = v26;
  v73 = v32;
  result = sub_219BDD344();
  if (!v39)
  {
    return result;
  }

  v40 = *(v92 + *((*MEMORY[0x277D85000] & *v92) + 0xB8));
  v41 = v39;
  v42 = result;
  sub_219BDEBD4();
  v70[1] = v42;
  v70[2] = v41;
  sub_219BEB244();
  v43 = v74;
  v44 = v38;
  if ((*(v74 + 48))(v24, 1, v38) == 1)
  {
    sub_219869D68(v24, &unk_280EE5830, sub_218954350);
    v45 = v90;
    if (v89)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v70[0] = v40;
    v46 = v72;
    (*(v43 + 32))(v72, v24, v44);
    v47 = sub_219BE97D4();
    v48 = v84;
    (*(*(v47 - 8) + 56))(v84, 1, 1, v47);
    v49 = v71;
    sub_21968E4D8(v46, v48, 0, 0, v71);
    sub_219869D68(v48, &qword_280EE42A0, MEMORY[0x277D6E740]);
    sub_2186CC41C(&unk_280EE7FB0, MEMORY[0x277D2F590]);
    v50 = v83;
    v51 = v46;
    sub_219BDD1F4();
    (*(v85 + 8))(v49, v50);
    sub_2198680A8();
    v52 = v86;
    v53 = v31;
    sub_219BEB274();
    v54 = v87;
    v55 = v88;
    if ((*(v88 + 48))(v52, 1, v87) == 1)
    {
      (*(v43 + 8))(v51, v44);
      sub_219869D68(v52, &qword_280EE3450, MEMORY[0x277D2D430]);
      v56 = v89;
    }

    else
    {
      v57 = v79;
      (*(v55 + 32))(v79, v52, v54);
      sub_219717458(v91, v94);
      v56 = v89;
      if (v95)
      {
        v93 = v44;
        __swift_project_boxed_opaque_existential_1(v94, v95);
        sub_2186CC41C(&unk_280EE3458, MEMORY[0x277D2D430]);
        sub_219BEC144();
        (*(v55 + 8))(v57, v54);
        (*(v74 + 8))(v51, v93);
        __swift_destroy_boxed_opaque_existential_1(v94);
      }

      else
      {
        (*(v55 + 8))(v57, v54);
        (*(v74 + 8))(v51, v44);
        sub_219308EE0(v94);
      }
    }

    v31 = v53;
    v45 = v90;
    if (v56)
    {
      goto LABEL_18;
    }
  }

  if ((sub_219BDEB84() & 1) == 0)
  {
LABEL_18:

    return (*(v73 + 8))(v34, v31);
  }

  v58 = v80;
  sub_219BEB1C4();

  v59 = v81;
  v60 = v31;
  v61 = v82;
  if ((*(v81 + 48))(v58, 1, v82) == 1)
  {
    (*(v73 + 8))(v34, v60);
    return sub_219869D68(v58, &unk_280EE5CD0, sub_21898BF70);
  }

  else
  {
    v62 = v76;
    (*(v59 + 32))(v76, v58, v61);
    v63 = v61;
    v64 = v59;
    sub_219BEB2F4();
    v65 = v77;
    v66 = v78;
    if ((*(v77 + 48))(v45, 1, v78) == 1)
    {
      (*(v64 + 8))(v62, v63);
      (*(v73 + 8))(v34, v60);
      return sub_219869D68(v45, &unk_280EE9BB0, MEMORY[0x277CC9AF8]);
    }

    else
    {
      v67 = v75;
      (*(v65 + 32))(v75, v45, v66);
      Strong = swift_unknownObjectWeakLoadStrong();
      v69 = v73;
      if (Strong)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_2198688EC(v67);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        v66 = v78;
        v65 = v77;
      }

      (*(v65 + 8))(v67, v66);
      (*(v81 + 8))(v62, v82);
      return (*(v69 + 8))(v34, v60);
    }
  }
}

uint64_t sub_21985D3AC(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 96))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v2 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v2);
  sub_219BE6EF4();
}

uint64_t sub_21985D4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v295 = a4;
  v298 = a2;
  v299 = a3;
  v304 = a5;
  v305 = a1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &qword_280E905C0, MEMORY[0x277D33610], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v251 = &v227 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v261 = &v227 - v9;
  v259 = sub_219BEDAE4();
  v257 = *(v259 - 8);
  MEMORY[0x28223BE20](v259);
  v255 = &v227 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_219BDEA14();
  v247 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v245 = &v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_219BDEB14();
  v244 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v243 = &v227 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280EE8E10, MEMORY[0x277D2FB40], v5);
  MEMORY[0x28223BE20](v13 - 8);
  v239 = &v227 - v14;
  v237 = sub_219BDDED4();
  v236 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v238 = (&v227 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v254 = sub_219BDDBF4();
  v242 = *(v254 - 8);
  MEMORY[0x28223BE20](v254);
  v240 = &v227 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v241 = &v227 - v18;
  v253 = sub_219BF0B74();
  v252 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v250 = &v227 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_219BF04A4();
  v263 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v262 = &v227 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_219BEDB94();
  v229 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v228 = &v227 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v235);
  v234 = &v227 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_219BF0AC4();
  v232 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v231 = &v227 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE8D10, MEMORY[0x277D2FD50], v5);
  MEMORY[0x28223BE20](v24 - 8);
  v256 = &v227 - v25;
  v260 = sub_219BDDDA4();
  v258 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v249 = &v227 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BDE4D4();
  v300 = *(v27 - 8);
  v301 = v27;
  MEMORY[0x28223BE20](v27);
  v265 = &v227 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280E90F00, MEMORY[0x277D32EE8], v5);
  MEMORY[0x28223BE20](v29 - 8);
  v276 = &v227 - v30;
  v294 = sub_219BF13A4();
  MEMORY[0x28223BE20](v294);
  v271 = &v227 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v5);
  MEMORY[0x28223BE20](v32 - 8);
  v278 = &v227 - v33;
  v282 = sub_219BF07A4();
  v281 = *(v282 - 8);
  MEMORY[0x28223BE20](v282);
  v277 = &v227 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280E90A30, MEMORY[0x277D33058], v5);
  MEMORY[0x28223BE20](v35 - 8);
  v268 = &v227 - v36;
  sub_2198668E4(0, &unk_280EE9D00, MEMORY[0x277CC9260], v5);
  MEMORY[0x28223BE20](v37 - 8);
  v270 = &v227 - v38;
  v275 = sub_219BDB954();
  v274 = *(v275 - 8);
  MEMORY[0x28223BE20](v275);
  v266 = &v227 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_280E90180, MEMORY[0x277D33E20], v5);
  MEMORY[0x28223BE20](v40 - 8);
  v269 = &v227 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v285 = &v227 - v43;
  v279 = sub_219BF1094();
  v280 = *(v279 - 8);
  MEMORY[0x28223BE20](v279);
  v283 = &v227 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BDE744();
  v292 = *(v45 - 8);
  v293 = v45;
  MEMORY[0x28223BE20](v45);
  v291 = &v227 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_219BF0634();
  v272 = *(v273 - 8);
  MEMORY[0x28223BE20](v273);
  v297 = &v227 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE8AA0, MEMORY[0x277D30260], v5);
  MEMORY[0x28223BE20](v48 - 8);
  v287 = &v227 - v49;
  sub_2198668E4(0, &unk_280EE8C40, MEMORY[0x277D30018], v5);
  MEMORY[0x28223BE20](v50 - 8);
  v267 = &v227 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v284 = &v227 - v53;
  MEMORY[0x28223BE20](v54);
  v296 = &v227 - v55;
  sub_219866BF4(0, &qword_280EE5B40, MEMORY[0x277D33320], sub_2191FD45C, MEMORY[0x277D6D3F0]);
  v57 = v56;
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v286 = &v227 - v59;
  v60 = sub_219BDE7A4();
  v289 = *(v60 - 8);
  v290 = v60;
  MEMORY[0x28223BE20](v60);
  v288 = &v227 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_219BF0F34();
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v65 = &v227 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_219BF0614();
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v69 = &v227 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v72 = &v227 - v71;
  sub_219BE5FD4();
  v73 = (*(v67 + 88))(v72, v66);
  if (v73 == *MEMORY[0x277D32DB8] || v73 == *MEMORY[0x277D32D10] || v73 == *MEMORY[0x277D32E00])
  {
    goto LABEL_22;
  }

  if (v73 != *MEMORY[0x277D32E10])
  {
    if (v73 == *MEMORY[0x277D32E18])
    {
      (*(v67 + 96))(v72, v66);
      v84 = v280;
      v85 = v283;
      v86 = v72;
      v87 = v279;
      (*(v280 + 32))(v283, v86, v279);
      v88 = v285;
      sub_219BF1034();
      v89 = sub_219BF3484();
      v90 = *(v89 - 8);
      if ((*(v90 + 48))(v88, 1, v89) == 1)
      {
        v91 = v270;
        sub_219BF1084();
        v92 = v274;
        v93 = v275;
        if ((*(v274 + 48))(v91, 1, v275) == 1)
        {
          sub_219869D68(v91, &unk_280EE9D00, MEMORY[0x277CC9260]);
          v94 = v268;
          sub_219BF1074();
          if ((*(v63 + 48))(v94, 1, v62) == 1)
          {
            (*(v84 + 8))(v85, v87);
            sub_219869D68(v94, &unk_280E90A30, MEMORY[0x277D33058]);
            v95 = type metadata accessor for TagFeedRouteModel();
            (*(*(v95 - 8) + 56))(v304, 1, 1, v95);
            return sub_219869D68(v285, &qword_280E90180, MEMORY[0x277D33E20]);
          }

          sub_219BF0F14();
          (*(v63 + 8))(v94, v62);
          (*(v58 + 16))(v286, v305, v57);
          (*(v300 + 56))(v296, 1, 1, v301);
          v147 = sub_219BDEA34();
          (*(*(v147 - 8) + 56))(v287, 1, 1, v147);
          v148 = *(*(v303 + *((*MEMORY[0x277D85000] & *v303) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
          swift_unknownObjectRetain();
          v149 = v148;
          sub_219BF63B4();

          sub_2191FD45C();
          v150 = v288;
          sub_219BDE794();
          swift_getWitnessTable();
          v151 = v291;
          sub_219BDEB54();
          sub_219BDE734();
          sub_219BDEC64();

          v152 = v304;
          sub_219BDE724();
          swift_unknownObjectRelease();
          (*(v292 + 8))(v151, v293);
          (*(v289 + 8))(v150, v290);
          (*(v84 + 8))(v283, v87);
          v132 = type metadata accessor for TagFeedRouteModel();
          swift_storeEnumTagMultiPayload();
          v133 = *(*(v132 - 8) + 56);
          v134 = v152;
        }

        else
        {
          (*(v84 + 8))(v85, v87);
          v129 = *(v92 + 32);
          v130 = v266;
          v129(v266, v91, v93);
          v131 = v304;
          v129(v304, v130, v93);
          v132 = type metadata accessor for TagFeedRouteModel();
          swift_storeEnumTagMultiPayload();
          v133 = *(*(v132 - 8) + 56);
          v134 = v131;
        }

        v133(v134, 0, 1, v132);
        return sub_219869D68(v285, &qword_280E90180, MEMORY[0x277D33E20]);
      }

      v116 = v269;
      sub_219869C88(v88, v269, &qword_280E90180, MEMORY[0x277D33E20]);
      v117 = (*(v90 + 88))(v116, v89);
      if (v117 == *MEMORY[0x277D33DF0])
      {
        (*(v90 + 96))(v116, v89);

        v118 = sub_219BF4024();
        if (v118)
        {
          v119 = v85;
          v120 = [v118 identifier];
          v121 = v84;
          v122 = sub_219BF5414();
          v123 = v87;
          v125 = v124;
          swift_unknownObjectRelease();

          (*(v121 + 8))(v119, v123);
          v126 = v304;
          *v304 = v122;
          v126[1] = v125;
          v127 = 8;
LABEL_43:
          v126[2] = v127;
          v166 = type metadata accessor for TagFeedRouteModel();
          swift_storeEnumTagMultiPayload();
          (*(*(v166 - 8) + 56))(v126, 0, 1, v166);
LABEL_45:

          return sub_219869D68(v88, &qword_280E90180, MEMORY[0x277D33E20]);
        }

        goto LABEL_44;
      }

      if (v117 == *MEMORY[0x277D33E08])
      {
        (*(v90 + 96))(v116, v89);

        v135 = sub_219BF46D4();
        if (v135)
        {
          v136 = v85;
          v137 = [v135 identifier];
          v138 = v84;
          v139 = sub_219BF5414();
          v140 = v87;
          v142 = v141;
          swift_unknownObjectRelease();

          (*(v138 + 8))(v136, v140);
          v126 = v304;
          *v304 = v139;
          v126[1] = v142;
          v127 = 4;
          goto LABEL_43;
        }

LABEL_44:

        (*(v84 + 8))(v85, v87);
        v167 = type metadata accessor for TagFeedRouteModel();
        (*(*(v167 - 8) + 56))(v304, 1, 1, v167);
        goto LABEL_45;
      }

      if (v117 == *MEMORY[0x277D33DF8])
      {
        (*(v90 + 96))(v116, v89);

        v158 = sub_219BF4BE4();
        if (v158)
        {
          v159 = v85;
          v160 = [v158 identifier];
          v161 = v84;
          v162 = sub_219BF5414();
          v163 = v87;
          v165 = v164;
          swift_unknownObjectRelease();

          (*(v161 + 8))(v159, v163);
          v126 = v304;
          *v304 = v162;
          v126[1] = v165;
          v127 = 7;
          goto LABEL_43;
        }

        goto LABEL_44;
      }

      v182 = v85;
      v183 = *MEMORY[0x277D33E00];
      v184 = v117;
      (*(v84 + 8))(v182, v87);
      (*(v90 + 8))(v116, v89);
      if (v184 != v183 && v184 != *MEMORY[0x277D33E18] && v184 != *MEMORY[0x277D33DE8] && v184 != *MEMORY[0x277D33E10])
      {
        v185 = type metadata accessor for TagFeedRouteModel();
        (*(*(v185 - 8) + 56))(v304, 1, 1, v185);
        return sub_219869D68(v88, &qword_280E90180, MEMORY[0x277D33E20]);
      }

      sub_219869D68(v88, &qword_280E90180, MEMORY[0x277D33E20]);
LABEL_23:
      v83 = type metadata accessor for TagFeedRouteModel();
      v80 = *(*(v83 - 8) + 56);
      v81 = v304;
      v82 = 1;
      return v80(v81, v82, 1, v83);
    }

    if (v73 == *MEMORY[0x277D32DD8])
    {
      (*(v67 + 96))(v72, v66);
      v96 = v277;
      (*(v281 + 32))(v277, v72, v282);
      v97 = v303;
      v98 = (v303 + *((*MEMORY[0x277D85000] & *v303) + 0xA8));
      v99 = __swift_project_boxed_opaque_existential_1(v98, v98[3]);
      v100 = sub_219BF06B4();
      ObjectType = swift_getWitnessTable();
      v101 = v271;
      sub_219BE5FC4();
      sub_219BF1394();
      sub_219869D08(v101, MEMORY[0x277D33320]);
      v102 = sub_219BF04D4();
      v104 = v103;
      (*(v67 + 8))(v69, v66);
      sub_2198587BC(v102, v104, v278);

      v105 = v272;
      v106 = v276;
      v107 = v273;
      (*(v272 + 104))(v276, *MEMORY[0x277D32EB0], v273);
      (*(v105 + 56))(v106, 0, 1, v107);
      v108 = v284;
      sub_219BDE4B4();
      v110 = v300;
      v109 = v301;
      (*(v300 + 56))(v108, 0, 1, v301);
      v111 = *v99;
      v112 = *(*v99 + 16);
      v113 = [objc_msgSend(v100 sourceChannel)];
      swift_unknownObjectRelease();
      if (!v113)
      {
        sub_219BF5414();
        v113 = sub_219BF53D4();
      }

      v114 = [v112 hasMutedSubscriptionForTagID_];

      if (v114)
      {
        v115 = v267;
        sub_219869C88(v284, v267, &unk_280EE8C40, MEMORY[0x277D30018]);
        if ((*(v110 + 48))(v115, 1, v109) == 1)
        {
          sub_219869D68(v115, &unk_280EE8C40, MEMORY[0x277D30018]);
        }

        else
        {
          v153 = v265;
          (*(v110 + 32))(v265, v115, v109);
          if (sub_219BDE4A4())
          {
            __swift_project_boxed_opaque_existential_1((v111 + 24), *(v111 + 48));
            v154 = v278;
            sub_219BDE4C4();
            v155 = v256;
            sub_219BDEA24();
            sub_219869D68(v154, &qword_280EE8D20, MEMORY[0x277D2FD40]);
            v156 = v258;
            v157 = v260;
            if ((*(v258 + 48))(v155, 1, v260) != 1)
            {
              v205 = *(v156 + 32);
              v206 = v249;
              v205(v249, v155, v157);
              v177 = swift_allocObject();
              *(v177 + 40) = v157;
              *(v177 + 48) = sub_2186CC41C(&qword_27CC11940, MEMORY[0x277D2FD50]);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v177 + 16));
              v205(boxed_opaque_existential_1, v206, v157);
              (*(v110 + 8))(v265, v109);
              v179 = 0;
              *(v177 + 56) = 0;
              *(v177 + 64) = 0;
              *(v177 + 72) = v100;
              *(v177 + 80) = v97;
              v178 = 1;
              *(v177 + 88) = ObjectType;
              *(v177 + 96) = 0;
              v100 = 0;
              v180 = 0;
              v96 = v277;
              goto LABEL_53;
            }

            (*(v110 + 8))(v265, v109);
            sub_219869D68(v155, &unk_280EE8D10, MEMORY[0x277D2FD50]);
            v96 = v277;
          }

          else
          {
            (*(v110 + 8))(v153, v109);
          }
        }
      }

      v177 = 0;
      v178 = 0;
      v179 = v97;
      v180 = ObjectType;
LABEL_53:
      swift_unknownObjectRetain();
      sub_219869D68(v284, &unk_280EE8C40, MEMORY[0x277D30018]);
      (*(v281 + 8))(v96, v282);
      v181 = v304;
      *v304 = v177;
      v181[1] = 0;
      v181[2] = v100;
      v181[3] = v179;
      v181[4] = v180;
      *(v181 + 40) = v178;
      v79 = type metadata accessor for TagFeedRouteModel();
      swift_storeEnumTagMultiPayload();
      v80 = *(*(v79 - 8) + 56);
      v81 = v181;
      goto LABEL_6;
    }

    if (v73 == *MEMORY[0x277D32CF8])
    {
LABEL_22:
      (*(v67 + 8))(v72, v66);
      goto LABEL_23;
    }

    if (v73 == *MEMORY[0x277D32DC0])
    {
      (*(v67 + 96))(v72, v66);
      v143 = v263;
      v144 = v262;
      v145 = v264;
      (*(v263 + 32))(v262, v72, v264);
      sub_219BF0404();
      goto LABEL_32;
    }

    if (v73 != *MEMORY[0x277D32CF0])
    {
      if (v73 == *MEMORY[0x277D32E08] || v73 == *MEMORY[0x277D32DB0] || v73 == *MEMORY[0x277D32DE0])
      {
        goto LABEL_22;
      }

      if (v73 == *MEMORY[0x277D32DF0])
      {
        (*(v67 + 96))(v72, v66);
        (*(v252 + 32))(v250, v72, v253);
        v186 = v299;

        v187 = sub_219BE5F84();
        v188 = v298;
        v189 = v238;
        *v238 = v298;
        v189[1] = v186;
        v189[2] = v187;
        v189[3] = v190;
        (*(v236 + 104))(v189, *MEMORY[0x277D2FDC0], v237);
        v191 = sub_219BDD944();
        (*(*(v191 - 8) + 56))(v239, 1, 1, v191);
        v192 = v241;
        sub_219BDDBD4();
        v305 = sub_219BF0AF4();
        v295 = v193;
        v294 = sub_219BF0B44();
        v194 = v242;
        (*(v242 + 16))(v240, v192, v254);
        v195 = v303;
        sub_2198587BC(v188, v186, v278);
        v196 = *(v195 + *((*MEMORY[0x277D85000] & *v195) + 0x78));
        v197 = OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor;
        v198 = *(v196 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
        v199 = v276;
        sub_219BF63B4();

        (*(v272 + 56))(v199, 0, 1, v273);
        v200 = v296;
        sub_219BDE4B4();
        (*(v300 + 56))(v200, 0, 1, v301);
        v201 = *(v196 + v197);
        sub_219BF63B4();

        v202 = v243;
        sub_219BDEB04();
        swift_getWitnessTable();
        v203 = v245;
        sub_219BDE2F4();
        sub_219BDEA04();
        sub_219BDEBC4();

        v204 = sub_219BDE9F4();
        (*(v247 + 8))(v203, v248);
        (*(v244 + 8))(v202, v246);
        (*(v194 + 8))(v192, v254);
        (*(v252 + 8))(v250, v253);
        v146 = v304;
        *v304 = v204;
        v79 = type metadata accessor for TagFeedRouteModel();
        goto LABEL_33;
      }

      if (v73 == *MEMORY[0x277D32D38])
      {
        goto LABEL_22;
      }

      if (v73 == *MEMORY[0x277D32DE8])
      {
        (*(v67 + 96))(v72, v66);
        v209 = v232;
        v210 = v231;
        v211 = v233;
        (*(v232 + 32))(v231, v72, v233);
        v212 = sub_219BF0AA4();
        v213 = v235;
        v214 = *(v235 + 20);
        v215 = sub_219BF24E4();
        v216 = v234;
        (*(*(v215 - 8) + 56))(&v234[v214], 1, 1, v215);
        v217 = sub_219BE5F84();
        v219 = v218;
        (*(v209 + 8))(v210, v211);
        *v216 = v212;
        *(v216 + 8) = 0;
        *(v216 + 16) = 1;
        v220 = (v216 + v213[6]);
        *v220 = v217;
        v220[1] = v219;
        v221 = (v216 + v213[7]);
        v222 = v299;
        *v221 = v298;
        v221[1] = v222;
        v223 = (v216 + v213[8]);
        *v223 = 0;
        v223[1] = 0;
        v224 = v304;
        sub_219867CDC(v216, v304, type metadata accessor for PuzzleModel);
        v225 = type metadata accessor for TagFeedRouteModel();
        swift_storeEnumTagMultiPayload();
        (*(*(v225 - 8) + 56))(v224, 0, 1, v225);
      }

      if (v73 != *MEMORY[0x277D32D18])
      {
        if (v73 != *MEMORY[0x277D32DD0])
        {
          v226 = type metadata accessor for TagFeedRouteModel();
          (*(*(v226 - 8) + 56))(v304, 1, 1, v226);
          return (*(v67 + 8))(v72, v66);
        }

        goto LABEL_23;
      }

      (*(v67 + 96))(v72, v66);
      v143 = v229;
      v144 = v228;
      v145 = v230;
      (*(v229 + 32))(v228, v72, v230);
      sub_219BEDB74();
LABEL_32:
      v146 = v304;
      sub_219BDD644();
      (*(v143 + 8))(v144, v145);
      v79 = type metadata accessor for TagFeedRouteModel();
LABEL_33:
      swift_storeEnumTagMultiPayload();
      v80 = *(*(v79 - 8) + 56);
      v81 = v146;
      goto LABEL_6;
    }

    (*(v67 + 96))(v72, v66);
    v168 = v257;
    v169 = v255;
    v170 = v259;
    (*(v257 + 32))(v255, v72, v259);
    v171 = v261;
    sub_219BEDAD4();
    (*(v168 + 8))(v169, v170);
    v172 = sub_219BF1DA4();
    v173 = *(v172 - 8);
    if ((*(v173 + 48))(v171, 1, v172) != 1)
    {
      v174 = v251;
      sub_219869C88(v171, v251, &qword_280E905C0, MEMORY[0x277D33610]);
      if ((*(v173 + 88))(v174, v172) == *MEMORY[0x277D33608])
      {
        (*(v173 + 96))(v174, v172);
        v175 = v304;
        (*(v274 + 32))(v304, v174, v275);
        v176 = type metadata accessor for TagFeedRouteModel();
        swift_storeEnumTagMultiPayload();
        (*(*(v176 - 8) + 56))(v175, 0, 1, v176);
        return sub_219869D68(v171, &qword_280E905C0, MEMORY[0x277D33610]);
      }

      (*(v173 + 8))(v174, v172);
    }

    v208 = type metadata accessor for TagFeedRouteModel();
    (*(*(v208 - 8) + 56))(v304, 1, 1, v208);
    return sub_219869D68(v171, &qword_280E905C0, MEMORY[0x277D33610]);
  }

  (*(v67 + 96))(v72, v66);
  (*(v63 + 32))(v65, v72, v62);
  (*(v58 + 16))(v286, v305, v57);
  v305 = sub_219BF0F14();
  (*(v300 + 56))(v296, 1, 1, v301);
  v74 = sub_219BDEA34();
  (*(*(v74 - 8) + 56))(v287, 1, 1, v74);
  v75 = *(*(v303 + *((*MEMORY[0x277D85000] & *v303) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
  sub_219BF63B4();

  sub_2191FD45C();
  v76 = v288;
  sub_219BDE794();
  swift_getWitnessTable();
  v77 = v291;
  sub_219BDEB54();
  sub_219BDE734();
  sub_219BDEC64();

  v78 = v304;
  sub_219BDE724();
  (*(v292 + 8))(v77, v293);
  (*(v289 + 8))(v76, v290);
  (*(v63 + 8))(v65, v62);
  v79 = type metadata accessor for TagFeedRouteModel();
  swift_storeEnumTagMultiPayload();
  v80 = *(*(v79 - 8) + 56);
  v81 = v78;
LABEL_6:
  v82 = 0;
  v83 = v79;
  return v80(v81, v82, 1, v83);
}

uint64_t sub_21986027C()
{
  v0 = sub_219BF0644();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  sub_218954408();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE7B04();
  if (v12 >> 62 != 1)
  {
    sub_21880BB00(v12);
    goto LABEL_5;
  }

  v20 = v1;
  v21 = v0;
  sub_219BE6EC4();
  v22 = v23;
  v13 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v13);
  sub_219BE7B94();

  v14 = sub_219759E94();
  (*(v9 + 8))(v11, v8);
  if ((~v14 & 0xF000000000000007) == 0)
  {
LABEL_5:
    v18 = 0;
    return v18 & 1;
  }

  sub_2196A039C(v6);
  type metadata accessor for TagFeedServiceConfig();
  sub_2186F7CA4();
  sub_219BEE844();
  sub_2186CC41C(&unk_280E90EE0, MEMORY[0x277D32F00]);
  v15 = v21;
  v16 = sub_219BF53A4();
  sub_21885AB78(v14);
  v17 = *(v20 + 8);
  v17(v3, v15);
  v17(v6, v15);
  v18 = v16 ^ 1;
  return v18 & 1;
}

uint64_t sub_2198605D8(uint64_t a1, uint64_t a2)
{
  sub_219BE3204();
  v3 = sub_219BE2E54();
  sub_219866BF4(0, &qword_280E91660, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32580]);
  type metadata accessor for TagFeedDataManager();
  sub_219BE2F84();

  sub_2186C6148(0, &qword_280E8E3B0);
  v4 = sub_219BF66A4();
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = swift_allocObject();
  *(v7 + 16) = 0x6D726177657270;
  *(v7 + 24) = 0xE700000000000000;
  v8 = *(a2 + 16);
  *(v7 + 32) = *a2;
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 32);
  v9 = v6;
  v10 = v5;
  sub_219BE2F84();

  v11 = sub_219BE2E54();
  v12 = sub_219BE2F84();

  return v12;
}

uint64_t sub_219860804(uint64_t *a1, void *a2)
{
  v2 = *MEMORY[0x277D85000] & *a2;
  v3 = *a1;
  if (*(*a1 + 16))
  {
    v4 = *(v3 + 48);
    type metadata accessor for TagFeedServiceConfig();
    sub_2186F7CA4();

    if (sub_219BEF394())
    {
      v5 = *(sub_219BEF3E4() + 16);

      if (!v5)
      {
        type metadata accessor for TagFeedInteractor.Errors();
        swift_getWitnessTable();
        swift_allocError();
        swift_willThrow();

        return v4;
      }
    }
  }

  (*(*(v2 + 88) + 8))(v3, *(v2 + 80));
  v6 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v6);
  sub_219BE6E84();
  *(swift_allocObject() + 16) = v3;

  v7 = sub_219BE2E54();
  v4 = sub_219BE2F74();

  return v4;
}

uint64_t sub_219860A88(uint64_t *a1, void *a2)
{
  sub_219866778();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v22 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v20 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v11 = *MEMORY[0x277D85000] & *a2;
  v19[1] = *(a2 + *(v11 + 0xC8));
  v19[2] = *(a2 + *(v11 + 104));
  sub_219BE6EC4();
  v23 = v24;
  v12 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  v19[0] = v13;
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v12);
  sub_219BE7B94();

  type metadata accessor for TagFeedModel(0);
  sub_2186F7410();
  sub_218CF5CE4();
  sub_219BE7AE4();
  v14 = v20;
  (*(v8 + 8))(v10, v20);
  sub_219BE7B14();
  sub_219850FB0();
  v15 = v21;

  sub_219BE6EC4();
  v23 = v24;
  sub_219BE7B94();

  v16 = *(v5 + 56);
  v17 = v22;
  *v22 = v15;
  (*(v8 + 32))(&v17[v16], v10, v14);
  sub_2198668E4(0, &qword_280EE6E68, sub_219866778, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219860DA8(void *a1)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_219BE5314();

  v3 = a1;
  sub_219BE7B14();
  return sub_219860F50(a1);
}

uint64_t sub_219860F50(void *a1)
{
  v2 = v1;
  v4 = sub_219BF1584();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v41 - v7;
  sub_218B0847C();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE66C4();
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v46 = a1;
  v17 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  type metadata accessor for TagFeedInteractor.Errors();
  v18 = MEMORY[0x277D85000];
  if (swift_dynamicCast())
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_2198615A4(*(*(v2 + *((*v18 & *v2) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor));
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = Strong;
        v23 = v43;
        v22 = v44;
        (*(v43 + 16))(v13, v16, v44);
        v24 = (*(v23 + 80) + 24) & ~*(v23 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = v21;
        (*(v23 + 32))(v25 + v24, v13, v22);
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return (*(v23 + 8))(v16, v22);
      }

      else
      {
        swift_unknownObjectRelease();
        return (*(v43 + 8))(v16, v44);
      }
    }
  }

  else
  {
    sub_219BF1B74();
    v26 = v45;
    if ((*(v45 + 48))(v10, 1, v4) == 1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        if (qword_280ECFF68 != -1)
        {
          swift_once();
        }

        v27 = __swift_project_value_buffer(v4, qword_280F61E40);
        v28 = swift_unknownObjectWeakLoadStrong();
        if (v28)
        {
          v29 = v28;
          v30 = v41;
          (*(v26 + 16))(v41, v27, v4);
          v31 = (*(v26 + 80) + 24) & ~*(v26 + 80);
          v32 = swift_allocObject();
          *(v32 + 16) = v29;
          (*(v26 + 32))(v32 + v31, v30, v4);
          swift_unknownObjectRetain();
          sub_219BE3494();

          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v33 = *(v26 + 32);
      v34 = v42;
      v33(v42, v10, v4);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v35 = swift_unknownObjectWeakLoadStrong();
        if (v35)
        {
          v36 = v35;
          v37 = v34;
          v38 = v41;
          (*(v26 + 16))(v41, v37, v4);
          v39 = (*(v26 + 80) + 24) & ~*(v26 + 80);
          v40 = swift_allocObject();
          *(v40 + 16) = v36;
          v33((v40 + v39), v38, v4);
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return (*(v26 + 8))(v37, v4);
        }

        swift_unknownObjectRelease();
      }

      return (*(v26 + 8))(v34, v4);
    }
  }

  return result;
}

void sub_2198615A4(void *a1)
{
  v1 = [a1 alternativeFeedDescriptor];
  if (v1)
  {
    v2 = v1;
    v3 = sub_219861F84(v1);
    v5 = v4;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_219C09BA0;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_2186FC3BC();
    *(v8 + 32) = v3;
    *(v8 + 40) = v5;
    sub_219BF5454();

    sub_219BE66B4();

    v9 = v2;
  }

  else
  {
    [a1 feedConfiguration];
    type metadata accessor for Localized();
    v10 = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_219BE66B4();
    v9 = a1;
  }
}

uint64_t sub_2198618CC()
{
  sub_218954408();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v9[1] = v9[3];
  v5 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v5);
  sub_219BE7B94();

  v6 = off_282A80EA0[0];
  type metadata accessor for TagFeedDataManager();
  v7 = v6(v4);
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_219861AAC(void *a1, void *a2)
{
  (*(*((*MEMORY[0x277D85000] & *a2) + 0x58) + 72))(*a1, *((*MEMORY[0x277D85000] & *a2) + 0x50));
  v2 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v2);
  v3 = sub_219BE6E84();

  return v3;
}

uint64_t sub_219861BF4()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v1 = MEMORY[0x277D83A80];
  *(v0 + 56) = MEMORY[0x277D839F8];
  *(v0 + 64) = v1;
  *(v0 + 32) = v2;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_219861D24()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

uint64_t sub_219861EA8()
{
  v1 = (*(v0 + 16) + *((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xD8));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_218B0699C;

  return MEMORY[0x282192A20](v2, v3);
}

uint64_t sub_219861F84(void *a1)
{
  v2 = [a1 feedConfiguration];
  if (v2 > 6)
  {
    if (v2 == 7 || v2 == 11)
    {
      goto LABEL_8;
    }
  }

  else if (v2 == 4 || v2 == 6)
  {
LABEL_8:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_219BDB5E4();
    goto LABEL_9;
  }

  v3 = [a1 name];
  v4 = sub_219BF5414();
LABEL_9:
  v6 = v4;

  return v6;
}

uint64_t sub_21986220C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v67 = a2;
  v82 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_219BDE294();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x28223BE20](v6);
  v75 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDE744();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  v79 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF0634();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v74 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &unk_280EE8AA0, MEMORY[0x277D30260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = &v65 - v14;
  sub_2198668E4(0, &unk_280E90F00, MEMORY[0x277D32EE8], v12);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v65 - v16;
  sub_2198668E4(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v12);
  MEMORY[0x28223BE20](v18 - 8);
  v66 = &v65 - v19;
  sub_2198668E4(0, &unk_280EE8C40, MEMORY[0x277D30018], v12);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v65 - v21;
  v23 = MEMORY[0x277D32E20];
  sub_2198668E4(0, qword_27CC1E440, MEMORY[0x277D32E20], v12);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v65 - v28;
  v30 = sub_219BF0F34();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BDE7A4();
  v69 = *(v34 - 8);
  v70 = v34;
  v35 = MEMORY[0x28223BE20](v34);
  v68 = &v65 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v33, a1, v30, v35);
  v37 = v67;
  v65 = v29;
  sub_219869C88(v67, v29, qword_27CC1E440, v23);
  sub_219869C88(v37, v26, qword_27CC1E440, v23);
  v38 = sub_219BF0614();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v26, 1, v38) == 1)
  {
    sub_219869D68(v26, qword_27CC1E440, MEMORY[0x277D32E20]);
    v40 = sub_219BF0E44();
    v42 = v41;
  }

  else
  {
    v40 = sub_219BF04D4();
    v42 = v43;
    (*(v39 + 8))(v26, v38);
  }

  sub_2198587BC(v40, v42, v66);

  v44 = *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78));
  v45 = OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor;
  v46 = *(v44 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
  sub_219BF63B4();

  (*(v71 + 56))(v17, 0, 1, v72);
  sub_219BDE4B4();
  v47 = sub_219BDE4D4();
  (*(*(v47 - 8) + 56))(v22, 0, 1, v47);
  v48 = sub_219BDEA34();
  (*(*(v48 - 8) + 56))(v73, 1, 1, v48);
  v49 = *(v44 + v45);
  sub_219BF63B4();

  v50 = v68;
  sub_219BDE784();
  swift_getWitnessTable();
  v52 = v77;
  v51 = v78;
  v53 = v75;
  (*(v77 + 104))(v75, *MEMORY[0x277D2FF08], v78);
  v54 = v79;
  sub_219BDEB64();
  (*(v52 + 8))(v53, v51);
  sub_219BDE734();
  sub_219BDEC64();

  sub_2187B2C48();
  v56 = v55;
  v57 = swift_allocBox();
  v59 = v58;
  v60 = *(v56 + 48);
  sub_2187B2DA0();
  v62 = *(v61 + 48);
  sub_219BDE724();
  v63 = MEMORY[0x277D84F90];
  *(v59 + v62) = MEMORY[0x277D84F90];
  (*(v80 + 8))(v54, v81);
  result = (*(v69 + 8))(v50, v70);
  *(v59 + v60) = v63;
  *v82 = v57 | 2;
  return result;
}

uint64_t sub_219862AB0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v75 = a1;
  v80 = a2;
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &unk_280EE8D10, MEMORY[0x277D2FD50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v67 - v6;
  v7 = sub_219BDDDA4();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7);
  v67 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BDE4D4();
  v81 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v72 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280E90F00, MEMORY[0x277D32EE8], v4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v67 - v11;
  v13 = MEMORY[0x277D32E20];
  sub_2198668E4(0, qword_27CC1E440, MEMORY[0x277D32E20], v4);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v67 - v15;
  sub_2198668E4(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v4);
  MEMORY[0x28223BE20](v17 - 8);
  v68 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - v20;
  sub_2198668E4(0, &unk_280EE8C40, MEMORY[0x277D30018], v4);
  MEMORY[0x28223BE20](v22 - 8);
  v73 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v67 - v25;
  sub_218718690(v3 + *((*MEMORY[0x277D85000] & *v3) + 0xA8), v83);
  v74 = __swift_project_boxed_opaque_existential_1(v83, v83[3]);
  v27 = sub_219BF06B4();
  v28 = sub_219BF0664();
  v77 = v29;
  v78 = v28;
  sub_219869C88(v75, v16, qword_27CC1E440, v13);
  v30 = sub_219BF0614();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v16, 1, v30) == 1)
  {
    sub_219869D68(v16, qword_27CC1E440, MEMORY[0x277D32E20]);
    v32 = sub_219BF0664();
    v34 = v33;
  }

  else
  {
    v32 = sub_219BF04D4();
    v34 = v35;
    (*(v31 + 8))(v16, v30);
  }

  WitnessTable = swift_getWitnessTable();
  sub_2198587BC(v32, v34, v21);

  v37 = *(*(v3 + *((*MEMORY[0x277D85000] & *v3) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
  sub_219BF63B4();

  v38 = sub_219BF0634();
  (*(*(v38 - 8) + 56))(v12, 0, 1, v38);
  sub_219BDE4B4();
  v39 = v81;
  v40 = v79;
  (*(v81 + 56))(v26, 0, 1, v79);
  v41 = *v74;
  v42 = *(*v74 + 16);
  v43 = [objc_msgSend(v27 sourceChannel)];
  swift_unknownObjectRelease();
  if (!v43)
  {
    sub_219BF5414();
    v43 = sub_219BF53D4();
  }

  v44 = [v42 hasMutedSubscriptionForTagID_];

  if (!v44)
  {
    goto LABEL_13;
  }

  v45 = v73;
  sub_219869C88(v26, v73, &unk_280EE8C40, MEMORY[0x277D30018]);
  if ((*(v39 + 48))(v45, 1, v40) == 1)
  {
    v46 = MEMORY[0x277D30018];
    sub_219869D68(v26, &unk_280EE8C40, MEMORY[0x277D30018]);
    v47 = v45;
    v48 = v46;
LABEL_14:
    sub_219869D68(v47, &unk_280EE8C40, v48);
    goto LABEL_15;
  }

  v49 = v72;
  (*(v39 + 32))(v72, v45, v40);
  if ((sub_219BDE4A4() & 1) == 0)
  {
    (*(v39 + 8))(v49, v40);
LABEL_13:
    v48 = MEMORY[0x277D30018];
    v47 = v26;
    goto LABEL_14;
  }

  v75 = WitnessTable;
  v50 = v27;
  __swift_project_boxed_opaque_existential_1((v41 + 24), *(v41 + 48));
  v51 = v68;
  sub_219BDE4C4();
  v52 = v69;
  ObjectType = v50;
  sub_219BDEA24();
  sub_219869D68(v51, &qword_280EE8D20, MEMORY[0x277D2FD40]);
  v54 = v70;
  v53 = v71;
  if ((*(v70 + 48))(v52, 1, v71) != 1)
  {
    v61 = *(v54 + 32);
    v62 = v67;
    v61(v67, v52, v53);
    v63 = swift_allocObject();
    *(v63 + 40) = v53;
    *(v63 + 48) = sub_2186CC41C(&qword_27CC11940, MEMORY[0x277D2FD50]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v63 + 16));
    v61(boxed_opaque_existential_1, v62, v53);
    (*(v81 + 8))(v72, v40);
    sub_219869D68(v26, &unk_280EE8C40, MEMORY[0x277D30018]);
    v56 = 0;
    v65 = v77;
    *(v63 + 56) = v78;
    *(v63 + 64) = v65;
    v66 = v75;
    *(v63 + 72) = ObjectType;
    *(v63 + 80) = v3;
    v55 = 1;
    v58 = v63;
    *(v63 + 88) = v66;
    *(v63 + 96) = 0;
    v57 = 0;
    v27 = 0;
    WitnessTable = 0;
    goto LABEL_16;
  }

  (*(v81 + 8))(v72, v40);
  sub_219869D68(v26, &unk_280EE8C40, MEMORY[0x277D30018]);
  sub_219869D68(v52, &unk_280EE8D10, MEMORY[0x277D2FD50]);
  WitnessTable = v75;
  v27 = ObjectType;
LABEL_15:
  v55 = 0;
  v56 = v3;
  v57 = v77;
  v58 = v78;
LABEL_16:
  v59 = v3;
  __swift_destroy_boxed_opaque_existential_1(v83);
  result = swift_allocObject();
  v82 = v55;
  *(result + 16) = v58;
  *(result + 24) = v57;
  *(result + 32) = v27;
  *(result + 40) = v56;
  *(result + 48) = WitnessTable;
  *(result + 56) = v55;
  *(result + 63) = 0;
  *(result + 61) = 0;
  *(result + 57) = 0;
  *(result + 64) = MEMORY[0x277D84F90];
  *v80 = result | 0x5000000000000000;
  return result;
}

uint64_t sub_219863468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v80 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_219BDEA14();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF0634();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x28223BE20](v9);
  v75 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &unk_280E90F00, MEMORY[0x277D32EE8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v71 = &v58 - v13;
  sub_2198668E4(0, &qword_280EE8D20, MEMORY[0x277D2FD40], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = &v58 - v15;
  sub_2198668E4(0, &unk_280EE8C40, MEMORY[0x277D30018], v11);
  MEMORY[0x28223BE20](v16 - 8);
  v72 = &v58 - v17;
  sub_2198668E4(0, &qword_280EE8E10, MEMORY[0x277D2FB40], v11);
  MEMORY[0x28223BE20](v18 - 8);
  v60 = &v58 - v19;
  v20 = MEMORY[0x277D32E20];
  sub_2198668E4(0, qword_27CC1E440, MEMORY[0x277D32E20], v11);
  MEMORY[0x28223BE20](v21 - 8);
  v61 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  v59 = sub_219BDDED4();
  v26 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v28 = (&v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_219BDDBF4();
  MEMORY[0x28223BE20](v29 - 8);
  v65 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BDEB14();
  v67 = *(v31 - 8);
  v68 = v31;
  MEMORY[0x28223BE20](v31);
  v66 = &v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BF0AF4();
  v63 = v34;
  v64 = v33;
  v62 = sub_219BF0B44();
  v70 = a2;
  sub_219869C88(a2, v25, qword_27CC1E440, v20);
  v35 = sub_219BF0614();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v38 = v37(v25, 1, v35);
  v58 = a1;
  if (v38 == 1)
  {
    sub_219869D68(v25, qword_27CC1E440, MEMORY[0x277D32E20]);
    v39 = sub_219BF0AF4();
    v41 = v40;
  }

  else
  {
    v39 = sub_219BF04D4();
    v41 = v42;
    (*(v36 + 8))(v25, v35);
  }

  *v28 = v39;
  v28[1] = v41;
  (*(v26 + 104))(v28, *MEMORY[0x277D2FDC8], v59);
  v43 = sub_219BDD944();
  (*(*(v43 - 8) + 56))(v60, 1, 1, v43);
  sub_219BDDBD4();
  v44 = v61;
  sub_219869C88(v70, v61, qword_27CC1E440, MEMORY[0x277D32E20]);
  if (v37(v44, 1, v35) == 1)
  {
    sub_219869D68(v44, qword_27CC1E440, MEMORY[0x277D32E20]);
    v45 = sub_219BF0AF4();
    v47 = v46;
  }

  else
  {
    v48 = sub_219BF04D4();
    v47 = v49;
    (*(v36 + 8))(v44, v35);
    v45 = v48;
  }

  sub_2198587BC(v45, v47, v69);

  (*(v73 + 56))(v71, 1, 1, v74);
  v50 = v72;
  sub_219BDE4B4();
  v51 = sub_219BDE4D4();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  v52 = *(*(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
  sub_219BF63B4();

  v53 = v66;
  sub_219BDEB04();
  swift_getWitnessTable();
  v54 = v77;
  sub_219BDE2F4();
  sub_219BDEA04();
  sub_219BDEBC4();

  v55 = swift_allocObject();
  v56 = sub_219BDE9F4();
  (*(v78 + 8))(v54, v79);
  result = (*(v67 + 8))(v53, v68);
  *(v55 + 16) = v56;
  *v80 = v55 | 0x7000000000000004;
  return result;
}

uint64_t sub_219863D54(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = v3;
    sub_218B3CC28(a1, &v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_219863DDC(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v183 = a1;
  v185 = a2;
  v2 = type metadata accessor for PaywallTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v161 = &v154 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v168 = &v154 - v5;
  sub_218A125B4();
  v175 = v6;
  v178 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v165 = &v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v177 = &v154 - v9;
  sub_218954350();
  v186 = v10;
  v174 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v12 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v14 = v13;
  v181 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v180 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219866BF4(0, &qword_280E8D490, sub_218954408, sub_2196AA74C, MEMORY[0x277D84310]);
  v179 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v154 - v17;
  sub_2198668E4(0, &qword_280EE6370, MEMORY[0x277D35050], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v162 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v160 = &v154 - v22;
  MEMORY[0x28223BE20](v23);
  v167 = &v154 - v24;
  MEMORY[0x28223BE20](v25);
  v173 = (&v154 - v26);
  MEMORY[0x28223BE20](v27);
  v170 = &v154 - v28;
  v29 = sub_219BE4864();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v169 = &v154 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v166 = &v154 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v154 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v154 - v38;
  if (qword_280EE5F50 != -1)
  {
    swift_once();
  }

  v40 = sub_219BE5434();
  v41 = __swift_project_value_buffer(v40, qword_280F62598);
  v42 = *(v30 + 16);
  v42(v39, v183, v29);
  v164 = v30 + 16;
  v163 = v42;
  v42(v36, v185, v29);
  v182 = v41;
  v43 = sub_219BE5414();
  v44 = sub_219BF6214();
  v45 = os_log_type_enabled(v43, v44);
  v184 = v29;
  v176 = v30;
  if (v45)
  {
    v158 = v44;
    v159 = v43;
    v172 = v36;
    v46 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v187 = v157;
    v171 = v46;
    *v46 = 136315394;
    v47 = v170;
    sub_219BE47F4();
    v48 = sub_219BE4304();
    v49 = *(v48 - 8);
    v156 = *(v49 + 48);
    v50 = v156(v47, 1, v48);
    v155 = v49;
    if (v50 == 1)
    {
      sub_219869D68(v47, &qword_280EE6370, MEMORY[0x277D35050]);
      v51 = 0;
      v52 = 0;
    }

    else
    {
      v51 = sub_219BE42F4();
      v52 = v54;
      (*(v49 + 8))(v47, v48);
    }

    v188 = v51;
    v189 = v52;
    sub_2186D0DDC(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v170 = v55;
    v56 = sub_219BF5484();
    v58 = v57;
    v59 = *(v176 + 8);
    v59(v39, v184);
    v60 = sub_2186D1058(v56, v58, &v187);

    v61 = v171;
    *(v171 + 1) = v60;
    *(v61 + 6) = 2080;
    v62 = v173;
    sub_219BE47F4();
    if (v156(v62, 1, v48) == 1)
    {
      sub_219869D68(v62, &qword_280EE6370, MEMORY[0x277D35050]);
      v63 = 0;
      v64 = 0;
    }

    else
    {
      v63 = sub_219BE42F4();
      v64 = v65;
      (*(v155 + 8))(v62, v48);
    }

    v188 = v63;
    v189 = v64;
    v66 = sub_219BF5484();
    v68 = v67;
    v173 = v59;
    v59(v172, v184);
    v69 = sub_2186D1058(v66, v68, &v187);

    v70 = v171;
    *(v171 + 14) = v69;
    v71 = v159;
    _os_log_impl(&dword_2186C1000, v159, v158, "Tag feed check for paywall for best offer did change from=%s to=%s", v70, 0x16u);
    v72 = v157;
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v72, -1, -1);
    MEMORY[0x21CECF960](v70, -1, -1);
  }

  else
  {

    v53 = *(v30 + 8);
    v53(v36, v29);
    v173 = v53;
    v53(v39, v29);
  }

  sub_219BE6EC4();
  v187 = v188;
  v73 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v73);
  v74 = v180;
  sub_219BE7B94();

  v75 = v181;
  (*(v181 + 16))(v18, v74, v14);
  v76 = *(v179 + 36);
  sub_2196AA74C();
  sub_219BF5DF4();
  (*(v75 + 8))(v74, v14);
  sub_219BF5E84();
  if (*&v18[v76] != v188)
  {
    v77 = (v174 + 16);
    v78 = (v174 + 8);
    while (1)
    {
      v79 = sub_219BF5EC4();
      v80 = v186;
      (*v77)(v12);
      v79(&v188, 0);
      sub_219BF5E94();
      sub_219BE6934();
      (*v78)(v12, v80);
      if (((v188 >> 58) & 0x3C | (v188 >> 1) & 3) == 7)
      {
        break;
      }

      sub_219BF5E84();
      if (*&v18[v76] == v188)
      {
        goto LABEL_16;
      }
    }

    v84 = swift_projectBox();
    v85 = *(v178 + 16);
    v86 = v175;
    v85(v177, v84, v175);

    v87 = v168;
    sub_219BEDE64();
    v89 = *(v87 + 16);
    v88 = *(v87 + 24);

    sub_219869D08(v87, type metadata accessor for PaywallTagFeedGroup);
    v90 = v167;
    sub_219BE47F4();
    v91 = sub_219BE4304();
    v92 = *(v91 - 8);
    v93 = *(v92 + 48);
    v180 = (v92 + 48);
    v186 = v93;
    v94 = v93(v90, 1, v91);
    v181 = v92;
    if (v94 == 1)
    {
      sub_219869D68(v90, &qword_280EE6370, MEMORY[0x277D35050]);

      v95 = v91;
LABEL_21:
      v96 = v165;
      v85(v165, v177, v86);
      v97 = v166;
      v98 = v184;
      v99 = v163;
      v163(v166, v183, v184);
      v100 = v169;
      v99(v169, v185, v98);
      v101 = sub_219BE5414();
      v102 = sub_219BF6214();
      if (os_log_type_enabled(v101, v102))
      {
        LODWORD(v183) = v102;
        v103 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v187 = v182;
        *v103 = 136315650;
        v104 = v161;
        sub_219BEDE64();
        v185 = *(v178 + 8);
        v185(v96, v86);
        v105 = *(v104 + 16);
        v106 = *(v104 + 24);

        sub_219869D08(v104, type metadata accessor for PaywallTagFeedGroup);
        v107 = sub_2186D1058(v105, v106, &v187);

        *(v103 + 4) = v107;
        *(v103 + 12) = 2080;
        v108 = v160;
        sub_219BE47F4();
        if (v186(v108, 1, v95) == 1)
        {
          sub_219869D68(v108, &qword_280EE6370, MEMORY[0x277D35050]);
          v109 = 0;
          v110 = 0;
        }

        else
        {
          v109 = sub_219BE42F4();
          v110 = v120;
          (*(v181 + 8))(v108, v95);
        }

        v188 = v109;
        v189 = v110;
        sub_2186D0DDC(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        v121 = sub_219BF5484();
        v123 = v122;
        v173(v166, v184);
        v124 = sub_2186D1058(v121, v123, &v187);

        *(v103 + 14) = v124;
        *(v103 + 22) = 2080;
        v125 = v162;
        sub_219BE47F4();
        if (v186(v125, 1, v95) == 1)
        {
          sub_219869D68(v125, &qword_280EE6370, MEMORY[0x277D35050]);
          v126 = 0;
          v127 = 0;
        }

        else
        {
          v126 = sub_219BE42F4();
          v128 = v125;
          v127 = v129;
          (*(v181 + 8))(v128, v95);
        }

        v115 = v185;
        v188 = v126;
        v189 = v127;
        v130 = sub_219BF5484();
        v132 = v131;
        v173(v169, v184);
        v133 = sub_2186D1058(v130, v132, &v187);

        *(v103 + 24) = v133;
        _os_log_impl(&dword_2186C1000, v101, v183, "Tag feed request reload for best offer did change, loaded=%s from=%s to=%s", v103, 0x20u);
        v134 = v182;
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v134, -1, -1);
        MEMORY[0x21CECF960](v103, -1, -1);

        v86 = v175;
      }

      else
      {

        v114 = v173;
        v173(v100, v98);
        v114(v97, v98);
        v115 = *(v178 + 8);
        v115(v96, v86);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v136 = Strong;
        v137 = swift_unknownObjectWeakLoadStrong();
        if (v137)
        {
          v138 = v137;
          sub_219BE86E4();
          v139 = objc_allocWithZone(sub_219BE9274());
          v140 = sub_219BE9254();
          v141 = *&v138[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
          v142 = [v138 view];
          if (v142)
          {
            v143 = v142;
            [v142 bounds];
            v145 = v144;
            v147 = v146;
            v149 = v148;
            v151 = v150;

            v188 = v140;
            v189 = v141;
            v190 = v145;
            v191 = v147;
            v192 = v149;
            v193 = v151;
            v152 = *(v136 + 40);
            ObjectType = swift_getObjectType();
            (*(v152 + 104))(&v188, ObjectType, v152);
            swift_unknownObjectRelease();

            v115(v177, v175);
            sub_219866C74(v18, &qword_280E8D490, sub_218954408, sub_2196AA74C);
            swift_unknownObjectRelease();
          }

          else
          {
            __break(1u);
          }

          return;
        }

        swift_unknownObjectRelease();
      }

      v115(v177, v86);
LABEL_43:
      sub_219866C74(v18, &qword_280E8D490, sub_218954408, sub_2196AA74C);
      return;
    }

    v111 = sub_219BE42F4();
    v113 = v112;
    (*(v92 + 8))(v90, v91);
    v95 = v91;
    if (v89 == v111 && v88 == v113)
    {

      v86 = v175;
    }

    else
    {
      v116 = sub_219BF78F4();

      v86 = v175;
      if ((v116 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v117 = sub_219BE5414();
    v118 = sub_219BF6214();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_2186C1000, v117, v118, "Tag feed best offer did change but is already loaded in the feed, will skip reload", v119, 2u);
      MEMORY[0x21CECF960](v119, -1, -1);
    }

    (*(v178 + 8))(v177, v86);
    goto LABEL_43;
  }

LABEL_16:
  sub_219866C74(v18, &qword_280E8D490, sub_218954408, sub_2196AA74C);
  v81 = sub_219BE5414();
  v82 = sub_219BF6214();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_2186C1000, v81, v82, "Tag feed check for paywall best offer did change did not find a paywall loaded in the feed; skipping reload", v83, 2u);
    MEMORY[0x21CECF960](v83, -1, -1);
  }
}

void sub_219865278(uint64_t a1)
{
  v2 = type metadata accessor for PaywallTagFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v130 = &v125 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v137 = &v125 - v5;
  sub_218A125B4();
  v139 = v6;
  v145 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v133 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v144 = &v125 - v9;
  sub_218954350();
  v11 = v10;
  v141 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v15 = v14;
  v148 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v147 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219866BF4(0, &qword_280E8D490, sub_218954408, sub_2196AA74C, MEMORY[0x277D84310]);
  v146 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v125 - v18;
  sub_2198668E4(0, &qword_280EE6370, MEMORY[0x277D35050], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8);
  v129 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v136 = &v125 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v125 - v25;
  v27 = sub_219BE4864();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v135 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v125 - v31;
  if (qword_280EE5F50 != -1)
  {
    swift_once();
  }

  v33 = sub_219BE5434();
  v34 = __swift_project_value_buffer(v33, qword_280F62598);
  v35 = *(v28 + 16);
  v132 = v28 + 16;
  v131 = v35;
  v35(v32, a1, v27);
  v149 = v34;
  v36 = sub_219BE5414();
  v140 = sub_219BF6214();
  v37 = os_log_type_enabled(v36, v140);
  v138 = a1;
  v142 = v27;
  v143 = v28;
  if (v37)
  {
    v128 = v36;
    v38 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v150 = v126;
    v127 = v38;
    *v38 = 136315138;
    sub_219BE47F4();
    v39 = sub_219BE4304();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v26, 1, v39) == 1)
    {
      sub_219869D68(v26, &qword_280EE6370, MEMORY[0x277D35050]);
      v41 = 0;
      v42 = 0;
    }

    else
    {
      v41 = sub_219BE42F4();
      v42 = v43;
      (*(v40 + 8))(v26, v39);
    }

    v151 = v41;
    v152 = v42;
    sub_2186D0DDC(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v44 = sub_219BF5484();
    v46 = v45;
    v134 = *(v143 + 8);
    v134(v32, v142);
    v47 = sub_2186D1058(v44, v46, &v150);

    v48 = v127;
    *(v127 + 1) = v47;
    v49 = v128;
    _os_log_impl(&dword_2186C1000, v128, v140, "Tag feed check for paywall for did obtain offer offer=%s", v48, 0xCu);
    v50 = v126;
    __swift_destroy_boxed_opaque_existential_1(v126);
    MEMORY[0x21CECF960](v50, -1, -1);
    MEMORY[0x21CECF960](v48, -1, -1);
  }

  else
  {

    v134 = *(v28 + 8);
    v134(v32, v27);
  }

  sub_219BE6EC4();
  v150 = v151;
  v51 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v51);
  v52 = v147;
  sub_219BE7B94();

  v53 = v148;
  (*(v148 + 16))(v19, v52, v15);
  v54 = *(v146 + 36);
  sub_2196AA74C();
  sub_219BF5DF4();
  (*(v53 + 8))(v52, v15);
  sub_219BF5E84();
  if (*&v19[v54] != v151)
  {
    v55 = (v141 + 16);
    v56 = (v141 + 8);
    while (1)
    {
      v57 = sub_219BF5EC4();
      (*v55)(v13);
      v57(&v151, 0);
      sub_219BF5E94();
      sub_219BE6934();
      (*v56)(v13, v11);
      if (((v151 >> 58) & 0x3C | (v151 >> 1) & 3) == 7)
      {
        break;
      }

      sub_219BF5E84();
      if (*&v19[v54] == v151)
      {
        goto LABEL_13;
      }
    }

    v61 = swift_projectBox();
    v62 = v139;
    v148 = *(v145 + 16);
    (v148)(v144, v61, v139);

    v63 = v137;
    sub_219BEDE64();
    v65 = *(v63 + 16);
    v64 = *(v63 + 24);

    sub_219869D08(v63, type metadata accessor for PaywallTagFeedGroup);
    v66 = v136;
    v67 = v138;
    sub_219BE47F4();
    v68 = sub_219BE4304();
    v69 = *(v68 - 8);
    v147 = *(v69 + 48);
    v70 = (v147)(v66, 1, v68);
    v146 = v69;
    if (v70 == 1)
    {
      sub_219869D68(v66, &qword_280EE6370, MEMORY[0x277D35050]);

      v71 = v68;
LABEL_18:
      v72 = v133;
      (v148)(v133, v144, v62);
      v73 = v135;
      v74 = v62;
      v75 = v142;
      v131(v135, v67, v142);
      v76 = sub_219BE5414();
      v77 = sub_219BF6214();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = v72;
        v79 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v150 = v148;
        *v79 = 136315394;
        v80 = v130;
        sub_219BEDE64();
        v149 = *(v145 + 8);
        v149(v78, v74);
        v81 = *(v80 + 2);
        v82 = *(v80 + 3);

        v83 = v80;
        v84 = v135;
        sub_219869D08(v83, type metadata accessor for PaywallTagFeedGroup);
        v85 = sub_2186D1058(v81, v82, &v150);

        *(v79 + 4) = v85;
        *(v79 + 12) = 2080;
        v86 = v129;
        sub_219BE47F4();
        if ((v147)(v86, 1, v71) == 1)
        {
          sub_219869D68(v86, &qword_280EE6370, MEMORY[0x277D35050]);
          v87 = 0;
          v88 = 0;
        }

        else
        {
          v87 = sub_219BE42F4();
          v99 = v86;
          v88 = v100;
          (*(v146 + 8))(v99, v71);
        }

        v151 = v87;
        v152 = v88;
        sub_2186D0DDC(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        v101 = sub_219BF5484();
        v103 = v102;
        v134(v84, v75);
        v104 = sub_2186D1058(v101, v103, &v150);

        *(v79 + 14) = v104;
        _os_log_impl(&dword_2186C1000, v76, v77, "Tag feed request reload for did obtain offer, loaded=%s, offer=%s", v79, 0x16u);
        v105 = v148;
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v105, -1, -1);
        MEMORY[0x21CECF960](v79, -1, -1);

        v74 = v139;
        v94 = v149;
      }

      else
      {

        v134(v73, v75);
        v94 = *(v145 + 8);
        v94(v72, v74);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v107 = Strong;
        v108 = swift_unknownObjectWeakLoadStrong();
        if (v108)
        {
          v109 = v108;
          sub_219BE86E4();
          v110 = objc_allocWithZone(sub_219BE9274());
          v111 = sub_219BE9254();
          v112 = *&v109[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
          v113 = [v109 view];
          if (v113)
          {
            v114 = v113;
            [v113 bounds];
            v116 = v115;
            v118 = v117;
            v120 = v119;
            v122 = v121;

            v151 = v111;
            v152 = v112;
            v153 = v116;
            v154 = v118;
            v155 = v120;
            v156 = v122;
            v123 = *(v107 + 40);
            ObjectType = swift_getObjectType();
            (*(v123 + 104))(&v151, ObjectType, v123);
            swift_unknownObjectRelease();

            v94(v144, v74);
            sub_219866C74(v19, &qword_280E8D490, sub_218954408, sub_2196AA74C);
            swift_unknownObjectRelease();
          }

          else
          {
            __break(1u);
          }

          return;
        }

        swift_unknownObjectRelease();
      }

      v94(v144, v74);
LABEL_37:
      sub_219866C74(v19, &qword_280E8D490, sub_218954408, sub_2196AA74C);
      return;
    }

    v89 = sub_219BE42F4();
    v90 = v66;
    v91 = v89;
    v93 = v92;
    (*(v69 + 8))(v90, v68);
    v71 = v68;
    if (v65 == v91 && v64 == v93)
    {
    }

    else
    {
      v95 = sub_219BF78F4();

      v67 = v138;
      if ((v95 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v96 = sub_219BE5414();
    v97 = sub_219BF6214();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_2186C1000, v96, v97, "Tag feed did obtain offer but is already loaded in the feed, will skip reload", v98, 2u);
      MEMORY[0x21CECF960](v98, -1, -1);
    }

    (*(v145 + 8))(v144, v62);
    goto LABEL_37;
  }

LABEL_13:
  sub_219866C74(v19, &qword_280E8D490, sub_218954408, sub_2196AA74C);
  v58 = sub_219BE5414();
  v59 = sub_219BF6214();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_2186C1000, v58, v59, "Tag feed check for paywall for did obtain offer did not find a paywall loaded in the feed; skipping reload", v60, 2u);
    MEMORY[0x21CECF960](v60, -1, -1);
  }
}

void sub_219866398()
{
  if (sub_21986027C())
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_219C09BA0;
    v2 = [*(*(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor) identifier];
    v3 = sub_219BF5414();
    v5 = v4;

    *(v1 + 56) = MEMORY[0x277D837D0];
    *(v1 + 64) = sub_2186FC3BC();
    *(v1 + 32) = v3;
    *(v1 + 40) = v5;
    sub_219BF6214();
    sub_219BE5314();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        sub_219BE86E4();
        v10 = objc_allocWithZone(sub_219BE9274());
        v24 = sub_219BE9254();
        v11 = *&v9[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
        v12 = [v9 view];
        if (v12)
        {
          v13 = v12;
          [v12 bounds];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;

          v25[0] = v24;
          v25[1] = v11;
          v25[2] = v15;
          v25[3] = v17;
          v25[4] = v19;
          v25[5] = v21;
          v22 = *(v7 + 40);
          ObjectType = swift_getObjectType();
          (*(v22 + 104))(v25, ObjectType, v22);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_219866778()
{
  if (!qword_280ECCBA8[0])
  {
    sub_218954408();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_280ECCBA8);
    }
  }
}

void sub_219866854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_218CF5CE4();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2198668E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_7Tm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_219866A14(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

void sub_219866A94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedLayoutSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedLayoutModel();
    v8[2] = sub_218B58A80();
    v8[3] = sub_2186CC41C(&unk_280ED2750, type metadata accessor for TagFeedLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219866B54(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_219866854(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_219866BF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_219866C74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  sub_219866BF4(0, a2, a3, a4, MEMORY[0x277D84310]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t objectdestroy_28Tm_1()
{

  return swift_deallocObject();
}

void sub_219866F58(uint64_t a1, void *a2, char *a3)
{
  v6 = *&a3[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
  v7 = [sub_219BF6394() isFoodHub];
  swift_unknownObjectRelease();
  if (v7)
  {
    goto LABEL_6;
  }

  v8 = [sub_219BF6394() isRecipeCatalog];
  swift_unknownObjectRelease();
  if (v8)
  {
    goto LABEL_6;
  }

  v9 = [a2 bundleChannelIDs];
  v10 = [v6 backingChannelID];
  if (!v10)
  {
    sub_219BF5414();
    v10 = sub_219BF53D4();
  }

  v11 = [v9 containsObject_];

  if (v11)
  {
LABEL_6:
    sub_219BE86E4();
    v12 = objc_allocWithZone(sub_219BE9274());
    v26 = sub_219BE9254();
    v13 = v6;
    v14 = [a3 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v27[0] = v26;
      v27[1] = v13;
      v27[2] = v17;
      v27[3] = v19;
      v27[4] = v21;
      v27[5] = v23;
      v24 = *(a1 + 40);
      ObjectType = swift_getObjectType();
      (*(v24 + 104))(v27, ObjectType, v24);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_219867178(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *&a3[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
  v7 = [v6 backingChannelID];
  v8 = sub_219BF5414();
  v10 = v9;

  v27 = v8;
  v28 = v10;
  v26[2] = &v27;
  LOBYTE(a2) = sub_2186D128C(sub_2186D1338, v26, a2);

  if (a2)
  {
    sub_219BE86E4();
    v11 = objc_allocWithZone(sub_219BE9274());
    v12 = sub_219BE9254();
    v13 = v6;
    v14 = [a3 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v27 = v12;
      v28 = v13;
      v29 = v17;
      v30 = v19;
      v31 = v21;
      v32 = v23;
      v24 = *(a1 + 40);
      ObjectType = swift_getObjectType();
      (*(v24 + 104))(&v27, ObjectType, v24);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_219867310()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      sub_219BE86E4();
      v4 = objc_allocWithZone(sub_219BE9274());
      v18 = sub_219BE9254();
      v5 = *&v3[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
      v6 = [v3 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        v19[0] = v18;
        v19[1] = v5;
        v19[2] = v9;
        v19[3] = v11;
        v19[4] = v13;
        v19[5] = v15;
        v16 = *(v1 + 40);
        ObjectType = swift_getObjectType();
        (*(v16 + 104))(v19, ObjectType, v16);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2198674E4(uint64_t a1, int a2)
{
  v28 = a2;
  v25 = a1;
  v2 = sub_219BEFAD4();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE93C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  sub_219BE8674();
  v11 = *(v5 + 104);
  v11(v8, *MEMORY[0x277D6E578], v4);
  v12 = sub_219BE93B4();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  if (v12 & 1) != 0 || (sub_219BE8674(), v11(v8, *MEMORY[0x277D6E570], v4), v14 = sub_219BE93B4(), v13(v8, v4), v13(v10, v4), (v14))
  {
    sub_219BE8664();
    v15 = sub_219BE7BC4();

    v16 = sub_219BF60A4();

    if (v28)
    {
      if (v16)
      {
        v18 = v26;
        v17 = v27;
        v19 = v24;
        (*(v26 + 104))(v24, *MEMORY[0x277D328C8], v27);
        v20 = *(v25 + 40);
        ObjectType = swift_getObjectType();
        (*(v20 + 112))(v19, ObjectType, v20);
        return (*(v18 + 8))(v19, v17);
      }

      goto LABEL_7;
    }

LABEL_8:
    v30 = 3;
    return sub_219BE1E74();
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  v29 = 2;
  return sub_219BE1E74();
}

uint64_t sub_2198678EC(uint64_t a1, void *a2)
{
  v5 = *(sub_219BEE644() - 8);
  v6 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_21984F58C(a1, a2, v6);
}

uint64_t sub_2198679F0()
{
  sub_219BEE644();

  return sub_21984FC00();
}

uint64_t sub_219867A54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_219861E88(a1, v4, v5, v6);
}

void sub_219867B08(uint64_t a1)
{
  v3 = *(sub_219BE9F74() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_219853908(a1, v8, v9, v10, v11, v1 + v4, v12);
}

void sub_219867BD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_2186C6148(255, &qword_280E8E560);
    a4();
    a5();
    v8 = sub_219BF0854();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_219867C88()
{
  result = qword_27CC20060;
  if (!qword_27CC20060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20060);
  }

  return result;
}

uint64_t sub_219867CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219867D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219867E00(uint64_t *a1, void *a2)
{
  sub_21898BF70();
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for TagFeedGapLocation(0) - 8);
  return sub_219852884(a1, a2, v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
}

uint64_t sub_219867F00(uint64_t a1, void *a2)
{
  sub_21898BF70();
  v6 = (*(*(v5 - 8) + 80) + 72) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for TagFeedGapLocation(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_219852FA8(a1, a2, (v2 + 32), v2 + v6, v9);
}

void sub_219867FE8()
{
  if (!qword_280E91650)
  {
    sub_219866BF4(255, &qword_280E91660, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32580]);
    sub_219BF0644();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E91650);
    }
  }
}

unint64_t sub_2198680A8()
{
  result = qword_27CC20070;
  if (!qword_27CC20070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20070);
  }

  return result;
}

uint64_t sub_2198680FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v58 = a4;
  v59 = a5;
  v55 = a3;
  v49 = a2;
  v7 = MEMORY[0x277D83D88];
  sub_2198668E4(0, &qword_280EE3450, MEMORY[0x277D2D430], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v46 - v9;
  v10 = sub_219BEBE64();
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x28223BE20](v10);
  v54 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v50 = &v46 - v13;
  v14 = sub_219BE16D4();
  v51 = *(v14 - 8);
  v52 = v14;
  MEMORY[0x28223BE20](v14);
  v48 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, v7);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v46 - v17;
  sub_218954350();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x277D85000];
  sub_219BDEBD4();
  sub_219BEB244();
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    (*(v26 + 8))(v28, v25);
    return sub_219869D68(v18, &unk_280EE5830, sub_218954350);
  }

  else
  {
    v46 = v21;
    v47 = v26;
    v59 = v25;
    (*(v21 + 32))(v23, v18, v20);
    v31 = (v6 + *((*v29 & *v6) + 0xE0));
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v58 = v20;
    sub_219BE6944();
    type metadata accessor for TagFeedModel(0);
    sub_2186F7410();
    sub_218CF5CE4();
    v32 = sub_219BF00E4();

    v33 = v50;
    sub_2190600D0(v32, 0, v50);
    v35 = v51;
    v34 = v52;
    v36 = v23;
    if ((*(v51 + 48))(v33, 1, v52) == 1)
    {
      sub_219869D68(v33, &unk_280EE7FA0, MEMORY[0x277D2F590]);
    }

    else
    {
      v37 = v48;
      (*(v35 + 32))(v48, v33, v34);
      sub_2186CC41C(&unk_280EE7FB0, MEMORY[0x277D2F590]);
      sub_219BDD1F4();
      (*(v35 + 8))(v37, v34);
    }

    v39 = v56;
    v38 = v57;
    v40 = v53;
    v41 = v54;
    v42 = v59;
    v43 = v47;
    sub_2198680A8();
    sub_219BEB274();
    v44 = (*(v39 + 48))(v40, 1, v38);
    v45 = v55;
    if (v44 == 1)
    {
      (*(v46 + 8))(v36, v58);
      (*(v43 + 8))(v28, v42);
      return sub_219869D68(v40, &qword_280EE3450, MEMORY[0x277D2D430]);
    }

    else
    {
      (*(v39 + 32))(v41, v40, v38);
      sub_219717458(v45, v60);
      if (v61)
      {
        __swift_project_boxed_opaque_existential_1(v60, v61);
        sub_2186CC41C(&unk_280EE3458, MEMORY[0x277D2D430]);
        sub_219BEC144();
        (*(v39 + 8))(v41, v38);
        (*(v46 + 8))(v36, v58);
        (*(v43 + 8))(v28, v42);
        return __swift_destroy_boxed_opaque_existential_1(v60);
      }

      else
      {
        (*(v39 + 8))(v41, v38);
        (*(v46 + 8))(v36, v58);
        (*(v43 + 8))(v28, v42);
        return sub_219308EE0(v60);
      }
    }
  }
}

void sub_2198688EC(uint64_t a1)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  v3 = [v2 indexPathsForVisibleItems];

  sub_219BDC104();
  v4 = sub_219BF5924();

  LOBYTE(v3) = sub_2190890C0(a1, v4);

  if ((v3 & 1) == 0)
  {
    sub_219BE8664();
    v5 = sub_219BE7BC4();

    v6 = sub_219BDC094();
    [v5 scrollToItemAtIndexPath:v6 atScrollPosition:2 animated:0];
  }
}

uint64_t sub_219868A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v7 = *((*MEMORY[0x277D85000] & *v4) + 0x50);
  (*(v6 + 64))(a1, a2, a3, a4, v7, v6);
  v8 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v8);
  sub_219BE6EF4();
  (*(v6 + 56))(a1, a2, a3, a4, v7, v6);
  sub_219BE6EF4();
}

void sub_219868BCC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      sub_219BE86E4();
      v4 = objc_allocWithZone(sub_219BE9274());
      v18 = sub_219BE9254();
      v5 = *&v3[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor];
      v6 = [v3 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        v19[0] = v18;
        v19[1] = v5;
        v19[2] = v9;
        v19[3] = v11;
        v19[4] = v13;
        v19[5] = v15;
        v16 = *(v1 + 40);
        ObjectType = swift_getObjectType();
        (*(v16 + 96))(v19, ObjectType, v16);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_219868DA0(uint64_t a1, uint64_t a2)
{
  (*(*((*MEMORY[0x277D85000] & *v2) + 0x58) + 48))(a1, a2, *((*MEMORY[0x277D85000] & *v2) + 0x50));
  v3 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v3);
  sub_219BE6EF4();
}

uint64_t sub_219868EDC(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v3 = sub_219BE8C14();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF4B24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDE294();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_27CC20068, type metadata accessor for TagFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v33 - v14);
  v39 = type metadata accessor for TagFeedRouteModel();
  v16 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v35 = (&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_219BF4B14();
  v19 = v18;
  v33 = a2;
  sub_219BF4B34();
  v20 = (*(v6 + 88))(v8, v5);
  if (v20 == *MEMORY[0x277D345E0])
  {
    (*(v6 + 96))(v8, v5);
    (*(v36 + 8))(v8, v37);
    goto LABEL_3;
  }

  if (v20 == *MEMORY[0x277D345D0])
  {
    v21 = MEMORY[0x277D2FEF8];
    goto LABEL_6;
  }

  if (v20 == *MEMORY[0x277D345D8])
  {
LABEL_3:
    v21 = MEMORY[0x277D2FF08];
LABEL_6:
    (*(v10 + 104))(v12, *v21, v9);
    goto LABEL_7;
  }

  (*(v10 + 104))(v12, *MEMORY[0x277D2FF08], v9);
  (*(v6 + 8))(v8, v5);
LABEL_7:
  sub_21985D4F0(v40, v38, v19, v12, v15);

  (*(v10 + 8))(v12, v9);
  if ((*(v16 + 48))(v15, 1, v39) == 1)
  {
    return sub_219869D68(v15, &qword_27CC20068, type metadata accessor for TagFeedRouteModel);
  }

  v23 = v35;
  sub_219867CDC(v15, v35, type metadata accessor for TagFeedRouteModel);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_219869D08(v23, type metadata accessor for TagFeedRouteModel);
  }

  v25 = Strong;
  v26 = v34;
  sub_219BF4B44();
  v27 = sub_219BF4B14();
  v29 = v28;
  sub_219866BF4(0, &qword_280EE5B40, MEMORY[0x277D33320], sub_2191FD45C, MEMORY[0x277D6D3F0]);
  v30 = sub_219BE5F84();
  v32 = v31;
  __swift_project_boxed_opaque_existential_1((v25 + 48), *(v25 + 72));
  v41[0] = v27;
  v41[1] = v29;
  v41[2] = v30;
  v41[3] = v32;
  v42 = 2;
  sub_218E40BA4(v23, v26, v41);
  (*(v36 + 8))(v26, v37);
  sub_219869D08(v23, type metadata accessor for TagFeedRouteModel);

  return swift_unknownObjectRelease();
}

uint64_t sub_219869480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_219BDE294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198668E4(0, &qword_27CC20068, type metadata accessor for TagFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v20 - v10);
  v12 = type metadata accessor for TagFeedRouteModel();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277D2FF08], v5, v14);
  sub_21985D4F0(a1, a2, v21, v8, v11);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_219869D68(v11, &qword_27CC20068, type metadata accessor for TagFeedRouteModel);
  }

  else
  {
    sub_219867CDC(v11, v16, type metadata accessor for TagFeedRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      v18 = sub_218E457F8(v16);
      sub_219869D08(v16, type metadata accessor for TagFeedRouteModel);
      swift_unknownObjectRelease();
      return v18;
    }

    sub_219869D08(v16, type metadata accessor for TagFeedRouteModel);
  }

  return 0;
}

uint64_t sub_219869790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  sub_2198668E4(0, &unk_280EE5830, sub_218954350, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v29 - v6;
  sub_218954350();
  v9 = v8;
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v31 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v12 = v11;
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF0894();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v29 - v20;
  sub_219BEDF44();
  if ((*(v16 + 88))(v21, v15) == *MEMORY[0x277D32F88])
  {
    v30 = v9;
    (*(v16 + 16))(v18, v21, v15);
    (*(v16 + 96))(v18, v15);
    v22 = sub_219BF13B4();
    v23 = *(v22 - 8);
    if ((*(v23 + 88))(v18, v22) == *MEMORY[0x277D33330])
    {
      sub_219BE6EC4();
      v36 = v37;
      v24 = MEMORY[0x277D6D8B8];
      sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
      v29[1] = v4;
      sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v24);
      sub_219BE7B94();

      sub_219BEB244();
      v25 = v33;
      v26 = v30;
      if ((*(v33 + 48))(v7, 1, v30) == 1)
      {
        (*(v32 + 8))(v14, v12);
        sub_219869D68(v7, &unk_280EE5830, sub_218954350);
      }

      else
      {
        v27 = v31;
        (*(v25 + 32))(v31, v7, v26);
        sub_219857580();
        (*(v25 + 8))(v27, v26);
        (*(v32 + 8))(v14, v12);
      }
    }

    else
    {
      (*(v23 + 8))(v18, v22);
    }
  }

  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_219869C88(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2198668E4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219869D08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219869D68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2198668E4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219869E90(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v38 = a3;
  v39 = a2;
  sub_21986D4D4(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v37 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  sub_21986D4D4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = *(v10 + 16);
  v35 = a1;
  v36 = v15;
  v34 = v14;
  (v14)(v13, a1, v11);
  v16 = *(*v3 + 16);
  if (v16)
  {
    v17 = (*v3 + 40);
    do
    {
      v19 = *v17;
      v20 = v19 >> 6;
      if (v19 >> 6 > 1)
      {
        if (v20 == 2)
        {

          sub_21986B604(v18, v19 & 0x3F, v13);
        }

        else
        {

          sub_21986C10C(v22, v19 & 0x3F, v13);
        }
      }

      else
      {
        if (v20)
        {
          goto LABEL_5;
        }

        sub_21986A254(v21, v19, v13);
      }

      j__swift_release();
LABEL_5:
      v17 += 16;
      --v16;
    }

    while (v16);
  }

  type metadata accessor for FollowingModel();
  sub_218A7BAF8();
  sub_2187490E4();
  sub_2186D596C(&qword_280EDC630, type metadata accessor for FollowingModel);
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  if (sub_219BE6E54())
  {
    v23 = MEMORY[0x277D6DF80];
    v24 = v39;
    v26 = v36;
    v25 = v37;
  }

  else
  {
    sub_218A7BB4C();
    v28 = *(v27 + 48);
    v29 = *(v27 + 64);
    v26 = v36;
    v34(v8, v13, v36);
    sub_218718690(v40, &v8[v28]);
    v30 = *MEMORY[0x277D6D868];
    v31 = sub_219BE6DF4();
    (*(*(v31 - 8) + 104))(&v8[v29], v30, v31);
    v23 = MEMORY[0x277D6DF78];
    v24 = v39;
    v25 = v37;
  }

  (*(v6 + 104))(v8, *v23, v25);
  v24(v8);
  (*(v6 + 8))(v8, v25);
  (*(v10 + 8))(v13, v26);
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_21986A254(uint64_t a1, int a2, uint64_t a3)
{
  v137 = a3;
  LODWORD(v129) = a2;
  LODWORD(v128) = a2;
  sub_218B061E4();
  MEMORY[0x28223BE20](v5 - 8);
  v119 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v130);
  v123 = (&v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v115 = &v113 - v9;
  sub_218748D40();
  v118 = v10;
  v116 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v114 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v12 - 8);
  v121 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v131 = *(v14 - 8);
  v132 = v14;
  MEMORY[0x28223BE20](v14);
  v125 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v120 = &v113 - v17;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v18 - 8);
  v122 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v127 = &v113 - v21;
  sub_218950928();
  v134 = *(v22 - 8);
  v135 = v22;
  MEMORY[0x28223BE20](v22);
  v117 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v124 = &v113 - v25;
  MEMORY[0x28223BE20](v26);
  v126 = &v113 - v27;
  v28 = sub_219BF2CB4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_219BF2634();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v3 + 32);
  v133 = v3;
  __swift_project_boxed_opaque_existential_1((v3 + 8), v36);
  v136 = a1;
  *v31 = *(a1 + 16);
  (*(v29 + 104))(v31, *MEMORY[0x277D33B98], v28);
  swift_unknownObjectRetain();
  sub_219BF4794();
  (*(v29 + 8))(v31, v28);
  v37 = sub_219BF2614();
  (*(v33 + 8))(v35, v32);
  if (v128 <= 2)
  {
    v128 = type metadata accessor for FollowingTagModel();
    v38 = swift_allocObject();
    *(v38 + 16) = v129;
    *(v38 + 24) = v136;
    *(v38 + 32) = v37 & 1;
    sub_21986D4D4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
    v40 = v39;

    v41 = v127;
    sub_219BEB354();
    v42 = v134;
    v43 = v135;
    v44 = *(v134 + 48);
    v45 = v44(v41, 1, v135);
    v129 = v40;
    if (v45 == 1)
    {
      sub_21986D854(v41, sub_218A2D984);
    }

    else
    {
      v46 = v126;
      (*(v42 + 32))(v126, v41, v43);
      v47 = v121;
      sub_219BE6A64();
      v49 = v131;
      v48 = v132;
      if ((*(v131 + 48))(v47, 1, v132) != 1)
      {
        v86 = v120;
        (*(v49 + 32))(v120, v47, v48);
        v87 = v115;
        sub_219BE5FC4();
        v88 = v49;
        if (swift_getEnumCaseMultiPayload() != 11)
        {
          (*(v49 + 8))(v86, v48);
          (*(v42 + 8))(v126, v43);
          sub_21986D854(v87, type metadata accessor for FollowingModel);
          v70 = v137;
          goto LABEL_16;
        }

        sub_218748BF4();
        v90 = v89;
        v91 = v114;
        (*(v116 + 32))(v114, v87 + *(v89 + 48), v118);
        v138[0] = v38;
        sub_2186D596C(&qword_27CC142D8, sub_218748D40);
        v92 = sub_219BF5744();
        v93 = v133;
        if (v92 == 2)
        {
          MEMORY[0x28223BE20](v92);
          v112 = v138;
          LOBYTE(v92) = sub_218FAEA04(sub_21986D8B4, (&v113 - 4));
        }

        if (v92)
        {
          (*(v116 + 8))(v91, v118);
          (*(v88 + 8))(v120, v132);
          (*(v42 + 8))(v126, v43);
          v70 = v137;
          goto LABEL_16;
        }

        v138[0] = v38;
        sub_219BE2404();
        v95 = *(v42 + 16);
        v128 = v38;
        v96 = v124;
        v95(v124, v126, v43);
        v97 = *(v90 + 48);
        __swift_project_boxed_opaque_existential_1((v93 + 8), *(v93 + 32));
        v98 = sub_219BF4784();
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v100 = [objc_opt_self() bundleForClass_];
        v112 = 0x8000000219D39EE0;
        v101 = sub_219BDB5E4();
        v103 = v102;

        type metadata accessor for FollowingButtonModel();
        v104 = swift_allocObject();
        *(v104 + 16) = 0x64656B696C736964;
        *(v104 + 24) = 0xE800000000000000;
        *(v104 + 32) = v101;
        *(v104 + 40) = v103;
        *(v104 + 48) = v98 & 1;
        v105 = v123;
        *v123 = v104;
        v106 = v116;
        (*(v116 + 16))(v105 + v97, v91, v118);
        swift_storeEnumTagMultiPayload();
        sub_2186D596C(&qword_280EDC630, type metadata accessor for FollowingModel);
        v107 = v125;
        sub_219BE5FB4();
        v108 = v135;
        sub_219BE69E4();
        v84 = v137;
        sub_219BEB234();
        v109 = *(v88 + 8);
        v110 = v132;
        v109(v107, v132);
        v111 = *(v134 + 8);
        v111(v96, v108);
        (*(v106 + 8))(v114, v118);
        v109(v120, v110);
        v111(v126, v108);
        goto LABEL_9;
      }

      (*(v42 + 8))(v46, v43);
      sub_21986D854(v47, sub_218A7BA30);
    }

    v50 = v122;
    sub_219BEB354();
    if (v44(v50, 1, v43) == 1)
    {
      sub_21986D854(v50, sub_218A2D984);
      sub_218748BF4();
      __swift_project_boxed_opaque_existential_1((v133 + 8), *(v133 + 32));
      v51 = sub_219BF4784();
      type metadata accessor for Localized();
      v52 = swift_getObjCClassFromMetadata();
      v53 = [objc_opt_self() bundleForClass_];
      v112 = 0x8000000219D39EE0;
      v54 = sub_219BDB5E4();
      v56 = v55;

      type metadata accessor for FollowingButtonModel();
      v57 = swift_allocObject();
      *(v57 + 16) = 0x64656B696C736964;
      *(v57 + 24) = 0xE800000000000000;
      *(v57 + 32) = v54;
      *(v57 + 40) = v56;
      *(v57 + 48) = v51 & 1;
      *v123 = v57;
      sub_218725F94();
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_219C146A0;
      *(v58 + 32) = v38;
      v59 = sub_2186D596C(&unk_280ED6630, type metadata accessor for FollowingTagModel);
      v60 = sub_2186D596C(&qword_280ED6640, type metadata accessor for FollowingTagModel);

      MEMORY[0x21CEB9150](v58, v128, v59, v60);
      v128 = v38;
      swift_storeEnumTagMultiPayload();
      sub_2186D596C(&qword_280EDC630, type metadata accessor for FollowingModel);
      v61 = v125;
      sub_219BE5FB4();
      sub_2197EC7A0(v138);
      v139 = 9;
      sub_21986D7F0(0, &unk_280E8BFD0, sub_218950B84, MEMORY[0x277D84560]);
      v62 = v131;
      v63 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_219C09BA0;
      v65 = v132;
      (*(v62 + 16))(v64 + v63, v61, v132);
      v66 = sub_2186D596C(&unk_280EE5C80, sub_218950B84);
      v67 = sub_2186D596C(&unk_280EE5C90, sub_218950B84);
      v68 = v137;
      MEMORY[0x21CEB9150](v64, v65, v66, v67);
      sub_2187490E4();
      v69 = v124;
      sub_219BE6924();
      sub_218B0632C();
      sub_219BEB324();
      (*(v134 + 8))(v69, v135);
      (*(v62 + 8))(v61, v65);
      v70 = v68;
LABEL_16:
      sub_21986CD10(v70, v136);
    }

    v71 = v117;
    (*(v42 + 32))(v117, v50, v43);
    sub_218748BF4();
    __swift_project_boxed_opaque_existential_1((v133 + 8), *(v133 + 32));
    v72 = sub_219BF4784();
    type metadata accessor for Localized();
    v73 = swift_getObjCClassFromMetadata();
    v74 = [objc_opt_self() bundleForClass_];
    v112 = 0x8000000219D39EE0;
    v75 = sub_219BDB5E4();
    v77 = v76;

    type metadata accessor for FollowingButtonModel();
    v78 = swift_allocObject();
    *(v78 + 16) = 0x64656B696C736964;
    *(v78 + 24) = 0xE800000000000000;
    *(v78 + 32) = v75;
    *(v78 + 40) = v77;
    *(v78 + 48) = v72 & 1;
    *v123 = v78;
    sub_218725F94();
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_219C146A0;
    *(v79 + 32) = v38;
    v80 = sub_2186D596C(&unk_280ED6630, type metadata accessor for FollowingTagModel);
    v81 = sub_2186D596C(&qword_280ED6640, type metadata accessor for FollowingTagModel);

    MEMORY[0x21CEB9150](v79, v128, v80, v81);
    swift_storeEnumTagMultiPayload();
    sub_2186D596C(&qword_280EDC630, type metadata accessor for FollowingModel);
    v82 = v125;
    sub_219BE5FB4();
    v83 = v124;
    (*(v42 + 16))(v124, v71, v43);
    sub_2186D596C(&qword_27CC20108, type metadata accessor for FollowingModel);
    sub_219BE6A44();
    v84 = v137;
    sub_219BEB234();
    v85 = *(v42 + 8);
    v85(v83, v43);
    (*(v131 + 8))(v82, v132);
    v85(v71, v43);
LABEL_9:
    v70 = v84;
    goto LABEL_16;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_21986B604(uint64_t a1, int a2, uint64_t a3)
{
  v87 = a2;
  v88 = a1;
  v4 = sub_219BF2CB4();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_219BF2634();
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x28223BE20](v7);
  v82 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v92);
  v80 = (&v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v72 - v11;
  sub_218748D40();
  v94 = v13;
  v91 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v93 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v79 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v72 - v23;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v89 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v72 - v32;
  sub_21986D4D4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v78 = v34;
  v81 = a3;
  sub_219BEB354();
  if ((*(v29 + 48))(v26, 1, v28) == 1)
  {
    v35 = sub_218A2D984;
    v36 = v26;
    return sub_21986D854(v36, v35);
  }

  (*(v29 + 32))(v33, v26, v28);
  sub_219BE6A64();
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    (*(v29 + 8))(v33, v28);
    v35 = sub_218A7BA30;
    v36 = v17;
    return sub_21986D854(v36, v35);
  }

  v37 = v95;
  (*(v20 + 32))(v95, v17, v19);
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload() != 11)
  {
    (*(v20 + 8))(v37, v19);
    (*(v29 + 8))(v33, v28);
    v35 = type metadata accessor for FollowingModel;
    v36 = v12;
    return sub_21986D854(v36, v35);
  }

  v77 = v33;
  v75 = v20;
  v76 = v19;

  sub_218748BF4();
  v73 = v38;
  (*(v91 + 32))(v93, &v12[*(v38 + 48)], v94);
  __swift_project_boxed_opaque_existential_1((v90 + 8), *(v90 + 32));
  v39 = v88;
  v40 = *(v88 + 16);
  *v6 = v40;
  v42 = v85;
  v41 = v86;
  (*(v85 + 104))(v6, *MEMORY[0x277D33B98], v86);
  v74 = v40;
  swift_unknownObjectRetain();
  v43 = v82;
  sub_219BF4794();
  (*(v42 + 8))(v6, v41);
  v44 = sub_219BF2614();
  (*(v83 + 8))(v43, v84);
  v45 = v87;
  if (v87 > 2u)
  {
    result = sub_219BF7514();
    __break(1u);
  }

  else
  {
    type metadata accessor for FollowingTagModel();
    v46 = swift_allocObject();
    *(v46 + 16) = v45;
    *(v46 + 24) = v39;
    *(v46 + 32) = v44 & 1;
    v97 = 0;
    v98 = 0xE000000000000000;
    LOBYTE(v96) = v45;

    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v47 = [v74 identifier];
    v48 = sub_219BF5414();
    v50 = v49;

    MEMORY[0x21CECC330](v48, v50);

    v51 = v93;
    v52 = v94;
    sub_219BE2464();

    v53 = v77;
    if (v97)
    {
      v96 = v46;
      sub_219BE2434();
      (*(v29 + 16))(v89, v53, v28);
      v88 = *(v73 + 48);
      v54 = v52;
      v55 = v51;
      __swift_project_boxed_opaque_existential_1((v90 + 8), *(v90 + 32));
      v56 = sub_219BF4784();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v58 = [objc_opt_self() bundleForClass_];
      v59 = sub_219BDB5E4();
      v61 = v60;

      type metadata accessor for FollowingButtonModel();
      v62 = swift_allocObject();
      *(v62 + 16) = 0x64656B696C736964;
      *(v62 + 24) = 0xE800000000000000;
      *(v62 + 32) = v59;
      *(v62 + 40) = v61;
      *(v62 + 48) = v56 & 1;
      v63 = v80;
      *v80 = v62;
      v64 = v91;
      (*(v91 + 16))(v63 + v88, v55, v54);
      swift_storeEnumTagMultiPayload();
      sub_2186D596C(&qword_280EDC630, type metadata accessor for FollowingModel);
      v65 = v79;
      sub_219BE5FB4();
      v66 = v95;
      v67 = v89;
      sub_219BE69E4();
      sub_219BEB234();

      v68 = *(v75 + 8);
      v69 = v76;
      v68(v65, v76);
      v70 = *(v29 + 8);
      v70(v67, v28);
      (*(v64 + 8))(v93, v94);
      v68(v66, v69);
      return (v70)(v77, v28);
    }

    else
    {

      (*(v91 + 8))(v51, v52);
      (*(v75 + 8))(v95, v76);
      return (*(v29 + 8))(v53, v28);
    }
  }

  return result;
}

uint64_t sub_21986C10C(uint64_t a1, int a2, uint64_t a3)
{
  v89 = a1;
  v82 = a2;
  v4 = sub_219BF2CB4();
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_219BF2634();
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x28223BE20](v7);
  v77 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v90);
  v76 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  sub_218748D40();
  v86 = *(v13 - 8);
  v87 = v13;
  MEMORY[0x28223BE20](v13);
  v92 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v75 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v91 = &v69 - v23;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v84 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v69 - v32;
  sub_21986D4D4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v83 = v34;
  v85 = a3;
  sub_219BEB354();
  if ((*(v29 + 48))(v26, 1, v28) == 1)
  {
    v35 = sub_218A2D984;
    v36 = v26;
    return sub_21986D854(v36, v35);
  }

  (*(v29 + 32))(v33, v26, v28);
  sub_219BE6A64();
  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    (*(v29 + 8))(v33, v28);
    v35 = sub_218A7BA30;
    v36 = v17;
    return sub_21986D854(v36, v35);
  }

  v74 = v29;
  v37 = v91;
  (*(v20 + 32))(v91, v17, v19);
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload() != 11)
  {
    (*(v20 + 8))(v37, v19);
    (*(v74 + 8))(v33, v28);
    v35 = type metadata accessor for FollowingModel;
    v36 = v12;
    return sub_21986D854(v36, v35);
  }

  v73 = v33;
  v71 = v20;
  v72 = v19;

  sub_218748BF4();
  v70 = v38;
  (*(v86 + 32))(v92, &v12[*(v38 + 48)], v87);
  __swift_project_boxed_opaque_existential_1((v88 + 8), *(v88 + 32));
  v39 = *(v89 + 16);
  *v6 = v39;
  v41 = v80;
  v40 = v81;
  (*(v80 + 104))(v6, *MEMORY[0x277D33B98], v81);
  swift_unknownObjectRetain();
  v42 = v77;
  sub_219BF4794();
  (*(v41 + 8))(v6, v40);
  sub_219BF2614();
  (*(v78 + 8))(v42, v79);
  if (v82 > 2u)
  {
    result = sub_219BF7514();
    __break(1u);
  }

  else
  {
    v94 = 0;
    v95 = 0xE000000000000000;
    LOBYTE(v93) = v82;

    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v43 = [v39 identifier];
    v44 = sub_219BF5414();
    v46 = v45;

    MEMORY[0x21CECC330](v44, v46);

    v47 = v87;
    sub_219BE2414();

    v48 = v84;
    (*(v74 + 16))(v84, v73, v28);
    sub_2186D596C(&qword_27CC142D0, sub_218748D40);
    sub_219BF5DF4();
    sub_219BF5E84();
    if (v94 == v93)
    {
      v49 = v47;
      sub_219BE5F84();
      sub_219BE69C4();

      sub_2186D596C(&qword_280EE5760, sub_218950928);
      sub_219BF5DF4();
      sub_219BF5E84();
      v50 = v85;
      if (v94 == v93)
      {
        sub_219BE6944();
        sub_219BEB214();
      }

      else
      {
        sub_219BEB234();
      }

      v61 = v86;
      v66 = v48;
      v67 = v72;
      v64 = v71;
      v63 = v91;
    }

    else
    {
      v52 = *(v70 + 48);
      __swift_project_boxed_opaque_existential_1((v88 + 8), *(v88 + 32));
      v53 = sub_219BF4784();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v55 = [objc_opt_self() bundleForClass_];
      v56 = sub_219BDB5E4();
      v58 = v57;

      type metadata accessor for FollowingButtonModel();
      v59 = swift_allocObject();
      *(v59 + 16) = 0x64656B696C736964;
      *(v59 + 24) = 0xE800000000000000;
      *(v59 + 32) = v56;
      *(v59 + 40) = v58;
      *(v59 + 48) = v53 & 1;
      v60 = v76;
      *v76 = v59;
      v61 = v86;
      (*(v86 + 16))(v60 + v52, v92, v47);
      swift_storeEnumTagMultiPayload();
      sub_2186D596C(&qword_280EDC630, type metadata accessor for FollowingModel);
      v49 = v47;
      v62 = v75;
      sub_219BE5FB4();
      v63 = v91;
      sub_219BE69E4();
      v50 = v85;
      sub_219BEB234();
      v64 = v71;
      v65 = v62;
      v66 = v48;
      v67 = v72;
      (*(v71 + 8))(v65, v72);
    }

    sub_21986CD10(v50, v89);

    v68 = *(v74 + 8);
    v68(v66, v28);
    (*(v61 + 8))(v92, v49);
    (*(v64 + 8))(v63, v67);
    return (v68)(v73, v28);
  }

  return result;
}

uint64_t sub_21986CD10(uint64_t a1, uint64_t a2)
{
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF2CB4();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = (&v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_219BF2634();
  v51 = *(v13 - 8);
  v52 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v56 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v45 - v24;
  sub_21986D4D4(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v57 = v26;
  sub_219BEB354();
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    return sub_21986D854(v18, sub_218A2D984);
  }

  v49 = a1;
  (*(v21 + 32))(v25, v18, v20);
  v46 = v25;
  v47 = v8;
  v48 = v7;
  v58 = v21;
  __swift_project_boxed_opaque_existential_1(v55 + 1, v55[4]);
  v28 = *(a2 + 16);
  *v12 = v28;
  v55 = v28;
  v30 = v53;
  v29 = v54;
  (*(v53 + 104))(v12, *MEMORY[0x277D33B98], v54);
  swift_unknownObjectRetain();
  sub_219BF4794();
  (*(v30 + 8))(v12, v29);
  v31 = sub_219BF2614();
  (*(v51 + 8))(v15, v52);
  type metadata accessor for FollowingTagModel();
  inited = swift_initStackObject();
  *(inited + 16) = 1;
  *(inited + 24) = a2;
  *(inited + 32) = v31 & 1;
  v33 = v48;
  v34 = v56;
  v35 = v46;
  (*(v58 + 16))(v56);
  v61 = 0;
  v62 = 0xE000000000000000;
  LOBYTE(v60) = 1;

  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v36 = [v55 identifier];
  v37 = sub_219BF5414();
  v39 = v38;

  MEMORY[0x21CECC330](v37, v39);

  v40 = v59;
  sub_219BE6A64();

  v41 = v47;
  if ((*(v47 + 48))(v40, 1, v33) == 1)
  {
    sub_21986D854(v40, sub_218A7BA30);
  }

  else
  {
    v42 = v50;
    (*(v41 + 32))(v50, v40, v33);
    v43 = *(a2 + 27);
    if (v43 < 0 && (v43 & 1) != 0)
    {
      sub_219BE69D4();
    }

    (*(v41 + 8))(v42, v33);
  }

  sub_2186D596C(&qword_280EE5760, sub_218950928);
  sub_219BF5DF4();
  sub_219BF5E84();
  if (v61 == v60)
  {
    sub_219BE6944();
    sub_219BEB214();
  }

  else
  {
    sub_219BEB234();
  }

  v44 = *(v58 + 8);
  v44(v34, v20);
  return (v44)(v35, v20);
}

uint64_t sub_21986D3F8(uint64_t a1)
{
  v2 = sub_218B13014();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21986D438()
{
  result = qword_27CC20100;
  if (!qword_27CC20100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20100);
  }

  return result;
}

void sub_21986D4D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel();
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D596C(&qword_280EDC630, type metadata accessor for FollowingModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21986D594()
{
  sub_218B7E48C();
  sub_2186D596C(&qword_27CC12E60, sub_218B7E48C);
  return sub_219BF53A4() & 1;
}

BOOL sub_21986D624(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v4 = [*(v3 + 16) identifier];
  v5 = sub_219BF5414();
  v7 = v6;

  MEMORY[0x21CECC330](v5, v7);

  v8 = *(a2 + 24);
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v9 = [*(v8 + 16) identifier];
  v10 = sub_219BF5414();
  v12 = v11;

  MEMORY[0x21CECC330](v10, v12);

  if (!v16 && v17 == 0xE000000000000000)
  {

    return _s7NewsUI28TagModelC2eeoiySbAC_ACtFZ_0(v3, v8);
  }

  v13 = sub_219BF78F4();

  v14 = 0;
  if (v13)
  {
    return _s7NewsUI28TagModelC2eeoiySbAC_ACtFZ_0(v3, v8);
  }

  return v14;
}

void sub_21986D7F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21986D854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21986D8DC()
{
  v1 = [*(v0 + 16) connectedScenes];
  sub_219004C80();
  sub_21986E0E0(&qword_280E8DA40, sub_219004C80);
  sub_219BF5D44();

  sub_21986E04C();
  swift_getTupleTypeMetadata2();
  sub_21986E0E0(qword_27CC20118, sub_21986E04C);
  v2 = sub_219BF57E4();

  return v2;
}

id sub_21986DA44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = [*a1 delegate];
  if (result)
  {
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      *a2 = v3;
      a2[1] = v5;
      return v3;
    }

    result = swift_unknownObjectRelease();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_21986DAC8()
{
  sub_2186DCF58();
  sub_219BDBD34();
  v1 = sub_21986D8DC();
  sub_219004C80();
  swift_getTupleTypeMetadata2();
  sub_219BF5B14();
  swift_getWitnessTable();
  sub_219BF5804();

  swift_getWitnessTable();
  sub_219BF5EA4();

  if (v1)
  {
  }

  else
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    type metadata accessor for NotificationScenePicker.Errors();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_21986DCDC(uint64_t a1, uint64_t a2)
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v25[-v8];
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v25[-v15];
  v17 = *(a1 + 8);
  v18 = *(a2 + 8);
  v19 = qword_280F621D8;
  swift_beginAccess();
  sub_2187D96F4(v17 + v19, v9);
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    sub_219BDBBB4();
    if (v20(v9, 1, v10) != 1)
    {
      sub_2189DD39C(v9);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  v21 = qword_280F621D8;
  swift_beginAccess();
  sub_2187D96F4(v18 + v21, v6);
  if (v20(v6, 1, v10) == 1)
  {
    sub_219BDBBB4();
    if (v20(v6, 1, v10) != 1)
    {
      sub_2189DD39C(v6);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v6, v10);
  }

  v22 = sub_219BDBC14();
  v23 = *(v11 + 8);
  v23(v13, v10);
  v23(v16, v10);
  return v22 & 1;
}

uint64_t sub_21986DFC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21986DAC8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_21986E04C()
{
  if (!qword_27CC20110)
  {
    sub_219004C80();
    sub_21986E0E0(&qword_280E8DA40, sub_219004C80);
    v0 = sub_219BF5DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC20110);
    }
  }
}

uint64_t sub_21986E0E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21986E128()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_21986E184(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_21986E304(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

void __swiftcall PuzzleSettingsModule.createViewController(config:)(UIViewController *__return_ptr retstr, NewsUI2::PuzzleSettingsConfiguration config)
{
  v4 = *config.title._countAndFlagsBits;
  v3 = *(config.title._countAndFlagsBits + 8);
  v5 = *(config.title._countAndFlagsBits + 16);
  v6 = sub_219BDD224();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for PuzzleSettingsViewController();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v5;

  v8 = sub_219BE1E04();

  if (v8)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21986E684(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_219BE1BA4();
}

uint64_t PuzzleSettingsModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t PuzzleSettingsModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21986E7B4(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = sub_219BDD224();
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  type metadata accessor for PuzzleSettingsViewController();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v5;

  v8 = sub_219BE1E04();

  if (v8)
  {

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21986E950@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  sub_2186F64EC(0);
  v98 = v3;
  v94 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v93 = v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8A90(0);
  MEMORY[0x28223BE20](v5 - 8);
  v92 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3B14();
  v89 = v7;
  v88 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v90 = v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v91 = v68 - v10;
  v99 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
  MEMORY[0x28223BE20](v99);
  v100 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8AB0(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v97 = v68 - v16;
  sub_218CE8B24(0);
  MEMORY[0x28223BE20](v17 - 8);
  v87 = v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v96 = v68 - v20;
  sub_21986FF3C(0, &qword_280E8C8D8, sub_21986FE84, &type metadata for FeaturedIssueMagazineFeedGroupKnobs.Keys, MEMORY[0x277D844C8]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = v68 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21986FE84();
  v26 = v101;
  sub_219BF7B34();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v82 = v23;
  v84 = 0;
  v86 = v14;
  v85 = a1;
  LOBYTE(v112) = 0;
  sub_2186EC6C8(&qword_280E919C8, sub_2186E3B14);
  v28 = v96;
  v29 = v89;
  sub_219BF7674();
  LOBYTE(v112) = 1;
  sub_218CE8B98();
  sub_219BF7674();
  v77 = v117;
  sub_2186F9548();
  LOBYTE(v112) = 2;
  sub_2186EC6C8(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v101 = v114;
  LOBYTE(v107) = 8;
  sub_219BF7674();
  v76 = v112;
  v75 = v113;
  LOBYTE(v107) = 3;
  sub_219BF7674();
  v79 = v111;
  sub_2186F95C4();
  v31 = v30;
  LOBYTE(v107) = 4;
  sub_2186EC6C8(&qword_280E913F8, sub_2186F95C4);
  v68[1] = v31;
  sub_219BF7674();
  v80 = v110;
  sub_2186ECA28();
  v33 = v32;
  LOBYTE(v107) = 5;
  sub_2186EC6C8(&qword_280E913D8, sub_2186ECA28);
  v68[2] = v33;
  sub_219BF7674();
  v78 = v109;
  LOBYTE(v107) = 6;
  sub_218CE8BEC();
  sub_219BF7674();
  v115 = v116;
  LOBYTE(v105) = 9;
  sub_219BF7674();
  v74 = v107;
  v73 = v108;
  LOBYTE(v103) = 10;
  sub_219BF7674();
  v72 = v105;
  v71 = v106;
  LOBYTE(v102) = 11;
  sub_219BF7674();
  v70 = v103;
  v69 = v104;
  LOBYTE(v102) = 7;
  sub_2186EC6C8(&qword_280E91838, sub_2186F64EC);
  v83 = v22;
  v81 = v25;
  sub_219BF7674();
  v34 = v87;
  sub_218CE8CA0(v28, v87, sub_218CE8B24);
  v35 = v88;
  v36 = *(v88 + 48);
  v37 = v36(v34, 1, v29);
  v38 = v29;
  v39 = v35;
  if (v37 == 1)
  {
    v40 = v99;
    v41 = v100;
    if (qword_280E91AB8 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v38, qword_280F61818);
    v43 = v90;
    (*(v39 + 16))(v90, v42, v38);
    v44 = v43;
    if (v36(v34, 1, v38) != 1)
    {
      sub_218CE8C40(v34, sub_218CE8B24);
    }
  }

  else
  {
    v44 = v90;
    (*(v35 + 32))(v90, v34, v38);
    v40 = v99;
    v41 = v100;
  }

  v45 = sub_219BEDB04();
  v46 = v92;
  (*(*(v45 - 8) + 56))(v92, 1, 1, v45);
  v47 = v91;
  sub_219BEEA04();
  sub_218CE8C40(v46, sub_218CE8A90);
  (*(v39 + 8))(v44, v38);
  (*(v39 + 32))(v41, v47, v38);
  v48 = v77;
  if (v77 == 3)
  {
    v48 = 0;
  }

  v41[v40[5]] = v48;
  if (v101)
  {
    v49 = v101;
  }

  else
  {
    v102 = 4;
    swift_allocObject();
    v49 = sub_219BEF534();
  }

  v50 = v79;
  v51 = v78;
  *&v41[v40[6]] = v49;
  v52 = v80;
  if (v50)
  {

    v53 = v50;
  }

  else
  {
    v102 = 4;
    swift_allocObject();

    v53 = sub_219BEF534();
  }

  v54 = v94;
  *&v41[v40[7]] = v53;
  if (v52)
  {

    v55 = v52;
  }

  else
  {
    LOBYTE(v102) = 1;
    swift_allocObject();

    v55 = sub_219BEF534();
  }

  *&v41[v40[8]] = v55;
  if (v51)
  {
  }

  else
  {
    v102 = 0;
    swift_allocObject();

    v51 = sub_219BEF534();
  }

  *&v41[v40[9]] = v51;
  v56 = v115;
  if (v115 == 4)
  {
    v56 = 0;
  }

  v41[v40[10]] = v56;
  v57 = v97;
  v58 = v86;
  sub_218CE8CA0(v97, v86, sub_218CE8AB0);
  v59 = *(v54 + 48);
  v60 = v98;
  if (v59(v58, 1, v98) == 1)
  {
    type metadata accessor for MagazineFeedServiceConfig();
    sub_2186EC6C8(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
    v61 = v93;
    sub_219BEEC74();

    v62 = v57;
    v63 = v86;
    sub_218CE8C40(v62, sub_218CE8AB0);
    sub_218CE8C40(v96, sub_218CE8B24);
    (*(v82 + 8))(v81, v83);
    v64 = v59(v63, 1, v60);
    v65 = v61;
    v66 = v85;
    if (v64 != 1)
    {
      sub_218CE8C40(v63, sub_218CE8AB0);
    }
  }

  else
  {

    sub_218CE8C40(v57, sub_218CE8AB0);
    sub_218CE8C40(v96, sub_218CE8B24);
    (*(v82 + 8))(v81, v83);
    v65 = v93;
    (*(v54 + 32))(v93, v58, v60);
    v66 = v85;
  }

  v67 = v100;
  (*(v54 + 32))(&v100[*(v99 + 44)], v65, v60);
  sub_21986FED8(v67, v95);
  return __swift_destroy_boxed_opaque_existential_1(v66);
}

uint64_t sub_21986F734(void *a1)
{
  v3 = v1;
  sub_21986FF3C(0, &qword_280E8C290, sub_21986FFA4, &type metadata for FeaturedIssueMagazineFeedGroupKnobs.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21986FFA4();
  sub_219BF7B44();
  LOBYTE(v13) = 0;
  sub_2186E3B14();
  sub_2186EC6C8(&qword_280E919D0, sub_2186E3B14);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
    LOBYTE(v13) = *(v3 + v10[5]);
    v14 = 1;
    sub_218CE8E28();
    sub_219BF7834();
    v13 = *(v3 + v10[6]);
    v14 = 2;
    sub_2186F9548();
    sub_2186EC6C8(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v13 = *(v3 + v10[7]);
    v14 = 3;
    sub_219BF7834();
    v13 = *(v3 + v10[8]);
    v14 = 4;
    sub_2186F95C4();
    sub_2186EC6C8(&qword_280E91400, sub_2186F95C4);
    sub_219BF7834();
    v13 = *(v3 + v10[9]);
    v14 = 5;
    sub_2186ECA28();
    sub_2186EC6C8(&qword_280E913E0, sub_2186ECA28);
    sub_219BF7834();
    LOBYTE(v13) = *(v3 + v10[10]);
    v14 = 6;
    sub_218CE8E7C();
    sub_219BF7834();
    LOBYTE(v13) = 7;
    sub_2186F64EC(0);
    sub_2186EC6C8(&unk_280E91840, sub_2186F64EC);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21986FBA8(uint64_t a1)
{
  v2 = sub_21986FE84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21986FBE4(uint64_t a1)
{
  v2 = sub_21986FE84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21986FC20(uint64_t a1)
{
  v2 = sub_21986FFA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21986FC5C(uint64_t a1)
{
  v2 = sub_21986FFA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21986FCCC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MagazineFeedServiceConfig();
  sub_2186EC6C8(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
  if (*&aNone_17[8 * *(a1 + *(v4 + 20))] == *&aNone_17[8 * *(a2 + *(v4 + 20))])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = sub_219BF78F4();
    swift_bridgeObjectRelease_n();
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2186F9548();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186F95C4();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0 || (sub_21908B134(*(a1 + *(v4 + 40)), *(a2 + *(v4 + 40))) & 1) == 0)
  {
    return 0;
  }

  return sub_219BEEC64();
}

unint64_t sub_21986FE84()
{
  result = qword_280E9DB58;
  if (!qword_280E9DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9DB58);
  }

  return result;
}

uint64_t sub_21986FED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21986FF3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_21986FFA4()
{
  result = qword_280E9DB80;
  if (!qword_280E9DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9DB80);
  }

  return result;
}

unint64_t sub_21987001C()
{
  result = qword_27CC20220;
  if (!qword_27CC20220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20220);
  }

  return result;
}

unint64_t sub_219870074()
{
  result = qword_27CC20228;
  if (!qword_27CC20228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20228);
  }

  return result;
}

unint64_t sub_2198700CC()
{
  result = qword_280E9DB70;
  if (!qword_280E9DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9DB70);
  }

  return result;
}

unint64_t sub_219870124()
{
  result = qword_280E9DB78;
  if (!qword_280E9DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9DB78);
  }

  return result;
}

unint64_t sub_21987017C()
{
  result = qword_280E9DB60;
  if (!qword_280E9DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9DB60);
  }

  return result;
}

unint64_t sub_2198701D4()
{
  result = qword_280E9DB68;
  if (!qword_280E9DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9DB68);
  }

  return result;
}

uint64_t FeatureAvailability.__allocating_init(featureAvailabilityProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 32) = 2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  v4 = a1 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_delegate;
  swift_beginAccess();
  *(v4 + 8) = &protocol witness table for FeatureAvailability;
  swift_unknownObjectWeakAssign();
  return v2;
}

uint64_t FeatureAvailability.init(featureAvailabilityProvider:)(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  *(v1 + 32) = 2;
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  v3 = a1 + OBJC_IVAR____TtC7NewsUI227FeatureAvailabilityProvider_delegate;
  swift_beginAccess();
  *(v3 + 8) = &protocol witness table for FeatureAvailability;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t FeatureAvailability.puzzlesEnabled.getter()
{
  if ((sub_2187AFEC4() & 1) == 0)
  {
    return 0;
  }

  return sub_2187D9FE0();
}

uint64_t FeatureAvailability.paidBundleViaOfferAvailability.getter()
{
  sub_218831784();
  sub_218831908();
  sub_218831A20();
  sub_218831A48();
  sub_218831BB4();
  sub_218831C34();
  sub_218831CE4();
  v0 = objc_allocWithZone(sub_219BE4554());
  return sub_219BE4544();
}

uint64_t FeatureAvailability.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FeatureAvailability.add(observer:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BED224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187D9028();
  *v7 = sub_219BF66A4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_219BED254();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    v4 = *(v2 + 24);
    v18 = MEMORY[0x277D84F90];
    if (!(v4 >> 62))
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  v9 = sub_219BF7214();
LABEL_4:

  if (v9)
  {
    v17 = v2;
    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v2, v4);
        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v2 = v17;
          v13 = v18;
          goto LABEL_20;
        }
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_24;
        }

        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_17;
        }
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v12 = Strong, swift_unknownObjectRelease(), v12 == a1))
      {
      }

      else
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      ++v2;
      if (v10 == v9)
      {
        goto LABEL_18;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_20:

  *(v2 + 24) = v13;

  type metadata accessor for FeatureAvailabilityObserverProxy();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14 = swift_beginAccess();
  MEMORY[0x21CECC690](v14);
  if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  return swift_endAccess();
}

uint64_t FeatureAvailability.remove(observer:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BED224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187D9028();
  *v7 = sub_219BF66A4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_219BED254();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    swift_beginAccess();
    v4 = *(v2 + 24);
    v17 = MEMORY[0x277D84F90];
    if (!(v4 >> 62))
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  v9 = sub_219BF7214();
LABEL_4:

  if (v9)
  {
    v16 = v2;
    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v2, v4);
        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v2 = v16;
          v13 = v17;
          goto LABEL_20;
        }
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_17;
        }
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v12 = Strong, swift_unknownObjectRelease(), v12 == a1))
      {
      }

      else
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      ++v2;
      if (v10 == v9)
      {
        goto LABEL_18;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_20:

  *(v2 + 24) = v13;
}

uint64_t sub_219871574(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  a4(a3);
  swift_unknownObjectRelease();
}

uint64_t FeatureAvailability.notifyObservers(block:)(void (*a1)(void))
{
  v2 = v1;
  v4 = sub_219BED224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187D9028();
  *v7 = sub_219BF66A4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_219BED254();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    result = sub_219BF7214();
    v10 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_4;
  }

  result = swift_beginAccess();
  v2 = *(v2 + 24);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    return result;
  }

LABEL_4:
  if (v10 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v10; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](i, v2);
      }

      else
      {
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        a1();
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

Swift::Void __swiftcall FeatureAvailability.sportsTopicNotifications(didChange:)(Swift::Bool didChange)
{
  v2 = v1;
  v4 = sub_219BED224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187D9028();
  *v7 = sub_219BF66A4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_219BED254();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    v9 = sub_219BF7214();
    if (!v9)
    {
      return;
    }

    goto LABEL_4;
  }

  swift_beginAccess();
  v8 = *(v2 + 24);
  if (v8 >> 62)
  {
    goto LABEL_15;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    return;
  }

LABEL_4:
  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v9; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](i, v8);
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong sportsTopicNotificationsWithDidChange_];
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_219871A6C()
{
  sub_218774F78(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t PuzzleArchiveFilterOption.identifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    result = 0x6C75636966666964;
    if (!*(v0 + 8))
    {
      if (v1)
      {
        v4 = 0xEA00000000007974;
      }

      else
      {
        result = 0x7461745379616C70;
        v4 = 0xE900000000000065;
      }

      MEMORY[0x21CECC330](result, v4);

      return 544829025;
    }
  }

  else if (v2 == 2)
  {
    return 0xD000000000000012;
  }

  else if (v2 == 3)
  {
    return 0xD000000000000015;
  }

  else
  {
    v5 = 0x6F5474736577656ELL;
    v6 = 0xD000000000000011;
    v7 = 0xD000000000000013;
    if (v1 != 3)
    {
      v7 = 0xD000000000000011;
    }

    if (v1 != 2)
    {
      v6 = v7;
    }

    if (v1)
    {
      v5 = 0x6F54747365646C6FLL;
    }

    if (v1 <= 1)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

void PuzzleArchiveFilterOption.groupType.getter(_BYTE *a1@<X8>)
{
  v2 = 0x202uLL >> (8 * *v1);
  if (!v1[8])
  {
    LOBYTE(v2) = *v1 & 1;
  }

  if (v1[8] - 1 < 3)
  {
    LOBYTE(v2) = 1;
  }

  *a1 = v2;
}

uint64_t PuzzleArchiveFilterOption.GroupType.identifier.getter()
{
  if (*v0)
  {
    return 0x6C75636966666964;
  }

  else
  {
    return 0x7461745379616C70;
  }
}

uint64_t PuzzleArchiveFilterOption.GroupType.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

uint64_t PuzzleArchiveFilterOption.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 <= 1)
  {
    if (*(v0 + 8))
    {
      v3 = 6;
      goto LABEL_10;
    }

    MEMORY[0x21CECE850](0);
    v1 &= 1u;
  }

  else
  {
    if (v2 == 2)
    {
      v3 = 7;
      goto LABEL_10;
    }

    if (v2 == 3)
    {
      v3 = 8;
LABEL_10:
      MEMORY[0x21CECE850](v3);
      return MEMORY[0x21CECE850](v1);
    }

    ++v1;
  }

  return MEMORY[0x21CECE850](v1);
}

uint64_t PuzzleArchiveFilterOption.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_219BF7AA4();
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 6;
      goto LABEL_10;
    }

    MEMORY[0x21CECE850](0);
    v1 &= 1u;
  }

  else
  {
    if (v2 == 2)
    {
      v3 = 7;
      goto LABEL_10;
    }

    if (v2 == 3)
    {
      v3 = 8;
LABEL_10:
      MEMORY[0x21CECE850](v3);
      goto LABEL_11;
    }

    ++v1;
  }

LABEL_11:
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

uint64_t sub_219871EB0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_219BF7AA4();
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 6;
      goto LABEL_10;
    }

    MEMORY[0x21CECE850](0);
    v1 &= 1u;
  }

  else
  {
    if (v2 == 2)
    {
      v3 = 7;
      goto LABEL_10;
    }

    if (v2 == 3)
    {
      v3 = 8;
LABEL_10:
      MEMORY[0x21CECE850](v3);
      goto LABEL_11;
    }

    ++v1;
  }

LABEL_11:
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

BOOL _s7NewsUI225PuzzleArchiveFilterOptionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (!*(a1 + 8))
    {
      if (!*(a2 + 8))
      {
        return ((v4 ^ v2) & 1) == 0;
      }

      return 0;
    }

    if (v5 == 1)
    {
      return v2 == v4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (v3 == 3)
    {
      if (v5 != 3)
      {
        return 0;
      }

      return v2 == v4;
    }

    if (v2 <= 1)
    {
      if (v2)
      {
        if (v5 == 4 && v4 == 1)
        {
          return 1;
        }
      }

      else if (v5 == 4 && !v4)
      {
        return 1;
      }
    }

    else if (v2 == 2)
    {
      if (v5 == 4 && v4 == 2)
      {
        return 1;
      }
    }

    else if (v2 == 3)
    {
      if (v5 == 4 && v4 == 3)
      {
        return 1;
      }
    }

    else if (v5 == 4 && v4 == 4)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_219872060()
{
  result = qword_27CC20230;
  if (!qword_27CC20230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20230);
  }

  return result;
}

unint64_t sub_2198720B8()
{
  result = qword_280EBD6D0;
  if (!qword_280EBD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBD6D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PuzzleArchiveFilterOption(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PuzzleArchiveFilterOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_219872198(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_2198721B0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2198721E8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  sub_219374410(a1, &v12);
  *&v11[9] = *&v13[9];
  v10 = v12;
  *v11 = *v13;
  if (v13[24] > 2u)
  {
    if (v13[24] == 3)
    {
LABEL_5:
      v3 = sub_2186CB1F0(&v10, v14);
      MEMORY[0x28223BE20](v3);
      v4 = sub_219BE3204();
      __swift_destroy_boxed_opaque_existential_1(v14);
      type metadata accessor for SearchMoreFeedPool();
      result = swift_allocObject();
      *(result + 16) = v4;
      return result;
    }
  }

  else if (v13[24] - 1 >= 2)
  {
    goto LABEL_5;
  }

  sub_2186CB1F0(&v10, v14);
  sub_219ADE0C0();
  MEMORY[0x28223BE20](v6);
  sub_219873858(0, &unk_27CC179C8, sub_2186D8870, type metadata accessor for StreamingPage);
  sub_219BE3204();

  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  v8 = sub_219BE2E54();
  v9 = sub_219BE2F74();

  __swift_destroy_boxed_opaque_existential_1(v14);
  type metadata accessor for SearchMoreFeedPool();
  result = swift_allocObject();
  *(result + 16) = v9;
  return result;
}

uint64_t sub_219872480()
{
  result = sub_219BF08B4();
  if (!v0)
  {
    sub_219BE3204();

    v2 = sub_219BE2E54();
    v3 = sub_219BE2F84();

    type metadata accessor for SearchMoreFeedPool();
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  return result;
}

uint64_t sub_2198725AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedServiceConfig();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_219BF0944();
  sub_219374410(v6, &v20);
  sub_219872A2C(v6);
  *&v19[9] = *&v21[9];
  v18 = v20;
  *v19 = *v21;
  if (v21[24] > 2u)
  {
    if (v21[24] == 3)
    {
      goto LABEL_3;
    }
  }

  else if (v21[24] - 1 >= 2)
  {
LABEL_3:
    v9 = sub_2186CB1F0(&v18, v22);
    MEMORY[0x28223BE20](v9);
    *(&v18 - 4) = v22;
    *(&v18 - 3) = v10;
    *(&v18 - 16) = v11 & 1;
    *(&v18 - 1) = a2;
    v12 = sub_219BE3204();
    goto LABEL_8;
  }

  sub_2186CB1F0(&v18, v22);
  if (v8 >> 6 > 2)
  {
    v7 = 1;
    LOBYTE(v8) = 1;
  }

  sub_219ADE0C0();
  MEMORY[0x28223BE20](v13);
  *(&v18 - 4) = v22;
  *(&v18 - 3) = v7;
  *(&v18 - 16) = v8 & 1;
  *(&v18 - 1) = v14;
  sub_219873858(0, &unk_27CC179C8, sub_2186D8870, type metadata accessor for StreamingPage);
  sub_219BE3204();

  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v8 & 1;
  v16 = sub_219BE2E54();
  v12 = sub_219BE2F74();

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v12;
}

uint64_t sub_219872908()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_219872998@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2198721E8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2198729C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219872480();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_219872A2C(uint64_t a1)
{
  v2 = type metadata accessor for SearchMoreFeedServiceConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219872A88(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v14 = a2;
  v15 = a3 & 1;
  v9 = *(v8 + 32);

  v9(&v14, sub_2198737D4, a4, v7, v8);

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3 & 1;
  v11 = sub_219BE2E54();
  v12 = sub_219BE2F74();

  return v12;
}

uint64_t sub_219872BB4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v22 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v3, 0);
    v4 = v22;
    v6 = a1 + 32;
    do
    {
      sub_218718690(v6, v19);
      v7 = v20;
      v8 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v9 = (*(v8 + 8))(v7, v8);
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1(v19);
      v22 = v4;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21870B65C((v12 > 1), v13 + 1, 1);
        v4 = v22;
      }

      *(v4 + 16) = v13 + 1;
      v14 = v4 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  v15 = a2[7];
  v16 = a2[8];
  __swift_project_boxed_opaque_existential_1(a2 + 4, v15);
  v17 = MEMORY[0x21CEC9610](v4, *MEMORY[0x277D30B98], v15, v16);

  return v17;
}

uint64_t sub_219872D10(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v14 = a2;
  v15 = a3 & 1;
  v9 = *(v8 + 32);

  v9(&v14, sub_219873814, a4, v7, v8);

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3 & 1;
  v11 = sub_219BE2E54();
  v12 = sub_219BE2F74();

  return v12;
}

uint64_t sub_219872E3C(uint64_t a1)
{
  sub_219873858(0, &qword_280EE6A00, sub_218799754, MEMORY[0x277D6CF30]);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  return sub_219BE2F54();
}

uint64_t sub_219872F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_219872F30, 0, 0);
}

uint64_t sub_219872F30()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 56);
    if (v3 >> 62)
    {
      v4 = sub_219BF7214();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v26 = MEMORY[0x277D84F90];
      v6 = sub_21870B65C(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        __break(1u);
        return MEMORY[0x282192298](v6, v7, v8);
      }

      v9 = 0;
      v5 = v26;
      v24 = v2;
      v25 = *(v0 + 56) + 32;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x21CECE0F0](v9, *(v0 + 56));
        }

        else
        {
          v10 = *(v25 + 8 * v9);
        }

        v11 = v10;
        v12 = [v10 identifier];
        v13 = sub_219BF5414();
        v15 = v14;

        v17 = *(v26 + 16);
        v16 = *(v26 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_21870B65C((v16 > 1), v17 + 1, 1);
        }

        ++v9;
        *(v26 + 16) = v17 + 1;
        v18 = v26 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
      }

      while (v4 != v9);
      v2 = v24;
    }

    *(v0 + 72) = v5;
    v19 = v2[12];
    v20 = v2[13];
    __swift_project_boxed_opaque_existential_1(v2 + 9, v19);
    v21 = swift_task_alloc();
    *(v0 + 80) = v21;
    *v21 = v0;
    v21[1] = sub_21987319C;
    v6 = v5;
    v7 = v19;
    v8 = v20;

    return MEMORY[0x282192298](v6, v7, v8);
  }

  **(v0 + 40) = MEMORY[0x277D84F90];
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_21987319C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_21987333C;
  }

  else
  {

    *(v4 + 96) = a1;
    v5 = sub_2198732CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2198732CC()
{

  **(v0 + 40) = *(v0 + 96);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21987333C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2198733A8(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v13 = a2;
  v14 = a3 & 1;
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  v10 = *(v8 + 24);

  v11 = v10(&v13, sub_219873968, v9, v7, v8);

  return v11;
}

uint64_t sub_219873484(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
LABEL_25:
    v19 = a1;
    v3 = sub_219BF7214();
    a1 = v19;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v23 = a1 & 0xFFFFFFFFFFFFFF8;
      v24 = a1 & 0xC000000000000001;
      v22 = a1;
      v5 = a1 + 32;
      v6 = a2 + 56;
      while (1)
      {
        if (v24)
        {
          v7 = MEMORY[0x21CECE0F0](v4, v22);
          v8 = __OFADD__(v4++, 1);
          if (v8)
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *(v23 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v7 = *(v5 + 8 * v4);
          swift_unknownObjectRetain();
          v8 = __OFADD__(v4++, 1);
          if (v8)
          {
            goto LABEL_22;
          }
        }

        v9 = [v7 identifier];
        v10 = sub_219BF5414();
        v12 = v11;

        if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v13 = sub_219BF7AE4(), v14 = -1 << *(a2 + 32), v15 = v13 & ~v14, ((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
        {
          v16 = ~v14;
          while (1)
          {
            v17 = (*(a2 + 48) + 16 * v15);
            v18 = *v17 == v10 && v17[1] == v12;
            if (v18 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          swift_unknownObjectRelease();

          if (v4 == v3)
          {
            break;
          }
        }

        else
        {
LABEL_4:

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          a1 = sub_219BF73E4();
          if (v4 == v3)
          {
            break;
          }
        }
      }
    }
  }

  sub_218A354D8();
  sub_219873970(&qword_280E8ECF0, sub_218A354D8);
  v20 = sub_219BF56E4();

  return v20;
}

uint64_t sub_2198737DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
}

uint64_t sub_21987381C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16) | 0x40;
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
}

void sub_219873858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2198738BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_219872F0C(a1, v5, v4);
}

uint64_t sub_219873970(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2198739B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16) | 0x80;
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
}

void sub_219873A80()
{
  qword_280F62270 = MEMORY[0x277D84F90];
  *algn_280F62278 = MEMORY[0x277D84F90];
  qword_280F62280 = MEMORY[0x277D84F90];
  unk_280F62288 = 0;
  xmmword_280F62290 = 0uLL;
}

char *sub_219873AA0(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_72:
    v5 = sub_219BF7214();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v65 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = v65;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v8, v2);
        v9 = [swift_unknownObjectRetain() identifier];
        v10 = sub_219BF5414();
        v12 = v11;
        swift_unknownObjectRelease_n();

        v14 = *(v65 + 16);
        v13 = *(v65 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_21870B65C((v13 > 1), v14 + 1, 1);
        }

        ++v8;
        *(v65 + 16) = v14 + 1;
        v15 = v65 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
      }

      while (v5 != v8);
    }

    else
    {
      v16 = v2 + 32;
      do
      {
        v17 = [swift_unknownObjectRetain_n() identifier];
        v18 = sub_219BF5414();
        v20 = v19;
        swift_unknownObjectRelease_n();

        v22 = *(v65 + 16);
        v21 = *(v65 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_21870B65C((v21 > 1), v22 + 1, 1);
        }

        *(v65 + 16) = v22 + 1;
        v23 = v65 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        v16 += 8;
        --v5;
      }

      while (v5);
    }
  }

  v24 = sub_218845F78(v6);

  if (v4)
  {
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    v25 = sub_219BF7214();
  }

  else
  {
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    v25 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = a1;
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v27 = 0;
    a1 = v2 & 0xC000000000000001;
    v64 = MEMORY[0x277D84F90];
    while (2)
    {
      v28 = v27;
      while (1)
      {
        if (a1)
        {
          MEMORY[0x21CECE0F0](v28, v2);
          v27 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v28 >= *(v4 + 16))
          {
            goto LABEL_70;
          }

          swift_unknownObjectRetain();
          v27 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        v29 = [swift_unknownObjectRetain() clusterID];
        if (v29)
        {
          break;
        }

        swift_unknownObjectRelease_n();
        ++v28;
        if (v27 == v25)
        {
          goto LABEL_37;
        }
      }

      v30 = v29;
      v31 = sub_219BF5414();
      v63 = v32;
      swift_unknownObjectRelease_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_218840D24(0, *(v64 + 2) + 1, 1, v64);
      }

      v34 = *(v64 + 2);
      v33 = *(v64 + 3);
      if (v34 >= v33 >> 1)
      {
        v64 = sub_218840D24((v33 > 1), v34 + 1, 1, v64);
      }

      *(v64 + 2) = v34 + 1;
      v35 = &v64[16 * v34];
      *(v35 + 4) = v31;
      *(v35 + 5) = v63;
      v26 = MEMORY[0x277D84F90];
      if (v27 != v25)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v64 = MEMORY[0x277D84F90];
  }

LABEL_37:
  v2 = sub_218845F78(v64);

  v66 = v26;
  if (v61 >> 62)
  {
    v36 = sub_219BF7214();
    if (v36)
    {
      goto LABEL_39;
    }

LABEL_74:
    v60 = MEMORY[0x277D84F90];
    goto LABEL_75;
  }

  v36 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
    goto LABEL_74;
  }

LABEL_39:
  v37 = 0;
  v62 = v36;
  a1 = v24 + 56;
  v4 = v2 + 56;
  while ((v61 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x21CECE0F0](v37, v61);
    v39 = __OFADD__(v37++, 1);
    if (v39)
    {
      goto LABEL_67;
    }

LABEL_45:
    v40 = [v38 identifier];
    v41 = sub_219BF5414();
    v43 = v42;

    if (*(v24 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v44 = sub_219BF7AE4();
      v45 = -1 << *(v24 + 32);
      v46 = v44 & ~v45;
      if ((*(a1 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
      {
        v47 = ~v45;
        do
        {
          v48 = (*(v24 + 48) + 16 * v46);
          v49 = *v48 == v41 && v48[1] == v43;
          if (v49 || (sub_219BF78F4() & 1) != 0)
          {
            goto LABEL_64;
          }

          v46 = (v46 + 1) & v47;
        }

        while (((*(a1 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) != 0);
      }
    }

    v50 = [v38 identifier];
    v51 = sub_219BF5414();
    v53 = v52;

    if (*(v2 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v54 = sub_219BF7AE4();
      v55 = -1 << *(v2 + 32);
      v56 = v54 & ~v55;
      if ((*(v4 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
      {
        v57 = ~v55;
        while (1)
        {
          v58 = (*(v2 + 48) + 16 * v56);
          v59 = *v58 == v51 && v58[1] == v53;
          if (v59 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v56 = (v56 + 1) & v57;
          if (((*(v4 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
          {
            goto LABEL_40;
          }
        }

LABEL_64:
        swift_unknownObjectRelease();

        goto LABEL_41;
      }
    }

LABEL_40:

    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    sub_219BF73E4();
LABEL_41:
    if (v37 == v62)
    {
      goto LABEL_68;
    }
  }

  if (v37 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_71;
  }

  v38 = *(v61 + 32 + 8 * v37);
  swift_unknownObjectRetain();
  v39 = __OFADD__(v37++, 1);
  if (!v39)
  {
    goto LABEL_45;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  v60 = v66;
LABEL_75:

  return v60;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI211TagFeedPoolV0D5BatchO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2198740F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_219874144(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2198741C8(void *a1, void *a2)
{
  v76 = sub_219BE6B84();
  v70 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FC38D0();
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219874C70();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219874CF4();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FC3A6C();
  MEMORY[0x28223BE20](v13 - 8);
  sub_218FC3B10();
  MEMORY[0x28223BE20](v14 - 8);

  v15 = [a2 puzzleFullArchiveMenuOptionsConfigByPuzzleTypeID];
  sub_219686F98();
  v16 = sub_219BF5214();

  v17 = [a1 identifier];
  v18 = sub_219BF5414();
  v20 = v19;

  if (!*(v16 + 16))
  {

    swift_unknownObjectRelease();

    return 0;
  }

  v74 = a1;
  v69 = a2;
  sub_21870F700(v18, v20);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    swift_unknownObjectRelease();

    return 0;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  v25 = sub_219BDB5E4();
  v27 = v26;

  if (qword_280EE3868 != -1)
  {
    swift_once();
  }

  v73 = qword_280EE3878;
  LOBYTE(v80) = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  *(v28 + 24) = v27;
  sub_218728B2C();

  swift_unknownObjectRetain();
  sub_219BE8B74();
  LOBYTE(v80) = 0;
  sub_2186E3374();
  sub_219BE8B74();
  LOBYTE(v80) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 0xD000000000000013;
  *(v29 + 24) = 0x8000000219D11660;
  sub_2186C6148(0, &qword_280E8DA68);
  sub_219BE8B74();
  sub_219874D78(0, &unk_27CC145A0, &qword_280E8DA68, 0x277D755B8, sub_2186C6148);
  (*(*(v30 - 8) + 56))(v12, 0, 1, v30);
  LOBYTE(v80) = 0;
  v31 = MEMORY[0x277D6D790];
  sub_2186CFDE4(0, &qword_27CC14590);
  sub_219BE8B74();
  sub_219874D78(0, &qword_27CC14588, &qword_27CC14590, v31, sub_2186CFDE4);
  (*(*(v32 - 8) + 56))(v9, 0, 1, v32);
  sub_219BE77A4();
  *&v80 = 0;
  BYTE8(v80) = 4;
  *&v81 = v74;
  v33 = sub_219BE6684();
  swift_allocObject();
  v34 = sub_219BE65B4();
  v35 = sub_2191F7A28(0, 1, 1, MEMORY[0x277D84F90]);
  v37 = v35[2];
  v36 = v35[3];
  if (v37 >= v36 >> 1)
  {
    v35 = sub_2191F7A28((v36 > 1), v37 + 1, 1, v35);
  }

  v35[2] = v37 + 1;
  v38 = &v35[5 * v37];
  v38[4] = v34;
  *(v38 + 5) = v80;
  v39 = MEMORY[0x277D6D630];
  v38[7] = v33;
  v38[8] = v39;
  v77 = sub_219BE6B74();
  sub_219BE6B64();

  v40 = MEMORY[0x277D84F90];
  v41 = sub_2191F7A28(0, 1, 1, MEMORY[0x277D84F90]);
  v43 = v41[2];
  v42 = v41[3];
  v44 = v74;
  if (v43 >= v42 >> 1)
  {
    v41 = sub_2191F7A28((v42 > 1), v43 + 1, 1, v41);
  }

  v41[2] = v43 + 1;
  v45 = &v41[5 * v43];
  *(v45 + 2) = v80;
  *(v45 + 3) = v81;
  v45[8] = v82;
  v78 = v40;
  v79 = MEMORY[0x277D84F98];
  v46 = [v44 identifier];
  v47 = sub_219BF5414();
  v49 = v48;

  swift_unknownObjectRetain();
  sub_219687000(v47, v49, v69, &v79, &v78, v44);

  result = swift_unknownObjectRelease();
  v51 = v78;
  if (!(v78 >> 62))
  {
    v52 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_11;
    }

LABEL_28:
    v67 = sub_219BE59A4();

    swift_unknownObjectRelease();

    if (v67)
    {

      return v67;
    }

    return 0;
  }

  result = sub_219BF7214();
  v52 = result;
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_11:
  if (v52 >= 1)
  {
    v53 = 0;
    v54 = v79;
    v55 = v51 & 0xC000000000000001;
    v71 = *MEMORY[0x277D6D7B0];
    v70 += 13;
    v72 = v51 & 0xC000000000000001;
    v73 = v51;
    do
    {
      if (v55)
      {
        v56 = MEMORY[0x21CECE0F0](v53, v51);
      }

      else
      {
        v56 = *(v51 + 8 * v53 + 32);
      }

      v57 = v56;
      if (*(v54 + 16) && (v58 = sub_21931EE2C(v56), (v59 & 1) != 0))
      {
        v60 = *(*(v54 + 56) + 8 * v58);

        v61 = [v57 title];
        if (v61)
        {
          v62 = v61;
          sub_219BF5414();
        }

        (*v70)(v75, v71, v76);
        sub_218ACE05C(v60);

        swift_allocObject();
        v63 = sub_219BE6B54();
        v65 = v41[2];
        v64 = v41[3];
        if (v65 >= v64 >> 1)
        {
          v41 = sub_2191F7A28((v64 > 1), v65 + 1, 1, v41);
        }

        v41[2] = v65 + 1;
        v66 = &v41[5 * v65];
        v66[4] = v63;
        *(v66 + 5) = v80;
        v66[7] = v77;
        v66[8] = MEMORY[0x277D6D798];
        v55 = v72;
        v51 = v73;
      }

      else
      {
      }

      ++v53;
    }

    while (v52 != v53);
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void sub_219874C70()
{
  if (!qword_27CC14580)
  {
    sub_219874D78(255, &qword_27CC14588, &qword_27CC14590, MEMORY[0x277D6D790], sub_2186CFDE4);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14580);
    }
  }
}

void sub_219874CF4()
{
  if (!qword_27CC14598)
  {
    sub_219874D78(255, &unk_27CC145A0, &qword_280E8DA68, 0x277D755B8, sub_2186C6148);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14598);
    }
  }
}

void sub_219874D78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_218728B2C();
    v6 = sub_219BE8B84();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219874E04()
{
  sub_219BF4944();
  sub_219BF0F14();

  return sub_219BF4924();
}

uint64_t sub_219874E5C(void *a1)
{
  sub_219BF4504();
  v2 = a1;

  return sub_219BF44E4();
}

uint64_t sub_219874EB4()
{
  sub_219BF4944();
  swift_unknownObjectRetain();

  return sub_219BF4924();
}

uint64_t sub_219874F0C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = a2(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  sub_219BF4284();
  a3(0);
  v10 = sub_219BF07D4();
  a4(v10);
  (*(v7 + 8))(v9, v6);
  return sub_219BF4274();
}

uint64_t sub_219875020(uint64_t a1, void (*a2)(void))
{
  v3 = sub_219BF0AC4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v21 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v21 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v21[1] = sub_219BF4814();
  a2(0);
  sub_219BF07D4();
  v21[0] = sub_219BF0AA4();
  v18 = *(v4 + 8);
  v18(v17, v3);
  sub_219BF07D4();
  sub_219BF0A84();
  v18(v15, v3);
  sub_219BF07D4();
  sub_219BF0A54();
  v18(v12, v3);
  sub_219BF07D4();
  sub_219BF0A94();
  v18(v9, v3);
  v19 = v22;
  sub_219BF07D4();
  sub_219BF0A24();
  v18(v19, v3);
  return sub_219BF4804();
}

uint64_t sub_219875290(uint64_t a1, void (*a2)(void))
{
  v3 = sub_219BF0B74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v21 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v21 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v21 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v21[1] = sub_219BF4874();
  a2(0);
  sub_219BF07D4();
  v21[0] = sub_219BF0B44();
  v18 = *(v4 + 8);
  v18(v17, v3);
  sub_219BF07D4();
  sub_219BF0B14();
  v18(v15, v3);
  sub_219BF07D4();
  sub_219BF0B64();
  v18(v12, v3);
  sub_219BF07D4();
  sub_219BF0AD4();
  v18(v9, v3);
  v19 = v22;
  sub_219BF07D4();
  sub_219BF0B04();
  v18(v19, v3);
  return sub_219BF4864();
}

uint64_t sub_219875500()
{
  sub_219BF4814();
  sub_21987A35C(0, &qword_280E90E40, sub_2189699BC, sub_218969A10);
  sub_219BF07D4();
  swift_unknownObjectRetain();
  sub_218969A64(v11);
  sub_219BF07D4();
  sub_2187B14CC(&v10, v8, &unk_27CC20250, &qword_280E8FD20);
  sub_218969A64(v9);
  sub_219BF07D4();
  sub_2187B14CC(&v7, v5, &unk_27CC20260, &qword_280E901E0);
  sub_218969A64(v6);
  sub_219BF07D4();
  sub_2187B14CC(&v4, v2, &unk_27CC20270, &qword_280E8FD00);
  sub_218969A64(v3);
  sub_219BF07D4();
  sub_218969A64(v1);
  return sub_219BF4804();
}

uint64_t sub_21987568C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 level];
  if (result > 4)
  {
    switch(result)
    {
      case 7:
        result = [a1 difficultyIndex];
        v5 = 3;
        goto LABEL_11;
      case 6:
        result = [a1 difficultyIndex];
        v5 = 2;
        goto LABEL_11;
      case 5:
        result = [a1 difficultyIndex];
        v5 = 1;
        goto LABEL_11;
    }

LABEL_9:
    result = 0;
    v5 = -1;
    goto LABEL_11;
  }

  if ((result - 2) >= 3)
  {
    goto LABEL_9;
  }

  v5 = 4;
LABEL_11:
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

void sub_219875748(void *a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  sub_218FC38D0();
  MEMORY[0x28223BE20](v10 - 8);
  v75 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219874C70();
  MEMORY[0x28223BE20](v12 - 8);
  v74 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219874CF4();
  MEMORY[0x28223BE20](v14 - 8);
  v73 = v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FC3A6C();
  MEMORY[0x28223BE20](v16 - 8);
  v72 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FC3B10();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219876104(a3, a2, a4);
  v83 = v21;
  sub_21987568C(a1, &v78);
  LODWORD(v77) = v79;
  if (v79 == 255)
  {
    goto LABEL_25;
  }

  v69 = a2;
  v76 = v78;
  v22 = [a1 title];
  if (v22)
  {
    v23 = v22;
    v24 = sub_219BF5414();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v68 = a3;
  v27 = [a1 icon];
  if (v27)
  {
    v28 = v27;
    v29 = sub_219BF5414();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  if (qword_280EE3868 != -1)
  {
    swift_once();
  }

  v70 = qword_280EE3878;
  v81 = v76;
  v82 = v77;

  swift_unknownObjectRetain();
  v32 = PuzzleArchiveFilterOption.identifier.getter();
  v66 = v33;
  v67 = v32;
  LOBYTE(v78) = 0;
  v34 = swift_allocObject();
  v71 = a5;
  *(v34 + 16) = v24;
  *(v34 + 24) = v26;
  sub_218728B2C();
  sub_219BE8B74();
  LOBYTE(v78) = 0;
  sub_2186E3374();
  v65 = v35;
  sub_219BE8B74();
  LOBYTE(v78) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  v37 = sub_2186C6148(0, &qword_280E8DA68);
  v38 = v73;
  v64 = v37;
  sub_219BE8B74();
  sub_219874D78(0, &unk_27CC145A0, &qword_280E8DA68, 0x277D755B8, sub_2186C6148);
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v63 = v39;
  v62 = v41;
  v61 = v40 + 56;
  (v41)(v38, 0, 1);
  LOBYTE(v78) = 0;
  v42 = MEMORY[0x277D6D790];
  v43 = sub_2186CFDE4(0, &qword_27CC14590);
  v44 = v74;
  v60 = v43;
  sub_219BE8B74();
  sub_219874D78(0, &qword_27CC14588, &qword_27CC14590, v42, sub_2186CFDE4);
  v46 = v45;
  v47 = *(v45 - 8);
  v59 = *(v47 + 56);
  v58[1] = v47 + 56;
  v59(v44, 0, 1, v45);
  sub_219BE77A4();
  v78 = v76;
  LOBYTE(v79) = v77;
  v80 = v71;
  sub_219BE6684();
  swift_allocObject();
  v67 = v20;
  sub_219BE65B4();
  if (v21 >> 62)
  {
    if (!sub_219BF7214())
    {
LABEL_12:
      v78 = v76;
      LOBYTE(v79) = v77;
      PuzzleArchiveFilterOption.groupType.getter(&v81);
      if (v81 != 2)
      {
        v77 = v81 & 1;
        if (v81)
        {
          v48 = 0x6C75636966666964;
        }

        else
        {
          v48 = 0x7461745379616C70;
        }

        v78 = 544829025;
        v79 = 0xE400000000000000;
        if (v81)
        {
          v49 = 0xEA00000000007974;
        }

        else
        {
          v49 = 0xE900000000000065;
        }

        swift_unknownObjectRetain();
        MEMORY[0x21CECC330](v48, v49);

        v76 = v78;
        v66 = v79;
        LOBYTE(v78) = 0;
        v50 = swift_allocObject();
        *(v50 + 16) = 0;
        *(v50 + 24) = 0;
        sub_219BE8B74();
        LOBYTE(v78) = 0;
        sub_219BE8B74();
        LOBYTE(v78) = 0;
        v51 = swift_allocObject();
        *(v51 + 16) = 0;
        *(v51 + 24) = 0;
        v52 = v73;
        sub_219BE8B74();
        v62(v52, 0, 1, v63);
        LOBYTE(v78) = 0;
        v53 = v74;
        sub_219BE8B74();
        v59(v53, 0, 1, v46);
        sub_219BE77A4();
        v78 = v77;
        LOBYTE(v79) = 0;
        v80 = v71;
        swift_allocObject();
        sub_219BE65B4();

        MEMORY[0x21CECC690](v54);
        if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
      }
    }
  }

  else if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  MEMORY[0x21CECC690](v55);
  if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();

  v21 = v83;
  a3 = v68;
  a2 = v69;
LABEL_25:
  v56 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = *a3;
  *a3 = 0x8000000000000000;
  sub_21948EE70(v21, v56, isUniquelyReferenced_nonNull_native);

  *a3 = v78;
}

uint64_t sub_219876104(uint64_t a1, void *a2, void *a3)
{
  if (*(*a1 + 16))
  {
    sub_21931EE2C(a2);
    if (v5)
    {
    }
  }

  v7 = a2;
  MEMORY[0x21CECC690]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  return MEMORY[0x277D84F90];
}

uint64_t sub_2198761B8()
{
  sub_219BF4284();
  sub_21987A35C(0, &qword_27CC0FAE0, sub_218972EAC, sub_218972F00);
  sub_219BF07D4();
  return sub_219BF4274();
}

uint64_t sub_219876240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v27 = a1;
  sub_21987A35C(0, &qword_27CC0FAE0, sub_218972EAC, sub_218972F00);
  v7 = v6;
  v8 = *(v6 - 8);
  v29 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v28 = v25 - v9;
  v10 = sub_219BE59F4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a4;
  v15 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 32))(v17, a2, a4);
  v18 = sub_219BF4F74();
  v19 = v27;
  sub_219BF07D4();
  *v14 = v31;
  v14[1] = 0;
  (*(v11 + 104))(v14, *MEMORY[0x277D31A10], v10);
  v25[1] = MEMORY[0x21CEBC780](v14, v18);

  (*(v11 + 8))(v14, v10);
  v20 = v28;
  (*(v8 + 16))(v28, v19, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v21, v20, v7);
  v23 = sub_219BE59A4();
  (*(v8 + 8))(v19, v7);
  (*(v15 + 8))(v17, v26);
  return v23;
}

uint64_t sub_219876644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[1] = a5;
  v35 = a3;
  v34 = sub_219BE59F4();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = (v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_219BEC504();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 32);
  v31[0] = a4;
  v18(v16, a2, a4);
  sub_2186EAD48();
  v20 = v19;
  sub_219BF07D4();
  v21 = sub_219BEC4F4();
  (*(v11 + 8))(v14, v10);
  v22 = sub_219BF4F74();
  swift_unknownObjectRetain();
  v23 = a1;
  v24 = sub_219BF07B4();
  *v9 = v21;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = v24;
  v9[4] = v25;
  v26 = v32;
  v27 = v34;
  (*(v32 + 104))(v9, *MEMORY[0x277D31A58], v34);
  MEMORY[0x21CEBC780](v9, v22);
  (*(v26 + 8))(v9, v27);
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  *(v28 + 24) = v22;
  v29 = sub_219BE59A4();
  (*(*(v20 - 8) + 8))(v23, v20);
  (*(v33 + 8))(v16, v31[0]);
  return v29;
}

uint64_t sub_2198769B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v46 = a6;
  v47 = a7;
  v40 = a4;
  v10 = a5(0);
  v44 = *(v10 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v43 = v37 - v11;
  v41 = sub_219BE59F4();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = (v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_219BF04A4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a3 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = *(v20 + 32);
  v38 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21(v38, a2, a3);
  v37[1] = sub_219BE5A14();
  sub_219BF07D4();
  v22 = sub_219BF03F4();
  v23 = v15 + 8;
  v24 = *(v15 + 8);
  v37[0] = v23;
  v24(v18, v14);
  v25 = sub_219BF4F74();
  v26 = sub_2194797A4(v25, v22);
  sub_219BF07D4();
  v27 = sub_219BF0404();
  v24(v18, v14);
  *v13 = v27;
  v13[1] = 0;
  v28 = v39;
  v29 = v41;
  (*(v39 + 104))(v13, *MEMORY[0x277D31A10], v41);
  MEMORY[0x21CEBC780](v13, v26);

  (*(v28 + 8))(v13, v29);
  v31 = v43;
  v30 = v44;
  (*(v44 + 16))(v43, a1, v10);
  v32 = v30;
  v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v34 = swift_allocObject();
  (*(v30 + 32))(v34 + v33, v31, v10);
  v35 = sub_219BE59A4();
  (*(v32 + 8))(a1, v10);
  (*(v42 + 8))(v38, a3);
  return v35;
}

uint64_t sub_219876F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v41 = a6;
  v42 = a7;
  v39 = a4;
  v37 = a1;
  v33 = a5(0);
  v9 = *(v33 - 8);
  v40 = *(v9 + 64);
  MEMORY[0x28223BE20](v33);
  v38 = v32 - v10;
  v36 = sub_219BF0B74();
  v11 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BE59F4();
  v14 = *(v35 - 8);
  v15 = MEMORY[0x28223BE20](v35);
  v17 = (v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 32);
  v34 = a3;
  v21(v20, a2, a3);
  v32[1] = sub_219BE5A14();
  v22 = v37;
  sub_219BF07D4();
  v23 = sub_219BF0B44();
  (*(v11 + 8))(v13, v36);
  *v17 = v23;
  v24 = v35;
  (*(v14 + 104))(v17, *MEMORY[0x277D31A40], v35);
  v25 = sub_219BF4F74();
  MEMORY[0x21CEBC780](v17, v25);

  (*(v14 + 8))(v17, v24);
  v26 = v38;
  v27 = v33;
  (*(v9 + 16))(v38, v22, v33);
  v28 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v29 = swift_allocObject();
  (*(v9 + 32))(v29 + v28, v26, v27);
  v30 = sub_219BE59A4();
  (*(v9 + 8))(v22, v27);
  (*(v18 + 8))(v20, v34);
  return v30;
}

uint64_t sub_2198772D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v65 = a3;
  v64 = sub_219BE59F4();
  v8 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v10 = (&v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21987A71C(0, &qword_280E90180, MEMORY[0x277D33E20], MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v58 - v16;
  v18 = *(a4 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a4;
  (*(v18 + 32))(v20, a2, a4);
  sub_219BF3B24();
  v22 = sub_219BF3484();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v17, 1, v22) != 1)
  {
    v61 = v18;
    v62 = a1;
    sub_21987AAC0(v17, v14, &qword_280E90180, MEMORY[0x277D33E20]);
    v26 = (*(v23 + 88))(v14, v22);
    if (v26 == *MEMORY[0x277D33DF0])
    {
      (*(v23 + 96))(v14, v22);
      v60 = *v14;
      v27 = *(v60 + 16);

      v28 = v20;
      v29 = v21;
      v30 = sub_219BF4F74();
      *v10 = v27;
      v31 = v64;
      (*(v8 + 104))(v10, *MEMORY[0x277D31A30], v64);

      MEMORY[0x21CEBC780](v10, v30);
      v32 = v17;
      v21 = v29;
      v20 = v28;

      (*(v8 + 8))(v10, v31);
    }

    else
    {
      if (v26 != *MEMORY[0x277D33E08])
      {
        v39 = *MEMORY[0x277D33DF8];
        v18 = v61;
        v59 = v17;
        if (v26 == v39)
        {
          (*(v23 + 96))(v14, v22);
          v60 = *v14;
          v40 = *(v60 + 16);

          v41 = sub_219BF4F74();
          *v10 = v40;
          v42 = v64;
          (*(v8 + 104))(v10, *MEMORY[0x277D31A48], v64);

          MEMORY[0x21CEBC780](v10, v41);

          (*(v8 + 8))(v10, v42);
        }

        else if (v26 == *MEMORY[0x277D33E00])
        {
          (*(v23 + 96))(v14, v22);
          v60 = *v14;
          v43 = *(v60 + 16);

          v44 = sub_219BF4F74();
          *v10 = v43;
          v45 = v64;
          (*(v8 + 104))(v10, *MEMORY[0x277D31A50], v64);

          MEMORY[0x21CEBC780](v10, v44);

          (*(v8 + 8))(v10, v45);
        }

        else if (v26 == *MEMORY[0x277D33E18])
        {
          (*(v23 + 96))(v14, v22);
          v60 = *v14;
          v46 = *(v60 + 16);

          v47 = sub_219BF4F74();
          *v10 = v46;
          v48 = v64;
          (*(v8 + 104))(v10, *MEMORY[0x277D31A70], v64);

          MEMORY[0x21CEBC780](v10, v47);

          (*(v8 + 8))(v10, v48);
        }

        else if (v26 == *MEMORY[0x277D33DE8])
        {
          (*(v23 + 96))(v14, v22);
          v60 = *v14;
          v49 = *(v60 + 16);

          v50 = sub_219BF4F74();
          *v10 = v49;
          v51 = v64;
          (*(v8 + 104))(v10, *MEMORY[0x277D31A08], v64);

          MEMORY[0x21CEBC780](v10, v50);

          (*(v8 + 8))(v10, v51);
        }

        else
        {
          if (v26 != *MEMORY[0x277D33E10])
          {
            v57 = sub_219BF3B34();
            (*(*(v57 - 8) + 8))(v62, v57);
            (*(v23 + 8))(v14, v22);
            goto LABEL_3;
          }

          (*(v23 + 96))(v14, v22);
          v60 = *v14;
          v52 = *(v60 + 16);

          v53 = sub_219BF4F74();
          *v10 = v52;
          v54 = v64;
          (*(v8 + 104))(v10, *MEMORY[0x277D31A68], v64);

          MEMORY[0x21CEBC780](v10, v53);

          (*(v8 + 8))(v10, v54);
        }

        v17 = v59;
        v25 = sub_219BE59A4();

        v55 = sub_219BF3B34();
        (*(*(v55 - 8) + 8))(v62, v55);

        goto LABEL_20;
      }

      (*(v23 + 96))(v14, v22);
      v60 = *v14;
      v33 = *(v60 + 16);

      v34 = v20;
      v35 = v21;
      v36 = sub_219BF4F74();
      *v10 = v33;
      v37 = v64;
      (*(v8 + 104))(v10, *MEMORY[0x277D31A60], v64);

      MEMORY[0x21CEBC780](v10, v36);
      v32 = v17;
      v21 = v35;
      v20 = v34;

      (*(v8 + 8))(v10, v37);
    }

    v17 = v32;
    v25 = sub_219BE59A4();

    v38 = sub_219BF3B34();
    (*(*(v38 - 8) + 8))(v62, v38);

    v18 = v61;
    goto LABEL_20;
  }

  v24 = sub_219BF3B34();
  (*(*(v24 - 8) + 8))(a1, v24);
LABEL_3:
  v25 = 0;
LABEL_20:
  sub_21987A6A8(v17, &qword_280E90180, MEMORY[0x277D33E20]);
  (*(v18 + 8))(v20, v21);
  return v25;
}