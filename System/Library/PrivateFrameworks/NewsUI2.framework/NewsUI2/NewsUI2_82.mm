void sub_219001CE8()
{
  sub_219001E80(319, &qword_280E913A8, sub_2186F9548);
  if (v0 <= 0x3F)
  {
    sub_219001E80(319, &qword_280E90FF0, MEMORY[0x277D32BE0]);
    if (v1 <= 0x3F)
    {
      sub_219001E80(319, &qword_280E91458, sub_218D1D174);
      if (v2 <= 0x3F)
      {
        sub_219001E80(319, &qword_280E913E8, sub_2186F95C4);
        if (v3 <= 0x3F)
        {
          sub_219001E80(319, &qword_280E913C8, sub_2186ECA28);
          if (v4 <= 0x3F)
          {
            sub_219001E80(319, &qword_280E8FAF0, sub_218AE5F30);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_219001E80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_219001EE8()
{
  result = qword_27CC14D50;
  if (!qword_27CC14D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14D50);
  }

  return result;
}

unint64_t sub_219001F40()
{
  result = qword_280E94A38;
  if (!qword_280E94A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94A38);
  }

  return result;
}

unint64_t sub_219001F98()
{
  result = qword_280E94A40;
  if (!qword_280E94A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94A40);
  }

  return result;
}

uint64_t sub_219001FEC()
{
  v0 = sub_219BF7614();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_219002038()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_219BEA9D4();
    sub_219BF0F34();
    sub_219BE6FD4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2190020CC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_21883F194();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F53C(0, &unk_280EDC8D0, sub_218D58B4C);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BDE124();
  sub_219BE20E4();

  sub_218D5862C(v9);
  sub_2187363A8(v6, sub_21883F194);
  sub_218D58B4C();
  v14 = v13;
  if ((*(*(v13 - 8) + 48))(v9, 1, v13) == 1)
  {
    sub_2190025E8(v9, &unk_280EDC8D0, sub_218D58B4C);
LABEL_3:
    __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
    sub_219BF0F14();
    sub_219BDECC4();
    return swift_unknownObjectRelease();
  }

  v16 = *&v9[*(v14 + 48)];
  sub_218C162E4(v9, v12);
  v17 = [*v12 articleID];
  v18 = sub_219BF5414();
  v20 = v19;

  v21 = [sub_219BF0F14() articleID];
  swift_unknownObjectRelease();
  v22 = sub_219BF5414();
  v24 = v23;

  if (v18 == v22 && v20 == v24)
  {

    sub_2187363A8(v12, type metadata accessor for AudioFeedTrack);
  }

  else
  {
    v26 = sub_219BF78F4();

    sub_2187363A8(v12, type metadata accessor for AudioFeedTrack);
    if ((v26 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  *a1 = v16;
  v27 = *MEMORY[0x277D32460];
  v28 = sub_219BEEE54();
  return (*(*(v28 - 8) + 104))(a1, v27, v28);
}

BOOL sub_2190024B0()
{
  v0 = MEMORY[0x277D32010];
  sub_21873F53C(0, &qword_280E91C10, MEMORY[0x277D32010]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  sub_219BF0E24();
  v4 = sub_219BEE404();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_2190025E8(v3, &qword_280E91C10, v0);
  return v5;
}

uint64_t sub_2190025A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2190025E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_21873F53C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_219002644(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_iconImageView;
  *&v4[v10] = [objc_allocWithZone(sub_219BEB3F4()) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_backgroundView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v12 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_nameLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v13 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_separatorView;
  *&v4[v13] = [objc_allocWithZone(sub_219BE6104()) initWithFrame_];
  v14 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_token;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_iconImageView;
  v17 = *&v15[OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_iconImageView];
  v18 = v15;
  [v17 setAccessibilityIgnoresInvertColors_];
  [v18 addSubview_];
  [v18 addSubview_];
  v19 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_nameLabel;
  [v18 addSubview_];
  [v18 addSubview_];
  [*&v18[v19] setNumberOfLines_];

  return v18;
}

void sub_21900292C()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_token);
  *(v1 + OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_token) = v2;
}

void sub_219002984()
{
  sub_219002AB8(&qword_27CC10D00);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_219002AB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelCategoryView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_219002AF8()
{
  v1 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_iconImageView;
  *(v0 + v1) = [objc_allocWithZone(sub_219BEB3F4()) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_backgroundView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_nameLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_separatorView;
  *(v0 + v4) = [objc_allocWithZone(sub_219BE6104()) initWithFrame_];
  v5 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_token;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  sub_219BF7514();
  __break(1u);
}

uint64_t sub_219002C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_219002CF8(uint64_t a1)
{
  v2 = sub_219003064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219002D34(uint64_t a1)
{
  v2 = sub_219003064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219002D70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_219002EE4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_219002D9C(void *a1)
{
  sub_2190030B8(0, &qword_27CC14DB0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219003064();
  sub_219BF7B44();
  sub_219BF7824();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219002EE4(void *a1)
{
  sub_2190030B8(0, &qword_27CC14DA0, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219003064();
  sub_219BF7B34();
  if (!v1)
  {
    sub_219BF7674();
    (*(v5 + 8))(v7, v4);
    if (v11)
    {
      v8 = 1;
    }

    else
    {
      v8 = v10;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_219003064()
{
  result = qword_27CC14DA8;
  if (!qword_27CC14DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14DA8);
  }

  return result;
}

void sub_2190030B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219003064();
    v7 = a3(a1, &type metadata for PaywallAudioFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219003130()
{
  result = qword_27CC14DB8;
  if (!qword_27CC14DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14DB8);
  }

  return result;
}

unint64_t sub_219003188()
{
  result = qword_27CC14DC0;
  if (!qword_27CC14DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14DC0);
  }

  return result;
}

unint64_t sub_2190031E0()
{
  result = qword_27CC14DC8;
  if (!qword_27CC14DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14DC8);
  }

  return result;
}

uint64_t sub_219003234()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);
  __swift_destroy_boxed_opaque_existential_1(v0 + 192);
  __swift_destroy_boxed_opaque_existential_1(v0 + 232);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 288);

  return swift_deallocClassInstance();
}

uint64_t sub_2190032D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v53 = a3;
  v54 = a4;
  v50 = a2;
  v55 = a5;
  sub_218718690(v5 + 152, v79);
  sub_218718690(v5 + 232, v78);
  sub_218718690(v5 + 192, v76);
  sub_218718690(v5 + 112, v75);
  sub_218718690(v5 + 72, v74);
  v56 = *(v5 + 272);
  sub_218718690(v5 + 16, v73);
  v8 = swift_allocObject();
  v52 = a1;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = 0;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
  MEMORY[0x28223BE20](v9);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
  MEMORY[0x28223BE20](v13);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v74, v74[3]);
  MEMORY[0x28223BE20](v17);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v11;
  v22 = *v15;
  v23 = *v19;
  v24 = type metadata accessor for MagazineCategoryConfigService();
  v72[3] = v24;
  v72[4] = &off_282A6EDE8;
  v72[0] = v21;
  v25 = type metadata accessor for MagazineCategoryService();
  v70 = v25;
  v71 = &off_282A649E8;
  v69[0] = v22;
  v26 = type metadata accessor for IssueModelFactory();
  v67 = v26;
  v68 = &off_282A725A8;
  v66[0] = v23;
  v51 = type metadata accessor for MagazineCategoryGridModelLoader();
  v27 = swift_allocObject();
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v72, v24);
  MEMORY[0x28223BE20](v28);
  v30 = (&v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
  MEMORY[0x28223BE20](v32);
  v34 = (&v50 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
  MEMORY[0x28223BE20](v36);
  v38 = (&v50 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = *v30;
  v41 = *v34;
  v42 = *v38;
  v64 = v24;
  v65 = &off_282A6EDE8;
  *&v63 = v40;
  v61 = v25;
  v62 = &off_282A649E8;
  *&v60 = v41;
  v58 = v26;
  v59 = &off_282A725A8;
  v43 = v50;
  *&v57 = v42;
  *(v27 + 64) = 0;
  swift_unknownObjectWeakInit();
  v44 = qword_27CC08158;
  swift_unknownObjectRetain();

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = v8 | 0x6000000000000006;
  sub_219003968();
  swift_allocObject();

  *(v27 + 328) = sub_219BDC914();
  v46 = v53;
  *(v27 + 16) = v52;
  *(v27 + 24) = v43;
  v47 = v54;
  *(v27 + 32) = v46;
  *(v27 + 40) = v47;
  sub_2186CB1F0(&v63, v27 + 72);
  sub_2186CB1F0(v78, v27 + 112);
  sub_2186CB1F0(&v60, v27 + 152);
  sub_2186CB1F0(v75, v27 + 192);
  sub_2186CB1F0(&v57, v27 + 232);
  *(v27 + 272) = v56;
  sub_2186CB1F0(v73, v27 + 288);
  *(v27 + 48) = v45;

  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_destroy_boxed_opaque_existential_1(v79);
  v48 = v55;
  v55[3] = v51;
  result = sub_219004064(&qword_27CC14DD8, type metadata accessor for MagazineCategoryGridModelLoader);
  v48[4] = result;
  *v48 = v27;
  return result;
}

void sub_219003968()
{
  if (!qword_27CC14DD0)
  {
    sub_218F19134();
    v0 = sub_219BDC904();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14DD0);
    }
  }
}

uint64_t sub_2190039C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_218718690(v3 + 288, v31);
  sub_218718690(v3 + 112, v30);
  sub_218718690(v3 + 72, v28);
  v23 = *(v3 + 272);
  v22 = *(v3 + 56);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  MEMORY[0x28223BE20](v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v12 = type metadata accessor for IssueModelFactory();
  v27[3] = v12;
  v27[4] = &off_282A725A8;
  v27[0] = v11;
  v13 = type metadata accessor for MyMagazineDownloadsGridModelLoader();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v27, v12);
  MEMORY[0x28223BE20](v15);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v25 = v12;
  v26 = &off_282A725A8;
  *&v24 = v19;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v20 = qword_27CC08150;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v20 != -1)
  {
    swift_once();
  }

  sub_219003968();
  swift_allocObject();

  *(v14 + 200) = sub_219BDC914();
  *(v14 + 208) = 0;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  sub_2186CB1F0(v31, v14 + 48);
  sub_2186CB1F0(v30, v14 + 88);
  sub_2186CB1F0(&v24, v14 + 128);
  *(v14 + 168) = v23;
  *(v14 + 184) = v22;

  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  a3[3] = v13;
  result = sub_219004064(&unk_27CC14DE8, type metadata accessor for MyMagazineDownloadsGridModelLoader);
  a3[4] = result;
  *a3 = v14;
  return result;
}

uint64_t sub_219003CF4@<X0>(uint64_t *a1@<X8>)
{
  sub_218718690(v1 + 288, v30);
  sub_218718690(v1 + 112, v29);
  sub_218718690(v1 + 72, v27);
  v22 = *(v1 + 272);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C1E930;
  *(v3 + 32) = 2;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
  MEMORY[0x28223BE20](v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  v9 = type metadata accessor for IssueModelFactory();
  v26[3] = v9;
  v26[4] = &off_282A725A8;
  v26[0] = v8;
  v10 = type metadata accessor for MyMagazinesGridModelLoader();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v26, v9);
  MEMORY[0x28223BE20](v12);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v24 = v9;
  v25 = &off_282A725A8;
  *&v23 = v16;
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  v17 = qword_27CC08148;
  swift_unknownObjectRetain();
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = v3 | 0x6000000000000006;
  sub_219003968();
  swift_allocObject();

  *(v11 + 176) = sub_219BDC914();
  *(v11 + 184) = 0;
  v19 = OBJC_IVAR____TtC7NewsUI226MyMagazinesGridModelLoader_lastKnownState;
  v20 = type metadata accessor for MyMagazinesState(0);
  (*(*(v20 - 8) + 56))(v11 + v19, 1, 1, v20);
  sub_2186CB1F0(v30, v11 + 40);
  sub_2186CB1F0(v29, v11 + 80);
  sub_2186CB1F0(&v23, v11 + 120);
  *(v11 + 160) = v22;
  *(v11 + 32) = v18;
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  a1[3] = v10;
  result = sub_219004064(&qword_27CC14DE0, type metadata accessor for MyMagazinesGridModelLoader);
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_219004064(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2190040AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v50 = a3;
  v51 = a4;
  v52 = a2;
  v53 = a5;
  v49 = a1;
  sub_218718690(v5 + 152, v77);
  sub_218718690(v5 + 232, v76);
  sub_218718690(v5 + 192, v74);
  sub_218718690(v5 + 112, v73);
  sub_218718690(v5 + 72, v72);
  v54 = *(v5 + 272);
  sub_218718690(v5 + 16, v71);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C3FE50;
  *(v6 + 32) = 2;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  MEMORY[0x28223BE20](v7);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
  MEMORY[0x28223BE20](v11);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v72, v72[3]);
  MEMORY[0x28223BE20](v15);
  v17 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v9;
  v20 = *v13;
  v21 = *v17;
  v22 = type metadata accessor for MagazineCategoryConfigService();
  v70[3] = v22;
  v70[4] = &off_282A6EDE8;
  v70[0] = v19;
  v23 = type metadata accessor for MagazineCategoryService();
  v68 = v23;
  v69 = &off_282A649E8;
  v67[0] = v20;
  v24 = type metadata accessor for IssueModelFactory();
  v65 = v24;
  v66 = &off_282A725A8;
  v64[0] = v21;
  v48 = type metadata accessor for MagazineCategoryGridModelLoader();
  v25 = swift_allocObject();
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v70, v22);
  MEMORY[0x28223BE20](v26);
  v28 = (&v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
  MEMORY[0x28223BE20](v30);
  v32 = (&v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  MEMORY[0x28223BE20](v34);
  v36 = (&v48 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36);
  v38 = *v28;
  v39 = *v32;
  v40 = *v36;
  v62 = v22;
  v63 = &off_282A6EDE8;
  *&v61 = v38;
  v59 = v23;
  v60 = &off_282A649E8;
  *&v58 = v39;
  v56 = v24;
  v57 = &off_282A725A8;
  *&v55 = v40;
  *(v25 + 64) = 0;
  swift_unknownObjectWeakInit();
  v41 = qword_27CC08158;
  swift_unknownObjectRetain();
  if (v41 != -1)
  {
    swift_once();
  }

  v42 = v6 | 0x6000000000000006;
  sub_219003968();
  swift_allocObject();

  *(v25 + 328) = sub_219BDC914();
  v43 = v50;
  v45 = v51;
  v44 = v52;
  *(v25 + 16) = v49;
  *(v25 + 24) = v44;
  *(v25 + 32) = v43;
  *(v25 + 40) = v45;
  sub_2186CB1F0(&v61, v25 + 72);
  sub_2186CB1F0(v76, v25 + 112);
  sub_2186CB1F0(&v58, v25 + 152);
  sub_2186CB1F0(v73, v25 + 192);
  sub_2186CB1F0(&v55, v25 + 232);
  *(v25 + 272) = v54;
  sub_2186CB1F0(v71, v25 + 288);
  *(v25 + 48) = v42;

  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v77);
  v46 = v53;
  v53[3] = v48;
  result = sub_219004064(&qword_27CC14DD8, type metadata accessor for MagazineCategoryGridModelLoader);
  v46[4] = result;
  *v46 = v25;
  return result;
}

uint64_t OpenMainWindowCommandHandler.__allocating_init(navigator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t OpenMainWindowCommandHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void _s7NewsUI228OpenMainWindowCommandHandlerC6handle13commandCenter0I04with6sourcey5TeaUI0fJ4Type_p_AI0F0CyytGytAI0F15ExecutionSourceCSgtF_0()
{
  v0 = sub_219BE9414();
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x28223BE20](v0);
  v35 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 connectedScenes];

  v5 = sub_219004C80();
  sub_218F86FB4();
  v6 = sub_219BF5D44();

  v34 = v2;
  v39 = v6;
  v40 = v5;
  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_219BF71C4();
    sub_219BF5D94();
    v6 = v44;
    v7 = v45;
    v8 = v46;
    v9 = v47;
    v10 = v48;
  }

  else
  {
    v11 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v6 + 56);

    v9 = 0;
  }

  v38 = v8;
  v14 = (v8 + 64) >> 6;
  while (1)
  {
    if (v6 < 0)
    {
      v20 = sub_219BF7244();
      if (!v20 || (v42 = v20, swift_dynamicCast(), v19 = v43, v17 = v9, v18 = v10, !v43))
      {
LABEL_25:
        sub_21892DE98();

        if (qword_27CC08268 == -1)
        {
LABEL_26:
          v27 = qword_27CC15930;
          v43 = qword_27CC15930;
          v29 = v35;
          v28 = v36;
          v30 = v37;
          (*(v36 + 104))(v35, *MEMORY[0x277D6E5A0], v37);
          sub_2189EB264(v27);
          sub_219BE6474();
          (*(v28 + 8))(v29, v30);
          sub_218932F9C(v43);
          return;
        }

LABEL_30:
        swift_once();
        goto LABEL_26;
      }
    }

    else
    {
      v15 = v9;
      v16 = v10;
      v17 = v9;
      if (!v10)
      {
        while (1)
        {
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v17 >= v14)
          {
            goto LABEL_25;
          }

          v16 = *(v7 + 8 * v17);
          ++v15;
          if (v16)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_30;
      }

LABEL_14:
      v18 = (v16 - 1) & v16;
      v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
      if (!v19)
      {
        goto LABEL_25;
      }
    }

    v41 = v9;
    v21 = [v19 session];
    v22 = sub_219BF6324();
    v24 = v23;

    if (v24)
    {
      break;
    }

LABEL_8:

    v9 = v17;
    v10 = v18;
  }

  if (v22 != 0x6546756F59726F46 || v24 != 0xEA00000000006465)
  {
    v26 = sub_219BF78F4();

    if (v26)
    {
      goto LABEL_28;
    }

    goto LABEL_8;
  }

LABEL_28:
  sub_21892DE98();

  v31 = [v34 sharedApplication];
  v32 = [v19 session];
  [v31 requestSceneSessionActivation:v32 userActivity:0 options:0 errorHandler:0];
}

unint64_t sub_219004C80()
{
  result = qword_280E8DA50;
  if (!qword_280E8DA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DA50);
  }

  return result;
}

void sub_219004CCC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v2 = off_282A83048[0];
        type metadata accessor for MagazineGridViewController();
        v2();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_219004DC0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    a2(a1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(*a1 + 16);
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      if (v10)
      {
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          *(swift_allocObject() + 16) = v11;
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
LABEL_11:

          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else if (v10)
    {
      v12 = *(a5 + 24);
      v13 = *(a5 + 32);
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;
        v16 = swift_allocObject();
        v16[2] = v12;
        v16[3] = v13;
        v16[4] = v15;
        sub_218DB964C(v12, v13);
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

LABEL_12:

      swift_unknownObjectRelease();
      return;
    }
  }
}

uint64_t sub_219004F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_218DB935C(v6, v7, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v9 = sub_21900CA40(&qword_27CC14E28, type metadata accessor for MagazineGridBlueprintModifierFactory);
  v10 = *(v9 + 40);
  v11 = type metadata accessor for MagazineGridBlueprintModifierFactory();
  v16 = v10(a1, v11, v9);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = *(a1 + 16);
  *(v12 + 32) = *a1;
  *(v12 + 48) = v13;
  *(v12 + 64) = *(a1 + 32);
  *(v12 + 73) = *(a1 + 41);
  sub_2188202A8(a2);
  sub_218B88148(a1, v15);
  sub_218DB95D0(0);
  sub_21900CA40(&unk_27CC11E90, sub_218DB95D0);
  sub_219BE6EF4();
}

uint64_t sub_21900518C()
{
  v0 = sub_219BF1584();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  MEMORY[0x28223BE20](v3);
  v5 = v18 - v4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = v1;
    v20 = v0;
    v18[0] = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18[1] = "BlueprintLayoutBuilder";
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = objc_opt_self();
    v9 = [v8 bundleForClass_];
    sub_219BDB5E4();

    v10 = [v8 bundleForClass_];
    sub_219BDB5E4();

    sub_219BF1514();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v14 = v19;
      v13 = v20;
      v15 = v18[0];
      (*(v19 + 16))(v18[0], v5, v20);
      v16 = (*(v14 + 80) + 24) & ~*(v14 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v12;
      (*(v14 + 32))(v17 + v16, v15, v13);
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v14 = v19;
      v13 = v20;
    }

    return (*(v14 + 8))(v5, v13);
  }

  return result;
}

uint64_t sub_2190054DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE33B0);
    result = sub_219BE1E34();
    if (v9)
    {
      v6 = type metadata accessor for MagazineGridModule();
      v7 = swift_allocObject();
      sub_2186CB1F0(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_2186CB1F0(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &off_282A9B468;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2190055F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90230);
  result = sub_219BE1E34();
  if (!v76)
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA990);
  result = sub_219BE1E34();
  if (!v74)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90590);
  result = sub_219BE1E34();
  if (!v72)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA3480);
  result = sub_219BE1E34();
  if (!v70)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB84C0);
  result = sub_219BE1E34();
  if (!v68)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0);
  result = sub_219BE1E34();
  if (!v65)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0);
  result = sub_219BE1E34();
  if (!v64)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (!v61)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v48 = v61;
  v49 = v66;
  v50 = v65;
  v51 = a2;
  v47 = v62;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECE3A0);
  result = sub_219BE1E34();
  if (v60)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    v46 = v42;
    MEMORY[0x28223BE20](v5);
    v7 = (v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
    v45 = v42;
    MEMORY[0x28223BE20](v9);
    v11 = (v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
    v44 = v42;
    MEMORY[0x28223BE20](v13);
    v15 = (v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v7;
    v18 = *v11;
    v19 = *v15;
    v20 = type metadata accessor for IssueModelFactory();
    v58[3] = v20;
    v58[4] = &off_282A725A8;
    v58[0] = v17;
    v21 = type metadata accessor for MagazineCategoryConfigService();
    v56 = v21;
    v57 = &off_282A6EDE8;
    v55[0] = v18;
    v22 = type metadata accessor for MagazineCategoryService();
    v53 = v22;
    v54 = &off_282A649E8;
    v52[0] = v19;
    v43 = type metadata accessor for MagazineGridModelLoaderFactory();
    v23 = swift_allocObject();
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v58, v20);
    v42[1] = v42;
    MEMORY[0x28223BE20](v24);
    v26 = (v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
    v42[0] = v42;
    MEMORY[0x28223BE20](v28);
    v30 = (v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
    MEMORY[0x28223BE20](v32);
    v34 = (v42 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    v36 = *v26;
    v37 = *v30;
    v38 = *v34;
    v23[12] = v20;
    v23[13] = &off_282A725A8;
    v23[9] = v36;
    v23[22] = v21;
    v23[23] = &off_282A6EDE8;
    v23[19] = v37;
    v23[27] = v22;
    v23[28] = &off_282A649E8;
    v23[24] = v38;
    sub_2186CB1F0(&v75, (v23 + 2));
    sub_2186CB1F0(&v71, (v23 + 14));
    v39 = v49;
    v23[7] = v50;
    v23[8] = v39;
    sub_2186CB1F0(&v63, (v23 + 29));
    v40 = v47;
    v23[34] = v48;
    v23[35] = v40;
    sub_2186CB1F0(&v59, (v23 + 36));
    __swift_destroy_boxed_opaque_existential_1(v52);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v67);
    __swift_destroy_boxed_opaque_existential_1(v69);
    result = __swift_destroy_boxed_opaque_existential_1(v73);
    v41 = v51;
    v51[3] = v43;
    v41[4] = &off_282A58670;
    *v41 = v23;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_219005E50()
{
  type metadata accessor for MagazineGridViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC14DF8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC14E00);
  sub_219BE2914();
  type metadata accessor for MagazineGridRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC14E08);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC14E10);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC14E18);
  sub_219BE2914();
  sub_21900B2F0();
  sub_219BE19C4();

  sub_2186C709C(0, &unk_27CC14E30);
  sub_219BE2914();

  sub_2189870F0();
  sub_219BE2904();

  type metadata accessor for MagazineGridBlueprintModifierFactory();
  sub_219BE2904();

  sub_21900B384();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21900BBE8();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21900BDDC();
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_21900B470();
  sub_219BE2904();

  sub_21900BD24();
  sub_219BE2904();

  sub_21900B8C4();
  sub_219BE2904();

  type metadata accessor for MagazineGridBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_21900BE70();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0);
  sub_219BE2904();

  sub_21900B578();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21900C6D0(0, &qword_27CC14F18, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6EA28]);
  sub_219BE2904();

  sub_21900B6F4();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21900B97C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21900BAFC();
  sub_219BE2904();

  type metadata accessor for MagazineGridBlueprintViewCellProvider();
  sub_219BE2904();

  type metadata accessor for MagazineGridBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21900BFAC();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_21900C040();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC14F40);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC14F48);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC14F50);
  sub_219BE2914();

  sub_2186C709C(0, &unk_27CC14F58);
  sub_219BE2914();

  sub_21900C12C();
  sub_219BE2904();

  sub_21900C17C();
  sub_219BE2904();
}

uint64_t sub_2190069C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v56 == 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14DF8);
  result = sub_219BE1E34();
  if (!v54)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14E08);
  result = sub_219BE1E34();
  v3 = v51;
  if (!v51)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900BE70();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDA0);
  result = sub_219BE1E34();
  if (!v50)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5150);
  result = sub_219BE1E34();
  v5 = v47;
  if (!v47)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v41 = v48;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900C12C();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  v38 = v52;
  v39 = v55;
  v40 = v56;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v43[0])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v37 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v45 = v7;
    v46 = sub_21900CA40(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    v44[0] = v8;
    sub_219BE89E4();
    swift_allocObject();
    v9 = sub_219BE8994();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
    v36 = &v35;
    MEMORY[0x28223BE20](v10);
    v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v15 = type metadata accessor for MagazineGridStyler();
    v45 = v15;
    v46 = &off_282A3ABD8;
    v44[0] = v14;
    v16 = type metadata accessor for MagazineGridViewController();
    v17 = objc_allocWithZone(v16);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    v35 = &v35;
    MEMORY[0x28223BE20](v18);
    v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v20;
    v43[4] = &off_282A3ABD8;
    v43[3] = v15;
    v43[0] = v22;
    v23 = &v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerIdentifier];
    *v23 = 0;
    *(v23 + 1) = 0;
    *&v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectAllBarButtonItem] = 0;
    *&v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___doneBarButtonItem] = 0;
    *&v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___downloadBarButtonItem] = 0;
    *&v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeIssuesAndDownloadsBarButtonItem] = 0;
    *&v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeDownloadsBarButtonItem] = 0;
    *&v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountBarButtonItem] = 0;
    *&v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountLabel] = 0;
    v24 = &v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerConfig];
    *v24 = v39 & 1;
    *(v24 + 1) = v40;
    sub_218718690(v43, &v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_styler]);
    v25 = &v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_eventHandler];
    v26 = v38;
    *v25 = v3;
    *(v25 + 1) = v26;
    v27 = v37;
    *&v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_blueprintViewController] = v37;
    sub_218718690(v49, &v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_offlineAlertControllerFactory]);
    v28 = &v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_toolbarManager];
    v29 = v41;
    *v28 = v5;
    *(v28 + 1) = v29;
    *&v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_editSelection] = v6;
    *&v17[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_commandCenterWithTracker] = v9;
    v42.receiver = v17;
    v42.super_class = v16;
    swift_unknownObjectRetain();
    v30 = v27;
    swift_unknownObjectRetain();

    v31 = objc_msgSendSuper2(&v42, sel_initWithNibName_bundle_, 0, 0, v35, v36);
    *(*&v31[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_eventHandler] + 24) = &off_282A83018;
    swift_unknownObjectWeakAssign();
    v32 = *&v31[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_blueprintViewController];
    v33 = v31;
    v34 = v32;
    sub_219BE8744();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return v33;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_219007128@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A328(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineMoreActionsFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15008);
  result = sub_219BE1E34();
  if (v11)
  {
    v8 = type metadata accessor for MagazineGridRouter();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9[8] = v5;
    sub_2186CB1F0(v14, (v9 + 3));
    sub_2186CB1F0(&v12, (v9 + 9));
    v9[14] = v6;
    v9[15] = v7;
    result = sub_2186CB1F0(&v10, (v9 + 16));
    a2[3] = v8;
    a2[4] = &off_282A957C8;
    *a2 = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_219007358(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineGridViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2190073D8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14E18);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14E00);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14E10);
  result = sub_219BE1E34();
  if (v17)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v7);
    v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v11);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = sub_21900CB80(v5, v6, *v9, *v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A44FC0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219007688@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15008);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218716B60();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0);
  result = sub_219BE1E34();
  if (v11)
  {
    v8 = type metadata accessor for MagazineGridTracker();
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v6;
    sub_2186CB1F0(&v12, (v9 + 4));
    v9[9] = v7;
    result = sub_2186CB1F0(&v10, (v9 + 10));
    a2[3] = v8;
    a2[4] = &off_282A30D40;
    *a2 = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21900785C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_27CC14E30);
  result = sub_219BE1E34();
  if (!v30)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B384();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v25 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineGridBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  v7 = v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0);
  result = sub_219BE1E34();
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = a2;
  v8 = v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A328(0, &qword_280E90690, sub_2186F1660, &type metadata for MagazineFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    sub_21900B2F0();
    v11 = v10;
    v12 = objc_allocWithZone(v10);
    v13 = MEMORY[0x277D85000];
    *(v12 + *((*MEMORY[0x277D85000] & *v12) + 0x60) + 8) = 0;
    swift_unknownObjectWeakInit();
    v14 = (v12 + *((*v13 & *v12) + 0x78));
    *v14 = v7;
    v14[1] = v5;
    *(v12 + *((*v13 & *v12) + 0x68)) = v25;
    *(v12 + *((*v13 & *v12) + 0x70)) = v6;
    *(v12 + *((*v13 & *v12) + 0x80)) = v9;
    v27.receiver = v12;
    v27.super_class = v11;
    swift_unknownObjectRetain();

    v23 = v9;
    v15 = objc_msgSendSuper2(&v27, sel_init);
    ObjectType = swift_getObjectType();
    v17 = *(v8 + 56);
    v18 = v15;
    v17(ObjectType, v8);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = sub_219BE2E54();
    sub_219BE21A4();

    __swift_destroy_boxed_opaque_existential_1(v26);
    v20 = *(v18 + *((*v13 & *v18) + 0x80));
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = v20;

    v22 = sub_219BF1AF4();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    *v24 = v18;
    v24[1] = &off_282A47870;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_219007C94(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B7A520();
  result = sub_219BE1E24();
  if (result)
  {
    [result addObserver_];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &unk_27CC14E30);
    result = sub_219BE1E34();
    if (v5)
    {
      swift_unknownObjectRelease();
      *(v5 + 24) = &off_282A47858;
      swift_unknownObjectWeakAssign();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219007D90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15008);
  result = sub_219BE1E34();
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EC30E0);
    result = sub_219BE1E34();
    if (v9)
    {
      type metadata accessor for MagazineGridDataManager();
      v5 = swift_allocObject();
      v5[3] = 0;
      swift_unknownObjectWeakInit();
      sub_218718690(v10, (v5 + 4));

      sub_219274EE0(v6, v9);
      swift_beginAccess();
      v7 = v5[7];
      v8 = v5[8];
      __swift_mutable_project_boxed_opaque_existential_1((v5 + 4), v7);
      (*(v8 + 24))(v5, &off_282A66128, v7, v8);
      swift_endAccess();
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_1(v10);
      *a2 = v5;
      a2[1] = &off_282A66150;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219007F4C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA6010);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for MagazineGridItemModelFactory();
    v14[3] = v7;
    v14[4] = &off_282A39B30;
    v14[0] = v6;
    type metadata accessor for MagazineGridBlueprintModifierFactory();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_282A39B30;
    v8[2] = v13;
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21900815C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189870F0();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21900B470();
    result = sub_219BE1E24();
    if (result)
    {
      sub_21900B384();
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219008240(uint64_t a1, void *a2)
{
  sub_21900C76C(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_21900C78C(0, &qword_27CC14FE8, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_21900CA40(&qword_27CC14FF0, sub_21900C76C);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21900BBE8();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_21900CA40(&unk_27CC14FF8, sub_21900BBE8);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190083D8(void *a1)
{
  sub_218B79DE4();
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineGridBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900BD24();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900BDDC();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21900BBE8();
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219008540(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_219BF0214();
  sub_218718690(a2, &v7);
  v4 = swift_allocObject();
  sub_2186CB1F0(&v7, v4 + 16);
  v5 = sub_219BE1E04();

  if (v5)
  {
    v8 = v3;
    v9 = sub_21900CA40(&unk_280E90FE0, MEMORY[0x277D32C00]);
    *&v7 = v5;
    sub_219BEA494();
    return __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21900866C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B8C4();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (v3)
  {
    sub_21900BDDC();
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219008814(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B578();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_21900B470();
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21900896C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_2190089B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900C6D0(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_27CC14F58);
    result = sub_219BE1E34();
    if (v18)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      MEMORY[0x28223BE20](v4);
      v6 = (v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6);
      v8 = *v6;
      v9 = type metadata accessor for MagazineGridSectionHeaderViewLayoutAttributesFactory();
      v16[3] = v9;
      v16[4] = &off_282A626F0;
      v16[0] = v8;
      type metadata accessor for MagazineGridBlueprintLayoutBuilder();
      v10 = swift_allocObject();
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v9);
      MEMORY[0x28223BE20](v11);
      v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13);
      v15 = *v13;
      v10[6] = v9;
      v10[7] = &off_282A626F0;
      v10[2] = v3;
      v10[3] = v15;
      __swift_destroy_boxed_opaque_existential_1(v16);
      __swift_destroy_boxed_opaque_existential_1(v17);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219008C3C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189870F0();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B578();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900BFAC();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21900CA40(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_21900BE70();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_219008F44(uint64_t a1, void *a2)
{
  v3 = sub_219BE8FC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_21900CA40(&qword_280E8FF80, MEMORY[0x277D34268]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21900C17C();
  v8 = v7;
  v9 = sub_219BE1E24();
  v10 = v9;
  if (v9)
  {
    v9 = sub_21900CA40(&unk_27CC14FD0, sub_21900C17C);
  }

  else
  {
    v8 = 0;
    v18 = 0;
    v19 = 0;
  }

  v17 = v10;
  v20 = v8;
  v21 = v9;
  sub_219BE86F4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21900BDDC();
  v12 = v11;
  v13 = sub_219BE1E24();
  v14 = v13;
  if (v13)
  {
    v13 = sub_21900CA40(&qword_27CC14FC8, sub_21900BDDC);
  }

  else
  {
    v12 = 0;
    v18 = 0;
    v19 = 0;
  }

  v17 = v14;
  v20 = v12;
  v21 = v13;
  sub_219BE8724();
  (*(v4 + 104))(v6, *MEMORY[0x277D6E3C8], v3);
  return sub_219BE86C4();
}

uint64_t sub_2190091D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900C6D0(0, &qword_27CC14F18, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6EA28]);
  result = sub_219BE1DE4();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190092B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B6F4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B97C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900BAFC();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21900B578();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219009428@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B578();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190094E0()
{
  v0 = sub_219BE80A4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0]);
  return sub_219BE9574();
}

uint64_t sub_2190095B0(void *a1)
{
  v2 = sub_219BEA464();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    v7 = result;
    *v5 = 0x3FECCCCCCCCCCCCDLL;
    (*(v3 + 104))(v5, *MEMORY[0x277D6EAB8], v2);
    v10[1] = v7;
    sub_21900C6D0(0, &qword_27CC14F18, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6EA28]);
    v9 = objc_allocWithZone(v8);
    return sub_219BEA204();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219009740(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189870F0();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B8C4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineGridBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineGridBlueprintViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_21900B6F4();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2190098DC(void *a1, void *a2, void (*a3)(id, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
  v8 = sub_219BE1DE4();
  if (v8)
  {
    v7 = sub_2186C6148(0, &qword_280E8E790);
    a3(v8, v7, 0x6E697265646E6552, 0xED00007765695667, v7, v5, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219009A00(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9B74();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219009AD8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189870F0();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B8C4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900BFAC();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_21900CA40(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_21900B97C();
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_219009D28(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21900C040();
  if (sub_219BE1E24())
  {
    sub_21900CA40(&qword_27CC14FC0, sub_21900C040);
  }

  sub_219BE9774();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineGridViewController();
  sub_219BE1E24();
  return sub_219BE9714();
}

uint64_t sub_219009E64(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189870F0();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21900B8C4();
    result = sub_219BE1E24();
    if (result)
    {
      sub_21900BAFC();
      v4 = objc_allocWithZone(v3);
      return sub_219BE9F24();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_219009F24(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810);
  result = sub_219BE1E34();
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    type metadata accessor for MagazineGridBlueprintViewCellProvider();
    result = swift_allocObject();
    result[2] = v8;
    result[3] = v9;
    result[4] = v6;
    result[5] = v7;
    result[6] = v4;
    result[7] = v5;
    result[8] = v3;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21900A0C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14F40);
  result = sub_219BE1E34();
  if (!v16)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14F48);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900C12C();
  result = sub_219BE1DE4();
  if (result)
  {
    v3 = result;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v4);
    v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v7 + 16))(v6);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
    MEMORY[0x28223BE20](v8);
    v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v11 + 16))(v10);
    v12 = sub_21900C498(*v6, *v10, v3);
    __swift_destroy_boxed_opaque_existential_1(v13);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_21900A350(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineGridViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A83008;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_21900A3E4(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_21900C2E8();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189870F0();
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_21900BFAC();
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21900A63C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21900B8C4();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21900CA40(&unk_27CC14F90, sub_21900B8C4);
    sub_219BE8E94();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280E90FB0);
    sub_219BE1E34();
    sub_21900C210();
    swift_allocObject();
    sub_219BEFCE4();
    sub_21900CA40(&qword_27CC14FB0, sub_21900C210);
    sub_219BE8EA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21900A7D4(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900C040();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_21900CA40(&qword_27CC14F88, sub_21900C040);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21900A914(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B578();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189870F0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21900CA40(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_21900C040();
    swift_allocObject();
    return sub_219BE9AB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21900AAF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B578();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21900ABB0(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21900BE70();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = sub_21900CA40(a3, sub_21900BE70);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_21900AC64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900BE70();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_21900CA40(&qword_27CC14F70, sub_21900BE70);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21900AD4C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14F50);
  result = sub_219BE1E34();
  if (v23)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v8);
    v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for MagazineGridSectionHeaderViewStyler();
    v21[3] = v13;
    v21[4] = &off_282A86818;
    v21[0] = v12;
    v14 = a2(0);
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
    MEMORY[0x28223BE20](v16);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v15[5] = v13;
    v15[6] = &off_282A86818;
    v15[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a4[3] = v14;
    a4[4] = a3;
    *a4 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21900AFA4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v24)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    MEMORY[0x28223BE20](v8);
    v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = *v10;
    v13 = type metadata accessor for BaseStyler();
    v22[3] = v13;
    v14 = sub_21900CA40(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v22[4] = v14;
    v22[0] = v12;
    v15 = a2(0);
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v22, v13);
    MEMORY[0x28223BE20](v17);
    v19 = (v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;
    v16[5] = v13;
    v16[6] = v14;
    v16[2] = v21;
    __swift_destroy_boxed_opaque_existential_1(v22);
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    a4[3] = v15;
    a4[4] = a3;
    *a4 = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21900B230()
{
  sub_21900C12C();
  swift_allocObject();
  return sub_219BE20D4();
}

uint64_t sub_21900B278(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B578();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21900C17C();
    swift_allocObject();
    return sub_219BE8914();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21900B2F0()
{
  if (!qword_27CC14E20)
  {
    type metadata accessor for MagazineGridBlueprintModifierFactory();
    sub_21900CA40(&qword_27CC14E28, type metadata accessor for MagazineGridBlueprintModifierFactory);
    v0 = type metadata accessor for MagazineGridInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14E20);
    }
  }
}

void sub_21900B384()
{
  if (!qword_27CC14E40)
  {
    sub_2189870F0();
    sub_21900B470();
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0);
    sub_21900CA40(&qword_27CC14ED0, sub_21900B470);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14E40);
    }
  }
}

void sub_21900B470()
{
  if (!qword_27CC14E48)
  {
    type metadata accessor for MagazineGridItemModel();
    sub_21900B578();
    sub_21895164C();
    sub_21900CA40(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
    sub_21900CA40(&qword_27CC14EC8, sub_21900B578);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14E48);
    }
  }
}

void sub_21900B578()
{
  if (!qword_27CC14E50)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_21900B6F4();
    sub_21900B97C();
    sub_21900BAFC();
    type metadata accessor for MagazineGridViewController();
    sub_21900CA40(&qword_27CC14EB0, sub_21900B6F4);
    sub_21900CA40(&qword_27CC14EB8, sub_21900B97C);
    sub_21900CA40(&qword_27CC14EC0, sub_21900BAFC);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14E50);
    }
  }
}

void sub_21900B6F4()
{
  if (!qword_27CC14E60)
  {
    sub_2189870F0();
    sub_21900B8C4();
    type metadata accessor for MagazineGridBlueprintViewCellProvider();
    type metadata accessor for MagazineGridBlueprintViewSupplementaryViewProvider();
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0);
    sub_21900CA40(&qword_27CC14E78, sub_21900B8C4);
    sub_21900CA40(&qword_27CC14E80, type metadata accessor for MagazineGridBlueprintViewCellProvider);
    sub_21900CA40(&qword_27CC14E88, type metadata accessor for MagazineGridBlueprintViewSupplementaryViewProvider);
    sub_21900CA40(&qword_27CC14E90, type metadata accessor for MagazineGridLayoutModel);
    v0 = sub_219BE9B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14E60);
    }
  }
}

void sub_21900B8C4()
{
  if (!qword_27CC14E68)
  {
    type metadata accessor for MagazineGridLayoutModel();
    sub_218951758();
    sub_21900CA40(&unk_27CC0AE80, type metadata accessor for MagazineGridLayoutModel);
    v0 = sub_219BE8564();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14E68);
    }
  }
}

void sub_21900B97C()
{
  if (!qword_27CC14E98)
  {
    sub_2189870F0();
    sub_21900B8C4();
    type metadata accessor for MagazineGridViewController();
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0);
    sub_21900CA40(&qword_27CC14E78, sub_21900B8C4);
    sub_21900CA40(&qword_27CC14EA0, type metadata accessor for MagazineGridViewController);
    sub_21900CA40(&qword_27CC14E90, type metadata accessor for MagazineGridLayoutModel);
    v0 = sub_219BE9794();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14E98);
    }
  }
}

void sub_21900BAFC()
{
  if (!qword_27CC14EA8)
  {
    sub_2189870F0();
    sub_21900B8C4();
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0);
    sub_21900CA40(&qword_27CC14E78, sub_21900B8C4);
    v0 = sub_219BE9F34();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14EA8);
    }
  }
}

void sub_21900BBE8()
{
  if (!qword_27CC14ED8)
  {
    sub_21900B8C4();
    type metadata accessor for MagazineGridBlueprintLayoutBuilder();
    sub_21900BD24();
    sub_21900CA40(&qword_27CC14E78, sub_21900B8C4);
    sub_21900CA40(&qword_27CC14EF0, type metadata accessor for MagazineGridBlueprintLayoutBuilder);
    sub_21900CA40(&qword_27CC14EF8, sub_21900BD24);
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14ED8);
    }
  }
}

void sub_21900BD24()
{
  if (!qword_27CC14EE0)
  {
    type metadata accessor for MagazineGridLayoutModel();
    sub_218DF4D58();
    sub_21900CA40(&qword_27CC14E90, type metadata accessor for MagazineGridLayoutModel);
    v0 = sub_219BE9974();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14EE0);
    }
  }
}

void sub_21900BDDC()
{
  if (!qword_27CC14F00)
  {
    sub_21900B8C4();
    sub_21900CA40(&qword_27CC14E78, sub_21900B8C4);
    v0 = sub_219BE99B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14F00);
    }
  }
}

void sub_21900BE70()
{
  if (!qword_27CC14F08)
  {
    sub_2189870F0();
    sub_21900B578();
    type metadata accessor for MagazineGridViewController();
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0);
    sub_21900CA40(&qword_27CC14EC8, sub_21900B578);
    sub_21900CA40(&qword_27CC14EA0, type metadata accessor for MagazineGridViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14F08);
    }
  }
}

void sub_21900BFAC()
{
  if (!qword_27CC14F20)
  {
    sub_2189870F0();
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0);
    v0 = sub_219BE8ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14F20);
    }
  }
}

void sub_21900C040()
{
  if (!qword_27CC14F28)
  {
    sub_21900B578();
    sub_2189870F0();
    sub_21900CA40(&qword_27CC14EC8, sub_21900B578);
    sub_21900CA40(&unk_27CC14F30, sub_2189870F0);
    v0 = sub_219BE9AD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14F28);
    }
  }
}

void sub_21900C12C()
{
  if (!qword_280EE7B20)
  {
    v0 = sub_219BE2124();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7B20);
    }
  }
}

void sub_21900C17C()
{
  if (!qword_27CC14F68)
  {
    sub_21900B578();
    sub_21900CA40(&qword_27CC14EC8, sub_21900B578);
    v0 = sub_219BE8934();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14F68);
    }
  }
}

void sub_21900C210()
{
  if (!qword_27CC14FA0)
  {
    sub_2189870F0();
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0);
    sub_21900CA40(&qword_27CC123F0, type metadata accessor for MagazineGridItemModel);
    v0 = sub_219BEFCF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14FA0);
    }
  }
}

void sub_21900C2E8()
{
  if (!qword_27CC14FB8)
  {
    sub_2189870F0();
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0);
    v0 = sub_219BE8EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14FB8);
    }
  }
}

uint64_t sub_21900C37C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  v14[0] = a1[2];
  *(v14 + 9) = *(a1 + 41);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  v10 = a1[1];
  *(v9 + 40) = *a1;
  *(v9 + 56) = v10;
  *(v9 + 72) = a1[2];
  *(v9 + 81) = *(a1 + 41);
  sub_2188202A8(a3);

  sub_218B88148(v13, &v12);
  sub_219004F64(v13, sub_21900CA24, v9);
}

void *sub_21900C498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MagazineGridSectionHeaderViewRenderer();
  v23[3] = v6;
  v23[4] = &off_282A931D0;
  v23[0] = a1;
  v7 = type metadata accessor for MagazineV2GridSectionHeaderViewRenderer();
  v21 = v7;
  v22 = &off_282A9F440;
  v20[0] = a2;
  type metadata accessor for MagazineGridBlueprintViewSupplementaryViewProvider();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v23, v6);
  MEMORY[0x28223BE20](v9);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v13);
  v15 = (v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v11;
  v18 = *v15;
  v8[7] = v6;
  v8[8] = &off_282A931D0;
  v8[12] = v7;
  v8[13] = &off_282A9F440;
  v8[9] = v18;
  v8[3] = 0;
  v8[4] = v17;
  swift_unknownObjectWeakInit();
  v8[14] = a3;
  v8[15] = 0;
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v8;
}

void sub_21900C6D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_21900C78C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineGridSectionDescriptor;
    v8[1] = type metadata accessor for MagazineGridItemModel();
    v8[2] = sub_21895164C();
    v8[3] = sub_21900CA40(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21900C85C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    MEMORY[0x28223BE20](Strong);
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0);
    v2 = sub_219BF66A4();
    v3 = swift_allocObject();
    sub_21900B2F0();
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    sub_219BE2F94();

    v4 = sub_219BF66A4();
    sub_219BE2FE4();
  }
}

uint64_t sub_21900CA40(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_21900CA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for MagazineGridRouter();
  v15[4] = &off_282A957C8;
  v15[0] = a3;
  v14[3] = type metadata accessor for MagazineGridTracker();
  v14[4] = &off_282A30D40;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A44F88, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_21900CB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v24 = type metadata accessor for MagazineGridRouter();
  v25 = &off_282A957C8;
  v23[0] = a3;
  v21 = v8;
  v22 = &off_282A30D40;
  v20[0] = a4;
  type metadata accessor for MagazineGridEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v14);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_21900CA88(a1, a2, *v12, *v16, v9);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t sub_21900CD8C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BDB224();
  v60 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v55 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDB354();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB344();
  sub_219BDB934();
  sub_219BDB2E4();
  v12 = sub_219BDB234();
  if (!v12)
  {
    v14 = sub_2194B0E30(MEMORY[0x277D84F90]);
LABEL_27:
    if (!sub_21900D298(v14))
    {
      v43 = [objc_opt_self() systemBackgroundColor];
    }

    sub_21900D474(a2, v14);

    sub_219BE76A4();

    v44 = sub_219BDB954();
    (*(*(v44 - 8) + 8))(a1, v44);
    return (*(v9 + 8))(v11, v8);
  }

  v59 = *(v12 + 16);
  if (!v59)
  {

    v14 = MEMORY[0x277D84F98];
    goto LABEL_27;
  }

  v47 = v11;
  v48 = v9;
  v49 = v8;
  v50 = a3;
  v51 = a2;
  v52 = a1;
  v13 = 0;
  v58 = v12 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
  v56 = (v60 + 8);
  v57 = v60 + 16;
  v14 = MEMORY[0x277D84F98];
  v15 = v55;
  v16 = v12;
  v53 = v12;
  v54 = v6;
  while (v13 < *(v16 + 16))
  {
    (*(v60 + 16))(v15, v58 + *(v60 + 72) * v13, v6);
    v17 = sub_219BDB204();
    v19 = v18;
    v20 = sub_219BDB214();
    if (!v21)
    {
      v33 = sub_21870F700(v17, v19);
      v35 = v34;

      if (v35)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v14;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_219493D28();
          v14 = v61;
        }

        sub_21948A674(v33, v14);
      }

      (*v56)(v15, v6);
      goto LABEL_6;
    }

    v22 = v21;
    v23 = v20;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v14;
    v26 = sub_21870F700(v17, v19);
    v27 = v14[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_31;
    }

    v30 = v25;
    if (v14[3] >= v29)
    {
      if (v24)
      {
        v15 = v55;
        if ((v25 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_219493D28();
        v15 = v55;
        if ((v30 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_21948381C(v29, v24);
      v31 = sub_21870F700(v17, v19);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_33;
      }

      v26 = v31;
      v15 = v55;
      if ((v30 & 1) == 0)
      {
LABEL_21:
        v14 = v61;
        v61[(v26 >> 6) + 8] |= 1 << v26;
        v38 = (v14[6] + 16 * v26);
        *v38 = v17;
        v38[1] = v19;
        v39 = (v14[7] + 16 * v26);
        *v39 = v23;
        v39[1] = v22;
        v6 = v54;
        (*v56)(v15, v54);
        v40 = v14[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_32;
        }

        v14[2] = v42;
        goto LABEL_23;
      }
    }

    v14 = v61;
    v37 = (v61[7] + 16 * v26);
    *v37 = v23;
    v37[1] = v22;

    v6 = v54;
    (*v56)(v15, v54);
LABEL_23:
    v16 = v53;
LABEL_6:
    if (v59 == ++v13)
    {

      a2 = v51;
      a1 = v52;
      v8 = v49;
      v11 = v47;
      v9 = v48;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

id sub_21900D298(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_21870F700(0x67625F746867696CLL, 0xEE00726F6C6F635FLL);
  if (v2)
  {
    sub_2186F8B0C();

    v3 = sub_219BF6D54();
    if (!*(a1 + 16))
    {
LABEL_11:
      v6 = 0;
      if (v3)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  sub_21870F700(0x5F67625F6B726164, 0xED0000726F6C6F63);
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2186F8B0C();

  v6 = sub_219BF6D54();
  if (v3)
  {
LABEL_12:
    v7 = objc_opt_self();
    if (!v6)
    {
      v9 = v3;
      v6 = [v7 systemBackgroundColor];
      v8 = v9;
      goto LABEL_16;
    }

    v8 = v3;
LABEL_14:
    v9 = v3;
LABEL_16:
    v10 = [v7 ts:v8 dynamicColor:v6 withDarkStyleVariant:?];

    return v10;
  }

LABEL_9:
  if (v6)
  {
    v7 = objc_opt_self();
    v8 = [v7 systemBackgroundColor];
    v3 = 0;
    goto LABEL_14;
  }

  return 0;
}

id sub_21900D474(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_30;
  }

  v4 = sub_21870F700(0x746365666665, 0xE600000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_30;
  }

  v6 = (*(a2 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *v6 == 0xD000000000000010 && 0x8000000219D06F90 == v8;
  if (!v9 && (sub_219BF78F4() & 1) == 0)
  {
    v11 = v7 == 0x67696C5F72756C62 && v8 == 0xEA00000000007468;
    if (v11 || (sub_219BF78F4() & 1) != 0)
    {
      v10 = [objc_opt_self() effectWithStyle_];
      return v10;
    }

    v12 = v7 == 0x7261645F72756C62 && v8 == 0xE90000000000006BLL;
    if (v12 || (sub_219BF78F4() & 1) != 0)
    {
      v10 = [objc_opt_self() effectWithStyle_];
      return v10;
    }

    if (v7 == 0x7478655F72756C62 && v8 == 0xEF6B7261645F6172 || (sub_219BF78F4() & 1) != 0)
    {
      v10 = [objc_opt_self() effectWithStyle_];
      return v10;
    }

    if (v7 == 1701736302 && v8 == 0xE400000000000000 || (sub_219BF78F4() & 1) != 0)
    {
      return 0;
    }

LABEL_30:
    v13 = a1;
    return a1;
  }

  v10 = [objc_opt_self() effectWithStyle_];
  return v10;
}

unint64_t sub_21900D6B4(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  sub_21896FA3C();
  v63 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v65 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v5;
  MEMORY[0x28223BE20](v4);
  v66 = &v62 - v6;
  v7 = sub_219BE8C14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE9414();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  v18 = sub_219BDD944();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v20;
  v21 = type metadata accessor for SharedWithYouFeedRouteModel();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21900E9C8(a1, v23, type metadata accessor for SharedWithYouFeedRouteModel);
  v24 = v20;
  v25 = v67;
  sub_218B5E238(v23, v24, MEMORY[0x277D2FB40]);
  (*(v8 + 16))(v10, v25, v7);
  sub_219BE9424();
  (*(v12 + 104))(v15, *MEMORY[0x277D6E598], v11);
  sub_21900E980(&unk_280EE44E0, MEMORY[0x277D6E5A8]);
  v69 = v17;
  LOBYTE(a1) = sub_219BF53A4();
  v26 = *(v12 + 8);
  v70 = v11;
  v71 = v12 + 8;
  v26(v15, v11);
  if ((a1 & 1) == 0)
  {
    v27 = sub_219BE8BF4();
    if (v27)
    {
      v28 = v27;
      sub_218C1A2CC(v81);
      v29 = v81[0];
      if ((~v81[0] & 0xF000000000000007) != 0)
      {
        v61 = v69;
        sub_219BE6474();

        v26(v61, v70);
        sub_218D0E588(v72, MEMORY[0x277D2FB40]);
        return sub_218970170(v29);
      }
    }
  }

  v30 = v68;
  v31 = *(v68 + 112);
  sub_2187B2C48();
  v33 = v32;
  v34 = swift_allocBox();
  v36 = v35;
  v37 = *(v33 + 48);
  sub_2187B2DA0();
  v39 = *(v38 + 48);
  sub_21900E9C8(v72, v36, MEMORY[0x277D2FB40]);
  v40 = MEMORY[0x277D84F90];
  *(v36 + v39) = MEMORY[0x277D84F90];
  *(v36 + v37) = v40;
  v67 = v34;
  v41 = v34 | 2;
  v42 = *(v30 + 64);
  v43 = sub_219BDFA44();
  v44 = v66;
  (*(*(v43 - 8) + 56))(v66, 1, 1, v43);
  sub_218718690(v30 + 72, v81);
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v78 = v31;
  sub_2187B171C(v79, &v74, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  v62 = v26;
  if (v75)
  {
    sub_21875F93C(&v74, v76);
    *&v74 = v41;
    v45 = sub_2194DA78C(v76);
    v68 = v46;
    v48 = v47;
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    sub_2187B1CC0(&v74, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v45 = qword_280ED32D8;
    v49 = qword_280ED32E0;
    v48 = qword_280ED32E8;

    v68 = v49;
    sub_2188202A8(v49);
  }

  v73 = v41;
  v75 = sub_219BDD274();
  *&v74 = v42;
  v50 = v65;
  sub_21900E9C8(v44, v65, sub_21896FA3C);
  sub_2187B171C(v81, v76, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v51 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v52 = (v64 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 47) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = v42;
  sub_218B5E238(v50, v54 + v51, sub_21896FA3C);
  v55 = v54 + v52;
  v56 = v76[1];
  *v55 = v76[0];
  *(v55 + 16) = v56;
  *(v55 + 32) = v77;
  v57 = (v54 + v53);
  v58 = (v54 + ((v53 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v57 = 0;
  v57[1] = 0;
  v59 = v68;
  *v58 = v45;
  v58[1] = v59;
  v58[2] = v48;
  swift_retain_n();

  sub_2188202A8(v59);
  sub_2186CF94C();
  sub_21900E980(&qword_280EE5A90, sub_2186CF94C);
  sub_219BEB464();

  sub_2187FABEC(v59);
  sub_2187B1CC0(v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v81, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218D0E588(v44, sub_21896FA3C);
  v62(v69, v70);
  sub_218D0E588(v72, MEMORY[0x277D2FB40]);
  sub_218806FD0(&v74);
}

uint64_t sub_21900E0A4(uint64_t a1)
{
  sub_21896F9B8();
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NewsActivity2.Article(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v62 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v63 = &v58 - v8;
  sub_21896FA3C();
  v64 = *(v9 - 8);
  v10 = *(v64 + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v61 = sub_219BDD944();
  v14 = MEMORY[0x28223BE20](v61);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v60 = &v58 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  v21 = type metadata accessor for SharedWithYouFeedRouteModel();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21900E9C8(a1, v23, type metadata accessor for SharedWithYouFeedRouteModel);
  sub_218B5E238(v23, v20, MEMORY[0x277D2FB40]);
  v24 = *(v1 + 112);
  sub_2187B2C48();
  v26 = v25;
  v66 = swift_allocBox();
  v28 = v27;
  v29 = *(v26 + 48);
  sub_2187B2DA0();
  v31 = *(v30 + 48);
  v67 = v20;
  sub_21900E9C8(v20, v28, MEMORY[0x277D2FB40]);
  v32 = MEMORY[0x277D84F90];
  *(v28 + v31) = MEMORY[0x277D84F90];
  v33 = v13;
  *(v28 + v29) = v32;
  v34 = *(v1 + 64);
  v35 = sub_219BDFA44();
  (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
  sub_218718690(v1 + 72, v71);
  v70[5] = v24;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  v36 = sub_219BDC8C4();

  if (v36)
  {
    v37 = v28;
    v38 = v63;
    sub_21900E9C8(v37, v63, type metadata accessor for NewsActivity2.Article);
    v39 = v62;
    sub_21900E9C8(v38, v62, type metadata accessor for NewsActivity2.Article);

    sub_218B5E238(v39, v16, MEMORY[0x277D2FB40]);
    sub_218D0E588(v38, type metadata accessor for NewsActivity2.Article);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = swift_projectBox();
      v41 = v58;
      sub_21900E9C8(v40, v58, sub_21896F9B8);
      v42 = v60;
      sub_218B5E238(v41 + *(v59 + 48), v60, MEMORY[0x277D2FB40]);
      __swift_destroy_boxed_opaque_existential_1(v41);

      sub_2186C66AC();
      v43 = sub_219BF6F44();
      sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_219C09BA0;
      v45 = sub_219BDD8C4();
      v47 = v46;
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = sub_2186FC3BC();
      *(v44 + 32) = v45;
      *(v44 + 40) = v47;
      sub_219BF6214();
      sub_219BE5314();

      v48 = MEMORY[0x277D2FB40];
      sub_218D0E588(v42, MEMORY[0x277D2FB40]);
      sub_2187B1CC0(v71, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218D0E588(v33, sub_21896FA3C);
      sub_218D0E588(v67, v48);

      return 0;
    }

    sub_218D0E588(v16, MEMORY[0x277D2FB40]);
  }

  v70[4] = v66 | 2;
  v70[3] = sub_219BDD274();
  v70[0] = v34;
  v49 = v65;
  sub_21900E9C8(v33, v65, sub_21896FA3C);
  sub_2187B171C(v71, v68, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v50 = (*(v64 + 80) + 24) & ~*(v64 + 80);
  v51 = (v10 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v34;
  sub_218B5E238(v49, v52 + v50, sub_21896FA3C);
  v53 = v52 + v51;
  v54 = v68[1];
  *v53 = v68[0];
  *(v53 + 16) = v54;
  *(v53 + 32) = v69;
  v55 = (v52 + ((v51 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v55 = 0;
  v55[1] = 0;
  sub_2186CF94C();
  sub_21900E980(&qword_280EE5A90, sub_2186CF94C);
  swift_retain_n();
  v57 = sub_219BEB454();

  sub_2187B1CC0(v71, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218D0E588(v33, sub_21896FA3C);
  sub_218D0E588(v67, MEMORY[0x277D2FB40]);
  sub_218806FD0(v70);

  return v57;
}

uint64_t sub_21900E980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21900E9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_21900EA30@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D76918];
  v5 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277D74418];
  v8 = [v6 systemFontOfSize:v3 weight:*MEMORY[0x277D74418]];
  v9 = [v5 scaledFontForFont_];

  [v9 pointSize];
  v11 = v10;

  if (v3 < v11 && (v12 = [objc_opt_self() sharedApplication], v13 = objc_msgSend(v12, sel_preferredContentSizeCategory), v12, LOBYTE(v12) = sub_219BF6944(), v13, (v12 & 1) != 0))
  {
    v14 = v4;
    v15 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    v16 = v6;
    v17 = [v6 systemFontOfSize:v3 weight:v7];
    v18 = [v15 scaledFontForFont_];

    [v18 pointSize];
    v20 = v19;

    if (v3 * 1.15 >= v20)
    {
      v3 = v20;
    }

    else
    {
      v3 = v3 * 1.15;
    }
  }

  else
  {
    v16 = v6;
    v14 = v4;
  }

  v51 = *(v1 + 16);
  v52 = *(v1 + 8);
  v21 = *(v1 + 24);
  v22 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v23 = v16;
  v24 = [v16 systemFontOfSize:v21 weight:v7];
  v25 = [v22 &selRef:v24 setAlwaysBounceVertical:? + 2];

  [v25 pointSize];
  v50 = v26;

  v27 = *(v1 + 32);
  v28 = *(v1 + 40);
  v29 = *(v1 + 48);
  v30 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v31 = [v23 systemFontOfSize:v29 weight:v7];
  v32 = [v30 scaledFontForFont:v31 maximumPointSize:18.0];

  [v32 pointSize];
  v34 = v33;

  v35 = *(v1 + 56);
  v36 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v37 = [v23 systemFontOfSize:v35 weight:v7];
  v38 = [v36 scaledFontForFont_];

  [v38 pointSize];
  v40 = v39;

  v41 = *(v1 + 64);
  v42 = *(v1 + 72);
  v43 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v44 = [v23 systemFontOfSize:v42 weight:v7];
  v45 = [v43 scaledFontForFont_];

  [v45 pointSize];
  v47 = v46;

  v48 = *(v1 + 80);
  *a1 = v3;
  *(a1 + 8) = v52;
  result = v50;
  *(a1 + 16) = v51;
  *(a1 + 24) = v50;
  *(a1 + 32) = v27;
  *(a1 + 40) = v28;
  *(a1 + 48) = v34;
  *(a1 + 56) = v40;
  *(a1 + 64) = v41;
  *(a1 + 72) = v47;
  *(a1 + 80) = v48;
  return result;
}

id sub_21900EE8C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v2 setLineHeightMultiple_];
  sub_219010B6C(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0EE20;
  v4 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v5 = objc_opt_self();
  v6 = v1[7];
  v7 = *MEMORY[0x277D74400];
  v8 = v4;
  v9 = [v5 systemFontOfSize:v6 weight:v7];
  v10 = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x277D740C0];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = objc_opt_self();
  v31 = v11;
  v13 = [v12 labelColor];
  v14 = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v13;
  v15 = *MEMORY[0x277D740D0];
  *(inited + 104) = v14;
  *(inited + 112) = v15;
  v16 = MEMORY[0x277D85048];
  *(inited + 120) = v1[8];
  v17 = *MEMORY[0x277D74118];
  *(inited + 144) = v16;
  *(inited + 152) = v17;
  *(inited + 184) = sub_2186C6148(0, &qword_280E8DED8);
  *(inited + 160) = v2;
  v18 = v15;
  v19 = v17;
  v20 = v2;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v21 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v22 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_218819B04(&qword_280E8E118, type metadata accessor for Key);
  v23 = sub_219BF5204();

  v24 = [v21 initWithString:v22 attributes:v23];

  sub_2187F3BD4();
  sub_219BF7064();
  if ((v25 & 1) == 0)
  {
    sub_219010BD0();
    sub_218819B04(&qword_27CC15020, sub_219010BD0);

    v26 = sub_219BF6F24();
    v28 = v27;
    v29 = __swift_project_boxed_opaque_existential_1(v1 + 2, *(v1 + 5))[1];
    [v24 addAttribute:v31 value:v29 range:{v26, v28}];
  }

  return v24;
}

id sub_21900F270()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v1 setLineHeightMultiple_];
  sub_219010B6C(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0EE20;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = objc_opt_self();
  v5 = *(v0 + 80);
  v6 = *MEMORY[0x277D74418];
  v7 = v3;
  v8 = [v4 systemFontOfSize:v5 weight:v6];
  v9 = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v8;
  v10 = *MEMORY[0x277D740C0];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 labelColor];
  v14 = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v13;
  v15 = *MEMORY[0x277D740D0];
  *(inited + 104) = v14;
  *(inited + 112) = v15;
  v16 = MEMORY[0x277D85048];
  *(inited + 120) = *(v0 + 96);
  v17 = *MEMORY[0x277D74118];
  *(inited + 144) = v16;
  *(inited + 152) = v17;
  *(inited + 184) = sub_2186C6148(0, &qword_280E8DED8);
  *(inited + 160) = v1;
  v18 = v15;
  v19 = v17;
  v20 = v1;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v21 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v22 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_218819B04(&qword_280E8E118, type metadata accessor for Key);
  v23 = sub_219BF5204();

  v24 = [v21 initWithString:v22 attributes:v23];

  return v24;
}

uint64_t sub_21900F554(void *a1)
{
  v3 = [a1 string];
  v4 = sub_219BF5414();
  v6 = v5;

  v30[0] = 46;
  v30[1] = 0xE100000000000000;
  v29[2] = v30;
  sub_2190100CC(sub_2186D1358, v29, v4, v6);
  v8 = v7;
  sub_219BF5554();
  v9 = 0;
  if ((v8 & 1) == 0)
  {
    sub_219BF5564();
    v9 = sub_219BF5604();
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v11 = sub_219BF53D4();
  result = sub_219BF5554();
  if (__OFSUB__(result, v9))
  {
    __break(1u);
  }

  else
  {
    [v10 addAttribute:*MEMORY[0x277D740E8] value:v11 range:{v9, result - v9}];

    v13 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v13 setAlignment_];
    sub_219010B6C(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09EC0;
    v15 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v16 = objc_opt_self();
    v17 = *(v1 + 104);
    v18 = *MEMORY[0x277D74418];
    v19 = v15;
    v20 = [v16 systemFontOfSize:v17 weight:v18];
    v21 = sub_2186C6148(0, &qword_280E8DB00);
    *(inited + 40) = v20;
    v22 = *MEMORY[0x277D74118];
    *(inited + 64) = v21;
    *(inited + 72) = v22;
    *(inited + 104) = sub_2186C6148(0, &qword_280E8DED8);
    *(inited + 80) = v13;
    v23 = v22;
    v24 = v13;
    sub_2188195F4(inited);
    swift_setDeallocating();
    sub_218819588();
    swift_arrayDestroy();
    type metadata accessor for Key(0);
    sub_218819B04(&qword_280E8E118, type metadata accessor for Key);
    v25 = sub_219BF5204();

    v26 = sub_219BF5554();

    if (!__OFSUB__(v26, 1))
    {
      [v10 addAttributes:v25 range:{0, v26 - 1}];

      sub_2186C6148(0, &unk_280E8E330);
      v27 = v10;
      v28 = sub_219BF6774();

      return v28;
    }
  }

  __break(1u);
  return result;
}

id sub_21900F920()
{
  sub_219010B6C(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v2 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v3 = objc_opt_self();
  v4 = *(v0 + 128);
  v5 = *MEMORY[0x277D743F8];
  v6 = v2;
  v7 = [v3 systemFontOfSize:v4 weight:v5];
  v8 = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x277D740C0];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 whiteColor];
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v12;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v14 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_218819B04(&qword_280E8E118, type metadata accessor for Key);
  v15 = sub_219BF5204();

  v16 = [v13 initWithString:v14 attributes:v15];

  return v16;
}

uint64_t sub_21900FB70()
{
  v1 = sub_219BDB624();
  MEMORY[0x28223BE20](v1 - 8);

  sub_219BDB614();
  sub_219BDB5B4();
  v2 = [objc_opt_self() systemFontOfSize:*(v0 + 128) weight:*MEMORY[0x277D743F8]];
  sub_218C8FBA4();
  sub_219BDB5C4();
  sub_219BECF34();
  sub_219010A04();
  return sub_219BDB5C4();
}

id sub_21900FC90()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v1 setLineHeightMultiple_];
  [v1 setAlignment_];
  if (*(v0 + 136))
  {
    v2 = -0.5;
  }

  else
  {
    v2 = 0.08;
  }

  sub_219010B6C(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0EE20;
  v4 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v5 = objc_opt_self();
  v6 = *(v0 + 112);
  v7 = *MEMORY[0x277D74418];
  v8 = v4;
  v9 = [v5 systemFontOfSize:v6 weight:v7];
  v10 = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x277D740C0];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40))[2];
  v13 = sub_2186C6148(0, &qword_280E8DA80);
  v14 = MEMORY[0x277D740D0];
  *(inited + 80) = v12;
  v15 = *v14;
  *(inited + 104) = v13;
  *(inited + 112) = v15;
  v16 = MEMORY[0x277D839F8];
  *(inited + 120) = v2;
  v17 = *MEMORY[0x277D74118];
  *(inited + 144) = v16;
  *(inited + 152) = v17;
  *(inited + 184) = sub_2186C6148(0, &qword_280E8DED8);
  *(inited + 160) = v1;
  v18 = v11;
  v19 = v12;
  v20 = v15;
  v21 = v17;
  v22 = v1;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v24 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_218819B04(&qword_280E8E118, type metadata accessor for Key);
  v25 = sub_219BF5204();

  v26 = [v23 initWithString:v24 attributes:v25];

  return v26;
}

uint64_t sub_21900FF8C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21901000C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_219010060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2190100CC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_219BF5574();
    v13[0] = sub_219BF5654();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

void sub_2190101D0(void *a1)
{
  if ([a1 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0])
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5 = v3;
  v6 = v4;
  if (!*(&v4 + 1))
  {
    goto LABEL_14;
  }

  sub_2186C6148(0, &unk_280E8E510);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if ([a1 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0])
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5 = v3;
  v6 = v4;
  if (!*(&v4 + 1))
  {

LABEL_14:
    sub_218806FD0(&v5);
    return;
  }

  sub_2186C6148(0, &qword_280E8DB00);
  if (swift_dynamicCast())
  {
    [v2 lineHeightMultiple];
    [v2 lineHeight];
    [v2 lineHeight];
  }
}

void sub_2190103A8(void *a1)
{
  v2 = [a1 textContainer];
  [v2 setLineBreakMode_];

  [a1 setUserInteractionEnabled_];
  [a1 setSelectable_];
  [a1 setEditable_];
  [a1 setScrollEnabled_];
  v3 = [a1 attributedText];
  if (v3)
  {
    v4 = v3;
    sub_2190101D0(v3);
    v6 = v5;

    [a1 textContainerInset];
    [a1 setTextContainerInset_];
    [a1 textContainerInset];
    [a1 setTextContainerInset_];
    [a1 textContainerInset];
    [a1 setTextContainerInset_];
    [a1 textContainerInset];
    [a1 setTextContainerInset_];
    v7 = [a1 textContainer];
    [v7 setLineFragmentPadding_];
  }

  else
  {
    __break(1u);
  }
}

void sub_219010540(void *a1)
{
  v2 = [a1 textContainer];
  [v2 setMaximumNumberOfLines_];

  v3 = [a1 textContainer];
  [v3 setLineBreakMode_];

  v4 = [a1 textContainer];
  [v4 setLineFragmentPadding_];

  [a1 setTextContainerInset_];
  [a1 setEditable_];
  [a1 setSelectable_];
  [a1 setScrollEnabled_];
  [a1 setShowsVerticalScrollIndicator_];
  [a1 setShowsHorizontalScrollIndicator_];
  v5 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];
}

uint64_t sub_2190106C4(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x277D83D88];
  sub_219010B6C(0, &qword_280E8D9C0, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  sub_219010B6C(0, &qword_280EE9D90, MEMORY[0x277CC8C40], v4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_219BF6E34();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF6ED4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF6EB4();
  (*(v12 + 104))(v14, *MEMORY[0x277D74FD8], v11);
  sub_219BF6E44();
  v19 = sub_219BDB5A4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v10, a2, v19);
  (*(v20 + 56))(v10, 0, 1, v19);
  sub_219BF6E74();
  [a1 setPreferredBehavioralStyle_];
  (*(v16 + 16))(v7, v18, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  sub_219BF6EE4();
  return (*(v16 + 8))(v18, v15);
}

unint64_t sub_219010A04()
{
  result = qword_27CC15010;
  if (!qword_27CC15010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15010);
  }

  return result;
}

void sub_219010A58(void *a1, char a2)
{
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    if (a2)
    {
      [a1 setEffect_];
      v5 = [objc_opt_self() darkGrayColor];
      [a1 setBackgroundColor_];

      return;
    }

    goto LABEL_8;
  }

  if ((a2 & 1) == 0)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v4 = [objc_opt_self() effectWithStyle_];
LABEL_9:
  [a1 setEffect_];

  [a1 setBackgroundColor_];
}

void sub_219010B6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_219010BD0()
{
  if (!qword_27CC15018)
  {
    v0 = sub_219BF5EE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15018);
    }
  }
}

uint64_t type metadata accessor for ArticleListAudioPlaylistFeedGroup()
{
  result = qword_27CC15028;
  if (!qword_27CC15028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219010CD0()
{
  v1 = *(v0 + *(type metadata accessor for ArticleListAudioPlaylistFeedGroup() + 24));
  if (v1 >> 62)
  {
    sub_2186D6710(0, &qword_280E8DF60);

    v4 = sub_219BF7534();

    return v4;
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v2 = sub_218CFA4E0(v1 & 0xFFFFFFFFFFFFFF8);

    if (v2)
    {
      return v1;
    }

    else
    {
      return v1 & 0xFFFFFFFFFFFFFF8 | 1;
    }
  }
}

uint64_t sub_219010D90()
{
  sub_219010EF4(&qword_27CC11278);

  return sub_219BF1174();
}

uint64_t sub_219010E00(uint64_t a1)
{
  v2 = sub_219010EF4(&qword_27CC11278);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219010EF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArticleListAudioPlaylistFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219010F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v5 = sub_219BE15B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE3D94();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE46E4();
  if (!v14)
  {
    if (qword_27CC08548 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_219BE5314();
    return 0;
  }

  v25 = v5;
  v26 = v6;
  v15 = a2;
  v24 = v13;
  *v12 = v13;
  *(v12 + 1) = v14;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  (*(v10 + 104))(v12, *MEMORY[0x277D34DF8], v9);

  v16 = sub_2191F999C(0, 1, 1, MEMORY[0x277D84F90]);
  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_2191F999C(v17 > 1, v18 + 1, 1, v16);
  }

  v16[2] = v18 + 1;
  (*(v10 + 32))(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v12, v9);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2186C709C(0, &qword_280EE8B10);
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = v15;
  v19[4] = v27;

  swift_unknownObjectRetain();
  sub_219BE1E14();

  if (v29)
  {
    sub_2186CB1F0(&v28, v30);
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_219BDD274();
    result = sub_219BE1E24();
    v21 = v26;
    if (result)
    {

      v22 = v25;
      (*(v21 + 104))(v8, *MEMORY[0x277D2F510], v25);
      sub_219BE15A4();
      (*(v21 + 8))(v8, v22);

      sub_219BDD224();

      __swift_project_boxed_opaque_existential_1(v30, v30[3]);

      v23 = sub_219BDE854();

      __swift_destroy_boxed_opaque_existential_1(v30);
      return v23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2190113B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[0] = a4;
  v25[1] = a3;
  sub_218769FD0(0, &qword_280EE6350, MEMORY[0x277D35078]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v25 - v6;
  sub_218769FD0(0, &qword_280EE8AE0, MEMORY[0x277D30210]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - v9;
  v11 = sub_219BDDD44();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x277D301F8];
  v16 = sub_219BDE914();
  (*(*(v16 - 8) + 104))(v10, v15, v16);
  v17 = *MEMORY[0x277D30200];
  v18 = sub_219BDE924();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v10, v17, v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  v20 = sub_219BE4394();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);

  sub_219BDDD34();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = type metadata accessor for OnboardingLandingPageCloseActionHandler();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC7NewsUI239OnboardingLandingPageCloseActionHandler_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v25[0];
  swift_unknownObjectWeakAssign();
  v26.receiver = v22;
  v26.super_class = v21;
  v23 = objc_msgSendSuper2(&v26, sel_init);
  sub_219012020();
  sub_219BE1B94();

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_219011738(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_27CC15058);
  return sub_219BE1BA4();
}

uint64_t sub_219011934()
{
  v1 = sub_219BDD0A4();
  v16 = *(v1 - 8);
  v17 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE15B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_219BDD274();
  result = sub_219BE1E24();
  v18 = result;
  if (result)
  {
    v9 = *(v5 + 104);
    v9(v7, *MEMORY[0x277D2F510], v4);
    sub_219BE15A4();
    v10 = *(v5 + 8);
    v10(v7, v4);
    sub_219BDD224();

    v9(v7, *MEMORY[0x277D2F4D8], v4);
    sub_219BDD094();
    v10(v7, v4);
    sub_219BDD204();
    (*(v16 + 8))(v3, v17);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_2186C709C(0, qword_280EB8F70);
    result = sub_219BE1E34();
    if (v20)
    {
      sub_2186CB1F0(&v19, v21);
      v11 = v22;
      v12 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v19 = 0uLL;
      v13 = (*(v12 + 8))(&v19, 1, v11, v12);
      v14 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      [v14 setModalInPresentation_];

      __swift_destroy_boxed_opaque_existential_1(v21);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219011C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v24 = a2;
  v4 = sub_219BDD0A4();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE15B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_219BDD274();
  result = sub_219BE1E24();
  v25 = result;
  if (result)
  {
    v12 = *(v8 + 104);
    v12(v10, *MEMORY[0x277D2F510], v7);
    sub_219BE15A4();
    v13 = *(v8 + 8);
    v13(v10, v7);
    sub_219BDD224();

    v12(v10, *MEMORY[0x277D2F4D8], v7);
    sub_219BDD094();
    v13(v10, v7);
    sub_219BDD204();
    (*(v21 + 8))(v6, v22);
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_2186C709C(0, qword_280EB8F70);
    v14 = swift_allocObject();
    v15 = v23;
    *(v14 + 16) = v24;
    *(v14 + 24) = v15;
    swift_unknownObjectRetain();
    sub_219BE1E14();

    if (v27)
    {
      sub_2186CB1F0(&v26, v28);
      v16 = v29;
      v17 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v26 = xmmword_219C14A10;
      v18 = (*(v17 + 8))(&v26, 1, v16, v17);
      v19 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      [v19 setModalInPresentation_];

      __swift_destroy_boxed_opaque_existential_1(v28);
      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_219012020()
{
  result = qword_27CC15068;
  if (!qword_27CC15068)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC15068);
  }

  return result;
}

uint64_t sub_219012084(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = type metadata accessor for RecipeBoxFeedContentConfig();
  v2[9] = swift_task_alloc();
  v3 = sub_219BDB954();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_218B6B398(0);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2190121AC, 0, 0);
}

uint64_t sub_2190121AC()
{
  v1 = [*(v0[7] + 24) appConfiguration];
  v0[15] = v1;
  if (([v1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_recipeBoxFeedConfigurationResourceId)) != 0)
  {
    v3 = v0[14];
    v4 = v0[7];
    v5 = v2;
    sub_219BF5414();

    __swift_project_boxed_opaque_existential_1((v4 + 32), *(v4 + 56));
    sub_219BF5CE4();
    *v3 = v6;
    v7 = *MEMORY[0x277D6CA48];
    v8 = sub_219BE1B34();
    v9 = *(v8 - 8);
    (*(v9 + 104))(v3, v7, v8);
    (*(v9 + 56))(v3, 0, 1, v8);
    v0[16] = sub_219BF2954();

    sub_21897DAD8(v3);
    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_219012460;

    return MEMORY[0x2821D23D8](v0 + 4);
  }

  else
  {
    sub_2190130EC();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_219012460()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2190128E8;
  }

  else
  {

    v2 = sub_21901257C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21901257C()
{
  v1 = v0[4];
  v2 = [v1 fileURL];
  if (v2)
  {
    v3 = v0[18];
    v4 = v0[12];
    v5 = v0[13];
    v6 = v0[10];
    v7 = v0[11];
    v8 = v2;
    sub_219BDB8B4();

    (*(v7 + 32))(v5, v4, v6);
    v9 = sub_219BDB974();
    v11 = v3;
    if (!v3)
    {
      v18 = v9;
      v19 = v10;
      sub_219013030();
      sub_219BE1974();
      v20 = v0[9];
      v21 = v0[6];
      (*(v0[11] + 8))(v0[13], v0[10]);
      sub_2186C6190(v18, v19);
      swift_unknownObjectRelease();
      sub_219013088(v20, v21);
      *(v21 + *(type metadata accessor for RecipeBoxFeedConfigFetchResult() + 20)) = v1;

      v16 = v0[1];
      goto LABEL_8;
    }

    (*(v0[11] + 8))(v0[13], v0[10]);
  }

  else
  {
    sub_2190130EC();
    v11 = swift_allocError();
    *v12 = 2;
    swift_willThrow();
  }

  if (qword_280E8D7B8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v13 = swift_allocObject();
  v0[2] = 0;
  *(v13 + 16) = xmmword_219C09BA0;
  v0[3] = 0xE000000000000000;
  v0[5] = v11;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v14 = v0[2];
  v15 = v0[3];
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_2186FC3BC();
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  sub_219BE5314();

  swift_willThrow();
  swift_unknownObjectRelease();

  v16 = v0[1];
LABEL_8:

  return v16();
}

uint64_t sub_2190128E8()
{

  v1 = v0[18];
  if (qword_280E8D7B8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v2 = swift_allocObject();
  v0[2] = 0;
  *(v2 + 16) = xmmword_219C09BA0;
  v0[3] = 0xE000000000000000;
  v0[5] = v1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v3 = v0[2];
  v4 = v0[3];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  sub_219BE5314();

  swift_willThrow();
  swift_unknownObjectRelease();

  v5 = v0[1];

  return v5();
}

uint64_t sub_219012AA4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = type metadata accessor for RecipeBoxFeedContentConfig();
  v3[8] = swift_task_alloc();
  v4 = sub_219BDB954();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_219BDAF64();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219012BF4, 0, 0);
}

uint64_t sub_219012BF4()
{
  (*(v0[10] + 16))(v0[11], v0[5], v0[9]);
  sub_219BDAF44();
  v1 = [objc_opt_self() sharedSession];
  v0[15] = sub_219BE2E24();

  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_219012D00;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_219012D00()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_219012F94;
  }

  else
  {
    v2 = sub_219012E34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219012E34()
{
  v1 = v0[17];
  v2 = v0[2];
  v3 = v0[3];
  sub_219013030();
  sub_219BE1974();
  v4 = v0[13];
  if (v1)
  {
    (*(v4 + 8))(v0[14], v0[12]);
    sub_2186C6190(v2, v3);
  }

  else
  {
    v6 = v0[8];
    v7 = v0[4];
    (*(v4 + 8))();
    sub_2186C6190(v2, v3);
    sub_219013088(v6, v7);
    *(v7 + *(type metadata accessor for RecipeBoxFeedConfigFetchResult() + 20)) = 0;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_219012F94()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_219013030()
{
  result = qword_27CC15070;
  if (!qword_27CC15070)
  {
    type metadata accessor for RecipeBoxFeedContentConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15070);
  }

  return result;
}

uint64_t sub_219013088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxFeedContentConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2190130EC()
{
  result = qword_27CC15080;
  if (!qword_27CC15080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15080);
  }

  return result;
}

unint64_t sub_219013154()
{
  result = qword_27CC15088;
  if (!qword_27CC15088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15088);
  }

  return result;
}

uint64_t sub_2190131A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SportsManagementModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for SportsManagementModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219013258()
{
  type metadata accessor for SportsManagementViewController();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_27CC15098);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC150A0);
  sub_219BE2914();
  type metadata accessor for SportsManagementRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC150A8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC150B0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC150B8);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC150C0);
  sub_219BE2914();
  sub_2186C709C(0, qword_280EB66D0);
  sub_219BE19C4();

  sub_218987380();
  sub_219BE2904();

  type metadata accessor for SportsManagementBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC150C8);
  sub_219BE2914();

  sub_219017B78();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21901840C();
  sub_219BE2904();

  sub_219017C64();
  sub_219BE2904();

  sub_2190180A8();
  sub_219BE2904();

  type metadata accessor for SportsManagementBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2190184F8();
  sub_219BE2904();

  sub_2186C6148(0, &qword_280E8E828);
  sub_219BE2904();

  sub_219017DA0();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_219017F1C();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219018194();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219018320();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SportsManagementBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SportsManagementBlueprintViewHeaderProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219018720(0, &qword_27CC15180, MEMORY[0x277D6E388]);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_219018634();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80);
  sub_219BE2914();
}

uint64_t sub_219013BBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ED7980);
  result = sub_219BE1E14();
  if (!v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_2186CB1F0(&v13, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15098);
  result = sub_219BE1E34();
  if (!v14)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC150A8);
  result = sub_219BE1E34();
  v3 = v12[0];
  if (!v12[0])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190184F8();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v6 = sub_2195083CC();
    v7 = __swift_mutable_project_boxed_opaque_existential_1(&v13, v14);
    MEMORY[0x28223BE20](v7);
    v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = sub_219018A94(*v9, v3, v4, v5, v6);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v13);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v11;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219013EA0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219018634();
  result = sub_219BE1E24();
  if (result)
  {
    *(v2 + OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_selectionProvider + 8) = sub_21879D2B0(&unk_27CC151D0, sub_219018634);
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219013F68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v20)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    MEMORY[0x28223BE20](v4);
    v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for BaseStyler();
    v18[3] = v9;
    v10 = sub_21879D2B0(&qword_280EDFED0, type metadata accessor for BaseStyler);
    v18[4] = v10;
    v18[0] = v8;
    v11 = type metadata accessor for SportsManagementStyler();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
    MEMORY[0x28223BE20](v13);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[5] = v9;
    v12[6] = v10;
    v12[2] = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    a2[3] = v11;
    a2[4] = &off_282A99040;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190141C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA8020);
  result = sub_219BE1E34();
  if (v23)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    MEMORY[0x28223BE20](v7);
    v9 = (&v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for SportsOnboardingFlowManager(0);
    v21[3] = v12;
    v21[4] = &off_282A31BD0;
    v21[0] = v11;
    v13 = type metadata accessor for SportsManagementRouter();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    MEMORY[0x28223BE20](v15);
    v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17);
    v19 = *v17;
    v14[13] = v12;
    v14[14] = &off_282A31BD0;
    v14[10] = v19;
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v24, (v14 + 3));
    v14[8] = v5;
    v14[9] = v6;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a2[3] = v13;
    a2[4] = &off_282A6A4A0;
    *a2 = v14;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_219014498(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_219014518@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC150B0);
  result = sub_219BE1E34();
  v5 = v20;
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC150A0);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC150B8);
  result = sub_219BE1E34();
  if (v17)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v7);
    v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v9);
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v11);
    v13 = &v16[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v14 + 16))(v13);
    v15 = sub_219018DF0(v5, v6, *v9, *v13);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    *a2 = v15;
    a2[1] = &off_282A89C08;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2190147C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC150C0);
  result = sub_219BE1E34();
  v5 = v18;
  if (!v18)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219017B78();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsManagementBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  v12 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v16 = v8;
  v17 = sub_21879D2B0(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  *&v15 = v9;
  sub_219BE89E4();
  swift_allocObject();
  v10 = sub_219BE8994();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC99B0);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC9550);
  result = sub_219BE1E34();
  if (v14)
  {
    sub_219018A00();
    v11 = swift_allocObject();
    v11[3] = 0;
    swift_unknownObjectWeakInit();
    v11[6] = v5;
    v11[7] = v12;
    v11[4] = v6;
    v11[5] = v7;
    v11[8] = v10;
    sub_2186CB1F0(&v15, (v11 + 9));
    sub_2186CB1F0(&v13, (v11 + 14));
    *(v5 + 24) = &off_282A79B10;
    result = swift_unknownObjectWeakAssign();
    *a2 = v11;
    a2[1] = &off_282A79B20;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_219014AEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for SportsManagementTracker();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_282A79320;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219014BE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA1BE0);
  result = sub_219BE1E34();
  if (!v54)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE20);
  result = sub_219BE1E34();
  if (!v52)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0);
  result = sub_219BE1E34();
  if (!v50)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (!v47)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA8010);
  result = sub_219BE1E34();
  if (!v46)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v32 = v48;
  v33 = v47;
  v34 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21901899C();
  result = sub_219BE1E24();
  v31 = result;
  if (result)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
    v30[2] = v30;
    MEMORY[0x28223BE20](v5);
    v7 = (v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
    v30[1] = v30;
    MEMORY[0x28223BE20](v9);
    v11 = (v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v7;
    v14 = *v11;
    v15 = type metadata accessor for SportsManagementConfigManager();
    v44[3] = v15;
    v44[4] = &off_282AA00C0;
    v44[0] = v13;
    v16 = type metadata accessor for SportsRecommendationManager();
    v42 = v16;
    v43 = &off_282A790B8;
    v41[0] = v14;
    type metadata accessor for SportsManagementDataManager();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v44, v15);
    MEMORY[0x28223BE20](v18);
    v20 = (v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    MEMORY[0x28223BE20](v22);
    v24 = (v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    v26 = *v20;
    v27 = *v24;
    v39 = v15;
    v40 = &off_282AA00C0;
    v37 = &off_282A790B8;
    *&v38 = v26;
    v36 = v16;
    *&v35 = v27;
    v17[3] = 0;
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(&v38, (v17 + 4));
    sub_2186CB1F0(&v51, (v17 + 9));
    sub_2186CB1F0(&v49, (v17 + 14));
    v28 = v32;
    v17[19] = v33;
    v17[20] = v28;
    sub_2186CB1F0(&v35, (v17 + 21));
    v17[26] = v31;
    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v44);
    __swift_destroy_boxed_opaque_existential_1(v45);
    result = __swift_destroy_boxed_opaque_existential_1(v53);
    v29 = v34;
    *v34 = v17;
    v29[1] = &off_282A63E70;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_219015184(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  if (v6)
  {
    ObjectType = swift_getObjectType();
    v5 = swift_unknownObjectRetain();
    sub_219AE093C(v5, v6, ObjectType, v2);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21901526C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC150C8);
  result = sub_219BE1E34();
  if (!v25)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0);
  result = sub_219BE1E34();
  v3 = v22;
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  v5 = v20;
  if (v20)
  {
    v6 = v21;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    MEMORY[0x28223BE20](v7);
    v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for SportsManagementSectionFactory();
    v19[3] = v12;
    v19[4] = &off_282A40BE0;
    v19[0] = v11;
    type metadata accessor for SportsManagementBlueprintModifierFactory();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v12);
    MEMORY[0x28223BE20](v14);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v16;
    v13[5] = v12;
    v13[6] = &off_282A40BE0;
    v13[2] = v18;
    v13[7] = v3;
    v13[8] = v4;
    v13[9] = v5;
    v13[10] = v6;
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219015544@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20);
  result = sub_219BE1E34();
  if (v5)
  {
    v4 = type metadata accessor for SportsManagementSectionFactory();
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    a2[3] = v4;
    a2[4] = &off_282A40BE0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190155F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987380();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219017C64();
    result = sub_219BE1E24();
    if (result)
    {
      sub_219017B78();
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2190156D0(uint64_t a1, void *a2)
{
  sub_2190187C4();
  swift_allocObject();
  sub_219BE96E4();
  sub_2190188B0();
  swift_allocObject();
  sub_21879D2B0(&qword_27CC151F0, sub_2190187C4);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21901840C();
  result = sub_219BE1E24();
  if (result)
  {
    swift_allocObject();
    sub_21879D2B0(&unk_27CC151F8, sub_21901840C);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21901584C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190180A8();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsManagementBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21901840C();
    swift_allocObject();
    return sub_219BE9984();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219015990(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219017DA0();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_219017C64();
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219015ABC(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_219015B00(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9A3C0);
  result = sub_219BE1E34();
  if (v34)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280E9A130);
    result = sub_219BE1E34();
    if (v32)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      v26[2] = v26;
      MEMORY[0x28223BE20](v3);
      v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v6 + 16))(v5);
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v26[1] = v26;
      MEMORY[0x28223BE20](v7);
      v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9);
      v11 = *v5;
      v12 = *v9;
      v13 = type metadata accessor for SportsTagLayoutAttributesFactory();
      v30[3] = v13;
      v30[4] = &off_282A9D098;
      v30[0] = v11;
      v14 = type metadata accessor for TitleViewLayoutAttributesFactory();
      v28 = v14;
      v29 = &off_282A72438;
      v27[0] = v12;
      type metadata accessor for SportsManagementBlueprintLayoutBuilder();
      v15 = swift_allocObject();
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v30, v13);
      MEMORY[0x28223BE20](v16);
      v18 = (v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18);
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      MEMORY[0x28223BE20](v20);
      v22 = (v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v23 + 16))(v22);
      v24 = *v18;
      v25 = *v22;
      v15[5] = v13;
      v15[6] = &off_282A9D098;
      v15[2] = v24;
      v15[10] = v14;
      v15[11] = &off_282A72438;
      v15[7] = v25;
      __swift_destroy_boxed_opaque_existential_1(v27);
      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v33);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219015F0C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987380();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219017DA0();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219018720(0, &qword_27CC15180, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21879D2B0(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_2190184F8();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_219016228()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6ED30]);

  return [v0 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
}

uint64_t sub_219016274(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E828);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219017F1C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219018194();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219018320();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219017DA0();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2190163E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219017DA0();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219016498()
{
  v0 = sub_219BE80A4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0]);
  return sub_219BE9574();
}

uint64_t sub_219016568(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987380();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190180A8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsManagementBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (v5)
  {
    *&v8[0] = v3;
    sub_219017F1C();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9374();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2190166CC(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E828);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2190167DC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80);
  result = sub_219BE1DF4();
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    sub_219BEA274();
    sub_219BE9384();

    __swift_destroy_boxed_opaque_existential_1(v4);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for SportsManagementViewController();
    result = sub_219BE1E24();
    if (result)
    {
      return sub_219BE9394();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2190168F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987380();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190180A8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsManagementBlueprintViewHeaderProvider();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219018720(0, &qword_27CC15180, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_21879D2B0(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_219018194();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8FF4();
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_219016B9C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9004();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219018634();
  if (sub_219BE1E24())
  {
    sub_21879D2B0(&unk_27CC151D0, sub_219018634);
  }

  sub_219BE9014();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2190184F8();
  sub_219BE1E24();
  sub_219BE8FE4();
  v3 = sub_219BE8FD4();
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementViewController();
  v5 = sub_219BE1E24();
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v4 addDelegate_];
}

uint64_t sub_219016D50(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987380();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219018320();
    return sub_219BE9804();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219016DC8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementViewController();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE97F4();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_219018634();
    if (sub_219BE1E24())
    {
      sub_21879D2B0(&unk_27CC151D0, sub_219018634);
    }

    return sub_219BE97E4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219016EBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ED02C0);
  result = sub_219BE1E34();
  v3 = v20;
  if (v20)
  {
    v4 = v21;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EC9998);
    result = sub_219BE1E34();
    if (v19)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      MEMORY[0x28223BE20](v5);
      v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for SportsTagRenderer();
      v17[3] = v10;
      v17[4] = &off_282A4A4D8;
      v17[0] = v9;
      type metadata accessor for SportsManagementBlueprintViewCellProvider();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v10);
      MEMORY[0x28223BE20](v12);
      v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14);
      v16 = *v14;
      v11[9] = v10;
      v11[10] = &off_282A4A4D8;
      v11[6] = v16;
      v11[3] = 0;
      swift_unknownObjectWeakInit();
      v11[4] = v3;
      v11[5] = v4;
      __swift_destroy_boxed_opaque_existential_1(v17);
      __swift_destroy_boxed_opaque_existential_1(v18);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219017140(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A52E30;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2190171D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC9540);
  result = sub_219BE1E34();
  if (v16)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    MEMORY[0x28223BE20](v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for TitleViewRenderer();
    v14[3] = v7;
    v14[4] = &off_282A6AF80;
    v14[0] = v6;
    type metadata accessor for SportsManagementBlueprintViewHeaderProvider();
    v8 = swift_allocObject();
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v7);
    MEMORY[0x28223BE20](v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[7] = v7;
    v8[8] = &off_282A6AF80;
    v8[3] = 0;
    v8[4] = v13;
    swift_unknownObjectWeakInit();
    __swift_destroy_boxed_opaque_existential_1(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2190173F0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementViewController();
  v3 = sub_219BE1E24();
  if (v3)
  {
    *(v2 + 24) = &off_282A52E20;
    v4 = v3;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219017484(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_219018720(0, &unk_27CC151C0, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987380();
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_219018720(0, &qword_27CC15180, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219017710(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219018634();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_21879D2B0(&qword_27CC151B8, sub_219018634);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21901784C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219017DA0();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218987380();
    result = sub_219BE1E24();
    if (result)
    {
      sub_219018634();
      swift_allocObject();
      return sub_219BE9AB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219017960(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219017DA0();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219017A1C(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2190184F8();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = sub_21879D2B0(a3, sub_2190184F8);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_219017AD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190184F8();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_21879D2B0(&qword_27CC151A0, sub_2190184F8);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219017B78()
{
  if (!qword_27CC150D0)
  {
    sub_218987380();
    sub_219017C64();
    sub_21879D2B0(&qword_27CC15100, sub_218987380);
    sub_21879D2B0(&qword_27CC15158, sub_219017C64);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC150D0);
    }
  }
}

void sub_219017C64()
{
  if (!qword_27CC150D8)
  {
    type metadata accessor for SportsManagementSectionDescriptor();
    type metadata accessor for SportsManagementModel();
    sub_219017DA0();
    sub_21879D2B0(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    sub_21879D2B0(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    sub_21879D2B0(&qword_27CC15150, sub_219017DA0);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC150D8);
    }
  }
}

void sub_219017DA0()
{
  if (!qword_27CC150E0)
  {
    sub_2186C6148(255, &qword_280E8E828);
    sub_219017F1C();
    sub_219018194();
    sub_219018320();
    type metadata accessor for SportsManagementViewController();
    sub_21879D2B0(&qword_27CC15138, sub_219017F1C);
    sub_21879D2B0(&qword_27CC15140, sub_219018194);
    sub_21879D2B0(&qword_27CC15148, sub_219018320);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC150E0);
    }
  }
}

void sub_219017F1C()
{
  if (!qword_27CC150F0)
  {
    sub_218987380();
    sub_2190180A8();
    type metadata accessor for SportsManagementBlueprintViewCellProvider();
    type metadata accessor for SportsManagementViewController();
    sub_21879D2B0(&qword_27CC15100, sub_218987380);
    sub_21879D2B0(&qword_27CC15108, sub_2190180A8);
    sub_21879D2B0(&qword_27CC15110, type metadata accessor for SportsManagementBlueprintViewCellProvider);
    sub_21879D2B0(&qword_27CC15118, type metadata accessor for SportsManagementViewController);
    v0 = sub_219BE93A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC150F0);
    }
  }
}

void sub_2190180A8()
{
  if (!qword_27CC150F8)
  {
    type metadata accessor for SportsManagementLayoutSectionDescriptor();
    type metadata accessor for SportsManagementLayoutModel();
    sub_21879D2B0(&qword_27CC0AFA0, type metadata accessor for SportsManagementLayoutSectionDescriptor);
    sub_21879D2B0(&qword_27CC0AFA8, type metadata accessor for SportsManagementLayoutModel);
    v0 = sub_219BE8564();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC150F8);
    }
  }
}

void sub_219018194()
{
  if (!qword_27CC15120)
  {
    sub_218987380();
    sub_2190180A8();
    type metadata accessor for SportsManagementBlueprintViewHeaderProvider();
    type metadata accessor for SportsManagementViewController();
    sub_21879D2B0(&qword_27CC15100, sub_218987380);
    sub_21879D2B0(&qword_27CC15108, sub_2190180A8);
    sub_21879D2B0(&qword_27CC15128, type metadata accessor for SportsManagementBlueprintViewHeaderProvider);
    sub_21879D2B0(&qword_27CC15118, type metadata accessor for SportsManagementViewController);
    v0 = sub_219BE9024();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15120);
    }
  }
}

void sub_219018320()
{
  if (!qword_27CC15130)
  {
    sub_218987380();
    type metadata accessor for SportsManagementViewController();
    sub_21879D2B0(&qword_27CC15100, sub_218987380);
    sub_21879D2B0(&qword_27CC15118, type metadata accessor for SportsManagementViewController);
    v0 = sub_219BE9814();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15130);
    }
  }
}

void sub_21901840C()
{
  if (!qword_27CC15160)
  {
    sub_2190180A8();
    type metadata accessor for SportsManagementBlueprintLayoutBuilder();
    sub_21879D2B0(&qword_27CC15108, sub_2190180A8);
    sub_21879D2B0(&qword_27CC15168, type metadata accessor for SportsManagementBlueprintLayoutBuilder);
    v0 = sub_219BE9994();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15160);
    }
  }
}

void sub_2190184F8()
{
  if (!qword_27CC15170)
  {
    sub_218987380();
    sub_219017DA0();
    type metadata accessor for SportsManagementViewController();
    sub_21879D2B0(&qword_27CC15100, sub_218987380);
    sub_21879D2B0(&qword_27CC15150, sub_219017DA0);
    sub_21879D2B0(&qword_27CC15118, type metadata accessor for SportsManagementViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15170);
    }
  }
}

void sub_219018634()
{
  if (!qword_27CC15188)
  {
    sub_219017DA0();
    sub_218987380();
    sub_21879D2B0(&qword_27CC15150, sub_219017DA0);
    sub_21879D2B0(&unk_27CC15190, sub_218987380);
    v0 = sub_219BE9AD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15188);
    }
  }
}

void sub_219018720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_218987380();
    v7 = v6;
    v8 = sub_21879D2B0(&qword_27CC15100, sub_218987380);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2190187C4()
{
  if (!qword_27CC151E0)
  {
    type metadata accessor for SportsManagementSectionDescriptor();
    type metadata accessor for SportsManagementModel();
    sub_21879D2B0(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    sub_21879D2B0(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    v0 = sub_219BE96F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC151E0);
    }
  }
}

void sub_2190188B0()
{
  if (!qword_27CC151E8)
  {
    type metadata accessor for SportsManagementSectionDescriptor();
    type metadata accessor for SportsManagementModel();
    sub_21879D2B0(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    sub_21879D2B0(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    v0 = sub_219BE8FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC151E8);
    }
  }
}

unint64_t sub_21901899C()
{
  result = qword_280E8DD80;
  if (!qword_280E8DD80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8DD80);
  }

  return result;
}

void sub_219018A00()
{
  if (!qword_27CC15208)
  {
    type metadata accessor for SportsManagementBlueprintModifierFactory();
    sub_21879D2B0(&qword_27CC15210, type metadata accessor for SportsManagementBlueprintModifierFactory);
    v0 = type metadata accessor for SportsManagementInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15208);
    }
  }
}

char *sub_219018A94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for SportsManagementStyler();
  v29[3] = v10;
  v29[4] = &off_282A99040;
  v29[0] = a1;
  v11 = type metadata accessor for SportsManagementViewController();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v29, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v28[3] = v10;
  v28[4] = &off_282A99040;
  v28[0] = v17;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_selectionProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_overscrollView;
  *&v12[v18] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_218718690(v28, &v12[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_styler]);
  v19 = &v12[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_eventHandler];
  *v19 = a2;
  *(v19 + 1) = a3;
  *&v12[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_blueprintViewController] = a4;
  *&v12[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_searchController] = a5;
  v27.receiver = v12;
  v27.super_class = v11;
  swift_unknownObjectRetain();
  v20 = a4;
  v21 = a5;
  v22 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
  *(*&v22[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_eventHandler] + 24) = &off_282A52E38;
  swift_unknownObjectWeakAssign();
  v23 = *&v22[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_blueprintViewController];
  v24 = v22;
  v25 = v23;
  sub_219BE8744();

  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v24;
}

void *sub_219018CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for SportsManagementRouter();
  v15[4] = &off_282A6A4A0;
  v15[0] = a3;
  v14[3] = type metadata accessor for SportsManagementTracker();
  v14[4] = &off_282A79320;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A89BD8, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_219018DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v24 = type metadata accessor for SportsManagementRouter();
  v25 = &off_282A6A4A0;
  v23[0] = a3;
  v21 = v8;
  v22 = &off_282A79320;
  v20[0] = a4;
  type metadata accessor for SportsManagementEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v10);
  v12 = (v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v14);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_219018CF8(a1, a2, *v12, *v16, v9);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t sub_219018FFC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_searchContentType);
  if (v1 <= 1)
  {
    if (!v1 || v1 == 1)
    {
      goto LABEL_11;
    }
  }

  else if (v1 == 2 || v1 == 4 || v1 == 3)
  {
LABEL_11:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_219BDB5E4();

    return v4;
  }

  result = sub_219BF7974();
  __break(1u);
  return result;
}

void sub_219019490()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v1 = sub_219BF65B4();
  sub_219018FFC();
  v2 = sub_219BF53D4();

  [v1 setTitle_];

  v3 = *&v0[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_blueprintViewController];
  [v0 addChildViewController_];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v3 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  [v5 addSubview_];

  [v3 didMoveToParentViewController_];
  v8 = [v3 view];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v0 view];
  if (v10)
  {
    v11 = v10;
    [v10 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [v9 setFrame_];
    v20 = [v0 traitCollection];
    sub_21901AD94();

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_2190196B0()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_blueprintViewController];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame_];
  v13 = [v0 traitCollection];
  v14 = [v13 userInterfaceIdiom];

  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v15 = result;
  if (v14)
  {
    v16 = 20.0;
  }

  else
  {
    v16 = 18.0;
  }

  [result layoutMargins];
  v18 = v17;

  return [v1 setAdditionalSafeAreaInsets_];
}

uint64_t sub_219019880(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_219BE7C14();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  swift_getObjectType();
  sub_219BE7544();
  sub_219BE5CC4();
  v11[1] = sub_219BE5CA4();
  *v8 = sub_219018FFC();
  v8[1] = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D6DCB0], v5);
  sub_219BE7C24();
  sub_21901A9F8(&qword_280EE4E50, MEMORY[0x277D6DCC8]);
  sub_219BE7514();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_219019BD4()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219019DAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_eventHandler);
  sub_21901AC44(0, &qword_27CC13A70, MEMORY[0x277D6EC60]);
  sub_21901A9F8(&unk_27CC13A78, type metadata accessor for SearchMoreModel);
  v6 = sub_219BEB304();
  __swift_project_boxed_opaque_existential_1(v5 + 13, v5[16]);
  sub_218F3D394();
  v7 = v5[5];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 56))(a2, 0, v6, ObjectType, v7);
  if (*(v2 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_refreshRecentSearch) == 1)
  {
    *(v2 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_refreshRecentSearch) = 0;
    v10 = v2 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_searchRequestData;
    v12 = *(v2 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_searchRequestData);
    v11 = *(v3 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_searchRequestData + 8);
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v14 = *(v10 + 24);
      v15 = v5[7];
      v16 = swift_getObjectType();
      v17 = sub_219BF5494();
      v19 = v18;
      v20 = *(v15 + 16);

      v20(v17, v19, v14, v16, v15);
    }
  }

  return result;
}

void sub_219019F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a3, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v8, v5);
LABEL_3:
    v10 = *(*(v3 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(ObjectType, v10);
    return;
  }

  if (v9 == *MEMORY[0x277D6E928])
  {
    v12 = *(*(v3 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_eventHandler) + 40);
    v13 = swift_getObjectType();
    (*(v12 + 32))(v13, v12);
  }

  else
  {
    if (v9 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v9 != *MEMORY[0x277D6E978])
    {
      if (v9 == *MEMORY[0x277D6E930])
      {
        goto LABEL_3;
      }

      if (v9 != *MEMORY[0x277D6E958])
      {
        if (v9 == *MEMORY[0x277D6E970])
        {
          sub_219BE8664();
          v14 = sub_219BE7BC4();

          v15 = [v14 collectionViewLayout];

          [v15 invalidateLayout];
          sub_219BE8664();
          v16 = sub_219BE7BC4();

          [v16 reloadData];
        }

        else
        {
          (*(v6 + 8))(v8, v5);
        }
      }
    }
  }
}

uint64_t sub_21901A238(uint64_t a1, char a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v12 = sub_219BF01B4();
    v13 = __swift_project_value_buffer(v12, qword_280F61940);
    v11[3] = v12;
    v11[4] = sub_21901A9F8(&qword_280E91000, MEMORY[0x277D32BC8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v13, v12);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v17 = sub_219BF54E4();
    v19 = v18;

    v11[5] = v17;
    v11[6] = v19;
    (*(v8 + 104))(v11, *MEMORY[0x277D6EC80], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D6ECB0], v3);
    sub_219BE6BD4();

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_21901A590()
{
  sub_218985EAC();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F834();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v2 + 32))(v4, v7, v1);
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_219BE5F84();
      v10 = sub_219BF4FC4();
      swift_unknownObjectRelease();

      (*(v2 + 8))(v4, v1);
      return v10;
    }

    sub_2186EB308();
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    sub_218F40F48();
LABEL_8:
    (*(*(v12 - 8) + 8))(v7, v12);
    return 0;
  }

  sub_218F41028();
  sub_21901AD38(&v7[*(v9 + 48)]);
  return 0;
}

uint64_t sub_21901A8B8(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

uint64_t sub_21901A9F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21901AA40(uint64_t a1)
{
  sub_21901AC44(0, &qword_27CC13A70, MEMORY[0x277D6EC60]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_eventHandler);
  sub_219BE86A4();
  v13[0] = v13[1];
  sub_2189877E8();
  sub_21901A9F8(&qword_27CC0B878, sub_2189877E8);
  sub_219BE7B94();

  sub_21901A9F8(&unk_27CC13A78, type metadata accessor for SearchMoreModel);
  v9 = sub_219BEB304();
  (*(v5 + 8))(v7, v4);
  __swift_project_boxed_opaque_existential_1(v8 + 13, v8[16]);
  sub_218F3D394();
  v10 = v8[5];
  ObjectType = swift_getObjectType();
  return (*(v10 + 56))(a1, 1, v9, ObjectType, v10);
}

void sub_21901AC44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchMoreSectionDescriptor();
    v8[1] = type metadata accessor for SearchMoreModel(255);
    v8[2] = sub_21901A9F8(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
    v8[3] = sub_21901A9F8(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21901AD38(uint64_t a1)
{
  v2 = type metadata accessor for SearchMoreFeedGapLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21901AD94()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_styler], v12);
  v3 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = *(*__swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    [v5 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v12);
    v7 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    sub_219BE8664();
    v8 = sub_219BE7BC4();

    [v8 setBackgroundColor_];
    [v8 setAlwaysBounceVertical_];

    v9 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v10 = [v1 navigationItem];
    v11 = *(*__swift_project_boxed_opaque_existential_1((*v9 + 16), *(*v9 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    sub_219BEDA04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21901AF54(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v6 = sub_219BF0BD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = [objc_msgSend(a1 backingTag)];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_2186DC258(0, &qword_280EE6AE0, sub_2186DC224, MEMORY[0x277D6CF30]);
    (*(v7 + 16))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v6);
    v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 2) = v3;
    *(v11 + 3) = v9;
    *(v11 + 4) = a2;
    (*(v7 + 32))(&v11[v10], &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

    return sub_219BE2F54();
  }

  else
  {
    if (qword_280EE5F50 != -1)
    {
      swift_once();
    }

    v13 = sub_219BE5434();
    __swift_project_value_buffer(v13, qword_280F62598);
    v14 = sub_219BF61F4();
    v15 = a1;
    v16 = sub_219BE5414();

    if (os_log_type_enabled(v16, v14))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      v19 = [objc_msgSend(v15 &selRef_configData + 3)];
      swift_unknownObjectRelease();
      v20 = sub_219BF5414();
      v22 = v21;

      v23 = sub_2186D1058(v20, v22, &v25);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_2186C1000, v16, v14, "Failed to retrieve backing tag %s as Puzzle Type.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x21CECF960](v18, -1, -1);
      MEMORY[0x21CECF960](v17, -1, -1);
    }

    v25 = MEMORY[0x277D84F90];
    sub_2186DC258(0, &qword_280EE6AE0, sub_2186DC224, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_21901B2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_218D42644;

  return sub_21901B49C(a3);
}

uint64_t sub_21901B3A4(uint64_t a1)
{
  sub_219BF0BD4();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_21901B2F4(a1, v4, v5);
}

uint64_t sub_21901B49C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_21901B4BC, 0, 0);
}

uint64_t sub_21901B4BC()
{
  v18 = v0;
  if (qword_280EE5F50 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_280F62598);
  swift_unknownObjectRetain();
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v7 = [v4 identifier];
    v8 = sub_219BF5414();
    v10 = v9;

    v11 = sub_2186D1058(v8, v10, &v17);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_2186C1000, v2, v3, "TagFeedPoolService: Forcing stats recalculation for puzzle type %s...", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  v12 = v0[3];
  v14 = v12[24];
  v13 = v12[25];
  __swift_project_boxed_opaque_existential_1(v12 + 21, v14);
  v15 = swift_task_alloc();
  v0[4] = v15;
  *v15 = v0;
  v15[1] = sub_21901B6D4;

  return MEMORY[0x282192A48](v14, v13);
}

uint64_t sub_21901B6D4()
{

  return MEMORY[0x2822009F8](sub_21901B7D0, 0, 0);
}

uint64_t sub_21901B7D0()
{
  v1 = v0[3];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_21901B890;
  v5 = v0[2];

  return MEMORY[0x282192A40](v5, v2, v3);
}

uint64_t sub_21901B890(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_21901BA38(uint64_t a1, void *a2)
{
  sub_21901BAEC();
  v3 = sub_219BF5904();
  [a2 updateSections_];
}

uint64_t sub_21901BAA4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_21901BAEC()
{
  result = qword_27CC0DF58;
  if (!qword_27CC0DF58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CC0DF58);
  }

  return result;
}

uint64_t sub_21901BB38(__int128 *a1, __int128 *a2, __int128 *a3)
{
  sub_21901CD98(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v7 = *(sub_219BE2644() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  v10 = (v9 + v8);
  *v10 = 0x6E656D6563616C70;
  v10[1] = 0xE900000000000074;
  (*(v7 + 104))();
  sub_219897824(MEMORY[0x277D84F90]);
  v11 = sub_219BE2684();

  *(v3 + 16) = v11;
  sub_2186CB1F0(a1, v3 + 24);
  sub_2186CB1F0(a2, v3 + 64);
  sub_2186CB1F0(a3, v3 + 104);
  return v3;
}

uint64_t sub_21901BCD4()
{
  v0 = sub_219BE34A4();
  v110 = *(v0 - 8);
  v111 = v0;
  MEMORY[0x28223BE20](v0);
  v109 = &v102 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x277D83D88];
  sub_21901CD98(0, &qword_27CC15290, MEMORY[0x277D31910], MEMORY[0x277D83D88]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v106 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v113 = &v102 - v7;
  MEMORY[0x28223BE20](v6);
  v116 = &v102 - v8;
  v9 = sub_219BE3C14();
  v125 = *(v9 - 8);
  v126 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v103 = (&v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v104 = &v102 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v105 = (&v102 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v108 = &v102 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v112 = (&v102 - v19);
  MEMORY[0x28223BE20](v18);
  v115 = &v102 - v20;
  v21 = sub_219BE36A4();
  v22 = *(v21 - 8);
  v118 = v21;
  v119 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v107 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v114 = &v102 - v26;
  MEMORY[0x28223BE20](v25);
  v117 = &v102 - v27;
  v28 = sub_219BE37A4();
  v121 = *(v28 - 8);
  v122 = v28;
  MEMORY[0x28223BE20](v28);
  v120 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21901CD98(0, &unk_280EE6660, MEMORY[0x277D31550], v2);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v102 - v31;
  v33 = sub_219BE3514();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v124 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BE22B4();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BE22F4();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v102 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NFInternalBuild();
  if (result)
  {
    sub_21901CD98(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
    sub_219BE2594();
    sub_219BE22D4();
    (*(v41 + 8))(v43, v40);
    sub_219BE22C4();
    v46 = v45;
    (*(v37 + 8))(v39, v36);
    if (!v46)
    {
      return 0;
    }

    sub_219BE34E4();
    v47 = v34;
    v48 = v33;
    if ((*(v34 + 48))(v32, 1, v33) == 1)
    {
      sub_21901CE44(v32, &unk_280EE6660, MEMORY[0x277D31550]);
      return 0;
    }

    v49 = v124;
    (*(v34 + 32))(v124, v32, v48);
    sub_21901CD98(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_219C09BA0;
    sub_21901CDFC(&qword_280EE6670, 255, MEMORY[0x277D31550]);
    v51 = sub_219BF7894();
    v53 = v52;
    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 64) = sub_2186FC3BC();
    *(v50 + 32) = v51;
    *(v50 + 40) = v53;
    sub_2186C6148(0, &qword_280E8D790);
    v54 = sub_219BF6F44();
    sub_219BF6214();
    sub_219BE5314();

    v55 = v120;
    sub_219BE34C4();
    v57 = v121;
    v56 = v122;
    v58 = (*(v121 + 88))(v55, v122);
    if (v58 == *MEMORY[0x277D316A0])
    {
      v59 = v123;
      __swift_project_boxed_opaque_existential_1(v123 + 13, v123[16]);
      v60 = v117;
      sub_219BE3924();
      v61 = v116;
      sub_219BE3694();
      v63 = v125;
      v62 = v126;
      if ((*(v125 + 48))(v61, 1, v126) != 1)
      {
        v64 = v115;
        (*(v63 + 32))(v115, v61, v62);
        v65 = v112;
        (*(v63 + 16))(v112, v64, v62);
        if ((*(v63 + 88))(v65, v62) == *MEMORY[0x277D31908])
        {
          (*(v63 + 96))(v65, v62);
          v66 = *v65;
          v67 = v59[12];
          v121 = v59[11];
          v122 = v67;
          v123 = __swift_project_boxed_opaque_existential_1(v59 + 8, v121);
          sub_21901CEB4(0, &unk_280E8E5A0, &unk_280E8E590);
          v69 = *(v68 + 48);
          v70 = v109;
          *v109 = v66;
          v71 = v49;
          v72 = *MEMORY[0x277D31660];
          v73 = sub_219BE3794();
          (*(*(v73 - 8) + 104))(&v70[v69], v72, v73);
          v74 = v110;
          v75 = v111;
          (*(v110 + 104))(v70, *MEMORY[0x277D31448], v111);
          v76 = v66;
          v77 = v71;
          sub_219BE3A44();

          (*(v74 + 8))(v70, v75);
          (*(v63 + 8))(v115, v62);
          (*(v119 + 8))(v117, v118);
LABEL_19:
          (*(v47 + 8))(v77, v48);
          return 1;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v63 = v125;
      v62 = v126;
      v78 = v123;
      if (v58 == *MEMORY[0x277D316A8])
      {
        __swift_project_boxed_opaque_existential_1(v123 + 13, v123[16]);
        v60 = v114;
        sub_219BE3924();
        v61 = v113;
        sub_219BE3694();
        if ((*(v63 + 48))(v61, 1, v62) != 1)
        {
          v64 = v108;
          (*(v63 + 32))(v108, v61, v62);
          v65 = v105;
          (*(v63 + 16))(v105, v64, v62);
          if ((*(v63 + 88))(v65, v62) == *MEMORY[0x277D31908])
          {
            (*(v63 + 96))(v65, v62);
            v79 = *v65;
            v80 = v78[7];
            v121 = v78[6];
            v122 = v80;
            v123 = __swift_project_boxed_opaque_existential_1(v78 + 3, v121);
            sub_21901CEB4(0, &unk_280E8E5A0, &unk_280E8E590);
            v82 = *(v81 + 48);
            v83 = v109;
            *v109 = v79;
            v84 = v49;
            v85 = *MEMORY[0x277D31660];
            v86 = sub_219BE3794();
            (*(*(v86 - 8) + 104))(&v83[v82], v85, v86);
            v87 = v110;
            v88 = v111;
            (*(v110 + 104))(v83, *MEMORY[0x277D31448], v111);
            v89 = v79;
            v77 = v84;
            sub_219BE38A4();

            (*(v87 + 8))(v83, v88);
            (*(v63 + 8))(v108, v62);
            (*(v119 + 8))(v114, v118);
            goto LABEL_19;
          }

          goto LABEL_20;
        }
      }

      else
      {
        if (v58 != *MEMORY[0x277D31698])
        {
          (*(v57 + 8))(v55, v56);
          goto LABEL_21;
        }

        __swift_project_boxed_opaque_existential_1(v123 + 13, v123[16]);
        v60 = v107;
        sub_219BE3924();
        v61 = v106;
        sub_219BE3694();
        if ((*(v63 + 48))(v61, 1, v62) != 1)
        {
          v64 = v104;
          (*(v63 + 32))(v104, v61, v62);
          v65 = v103;
          (*(v63 + 16))(v103, v64, v62);
          if ((*(v63 + 88))(v65, v62) == *MEMORY[0x277D31900])
          {
            (*(v63 + 96))(v65, v62);
            v90 = *v65;
            v91 = v78[7];
            v121 = v78[6];
            v122 = v91;
            v123 = __swift_project_boxed_opaque_existential_1(v78 + 3, v121);
            sub_21901CEB4(0, &qword_27CC1DCC0, &qword_27CC15298);
            v93 = *(v92 + 48);
            v94 = v109;
            *v109 = v90;
            v95 = v49;
            v96 = *MEMORY[0x277D31660];
            v97 = sub_219BE3794();
            (*(*(v97 - 8) + 104))(&v94[v93], v96, v97);
            v98 = v110;
            v99 = v111;
            (*(v110 + 104))(v94, *MEMORY[0x277D31440], v111);
            v100 = v90;
            v77 = v95;
            sub_219BE38A4();

            (*(v98 + 8))(v94, v99);
            (*(v63 + 8))(v104, v62);
            (*(v119 + 8))(v107, v118);
            goto LABEL_19;
          }

LABEL_20:
          v101 = *(v63 + 8);
          v101(v64, v62);
          (*(v119 + 8))(v60, v118);
          v101(v65, v62);
          goto LABEL_21;
        }
      }
    }

    (*(v119 + 8))(v60, v118);
    sub_21901CE44(v61, &qword_27CC15290, MEMORY[0x277D31910]);
LABEL_21:
    (*(v47 + 8))(v49, v48);
    return 0;
  }

  return result;
}

uint64_t sub_21901CCB4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  return swift_deallocClassInstance();
}

void sub_21901CD98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21901CDFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21901CE44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21901CD98(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21901CEB4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_2186C6148(255, a3);
    sub_219BE3794();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21901CF30()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_21901D05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_219BE8944();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_219BEF6B4();
  v5[10] = swift_task_alloc();
  v7 = sub_219BEF594();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_219BEF5B4();
  v5[14] = swift_task_alloc();
  sub_219BEF644();
  v5[15] = swift_task_alloc();
  sub_219BEF664();
  v5[16] = swift_task_alloc();
  v8 = sub_219BEF694();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  sub_219021960(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[20] = swift_task_alloc();
  v9 = sub_219BE8164();
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_219021960(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[25] = swift_task_alloc();
  sub_219BEF604();
  v5[26] = swift_task_alloc();
  v10 = sub_219BEF6C4();
  v5[27] = v10;
  v5[28] = *(v10 - 8);
  v5[29] = swift_task_alloc();
  v11 = sub_219BDCAE4();
  v5[30] = v11;
  v5[31] = *(v11 - 8);
  v5[32] = swift_task_alloc();
  v12 = sub_219BDCAB4();
  v5[33] = v12;
  v5[34] = *(v12 - 8);
  v5[35] = swift_task_alloc();
  sub_219021960(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[36] = swift_task_alloc();
  v13 = sub_219BF0634();
  v5[37] = v13;
  v5[38] = *(v13 - 8);
  v5[39] = swift_task_alloc();
  v14 = sub_219BDCAF4();
  v5[40] = v14;
  v5[41] = *(v14 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21901D5D0, 0, 0);
}

uint64_t sub_21901D5D0()
{
  v1 = v0[43];
  v17 = v0[41];
  v18 = v0[42];
  v19 = v0[40];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[34];
  v44 = v0[35];
  v28 = v6;
  v42 = v0[33];
  v43 = v0[32];
  v35 = v0[31];
  v36 = v0[30];
  v31 = v0[29];
  v33 = v0[28];
  v34 = v0[27];
  v22 = v0[25];
  v21 = v0[24];
  v41 = v0[23];
  v45 = v0[21];
  v46 = v0[22];
  v23 = v0[20];
  v24 = v0[18];
  v25 = v0[19];
  v26 = v0[17];
  v27 = v0[12];
  v29 = v0[13];
  v30 = v0[11];
  v39 = v0[7];
  v40 = v0[9];
  v37 = v0[6];
  v38 = v0[8];
  v7 = v0[4];
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  (*(v3 + 104))(v2, *MEMORY[0x277D32ED0], v4);
  v8 = sub_219BF0BD4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  (*(v6 + 104))(v44, *MEMORY[0x277D6D178], v42);
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  (*(v17 + 16))(v18, v1, v19);
  sub_219BDCAC4();
  sub_219BEF5F4();
  v20 = *(v46 + 16);
  v20(v21, v7, v45);
  sub_219BEF614();
  v9 = sub_219BEF624();
  (*(*(v9 - 8) + 56))(v22, 0, 1, v9);
  v10 = sub_219BEF684();
  (*(*(v10 - 8) + 56))(v23, 1, 1, v10);
  (*(v24 + 104))(v25, *MEMORY[0x277D326B0], v26);
  sub_219BEF654();
  sub_219BEF5F4();
  (*(v27 + 104))(v29, *MEMORY[0x277D32680], v30);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  v11 = sub_219BEE0E4();
  (*(v33 + 8))(v31, v34);
  (*(v35 + 8))(v43, v36);
  (*(v28 + 8))(v44, v42);
  sub_218864D54(v5, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v3 + 8))(v2, v4);
  v20(v41, v7, v45);
  (*(v38 + 104))(v40, *MEMORY[0x277D6E080], v39);
  v12 = swift_task_alloc();
  v12[2] = v37;
  v12[3] = v11;
  v12[4] = v7;
  sub_2189493AC(sub_219021724, v12);

  v13 = v0[43];
  v14 = v0[41];
  v32 = v0[40];
  type metadata accessor for MagazineFeedLayoutModel();
  sub_2187EF004();
  sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel);
  sub_219BE6564();
  sub_219BEE0C4();

  (*(v14 + 8))(v13, v32);

  v15 = v0[1];

  return v15();
}

uint64_t sub_21901DE84@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v284 = a5;
  v272 = a4;
  v289 = a3;
  v285 = a6;
  v286 = a2;
  v7 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v7 - 8);
  v280 = (&v236 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for InlineCategoriesMagazineFeedGroup();
  MEMORY[0x28223BE20](v9 - 8);
  v268 = (&v236 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v278 = sub_219BDCAE4();
  v277 = *(v278 - 8);
  MEMORY[0x28223BE20](v278);
  v274 = &v236 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_219BE8164();
  v275 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v273 = &v236 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions();
  v13 = MEMORY[0x28223BE20](v271);
  v266 = &v236 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v267 = &v236 - v16;
  MEMORY[0x28223BE20](v15);
  v265 = &v236 - v17;
  v18 = type metadata accessor for MyMagazinesMagazineFeedGroup();
  MEMORY[0x28223BE20](v18 - 8);
  v279 = (&v236 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v256 = type metadata accessor for CuratedMagazineFeedGroup();
  MEMORY[0x28223BE20](v256);
  v258 = &v236 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_219BED8D4();
  v255 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v254 = &v236 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for NewspaperMagazineFeedGroup();
  MEMORY[0x28223BE20](v22 - 8);
  v253 = &v236 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for BestOfBundleMagazineFeedGroup();
  MEMORY[0x28223BE20](v24 - 8);
  v252 = &v236 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TrendingMagazineFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v251 = &v236 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = type metadata accessor for TopicMagazineFeedGroup();
  MEMORY[0x28223BE20](v249);
  v250 = &v236 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for NewIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v247);
  v248 = &v236 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v245);
  v246 = &v236 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FeaturedIssueMagazineFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v244 = &v236 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = type metadata accessor for FeaturedArticleMagazineFeedGroup();
  MEMORY[0x28223BE20](v242);
  v243 = &v236 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = type metadata accessor for MagazineFeedLayoutModel();
  MEMORY[0x28223BE20](v295);
  v293 = &v236 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = sub_219BEF974();
  v303 = *(v292 - 8);
  MEMORY[0x28223BE20](v292);
  v291 = &v236 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3ED68();
  v290 = v36;
  v294 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v36);
  v239 = &v236 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v240 = &v236 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v238 = &v236 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v237 = &v236 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v236 = &v236 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v236 - v47;
  v270 = sub_219BEE074();
  v269 = *(v270 - 8);
  v49 = MEMORY[0x28223BE20](v270);
  v51 = &v236 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v49);
  v241 = &v236 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = &v236 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v236 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v62 = &v236 - v61;
  MEMORY[0x28223BE20](v60);
  v64 = &v236 - v63;
  v283 = sub_219BE9FA4();
  v282 = *(v283 - 8);
  v65 = MEMORY[0x28223BE20](v283);
  v263 = &v236 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x28223BE20](v65);
  v264 = &v236 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v262 = &v236 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v261 = &v236 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v260 = &v236 - v74;
  MEMORY[0x28223BE20](v73);
  v259 = &v236 - v75;
  v76 = type metadata accessor for MagazineFeedSectionDescriptor();
  MEMORY[0x28223BE20](v76);
  v78 = &v236 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951DB0();
  v281 = v79;
  v287 = a1;
  sub_219BE6934();
  v80 = v78;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v123 = v243;
      sub_219021888(v78, v243, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v124 = v288;
      sub_219020924(v289, v123 + *(v242 + 20), v285);
      v87 = v124;
      result = sub_219021828(v123, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      if (v124)
      {
        goto LABEL_35;
      }

      return result;
    case 2u:
      v89 = v244;
      sub_219021888(v78, v244, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v110 = v288;
      sub_219020924(v289, v89, v285);
      v87 = v110;
      if (v110)
      {
        v91 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
        goto LABEL_33;
      }

      v154 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_78;
    case 3u:
      v89 = v246;
      sub_219021888(v78, v246, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v115 = v288;
      sub_219020924(v289, v89 + *(v245 + 20), v285);
      v87 = v115;
      if (v115)
      {
        v91 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
        goto LABEL_33;
      }

      v154 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_78;
    case 4u:

      sub_2190218F0(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      v94 = v268;
      sub_219021888(&v78[*(v93 + 48)], v268, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      v95 = v275;
      v96 = *(v275 + 16);
      v97 = v273;
      v98 = v276;
      v96(v273, v272, v276);
      v99 = v267;
      v96(v267, v97, v98);
      sub_219BEE084();
      v100 = v274;
      sub_219BEE094();
      sub_219BDCAD4();
      (*(v277 + 8))(v100, v278);
      (*(v95 + 8))(v97, v98);
      v286 = sub_218F341E0(v94, v99);
      v299 = v286;
      v300 = v101;
      v280 = v101;
      v301 = v102;
      v302 = 1;
      v103 = v282;
      v104 = v264;
      v105 = v283;
      (*(v282 + 104))(v264, *MEMORY[0x277D6E9B0], v283);
      sub_219021748();
      v296 = 0u;
      v297 = 0u;
      v298 = 0;
      v106 = v241;
      v107 = v288;
      sub_219BEE0A4();
      v87 = v107;
      if (v107)
      {
        sub_218864D54(&v296, &qword_280E91020, sub_2189BD704);
        (*(v103 + 8))(v104, v105);
        sub_219021828(v99, type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions);
        sub_219021828(v268, type metadata accessor for InlineCategoriesMagazineFeedGroup);

        goto LABEL_38;
      }

      v155 = v268;
      sub_218864D54(&v296, &qword_280E91020, sub_2189BD704);
      v156 = sub_219BEE004();
      (*(v269 + 8))(v106, v270);
      v157 = *(v156 + 16);
      if (v157)
      {
        v281 = 0;
        *&v296 = MEMORY[0x277D84F90];
        sub_218C36738(0, v157, 0);
        v158 = v296;
        v159 = *(v303 + 16);
        v160 = (*(v303 + 80) + 32) & ~*(v303 + 80);
        v284 = v156;
        v161 = v156 + v160;
        v288 = *(v303 + 72);
        v289 = v159;
        v303 += 16;
        v286 = v294 + 32;
        v287 = (v303 - 8);
        v162 = v240;
        v163 = v159;
        do
        {
          v164 = v291;
          v165 = v292;
          v163(v291, v161, v292);
          v163(v293, v164, v165);
          sub_2186EC038(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel);
          sub_219BE75D4();
          (*v287)(v164, v165);
          *&v296 = v158;
          v167 = *(v158 + 16);
          v166 = *(v158 + 24);
          if (v167 >= v166 >> 1)
          {
            sub_218C36738(v166 > 1, v167 + 1, 1);
            v158 = v296;
          }

          *(v158 + 16) = v167 + 1;
          (*(v294 + 32))(v158 + ((*(v294 + 80) + 32) & ~*(v294 + 80)) + *(v294 + 72) * v167, v162, v290);
          v161 += v288;
          --v157;
        }

        while (v157);

        v232 = v268;
        v99 = v267;
      }

      else
      {

        v232 = v155;
      }

      sub_2187EF004();
      sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel);
      sub_219BE81A4();
      sub_219021828(v99, type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions);
      v234 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      goto LABEL_98;
    case 5u:
      sub_2186EBC7C();
      v280 = *&v78[*(v126 + 48)];
      sub_219021888(v78, v279, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v127 = v275;
      v128 = *(v275 + 16);
      v129 = v273;
      v130 = v276;
      v128(v273, v272, v276);
      v131 = v265;
      v128(v265, v129, v130);
      sub_219BEE084();
      v132 = v274;
      sub_219BEE094();
      sub_219BDCAD4();
      (*(v277 + 8))(v132, v278);
      (*(v127 + 8))(v129, v130);
      v299 = sub_218F33358(v279, v280, v131);
      v300 = v133;
      v301 = v134;
      v302 = 1;
      v135 = v282;
      v136 = v262;
      v137 = v283;
      (*(v282 + 104))(v262, *MEMORY[0x277D6E9B0], v283);
      sub_219021748();
      v296 = 0u;
      v297 = 0u;
      v298 = 0;
      v138 = v288;
      sub_219BEE0A4();
      v281 = v138;
      if (v138)
      {
        sub_218864D54(&v296, &qword_280E91020, sub_2189BD704);
        (*(v135 + 8))(v136, v137);
        sub_219021828(v131, type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions);
        sub_219021828(v279, type metadata accessor for MyMagazinesMagazineFeedGroup);

        v87 = v281;
        goto LABEL_35;
      }

      v204 = v279;
      sub_218864D54(&v296, &qword_280E91020, sub_2189BD704);
      v205 = sub_219BEE004();
      (*(v269 + 8))(v56, v270);
      v206 = *(v205 + 16);
      if (v206)
      {
        *&v296 = MEMORY[0x277D84F90];
        sub_218C36738(0, v206, 0);
        v207 = v296;
        v208 = *(v303 + 16);
        v209 = (*(v303 + 80) + 32) & ~*(v303 + 80);
        v284 = v205;
        v210 = v205 + v209;
        v288 = *(v303 + 72);
        v289 = v208;
        v303 += 16;
        v286 = v294 + 32;
        v287 = (v303 - 8);
        v211 = v238;
        v212 = v208;
        do
        {
          v213 = v291;
          v214 = v292;
          v212(v291, v210, v292);
          v212(v293, v213, v214);
          sub_2186EC038(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel);
          sub_219BE75D4();
          (*v287)(v213, v214);
          *&v296 = v207;
          v216 = *(v207 + 16);
          v215 = *(v207 + 24);
          if (v216 >= v215 >> 1)
          {
            sub_218C36738(v215 > 1, v216 + 1, 1);
            v207 = v296;
          }

          *(v207 + 16) = v216 + 1;
          (*(v294 + 32))(v207 + ((*(v294 + 80) + 32) & ~*(v294 + 80)) + *(v294 + 72) * v216, v211, v290);
          v210 += v288;
          --v206;
        }

        while (v206);

        v131 = v265;
        v233 = v279;
      }

      else
      {

        v233 = v204;
      }

      sub_2187EF004();
      sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel);
      sub_219BE81A4();
      sub_219021828(v131, type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions);
      return sub_219021828(v233, type metadata accessor for MyMagazinesMagazineFeedGroup);
    case 6u:
      v89 = v248;
      sub_219021888(v78, v248, type metadata accessor for NewIssueMagazineFeedGroup);
      v140 = v288;
      sub_219020924(v289, v89 + *(v247 + 20), v285);
      v87 = v140;
      if (v140)
      {
        v91 = type metadata accessor for NewIssueMagazineFeedGroup;
        goto LABEL_33;
      }

      v154 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_78;
    case 7u:

      sub_2190218F0(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup);
      v82 = *(v116 + 48);
      v300 = 0;
      v301 = 0;
      v299 = 1;
      v302 = 2;
      v117 = v282;
      v118 = v261;
      v119 = v283;
      (*(v282 + 104))(v261, *MEMORY[0x277D6E9B0], v283);
      sub_219021748();
      v296 = 0u;
      v297 = 0u;
      v298 = 0;
      v120 = v288;
      sub_219BEE0A4();
      v87 = v120;
      if (v120)
      {
        sub_218864D54(&v296, &qword_280E91020, sub_2189BD704);
        (*(v117 + 8))(v118, v119);
        v88 = type metadata accessor for PaywallMagazineFeedGroup;
        goto LABEL_22;
      }

      v284 = v78;
      sub_218864D54(&v296, &qword_280E91020, sub_2189BD704);
      v180 = sub_219BEE004();
      (*(v269 + 8))(v59, v270);
      v181 = *(v180 + 16);
      if (v181)
      {
        v283 = v82;
        v281 = 0;
        *&v296 = MEMORY[0x277D84F90];
        sub_218C36738(0, v181, 0);
        v182 = v296;
        v289 = *(v303 + 16);
        v183 = (*(v303 + 80) + 32) & ~*(v303 + 80);
        v282 = v180;
        v184 = (v180 + v183);
        v185 = *(v303 + 72);
        v303 += 16;
        v287 = (v303 - 8);
        v288 = v185;
        v286 = v294 + 32;
        v186 = v237;
        do
        {
          v187 = v291;
          v188 = v292;
          v189 = v289;
          v289(v291, v184, v292);
          v189(v293, v187, v188);
          sub_2186EC038(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel);
          sub_219BE75D4();
          (*v287)(v187, v188);
          *&v296 = v182;
          v191 = *(v182 + 16);
          v190 = *(v182 + 24);
          if (v191 >= v190 >> 1)
          {
            sub_218C36738(v190 > 1, v191 + 1, 1);
            v182 = v296;
          }

          *(v182 + 16) = v191 + 1;
          (*(v294 + 32))(v182 + ((*(v294 + 80) + 32) & ~*(v294 + 80)) + *(v294 + 72) * v191, v186, v290);
          v184 += v288;
          --v181;
        }

        while (v181);

        v82 = v283;
      }

      else
      {
      }

      sub_2187EF004();
      sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel);
      sub_219BE81A4();
      v235 = type metadata accessor for PaywallMagazineFeedGroup;
      goto LABEL_93;
    case 8u:
      sub_219021888(v78, v280, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v142 = v275;
      v143 = *(v275 + 16);
      v144 = v273;
      v145 = v276;
      v143(v273, v272, v276);
      v146 = v266;
      v143(v266, v144, v145);
      sub_219BEE084();
      v147 = v274;
      sub_219BEE094();
      sub_219BDCAD4();
      (*(v277 + 8))(v147, v278);
      (*(v142 + 8))(v144, v145);
      v286 = sub_218F3498C(v280, v146);
      v299 = v286;
      v300 = v148;
      v301 = v149;
      v302 = 1;
      v150 = v282;
      v151 = v263;
      v152 = v283;
      (*(v282 + 104))(v263, *MEMORY[0x277D6E9B0], v283);
      sub_219021748();
      v296 = 0u;
      v297 = 0u;
      v298 = 0;
      v153 = v288;
      sub_219BEE0A4();
      v87 = v153;
      if (v153)
      {
        sub_218864D54(&v296, &qword_280E91020, sub_2189BD704);
        (*(v150 + 8))(v151, v152);
        sub_219021828(v146, type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions);
        sub_219021828(v280, type metadata accessor for RecommendedIssuesMagazineFeedGroup);

LABEL_38:

        goto LABEL_35;
      }

      v219 = v280;
      sub_218864D54(&v296, &qword_280E91020, sub_2189BD704);
      v220 = sub_219BEE004();
      (*(v269 + 8))(v51, v270);
      v221 = *(v220 + 16);
      if (v221)
      {
        v281 = 0;
        *&v296 = MEMORY[0x277D84F90];
        sub_218C36738(0, v221, 0);
        v222 = v296;
        v223 = *(v303 + 16);
        v224 = (*(v303 + 80) + 32) & ~*(v303 + 80);
        v284 = v220;
        v225 = v220 + v224;
        v288 = *(v303 + 72);
        v289 = v223;
        v303 += 16;
        v286 = v294 + 32;
        v287 = (v303 - 8);
        v226 = v239;
        v227 = v223;
        do
        {
          v228 = v291;
          v229 = v292;
          v227(v291, v225, v292);
          v227(v293, v228, v229);
          sub_2186EC038(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel);
          sub_219BE75D4();
          (*v287)(v228, v229);
          *&v296 = v222;
          v231 = *(v222 + 16);
          v230 = *(v222 + 24);
          if (v231 >= v230 >> 1)
          {
            sub_218C36738(v230 > 1, v231 + 1, 1);
            v222 = v296;
          }

          *(v222 + 16) = v231 + 1;
          (*(v294 + 32))(v222 + ((*(v294 + 80) + 32) & ~*(v294 + 80)) + *(v294 + 72) * v231, v226, v290);
          v225 += v288;
          --v221;
        }

        while (v221);

        v232 = v280;
        v146 = v266;
      }

      else
      {

        v232 = v219;
      }

      sub_2187EF004();
      sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel);
      sub_219BE81A4();
      sub_219021828(v146, type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions);
      v234 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
LABEL_98:
      v217 = v234;
      v218 = v232;
      return sub_219021828(v218, v217);
    case 9u:
      v89 = v250;
      sub_219021888(v78, v250, type metadata accessor for TopicMagazineFeedGroup);
      v109 = v288;
      sub_219020924(v289, v89 + *(v249 + 20), v285);
      v87 = v109;
      if (v109)
      {
        v91 = type metadata accessor for TopicMagazineFeedGroup;
        goto LABEL_33;
      }

      v154 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_78;
    case 0xAu:
      v89 = v251;
      sub_219021888(v78, v251, type metadata accessor for TrendingMagazineFeedGroup);
      v141 = v288;
      sub_219020924(v289, v89, v285);
      v87 = v141;
      if (v141)
      {
        v91 = type metadata accessor for TrendingMagazineFeedGroup;
        goto LABEL_33;
      }

      v154 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_78;
    case 0xBu:
      v89 = v252;
      sub_219021888(v78, v252, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v92 = v288;
      sub_219020924(v289, v89, v285);
      v87 = v92;
      if (v92)
      {
        v91 = type metadata accessor for BestOfBundleMagazineFeedGroup;
        goto LABEL_33;
      }

      v154 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_78;
    case 0xCu:
      v89 = v253;
      sub_219021888(v78, v253, type metadata accessor for NewspaperMagazineFeedGroup);
      v108 = v288;
      sub_219020924(v289, v89, v285);
      v87 = v108;
      if (v108)
      {
        v91 = type metadata accessor for NewspaperMagazineFeedGroup;
        goto LABEL_33;
      }

      v154 = type metadata accessor for NewspaperMagazineFeedGroup;
      goto LABEL_78;
    case 0xDu:
      v111 = v255;
      v112 = v254;
      v113 = v257;
      (*(v255 + 32))(v254, v80, v257);
      v139 = v288;
      sub_219020924(v289, v112, v285);
      v87 = v139;
      if (v139)
      {
        goto LABEL_28;
      }

      return (*(v111 + 8))(v112, v113);
    case 0xEu:
      v89 = v258;
      sub_219021888(v78, v258, type metadata accessor for CuratedMagazineFeedGroup);
      v90 = v288;
      sub_219020924(v289, v89 + *(v256 + 20), v285);
      v87 = v90;
      if (v90)
      {
        v91 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_33:
        v121 = v91;
        v122 = v89;
        goto LABEL_34;
      }

      v154 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_78:
      v217 = v154;
      v218 = v89;
      return sub_219021828(v218, v217);
    case 0xFu:
      v300 = 0;
      v301 = 0;
      v299 = 1;
      v302 = 2;
      v111 = v282;
      v112 = v259;
      v113 = v283;
      (*(v282 + 104))(v259, *MEMORY[0x277D6E9B0], v283);
      sub_219021748();
      v296 = 0u;
      v297 = 0u;
      v298 = 0;
      v114 = v288;
      sub_219BEE0A4();
      v87 = v114;
      if (!v114)
      {
        sub_218864D54(&v296, &qword_280E91020, sub_2189BD704);
        v168 = sub_219BEE004();
        (*(v269 + 8))(v64, v270);
        v169 = *(v168 + 16);
        if (v169)
        {
          v281 = 0;
          *&v296 = MEMORY[0x277D84F90];
          sub_218C36738(0, v169, 0);
          v170 = v296;
          v171 = *(v303 + 16);
          v172 = (*(v303 + 80) + 32) & ~*(v303 + 80);
          v284 = v168;
          v173 = (v168 + v172);
          v288 = *(v303 + 72);
          v289 = v171;
          v303 += 16;
          v286 = v294 + 32;
          v287 = (v303 - 8);
          do
          {
            v174 = v291;
            v175 = v292;
            v176 = v48;
            v177 = v289;
            v289(v291, v173, v292);
            v177(v293, v174, v175);
            v48 = v176;
            sub_2186EC038(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel);
            sub_219BE75D4();
            (*v287)(v174, v175);
            *&v296 = v170;
            v179 = *(v170 + 16);
            v178 = *(v170 + 24);
            if (v179 >= v178 >> 1)
            {
              sub_218C36738(v178 > 1, v179 + 1, 1);
              v170 = v296;
            }

            *(v170 + 16) = v179 + 1;
            (*(v294 + 32))(v170 + ((*(v294 + 80) + 32) & ~*(v294 + 80)) + *(v294 + 72) * v179, v176, v290);
            v173 += v288;
            --v169;
          }

          while (v169);
        }

        sub_2187EF004();
        sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel);
        return sub_219BE81A4();
      }

      sub_218864D54(&v296, &qword_280E91020, sub_2189BD704);
LABEL_28:
      result = (*(v111 + 8))(v112, v113);
      goto LABEL_35;
    default:

      sub_2190218F0(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup);
      v82 = *(v81 + 48);
      v300 = 0;
      v301 = 0;
      v299 = 1;
      v302 = 2;
      v83 = v282;
      v84 = v260;
      v85 = v283;
      (*(v282 + 104))(v260, *MEMORY[0x277D6E9B0], v283);
      sub_219021748();
      v296 = 0u;
      v297 = 0u;
      v298 = 0;
      v86 = v288;
      sub_219BEE0A4();
      v87 = v86;
      if (v86)
      {
        sub_218864D54(&v296, &qword_280E91020, sub_2189BD704);
        (*(v83 + 8))(v84, v85);
        v88 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_22:
        v121 = v88;
        v122 = &v78[v82];
LABEL_34:
        result = sub_219021828(v122, v121);
LABEL_35:
        *v284 = v87;
      }

      else
      {
        v284 = v78;
        sub_218864D54(&v296, &qword_280E91020, sub_2189BD704);
        v192 = sub_219BEE004();
        (*(v269 + 8))(v62, v270);
        v193 = *(v192 + 16);
        if (v193)
        {
          v283 = v82;
          v281 = 0;
          *&v296 = MEMORY[0x277D84F90];
          sub_218C36738(0, v193, 0);
          v194 = v296;
          v289 = *(v303 + 16);
          v195 = (*(v303 + 80) + 32) & ~*(v303 + 80);
          v282 = v192;
          v196 = (v192 + v195);
          v197 = *(v303 + 72);
          v303 += 16;
          v287 = (v303 - 8);
          v288 = v197;
          v286 = v294 + 32;
          v198 = v236;
          do
          {
            v199 = v291;
            v200 = v292;
            v201 = v289;
            v289(v291, v196, v292);
            v201(v293, v199, v200);
            sub_2186EC038(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel);
            sub_219BE75D4();
            (*v287)(v199, v200);
            *&v296 = v194;
            v203 = *(v194 + 16);
            v202 = *(v194 + 24);
            if (v203 >= v202 >> 1)
            {
              sub_218C36738(v202 > 1, v203 + 1, 1);
              v194 = v296;
            }

            *(v194 + 16) = v203 + 1;
            (*(v294 + 32))(v194 + ((*(v294 + 80) + 32) & ~*(v294 + 80)) + *(v294 + 72) * v203, v198, v290);
            v196 += v288;
            --v193;
          }

          while (v193);

          v82 = v283;
        }

        else
        {
        }

        sub_2187EF004();
        sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel);
        sub_219BE81A4();
        v235 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_93:
        v217 = v235;
        v218 = v284 + v82;
        return sub_219021828(v218, v217);
      }

      return result;
  }
}