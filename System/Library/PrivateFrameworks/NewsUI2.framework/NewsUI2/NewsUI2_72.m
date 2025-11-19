uint64_t sub_218EC88B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IssueListTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218EC8924()
{
  result = qword_27CC130A8;
  if (!qword_27CC130A8)
  {
    type metadata accessor for ChannelIssuesViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC130A8);
  }

  return result;
}

uint64_t sub_218EC897C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218EC89DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for OfflineContentManager();
  result = sub_219BE1E24();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &off_282A8F218;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EC8A50@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E370);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBDA70);
  result = sub_219BE1E34();
  if (!v15[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E148);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB9620);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FB4BC(0, &unk_280E906F0, sub_2186FB5EC);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    MEMORY[0x28223BE20](v8);
    v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v11 + 16))(v10);
    v12 = sub_218ED0474(v5, v15, v6, *v10, v7);
    __swift_destroy_boxed_opaque_existential_1(v13);
    result = sub_2186D560C(&unk_280ED0B20, type metadata accessor for OfflineIssueManager);
    *a2 = v12;
    a2[1] = result;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218EC8D18(void *a1)
{
  v2 = sub_219BE5434();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218709AFC(0, &unk_280E91BA0, MEMORY[0x277D32020], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_219BEDA24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925E0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F618F0);
  v13 = *(v9 + 16);
  v29 = v11;
  v13(v11, v12, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186F7A08();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v27 = result;
  v28 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186EF32C(0, &unk_280E8F028, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D83940]);
  result = sub_219BE1E34();
  v16 = v31;
  if (!v31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_219BEE544();
  sub_219BE1E34();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v26 = v7;
  result = v19(v7, 1, v17);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v20 = v15;
  if (qword_280EE6028 != -1)
  {
    swift_once();
  }

  v21 = v28;
  v22 = __swift_project_value_buffer(v28, qword_280F62718);
  v23 = v30;
  (*(v3 + 16))(v30, v22, v21);
  sub_2186DB6BC();
  v24 = swift_allocObject();
  (*(v9 + 32))(v24 + qword_280ED32C0, v29, v8);
  v25 = v26;
  *(v24 + qword_280ED32C8) = v27;
  *(v24 + *(*v24 + 160)) = v20;
  *(v24 + *(*v24 + 168)) = v16;
  (*(v18 + 32))(v24 + *(*v24 + 176), v25, v17);
  (*(v3 + 32))(v24 + *(*v24 + 184), v23, v21);
  return v24;
}

id sub_218EC91D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 magazineFeedRules];
  *a2 = result;
  return result;
}

id sub_218EC9210@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 audioFeedRules];
  *a2 = result;
  return result;
}

uint64_t sub_218EC924C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBDA70);
  result = sub_219BE1E34();
  if (v7)
  {
    v4 = type metadata accessor for OfflineFeedPrimer();
    v5 = swift_allocObject();
    result = sub_2186CB1F0(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_282A2DA40;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EC9300(void *a1)
{
  sub_218D51E90();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_219BEE544();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E580);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186EF32C(0, &unk_280E8F028, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D83940]);
  result = sub_219BE1E34();
  v9 = v57;
  if (!v57)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedServiceContextFactory();
  result = sub_219BE1E24();
  v45 = result;
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E6754();
  result = sub_219BE1DE4();
  v44 = result;
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBADD0);
  result = sub_219BE1E34();
  if (!v56)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED0D40);
  result = sub_219BE1E34();
  if (!v54)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v43 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDD0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE73A0);
  result = sub_219BE1E34();
  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v48 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v11 = v8;
  v42 = v4;
  v47 = v3;
  swift_getKeyPath();
  sub_219BEE534();
  sub_2186EFEF0();
  v13 = v12;
  v14 = objc_allocWithZone(v12);
  v15 = MEMORY[0x277D85000];
  *&v14[*((*MEMORY[0x277D85000] & *v14) + 0xE8)] = 10;
  v16 = *((*v15 & *v14) + 0xF0);
  v46 = v6;
  if (qword_280E8E3C8 != -1)
  {
    swift_once();
  }

  v17 = qword_280E8E3D0;
  type metadata accessor for AssetDownloadQueue();
  swift_allocObject();
  v18 = v17;
  *&v14[v16] = sub_2187FB0F0(v18);
  sub_218951DB0();
  v20 = v19;
  v21 = sub_2186D560C(&qword_280EE5950, sub_218951DB0);
  v22 = sub_2186D560C(&qword_280EE5960, sub_218951DB0);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v20, v21, v22);
  type metadata accessor for MagazineFeedSectionDescriptor();
  type metadata accessor for MagazineFeedModel(0);
  sub_2186D560C(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
  sub_2186D560C(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
  sub_219BEB2D4();
  type metadata accessor for OfflineReadinessSection();
  sub_2186D560C(&unk_280EC41B0, type metadata accessor for OfflineReadinessSection);
  sub_2186D560C(&unk_280EC41C0, type metadata accessor for OfflineReadinessSection);
  sub_219BE2444();
  *&v14[*((*v15 & *v14) + 0x108)] = 0;
  v23 = *((*v15 & *v14) + 0x110);
  v24 = sub_219BDBD34();
  v25 = *(*(v24 - 8) + 56);
  v25(&v14[v23], 1, 1, v24);
  v25(&v14[*((*v15 & *v14) + 0x118)], 1, 1, v24);
  *&v14[*((*v15 & *v14) + 0xA0)] = xmmword_219C43520;
  *&v14[*((*v15 & *v14) + 0xA8)] = v11;
  v41 = v11;
  *&v14[*((*v15 & *v14) + 0xB0)] = v43;
  *&v14[*((*v15 & *v14) + 0xB8)] = v45;
  *&v14[*((*v15 & *v14) + 0xC0)] = v44;
  sub_218718690(v55, &v14[*((*v15 & *v14) + 0xC8)]);
  sub_218718690(v53, &v14[*((*v15 & *v14) + 0xD0)]);
  *&v14[*((*v15 & *v14) + 0xD8)] = v48;
  v26 = v42;
  (*(v42 + 16))(&v14[*((*v15 & *v14) + 0xE0)], v46, v47);
  v50.receiver = v14;
  v50.super_class = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v27 = objc_msgSendSuper2(&v50, sel_init);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21870F474(0, qword_280E92828, MEMORY[0x277D84F78] + 8, type metadata accessor for Throttler);
  v29 = swift_allocObject();
  *(v29 + 48) = 0;
  *(v29 + 16) = 0x4014000000000000;
  *(v29 + 24) = v18;
  *(v29 + 32) = sub_218ED12C4;
  *(v29 + 40) = v28;
  *(v27 + *((*v15 & *v27) + 0x108)) = v29;
  v30 = v27;

  v31 = *((*v15 & *v30) + 0xF0);
  v32 = *(v30 + v31);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = *(v32 + 88);
  *(v32 + 88) = sub_218ED0EF0;
  *(v32 + 96) = v33;

  sub_2187FABEC(v34);

  v35 = *(v30 + v31);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = *(v35 + 104);
  *(v35 + 104) = sub_218ED1AF8;
  *(v35 + 112) = v36;

  sub_2187FABEC(v37);

  __swift_project_boxed_opaque_existential_1(v53, v54);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21870BEBC(&unk_282A24BE8, sub_218ED1308, v38);

  __swift_project_boxed_opaque_existential_1(v51, v52);
  sub_2186D560C(&unk_280E94A70, sub_2186EFEF0);
  v39 = v30;
  sub_219BE29A4();

  __swift_destroy_boxed_opaque_existential_1(v49);
  [swift_unknownObjectRetain() addObserver_];
  swift_unknownObjectRelease();

  *(swift_allocObject() + 16) = v39;
  v40 = v39;
  sub_219BE3494();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v26 + 8))(v46, v47);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v53);
  return v40;
}

void sub_218EC9F8C(void *a1)
{
  sub_21898BCDC();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218709AFC(0, &unk_280E91BA0, MEMORY[0x277D32020], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E560);
  v8 = sub_219BE1E24();
  if (!v8)
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = v8;
  sub_21988E274(&v72);
  v10 = v73;
  if (v73 == 11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v72;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E580);
  v12 = sub_219BE1E24();
  if (!v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186EF32C(0, &unk_280E8F028, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D83940]);
  sub_219BE1E34();
  v57 = v71;
  if (!v71)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v55 = v4;
  v56 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagFeedServiceContextFactory();
  v54 = sub_219BE1E24();
  if (!v54)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21988E41C();
  if (!v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_2186D6034();
  v15 = sub_219BE1DE4();

  if (!v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBADD0);
  sub_219BE1E34();
  if (!v70)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v53 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED0D40);
  sub_219BE1E34();
  if (!v68)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDD0);
  v16 = sub_219BE1E24();
  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE73A0);
  sub_219BE1E34();
  if (!v66)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  if (!sub_219BE1E24())
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_21988E608(v7);
  swift_unknownObjectRelease();
  v18 = sub_219BEE544();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v58 = v19;
  v59 = v18;
  v60 = v17;
  v61 = v13;
  v52 = v9;
  v62 = v7;
  sub_2186F096C();
  v51 = v20;
  v21 = objc_allocWithZone(v20);
  v22 = MEMORY[0x277D85000];
  *&v21[*((*MEMORY[0x277D85000] & *v21) + 0xE8)] = 10;
  v23 = *((*v22 & *v21) + 0xF0);
  if (qword_280E8E3C8 != -1)
  {
    swift_once();
  }

  v24 = qword_280E8E3D0;
  type metadata accessor for AssetDownloadQueue();
  swift_allocObject();
  v25 = v24;
  *&v21[v23] = sub_2187FB0F0(v25);
  sub_218ED0F98(0, &qword_280EE5840, MEMORY[0x277D6D710]);
  v27 = v26;
  v28 = sub_2187FB184(&qword_280EE5870, &qword_280EE5840, sub_218ED0F98);
  v29 = sub_2187FB184(&qword_280EE5880, &qword_280EE5840, sub_218ED0F98);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v27, v28, v29);
  type metadata accessor for TagFeedModel(0);
  sub_2186F7410();
  sub_2186D560C(&unk_280EDE820, type metadata accessor for TagFeedModel);
  sub_219BEB2D4();
  type metadata accessor for OfflineReadinessSection();
  sub_2186D560C(&unk_280EC41B0, type metadata accessor for OfflineReadinessSection);
  sub_2186D560C(&unk_280EC41C0, type metadata accessor for OfflineReadinessSection);
  sub_219BE2444();
  *&v21[*((*v22 & *v21) + 0x108)] = 0;
  v30 = *((*v22 & *v21) + 0x110);
  v31 = sub_219BDBD34();
  v32 = *(*(v31 - 8) + 56);
  v32(&v21[v30], 1, 1, v31);
  v32(&v21[*((*v22 & *v21) + 0x118)], 1, 1, v31);
  v33 = &v21[*((*v22 & *v21) + 0xA0)];
  v34 = v56;
  *v33 = v56;
  v33[1] = v10;
  *&v21[*((*v22 & *v21) + 0xA8)] = v61;
  *&v21[*((*v22 & *v21) + 0xB0)] = v57;
  *&v21[*((*v22 & *v21) + 0xB8)] = v54;
  *&v21[*((*v22 & *v21) + 0xC0)] = v53;
  sub_218718690(v69, &v21[*((*v22 & *v21) + 0xC8)]);
  sub_218718690(v67, &v21[*((*v22 & *v21) + 0xD0)]);
  *&v21[*((*v22 & *v21) + 0xD8)] = v60;
  (*(v58 + 16))(&v21[*((*v22 & *v21) + 0xE0)], v62, v59);
  sub_218ED0E9C(v34, v10);
  v64.receiver = v21;
  v64.super_class = v51;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v35 = objc_msgSendSuper2(&v64, sel_init);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21870F474(0, qword_280E92828, MEMORY[0x277D84F78] + 8, type metadata accessor for Throttler);
  v37 = swift_allocObject();
  *(v37 + 48) = 0;
  *(v37 + 16) = 0x4014000000000000;
  *(v37 + 24) = v25;
  *(v37 + 32) = sub_218ED0EAC;
  *(v37 + 40) = v36;
  *(v35 + *((*v22 & *v35) + 0x108)) = v37;
  v38 = v35;

  v39 = *((*v22 & *v38) + 0xF0);
  v40 = *(v38 + v39);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = *(v40 + 88);
  *(v40 + 88) = sub_218ED0EF0;
  *(v40 + 96) = v41;

  sub_2187FABEC(v42);

  v43 = *(v38 + v39);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = *(v43 + 104);
  *(v43 + 104) = sub_218ED0F34;
  *(v43 + 112) = v44;

  sub_2187FABEC(v45);

  __swift_project_boxed_opaque_existential_1(v67, v68);
  v63[0] = v34;
  v63[1] = v10;
  LOBYTE(v45) = sub_2187FB8D0();
  sub_218ED0F50(v34, v10);
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21870F474(0, &qword_280E8BC30, &type metadata for OfflineFeature, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = v45;

  sub_21870BEBC(inited, sub_218ED0F60, v46);

  swift_setDeallocating();

  __swift_project_boxed_opaque_existential_1(v65, v66);
  sub_2186D560C(qword_280E94AE8, sub_2186F096C);
  v48 = v38;
  sub_219BE29A4();

  __swift_destroy_boxed_opaque_existential_1(v63);
  [swift_unknownObjectRetain() addObserver_];
  swift_unknownObjectRelease();

  *(swift_allocObject() + 16) = v48;
  v49 = v48;
  sub_219BE3494();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v58 + 8))(v62, v59);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_218ECADA4(void *a1)
{
  sub_218BE3944();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_219BEE544();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E580);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186EF32C(0, &unk_280E8F028, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType, MEMORY[0x277D83940]);
  result = sub_219BE1E34();
  v9 = v57;
  if (!v57)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioFeedServiceContextFactory();
  result = sub_219BE1E24();
  v45 = result;
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186E6A1C();
  result = sub_219BE1DE4();
  v44 = result;
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBADD0);
  result = sub_219BE1E34();
  if (!v56)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED0D40);
  result = sub_219BE1E34();
  if (!v54)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v43 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDD0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE73A0);
  result = sub_219BE1E34();
  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v48 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v11 = v8;
  v42 = v4;
  v47 = v3;
  swift_getKeyPath();
  sub_219BEE534();
  sub_2186F12DC();
  v13 = v12;
  v14 = objc_allocWithZone(v12);
  v15 = MEMORY[0x277D85000];
  *&v14[*((*MEMORY[0x277D85000] & *v14) + 0xE8)] = 10;
  v16 = *((*v15 & *v14) + 0xF0);
  v46 = v6;
  if (qword_280E8E3C8 != -1)
  {
    swift_once();
  }

  v17 = qword_280E8E3D0;
  type metadata accessor for AssetDownloadQueue();
  swift_allocObject();
  v18 = v17;
  *&v14[v16] = sub_2187FB0F0(v18);
  sub_218953904();
  v20 = v19;
  v21 = sub_2186D560C(&qword_280EE57F0, sub_218953904);
  v22 = sub_2186D560C(&qword_280EE5800, sub_218953904);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v20, v21, v22);
  type metadata accessor for AudioFeedSectionDescriptor();
  type metadata accessor for AudioFeedModel(0);
  sub_2186D560C(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
  sub_2186D560C(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
  sub_219BEB2D4();
  type metadata accessor for OfflineReadinessSection();
  sub_2186D560C(&unk_280EC41B0, type metadata accessor for OfflineReadinessSection);
  sub_2186D560C(&unk_280EC41C0, type metadata accessor for OfflineReadinessSection);
  sub_219BE2444();
  *&v14[*((*v15 & *v14) + 0x108)] = 0;
  v23 = *((*v15 & *v14) + 0x110);
  v24 = sub_219BDBD34();
  v25 = *(*(v24 - 8) + 56);
  v25(&v14[v23], 1, 1, v24);
  v25(&v14[*((*v15 & *v14) + 0x118)], 1, 1, v24);
  *&v14[*((*v15 & *v14) + 0xA0)] = xmmword_219C43570;
  *&v14[*((*v15 & *v14) + 0xA8)] = v11;
  v41 = v11;
  *&v14[*((*v15 & *v14) + 0xB0)] = v43;
  *&v14[*((*v15 & *v14) + 0xB8)] = v45;
  *&v14[*((*v15 & *v14) + 0xC0)] = v44;
  sub_218718690(v55, &v14[*((*v15 & *v14) + 0xC8)]);
  sub_218718690(v53, &v14[*((*v15 & *v14) + 0xD0)]);
  *&v14[*((*v15 & *v14) + 0xD8)] = v48;
  v26 = v42;
  (*(v42 + 16))(&v14[*((*v15 & *v14) + 0xE0)], v46, v47);
  v50.receiver = v14;
  v50.super_class = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v27 = objc_msgSendSuper2(&v50, sel_init);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21870F474(0, qword_280E92828, MEMORY[0x277D84F78] + 8, type metadata accessor for Throttler);
  v29 = swift_allocObject();
  *(v29 + 48) = 0;
  *(v29 + 16) = 0x4014000000000000;
  *(v29 + 24) = v18;
  *(v29 + 32) = sub_218ED0928;
  *(v29 + 40) = v28;
  *(v27 + *((*v15 & *v27) + 0x108)) = v29;
  v30 = v27;

  v31 = *((*v15 & *v30) + 0xF0);
  v32 = *(v30 + v31);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = *(v32 + 88);
  *(v32 + 88) = sub_218ED096C;
  *(v32 + 96) = v33;

  sub_2187FABEC(v34);

  v35 = *(v30 + v31);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = *(v35 + 104);
  *(v35 + 104) = sub_218ED1AF8;
  *(v35 + 112) = v36;

  sub_2187FABEC(v37);

  __swift_project_boxed_opaque_existential_1(v53, v54);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21870BEBC(&unk_282A24C10, sub_218ED09B0, v38);

  __swift_project_boxed_opaque_existential_1(v51, v52);
  sub_2186D560C(&unk_280E94AC0, sub_2186F12DC);
  v39 = v30;
  sub_219BE29A4();

  __swift_destroy_boxed_opaque_existential_1(v49);
  [swift_unknownObjectRetain() addObserver_];
  swift_unknownObjectRelease();

  *(swift_allocObject() + 16) = v39;
  v40 = v39;
  sub_219BE3494();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v26 + 8))(v46, v47);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v51);
  __swift_destroy_boxed_opaque_existential_1(v53);
  return v40;
}

uint64_t sub_218ECBB38(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2();
    if (!v7)
    {
      v7 = a3();
      if (!v7)
      {
        sub_21870F474(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
        swift_allocObject();
        v7 = sub_219BE3014();
      }
    }

    v8 = v7;

    return v8;
  }

  else
  {
    sub_21870F474(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

void sub_218ECBC44()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + *((*MEMORY[0x277D85000] & *Strong) + 0x108));
    v2 = Strong;

    if (v1)
    {
      if (*(v1 + 48) == 1)
      {
        *(v1 + 49) = 1;
      }

      else
      {
        *(v1 + 48) = 1;
        sub_219BE3204();

        v3 = sub_219BE2E54();
        sub_219BE3024();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_218ECBD54()
{
  v0 = sub_219BE5434();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_2187FB8F4(v3);

    v6 = sub_219BE5414();
    v7 = sub_219BF6214();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2186C1000, v6, v7, "Offline Readiness processor finished prefetching assets", v8, 2u);
      MEMORY[0x21CECF960](v8, -1, -1);
    }

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_218ECBEBC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    *(swift_allocObject() + 16) = result;
    v2 = v1;
    sub_219BE3494();
  }

  return result;
}

void sub_218ECC1C0(uint64_t a1, uint64_t (*a2)(void, uint64_t, void), uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9, char *a10)
{
  v174 = a8;
  v185 = a7;
  v193 = a5;
  v192 = a4;
  v14 = v10;
  ObjectType = swift_getObjectType();
  v197 = type metadata accessor for OfflineReadinessSection();
  v195 = *(v197 - 8);
  v15 = MEMORY[0x28223BE20](v197);
  v189 = (&v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v199 = &v164 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v194 = &v164 - v20;
  MEMORY[0x28223BE20](v19);
  v196 = &v164 - v21;
  sub_2186EB77C();
  v188 = v22;
  v183 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v180 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DB874(0, &qword_280E8D520, sub_2186EB77C, sub_218ED0A28, MEMORY[0x277D84310]);
  v178 = v24;
  MEMORY[0x28223BE20](v24);
  v198 = (&v164 - v25);
  v190 = sub_219BE5434();
  v191 = *(v190 - 8);
  v26 = MEMORY[0x28223BE20](v190);
  v171 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v176 = &v164 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v177 = &v164 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v175 = &v164 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v164 - v34;
  sub_218709AFC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v37 = MEMORY[0x28223BE20](v36 - 8);
  v172 = &v164 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v164 - v39;
  v187 = sub_219BDBD34();
  v186 = *(v187 - 8);
  v41 = MEMORY[0x28223BE20](v187);
  v182 = &v164 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v181 = &v164 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v164 - v45;
  v47 = a2(0, a1, MEMORY[0x277D6EC60]);
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v164 - v49;
  v51 = *((*MEMORY[0x277D85000] & *v14) + 0xF8);
  swift_beginAccess();
  v52 = v14 + v51;
  v53 = v14;
  (*(v48 + 16))(v50, v52, v47);
  v54 = a3(0);
  v55 = sub_2186D560C(v192, v193);
  v56 = sub_219BEB284();
  if ((~v56 & 0xF000000000000007) == 0)
  {
    (*(v48 + 8))(v50, v47);
    sub_2187FB8F4(v35);
    v57 = sub_219BE5414();
    v58 = sub_219BF6214();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2186C1000, v57, v58, "Offline Readiness processor will not adopt because there's no root cursor container", v59, 2u);
      MEMORY[0x21CECF960](v59, -1, -1);
    }

    (*(v191 + 8))(v35, v190);
    return;
  }

  v60 = v56;
  v61 = sub_219BEE774();
  v185(v60);
  (*(v48 + 8))(v50, v47);
  v170 = v61;
  v169 = v54;
  v168 = v55;
  sub_219BEE7C4();
  v62 = MEMORY[0x277D85000];
  v63 = *((*MEMORY[0x277D85000] & *v53) + 0x110);
  swift_beginAccess();
  v179 = v53;
  sub_2187D96F4(v53 + v63, v40);
  v64 = v186;
  v65 = v187;
  v66 = (*(v186 + 48))(v40, 1, v187);
  v184 = v46;
  if (v66 == 1)
  {
    v175 = v63;
    v67 = v64;
    sub_2189DD39C(v40);
  }

  else
  {
    v68 = v181;
    (*(v64 + 32))(v181, v40, v65);
    sub_2186D560C(&qword_280EE9C90, MEMORY[0x277CC9578]);
    if ((sub_219BF5334() & 1) == 0)
    {
      v98 = v175;
      sub_2187FB8F4(v175);
      v99 = sub_219BE5414();
      v100 = sub_219BF6214();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&dword_2186C1000, v99, v100, "Offline Readiness processor will not adopt because the blueprint isn't newer than what we last adopted", v101, 2u);
        MEMORY[0x21CECF960](v101, -1, -1);
      }

      (*(v191 + 8))(v98, v190);
      v102 = *(v64 + 8);
      v102(v68, v65);
      v102(v184, v65);
      return;
    }

    v175 = v63;
    v67 = v64;
    (*(v64 + 8))(v68, v65);
  }

  v69 = v179;
  v70 = (v179 + *((*v62 & *v179) + 0xC8));
  v71 = v70[3];
  v72 = v70[4];
  __swift_project_boxed_opaque_existential_1(v70, v71);
  v73 = (v69 + *((*v62 & *v69) + 0xA0));
  v74 = v73[1];
  v202 = *v73;
  v203 = v74;
  v75 = *(v72 + 72);
  sub_218720448(v202, v74);
  v76 = v182;
  v75(&v202, v71, v72);
  sub_218720434(v202, v203);
  sub_2186D560C(&qword_280EE9C90, MEMORY[0x277CC9578]);
  v77 = sub_219BF5334();
  v78 = *(v67 + 8);
  v182 = (v67 + 8);
  v181 = v78;
  (v78)(v76, v65);
  v79 = v194;
  if ((v77 & 1) == 0)
  {
    v94 = v177;
    sub_2187FB8F4(v177);
    v95 = sub_219BE5414();
    v96 = sub_219BF6214();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_2186C1000, v95, v96, "Offline Readiness processor will not adopt because the blueprint isn't newer than the last rebuild", v97, 2u);
      MEMORY[0x21CECF960](v97, -1, -1);
    }

    (*(v191 + 8))(v94, v190);
    (v181)(v184, v65);
    return;
  }

  v80 = swift_allocObject();
  v177 = v80;
  *(v80 + 16) = MEMORY[0x277D84F90];
  v81 = (v80 + 16);
  v82 = *((*v62 & *v69) + 0x100);
  swift_beginAccess();
  v83 = v183;
  v84 = v183 + 16;
  v85 = *(v183 + 16);
  v167 = v82;
  v86 = v69 + v82;
  v87 = v180;
  v88 = v188;
  v85(v180, v86, v188);
  v89 = v198;
  v166 = v84;
  v165 = v85;
  v85(v198, v87, v88);
  v90 = v178[9];
  v91 = sub_218ED0A28();
  sub_219BF5DF4();
  v92 = *(v83 + 8);
  v183 = v83 + 8;
  v178 = v92;
  (v92)(v87, v88);
  sub_219BF5E84();
  v93 = *(v90 + v89) == v202;
  v192 = v81;
  v193 = v91;
  if (v93)
  {
LABEL_12:
    sub_218ED0C18(v89);
LABEL_48:
    v120 = v170;
    swift_retain_n();
    v121 = sub_219BEE764();

    v122 = v120;
    while ((~v121 & 0xF000000000000007) != 0)
    {
      v122 = v121;

      v121 = sub_219BEE764();
    }

    v123 = v187;
    v124 = v179;
    v125 = v177;
    if (v122 < 0)
    {

      if (*(*v192 + 16) < 0xAuLL)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v126 = sub_219BF08E4();

      v127 = *(*v192 + 16);
      if (v127 < 0xA)
      {
        if ((v126 & 1) == 0 || (v128 = v180, v165(v180, &v124[v167], v88), sub_219BF5DF4(), sub_219BF5E84(), v129 = sub_219BF5E74(), (v178)(v128, v88), v127 != v129))
        {
LABEL_54:
          v130 = v171;
          sub_2187FB8F4(v171);

          v131 = v124;
          v132 = sub_219BE5414();
          v133 = sub_219BF6214();
          if (os_log_type_enabled(v132, v133))
          {
            v134 = swift_slowAlloc();
            *v134 = 134349312;
            swift_beginAccess();
            *(v134 + 4) = *(*(v125 + 16) + 16);

            *(v134 + 12) = 2050;
            *(v134 + 14) = 10;

            _os_log_impl(&dword_2186C1000, v132, v133, "Offline Readiness processor will not adopt because there are not enough prefetched sections (count=%{public}ld, min=%{public}ld", v134, 0x16u);
            MEMORY[0x21CECF960](v134, -1, -1);
          }

          else
          {
          }

          (*(v191 + 8))(v130, v190);
          (v181)(v184, v123);

          return;
        }
      }
    }

    v135 = v186;
    v136 = v172;
    (*(v186 + 16))(v172, v184, v123);
    (*(v135 + 56))(v136, 0, 1, v123);
    v137 = v175;
    swift_beginAccess();
    sub_218B9E4D4(v136, &v124[v137]);
    swift_endAccess();
    v138 = v176;
    sub_2187FB8F4(v176);

    v139 = sub_219BE5414();
    v140 = sub_219BF6214();
    if (os_log_type_enabled(v139, v140))
    {
      LODWORD(v197) = v140;
      v198 = v139;
      v199 = a9;
      v141 = swift_slowAlloc();
      v196 = swift_slowAlloc();
      v201 = v196;
      *v141 = 134349314;
      v142 = v192;
      swift_beginAccess();
      v143 = *v142;
      v144 = *(*v142 + 16);
      *(v141 + 4) = v144;
      *(v141 + 12) = 2082;
      if (v144)
      {
        v194 = a10;
        v200 = MEMORY[0x277D84F90];

        sub_21870B65C(0, v144, 0);
        v145 = v200;
        v146 = (*(v195 + 80) + 32) & ~*(v195 + 80);
        v193 = v143;
        v147 = v143 + v146;
        v148 = *(v195 + 72);
        do
        {
          v149 = v189;
          sub_218ED0B50(v147, v189);
          v150 = *v149;
          v151 = v149[1];

          sub_218ED0E3C(v149, type metadata accessor for OfflineReadinessSection);
          v200 = v145;
          v153 = *(v145 + 16);
          v152 = *(v145 + 24);
          if (v153 >= v152 >> 1)
          {
            sub_21870B65C((v152 > 1), v153 + 1, 1);
            v145 = v200;
          }

          *(v145 + 16) = v153 + 1;
          v154 = v145 + 16 * v153;
          *(v154 + 32) = v150;
          *(v154 + 40) = v151;
          v147 += v148;
          --v144;
        }

        while (v144);

        v123 = v187;
        v124 = v179;
        v120 = v170;
      }

      else
      {

        v145 = MEMORY[0x277D84F90];
      }

      v156 = MEMORY[0x21CECC6D0](v145, MEMORY[0x277D837D0]);
      v158 = v157;

      v159 = sub_2186D1058(v156, v158, &v201);

      *(v141 + 14) = v159;
      v160 = v198;
      _os_log_impl(&dword_2186C1000, v198, v197, "Offline Readiness processor will adopt %{public}ld prefetched sections, ids=%{public}s", v141, 0x16u);
      v161 = v196;
      __swift_destroy_boxed_opaque_existential_1(v196);
      MEMORY[0x21CECF960](v161, -1, -1);
      MEMORY[0x21CECF960](v141, -1, -1);

      (*(v191 + 8))(v176, v190);
      v155 = v174;
    }

    else
    {

      (*(v191 + 8))(v138, v190);
      v155 = v174;
    }

    MEMORY[0x28223BE20](v155);
    *(&v164 - 4) = v124;
    *(&v164 - 3) = v120;
    *(&v164 - 2) = v192;
    sub_219BE3204();

    v162 = sub_219BE2E54();
    sub_219BE2F94();

    v163 = sub_219BE2E54();
    sub_219BE2FE4();

    (v181)(v184, v123);

    return;
  }

  v185 = v90;
  while (1)
  {
    v103 = sub_219BF5EC4();
    v104 = v196;
    sub_218ED0B50(v105, v196);
    v103(&v202, 0);
    sub_219BF5E94();
    sub_218ED0BB4(v104, v79);
    v106 = *(v79 + *(v197 + 24));
    v202 = MEMORY[0x277D84F90];
    if (v106 >> 62)
    {
      break;
    }

    v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v107)
    {
      goto LABEL_21;
    }

LABEL_36:
    v113 = MEMORY[0x277D84F90];
LABEL_37:
    v89 = v198;
    if (v113 < 0 || (v113 & 0x4000000000000000) != 0)
    {
      v119 = sub_219BF7214();

      if (v119)
      {
LABEL_47:
        sub_218ED0C18(v89);
        sub_218ED0E3C(v79, type metadata accessor for OfflineReadinessSection);
        goto LABEL_48;
      }
    }

    else
    {
      v114 = *(v113 + 16);

      if (v114)
      {
        goto LABEL_47;
      }
    }

    sub_218ED0B50(v79, v199);
    v115 = *v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v81 = v115;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v115 = sub_2191F971C(0, v115[2] + 1, 1, v115);
      *v81 = v115;
    }

    v118 = v115[2];
    v117 = v115[3];
    if (v118 >= v117 >> 1)
    {
      v115 = sub_2191F971C(v117 > 1, v118 + 1, 1, v115);
      *v81 = v115;
    }

    sub_218ED0E3C(v79, type metadata accessor for OfflineReadinessSection);
    v115[2] = v118 + 1;
    sub_218ED0BB4(v199, v115 + ((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v118);
    *v81 = v115;
    sub_219BF5E84();
    if (*(v185 + v89) == v202)
    {
      goto LABEL_12;
    }
  }

  v107 = sub_219BF7214();
  if (!v107)
  {
    goto LABEL_36;
  }

LABEL_21:
  v108 = 0;
  while (1)
  {
    if ((v106 & 0xC000000000000001) != 0)
    {
      v109 = MEMORY[0x21CECE0F0](v108, v106);
    }

    else
    {
      if (v108 >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_71;
      }

      v109 = *(v106 + 8 * v108 + 32);
    }

    v110 = v109;
    v111 = v108 + 1;
    if (__OFADD__(v108, 1))
    {
      break;
    }

    if ([v109 dataProvider])
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v112 = [v110 downloadError];
      if (v112 && (v112, ([v110 isDownloadFailureRecoverable] & 1) == 0))
      {
      }

      else
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }
    }

    ++v108;
    if (v111 == v107)
    {
      v113 = v202;
      v88 = v188;
      v81 = v192;
      v79 = v194;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
}

uint64_t sub_218ECDCBC(uint64_t a1, uint64_t (*a2)(void, uint64_t, void), void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12)
{
  v154 = a8;
  v165 = a7;
  v170 = a5;
  v169 = a4;
  v16 = v12;
  ObjectType = swift_getObjectType();
  sub_2186EB77C();
  v174 = v17;
  v161 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v162 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DB874(0, &qword_280E8D520, sub_2186EB77C, sub_218ED0A28, MEMORY[0x277D84310]);
  v160 = v19;
  MEMORY[0x28223BE20](v19);
  v173 = &v146 - v20;
  v177 = type metadata accessor for OfflineReadinessSection();
  v151 = *(v177 - 8);
  v21 = MEMORY[0x28223BE20](v177);
  v153 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v171 = (&v146 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v176 = &v146 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v175 = &v146 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v149 = &v146 - v30;
  v152 = v31;
  MEMORY[0x28223BE20](v29);
  v156 = &v146 - v32;
  v167 = sub_219BE5434();
  v168 = *(v167 - 8);
  v33 = MEMORY[0x28223BE20](v167);
  v158 = &v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v150 = (&v146 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v159 = &v146 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v157 = &v146 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v146 - v41;
  sub_218709AFC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v44 = MEMORY[0x28223BE20](v43 - 8);
  v148 = &v146 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = &v146 - v46;
  v172 = sub_219BDBD34();
  v166 = *(v172 - 8);
  v48 = MEMORY[0x28223BE20](v172);
  v164 = &v146 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v163 = &v146 - v51;
  MEMORY[0x28223BE20](v50);
  v53 = &v146 - v52;
  v54 = a2(0, a1, MEMORY[0x277D6EC60]);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = &v146 - v56;
  v58 = *((*MEMORY[0x277D85000] & *v16) + 0xF8);
  swift_beginAccess();
  (*(v55 + 16))(v57, &v16[v58], v54);
  a3(0);
  sub_2186D560C(v169, v170);
  v59 = sub_219BEB284();
  if ((~v59 & 0xF000000000000007) == 0)
  {
    (*(v55 + 8))(v57, v54);
    sub_2187FB8F4(v42);
    v60 = sub_219BE5414();
    v61 = sub_219BF6214();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2186C1000, v60, v61, "Offline Readiness processor will not micro-adopt because there's no root cursor container", v62, 2u);
      MEMORY[0x21CECF960](v62, -1, -1);
    }

    (*(v168 + 8))(v42, v167);
    return 0;
  }

  v63 = v59;
  v64 = sub_219BEE774();
  v165(v63);
  (*(v55 + 8))(v57, v54);
  v165 = v64;
  sub_219BEE7C4();
  v65 = MEMORY[0x277D85000];
  v66 = *((*MEMORY[0x277D85000] & *v16) + 0x118);
  swift_beginAccess();
  sub_2187D96F4(&v16[v66], v47);
  v67 = v166;
  v68 = v172;
  if ((*(v166 + 48))(v47, 1, v172) == 1)
  {
    v157 = v66;
    sub_2189DD39C(v47);
    v70 = v173;
    v69 = v174;
  }

  else
  {
    v71 = v163;
    (*(v67 + 32))(v163, v47, v68);
    sub_2186D560C(&qword_280EE9C90, MEMORY[0x277CC9578]);
    v72 = sub_219BF5334();
    v70 = v173;
    v69 = v174;
    if ((v72 & 1) == 0)
    {
      v99 = v157;
      sub_2187FB8F4(v157);
      v100 = sub_219BE5414();
      v101 = sub_219BF6214();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_2186C1000, v100, v101, "Offline Readiness processor will not micro-adopt because the blueprint isn't newer than what we last adopted", v102, 2u);
        MEMORY[0x21CECF960](v102, -1, -1);
      }

      (*(v168 + 8))(v99, v167);
      v103 = *(v67 + 8);
      v104 = v172;
      v103(v71, v172);
      v103(v53, v104);
      return 0;
    }

    v157 = v66;
    (*(v67 + 8))(v71, v68);
  }

  v73 = &v16[*((*v65 & *v16) + 0xC8)];
  v74 = v16;
  v75 = v65;
  v76 = *(v73 + 3);
  v77 = *(v73 + 4);
  __swift_project_boxed_opaque_existential_1(v73, v76);
  v78 = (v74 + *((*v75 & *v74) + 0xA0));
  v79 = v78[1];
  v178 = *v78;
  v179 = v79;
  v80 = *(v77 + 80);
  sub_218720448(v178, v79);
  v81 = v164;
  v80(&v178, v76, v77);
  sub_218720434(v178, v179);
  sub_2186D560C(&qword_280EE9C90, MEMORY[0x277CC9578]);
  v82 = v172;
  LOBYTE(v76) = sub_219BF5334();
  v83 = *(v166 + 8);
  v164 = (v166 + 8);
  v163 = v83;
  (v83)(v81, v82);
  if ((v76 & 1) == 0)
  {
    v95 = v159;
    sub_2187FB8F4(v159);
    v96 = sub_219BE5414();
    v97 = sub_219BF6214();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_2186C1000, v96, v97, "Offline Readiness processor will not micro-adopt because the blueprint isn't newer than the last update", v98, 2u);
      MEMORY[0x21CECF960](v98, -1, -1);
    }

    (*(v168 + 8))(v95, v167);
    v94 = v53;
    goto LABEL_17;
  }

  v159 = v53;
  v84 = *((*MEMORY[0x277D85000] & *v74) + 0x100);
  swift_beginAccess();
  v85 = *(v161 + 16);
  v147 = v74;
  v85(v162, v74 + v84, v69);
  sub_2186D560C(&qword_280EE7468, sub_2186EB77C);
  sub_219BF56A4();
  v86 = *(v160 + 36);
  v87 = sub_218ED0A28();
  sub_219BF5E84();
  v88 = v171;
  v89 = v176;
  if (*(v86 + v70) == v178)
  {
LABEL_11:
    sub_218ED0C18(v70);
    v90 = v158;
    sub_2187FB8F4(v158);
    v91 = sub_219BE5414();
    v92 = sub_219BF6214();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_2186C1000, v91, v92, "Offline Readiness processor will not micro-adopt because there are no hot-swappable sections", v93, 2u);
      MEMORY[0x21CECF960](v93, -1, -1);
    }

    (*(v168 + 8))(v90, v167);
    v94 = v159;
LABEL_17:
    (v163)(v94, v172);
    return 0;
  }

  v162 = a12;
  v161 = a11;
  v106 = &selRef_moveShortcutWithIdentifier_toIndex_;
  v160 = a10;
  v146 = a9;
  v170 = v86;
  v169 = v87;
  while (1)
  {
    v107 = sub_219BF5EC4();
    v108 = v175;
    sub_218ED0B50(v109, v175);
    v107(&v178, 0);
    sub_219BF5E94();
    sub_218ED0BB4(v108, v89);
    v110 = *(v89 + *(v177 + 24));
    v178 = MEMORY[0x277D84F90];
    if (v110 >> 62)
    {
      v111 = sub_219BF7214();
      if (v111)
      {
LABEL_26:
        v112 = 0;
        v88 = (v110 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v110 & 0xC000000000000001) != 0)
          {
            v113 = MEMORY[0x21CECE0F0](v112, v110);
          }

          else
          {
            if (v112 >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_52;
            }

            v113 = *(v110 + 8 * v112 + 32);
          }

          v114 = v113;
          v115 = v112 + 1;
          if (__OFADD__(v112, 1))
          {
            break;
          }

          if ([v113 dataProvider])
          {

            swift_unknownObjectRelease();
          }

          else
          {
            v116 = [v114 downloadError];
            if (v116 && (v116, ([v114 isDownloadFailureRecoverable] & 1) == 0))
            {
            }

            else
            {
              sub_219BF73D4();
              sub_219BF7414();
              sub_219BF7424();
              sub_219BF73E4();
            }
          }

          ++v112;
          if (v115 == v111)
          {
            v117 = v178;
            v88 = v171;
            v70 = v173;
            goto LABEL_42;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    else
    {
      v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v111)
      {
        goto LABEL_26;
      }
    }

    v117 = MEMORY[0x277D84F90];
LABEL_42:
    v89 = v176;
    v118 = v170;

    v119 = *(v117 + 16);

    if (!v119)
    {
      goto LABEL_45;
    }

LABEL_23:
    sub_218ED0E3C(v89, type metadata accessor for OfflineReadinessSection);
    sub_219BF5E84();
    if (*(v118 + v70) == v178)
    {
      goto LABEL_11;
    }
  }

  v120 = sub_219BF7214();

  if (v120)
  {
    goto LABEL_23;
  }

LABEL_45:
  if ((*(v89 + *(v177 + 32)) & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_218ED0C18(v70);
  v121 = v149;
  sub_218ED0BB4(v89, v149);
  v122 = v156;
  sub_218ED0BB4(v121, v156);
  v123 = v166;
  v124 = v148;
  v125 = v172;
  (*(v166 + 16))(v148, v159, v172);
  (*(v123 + 56))(v124, 0, 1, v125);
  v126 = v147;
  v127 = v157;
  swift_beginAccess();
  sub_218B9E4D4(v124, v126 + v127);
  swift_endAccess();
  v106 = v150;
  sub_2187FB8F4(v150);
  sub_218ED0B50(v122, v88);
  v112 = sub_219BE5414();
  v128 = sub_219BF6214();
  if (os_log_type_enabled(v112, v128))
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v178 = v130;
    *v129 = 136446210;
    v131 = v88;
    v132 = *v88;
    v133 = *(v131 + 8);

    sub_218ED0E3C(v131, type metadata accessor for OfflineReadinessSection);
    v134 = sub_2186D1058(v132, v133, &v178);

    *(v129 + 4) = v134;
    _os_log_impl(&dword_2186C1000, v112, v128, "Offline Readiness processor will micro-adopt section, id=%{public}s", v129, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v130);
    MEMORY[0x21CECF960](v130, -1, -1);
    MEMORY[0x21CECF960](v129, -1, -1);

    goto LABEL_54;
  }

LABEL_53:

  sub_218ED0E3C(v88, type metadata accessor for OfflineReadinessSection);
LABEL_54:
  v135 = (*(v168 + 8))(v106, v167);
  v136 = v151;
  MEMORY[0x28223BE20](v135);
  v137 = v165;
  *(&v146 - 4) = v147;
  *(&v146 - 3) = v137;
  v138 = v156;
  *(&v146 - 2) = v156;
  sub_219BE3204();
  v139 = v153;
  sub_218ED0B50(v138, v153);
  v140 = (*(v136 + 80) + 16) & ~*(v136 + 80);
  v141 = swift_allocObject();
  sub_218ED0BB4(v139, v141 + v140);
  v142 = sub_219BE2E54();
  sub_219BE2F94();

  sub_218ED0B50(v138, v139);
  v143 = swift_allocObject();
  sub_218ED0BB4(v139, v143 + v140);
  v144 = sub_219BE2E54();
  v145 = sub_219BE2FE4();

  (v163)(v159, v172);
  sub_218ED0E3C(v138, type metadata accessor for OfflineReadinessSection);
  return v145;
}

uint64_t sub_218ECF184(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v27 = a4;
  v28 = sub_219BE5434();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for OfflineFeedUpdateCondition(0);
  MEMORY[0x28223BE20](updated);
  v12 = (v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x277D85000];
  sub_218718690(a1 + *((*MEMORY[0x277D85000] & *a1) + 0xC8), v32);
  v14 = v34;
  v26 = v33;
  v25[1] = __swift_project_boxed_opaque_existential_1(v32, v33);
  v15 = (a1 + *((*v13 & *a1) + 0xA0));
  v16 = v15[1];
  v30 = *v15;
  v31 = v16;
  sub_218720448(v30, v16);
  sub_219BF5CF4();
  *v12 = v17;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v18 = *a3;
  v19 = *(a1 + *((*v13 & *a1) + 0xC0));

  sub_2187FB8F4(v9);
  v20 = v27(0);
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = v18;
  *(v21 + 4) = v19;
  (*(v7 + 32))(&v21[*(*v21 + 128)], v9, v28);
  v29[3] = v20;
  v29[4] = &off_282A73F58;
  v29[0] = v21;
  v22 = *(v14 + 48);

  v23 = v22(&v30, v12, v29, v26, v14);
  sub_218ED0E3C(v12, type metadata accessor for OfflineFeedUpdateCondition);
  sub_218720434(v30, v31);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v23;
}

uint64_t sub_218ECF454(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE5434();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FB8F4(v6);

  v7 = sub_219BE5414();
  v8 = sub_219BF6214();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    swift_beginAccess();
    *(v9 + 4) = *(*(a2 + 16) + 16);

    _os_log_impl(&dword_2186C1000, v7, v8, "Offline Readiness processor did adopt %{public}ld prefetched sections", v9, 0xCu);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  else
  {
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218ECF5F0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE5434();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FB8F4(v8);

  v9 = a1;
  v10 = sub_219BE5414();
  v11 = sub_219BF6214();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 134349314;
    swift_beginAccess();
    *(v12 + 4) = *(*(a3 + 16) + 16);

    *(v12 + 12) = 2114;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2186C1000, v10, v11, "Offline Readiness processor did NOT adopt %{public}ld prefetched sections, error=%{public}@", v12, 0x16u);
    sub_218962D30(v13);
    MEMORY[0x21CECF960](v13, -1, -1);
    MEMORY[0x21CECF960](v12, -1, -1);
  }

  else
  {
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218ECF7E8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v27 = a4;
  v28 = a2;
  v29 = sub_219BE5434();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OfflineReadinessSection();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D85000];
  v13 = (a1 + *((*MEMORY[0x277D85000] & *a1) + 0xC8));
  v14 = v13[4];
  v26 = v13[3];
  v25 = __swift_project_boxed_opaque_existential_1(v13, v26);
  v15 = (a1 + *((*v12 & *a1) + 0xA0));
  v16 = v15[1];
  v31 = *v15;
  v17 = v31;
  v32 = v16;
  sub_218ED0B50(a3, v11);
  v18 = *(a1 + *((*v12 & *a1) + 0xB8));
  v19 = *(a1 + *((*v12 & *a1) + 0xC0));
  sub_218720448(v17, v16);

  sub_2187FB8F4(v8);
  v20 = v27(0);
  v21 = swift_allocObject();
  *(v21 + 2) = v28;
  sub_218ED0BB4(v11, &v21[qword_27CC1B008]);
  *&v21[*(*v21 + 136)] = v18;
  *&v21[*(*v21 + 144)] = v19;
  (*(v6 + 32))(&v21[*(*v21 + 152)], v8, v29);
  v30[3] = v20;
  v30[4] = &off_282A73F48;
  v30[0] = v21;
  v22 = *(v14 + 64);

  v23 = v22(&v31, v30, v26, v14);
  sub_218720434(v31, v32);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v23;
}

uint64_t sub_218ECFAB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineReadinessSection();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_219BE5434();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FB8F4(v10);
  sub_218ED0B50(a2, v6);
  v11 = sub_219BE5414();
  v12 = sub_219BF6214();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v7;
    v15 = v14;
    v21 = v14;
    *v13 = 136446210;
    v20[1] = v2;
    v17 = *v6;
    v16 = v6[1];

    sub_218ED0E3C(v6, type metadata accessor for OfflineReadinessSection);
    v18 = sub_2186D1058(v17, v16, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2186C1000, v11, v12, "Offline Readiness processor did micro-adopt section, id=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x21CECF960](v15, -1, -1);
    MEMORY[0x21CECF960](v13, -1, -1);

    return (*(v8 + 8))(v10, v20[0]);
  }

  else
  {

    sub_218ED0E3C(v6, type metadata accessor for OfflineReadinessSection);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_218ECFD1C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OfflineReadinessSection();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_219BE5434();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FB8F4(v11);
  sub_218ED0B50(a3, v7);
  v12 = a1;
  v13 = sub_219BE5414();
  v14 = sub_219BF6214();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v9;
    v28 = v17;
    v18 = v17;
    *v15 = 136446466;
    v26 = v8;
    v20 = *v7;
    v19 = v7[1];

    sub_218ED0E3C(v7, type metadata accessor for OfflineReadinessSection);
    v21 = sub_2186D1058(v20, v19, &v28);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2114;
    v22 = a1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v23;
    *v16 = v23;
    _os_log_impl(&dword_2186C1000, v13, v14, "Offline Readiness processor did NOT adopt section, id=%{public}s, error=%{public}@", v15, 0x16u);
    sub_218962D30(v16);
    MEMORY[0x21CECF960](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x21CECF960](v18, -1, -1);
    MEMORY[0x21CECF960](v15, -1, -1);

    return (*(v27 + 8))(v11, v26);
  }

  else
  {

    sub_218ED0E3C(v7, type metadata accessor for OfflineReadinessSection);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_218ED0008(uint64_t a1)
{
  v2 = sub_219BED174();
  v23 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED1D4();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED214();
  v20 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  v18[1] = *(a1 + 24);
  sub_219BED1F4();
  sub_219BED244();
  v19 = *(v9 + 8);
  v19(v12, v8);
  aBlock[4] = sub_218ED0A20;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_45_0;
  v15 = _Block_copy(aBlock);

  sub_219BED1A4();
  v24 = MEMORY[0x277D84F90];
  sub_2186D560C(&qword_280E927E0, MEMORY[0x277D85198]);
  v16 = MEMORY[0x277D85198];
  sub_218709AFC(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21871C7D8(&qword_280E8EFA0, &qword_280E8EFB0, v16);
  sub_219BF7164();
  MEMORY[0x21CECD420](v14, v7, v4, v15);
  _Block_release(v15);
  (*(v23 + 8))(v4, v2);
  (*(v21 + 8))(v7, v22);
  v19(v14, v20);
}

void sub_218ED03B4(uint64_t a1)
{
  *(a1 + 48) = 0;
  v2 = *(a1 + 49);
  if (v2 == 1)
  {
    *(a1 + 48) = v2;
    sub_219BE3204();

    v3 = sub_219BE2E54();
    sub_219BE3024();
  }
}

char *sub_218ED0474(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for AppStorageLevelProvider();
  v41[3] = v10;
  v41[4] = &off_282A5DD20;
  v41[0] = a4;
  v11 = type metadata accessor for OfflineIssueManager();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v41, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v40[3] = v10;
  v40[4] = &off_282A5DD20;
  v40[0] = v17;
  *&v12[OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_backgroundAppRefreshChangeObserver] = 0;
  v18 = OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_issueIDsAvailableOffline;
  aBlock[0] = MEMORY[0x277D84FA0];
  sub_218709AFC(0, &qword_280EE7AA8, sub_2186E2394, MEMORY[0x277D6CB78]);
  swift_allocObject();
  *&v12[v18] = sub_219BE2174();
  *&v12[OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineIssueList] = a1;
  sub_218718690(a2, &v12[OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_offlineContentManager]);
  *&v12[OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_networkReachability] = a3;
  sub_218718690(v40, &v12[OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_storageLevelProvider]);
  *&v12[OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_issueOfflineManager] = a5;
  v19 = objc_opt_self();
  v37 = a1;
  v20 = a3;
  v21 = a5;
  v22 = [v19 sharedApplication];
  v23 = [v22 backgroundRefreshStatus];

  v12[OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_backgroundAppRefreshEnabled] = v23 != 1;
  v39.receiver = v12;
  v39.super_class = v11;
  v24 = objc_msgSendSuper2(&v39, sel_init);
  v25 = a2[3];
  v26 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  v27 = *(v26 + 8);
  v28 = v24;
  v27(v25, v26);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = sub_219BE2E54();
  sub_219BE21A4();

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v30 = [objc_opt_self() defaultCenter];
  v31 = *MEMORY[0x277D76638];
  v32 = [objc_opt_self() mainQueue];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_218ED1AB4;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218D2279C;
  aBlock[3] = &block_descriptor_157;
  v34 = _Block_copy(aBlock);

  v35 = [v30 addObserverForName:v31 object:0 queue:v32 usingBlock:v34];
  _Block_release(v34);

  __swift_destroy_boxed_opaque_existential_1(v40);
  *&v28[OBJC_IVAR____TtC7NewsUI219OfflineIssueManager_backgroundAppRefreshChangeObserver] = v35;

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v28;
}

void sub_218ED0A5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_2186D560C(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
    v8[3] = sub_2186D560C(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218ED0B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineReadinessSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218ED0BB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineReadinessSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218ED0C18(uint64_t a1)
{
  sub_2186DB874(0, &qword_280E8D520, sub_2186EB77C, sub_218ED0A28, MEMORY[0x277D84310]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218ED0CEC()
{
  if (!qword_27CC130B0)
  {
    type metadata accessor for AudioFeedServiceConfig();
    sub_2186E6A1C();
    type metadata accessor for AudioFeedServiceContextFactory();
    sub_2186EE3D4();
    sub_2186D560C(qword_280EAD8A8, type metadata accessor for AudioFeedServiceContextFactory);
    v0 = type metadata accessor for OfflineReadinessFeedMicroAdopter();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC130B0);
    }
  }
}

uint64_t sub_218ED0E3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218ED0E9C(uint64_t a1, unint64_t a2)
{
  if (a2 != 11)
  {
    return sub_218720448(a1, a2);
  }

  return a1;
}

uint64_t sub_218ED0F50(uint64_t a1, unint64_t a2)
{
  if (a2 != 11)
  {
    return sub_218720434(a1, a2);
  }

  return a1;
}

void sub_218ED0F98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_2186D560C(&unk_280EDE820, type metadata accessor for TagFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218ED10A8()
{
  if (!qword_27CC130C0)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_2186D6034();
    type metadata accessor for TagFeedServiceContextFactory();
    sub_2186DC784();
    sub_2186D560C(qword_280EB2240, type metadata accessor for TagFeedServiceContextFactory);
    v0 = type metadata accessor for OfflineReadinessFeedMicroAdopter();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC130C0);
    }
  }
}

void sub_218ED1234(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    v8 = type metadata accessor for OfflineReadinessFeedAdopter();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_218ED1340(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor();
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186D560C(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    v8[3] = sub_2186D560C(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218ED1468()
{
  if (!qword_27CC130D8)
  {
    type metadata accessor for MagazineFeedServiceConfig();
    sub_2186E6754();
    type metadata accessor for MagazineFeedServiceContextFactory();
    sub_2186FA12C();
    sub_2186D560C(qword_280EA3310, type metadata accessor for MagazineFeedServiceContextFactory);
    v0 = type metadata accessor for OfflineReadinessFeedMicroAdopter();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC130D8);
    }
  }
}

uint64_t objectdestroy_49Tm()
{
  v1 = (type metadata accessor for OfflineReadinessSection() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[7];
  v4 = sub_219BDBD34();
  v5 = *(*(v4 - 8) + 8);
  v5(v3, v4);
  v6 = type metadata accessor for OfflineFeedManifest(0);
  v5(v3 + *(v6 + 20), v4);

  return swift_deallocObject();
}

void sub_218ED18F8()
{
  if (!qword_27CC130F0)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186E1EB4();
    type metadata accessor for TodayFeedServiceContextFactory();
    sub_2186E6548();
    sub_2186D560C(qword_280EAA320, type metadata accessor for TodayFeedServiceContextFactory);
    v0 = type metadata accessor for OfflineReadinessFeedMicroAdopter();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC130F0);
    }
  }
}

double sub_218ED1B50@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_219BEEA84();
  v30 = *(v5 - 8);
  v6 = v30;
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharedWithYouFeedContentConfig();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[1];
  v29 = *v2;
  v13 = v29;
  v27 = v11;
  v28 = v12;
  sub_218ED1F74(a1, v11, type metadata accessor for SharedWithYouFeedContentConfig);
  v14 = type metadata accessor for SharedWithYouFeedServiceConfig();
  v15 = *(v2 + v14[6]);
  v16 = *(v2 + v14[7]);
  v17 = *(v6 + 16);
  v18 = v2 + v14[8];
  v19 = v31;
  v17(v8, v18, v31);
  v20 = v28;
  *a2 = v13;
  *(a2 + 1) = v20;
  v21 = v27;
  sub_218ED1F74(v27, &a2[v14[5]], type metadata accessor for SharedWithYouFeedContentConfig);
  *&a2[v14[6]] = v15;
  *&a2[v14[7]] = v16;
  v22 = v19;
  v17(&a2[v14[8]], v8, v19);
  v23 = v15;
  swift_unknownObjectRetain();

  v24 = [v16 autoRefreshMinimumInterval];
  (*(v30 + 8))(v8, v22);
  sub_218ED1FDC(v21);
  result = v24;
  *&a2[v14[9]] = v24;
  return result;
}

uint64_t sub_218ED1D6C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_218ED1DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_219BEEA84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *sub_218ED1EA4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  v3 = v2;
  return v2;
}

unint64_t sub_218ED1F20()
{
  result = qword_27CC13118;
  if (!qword_27CC13118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13118);
  }

  return result;
}

uint64_t sub_218ED1F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218ED1FDC(uint64_t a1)
{
  v2 = type metadata accessor for SharedWithYouFeedContentConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218ED2038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE3D94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v18 = v5;
    v19 = a2;
    v11 = *(v5 + 16);
    v9 = v5 + 16;
    v10 = v11;
    v12 = *MEMORY[0x277D34E08];
    v13 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v14 = *(v9 + 56);
    while (1)
    {
      v10(v7, v13, v4);
      if ((*(v9 + 72))(v7, v4) == v12)
      {
        break;
      }

      (*(v9 - 8))(v7, v4);
      v13 += v14;
      if (!--v8)
      {
        v15 = 1;
        a2 = v19;
        goto LABEL_8;
      }
    }

    (*(v18 + 96))(v7, v4);
    a2 = v19;
    sub_219BDF2B4();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

LABEL_8:
  v16 = sub_219BDF2F4();
  return (*(*(v16 - 8) + 56))(a2, v15, 1, v16);
}

uint64_t sub_218ED221C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE3D94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v18 = v5;
    v19 = a2;
    v11 = *(v5 + 16);
    v9 = v5 + 16;
    v10 = v11;
    v12 = *MEMORY[0x277D34DD0];
    v13 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v14 = *(v9 + 56);
    while (1)
    {
      v10(v7, v13, v4);
      if ((*(v9 + 72))(v7, v4) == v12)
      {
        break;
      }

      (*(v9 - 8))(v7, v4);
      v13 += v14;
      if (!--v8)
      {
        v15 = 1;
        a2 = v19;
        goto LABEL_8;
      }
    }

    (*(v18 + 96))(v7, v4);
    a2 = v19;
    sub_219BDF634();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

LABEL_8:
  v16 = sub_219BDF654();
  return (*(*(v16 - 8) + 56))(a2, v15, 1, v16);
}

uint64_t sub_218ED23F8(uint64_t a1)
{
  v2 = sub_219BE3D94();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return 0;
  }

  v24 = v3;
  v14 = *(v3 + 16);
  v13 = v3 + 16;
  v30 = v14;
  v15 = (v13 + 72);
  v29 = *MEMORY[0x277D34DF8];
  v33 = (v13 - 8);
  v28 = (v13 + 16);
  v27 = *MEMORY[0x277D34E00];
  v16 = (a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64)));
  v31 = v13;
  v25 = *(v13 + 56);
  v26 = v9;
  while (1)
  {
    v17 = v30;
    v30(v11, v16, v2);
    v17(v9, v11, v2);
    v18 = *v15;
    v19 = (*v15)(v9, v2);
    v20 = *v33;
    if (v19 == v29)
    {
      v20(v11, v2);
      (*(v24 + 96))(v9, v2);
      goto LABEL_9;
    }

    v32 = v12;
    v20(v9, v2);
    (*v28)(v6, v11, v2);
    v21 = v18(v6, v2);
    if (v21 == v27)
    {
      break;
    }

    v20(v6, v2);
    v9 = v26;
    v16 += v25;
    v12 = v32 - 1;
    if (v32 == 1)
    {
      return 0;
    }
  }

  (*(v24 + 96))(v6, v2);
  v9 = v6;
LABEL_9:
  v22 = *v9;

  return v22;
}

uint64_t sub_218ED26E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE14C4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE3D94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  if (v11)
  {
    v24 = v6;
    v25 = a2;
    v23 = v8;
    v14 = *(v8 + 16);
    v12 = v8 + 16;
    v13 = v14;
    v15 = *MEMORY[0x277D34DD8];
    v16 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v17 = *(v12 + 56);
    while (1)
    {
      v13(v10, v16, v7);
      if ((*(v12 + 72))(v10, v7) == v15)
      {
        break;
      }

      (*(v12 - 8))(v10, v7);
      v16 += v17;
      if (!--v11)
      {
        v18 = 1;
        a2 = v25;
        goto LABEL_8;
      }
    }

    (*(v23 + 96))(v10, v7);
    v19 = *v10;

    FCFeedType.feedType()(v19, v24);
    a2 = v25;
    sub_219BE1484();
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

LABEL_8:
  v20 = sub_219BE14A4();
  return (*(*(v20 - 8) + 56))(a2, v18, 1, v20);
}

uint64_t sub_218ED292C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE3D94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v19 = v5;
    v20 = a2;
    v11 = *(v5 + 16);
    v9 = v5 + 16;
    v10 = v11;
    v12 = *MEMORY[0x277D34DD8];
    v13 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v14 = *(v9 + 56);
    while (1)
    {
      v10(v7, v13, v4);
      if ((*(v9 + 72))(v7, v4) == v12)
      {
        break;
      }

      (*(v9 - 8))(v7, v4);
      v13 += v14;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    (*(v19 + 96))(v7, v4);
    v16 = *(v7 + 4);

    if (v16)
    {
      a2 = v20;
      sub_219BDF1C4();
      v15 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v15 = 1;
    a2 = v20;
  }

  else
  {
    v15 = 1;
  }

LABEL_10:
  v17 = sub_219BDF1E4();
  return (*(*(v17 - 8) + 56))(a2, v15, 1, v17);
}

uint64_t sub_218ED2B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE3D94();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  MEMORY[0x28223BE20](v7);
  v12 = &v33 - v10;
  v13 = *(a1 + 16);
  if (v13)
  {
    v33 = v5;
    v34 = a2;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v14 = v16;
    v17 = (v15 + 72);
    v39 = *MEMORY[0x277D34DF8];
    v18 = (v15 - 8);
    v37 = *MEMORY[0x277D34E00];
    v19 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v35 = *(v15 + 56);
    v36 = v9;
    v38 = &v33 - v10;
    while (1)
    {
      v40 = v13;
      v20 = v11;
      v14(v12, v19, v4);
      v14(v9, v12, v4);
      v21 = v12;
      v22 = *v17;
      v23 = (*v17)(v9, v4);
      if (v23 == v39)
      {
        break;
      }

      v24 = v9;
      v25 = *v18;
      (*v18)(v24, v4);
      v14(v20, v21, v4);
      v26 = v22(v20, v4);
      if (v26 == v37)
      {
        (*(v33 + 96))(v20, v4);

        a2 = v34;
        sub_219BE0D14();
        v25(v38, v4);
        goto LABEL_12;
      }

      v12 = v38;
      v25(v38, v4);
      v25(v20, v4);
      v9 = v36;
      v19 += v35;
      v13 = v40 - 1;
      v11 = v20;
      if (v40 == 1)
      {
        v27 = 1;
        a2 = v34;
        goto LABEL_13;
      }
    }

    (*(v33 + 96))(v9, v4);
    v28 = *(v9 + 6);
    v29 = *(v9 + 7);

    if (v29)
    {
      sub_21871D24C();
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_219C09BA0;
      *(v30 + 32) = v28;
      *(v30 + 40) = v29;
    }

    a2 = v34;
    sub_219BE0D14();
    (*v18)(v21, v4);
LABEL_12:
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

LABEL_13:
  v31 = sub_219BE0D44();
  return (*(*(v31 - 8) + 56))(a2, v27, 1, v31);
}

uint64_t sub_218ED2ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218ED3950(0, &unk_280EE87A0, MEMORY[0x277D2DAB8]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - v5;
  sub_218ED3950(0, &unk_280EE8380, MEMORY[0x277D2E6C8]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  v10 = sub_219BE16E4();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ED3950(0, &qword_27CC13120, MEMORY[0x277D2DB68]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v46 - v14;
  v16 = sub_219BDF584();
  v54 = *(v16 - 8);
  v55 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BE3D94();
  MEMORY[0x28223BE20](v19);
  v22 = (&v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(a1 + 16);
  if (!v23)
  {
    v30 = 1;
LABEL_16:
    v45 = sub_219BE16D4();
    return (*(*(v45 - 8) + 56))(a2, v30, 1, v45);
  }

  v48 = v15;
  v49 = v18;
  v50 = v12;
  v51 = v9;
  v52 = v6;
  v53 = a2;
  v47 = v20;
  v24 = *(v20 + 16);
  v25 = (v20 + 88);
  v26 = *MEMORY[0x277D34DE0];
  v27 = (v20 + 8);
  v28 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v29 = *(v20 + 72);
  while (1)
  {
    v24(v22, v28, v19);
    if ((*v25)(v22, v19) == v26)
    {
      break;
    }

    (*v27)(v22, v19);
    v28 += v29;
    if (!--v23)
    {
      v30 = 1;
      a2 = v53;
      goto LABEL_16;
    }
  }

  (*(v47 + 96))(v22, v19);
  v31 = v22[2];
  v32 = v22[5];
  v46 = v22[4];
  v47 = v31;
  v33 = v22[6];
  v34 = v48;
  sub_219BDF564();
  v36 = v54;
  v35 = v55;
  v37 = *(v54 + 48);
  if (v37(v34, 1, v55) == 1)
  {
    (*(v36 + 104))(v49, *MEMORY[0x277D2DB60], v35);
    v38 = v37(v34, 1, v35);
    v39 = v52;
    a2 = v53;
    v41 = v50;
    v40 = v51;
    if (v38 != 1)
    {
      sub_218ED39A4(v34);
    }
  }

  else
  {
    (*(v36 + 32))(v49, v34, v35);
    v39 = v52;
    a2 = v53;
    v41 = v50;
    v40 = v51;
  }

  result = FCFeedGroupType.groupType()(v47, v41);
  if (v32 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v32 < 0xFFFFFFFF80000000 || v33 < 0xFFFFFFFF80000000)
  {
    goto LABEL_18;
  }

  if (v33 <= 0x7FFFFFFF)
  {
    v43 = sub_219BE0674();
    (*(*(v43 - 8) + 56))(v40, 1, 1, v43);
    v44 = sub_219BDF474();
    (*(*(v44 - 8) + 56))(v39, 1, 1, v44);
    sub_219BE15E4();
    v30 = 0;
    goto LABEL_16;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_218ED3460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BDF3A4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = sub_219BE3D94();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 16);
  if (v15)
  {
    v29 = v8;
    v30 = v10;
    v31 = v5;
    v32 = v4;
    v33 = a2;
    v28 = v12;
    v18 = *(v12 + 16);
    v17 = v12 + 16;
    v16 = v18;
    v19 = *MEMORY[0x277D34DE8];
    v20 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v21 = *(v17 + 56);
    while (1)
    {
      v16(v14, v20, v11);
      if ((*(v17 + 72))(v14, v11) == v19)
      {
        break;
      }

      (*(v17 - 8))(v14, v11);
      v20 += v21;
      if (!--v15)
      {
        v22 = 1;
        a2 = v33;
        goto LABEL_8;
      }
    }

    (*(v28 + 96))(v14, v11);
    v28 = *v14;
    v23 = v30;
    sub_219BDF374();
    v25 = v31;
    v24 = v32;
    (*(v31 + 16))(v29, v23, v32);
    a2 = v33;
    sub_219BDEF74();
    (*(v25 + 8))(v23, v24);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

LABEL_8:
  v26 = sub_219BDEF94();
  return (*(*(v26 - 8) + 56))(a2, v22, 1, v26);
}

uint64_t sub_218ED376C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE3D94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v18 = v5;
    v19 = a2;
    v11 = *(v5 + 16);
    v9 = v5 + 16;
    v10 = v11;
    v12 = *MEMORY[0x277D34DF0];
    v13 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v14 = *(v9 + 56);
    while (1)
    {
      v10(v7, v13, v4);
      if ((*(v9 + 72))(v7, v4) == v12)
      {
        break;
      }

      (*(v9 - 8))(v7, v4);
      v13 += v14;
      if (!--v8)
      {
        v15 = 1;
        a2 = v19;
        goto LABEL_8;
      }
    }

    (*(v18 + 96))(v7, v4);
    a2 = v19;
    sub_219BDEFB4();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

LABEL_8:
  v16 = sub_219BDEFE4();
  return (*(*(v16 - 8) + 56))(a2, v15, 1, v16);
}

void sub_218ED3950(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218ED39A4(uint64_t a1)
{
  sub_218ED3950(0, &qword_27CC13120, MEMORY[0x277D2DB68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SportsRecordTagFeedGroupKnobs()
{
  result = qword_280EAEC58;
  if (!qword_280EAEC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218ED3A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v6);
  v12 = *(v9 + 48);
  if (v12(v6, 1, v8) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C5E8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    sub_219BEE974();
    sub_2189ADEC8(a1);
    if (v12(v6, 1, v8) != 1)
    {
      sub_2189ADEC8(v6);
    }
  }

  else
  {
    sub_2189ADEC8(a1);
    (*(v9 + 32))(v11, v6, v8);
  }

  return (*(v9 + 32))(a2, v11, v8);
}

uint64_t sub_218ED3CD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ED4130(0, &qword_27CC13128, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218ED40DC();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8();
    sub_21877C5E8(&qword_280E91A88, sub_2189AD5C8);
    sub_219BF7674();
    sub_218ED3A90(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218ED3EC4(uint64_t a1)
{
  v2 = sub_218ED40DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218ED3F00(uint64_t a1)
{
  v2 = sub_218ED40DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218ED3F54(void *a1)
{
  sub_218ED4130(0, &qword_27CC13138, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218ED40DC();
  sub_219BF7B44();
  sub_2189AD5C8();
  sub_21877C5E8(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_218ED40DC()
{
  result = qword_27CC13130;
  if (!qword_27CC13130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13130);
  }

  return result;
}

void sub_218ED4130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218ED40DC();
    v7 = a3(a1, &type metadata for SportsRecordTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218ED41A8()
{
  result = qword_27CC13140;
  if (!qword_27CC13140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13140);
  }

  return result;
}

unint64_t sub_218ED4200()
{
  result = qword_27CC13148;
  if (!qword_27CC13148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13148);
  }

  return result;
}

unint64_t sub_218ED4258()
{
  result = qword_27CC13150;
  if (!qword_27CC13150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13150);
  }

  return result;
}

void sub_218ED42D0(void *a1)
{
  [a1 contentAlpha];
  if (v2 != 0.0)
  {
    [a1 setNeedsLayout];
    [a1 layoutIfNeeded];
    if ([objc_opt_self() areAnimationsEnabled])
    {
      v3 = swift_allocObject();
      *(v3 + 16) = a1;
      v4 = objc_allocWithZone(MEMORY[0x277D75D40]);
      v8[4] = sub_218ED4478;
      v8[5] = v3;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = sub_218793E0C;
      v8[3] = &block_descriptor_71;
      v5 = _Block_copy(v8);
      v6 = a1;

      v7 = [v4 initWithDuration:v5 controlPoint1:0.17 controlPoint2:0.33 animations:{0.0, 0.83, 0.83}];
      _Block_release(v5);
      [v7 startAnimation];
    }

    else
    {

      [a1 setContentAlpha_];
    }
  }
}

void sub_218ED448C(void *a1)
{
  [a1 contentAlpha];
  if (v2 != 1.0)
  {
    [a1 setNeedsLayout];
    if ([objc_opt_self() areAnimationsEnabled])
    {
      v3 = swift_allocObject();
      *(v3 + 16) = a1;
      v4 = objc_allocWithZone(MEMORY[0x277D75D40]);
      v8[4] = sub_218ED4630;
      v8[5] = v3;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = sub_218793E0C;
      v8[3] = &block_descriptor_7_2;
      v5 = _Block_copy(v8);
      v6 = a1;

      v7 = [v4 initWithDuration:v5 controlPoint1:0.22 controlPoint2:0.17 animations:{0.0, 0.83, 0.83}];
      _Block_release(v5);
      [v7 startAnimationAfterDelay_];
    }

    else
    {

      [a1 setContentAlpha_];
    }
  }
}

uint64_t type metadata accessor for WebViewerState()
{
  result = qword_27CC13158;
  if (!qword_27CC13158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218ED4698()
{
  sub_218ED470C();
  if (v0 <= 0x3F)
  {
    sub_219BF1584();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_218ED470C()
{
  if (!qword_27CC13168)
  {
    v0 = type metadata accessor for WebViewerConfig();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13168);
    }
  }
}

uint64_t sub_218ED4754(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 24), *(a1 + 48));
  v1 = [objc_opt_self() defaultCachePolicy];
  v2 = sub_219BF27D4();

  return v2;
}

uint64_t sub_218ED47FC()
{
  sub_218ED4D00();
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_218ED485C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_218ED49E8(a1[1], *a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_218ED488C@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for HistoryFeedServiceConfig();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_219BF08B4();
  if (!v1)
  {
    v7 = v12[1];
    sub_219BF0944();
    v8 = *(v5 + 1);

    sub_218ED498C(v5);
    v9 = sub_218ED49E8(v8, v7);
    v11 = v10;

    *a1 = v9;
    a1[1] = v11;
  }

  return result;
}

uint64_t sub_218ED498C(uint64_t a1)
{
  v2 = type metadata accessor for HistoryFeedServiceConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218ED49E8(uint64_t a1, uint64_t a2)
{
  v7 = sub_219A79734(a1, a2);
  v8 = v6 >> 1;
  if (v5 == v6 >> 1)
  {
    sub_218ED4D00();
    swift_allocObject();

    v9 = sub_219BE3014();
  }

  else
  {
    v10 = v5;
    v11 = v6;
    v27 = v4;
    v12 = sub_219BC7A48(a1, a2);
    v26 = v13;
    v15 = v14;
    v17 = v16;
    if (v11)
    {
      sub_219BF7934();
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v18 = swift_dynamicCastClass();
      if (!v18)
      {
        swift_unknownObjectRelease();
        v18 = MEMORY[0x277D84F90];
      }

      v19 = *(v18 + 16);

      if (__OFSUB__(v8, v10))
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v19 != v8 - v10)
      {
        goto LABEL_23;
      }

      v20 = swift_dynamicCastClass();
      v21 = swift_unknownObjectRelease();
      if (v20)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    while (1)
    {
      sub_218B666EC(v7, v27, v10, v11);
LABEL_11:
      v21 = swift_unknownObjectRelease();
LABEL_12:
      MEMORY[0x28223BE20](v21);
      sub_2187E7248();
      sub_219BE3204();

      v11 = sub_219BE2E54();
      v9 = sub_219BE2F64();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      sub_219BF7934();
      swift_unknownObjectRetain_n();
      v22 = swift_dynamicCastClass();
      if (!v22)
      {
        swift_unknownObjectRelease();
        v22 = MEMORY[0x277D84F90];
      }

      v23 = *(v22 + 16);

      if (!__OFSUB__(v17 >> 1, v15))
      {
        break;
      }

LABEL_22:
      __break(1u);
LABEL_23:
      swift_unknownObjectRelease();
    }

    if (v23 != (v17 >> 1) - v15)
    {
      swift_unknownObjectRelease_n();
LABEL_13:
      sub_218B666EC(v12, v26, v15, v17);
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    v24 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v24)
    {
      swift_unknownObjectRelease();
    }
  }

LABEL_20:
  swift_unknownObjectRelease();
  return v9;
}

void sub_218ED4D00()
{
  if (!qword_280EE6F00)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6F00);
    }
  }
}

uint64_t sub_218ED4D50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ED5560(0, &qword_27CC13198, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsScheduleTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218ED54A8();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218ED55C4(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218ED54FC(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218ED4FFC(uint64_t a1)
{
  v2 = sub_218ED54A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218ED5038(uint64_t a1)
{
  v2 = sub_218ED54A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218ED50B4(void *a1)
{
  sub_218ED5560(0, &qword_27CC131A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218ED54A8();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218ED55C4(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218ED5314(uint64_t a1)
{
  result = sub_218ED55C4(&unk_27CC1C680, type metadata accessor for SportsScheduleTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218ED536C(void *a1)
{
  a1[1] = sub_218ED55C4(&qword_27CC13180, type metadata accessor for SportsScheduleTagFeedGroup);
  a1[2] = sub_218ED55C4(&qword_27CC13188, type metadata accessor for SportsScheduleTagFeedGroup);
  result = sub_218ED55C4(&qword_27CC13190, type metadata accessor for SportsScheduleTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218ED5418(uint64_t a1)
{
  v2 = sub_218ED55C4(&qword_27CC13180, type metadata accessor for SportsScheduleTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218ED54A8()
{
  result = qword_27CC131A0;
  if (!qword_27CC131A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC131A0);
  }

  return result;
}

uint64_t sub_218ED54FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsScheduleTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218ED5560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218ED54A8();
    v7 = a3(a1, &type metadata for SportsScheduleTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218ED55C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218ED5620()
{
  result = qword_27CC131B0;
  if (!qword_27CC131B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC131B0);
  }

  return result;
}

unint64_t sub_218ED5678()
{
  result = qword_27CC131B8;
  if (!qword_27CC131B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC131B8);
  }

  return result;
}

unint64_t sub_218ED56D0()
{
  result = qword_27CC131C0;
  if (!qword_27CC131C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC131C0);
  }

  return result;
}

id sub_218ED5740(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 > 2)
  {
    v2 = &selRef_blackColor;
  }

  else
  {
    v2 = off_278242600[v1];
  }

  v3 = [objc_opt_self() *v2];
  v4 = [v3 colorWithAlphaComponent_];

  return v4;
}

uint64_t _s7NewsUI221FeedNavImageProcessorC7processySo7UIImageCSg5TeaUI09ProcessedE11RequestType_pF_0(uint64_t a1)
{
  v2 = sub_219BE5AB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ED5B50();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218718690(a1, v22);
  sub_218ED5BA8();
  type metadata accessor for FeedNavImageProcessorRequest();
  if (swift_dynamicCast())
  {
    v9 = v21[0];
    v10 = *(v21[0] + 24);
    v11 = v10 + OBJC_IVAR___NEFeedNavImageAssetHandle_filePath;
    swift_beginAccess();
    if (*(v11 + 8))
    {
      v12 = objc_allocWithZone(MEMORY[0x277D755B8]);

      v13 = sub_219BF53D4();

      v14 = [v12 initWithContentsOfFile_];

      if (v14)
      {
        goto LABEL_6;
      }
    }

    v15 = (v10 + OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage);
    swift_beginAccess();
    if (*v15)
    {
      v14 = *v15;
LABEL_6:
      v16 = sub_218ED5740(v9);
      v17 = [v16 CGColor];
      (*(v3 + 104))(v5, *MEMORY[0x277D6D2F0], v2);
      sub_219BE5AC4();
      v18 = sub_219BE5AD4();
      (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
      v19 = sub_219BF6D74();

      sub_218ED5C0C(v8);

      return v19;
    }
  }

  return 0;
}

void sub_218ED5B50()
{
  if (!qword_280EE5DF0)
  {
    sub_219BE5AD4();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5DF0);
    }
  }
}

unint64_t sub_218ED5BA8()
{
  result = qword_280EE4758;
  if (!qword_280EE4758)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE4758);
  }

  return result;
}

uint64_t sub_218ED5C0C(uint64_t a1)
{
  sub_218ED5B50();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218ED5C68(char *a1)
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WebViewerViewImpression();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = OBJC_IVAR____TtC7NewsUI220WebViewerDataManager_startDate;
  swift_beginAccess();
  sub_2187D96F4(v1 + v14, v5);
  v15 = *(v7 + 48);
  if (v15(v5, 1, v6) == 1)
  {
    sub_219BDBCB4();
    if (v15(v5, 1, v6) != 1)
    {
      sub_218710450(v5, sub_2186DCF58);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  sub_219BDBCB4();
  (*(v7 + 32))(v12, v9, v6);
  v12[*(v10 + 24)] = v13;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    (*(v16 + 16))(v12, ObjectType, v16);
    swift_unknownObjectRelease();
  }

  return sub_218710450(v12, type metadata accessor for WebViewerViewImpression);
}

uint64_t sub_218ED5F00()
{

  sub_218774F78(v0 + 24);
  sub_218710450(v0 + OBJC_IVAR____TtC7NewsUI220WebViewerDataManager_startDate, sub_2186DCF58);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WebViewerDataManager()
{
  result = qword_27CC131C8;
  if (!qword_27CC131C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218ED5FDC()
{
  sub_2186DCF58();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_218ED60AC()
{
  result = sub_2186D83E8();
  if (v1 <= 0x3F)
  {
    result = sub_219BEF554();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_218ED6154(uint64_t a1)
{
  v2 = sub_218ED6248(&qword_27CC131E0);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218ED6248(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PaywallAudioFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218ED62AC()
{
  sub_218986048();
  if (v0 <= 0x3F)
  {
    sub_218985FD4();
    if (v1 <= 0x3F)
    {
      sub_218985EAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_218ED6354(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218ED63C4()
{
  sub_218986218();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_218ED6420()
{
  v1 = v0;
  sub_218985EAC();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1584();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218EDA544(v1, v13, type metadata accessor for HistoryFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218985FD4();
      (*(v8 + 32))(v10, v13 + *(v15 + 48), v7);
      v16 = sub_219BF1524();
      (*(v8 + 8))(v10, v7);
      sub_218EDA484(v13, type metadata accessor for HistoryFeedGapLocation);
    }

    else
    {
      (*(v4 + 32))(v6, v13, v3);
      v16 = sub_219BF07B4();
      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    v16 = *v13;
    sub_218986048();
    sub_218EDA484(v13 + *(v17 + 48), type metadata accessor for HistoryFeedGapLocation);
  }

  return v16;
}

uint64_t sub_218ED66CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_218ED6354(&qword_280ED8660, type metadata accessor for HistoryFeedModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_218ED6870@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_218EDA420(0, &unk_280E92500, MEMORY[0x277D31DC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = v45 - v5;
  sub_218EDA420(0, &qword_280E91C10, MEMORY[0x277D32010], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = v45 - v7;
  v8 = sub_219BF0EE4();
  MEMORY[0x28223BE20](v8 - 8);
  v50 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDA420(0, &unk_280EE34A0, MEMORY[0x277D2D148], v3);
  MEMORY[0x28223BE20](v10 - 8);
  v49 = v45 - v11;
  v12 = sub_219BF0BD4();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF0574();
  MEMORY[0x28223BE20](v15 - 8);
  v48 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v18 = v17;
  v53 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF1584();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v25);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDA544(v2, v27, type metadata accessor for HistoryFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218985FD4();
      (*(v22 + 32))(v24, &v27[*(v29 + 48)], v21);
      sub_219BF1524();
      sub_219BF1554();
      sub_219BF1534();
      v30 = v54;
      sub_219BEDB14();
      (*(v22 + 8))(v24, v21);
      v31 = *MEMORY[0x277D32D10];
      v32 = sub_219BF0614();
      (*(*(v32 - 8) + 104))(v30, v31, v32);
      return sub_218EDA484(v27, type metadata accessor for HistoryFeedGapLocation);
    }

    else
    {
      (*(v53 + 32))(v20, v27, v18);
      sub_218ED6420();
      v45[2] = v39;
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_219BF07D4();
      v45[1] = v56;
      sub_219BF07E4();
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_219BF07D4();

      sub_219BF0B94();
      swift_unknownObjectRelease();
      (*(v46 + 8))(v14, v47);
      v40 = sub_219BEBD44();
      (*(*(v40 - 8) + 56))(v49, 1, 1, v40);
      sub_219BF07D4();
      sub_21912D31C(v50);

      sub_219BF07D4();
      sub_218ED9B0C(v55 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_audioTrack, v51);

      v41 = sub_219BEDB44();
      (*(*(v41 - 8) + 56))(v52, 1, 1, v41);
      v42 = v54;
      sub_219BF0E34();
      (*(v53 + 8))(v20, v18);
      v43 = *MEMORY[0x277D32E10];
      v44 = sub_219BF0614();
      return (*(*(v44 - 8) + 104))(v42, v43, v44);
    }
  }

  else
  {
    sub_218986048();
    v35 = *(v34 + 48);
    v36 = v54;
    sub_219BF03C4();
    v37 = *MEMORY[0x277D32DB8];
    v38 = sub_219BF0614();
    (*(*(v38 - 8) + 104))(v36, v37, v38);
    return sub_218EDA484(&v27[v35], type metadata accessor for HistoryFeedGapLocation);
  }
}

uint64_t sub_218ED7070()
{
  v1 = sub_219BF0614();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDA544(v0, v7, type metadata accessor for HistoryFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218986048();
    v12 = &v7[*(v13 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218985FD4();
    v10 = *(v9 + 48);
    v11 = sub_219BF1584();
    (*(*(v11 - 8) + 8))(&v7[v10], v11);
    v12 = v7;
LABEL_5:
    sub_218EDA484(v12, type metadata accessor for HistoryFeedGapLocation);
    return 0;
  }

  sub_218ED6870(v4);
  v15 = sub_219BF05A4();
  (*(v2 + 8))(v4, v1);
  sub_218EDA484(v7, type metadata accessor for HistoryFeedModel);
  return v15;
}

uint64_t sub_218ED7294@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_218985EAC();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDA544(v2, v11, type metadata accessor for HistoryFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218986048();
    v11 += *(v16 + 48);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218985FD4();
    v14 = *(v13 + 48);
    v15 = sub_219BF1584();
    (*(*(v15 - 8) + 8))(&v11[v14], v15);
LABEL_5:
    sub_218EDA484(v11, type metadata accessor for HistoryFeedGapLocation);
    v17 = sub_219BEAF84();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  (*(v6 + 32))(v8, v11, v5);
  sub_219BF07D4();
  sub_21912D94C(a1);

  return (*(v6 + 8))(v8, v5);
}

void *sub_218ED74F4()
{
  sub_218ED9BA0(0);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE6364();
  v47 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v37 - v7;
  v8 = sub_219BF2B34();
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDA544(v0, v18, type metadata accessor for HistoryFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218986048();
    v23 = &v18[*(v24 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218985FD4();
    v21 = *(v20 + 48);
    v22 = sub_219BF1584();
    (*(*(v22 - 8) + 8))(&v18[v21], v22);
    v23 = v18;
LABEL_5:
    sub_218EDA484(v23, type metadata accessor for HistoryFeedGapLocation);
    return MEMORY[0x277D84F90];
  }

  v39 = v6;
  v43 = v13;
  (*(v13 + 32))(v15, v18, v12);
  v40 = v0;
  sub_219BF07D4();
  swift_unknownObjectRetain();

  sub_218EDA420(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
  v26 = v47;
  v27 = *(v47 + 72);
  v28 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v41 = 2 * v27;
  v38 = v28 + 3 * v27;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_219C0B8C0;
  v44 = v3;
  v45 = v29;
  swift_unknownObjectRetain();
  sub_218ED6420();
  sub_219BF2B14();
  sub_219BE62F4();
  v42 = v12;
  v30 = *(v48 + 8);
  v30(v10, v8);
  swift_unknownObjectRetain();
  sub_218ED6420();
  sub_219BF2B14();
  sub_219BE6344();
  v30(v10, v8);
  v31 = v44;
  sub_219BE6314();
  v32 = v49;
  sub_219BE62E4();
  if ((*(v26 + 48))(v32, 1, v31) == 1)
  {
    (*(v43 + 8))(v15, v42);
    swift_unknownObjectRelease();
    sub_218EDA484(v32, sub_218ED9BA0);
    return v45;
  }

  else
  {
    v33 = *(v26 + 32);
    v34 = v46;
    v33(v46, v32, v31);
    v35 = v39;
    (*(v26 + 16))(v39, v34, v31);
    v36 = sub_2191F976C(1uLL, 4, 1, v45);
    swift_unknownObjectRelease();
    (*(v26 + 8))(v34, v31);
    (*(v43 + 8))(v15, v42);
    *(v36 + 16) = 4;
    v33((v36 + v38), v35, v31);
    return v36;
  }
}

uint64_t sub_218ED7AEC()
{
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDA544(v1, v3, type metadata accessor for HistoryFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218986048();
    v8 = &v3[*(v9 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218985FD4();
    v6 = *(v5 + 48);
    v7 = sub_219BF1584();
    (*(*(v7 - 8) + 8))(&v3[v6], v7);
    v8 = v3;
LABEL_5:
    sub_218EDA484(v8, type metadata accessor for HistoryFeedGapLocation);
    return 0;
  }

  sub_218EDA484(v3, type metadata accessor for HistoryFeedModel);
  return 1;
}

uint64_t sub_218ED7C48()
{
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDA544(v1, v3, type metadata accessor for HistoryFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218985FD4();
      v6 = *(v5 + 48);
      v7 = sub_219BF1584();
      (*(*(v7 - 8) + 8))(&v3[v6], v7);
      v8 = type metadata accessor for HistoryFeedGapLocation;
    }

    else
    {
      v8 = type metadata accessor for HistoryFeedModel;
    }

    sub_218EDA484(v3, v8);
    return 0;
  }

  else
  {

    sub_218986048();
    sub_218EDA484(&v3[*(v9 + 48)], type metadata accessor for HistoryFeedGapLocation);
    return 1;
  }
}

uint64_t sub_218ED7D9C()
{
  v1 = sub_219BE59F4();
  v54 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = (&v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_219BE5A04();
  v4 = *(v52 - 8);
  v5 = MEMORY[0x28223BE20](v52);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = &v43 - v7;
  sub_218985EAC();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v53 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDA544(v0, v17, type metadata accessor for HistoryFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218986048();
    v22 = &v17[*(v23 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218985FD4();
    v20 = *(v19 + 48);
    v21 = sub_219BF1584();
    (*(*(v21 - 8) + 8))(&v17[v20], v21);
    v22 = v17;
LABEL_5:
    sub_218EDA484(v22, type metadata accessor for HistoryFeedGapLocation);
    return 0;
  }

  v48 = v1;
  v49 = v0;
  v47 = v10;
  v45 = *(v10 + 32);
  v46 = v10 + 32;
  v45(v14, v17, v9);
  sub_218EDA420(0, &unk_280E8C008, MEMORY[0x277D31AD0], MEMORY[0x277D84560]);
  v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_219C09BA0;
  v27 = *MEMORY[0x277D31AB0];
  v28 = v52;
  v44 = *(v4 + 104);
  v44(v26 + v25, v27, v52);
  v29 = sub_218C3D46C(v26);
  swift_setDeallocating();
  v43 = *(v4 + 8);
  v43(v26 + v25, v28);
  swift_deallocClassInstance();
  v56 = v29;
  sub_219BF07D4();
  LODWORD(v26) = *(v55 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_accessLevel);

  if (!v26)
  {
    v30 = v51;
    v44(v51, *MEMORY[0x277D31AC0], v28);
    v31 = v50;
    sub_219498044(v50, v30);
    v43(v31, v28);
  }

  sub_219BE5A14();
  sub_219BF07D4();
  v32 = *(v55 + 16);
  swift_unknownObjectRetain();

  v33 = sub_218ED6420();
  *v3 = v32;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = v33;
  v3[4] = v34;
  v35 = v14;
  v36 = v54;
  v37 = v48;
  (*(v54 + 104))(v3, *MEMORY[0x277D31A58], v48);
  MEMORY[0x21CEBC780](v3, v56);

  (*(v36 + 8))(v3, v37);
  v38 = v47;
  v39 = v53;
  (*(v47 + 16))(v53, v35, v9);
  v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v41 = swift_allocObject();
  v45((v41 + v40), v39, v9);
  swift_allocObject();
  v42 = sub_219BE59B4();
  (*(v38 + 8))(v35, v9);
  return v42;
}

uint64_t sub_218ED83A8()
{
  sub_219BF4944();
  sub_218985EAC();
  sub_219BF07D4();
  swift_unknownObjectRetain();

  sub_219BF07D4();

  return sub_219BF4934();
}

uint64_t sub_218ED8450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v52 = a5;
  v53 = a8;
  v51 = a4;
  v54 = a2;
  v55 = a3;
  v56 = a6;
  v57 = a7;
  v15 = sub_219BEB334();
  v50 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v18 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDA544(v9, v20, type metadata accessor for HistoryFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218986048();
    v25 = &v20[*(v26 + 48)];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218985FD4();
    v23 = *(v22 + 48);
    v24 = sub_219BF1584();
    (*(*(v24 - 8) + 8))(&v20[v23], v24);
    v25 = v20;
LABEL_5:
    sub_218EDA484(v25, type metadata accessor for HistoryFeedGapLocation);
    return 0;
  }

  v46 = v17;
  sub_218EDA420(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_219C09BA0;
  v28 = a1;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_219C0B8C0;
  v30 = sub_219BE6684();
  v48 = a9;
  v49 = v28;
  v31 = sub_219BE6654();
  if (v31)
  {
    v32 = MEMORY[0x277D6D630];
    v33 = v30;
  }

  else
  {
    v33 = 0;
    v32 = 0;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
  }

  *(v29 + 32) = v31;
  *(v29 + 56) = v33;
  *(v29 + 64) = v32;
  v34 = sub_219BE6634();
  v35 = v46;
  v45 = v30;
  if (v34)
  {
    v36 = MEMORY[0x277D6D630];
    v37 = v30;
  }

  else
  {
    v37 = 0;
    v36 = 0;
    *(v29 + 80) = 0;
    *(v29 + 88) = 0;
  }

  *(v29 + 72) = v34;
  *(v29 + 96) = v37;
  *(v29 + 104) = v36;
  v54 = a2;
  v55 = a3;
  v56 = v51;
  v57 = v52;
  v58 = a6;
  v59 = a7;
  v60 = v53;
  v61 = v48;
  sub_219BE57D4();
  sub_219BE57C4();
  type metadata accessor for HistoryFeedServiceConfig();
  sub_218ED6354(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig);
  v38 = sub_219BEB284();
  (*(v50 + 8))(v35, v15);
  sub_219BE57B4();
  v39 = v45;
  v40 = sub_219BE6624();

  sub_21885AB78(v38);
  if (v40)
  {
    v41 = v39;
    v42 = MEMORY[0x277D6D630];
  }

  else
  {
    v41 = 0;
    v42 = 0;
    *(v29 + 120) = 0;
    *(v29 + 128) = 0;
  }

  *(v29 + 112) = v40;
  *(v29 + 136) = v41;
  *(v29 + 144) = v42;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  v43 = sub_219BE59D4();
  sub_218EDA484(v20, type metadata accessor for HistoryFeedModel);
  return v43;
}

uint64_t sub_218ED8928@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v49 = sub_219BF2B34();
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v44 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v45 = v3;
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEE614();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF0614();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1;
  sub_218ED6870(v15);
  sub_219BF04E4();
  (*(v13 + 8))(v15, v12);
  if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D32070])
  {
    (*(v9 + 96))(v11, v8);
    v17 = sub_219BEECB4();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 88))(v11, v17);
    v20 = *MEMORY[0x277D32338];
    (*(v18 + 8))(v11, v17);
    v21 = v50;
    if (v19 == v20)
    {
      v22 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    v21 = v50;
  }

  sub_218EDA544(v16, v7, type metadata accessor for HistoryFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v28 = v45;
      (*(v48 + 32))();
      sub_218EDA420(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
      sub_218C3F224(0);
      v30 = *(v29 - 8);
      v42 = *(v30 + 72);
      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = swift_allocObject();
      v43 = v32;
      *(v32 + 16) = xmmword_219C09EC0;
      v33 = v32 + v31;
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_218ED6420();
      v34 = v44;
      sub_219BF2B14();
      sub_219BE5C34();
      v46 = *(v46 + 8);
      (v46)(v34, v49);
      v35 = sub_219BE5C44();
      v41 = *(*(v35 - 8) + 56);
      v41(v33, 0, 1, v35);
      v36 = v47;
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_218ED6420();
      v21 = v50;
      sub_219BF2B14();
      v37 = v42;
      sub_219BE5C04();
      (v46)(v34, v49);
      v41(v33 + v37, 0, 1, v35);
      sub_219BE68A4();
      (*(v48 + 8))(v36, v28);
      v22 = 0;
      goto LABEL_11;
    }

    sub_218985FD4();
    v25 = *(v24 + 48);
    v26 = sub_219BF1584();
    (*(*(v26 - 8) + 8))(&v7[v25], v26);
  }

  else
  {

    sub_218986048();
    v7 += *(v27 + 48);
  }

  sub_218EDA484(v7, type metadata accessor for HistoryFeedGapLocation);
  v22 = 1;
LABEL_11:
  v38 = sub_219BE6894();
  return (*(*(v38 - 8) + 56))(v21, v22, 1, v38);
}

uint64_t sub_218ED9028@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  sub_218985EAC();
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEE614();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF0614();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ED6870(v15);
  sub_219BF04E4();
  (*(v13 + 8))(v15, v12);
  if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D32070])
  {
    (*(v9 + 96))(v11, v8);
    v16 = sub_219BEECB4();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 88))(v11, v16);
    v19 = *MEMORY[0x277D32338];
    (*(v17 + 8))(v11, v16);
    if (v18 == v19)
    {
      v20 = 1;
      v21 = v46;
      goto LABEL_11;
    }
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }

  sub_218EDA544(v2, v7, type metadata accessor for HistoryFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = v46;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v27 = v43;
      (*(v44 + 32))();
      sub_218EDA420(0, &qword_280E8C000, sub_218C3F224, MEMORY[0x277D84560]);
      sub_218C3F224(0);
      v29 = *(v28 - 8);
      v41 = *(v29 + 72);
      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v31 = swift_allocObject();
      v42 = v31;
      *(v31 + 16) = xmmword_219C09EC0;
      v32 = v31 + v30;
      v33 = v27;
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_218ED6420();
      sub_219BE5C24();
      swift_unknownObjectRelease();

      v34 = sub_219BE5C44();
      v35 = *(*(v34 - 8) + 56);
      v35(v32, 0, 1, v34);
      sub_219BF07D4();
      v36 = [*(v47 + 16) identifier];
      sub_219BF5414();

      v37 = v41;
      sub_219BE5BF4();

      v35(v32 + v37, 0, 1, v34);
      sub_219BE68A4();
      (*(v44 + 8))(v33, v45);
      v20 = 0;
      goto LABEL_11;
    }

    sub_218985FD4();
    v24 = *(v23 + 48);
    v25 = sub_219BF1584();
    (*(*(v25 - 8) + 8))(&v7[v24], v25);
  }

  else
  {

    sub_218986048();
    v7 += *(v26 + 48);
  }

  sub_218EDA484(v7, type metadata accessor for HistoryFeedGapLocation);
  v20 = 1;
LABEL_11:
  v38 = sub_219BE6894();
  return (*(*(v38 - 8) + 56))(v21, v20, 1, v38);
}

uint64_t sub_218ED96CC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6E030];
  v3 = sub_219BE88C4();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_218ED97A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_218AC1C94(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HistoryFeedModel(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDA544(v2, v14, type metadata accessor for HistoryFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218986048();
    v14 += *(v19 + 48);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218985FD4();
    v17 = *(v16 + 48);
    v18 = sub_219BF1584();
    (*(*(v18 - 8) + 8))(&v14[v17], v18);
LABEL_5:
    v20 = type metadata accessor for HistoryFeedGapLocation;
    v21 = v14;
    goto LABEL_6;
  }

  (*(v9 + 32))(v11, v14, v8);
  sub_219BF07D4();
  swift_unknownObjectRetain();

  sub_219BF1624();
  v23 = sub_219BF1634();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v6, 1, v23) != 1)
  {
    *(a1 + 24) = v23;
    *(a1 + 32) = sub_218ED6354(&qword_280E90860, MEMORY[0x277D33410]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(v24 + 32))(boxed_opaque_existential_1, v6, v23);
    return (*(v9 + 8))(v11, v8);
  }

  (*(v9 + 8))(v11, v8);
  v20 = sub_218AC1C94;
  v21 = v6;
LABEL_6:
  result = sub_218EDA484(v21, v20);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_218ED9B0C(uint64_t a1, uint64_t a2)
{
  sub_218EDA420(0, &qword_280E91C10, MEMORY[0x277D32010], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218ED9BD4(uint64_t a1, uint64_t a2)
{
  sub_218985EAC();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = sub_219BF1584();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  sub_218EDA4E4(0, &qword_27CC131E8, type metadata accessor for HistoryFeedModel);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v40 - v18;
  v20 = &v40 + *(v17 + 56) - v18;
  sub_218EDA544(a1, &v40 - v18, type metadata accessor for HistoryFeedModel);
  sub_218EDA544(a2, v20, type metadata accessor for HistoryFeedModel);
  type metadata accessor for HistoryFeedModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v29 = *v19;
    v28 = *(v19 + 1);
    sub_218986048();
    v31 = v30;
    v32 = *(v30 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v29 == *v20 && v28 == *(v20 + 1))
      {
        v25 = 1;
      }

      else
      {
        v25 = sub_219BF78F4();
      }

      sub_218EDA484(&v20[*(v31 + 48)], type metadata accessor for HistoryFeedGapLocation);
      v27 = &v19[v32];
      goto LABEL_19;
    }

    sub_218EDA484(&v19[v32], type metadata accessor for HistoryFeedGapLocation);

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218985FD4();
    v23 = *(v22 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *(v10 + 32);
      v24(v15, &v19[v23], v9);
      v24(v13, &v20[v23], v9);
      v25 = MEMORY[0x21CEC82E0](v15, v13);
      v26 = *(v10 + 8);
      v26(v13, v9);
      v26(v15, v9);
      sub_218EDA484(v20, type metadata accessor for HistoryFeedGapLocation);
      v27 = v19;
LABEL_19:
      sub_218EDA484(v27, type metadata accessor for HistoryFeedGapLocation);
      return v25 & 1;
    }

    (*(v10 + 8))(&v19[v23], v9);
    sub_218EDA484(v19, type metadata accessor for HistoryFeedGapLocation);
    goto LABEL_11;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v42 + 8))(v19, v43);
LABEL_11:
    sub_218EDA484(v20, type metadata accessor for HistoryFeedModel);
    v25 = 0;
    return v25 & 1;
  }

  v34 = v42;
  v33 = v43;
  v35 = *(v42 + 32);
  v35(v8, v19, v43);
  v36 = v41;
  v35(v41, v20, v33);
  type metadata accessor for HeadlineModel(0);
  sub_218ED6354(&qword_280EDE358, type metadata accessor for HeadlineModel);
  sub_218ED6354(&qword_280EDE360, type metadata accessor for HeadlineModel);
  v25 = sub_219BF07C4();
  v37 = *(v34 + 8);
  v37(v36, v33);
  v37(v8, v33);
  return v25 & 1;
}

uint64_t sub_218EDA104(uint64_t a1, uint64_t a2)
{
  sub_218986218();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  sub_218EDA4E4(0, &qword_27CC131F0, type metadata accessor for HistoryFeedGapLocation);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - v14;
  v16 = *(v13 + 56);
  sub_218EDA544(a1, &v23 - v14, type metadata accessor for HistoryFeedGapLocation);
  sub_218EDA544(a2, &v15[v16], type metadata accessor for HistoryFeedGapLocation);
  v17 = v6[6];
  LODWORD(a2) = v17(v15, 1, v5);
  v18 = v17(&v15[v16], 1, v5);
  if (a2 != 1)
  {
    if (v18 != 1)
    {
      v20 = v6[4];
      v20(v11, v15, v5);
      v20(v9, &v15[v16], v5);
      type metadata accessor for HistoryFeedServiceConfig();
      sub_218ED6354(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig);
      v19 = sub_219BF0F64();
      v21 = v6[1];
      v21(v9, v5);
      v21(v11, v5);
      return v19 & 1;
    }

    (v6[1])(v15, v5);
    goto LABEL_6;
  }

  if (v18 != 1)
  {
LABEL_6:
    sub_218EDA484(&v15[v16], type metadata accessor for HistoryFeedGapLocation);
    v19 = 0;
    return v19 & 1;
  }

  v19 = 1;
  return v19 & 1;
}

uint64_t sub_218EDA3C0()
{
  sub_218985EAC();

  return sub_218ED83A8();
}

void sub_218EDA420(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218EDA484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218EDA4E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_218EDA544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218EDA5B0()
{
  sub_218EDA89C(v0, v7);
  sub_2186CB1F0(v7, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 16))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t SearchContentSource.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

unint64_t sub_218EDA76C()
{
  result = qword_27CC131F8;
  if (!qword_27CC131F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC131F8);
  }

  return result;
}

uint64_t sub_218EDA7DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218EDA818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_218EDA864(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_218EDA8D4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI213SportsTagView_secondaryNameLabel) text];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = sub_219BF5414();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

LABEL_8:
    v13 = [*(v0 + OBJC_IVAR____TtC7NewsUI213SportsTagView_nameLabel) text];
    if (!v13)
    {
      return 0;
    }

    v14 = v13;
    v15 = sub_219BF5414();

    return v15;
  }

  sub_218DBAF00();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09EC0;
  v8 = [*(v0 + OBJC_IVAR____TtC7NewsUI213SportsTagView_nameLabel) text];
  if (v8)
  {
    v9 = v8;
    v10 = sub_219BF5414();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v7 + 32) = v10;
  *(v7 + 40) = v12;
  *(v7 + 48) = v3;
  *(v7 + 56) = v5;
  v15 = sub_219BE5F34();

  return v15;
}

char *sub_218EDAA2C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI213SportsTagView_iconImageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI213SportsTagView_nameLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC7NewsUI213SportsTagView_secondaryNameLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v13 = OBJC_IVAR____TtC7NewsUI213SportsTagView_accessoryButton;
  *&v4[v13] = sub_218EC4E8C(2);
  v14 = OBJC_IVAR____TtC7NewsUI213SportsTagView_token;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC7NewsUI213SportsTagView_iconImageView;
  v17 = *&v15[OBJC_IVAR____TtC7NewsUI213SportsTagView_iconImageView];
  v18 = v15;
  [v17 setAccessibilityIgnoresInvertColors_];
  [v18 addSubview_];
  [v18 addSubview_];
  v19 = OBJC_IVAR____TtC7NewsUI213SportsTagView_nameLabel;
  [v18 addSubview_];
  v20 = OBJC_IVAR____TtC7NewsUI213SportsTagView_secondaryNameLabel;
  [v18 addSubview_];
  [*&v18[v19] setNumberOfLines_];
  [*&v18[v20] setNumberOfLines_];

  return v18;
}

void sub_218EDAD0C()
{
  sub_219BE6204();
  v1 = sub_219BE6214();
  v1();
  v2 = sub_219BE61F4();
  swift_allocObject();
  swift_unknownObjectUnownedInit();

  v3 = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v4 = *(v0 + OBJC_IVAR____TtC7NewsUI213SportsTagView_token);
  *(v0 + OBJC_IVAR____TtC7NewsUI213SportsTagView_token) = v3;
}

void sub_218EDAE24()
{
  sub_218EDB9E0(&qword_27CC10678);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_218EDAEB0()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7NewsUI213SportsTagView_accessoryButton);
  v9 = qword_280F620F8;
  swift_beginAccess();
  (*(v2 + 16))(v7, v8 + v9, v1);
  (*(v2 + 104))(v5, *MEMORY[0x277D6D338], v1);
  LOBYTE(v8) = sub_219BE5C54();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  result = 0;
  if (v8)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v14 = sub_219BDB5E4();

    return v14;
  }

  return result;
}

id sub_218EDB0F0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_219BF53D4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_218EDB170()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC7NewsUI213SportsTagView_accessoryButton);
  v9 = qword_280F620F8;
  swift_beginAccess();
  (*(v2 + 16))(v7, v8 + v9, v1);
  (*(v2 + 104))(v5, *MEMORY[0x277D6D338], v1);
  sub_219BE5C54();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v10(v7, v1);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = sub_219BDB5E4();

  return v13;
}

unint64_t sub_218EDB43C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_219BE5C64();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v26.receiver = v0;
  v26.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v26, sel_accessibilityCustomActions);
  if (v9)
  {
    v10 = v9;
    sub_218C957B0();
    v11 = sub_219BF5924();
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v27 = v11;
  v12 = *&v0[OBJC_IVAR____TtC7NewsUI213SportsTagView_accessoryButton];
  v13 = qword_280F620F8;
  swift_beginAccess();
  (*(v3 + 16))(v8, v12 + v13, v2);
  (*(v3 + 104))(v6, *MEMORY[0x277D6D338], v2);
  sub_219BE5C54();
  v14 = *(v3 + 8);
  v14(v6, v2);
  v14(v8, v2);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = objc_allocWithZone(MEMORY[0x277D75088]);

  v19 = sub_219BF53D4();

  aBlock[4] = sub_218EDB9D8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218C5B6F8;
  aBlock[3] = &block_descriptor_72;
  v20 = _Block_copy(aBlock);
  [v18 initWithName:v19 actionHandler:v20];

  _Block_release(v20);

  MEMORY[0x21CECC690](v21);
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  result = v27;
  if (!(v27 >> 62))
  {
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return result;
    }

    goto LABEL_8;
  }

  v23 = v27;
  v24 = sub_219BF7214();
  result = v23;
  if (!v24)
  {
LABEL_8:

    return 0;
  }

  return result;
}

BOOL sub_218EDB958()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC7NewsUI213SportsTagView_accessoryButton);
    [v2 sendActionsForControlEvents_];
  }

  return v1 != 0;
}

uint64_t sub_218EDB9E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SportsTagView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218EDBA20()
{
  v1 = OBJC_IVAR____TtC7NewsUI213SportsTagView_iconImageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI213SportsTagView_nameLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC7NewsUI213SportsTagView_secondaryNameLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC7NewsUI213SportsTagView_accessoryButton;
  *(v0 + v4) = sub_218EC4E8C(2);
  v5 = OBJC_IVAR____TtC7NewsUI213SportsTagView_token;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  sub_219BF7514();
  __break(1u);
}

uint64_t sub_218EDBB5C()
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_218EDBBC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_218EDBD78();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_218EDBC0C()
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

unint64_t sub_218EDBC70()
{
  result = qword_280ED9AB0;
  if (!qword_280ED9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED9AB0);
  }

  return result;
}

unint64_t sub_218EDBCC8()
{
  result = qword_280ED9AB8;
  if (!qword_280ED9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED9AB8);
  }

  return result;
}

unint64_t sub_218EDBD20()
{
  result = qword_280ED9AD8[0];
  if (!qword_280ED9AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED9AD8);
  }

  return result;
}

unint64_t sub_218EDBD78()
{
  result = qword_280ED9AD0;
  if (!qword_280ED9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED9AD0);
  }

  return result;
}

unint64_t sub_218EDBDD0()
{
  result = qword_280ED9AC8;
  if (!qword_280ED9AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED9AC8);
  }

  return result;
}

uint64_t sub_218EDBE24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BE4B94();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - v9;
  v11 = sub_219BE4BD4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v15 = sub_219BE4B74();
  v56 = *(v15 + 16);
  if (!v56)
  {

    v17 = MEMORY[0x277D84F98];
LABEL_31:
    v41 = sub_219BE4B84();
    (*(*(v41 - 8) + 8))(v44, v41);
    *(v2 + 16) = v17;
    return v2;
  }

  v43 = v2;
  v16 = 0;
  v55 = v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v54 = v12 + 16;
  v53 = *MEMORY[0x277D34950];
  v51 = (v5 + 8);
  v52 = (v5 + 104);
  v50 = (v12 + 8);
  v17 = MEMORY[0x277D84F98];
  v45 = v4;
  v46 = v10;
  v48 = v15;
  v49 = v12;
  v57 = v14;
  while (v16 < *(v15 + 16))
  {
    (*(v12 + 16))(v14, v55 + *(v12 + 72) * v16, v11);
    sub_219BE4BB4();
    (*v52)(v8, v53, v4);
    sub_218EDCE0C(&qword_27CC13238, MEMORY[0x277D34968]);
    sub_219BF5874();
    sub_219BF5874();
    if (v60 == v58 && v61 == v59)
    {
      v18 = *v51;
      (*v51)(v8, v4);
      v18(v10, v4);
    }

    else
    {
      v47 = sub_219BF78F4();
      v19 = *v51;
      (*v51)(v8, v4);
      v19(v10, v4);

      if ((v47 & 1) == 0)
      {
        v14 = v57;
        (*v50)(v57, v11);
        goto LABEL_5;
      }
    }

    v20 = sub_219BE4BA4();
    if (v17[2])
    {
      v21 = sub_21931EF10(v20);
      v23 = v22;

      if (v23)
      {
        v24 = *(v17[7] + 8 * v21);
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {

      v24 = 0;
    }

    v25 = sub_219BE4BC4();
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_33;
    }

    v27 = v8;
    v28 = sub_219BE4BA4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v17;
    v31 = sub_21931EF10(v28);
    v32 = v17[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_34;
    }

    v35 = v30;
    if (v17[3] >= v34)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v30 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_2194937E0();
        if ((v35 & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      sub_21948302C(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_21931EF10(v28);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_36;
      }

      v31 = v36;
      if ((v35 & 1) == 0)
      {
LABEL_25:
        v17 = v60;
        v60[(v31 >> 6) + 8] |= 1 << v31;
        *(v17[6] + 8 * v31) = v28;
        *(v17[7] + 8 * v31) = v26;
        v14 = v57;
        (*v50)(v57, v11);
        v38 = v17[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_35;
        }

        v17[2] = v40;
        goto LABEL_4;
      }
    }

    v17 = v60;
    *(v60[7] + 8 * v31) = v26;
    v14 = v57;
    (*v50)(v57, v11);
LABEL_4:
    v8 = v27;
    v4 = v45;
    v10 = v46;
LABEL_5:
    ++v16;
    v15 = v48;
    v12 = v49;
    if (v56 == v16)
    {

      v2 = v43;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_218EDCD8C(0, &unk_27CC13240, MEMORY[0x277D34998], MEMORY[0x277D83940]);
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_218EDC3E8()
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_218EDCD8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  sub_218731D50();
  sub_219BF7484();
  *(v1 + 56) = MEMORY[0x277D837D0];
  v2 = sub_2186FC3BC();
  *(v1 + 64) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_219BE5314();

  MEMORY[0x28223BE20](v3);
  sub_218EDCD8C(0, &unk_27CC13240, MEMORY[0x277D34998], MEMORY[0x277D83940]);
  sub_218C8A914();

  v4 = sub_219BF5254();

  *(v0 + 16) = v4;

  sub_219BF6214();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;

  v6 = sub_219BF5224();
  v8 = v7;

  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = v2;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_219BE5314();
}

uint64_t sub_218EDC6C8(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, _BYTE *a5, uint64_t a6)
{
  v7 = v6;
  v63 = a6;
  v73 = sub_219BE4C24();
  v13 = *(v73 - 8);
  v14 = MEMORY[0x28223BE20](v73);
  v71 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v15;
  MEMORY[0x28223BE20](v14);
  v70 = &v55 - v16;
  v17 = *a3;
  v18 = *a4;
  if (*a5)
  {
    v62 = v6;
    v7 = v18;
    if (qword_280E8D830 != -1)
    {
LABEL_25:
      swift_once();
    }

    sub_219BF6214();
    sub_218EDCD8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_219C09BA0;
    v74 = 0;
    v75 = 0xE000000000000000;
    v76 = v63;
    sub_218731D50();
    sub_219BF7484();
    v20 = v74;
    v21 = v75;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_2186FC3BC();
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    sub_219BE5314();
    v18 = v7;
LABEL_18:

    v48 = 0;
    *a1 = v17;
LABEL_19:
    *a2 = v18;
    *(a2 + 8) = v48;
  }

  else
  {
    v59 = a1;
    v60 = a2;
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v57 = a5;
    v22 = qword_280F61728;
    sub_219BF6214();
    a1 = MEMORY[0x277D84F90];
    v58 = v22;
    sub_219BE5314();
    v23 = *(v17 + 16);
    v61 = v17;
    if (v23)
    {
      v56 = v18;
      v62 = v6;
      v74 = a1;
      sub_218C35FF8(0, v23, 0);
      a1 = v74;
      v24 = *(v13 + 16);
      v25 = *(v13 + 80);
      v26 = (v17 + ((v25 + 32) & ~v25));
      v66 = *(v13 + 72);
      v67 = v25;
      v68 = v24;
      v65 = (v25 + 16) & ~v25;
      v64 = (v13 + 32);
      v69 = v13 + 16;
      v27 = (v13 + 8);
      do
      {
        v28 = v70;
        v29 = v73;
        v30 = v68;
        v68(v70, v26, v73);
        v31 = v71;
        v30(v71, v28, v29);
        v32 = v65;
        v33 = swift_allocObject();
        (*v64)(v33 + v32, v31, v29);
        v34 = swift_allocObject();
        *(v34 + 16) = sub_218EDCE54;
        *(v34 + 24) = v33;
        (*v27)(v28, v29);
        v74 = a1;
        v36 = a1[2];
        v35 = a1[3];
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          sub_218C35FF8((v35 > 1), v36 + 1, 1);
          a1 = v74;
        }

        a1[2] = v37;
        v38 = &a1[2 * v36];
        v38[4] = sub_218EDCEC4;
        v38[5] = v34;
        v26 += v66;
        --v23;
      }

      while (v23);
      v7 = v62;
      v18 = v56;
    }

    else
    {
      v37 = a1[2];
    }

    v39 = a1 + 5;
    v40 = -v37;
    v41 = -1;
    v17 = v61;
    a2 = v63;
    while (v40 + v41 != -1)
    {
      if (++v41 >= a1[2])
      {
        __break(1u);
        goto LABEL_25;
      }

      v42 = v39 + 2;
      v43 = *(v39 - 1);
      v74 = a2;

      v43(&v76, &v74);

      v39 = v42;
      if ((v76 & 1) == 0)
      {

        sub_219BF6214();
        sub_218EDCD8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_219C09BA0;
        v45 = MEMORY[0x21CECC6D0](v17, v73);
        v47 = v46;
        *(v44 + 56) = MEMORY[0x277D837D0];
        *(v44 + 64) = sub_2186FC3BC();
        *(v44 + 32) = v45;
        *(v44 + 40) = v47;
        sub_219BE5314();
        a1 = v59;
        a2 = v60;
        goto LABEL_18;
      }
    }

    sub_219BF6214();
    sub_218EDCD8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_219C09BA0;
    v51 = MEMORY[0x21CECC6D0](v17, v73);
    v53 = v52;
    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 64) = sub_2186FC3BC();
    *(v50 + 32) = v51;
    *(v50 + 40) = v53;
    sub_219BE5314();

    *v57 = 1;
    *v59 = v17;
    v48 = v18 == 1;
    if (v18 == 1)
    {
      v18 = 0;
      a2 = v60;
      goto LABEL_19;
    }

    v54 = __OFSUB__(v18--, 1);
    a2 = v60;
    if (!v54)
    {
      v48 = 0;
      goto LABEL_19;
    }

    __break(1u);
  }

  return result;
}

void sub_218EDCD8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218EDCE0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218EDCE54(void *a1)
{
  v3 = *(sub_219BE4C24() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2192409B8(a1, v4);
}

uint64_t type metadata accessor for SearchFeedGroup()
{
  result = qword_280ED9B78;
  if (!qword_280ED9B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_218EDCF84()
{
  result = qword_27CC13260;
  if (!qword_27CC13260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13260);
  }

  return result;
}

unint64_t sub_218EDCFE0()
{
  result = qword_27CC13268;
  if (!qword_27CC13268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13268);
  }

  return result;
}

unint64_t sub_218EDD038()
{
  result = qword_27CC13270;
  if (!qword_27CC13270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13270);
  }

  return result;
}

uint64_t sub_218EDD08C()
{
  v1 = v0;
  v2 = type metadata accessor for TopResultSearchFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsSearchFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SavedRecipesSearchFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for RecipesSearchFeedGroup();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TopicsSearchFeedGroup();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ChannelsSearchFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ArticlesSearchFeedGroup();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SearchFeedGroup();
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDF938(v1, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_218EDF99C(v25, v19, type metadata accessor for ChannelsSearchFeedGroup);
        v27 = sub_219BED784();
        v28 = type metadata accessor for ChannelsSearchFeedGroup;
        v29 = v19;
      }

      else
      {
        sub_218EDF99C(v25, v16, type metadata accessor for TopicsSearchFeedGroup);
        v27 = sub_219BED784();
        v28 = type metadata accessor for TopicsSearchFeedGroup;
        v29 = v16;
      }
    }

    else
    {
      sub_218EDF99C(v25, v22, type metadata accessor for ArticlesSearchFeedGroup);
      v27 = sub_219BED784();
      v28 = type metadata accessor for ArticlesSearchFeedGroup;
      v29 = v22;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_218EDF99C(v25, v7, type metadata accessor for SportsSearchFeedGroup);
      v27 = sub_219BED784();
      v28 = type metadata accessor for SportsSearchFeedGroup;
      v29 = v7;
    }

    else
    {
      sub_218EDF99C(v25, v4, type metadata accessor for TopResultSearchFeedGroup);
      v27 = sub_219BED784();
      v28 = type metadata accessor for TopResultSearchFeedGroup;
      v29 = v4;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_218EDF99C(v25, v13, type metadata accessor for RecipesSearchFeedGroup);
    v27 = sub_219BED784();
    v28 = type metadata accessor for RecipesSearchFeedGroup;
    v29 = v13;
  }

  else
  {
    sub_218EDF99C(v25, v10, type metadata accessor for SavedRecipesSearchFeedGroup);
    v27 = *v10;

    v28 = type metadata accessor for SavedRecipesSearchFeedGroup;
    v29 = v10;
  }

  sub_218EDFA04(v29, v28);
  return v27;
}

uint64_t sub_218EDD550()
{
  v1 = v0;
  v2 = type metadata accessor for TopResultSearchFeedGroup();
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArticlesSearchFeedGroup();
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchFeedGroup();
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDF938(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 5)
  {
    if (EnumCaseMultiPayload)
    {
      sub_218EDF99C(v10, v4, type metadata accessor for TopResultSearchFeedGroup);
      v14 = &v4[*(v2 + 20)];
      if (v14[8])
      {
        v15 = MEMORY[0x277D84F90];
      }

      else
      {
        v16 = *v14;
        sub_218725F94();
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_219C146A0;
        v15 = v17;
        *(v17 + 32) = v16;
        swift_unknownObjectRetain();
      }

      sub_218EDFA04(v4, type metadata accessor for TopResultSearchFeedGroup);
      return v15;
    }

    else
    {
      sub_218EDF99C(v10, v7, type metadata accessor for ArticlesSearchFeedGroup);
      v13 = *&v7[*(v5 + 20)];

      sub_218EDFA04(v7, type metadata accessor for ArticlesSearchFeedGroup);
      return v13;
    }
  }

  else
  {
    sub_218EDFA04(v10, type metadata accessor for SearchFeedGroup);
    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_218EDD7A4()
{
  v1 = type metadata accessor for SearchFeedGroup();
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDF938(v0, v3);
  v4 = 0x6030504020100uLL >> (8 * swift_getEnumCaseMultiPayload());
  sub_218EDFA04(v3, type metadata accessor for SearchFeedGroup);
  return v4;
}

uint64_t sub_218EDD868@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v1 = type metadata accessor for TopResultSearchFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SportsSearchFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SavedRecipesSearchFeedGroup();
  MEMORY[0x28223BE20](v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecipesSearchFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TopicsSearchFeedGroup();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ChannelsSearchFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ArticlesSearchFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SearchFeedGroup();
  MEMORY[0x28223BE20](v22);
  v24 = v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDF938(v29[0], v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_218EDF99C(v24, v18, type metadata accessor for ChannelsSearchFeedGroup);
        sub_219BED7A4();
        v26 = type metadata accessor for ChannelsSearchFeedGroup;
        v27 = v18;
      }

      else
      {
        sub_218EDF99C(v24, v15, type metadata accessor for TopicsSearchFeedGroup);
        sub_219BED7A4();
        v26 = type metadata accessor for TopicsSearchFeedGroup;
        v27 = v15;
      }
    }

    else
    {
      sub_218EDF99C(v24, v21, type metadata accessor for ArticlesSearchFeedGroup);
      sub_219BED7A4();
      v26 = type metadata accessor for ArticlesSearchFeedGroup;
      v27 = v21;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_218EDF99C(v24, v6, type metadata accessor for SportsSearchFeedGroup);
      sub_219BED7A4();
      v26 = type metadata accessor for SportsSearchFeedGroup;
      v27 = v6;
    }

    else
    {
      sub_218EDF99C(v24, v3, type metadata accessor for TopResultSearchFeedGroup);
      sub_219BED7A4();
      v26 = type metadata accessor for TopResultSearchFeedGroup;
      v27 = v3;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_218EDF99C(v24, v12, type metadata accessor for RecipesSearchFeedGroup);
    sub_219BED7A4();
    v26 = type metadata accessor for RecipesSearchFeedGroup;
    v27 = v12;
  }

  else
  {
    sub_218EDF99C(v24, v9, type metadata accessor for SavedRecipesSearchFeedGroup);
    sub_219BED7A4();
    v26 = type metadata accessor for SavedRecipesSearchFeedGroup;
    v27 = v9;
  }

  return sub_218EDFA04(v27, v26);
}

uint64_t sub_218EDDD1C(uint64_t (*a1)(uint64_t))
{
  v38 = a1;
  v1 = type metadata accessor for TopResultSearchFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SportsSearchFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SavedRecipesSearchFeedGroup();
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecipesSearchFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TopicsSearchFeedGroup();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ChannelsSearchFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ArticlesSearchFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SearchFeedGroup();
  MEMORY[0x28223BE20](v22);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDF938(v37, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v30 = sub_218EDF99C(v24, v18, type metadata accessor for ChannelsSearchFeedGroup);
        v27 = v38(v30);
        v28 = type metadata accessor for ChannelsSearchFeedGroup;
        v29 = v18;
      }

      else
      {
        v33 = sub_218EDF99C(v24, v15, type metadata accessor for TopicsSearchFeedGroup);
        v27 = v38(v33);
        v28 = type metadata accessor for TopicsSearchFeedGroup;
        v29 = v15;
      }
    }

    else
    {
      v32 = sub_218EDF99C(v24, v21, type metadata accessor for ArticlesSearchFeedGroup);
      v27 = v38(v32);
      v28 = type metadata accessor for ArticlesSearchFeedGroup;
      v29 = v21;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v31 = sub_218EDF99C(v24, v6, type metadata accessor for SportsSearchFeedGroup);
      v27 = v38(v31);
      v28 = type metadata accessor for SportsSearchFeedGroup;
      v29 = v6;
    }

    else
    {
      v35 = sub_218EDF99C(v24, v3, type metadata accessor for TopResultSearchFeedGroup);
      v27 = v38(v35);
      v28 = type metadata accessor for TopResultSearchFeedGroup;
      v29 = v3;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v26 = sub_218EDF99C(v24, v12, type metadata accessor for RecipesSearchFeedGroup);
    v27 = v38(v26);
    v28 = type metadata accessor for RecipesSearchFeedGroup;
    v29 = v12;
  }

  else
  {
    v34 = sub_218EDF99C(v24, v9, type metadata accessor for SavedRecipesSearchFeedGroup);
    v27 = v38(v34);
    v28 = type metadata accessor for SavedRecipesSearchFeedGroup;
    v29 = v9;
  }

  sub_218EDFA04(v29, v28);
  return v27;
}

double sub_218EDE20C()
{
  v0 = type metadata accessor for TopResultSearchFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SportsSearchFeedGroup();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SavedRecipesSearchFeedGroup();
  MEMORY[0x28223BE20](v6);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecipesSearchFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TopicsSearchFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ChannelsSearchFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ArticlesSearchFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SearchFeedGroup();
  MEMORY[0x28223BE20](v21);
  v23 = v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDF938(v36[1], v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_218EDF99C(v23, v17, type metadata accessor for ChannelsSearchFeedGroup);
        sub_219BED7B4();
        v26 = v29;
        v27 = type metadata accessor for ChannelsSearchFeedGroup;
        v28 = v17;
      }

      else
      {
        sub_218EDF99C(v23, v14, type metadata accessor for TopicsSearchFeedGroup);
        sub_219BED7B4();
        v26 = v32;
        v27 = type metadata accessor for TopicsSearchFeedGroup;
        v28 = v14;
      }
    }

    else
    {
      sub_218EDF99C(v23, v20, type metadata accessor for ArticlesSearchFeedGroup);
      sub_219BED7B4();
      v26 = v31;
      v27 = type metadata accessor for ArticlesSearchFeedGroup;
      v28 = v20;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_218EDF99C(v23, v5, type metadata accessor for SportsSearchFeedGroup);
      sub_219BED7B4();
      v26 = v30;
      v27 = type metadata accessor for SportsSearchFeedGroup;
      v28 = v5;
    }

    else
    {
      sub_218EDF99C(v23, v2, type metadata accessor for TopResultSearchFeedGroup);
      sub_219BED7B4();
      v26 = v34;
      v27 = type metadata accessor for TopResultSearchFeedGroup;
      v28 = v2;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_218EDF99C(v23, v11, type metadata accessor for RecipesSearchFeedGroup);
    sub_219BED7B4();
    v26 = v25;
    v27 = type metadata accessor for RecipesSearchFeedGroup;
    v28 = v11;
  }

  else
  {
    sub_218EDF99C(v23, v8, type metadata accessor for SavedRecipesSearchFeedGroup);
    sub_219BED7B4();
    v26 = v33;
    v27 = type metadata accessor for SavedRecipesSearchFeedGroup;
    v28 = v8;
  }

  sub_218EDFA04(v28, v27);
  return v26;
}

uint64_t sub_218EDE6CC()
{
  v1 = type metadata accessor for SearchFeedGroup();
  MEMORY[0x28223BE20](v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDF938(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = 0x73656C6369747241;
  v6 = 0x7374726F7053;
  if (EnumCaseMultiPayload != 5)
  {
    v6 = 0x6C75736552706F54;
  }

  v7 = 0x73657069636552;
  if (EnumCaseMultiPayload != 3)
  {
    v7 = 0x6552206465766153;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    v6 = v7;
  }

  v8 = 0x736C656E6E616843;
  if (EnumCaseMultiPayload != 1)
  {
    v8 = 0x736369706F54;
  }

  if (EnumCaseMultiPayload)
  {
    v5 = v8;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  sub_218EDFA04(v3, type metadata accessor for SearchFeedGroup);
  return v9;
}

uint64_t sub_218EDE858()
{
  v1 = type metadata accessor for SearchFeedGroup();
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDF938(v0, v3);
  v4 = *&aArticleschanne[8 * swift_getEnumCaseMultiPayload()];
  sub_218EDFA04(v3, type metadata accessor for SearchFeedGroup);
  return v4;
}

unint64_t sub_218EDE920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218EDD7A4();
  *a1 = result;
  return result;
}

uint64_t sub_218EDE950@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D320E0];
  v3 = sub_219BEE6F4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_218EDEA54(uint64_t a1)
{
  v2 = sub_218EDFA64(&qword_280ED9BB0);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_218EDEABC()
{
  sub_218EDFA64(qword_280ED9BC0);

  return sub_219BF1174();
}

uint64_t sub_218EDEB30(uint64_t a1)
{
  v2 = sub_218EDFA64(qword_280ED9BC0);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218EDEB90()
{
  sub_218EDFA64(&qword_280ED9B98);

  return sub_219BE2324();
}

uint64_t sub_218EDEC84@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for TopResultSearchFeedGroup();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SportsSearchFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SavedRecipesSearchFeedGroup();
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecipesSearchFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TopicsSearchFeedGroup();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ChannelsSearchFeedGroup();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ArticlesSearchFeedGroup();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SearchFeedGroup();
  MEMORY[0x28223BE20](v22);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDF938(v31, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v26 = v32;
      if (EnumCaseMultiPayload == 1)
      {
        sub_218EDF99C(v24, v18, type metadata accessor for ChannelsSearchFeedGroup);
        sub_219BED874();
        v27 = type metadata accessor for ChannelsSearchFeedGroup;
        v28 = v18;
      }

      else
      {
        sub_218EDF99C(v24, v15, type metadata accessor for TopicsSearchFeedGroup);
        sub_219BED874();
        v27 = type metadata accessor for TopicsSearchFeedGroup;
        v28 = v15;
      }
    }

    else
    {
      sub_218EDF99C(v24, v21, type metadata accessor for ArticlesSearchFeedGroup);
      v26 = v32;
      sub_219BED874();
      v27 = type metadata accessor for ArticlesSearchFeedGroup;
      v28 = v21;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    v26 = v32;
    if (EnumCaseMultiPayload == 5)
    {
      sub_218EDF99C(v24, v6, type metadata accessor for SportsSearchFeedGroup);
      sub_219BED874();
      v27 = type metadata accessor for SportsSearchFeedGroup;
      v28 = v6;
    }

    else
    {
      sub_218EDF99C(v24, v3, type metadata accessor for TopResultSearchFeedGroup);
      sub_219BED874();
      v27 = type metadata accessor for TopResultSearchFeedGroup;
      v28 = v3;
    }
  }

  else
  {
    v26 = v32;
    if (EnumCaseMultiPayload == 3)
    {
      sub_218EDF99C(v24, v12, type metadata accessor for RecipesSearchFeedGroup);
      sub_219BED874();
      v27 = type metadata accessor for RecipesSearchFeedGroup;
      v28 = v12;
    }

    else
    {
      sub_218EDF99C(v24, v9, type metadata accessor for SavedRecipesSearchFeedGroup);
      sub_219BED874();
      v27 = type metadata accessor for SavedRecipesSearchFeedGroup;
      v28 = v9;
    }
  }

  sub_218EDFA04(v28, v27);
  v29 = sub_219BF1904();
  return (*(*(v29 - 8) + 56))(v26, 0, 1, v29);
}

uint64_t sub_218EDF18C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE72A4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_218EDF1F8@<X0>(uint64_t *a1@<X8>)
{
  v53 = a1;
  v51 = type metadata accessor for TopResultSearchFeedGroup();
  MEMORY[0x28223BE20](v51);
  v52 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BF1904();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SavedRecipesSearchFeedGroup();
  MEMORY[0x28223BE20](v46);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for RecipesSearchFeedGroup();
  MEMORY[0x28223BE20](v45);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SportsSearchFeedGroup();
  MEMORY[0x28223BE20](v43);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TopicsSearchFeedGroup();
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ChannelsSearchFeedGroup();
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ArticlesSearchFeedGroup();
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SearchFeedGroup();
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EDF938(v1, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_218EDF99C(v20, v17, type metadata accessor for ArticlesSearchFeedGroup);
      v23 = *&v17[*(v15 + 20)];

      sub_218EDFA04(v17, type metadata accessor for ArticlesSearchFeedGroup);
      v29 = MEMORY[0x277D34590];
      v26 = v53;
      goto LABEL_26;
    }

    v26 = v53;
    if (EnumCaseMultiPayload == 1)
    {
      sub_218EDF99C(v20, v14, type metadata accessor for ChannelsSearchFeedGroup);
      v23 = *&v14[*(v12 + 20)];

      v27 = type metadata accessor for ChannelsSearchFeedGroup;
      v28 = v14;
    }

    else
    {
      sub_218EDF99C(v20, v11, type metadata accessor for TopicsSearchFeedGroup);
      v23 = *&v11[*(v9 + 20)];

      v27 = type metadata accessor for TopicsSearchFeedGroup;
      v28 = v11;
    }

LABEL_25:
    sub_218EDFA04(v28, v27);
    v29 = MEMORY[0x277D34580];
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v22 = v44;
      sub_218EDF99C(v20, v44, type metadata accessor for RecipesSearchFeedGroup);
      v23 = *(v22 + *(v45 + 20));

      v24 = type metadata accessor for RecipesSearchFeedGroup;
      v25 = v22;
    }

    else
    {
      v30 = v47;
      sub_218EDF99C(v20, v47, type metadata accessor for SavedRecipesSearchFeedGroup);
      v31 = v48;
      sub_219BED874();
      v23 = sub_219BF18C4();
      (*(v49 + 8))(v31, v50);
      v24 = type metadata accessor for SavedRecipesSearchFeedGroup;
      v25 = v30;
    }

    sub_218EDFA04(v25, v24);
    v29 = MEMORY[0x277D34588];
    v26 = v53;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_218EDF99C(v20, v8, type metadata accessor for SportsSearchFeedGroup);
    v23 = *&v8[*(v43 + 20)];

    sub_218EDFA04(v8, type metadata accessor for SportsSearchFeedGroup);
    v29 = MEMORY[0x277D34580];
    v26 = v53;
    goto LABEL_26;
  }

  v32 = v52;
  sub_218EDF99C(v20, v52, type metadata accessor for TopResultSearchFeedGroup);
  v33 = sub_218EDD550();
  if (v33 >> 62)
  {
    v34 = sub_219BF7214();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v53;
  v35 = v51;

  v36 = v32 + *(v35 + 20);
  if (!v34)
  {
    if (*(v36 + 8))
    {
      v37 = *v36;
      sub_218725F94();
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_219C146A0;
      *(v23 + 32) = v37;
      swift_unknownObjectRetain();
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v27 = type metadata accessor for TopResultSearchFeedGroup;
    v28 = v32;
    goto LABEL_25;
  }

  if (*(v36 + 8))
  {
    v23 = MEMORY[0x277D84F90];
  }

  else
  {
    v38 = *v36;
    sub_218725F94();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_219C146A0;
    *(v23 + 32) = v38;
    swift_unknownObjectRetain();
  }

  sub_218EDFA04(v32, type metadata accessor for TopResultSearchFeedGroup);
  v29 = MEMORY[0x277D34590];
LABEL_26:
  *v26 = v23;
  v39 = *v29;
  v40 = sub_219BF4A34();
  return (*(*(v40 - 8) + 104))(v26, v39, v40);
}

uint64_t sub_218EDF938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EDF99C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218EDFA04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218EDFA64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218EDFAA8()
{
  result = type metadata accessor for ArticlesSearchFeedGroup();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ChannelsSearchFeedGroup();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for TopicsSearchFeedGroup();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for RecipesSearchFeedGroup();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SavedRecipesSearchFeedGroup();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for SportsSearchFeedGroup();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for TopResultSearchFeedGroup();
              if (v7 <= 0x3F)
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

  return result;
}

uint64_t sub_218EDFBA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EE0048(0, &qword_280E8CB38, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EDFFF4();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v16, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218EDFDF0(uint64_t a1)
{
  v2 = sub_218EDFFF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218EDFE2C(uint64_t a1)
{
  v2 = sub_218EDFFF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218EDFE80(void *a1)
{
  sub_218EE0048(0, &qword_280E8C3C8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EDFFF4();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_218EDFFF4()
{
  result = qword_280EAC990[0];
  if (!qword_280EAC990[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAC990);
  }

  return result;
}

void sub_218EE0048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218EDFFF4();
    v7 = a3(a1, &type metadata for ForYouTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218EE00C0()
{
  result = qword_27CC13278;
  if (!qword_27CC13278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13278);
  }

  return result;
}

unint64_t sub_218EE0118()
{
  result = qword_280EAC980;
  if (!qword_280EAC980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC980);
  }

  return result;
}

unint64_t sub_218EE0170()
{
  result = qword_280EAC988;
  if (!qword_280EAC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC988);
  }

  return result;
}

uint64_t sub_218EE01E8()
{
  v1 = [*(*v0 + 16) allSortedArticleIDsInReadingList];
  v2 = sub_219BF5924();

  return v2;
}

void sub_218EE023C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[4] = sub_218EE035C;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_218E28EBC;
  v8[3] = &block_descriptor_73;
  v7 = _Block_copy(v8);

  [v5 syncWithCompletion_];
  _Block_release(v7);
}

uint64_t sub_218EE038C()
{
  sub_218747C64(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v41 = *(v1 - 8);
  v2 = *(v41 + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v43 = &v40 - v5;
  v6 = sub_219BE22B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE22F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747C64(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v11 + 8))(v13, v10);
  v14 = sub_219BE22C4();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  v17 = *(v0 + 24);
  type metadata accessor for FollowingNotificationsPrewarm();
  v19 = swift_allocBox();
  v20 = v18;
  if (v16)
  {
    *v18 = v14;
    v18[1] = v16;
    v21 = *MEMORY[0x277D34088];
    v22 = sub_219BF3BD4();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v20, v21, v22);
    (*(v23 + 56))(v20, 0, 1, v22);
  }

  else
  {
    v24 = sub_219BF3BD4();
    (*(*(v24 - 8) + 56))(v20, 1, 1, v24);
  }

  swift_storeEnumTagMultiPayload();
  v42 = v19;
  v25 = v19 | 0x3000000000000004;
  v26 = sub_219BDFA44();
  v27 = v43;
  (*(*(v26 - 8) + 56))(v43, 1, 1, v26);
  v53 = 0;
  memset(v52, 0, sizeof(v52));
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v49 = v17;
  sub_2187B15C0(v50, &v45, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  if (*(&v46 + 1))
  {
    sub_21875F93C(&v45, v47);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v29 = qword_280ED32D8;
    v28 = qword_280ED32E0;
    v30 = qword_280ED32E8;

    sub_2188202A8(v28);
    __swift_destroy_boxed_opaque_existential_1(v47);
  }

  else
  {
    sub_2187449F0(&v45, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v29 = qword_280ED32D8;
    v28 = qword_280ED32E0;
    v30 = qword_280ED32E8;

    sub_2188202A8(v28);
  }

  v44 = v25;
  v46 = 0u;
  v45 = 0u;
  sub_2187B15C0(v27, v4, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
  sub_2187B15C0(v52, v47, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v31 = (*(v41 + 80) + 24) & ~*(v41 + 80);
  v32 = (v2 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 47) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  sub_2189B4EAC(v4, v34 + v31);
  v35 = v34 + v32;
  v36 = v47[1];
  *v35 = v47[0];
  *(v35 + 16) = v36;
  *(v35 + 32) = v48;
  v37 = (v34 + v33);
  v38 = (v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v37 = 0;
  v37[1] = 0;
  *v38 = v29;
  v38[1] = v28;
  v38[2] = v30;

  sub_2188202A8(v28);
  sub_2186CF94C();
  sub_218EE0DA4(&qword_280EE5A90, 255, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v28);
  sub_2187449F0(v50, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187449F0(v52, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_2187449F0(v27, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
  sub_2187449F0(&v45, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return 1;
}

uint64_t sub_218EE0DA4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

BOOL sub_218EE0DEC()
{
  v1 = [*(v0 + 168) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  v2 = MEMORY[0x277D84F70];
  if (!*(&v11 + 1))
  {
    sub_21874516C(&v12, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_21870F240);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v3 = v9;
  v4 = [v9 integerValue];
  if (v4 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v4))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_21874516C(&v12, &qword_280E8B4F0, v2 + 8, MEMORY[0x277D83D88], sub_21870F240);
    goto LABEL_17;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v7 = -43;
    return ((v7 ^ v4) & 1) == 0;
  }

  v5 = v9;
  v6 = [v5 integerValue];

  v7 = v6 - 43;
  return ((v7 ^ v4) & 1) == 0;
}

uint64_t sub_218EE1028(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_218729BFC(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24[-v4];
  sub_218729BFC(0, &unk_280EDC8D0, sub_218D58B4C, v2);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24[-v7];
  v9 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21883F194();
  MEMORY[0x28223BE20](v12);
  v14 = &v24[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_218D58C24(a1, v14, sub_21883F194);
    if (swift_getEnumCaseMultiPayload())
    {

      v17 = sub_21883F194;
      v18 = v14;
    }

    else
    {
      sub_218A6E5D0(0);
      v20 = *(v19 + 64);
      v21 = sub_219BDD9E4();
      (*(*(v21 - 8) + 8))(&v14[v20], v21);
      sub_218EE329C(v14, type metadata accessor for AudioFeedTrack);
      sub_218D5862C(v8);
      sub_218D58B4C();
      if ((*(*(v22 - 8) + 48))(v8, 1, v22) == 1)
      {

        return sub_21874516C(v8, &unk_280EDC8D0, sub_218D58B4C, MEMORY[0x277D83D88], sub_218729BFC);
      }

      sub_218C162E4(v8, v11);
      sub_219BDDB74();
      v23 = OBJC_IVAR____TtC7NewsUI229AudioBuddyTrackQueueScheduler_currentTrack;
      swift_beginAccess();
      sub_218EE2F84(v5, v16 + v23);
      swift_endAccess();
      sub_218EE13DC(v11);

      v17 = type metadata accessor for AudioFeedTrack;
      v18 = v11;
    }

    return sub_218EE329C(v18, v17);
  }

  return result;
}

uint64_t sub_218EE13DC(id *a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for AudioFeedTrack(0);
  sub_219BDD6D4();
  if (v3)
  {
    [a1[1] duration];
  }

  v4 = sub_219BDEAA4();
  sub_2186C6148(0, &qword_280E8D790);
  v5 = sub_219BF6F74();
  sub_219BF61E4();
  sub_2186F20D4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09EC0;
  v7 = [*a1 identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  v11 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v12 = sub_2186FC3BC();
  *(v6 + 64) = v12;
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  sub_219BF5CB4();
  *(v6 + 96) = v11;
  *(v6 + 104) = v12;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0xE000000000000000;
  sub_219BE5314();

  if ((v4 & 1) == 0)
  {
  }

  return sub_218EE1ED8(a1);
}

uint64_t sub_218EE15F8(unint64_t a1)
{
  v2 = v1;
  sub_2186C6148(0, &qword_280E8D790);
  v4 = sub_219BF6F74();
  sub_219BF6214();
  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  if (a1 >> 62)
  {
    sub_219BF7214();
  }

  v6 = sub_219BF7894();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2186FC3BC();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_219BE5314();

  v10 = v2[15];
  v11 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v10);
  v12 = sub_2193342C8(a1, v10, v11);
  v13 = sub_219BF6F74();
  sub_219BF6214();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09BA0;
  v15 = sub_219BF7894();
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = v9;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  sub_219BE5314();

  sub_219BE20E4();
  sub_21872D31C(v12);
  sub_218EE32FC();
  sub_219BE2114();
}

uint64_t sub_218EE1844(char *a1)
{
  v2 = v1;
  sub_218729BFC(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v23 - v5;
  v42 = sub_219BF1324();
  v28 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BF1C74();
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_219BF2A04();
  v32 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v10 = v9;
  v11 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v44 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6148(0, &qword_280E8D790);
  v13 = sub_219BF6F74();
  sub_219BF6214();
  sub_2186F20D4();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09BA0;
  v15 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    *&v46 = i;
    v17 = sub_219BF7894();
    v19 = v18;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_2186FC3BC();
    *(v14 + 32) = v17;
    *(v14 + 40) = v19;
    sub_219BE5314();

    v25 = a1;
    if (v15)
    {
      result = sub_219BF7214();
      v21 = result;
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v21)
    {
      break;
    }

    v35 = *(v2 + 144);
    ObjectType = swift_getObjectType();
    v2 = 0;
    v43 = v25 & 0xC000000000000001;
    v24 = v25 & 0xFFFFFFFFFFFFFF8;
    v23 = v25 + 32;
    v33 = *MEMORY[0x277D33A68];
    v32 += 13;
    v31 = *MEMORY[0x277D33568];
    v30 = (v36 + 104);
    v29 = *MEMORY[0x277D33290];
    v28 += 13;
    v27 = (v11 + 16);
    v26 = (v11 + 56);
    v14 = v11 + 8;
    v36 = v10;
    while (!__OFSUB__(v21--, 1))
    {
      if (v43)
      {
        v13 = MEMORY[0x21CECE0F0](v21, v25);
      }

      else
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_18;
        }

        if (v21 >= *(v24 + 16))
        {
          goto LABEL_19;
        }

        v13 = *&v23[8 * v21];
        swift_unknownObjectRetain();
      }

      v48 = v13;
      v10 = v37;
      (*v32)(v37, v33, v38);
      (*v30)(v39, v31, v40);
      v46 = 0u;
      v47 = 0u;
      (*v28)(v41, v29, v42);
      sub_218731D50();
      swift_unknownObjectRetain();
      a1 = v44;
      sub_219BF2564();
      sub_219BEACF4();
      v11 = v45;
      v15 = v36;
      (*v27)(v45, a1, v36);
      (*v26)(v11, 0, 1, v15);
      sub_219BE7094();
      swift_unknownObjectRelease();

      sub_21874516C(v45, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88], sub_218729BFC);
      result = (*v14)(v44, v15);
      if (!v21)
      {
        return result;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return result;
}

uint64_t sub_218EE1ED8(id *a1)
{
  v1 = *a1;
  if ([*a1 respondsToSelector_])
  {
    v2 = [v1 narrativeTrackBuddyArticleIDs];
    if (v2)
    {
      v3 = MEMORY[0x277D837D0];
      v4 = v2;
      v5 = sub_219BF5924();

      if (*(v5 + 16))
      {
        sub_2186C6148(0, &qword_280E8D790);
        v6 = sub_219BF6F74();
        sub_219BF6214();
        sub_2186F20D4();
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_219C09EC0;
        v8 = sub_219BF7894();
        v10 = v9;
        *(v7 + 56) = v3;
        v11 = sub_2186FC3BC();
        *(v7 + 64) = v11;
        *(v7 + 32) = v8;
        *(v7 + 40) = v10;
        v12 = [v1 identifier];
        v13 = sub_219BF5414();
        v15 = v14;

        *(v7 + 96) = v3;
        *(v7 + 104) = v11;
        *(v7 + 72) = v13;
        *(v7 + 80) = v15;
        sub_219BE5314();

        v16 = [v1 identifier];
        sub_219BF5414();

        MEMORY[0x28223BE20](v17);
        sub_219BE2014();
      }
    }
  }

  sub_2186C6148(0, &qword_280E8D790);
  v19 = sub_219BF6F74();
  sub_219BF61E4();
  sub_2186F20D4();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09BA0;
  v21 = [v1 identifier];
  v22 = sub_219BF5414();
  v24 = v23;

  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_2186FC3BC();
  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  sub_219BE5314();
}

uint64_t sub_218EE2218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a1;
  v6 = type metadata accessor for AudioFeedTrack(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v16[4] = a1;
  v16[5] = a2;
  sub_218729BFC(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0);
  v9 = sub_219BF66A4();
  sub_218D58C24(a3, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioFeedTrack);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_218C162E4(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  type metadata accessor for AudioBuddyTrackQueueScheduler();
  sub_219BE2F84();

  sub_218D58C24(a3, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioFeedTrack);
  v12 = swift_allocObject();
  sub_218C162E4(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10);
  v13 = sub_219BE2E54();
  v14 = sub_219BE2FD4();

  return v14;
}

uint64_t sub_218EE2484(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AudioFeedTrack(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v64 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218EE3174();
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218729BFC(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = &v63 - v17;
  v65 = *a1;
  v66 = a3;
  sub_218D58C24(a3, &v63 - v17, type metadata accessor for AudioFeedTrack);
  (*(v7 + 56))(v18, 0, 1, v6);
  v19 = OBJC_IVAR____TtC7NewsUI229AudioBuddyTrackQueueScheduler_currentTrack;
  swift_beginAccess();
  v20 = *(v10 + 56);
  sub_218EE3208(v18, v12);
  v63 = a2;
  sub_218EE3208(a2 + v19, &v12[v20]);
  v21 = *(v7 + 48);
  if (v21(v12, 1, v6) == 1)
  {
    sub_21874516C(v18, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_218729BFC);
    if (v21(&v12[v20], 1, v6) == 1)
    {
      sub_21874516C(v12, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_218729BFC);
      v22 = v65;
LABEL_19:
      sub_2186C6148(0, &qword_280E8D790);
      v50 = sub_219BF6F74();
      sub_219BF6214();
      sub_2186F20D4();
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_219C09EC0;
      if (v22 >> 62)
      {
        v52 = sub_219BF7214();
      }

      else
      {
        v52 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v67 = v52;
      v53 = sub_219BF7894();
      v55 = v54;
      v56 = MEMORY[0x277D837D0];
      *(v51 + 56) = MEMORY[0x277D837D0];
      v57 = sub_2186FC3BC();
      *(v51 + 64) = v57;
      *(v51 + 32) = v53;
      *(v51 + 40) = v55;
      v58 = [*v66 identifier];
      v59 = sub_219BF5414();
      v61 = v60;

      *(v51 + 96) = v56;
      *(v51 + 104) = v57;
      *(v51 + 72) = v59;
      *(v51 + 80) = v61;
      sub_219BE5314();

      if (sub_218EE0DEC())
      {
        sub_218EE1844(v22);
      }

      else
      {
        sub_218EE15F8(v22);
      }

      goto LABEL_24;
    }

    goto LABEL_6;
  }

  sub_218EE3208(v12, v16);
  if (v21(&v12[v20], 1, v6) == 1)
  {
    sub_21874516C(v18, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_218729BFC);
    sub_218EE329C(v16, type metadata accessor for AudioFeedTrack);
LABEL_6:
    sub_218EE329C(v12, sub_218EE3174);
LABEL_7:
    v22 = v65;
    goto LABEL_8;
  }

  v35 = v64;
  sub_218C162E4(&v12[v20], v64);
  v36 = [*v16 identifier];
  v37 = sub_219BF5414();
  v39 = v38;

  v40 = [*v35 identifier];
  v41 = sub_219BF5414();
  v43 = v42;

  if (v37 == v41 && v39 == v43)
  {
  }

  else
  {
    v45 = sub_219BF78F4();

    if ((v45 & 1) == 0)
    {
      v46 = MEMORY[0x277D83D88];
      sub_21874516C(v18, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_218729BFC);
      sub_218EE329C(v64, type metadata accessor for AudioFeedTrack);
      sub_218EE329C(v16, type metadata accessor for AudioFeedTrack);
      sub_21874516C(v12, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v46, sub_218729BFC);
      goto LABEL_7;
    }
  }

  v47 = v64;
  v48 = sub_2198DB278((v16 + *(v6 + 32)), (v64 + *(v6 + 32)));
  v49 = MEMORY[0x277D83D88];
  sub_21874516C(v18, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_218729BFC);
  sub_218EE329C(v47, type metadata accessor for AudioFeedTrack);
  sub_218EE329C(v16, type metadata accessor for AudioFeedTrack);
  sub_21874516C(v12, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v49, sub_218729BFC);
  v22 = v65;
  if (v48)
  {
    goto LABEL_19;
  }

LABEL_8:
  sub_2186C6148(0, &qword_280E8D790);
  v23 = sub_219BF6F74();
  sub_219BF6214();
  sub_2186F20D4();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09EC0;
  if (v22 >> 62)
  {
    v25 = sub_219BF7214();
  }

  else
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = v25;
  v26 = sub_219BF7894();
  v28 = v27;
  v29 = MEMORY[0x277D837D0];
  *(v24 + 56) = MEMORY[0x277D837D0];
  v30 = sub_2186FC3BC();
  *(v24 + 64) = v30;
  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  v31 = [*v66 identifier];
  v32 = sub_219BF5414();
  v34 = v33;

  *(v24 + 96) = v29;
  *(v24 + 104) = v30;
  *(v24 + 72) = v32;
  *(v24 + 80) = v34;
  sub_219BE5314();

LABEL_24:
  sub_21870F240(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218EE2D10(uint64_t a1, id *a2)
{
  sub_2186C6148(0, &qword_280E8D790);
  v3 = sub_219BF6F74();
  sub_219BF61F4();
  sub_2186F20D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  v5 = [*a2 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  v9 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2186FC3BC();
  *(v4 + 64) = v10;
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v4 + 96) = v9;
  *(v4 + 104) = v10;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0xE000000000000000;
  sub_219BE5314();
}

uint64_t sub_218EE2E70()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_21874516C(v0 + OBJC_IVAR____TtC7NewsUI229AudioBuddyTrackQueueScheduler_currentTrack, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_218729BFC);

  return v0;
}

uint64_t sub_218EE2F24()
{
  sub_218EE2E70();

  return swift_deallocClassInstance();
}

uint64_t sub_218EE2F84(uint64_t a1, uint64_t a2)
{
  sub_218729BFC(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EE3024()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[10];
  v4 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
  return MEMORY[0x21CEC9610](v2, *MEMORY[0x277D30B50], v3, v4);
}

uint64_t sub_218EE3104(uint64_t a1)
{
  v3 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_218EE2D10(a1, v4);
}

void sub_218EE3174()
{
  if (!qword_280EDC950)
  {
    sub_218729BFC(255, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EDC950);
    }
  }
}

uint64_t sub_218EE3208(uint64_t a1, uint64_t a2)
{
  sub_218729BFC(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EE329C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218EE32FC()
{
  result = qword_280E8F350;
  if (!qword_280E8F350)
  {
    sub_218729BFC(255, &qword_280E8F360, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83940]);
    sub_2187078D4(&qword_280EDC9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F350);
  }

  return result;
}

uint64_t sub_218EE33C0(unint64_t a1, uint64_t a2)
{
  v39 = a2;
  v38 = sub_219BE6234();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_21:
    v6 = sub_219BF7214();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v36 = a1 & 0xFFFFFFFFFFFFFF8;
      v37 = a1 & 0xC000000000000001;
      v35 = (v3 + 88);
      v34 = *MEMORY[0x277D6D558];
      v30 = *MEMORY[0x277D6D568];
      v29 = *MEMORY[0x277D6D560];
      HIDWORD(v28) = *MEMORY[0x277D6D570];
      v31 = (v3 + 8);
      v32 = v6;
      v33 = a1;
      do
      {
        if (v37)
        {
          v9 = MEMORY[0x21CECE0F0](v7, a1);
        }

        else
        {
          if (v7 >= *(v36 + 16))
          {
            goto LABEL_20;
          }

          v9 = *(a1 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v12 = *(v39 + 24);
        ObjectType = swift_getObjectType();
        v14 = [v10 identifier];
        v15 = sub_219BF5414();
        v16 = v5;
        v18 = v17;

        v19 = *(v12 + 32);
        v40 = ObjectType;
        v20 = v19(v15, v18, ObjectType, v12);
        v5 = v16;

        v3 = *(v20 + 72);
        sub_219BE2184();
        v21 = v38;
        v22 = (*v35)(v16, v38);
        if (v22 == v34)
        {
          (*v31)(v16, v21);
          v8 = *(v20 + 64);

          if (v8 == 2)
          {
            return 1;
          }
        }

        else
        {
          if (v22 == v30)
          {
            (*v31)(v16, v21);
          }

          else if (v22 != v29 && v22 != HIDWORD(v28))
          {
            result = sub_219BF7514();
            __break(1u);
            return result;
          }

          v23 = [v10 identifier];
          v24 = sub_219BF5414();
          v26 = v25;

          v3 = sub_21987B00C(v24, v26, v40, v12);

          v5 = v16;
          if ((v3 & 1) == 0)
          {
            return 1;
          }
        }

        ++v7;
        a1 = v33;
      }

      while (v11 != v32);
    }
  }

  return 0;
}

uint64_t sub_218EE3768(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v61 = a3;
  v58 = a2;
  v55 = a1;
  v4 = sub_219BDF104();
  v5 = *(v4 - 8);
  v70 = v4;
  v71 = v5;
  MEMORY[0x28223BE20](v4);
  v68 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDF324();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v63 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDF314();
  v10 = *(v9 - 8);
  v66 = v9;
  v67 = v10;
  MEMORY[0x28223BE20](v9);
  v62 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_219BDF4B4();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_219BDFF74();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v53 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_219BDFC24();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_219BE0604();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE1714();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21934C4BC();
  sub_218EE5140(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v73 = v20;
  v77 = sub_219BDCD44();
  v21 = *(v77 - 8);
  v72 = *(v21 + 72);
  v22 = v21;
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v46 = *(v21 + 80);
  v24 = swift_allocObject();
  v78 = xmmword_219C09BA0;
  *(v24 + 16) = xmmword_219C09BA0;
  v76 = *MEMORY[0x277CEAD18];
  v25 = *(v22 + 104);
  v25(v24 + v23);
  v75 = v22 + 104;
  v45 = v25;
  v74 = "IssuesCommandHandler.swift";
  sub_218EE51A4(&unk_280EE7F60, MEMORY[0x277D2F890]);
  sub_219BDCCC4();

  (*(v17 + 8))(v19, v16);
  (*(v50 + 104))(v48, *MEMORY[0x277D2DFD8], v49);
  v26 = v47;
  sub_219BE05F4();
  v27 = swift_allocObject();
  *(v27 + 16) = v78;
  v28 = v76;
  v29 = v77;
  (v25)(v27 + v23, v76, v77);
  sub_218EE51A4(&qword_27CC13298, MEMORY[0x277D2E640]);
  v30 = v26;
  v31 = v51;
  sub_219BDCCC4();

  (*(v52 + 8))(v30, v31);
  (*(v56 + 16))(v54, v61, v57);
  v32 = v53;
  sub_219BDFF64();
  v33 = swift_allocObject();
  *(v33 + 16) = v78;
  v34 = v45;
  (v45)(v33 + v23, v28, v29);
  sub_218EE51A4(&qword_27CC132A0, MEMORY[0x277D2E270]);
  v35 = v59;
  sub_219BDCCC4();

  (*(v60 + 8))(v32, v35);
  (*(v64 + 104))(v63, *MEMORY[0x277D2DA00], v65);
  v36 = v62;
  sub_219BDF304();
  v37 = swift_allocObject();
  *(v37 + 16) = v78;
  (v34)(v37 + v23, v76, v77);
  sub_218EE51A4(&unk_27CC132A8, MEMORY[0x277D2D9F8]);
  v38 = v66;
  sub_219BDCCC4();

  (*(v67 + 8))(v36, v38);
  v39 = [v58 sourceChannel];
  v40 = v68;
  sub_219BE01F4();
  v41 = swift_allocObject();
  *(v41 + 16) = v78;
  (v34)(v41 + v23, v76, v77);
  sub_218EE51A4(&unk_280EE8890, MEMORY[0x277D2D8B8]);
  v42 = v70;
  sub_219BDCCC4();

  (*(v71 + 8))(v40, v42);
  sub_219BE0214();
  sub_218EE51A4(&qword_27CC132B8, MEMORY[0x277D2E3C8]);
  memset(v79, 0, sizeof(v79));
  sub_219BDCCE4();
  swift_unknownObjectRelease();
  return sub_2187451CC(v79, sub_21880702C);
}

uint64_t sub_218EE4230()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_218EE42E4(unint64_t a1)
{
  v3 = type metadata accessor for OfflineIssueManager.Errors();
  v4 = *(v3 - 1);
  v5 = MEMORY[0x28223BE20](v3);
  v67 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v67 - v7;
  v8 = sub_219BDF4B4();
  v9 = *(v8 - 8);
  v85 = v8;
  v86 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v84 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = &v67 - v12;
  sub_218EE5140(0, &qword_27CC13288, type metadata accessor for OfflineIssueManager.Errors, MEMORY[0x277D83D88]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v69 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v83 = &v67 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v67 - v18;
  v70 = v4;
  v20 = *(v4 + 56);
  v88 = v3;
  v81 = v20;
  v82 = v4 + 56;
  v20(&v67 - v18, 1, 1, v3);
  if (a1 >> 62)
  {
    v21 = sub_219BF7214();
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
LABEL_3:
      if (v21 < 1)
      {
        __break(1u);
        goto LABEL_31;
      }

      v22 = v87[2];
      v23 = v87[3];
      ObjectType = swift_getObjectType();
      v25 = 0;
      v26 = *(v23 + 24);
      v92 = v23 + 24;
      v93 = ObjectType;
      v90 = a1 & 0xC000000000000001;
      v91 = v26;
      v76 = *MEMORY[0x277D2DAE0];
      v75 = v86 + 104;
      v74 = v86 + 16;
      v73 = v10 + 7;
      v72 = v86 + 32;
      v71 = v86 + 8;
      v79 = v21;
      v80 = a1;
      v78 = v22;
      v77 = v23;
      do
      {
        if (v90)
        {
          v39 = MEMORY[0x21CECE0F0](v25, a1);
        }

        else
        {
          v39 = *(a1 + 8 * v25 + 32);
        }

        v40 = v39;
        v41 = [v39 identifier];
        v42 = sub_219BF5414();
        v44 = v43;

        v45 = v91(v42, v44, 1, v93, v23);
        LOBYTE(v42) = v46;

        if (v42)
        {
          sub_218EE4E24(v19);

          v95 = v45;
          sub_218A450F0();
          v47 = v83;
          v48 = v88;
          v49 = swift_dynamicCast();
          v81(v47, v49 ^ 1u, 1, v48);
          sub_218EE4EB0(v47, v19);
        }

        else
        {
          sub_218BFF748(v45, 0);
          v28 = v85;
          v27 = v86;
          v29 = v94;
          (*(v86 + 104))(v94, v76, v85);
          v30 = v87;
          v89 = v87[10];
          v31 = v84;
          (*(v27 + 16))(v84, v29, v28);
          v32 = (*(v27 + 80) + 24) & ~*(v27 + 80);
          v33 = v19;
          v34 = (v73 + v32) & 0xFFFFFFFFFFFFFFF8;
          v35 = swift_allocObject();
          *(v35 + 16) = v40;
          (*(v27 + 32))(v35 + v32, v31, v28);
          *(v35 + v34) = v30;
          v19 = v33;
          a1 = v80;
          v36 = v40;

          sub_219BDD154();

          v37 = *(v27 + 8);
          v21 = v79;
          v38 = v28;
          v23 = v77;
          v37(v94, v38);
        }

        ++v25;
      }

      while (v21 != v25);
    }
  }

  v50 = v69;
  sub_218EE4F44(v19, v69);
  if ((*(v70 + 48))(v50, 1, v88) == 1)
  {
    sub_218EE4E24(v19);
    v51 = v50;
    return sub_218EE4E24(v51);
  }

  v1 = v19;
  v19 = v68;
  sub_218EE4FD8(v50, v68);
  v21 = v67;
  sub_218EE503C(v19, v67);
  sub_2186F083C();
  v53 = (*(*(v52 - 8) + 48))(v21, 7, v52);
  if (v53 > 3)
  {
    goto LABEL_27;
  }

  if (v53 > 1)
  {
    if (v53 != 2)
    {
      __swift_project_boxed_opaque_existential_1(v87 + 12, v87[15]);
      v60 = sub_219BE7174();
      if (v60)
      {
        v61 = v60;
        v62 = [v60 rootViewController];

        if (v62)
        {
          v63 = sub_219BF6534();

          v64 = type metadata accessor for AlertNoStorage();
          v65 = swift_allocObject();
          v96 = v64;
          v97 = sub_218EE51A4(&qword_27CC13290, type metadata accessor for AlertNoStorage);
          v95 = v65;
          sub_219BEA744();
          swift_allocObject();
          sub_219BEA6C4();
          sub_219BEA6D4();
        }
      }
    }

    goto LABEL_27;
  }

  if (v53)
  {
LABEL_27:
    sub_2187451CC(v19, type metadata accessor for OfflineIssueManager.Errors);
    v51 = v1;
    return sub_218EE4E24(v51);
  }

  __swift_project_boxed_opaque_existential_1(v87 + 12, v87[15]);
  v54 = sub_219BE7174();
  if (v54)
  {
    v55 = v54;
    v56 = [v54 rootViewController];

    if (v56)
    {
      v3 = sub_219BF6534();

      if (qword_27CC087A8 == -1)
      {
LABEL_21:
        v57 = sub_219BF1584();
        __swift_project_value_buffer(v57, qword_27CCD8E68);
        __swift_project_boxed_opaque_existential_1(v87 + 5, v87[8]);
        v58 = sub_219BF4994();
        [v3 presentViewController:v58 animated:1 completion:0];

        sub_2187451CC(v19, type metadata accessor for OfflineIssueManager.Errors);
        sub_218EE4E24(v1);
        return (*(*(v57 - 8) + 8))(v21, v57);
      }

LABEL_31:
      swift_once();
      goto LABEL_21;
    }
  }

  sub_2187451CC(v19, type metadata accessor for OfflineIssueManager.Errors);
  sub_218EE4E24(v1);
  v66 = sub_219BF1584();
  return (*(*(v66 - 8) + 8))(v21, v66);
}

uint64_t sub_218EE4C30(unint64_t a1)
{
  v2 = sub_218EE33C0(a1, v1);
  v3 = [*(v1 + 32) cachedSubscription];
  if (objc_getAssociatedObject(v3, v3 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    sub_2187451CC(&v13, sub_21880702C);
    goto LABEL_9;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v4 = v10;
  v5 = [v10 integerValue];
  if (v5 == -1)
  {

    return v2 & 1;
  }

  v6 = v5;
LABEL_10:
  if (objc_getAssociatedObject(v3, ~v6))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    sub_21870AD58();
    if (swift_dynamicCast())
    {
      v7 = v10;
      v8 = [v7 integerValue];

      if ((v8 ^ v6))
      {
        return v2 & 1;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_2187451CC(&v13, sub_21880702C);
  }

  if ((v6 & 1) == 0)
  {
LABEL_19:
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_218EE4E24(uint64_t a1)
{
  sub_218EE5140(0, &qword_27CC13288, type metadata accessor for OfflineIssueManager.Errors, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218EE4EB0(uint64_t a1, uint64_t a2)
{
  sub_218EE5140(0, &qword_27CC13288, type metadata accessor for OfflineIssueManager.Errors, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EE4F44(uint64_t a1, uint64_t a2)
{
  sub_218EE5140(0, &qword_27CC13288, type metadata accessor for OfflineIssueManager.Errors, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EE4FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineIssueManager.Errors();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EE503C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineIssueManager.Errors();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EE50A0(uint64_t a1)
{
  v3 = *(sub_219BDF4B4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_218EE3768(a1, v5, v1 + v4, v6);
}

void sub_218EE5140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218EE51A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218EE5214@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_218EE5710(0, &qword_27CC0FE98, sub_2186EF13C);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v29 - v5;
  v36 = type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EE5710(0, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v29 - v12;
  sub_218EE5764();
  v14 = v13;
  v37 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EE57C0();
  sub_219BF7B34();
  if (v2)
  {
    v17 = a1;
  }

  else
  {
    v31 = v11;
    v18 = v34;
    v33 = a1;
    v39 = 0x4C656C6369747261;
    v40 = 0xEB00000000747369;
    v41 = 0;
    v42 = 1;
    sub_2186EA534(&qword_27CC132D0, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
    v19 = v36;
    v32 = v14;
    sub_219BF76E4();
    v30 = v16;
    v20 = v7;
    v21 = v38;
    v22 = v31;
    v23 = v43;
    sub_218EE5814(v43, v31);
    v24 = *(v18 + 48);
    v25 = v24(v22, 1, v19);
    v26 = v33;
    if (v25 == 1)
    {
      sub_2186EF13C();
      (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
      sub_219BA5644(v21, 0, v20);
      sub_218EE5894(v23);
      if (v24(v22, 1, v19) != 1)
      {
        sub_218EE5894(v22);
      }
    }

    else
    {
      sub_218EE5894(v23);
      sub_218EE590C(v22, v20);
    }

    sub_218EE590C(v20, v35);
    (*(v37 + 8))(v30, v32);
    v17 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_218EE5680(uint64_t a1)
{
  v2 = sub_218EE57C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218EE56BC(uint64_t a1)
{
  v2 = sub_218EE57C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218EE5710(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_218EE5764()
{
  if (!qword_27CC132C0)
  {
    sub_218EE57C0();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC132C0);
    }
  }
}

unint64_t sub_218EE57C0()
{
  result = qword_27CC132C8;
  if (!qword_27CC132C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC132C8);
  }

  return result;
}

uint64_t sub_218EE5814(uint64_t a1, uint64_t a2)
{
  sub_218EE5710(0, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EE5894(uint64_t a1)
{
  sub_218EE5710(0, &qword_27CC0FEA8, type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218EE590C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListSharedWithYouFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218EE5984()
{
  result = qword_27CC132D8;
  if (!qword_27CC132D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC132D8);
  }

  return result;
}

unint64_t sub_218EE59DC()
{
  result = qword_27CC132E0;
  if (!qword_27CC132E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC132E0);
  }

  return result;
}

unint64_t sub_218EE5A34()
{
  result = qword_27CC132E8;
  if (!qword_27CC132E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC132E8);
  }

  return result;
}

void sub_218EE5B30(void *a1)
{

  v2 = sub_219BF53D4();

  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v4, &v5);
    sub_218C6194C();
    swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }
}

__n128 EmailSignupRouteModel.init(model:onComplete:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u8[0];
  v5 = a1[1].n128_u8[1];
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u8[0] = v4;
  a4[1].n128_u8[1] = v5;
  a4[1].n128_u64[1] = a2;
  a4[2].n128_u64[0] = a3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_So21FCSignupRequestStatusVIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_218EE5C3C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_218EE5C98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_218EE5D04()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1(v0 + 144);

  return swift_deallocClassInstance();
}

uint64_t sub_218EE5D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218951864();
  sub_219BE6934();
  v15[2] = v12;
  v15[3] = v13;
  v16[0] = v14[0];
  *(v16 + 9) = *(v14 + 9);
  v15[0] = v10;
  v15[1] = v11;
  v5 = sub_218EE5E74(v15, a3);
  v7 = v6;
  sub_218EE7884(v15);
  *&v10 = v5;
  *(&v10 + 1) = v7;
  v9[2] = a2;
  v9[3] = a3;
  sub_21894842C(sub_218EE78D8, v9);
  sub_21878E0F4();
  sub_21878E148();
  return sub_219BE8174();
}

uint64_t sub_218EE5E74(uint64_t a1, uint64_t a2)
{
  v139 = a2;
  v3 = *a1;
  v141 = *(a1 + 8);
  v142 = v3;
  v4 = *(a1 + 64);
  v156 = *(a1 + 48);
  v157[0] = v4;
  *(v157 + 9) = *(a1 + 73);
  v5 = *(a1 + 32);
  v154 = *(a1 + 16);
  v155 = v5;
  v6 = type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes();
  MEMORY[0x28223BE20](v135);
  v137 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for FollowingNotificationsSectionFooterViewLayoutOptions();
  MEMORY[0x28223BE20](v134);
  v136 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TitleViewLayoutAttributes(0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v133 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  *&v138 = &v131 - v14;
  v15 = type metadata accessor for TitleViewLayoutOptions(0);
  v16 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v19 = &v131 - v18;
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v23 = *(a1 + 32);
  v22 = *(a1 + 40);
  v25 = *(a1 + 48);
  v24 = *(a1 + 56);
  v26 = *(a1 + 64);
  v27 = *(a1 + 88);
  if (v27 <= 3)
  {
    if (v27 - 1 < 2)
    {
      *&v149 = v142;
      *(&v149 + 1) = v141;
      *&v150 = v20;
      *(&v150 + 1) = v21;
      *&v151 = v23;
      *(&v151 + 1) = v22;
      *&v152 = v25;
      *(&v152 + 1) = v24;
      v153 = v26;
      v28 = v19;
      v29 = sub_219BE8164();
      (*(*(v29 - 8) + 16))(v28, v139, v29);
      sub_218EE7AC8(a1, &v144);
      sub_219BED0C4();
      sub_219BED0C4();
      *(v28 + v15[5]) = 0x4028000000000000;
      *(v28 + v15[6]) = 0x4026000000000000;
      *(v28 + v15[7]) = 0;
      __swift_project_boxed_opaque_existential_1(v140 + 2, v140[5]);
      v30 = *&v138;
      sub_219459814(&v149, *&v28, *&v138);
      sub_218EE79A8(0, &qword_27CC13320, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header);
      v31 = *(type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header(0) - 8);
      v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_219C09BA0;
      v34 = v33 + v32;
      sub_218EE79FC(0, &qword_27CC10B88, type metadata accessor for TitleViewLayoutAttributes);
      v36 = *(v35 + 48);
      v37 = v152;
      *(v34 + 32) = v151;
      *(v34 + 48) = v37;
      *(v34 + 64) = v153;
      v38 = v150;
      *v34 = v149;
      *(v34 + 16) = v38;
      sub_218EE7B24(v30, v34 + v36, type metadata accessor for TitleViewLayoutAttributes);
      swift_storeEnumTagMultiPayload();
      sub_218EE7A68(v30, type metadata accessor for TitleViewLayoutAttributes);
      v39 = type metadata accessor for TitleViewLayoutOptions;
LABEL_11:
      v80 = v39;
      v81 = v28;
      goto LABEL_12;
    }

    if (!*(a1 + 88))
    {
      *&v149 = v142;
      *(&v149 + 1) = v141;
      *&v150 = v20;
      *(&v150 + 1) = v21;
      *&v151 = v23;
      *(&v151 + 1) = v22;
      *&v152 = v25;
      *(&v152 + 1) = v24;
      v153 = v26;
      v68 = v142;
      v69 = v141;
      v70 = *&v19;
      v71 = sub_219BE8164();
      (*(*(v71 - 8) + 16))(COERCE_DOUBLE(*&v70), v139, v71);
      *(*&v70 + v15[5]) = 0x4010000000000000;
      *(*&v70 + v15[6]) = 0x4010000000000000;
      *(*&v70 + v15[7]) = 0;
      __swift_project_boxed_opaque_existential_1(v140 + 2, v140[5]);
      v72 = *&v138;
      sub_219459814(&v149, v70, *&v138);
      sub_218EE79A8(0, &qword_27CC13320, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header);
      v73 = *(type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header(0) - 8);
      v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_219C09BA0;
      v75 = v33 + v74;
      sub_218EE79FC(0, &qword_27CC10B88, type metadata accessor for TitleViewLayoutAttributes);
      v77 = *(v76 + 48);
      v78 = v152;
      *(v75 + 32) = v151;
      *(v75 + 48) = v78;
      *(v75 + 64) = v153;
      v79 = v150;
      *v75 = v149;
      *(v75 + 16) = v79;
      sub_218EE7B24(v72, v75 + v77, type metadata accessor for TitleViewLayoutAttributes);
      swift_storeEnumTagMultiPayload();
      *&v144 = v68;
      *(&v144 + 1) = v69;
      v147 = v156;
      v148[0] = v157[0];
      *(v148 + 9) = *(v157 + 9);
      v146 = v155;
      v145 = v154;
      sub_218EE7B24(&v144, &v143, sub_218799404);
      sub_218EE7A68(v72, type metadata accessor for TitleViewLayoutAttributes);
      v80 = type metadata accessor for TitleViewLayoutOptions;
      v81 = *&v70;
LABEL_12:
      sub_218EE7A68(v81, v80);
      return v33;
    }

    v138 = *&v17;
    *&v144 = v142;
    *(&v144 + 1) = v141;
    goto LABEL_14;
  }

  if (v27 == 4)
  {
    v138 = *&v17;
    *&v144 = v142;
    *(&v144 + 1) = v141;
LABEL_14:
    *&v145 = v20;
    *(&v145 + 1) = v21;
    *&v146 = v23;
    *(&v146 + 1) = v22;
    *&v147 = v25;
    *(&v147 + 1) = v24;
    *&v148[0] = v26;
    *(v148 + 8) = *(a1 + 72);
    v88 = *&v148[1];
    v132 = *(&v148[0] + 1);
    v89 = v26;
    sub_218967C1C(&v144, &v149);
    *&v144 = v142;
    *(&v144 + 1) = v141;
    *&v145 = v20;
    *(&v145 + 1) = v21;
    *&v146 = v23;
    *(&v146 + 1) = v22;
    *&v147 = v25;
    *(&v147 + 1) = v24;
    *&v148[0] = v89;
    v90 = sub_219BE8164();
    v91 = *(*(v90 - 8) + 16);
    v92 = v138;
    v93 = v139;
    v91(*&v138, v139, v90);

    sub_219BED0C4();
    sub_219BED0C4();
    *(*&v92 + v15[5]) = 0x4028000000000000;
    *(*&v92 + v15[6]) = 0x4026000000000000;
    *(*&v92 + v15[7]) = 0;
    v94 = v140;
    __swift_project_boxed_opaque_existential_1(v140 + 2, v140[5]);
    v95 = v133;
    sub_219459814(&v144, v92, v133);
    if (v88)
    {
      v96 = v93;
      v97 = v136;
      v91(v136, v96, v90);
      v98 = v134;
      *(v97 + *(v134 + 20)) = 0x4000000000000000;
      *(v97 + v98[6]) = 0x403B000000000000;
      *(v97 + v98[7]) = 0x4020000000000000;
      *(v97 + v98[8]) = 0;
      v99 = *__swift_project_boxed_opaque_existential_1(v94 + 7, v94[10]);
      sub_219BE7FF4();
      v101 = v100 + 8.0;
      sub_219BE8004();
      v103 = v102 - v101;
      __swift_project_boxed_opaque_existential_1((v99 + 16), *(v99 + 40));
      sub_218EC2890();
      v104 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v105 = v132;
      v106 = sub_219BF53D4();
      type metadata accessor for Key(0);
      sub_21899E604();
      v107 = sub_219BF5204();

      v108 = [v104 initWithString:v106 attributes:v107];

      sub_219BF67A4();
      v110 = v109;

      v111 = *MEMORY[0x277D6E750];
      v112 = sub_219BE9834();
      v113 = v137;
      (*(*(v112 - 8) + 104))(v137, v111, v112);
      v114 = v135;
      v115 = v113 + *(v135 + 20);
      *v115 = 0;
      *(v115 + 8) = 0;
      *(v115 + 16) = v103;
      *(v115 + 24) = v110 + 2.0 + 27.0;
      v116 = v113 + *(v114 + 24);
      *v116 = v101;
      *(v116 + 8) = 0x4000000000000000;
      *(v116 + 16) = v103;
      *(v116 + 24) = v110;
      sub_218EE79A8(0, &qword_27CC13330, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer);
      v117 = *(type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer(0) - 8);
      v118 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_219C09BA0;
      v120 = (v119 + v118);
      sub_218EE79FC(0, &qword_27CC13338, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
      v122 = *(v121 + 48);
      *v120 = v105;
      v120[1] = v88;
      sub_218EE7B24(v113, v119 + v118 + v122, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
      sub_218EE7A68(v113, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
      sub_218EE7A68(v97, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutOptions);
    }

    sub_218EE79A8(0, &qword_27CC13320, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header);
    v123 = *(type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header(0) - 8);
    v124 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C09BA0;
    v125 = v33 + v124;
    sub_218EE79FC(0, &qword_27CC10B88, type metadata accessor for TitleViewLayoutAttributes);
    v127 = *(v126 + 48);
    v128 = v147;
    *(v125 + 32) = v146;
    *(v125 + 48) = v128;
    *(v125 + 64) = *&v148[0];
    v129 = v145;
    *v125 = v144;
    *(v125 + 16) = v129;
    sub_218EE7B24(v95, v125 + v127, type metadata accessor for TitleViewLayoutAttributes);
    swift_storeEnumTagMultiPayload();
    sub_218EE7A68(v95, type metadata accessor for TitleViewLayoutAttributes);
    sub_218EE7A68(*&v138, type metadata accessor for TitleViewLayoutOptions);
    return v33;
  }

  if (v27 != 5)
  {
    __swift_project_boxed_opaque_existential_1(v140 + 18, v140[21]);
    v28 = v8;
    v82 = v142;
    sub_21899DE78(v142, v8);
    sub_218EE79A8(0, &qword_27CC13320, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header);
    v83 = *(type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header(0) - 8);
    v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C09BA0;
    v85 = (v33 + v84);
    sub_218EE79FC(0, &qword_27CC13328, type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes);
    v87 = *(v86 + 48);
    *v85 = v82;
    sub_218EE7B24(v28, v85 + v87, type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes);
    swift_storeEnumTagMultiPayload();
    v39 = type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes;
    goto LABEL_11;
  }

  v40 = sub_219BE8164();
  v41 = v136;
  (*(*(v40 - 8) + 16))(v136, v139, v40);
  v42 = v134;
  *(v41 + *(v134 + 20)) = 0x4000000000000000;
  *(v41 + v42[6]) = 0x403B000000000000;
  *(v41 + v42[7]) = 0x4020000000000000;
  *(v41 + v42[8]) = 0;
  v43 = *__swift_project_boxed_opaque_existential_1(v140 + 7, v140[10]);
  v44 = v141;

  sub_219BE7FF4();
  v46 = v45 + 8.0;
  sub_219BE8004();
  v48 = v47 - v46;
  __swift_project_boxed_opaque_existential_1((v43 + 16), *(v43 + 40));
  sub_218EC2890();
  v49 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v50 = v142;
  v51 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v52 = sub_219BF5204();

  v53 = [v49 initWithString:v51 attributes:v52];

  sub_219BF67A4();
  v55 = v54;

  v56 = *MEMORY[0x277D6E750];
  v57 = sub_219BE9834();
  v58 = v137;
  (*(*(v57 - 8) + 104))(v137, v56, v57);
  v59 = v135;
  v60 = v58 + *(v135 + 20);
  *v60 = 0;
  *(v60 + 8) = 0;
  *(v60 + 16) = v48;
  *(v60 + 24) = v55 + 2.0 + 27.0;
  v61 = v58 + *(v59 + 24);
  *v61 = v46;
  *(v61 + 8) = 0x4000000000000000;
  *(v61 + 16) = v48;
  *(v61 + 24) = v55;
  sub_218EE79A8(0, &qword_27CC13330, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer);
  v62 = *(type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer(0) - 8);
  v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_219C09BA0;
  v65 = (v64 + v63);
  sub_218EE79FC(0, &qword_27CC13338, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
  v67 = *(v66 + 48);
  *v65 = v50;
  v65[1] = v44;
  sub_218EE7B24(v58, v64 + v63 + v67, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
  sub_218EE7A68(v58, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
  sub_218EE7A68(v41, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutOptions);
  return MEMORY[0x277D84F90];
}

uint64_t sub_218EE6EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A25EF0();
  sub_219BE5FC4();
  sub_218EE6FA0(v5, a3, v6);
  sub_218A26564(v5);
  sub_218EE78F8(v6, v5);
  sub_21878E148();
  sub_219BE75D4();
  return sub_218EE7954(v6);
}

void sub_218EE6FA0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_219BE9F64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE8164();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A26508(a1, v78);
  if (v79)
  {
    if (v79 == 1)
    {
      sub_2186CB1F0(v78, v75);
      v69 = v11;
      v71 = v6;
      v72 = a3;
      v14 = *(v11 + 16);
      v14(v13, a2, v10);
      type metadata accessor for TagViewLayoutOptions();
      v15 = swift_allocObject();
      v16 = sub_219BE8034();
      v17 = [v16 preferredContentSizeCategory];

      LOBYTE(v16) = sub_219BF6924();
      type metadata accessor for TagViewLayoutOptions.AccessoryOptions();
      v18 = swift_allocObject();
      __asm
      {
        FMOV            V0.2D, #22.0
        FMOV            V1.2D, #30.0
      }

      *(v18 + 32) = _Q0;
      *(v18 + 48) = _Q1;
      *(v18 + 64) = 0x4041800000000000;
      *(v18 + 16) = &unk_282A24CD8;
      *(v18 + 24) = v16 & 1;
      *(v15 + 72) = v18;
      v14((v15 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions), v13, v10);
      sub_219BE8154();
      v26 = v25;
      sub_219BE7FB4();
      sub_219BE9F54();
      v28 = v27;
      v29 = *(v7 + 8);
      v30 = v71;
      v29(v9, v71);
      v31 = v26 - v28;
      sub_219BE7FB4();
      sub_219BE9F54();
      v33 = v32;
      v29(v9, v30);
      v34 = *(v69 + 8);
      v34(v13, v10);
      *(v15 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width) = v31 - v33;
      v35 = *(MEMORY[0x277D768C8] + 16);
      *(v15 + 16) = *MEMORY[0x277D768C8];
      *(v15 + 32) = v35;
      *(v15 + 48) = xmmword_219C45190;
      *(v15 + 64) = 0x4028000000000000;
      *(v15 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) = 0;
      *(v15 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context) = 0;
      v36 = __swift_project_boxed_opaque_existential_1((v73 + 96), *(v73 + 120));
      v37 = v76;
      v38 = v77;
      v39 = __swift_project_boxed_opaque_existential_1(v75, v76);
      sub_218C26FDC(v39, *&v15, *v36, v37, *(v38 + 16), v80);
      swift_setDeallocating();

      v34((v15 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions), v10);
      swift_deallocClassInstance();
      v40 = v72;
      sub_218718690(v75, v72);
      memcpy(v40 + 5, v80, 0x1EAuLL);
      *(v40 + 530) = 1;
      __swift_destroy_boxed_opaque_existential_1(v75);
    }

    else
    {
      v65 = *&v78[0];
      sub_219B7AF68(*&v78[0], v80);
      *a3 = v65;
      v66 = v80[0];
      *(a3 + 3) = v80[1];
      v67 = v80[3];
      *(a3 + 5) = v80[2];
      *(a3 + 7) = v67;
      *(a3 + 9) = v80[4];
      *(a3 + 1) = v66;
      *(a3 + 530) = 2;
    }
  }

  else
  {
    v70 = *&v78[0];
    v71 = v6;
    v41 = v11;
    v68 = *(v11 + 16);
    v68(v13, a2, v10);
    type metadata accessor for TagViewLayoutOptions();
    v42 = swift_allocObject();
    v72 = a3;
    v43 = v42;
    v44 = sub_219BE8034();
    v45 = [v44 preferredContentSizeCategory];

    LOBYTE(v44) = sub_219BF6924();
    type metadata accessor for TagViewLayoutOptions.AccessoryOptions();
    v46 = swift_allocObject();
    __asm
    {
      FMOV            V0.2D, #22.0
      FMOV            V1.2D, #30.0
    }

    *(v46 + 32) = _Q0;
    *(v46 + 48) = _Q1;
    *(v46 + 64) = 0x4041800000000000;
    *(v46 + 16) = &unk_282A24CB0;
    *(v46 + 24) = v44 & 1;
    *(v43 + 72) = v46;
    v68((v43 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions), v13, v10);
    sub_219BE8154();
    v50 = v49;
    sub_219BE7FB4();
    sub_219BE9F54();
    v52 = v51;
    v53 = *(v7 + 8);
    v54 = v71;
    v53(v9, v71);
    v55 = v50 - v52;
    sub_219BE7FB4();
    sub_219BE9F54();
    v57 = v56;
    v53(v9, v54);
    v58 = *(v41 + 8);
    v58(v13, v10);
    *(v43 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width) = v55 - v57;
    v59 = *(MEMORY[0x277D768C8] + 16);
    *(v43 + 16) = *MEMORY[0x277D768C8];
    *(v43 + 32) = v59;
    *(v43 + 48) = xmmword_219C45190;
    *(v43 + 64) = 0x4028000000000000;
    *(v43 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) = 0;
    *(v43 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context) = 0;
    v60 = *__swift_project_boxed_opaque_existential_1((v73 + 96), *(v73 + 120));
    v61 = v70;

    sub_2189CCB7C(v62, v43, v60, v74);

    swift_setDeallocating();

    v58((v43 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions), v10);
    swift_deallocClassInstance();
    v63 = v72;
    *v72 = v61;
    v64 = v63;
    memcpy(v63 + 1, v74, 0x1EAuLL);
    *(v64 + 530) = 0;
  }
}