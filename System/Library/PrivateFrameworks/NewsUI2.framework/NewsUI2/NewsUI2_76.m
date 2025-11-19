uint64_t sub_218F544F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *, uint64_t), _BYTE *a5)
{
  v48 = a4;
  v49 = a5;
  v47 = a3;
  v50 = a2;
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F54AFC(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  v14 = v13;
  v53 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B589C8();
  v43 = v17;
  v51 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v55 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v20 = v19;
  v21 = sub_218F54E5C(&unk_280EE36D0, sub_218954408);
  v22 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v22)
  {
    v58 = MEMORY[0x277D84F90];
    v46 = v22;
    sub_218C36268(0, v22 & ~(v22 >> 63), 0);
    v54 = v58;
    v44 = v21;
    v45 = v20;
    result = sub_219BF5DF4();
    if ((v46 & 0x8000000000000000) == 0)
    {
      v40 = v9;
      v56 = v5;
      v24 = 0;
      v25 = (v53 + 16);
      v41 = (v53 + 56);
      v42 = (v53 + 8);
      v37 = v51 + 32;
      v39 = a1;
      v38 = v12;
      while (!__OFADD__(v24, 1))
      {
        v52 = v24 + 1;
        v53 = v24;
        v26 = sub_219BF5EC4();
        v27 = *v25;
        (*v25)(v16);
        v26(v57, 0);
        sub_219BE6934();
        v28 = sub_219BEEA64();
        (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
        v29 = v14;
        v30 = v50;
        v31 = v40;
        sub_218F54C5C(v50, v40, sub_21898BBC4);
        v32 = v56;
        sub_218F4495C(v16, v48, v49, v12, v31, v55);
        v56 = v32;
        if (v32)
        {

          sub_218864CF4(v31, sub_21898BBC4);
          sub_218864CF4(v12, sub_218F54AFC);
          sub_218864CF4(v30, sub_21898BBC4);
          (v27)(v30, v16, v29);
          (*v41)(v30, 0, 1, v29);
          (*v42)(v16, v29);
        }

        sub_218864CF4(v31, sub_21898BBC4);
        sub_218864CF4(v12, sub_218F54AFC);
        sub_218864CF4(v30, sub_21898BBC4);
        (v27)(v30, v16, v29);
        (*v41)(v30, 0, 1, v29);
        (*v42)(v16, v29);
        v33 = v54;
        v58 = v54;
        v35 = *(v54 + 16);
        v34 = *(v54 + 24);
        v14 = v29;
        if (v35 >= v34 >> 1)
        {
          sub_218C36268(v34 > 1, v35 + 1, 1);
          v33 = v58;
        }

        *(v33 + 16) = v35 + 1;
        v36 = (*(v51 + 80) + 32) & ~*(v51 + 80);
        v54 = v33;
        (*(v51 + 32))(v33 + v36 + *(v51 + 72) * v35, v55, v43);
        result = sub_219BF5E94();
        v24 = v53 + 1;
        v12 = v38;
        if (v52 == v46)
        {
          return v54;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_218F54B30()
{
  if (!qword_280E91BF8)
  {
    sub_218D5BF28();
    v0 = sub_219BEE494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91BF8);
    }
  }
}

uint64_t sub_218F54C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_218F54CC4()
{
  result = qword_280EBFF20;
  if (!qword_280EBFF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBFF20);
  }

  return result;
}

unint64_t sub_218F54D18()
{
  result = qword_280EE5878;
  if (!qword_280EE5878)
  {
    sub_218954350();
    sub_218F54CC4();
    sub_218F54E5C(&unk_280EDE870, type metadata accessor for TagFeedModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE5878);
  }

  return result;
}

void sub_218F54DC8()
{
  if (!qword_280E8D540)
  {
    sub_21898BEA4();
    sub_218F54E5C(&qword_280EE7568, sub_21898BEA4);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D540);
    }
  }
}

uint64_t sub_218F54E5C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218F54EA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F54F08@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = type metadata accessor for SportsSyncSetting();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v85[0] = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BDBD34();
  v95 = *(v108 - 8);
  v5 = MEMORY[0x28223BE20](v108);
  v91 = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = v85 - v7;
  sub_218C82694();
  v100 = v8;
  MEMORY[0x28223BE20](v8);
  v99 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_2186DD688(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v106 = v85 - v15;
  sub_2186DD688(0, qword_280ED5000, type metadata accessor for SportsSyncSetting, v10);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v97 = v85 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v107 = v85 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v105 = v85 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v85 - v27;
  MEMORY[0x28223BE20](v26);
  v101 = v85 - v29;
  sub_2186DD688(0, &qword_280E8BBC8, type metadata accessor for SportsSyncSetting, MEMORY[0x277D84560]);
  v30 = *(v3 + 72);
  v87 = v3;
  v31 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_219C0B8C0;
  v33 = v32 + v31;
  sub_218F55BF0(v1, v32 + v31);
  v34 = type metadata accessor for SportsSyncManagerSetting();
  v35 = v1 + *(v34 + 20);
  v96 = v30;
  sub_218F55BF0(v35, v33 + v30);
  sub_218F55BF0(v1 + *(v34 + 24), v33 + 2 * v30);
  if (qword_280EE6038 != -1)
  {
    swift_once();
  }

  v36 = sub_219BE5434();
  v37 = __swift_project_value_buffer(v36, qword_280F62730);

  v38 = sub_219BE5414();
  v39 = sub_219BF6214();

  v40 = os_log_type_enabled(v38, v39);
  v98 = v14;
  v85[2] = v37;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v110[0] = v104;
    *v41 = 136446210;
    v42 = MEMORY[0x21CECC6D0](v32, v2);
    v44 = sub_2186D1058(v42, v43, v110);

    *(v41 + 4) = v44;
    _os_log_impl(&dword_2186C1000, v38, v39, "Sports sync manager determining most recent between %{public}s", v41, 0xCu);
    v45 = v104;
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x21CECF960](v45, -1, -1);
    MEMORY[0x21CECF960](v41, -1, -1);
  }

  v46 = v87;
  v47 = v32;
  v48 = v101;
  v102 = *(v87 + 56);
  v103 = v87 + 56;
  v102(v101, 1, 1, v2);
  v49 = *(v47 + 16);
  if (v49)
  {
    v85[1] = v47;
    v104 = (v46 + 48);
    v93 = (v95 + 56);
    v50 = (v95 + 48);
    v89 = (v95 + 32);
    v92 = (v95 + 8);
    v95 = v2;
    v94 = v19;
    v88 = v50;
    do
    {
      v51 = v28;
      v52 = v105;
      sub_21872AA88(v48, v105, qword_280ED5000, type metadata accessor for SportsSyncSetting);
      v53 = v107;
      sub_218F55BF0(v33, v107);
      v102(v53, 0, 1, v2);
      v54 = v97;
      sub_21872AA88(v52, v97, qword_280ED5000, type metadata accessor for SportsSyncSetting);
      v55 = *v104;
      if ((*v104)(v54, 1, v2) == 1)
      {
        sub_218F55D90(v54, qword_280ED5000, type metadata accessor for SportsSyncSetting);
        (*v93)(v106, 1, 1, v108);
      }

      else
      {
        sub_21872AA88(v54 + *(v2 + 24), v106, &qword_280EE9C40, MEMORY[0x277CC9578]);
        sub_218F55D34(v54);
      }

      v56 = v99;
      sub_21872AA88(v107, v19, qword_280ED5000, type metadata accessor for SportsSyncSetting);
      v28 = v51;
      if (v55(v19, 1, v2) == 1)
      {
        sub_218F55D90(v19, qword_280ED5000, type metadata accessor for SportsSyncSetting);
        v57 = v98;
        (*v93)(v98, 1, 1, v108);
      }

      else
      {
        v58 = &v19[*(v2 + 24)];
        v59 = v19;
        v57 = v98;
        sub_21872AA88(v58, v98, &qword_280EE9C40, MEMORY[0x277CC9578]);
        sub_218F55D34(v59);
      }

      v60 = *(v100 + 48);
      v61 = MEMORY[0x277CC9578];
      sub_21870EBD0(v106, v56, &qword_280EE9C40, MEMORY[0x277CC9578]);
      sub_21870EBD0(v57, v56 + v60, &qword_280EE9C40, v61);
      v62 = *v50;
      if ((*v50)(v56, 1, v108) == 1)
      {
        sub_218F55D90(v105, qword_280ED5000, type metadata accessor for SportsSyncSetting);
        v63 = v62(v56 + v60, 1, v108);
        v19 = v94;
        if (v63 == 1)
        {
          sub_218F55D90(v107, qword_280ED5000, type metadata accessor for SportsSyncSetting);
          v2 = v95;
          v102(v51, 1, 1, v95);
        }

        else
        {
          sub_21870EBD0(v107, v51, qword_280ED5000, type metadata accessor for SportsSyncSetting);
          sub_218F55D90(v56 + v60, &qword_280EE9C40, MEMORY[0x277CC9578]);
          v2 = v95;
        }
      }

      else if (v62(v56 + v60, 1, v108) == 1)
      {
        sub_218F55D90(v107, qword_280ED5000, type metadata accessor for SportsSyncSetting);
        sub_21870EBD0(v105, v51, qword_280ED5000, type metadata accessor for SportsSyncSetting);
        (*v92)(v56, v108);
        v2 = v95;
        v19 = v94;
      }

      else
      {
        v64 = *v89;
        v65 = v108;
        v66 = v90;
        (*v89)(v90, v56, v108);
        v67 = v56 + v60;
        v68 = v91;
        v64(v91, v67, v65);
        sub_218E5B244();
        LOBYTE(v64) = sub_219BF5334();
        v69 = *v92;
        (*v92)(v68, v65);
        v69(v66, v65);
        if (v64)
        {
          sub_218F55D90(v105, qword_280ED5000, type metadata accessor for SportsSyncSetting);
          v70 = v107;
        }

        else
        {
          sub_218F55D90(v107, qword_280ED5000, type metadata accessor for SportsSyncSetting);
          v70 = v105;
        }

        v28 = v51;
        sub_21870EBD0(v70, v51, qword_280ED5000, type metadata accessor for SportsSyncSetting);
        v2 = v95;
        v19 = v94;
        v50 = v88;
      }

      v48 = v101;
      sub_218F55CA0(v28, v101);
      v33 += v96;
      --v49;
    }

    while (v49);

    v71 = v86;
    v46 = v87;
  }

  else
  {

    v71 = v86;
  }

  v72 = sub_219BE5414();
  v73 = sub_219BF6214();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v109 = v75;
    *v74 = 136446210;
    swift_beginAccess();
    v76 = (*(v46 + 48))(v48, 1, v2);
    v77 = 0;
    v78 = 0;
    if (!v76)
    {
      v79 = v85[0];
      sub_218F55BF0(v48, v85[0]);
      v77 = sub_219779EC4();
      v78 = v80;
      sub_218F55D34(v79);
    }

    v110[0] = v77;
    v110[1] = v78;
    sub_2186E3374();
    v81 = sub_219BF5484();
    v83 = sub_2186D1058(v81, v82, &v109);

    *(v74 + 4) = v83;
    _os_log_impl(&dword_2186C1000, v72, v73, "Sports sync manager determined most recent=%{public}s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x21CECF960](v75, -1, -1);
    MEMORY[0x21CECF960](v74, -1, -1);
  }

  swift_beginAccess();
  sub_21872AA88(v48, v71, qword_280ED5000, type metadata accessor for SportsSyncSetting);
  return sub_218F55D90(v48, qword_280ED5000, type metadata accessor for SportsSyncSetting);
}

uint64_t sub_218F55BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsSyncSetting();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SportsSyncManagerSetting()
{
  result = qword_280EC0098;
  if (!qword_280EC0098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218F55CA0(uint64_t a1, uint64_t a2)
{
  sub_2186DD688(0, qword_280ED5000, type metadata accessor for SportsSyncSetting, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F55D34(uint64_t a1)
{
  v2 = type metadata accessor for SportsSyncSetting();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218F55D90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186DD688(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218F55E28()
{
  result = type metadata accessor for SportsSyncSetting();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_218F55E9C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI216RecentSearchView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI216RecentSearchView_imageView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC7NewsUI216RecentSearchView_chevron;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v13 = OBJC_IVAR____TtC7NewsUI216RecentSearchView_separatorView;
  *&v4[v13] = [objc_allocWithZone(sub_219BE6104()) initWithFrame_];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC7NewsUI216RecentSearchView_imageView];
  v16 = v14;
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];
  [v16 addSubview_];

  return v16;
}

void sub_218F56128()
{
  sub_218F561B4(&qword_280ED80C8);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_218F561B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RecentSearchView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218F561F4()
{
  v1 = OBJC_IVAR____TtC7NewsUI216RecentSearchView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI216RecentSearchView_imageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC7NewsUI216RecentSearchView_chevron;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC7NewsUI216RecentSearchView_separatorView;
  *(v0 + v4) = [objc_allocWithZone(sub_219BE6104()) initWithFrame_];
  sub_219BF7514();
  __break(1u);
}

uint64_t sub_218F56318()
{
  v1 = type metadata accessor for ArticleListAudioPlaylistFeedGroup();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CED71C(v0, v6);
  sub_218A6DD44(v6, v4);
  v7 = sub_219010CD0();
  sub_218D10380(v4);
  return v7;
}

uint64_t sub_218F563F4(uint64_t a1)
{
  v2 = sub_218F56984(&qword_27CC168F0);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_218F5645C()
{
  sub_218F56984(&qword_27CC13B38);

  return sub_219BF1174();
}

uint64_t sub_218F564CC()
{
  v1 = type metadata accessor for ArticleListAudioPlaylistFeedGroup();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CED71C(v0, v6);
  sub_218A6DD44(v6, v4);
  v7 = *v4;

  sub_218D10380(v4);
  return v7;
}

uint64_t sub_218F565AC(uint64_t a1)
{
  v2 = sub_218F56984(&qword_27CC13B38);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218F56604()
{
  v1 = type metadata accessor for ArticleListAudioPlaylistFeedGroup();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CED71C(v0, v6);
  sub_218A6DD44(v6, v4);
  v7 = sub_219BED774();
  sub_218D10380(v4);
  return v7;
}

uint64_t sub_218F566F0()
{
  sub_218F56984(&qword_27CC13B40);

  return sub_219BE2324();
}

uint64_t type metadata accessor for AudioPlaylistFeedGroup()
{
  result = qword_27CC13B48;
  if (!qword_27CC13B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_218F568D0()
{
  result = qword_280EBC248;
  if (!qword_280EBC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBC248);
  }

  return result;
}

unint64_t sub_218F5692C()
{
  result = qword_280EBC258;
  if (!qword_280EBC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBC258);
  }

  return result;
}

uint64_t sub_218F56984(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioPlaylistFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218F569C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioPlaylistFeedGroup();

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_2188B83F8);
}

uint64_t sub_218F56A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleListAudioPlaylistFeedGroup();

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_2188B84A4);
}

uint64_t sub_218F56A88()
{
  sub_218E8C844(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C189F0;
  if (qword_27CC08210 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27CC13B70;
  *(swift_allocObject() + 16) = &unk_282A25110;
  sub_219BDC984();
  swift_allocObject();

  *(v0 + 40) = sub_219BDC974();
  swift_allocObject();
  result = sub_219BDC974();
  qword_27CC13B58 = result;
  return result;
}

uint64_t sub_218F56BEC(void *a1)
{
  v2 = sub_219BDC7F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC6A4();
  (*(v3 + 104))(v5, *MEMORY[0x277D6D048], v2);
  sub_218F57E8C(&qword_280EE90F8, MEMORY[0x277D6D060]);
  sub_219BDC924();

  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC2B4();
  LOBYTE(v7[0]) = 1;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC514();
  LOBYTE(v7[0]) = 1;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC644();
  LOBYTE(v7[0]) = 0;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC684();
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC294();
  LOBYTE(v7[0]) = 1;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC2A4();
  LOBYTE(v7[0]) = 1;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC3F4();
  LOBYTE(v7[0]) = 1;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_280EE99C8 != -1)
  {
    swift_once();
  }

  LOBYTE(v7[0]) = 1;
  sub_21879E6C8();
  return sub_219BDC924();
}

uint64_t sub_218F56FD0()
{
  sub_218E8C844(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C189F0;
  if (qword_27CC08210 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27CC13B70;
  v1 = qword_27CC081F8;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27CC13B58;
  sub_219BDC984();
  swift_allocObject();

  result = sub_219BDC974();
  qword_27CC13B60 = result;
  return result;
}

uint64_t sub_218F57108(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC644();
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC684();
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC3F4();
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC464();
  sub_219BDC444();
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC454();
  sub_219BDC924();
}

uint64_t sub_218F57324()
{
  sub_218E8C844(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C146A0;
  if (qword_27CC08210 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27CC13B70;
  sub_219BDC984();
  swift_allocObject();

  result = sub_219BDC974();
  qword_27CC13B68 = result;
  return result;
}

uint64_t sub_218F5741C(void *a1)
{
  v2 = sub_219BDC7F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_280EE9240 != -1)
  {
    swift_once();
  }

  v11 = *MEMORY[0x277D6D048];
  v10 = *(v3 + 104);
  v10(v5);
  sub_218F57E8C(&qword_280EE90F8, MEMORY[0x277D6D060]);
  sub_219BDC924();
  v6 = *(v3 + 8);
  v6(v5, v2);
  v7 = a1[3];
  v9[1] = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_219BDC674();
  (v10)(v5, v11, v2);
  sub_219BDC924();

  v6(v5, v2);
  sub_219BDC584();
  sub_219BDC804();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC584();
  sub_219BDC574();

  v18 = 1;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC584();
  sub_219BDC564();

  v17 = 0;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC584();
  sub_219BDC554();

  v16 = 0;
  sub_219BDC924();

  sub_219BDC544();
  sub_219BDC804();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC544();
  sub_219BDC534();

  v15 = 0;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC544();
  sub_219BDC524();

  v14 = 0;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC514();
  v13 = 1;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC3F4();
  v12 = 0;
  sub_219BDC924();
}

uint64_t sub_218F5790C(void *a1)
{
  v2 = sub_219BE8A04();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2);
  v18 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEF424();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_280EE9468 != -1)
  {
    swift_once();
  }

  v8 = *(v5 + 104);
  v17 = *MEMORY[0x277D325C8];
  v16 = v8;
  v8(v7);
  sub_218F57E8C(&qword_280E915A8, MEMORY[0x277D325D0]);
  sub_219BDC924();
  v9 = *(v5 + 8);
  v9(v7, v4);
  v10 = a1[3];
  v15[1] = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  if (qword_280EE95B0 != -1)
  {
    swift_once();
  }

  v16(v7, v17, v4);
  sub_219BDC924();
  v9(v7, v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC264();
  v12 = v18;
  v11 = v19;
  v13 = v20;
  (*(v19 + 104))(v18, *MEMORY[0x277D6E140], v20);
  sub_218F57E8C(&qword_27CC13B80, MEMORY[0x277D6E148]);
  sub_219BDC924();

  (*(v11 + 8))(v12, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC5E4();
  v24 = 1;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC5D4();
  v23 = 0;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC514();
  v22 = 0;
  sub_219BDC924();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_280EE99F8 != -1)
  {
    swift_once();
  }

  v21 = 0;
  return sub_219BDC924();
}

uint64_t sub_218F57DE8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDC254();
  sub_219BDC924();
}

uint64_t sub_218F57E8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218F57ED4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08818 != -1)
  {
    swift_once();
  }

  sub_219BDC924();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC08830 != -1)
  {
    swift_once();
  }

  sub_218E8C844(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2189DD328();
  sub_219BF5324();
  sub_219BDC924();
}

uint64_t type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs()
{
  result = qword_280EE2D28;
  if (!qword_280EE2D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218F580FC()
{
  sub_2189AE994(319);
  if (v0 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v1 <= 0x3F)
    {
      sub_2186F0704(319, &qword_280E8F220, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218F581CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  sub_2189AE9B4(0);
  v68 = v3;
  v70 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v64 = &v52[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2189AE994(0);
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v65);
  v8 = &v52[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2189AF700(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v67 = &v52[-v13];
  sub_2189AF720(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v60 = &v52[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v69 = &v52[-v17];
  sub_218F58F58(0, &qword_280E8CFE0, MEMORY[0x277D844C8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v52[-v21];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F58EA0();
  v23 = v71;
  sub_219BF7B34();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54 = v12;
  v55 = 0;
  v57 = v20;
  v71 = v8;
  v59 = a1;
  v79 = 0;
  sub_2186DF908(&qword_280E91A28, sub_2189AE994);
  v25 = v69;
  v26 = v62;
  sub_219BF7674();
  v78 = 1;
  sub_2186DF908(&qword_280E91868, sub_2189AE9B4);
  sub_219BF7674();
  v75 = 2;
  sub_219BF7674();
  v27 = v76;
  v53 = v77;
  v73 = 3;
  sub_219BF7674();
  v28 = v74;
  v72 = 4;
  sub_218B824E4();
  v58 = v19;
  v29 = sub_219BF7684();
  v30 = v60;
  sub_2189AF794(v25, v60, sub_2189AF720);
  v31 = v61;
  v32 = *(v61 + 48);
  v33 = v32(v30, 1, v26);
  v56 = v22;
  if (v33 == 1)
  {
    v34 = v64;
    if (qword_280E91AC8 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v26, qword_280F61830);
    v36 = v63;
    (*(v31 + 16))(v63, v35, v26);
    if (v32(v30, 1, v26) != 1)
    {
      sub_2189AF7FC(v30, sub_2189AF720);
    }
  }

  else
  {
    v36 = v63;
    (*(v31 + 32))(v63, v30, v26);
    v34 = v64;
  }

  (*(v31 + 32))(v71, v36, v26);
  v37 = v67;
  v38 = v54;
  sub_2189AF794(v67, v54, sub_2189AF700);
  v39 = v70;
  v40 = *(v70 + 48);
  v41 = v68;
  if (v40(v38, 1, v68) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    sub_219BEEC74();
    v42 = v40(v38, 1, v41);
    v43 = v66;
    v44 = v59;
    if (v42 != 1)
    {
      sub_2189AF7FC(v38, sub_2189AF700);
    }
  }

  else
  {
    (*(v39 + 32))(v34, v38, v41);
    v43 = v66;
    v44 = v59;
  }

  v45 = v65;
  v46 = v71;
  (*(v70 + 32))(&v71[*(v65 + 20)], v34, v41);
  if (v53)
  {
    sub_219BF5CF4();
    v27 = v47 * 12.0;
  }

  *(v46 + v45[6]) = v27;
  *(v46 + v45[7]) = (v28 == 2) | v28 & 1;
  v48 = v69;
  v50 = v57;
  v49 = v58;
  if (!v29)
  {
    sub_2186F0704(0, &qword_280E8BAF0, MEMORY[0x277D84560]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_219C09EC0;
    if (qword_280EB0610 != -1)
    {
      swift_once();
    }

    v51 = byte_280F61A98 | 0x80;
    *(v29 + 32) = qword_280F61A90;
    *(v29 + 40) = v51;
    *(v29 + 48) = 5;
    *(v29 + 56) = 0;
  }

  sub_2189AF7FC(v37, sub_2189AF700);
  sub_2189AF7FC(v48, sub_2189AF720);
  (*(v50 + 8))(v56, v49);
  *(v46 + v45[8]) = v29;
  sub_218F58EF4(v46, v43);
  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t sub_218F58A4C(void *a1)
{
  v3 = v1;
  sub_218F58F58(0, &qword_27CC13B88, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F58EA0();
  sub_219BF7B44();
  v17 = 0;
  sub_2189AE994(0);
  sub_2186DF908(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
    v16 = 1;
    sub_2189AE9B4(0);
    sub_2186DF908(&unk_280E91870, sub_2189AE9B4);
    sub_219BF7834();
    v15 = 2;
    sub_219BF7814();
    v14 = 3;
    sub_219BF7804();
    v13 = *(v3 + *(v10 + 32));
    v12[15] = 4;
    sub_2186F0704(0, &qword_280E8F220, MEMORY[0x277D83940]);
    sub_218B82734();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218F58D20()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0x6E69576863746566;
  v4 = 0x456F54706D616C63;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6F6F706572;
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

uint64_t sub_218F58DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218F591E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218F58DF4(uint64_t a1)
{
  v2 = sub_218F58EA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F58E30(uint64_t a1)
{
  v2 = sub_218F58EA0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218F58EA0()
{
  result = qword_280EE2D58[0];
  if (!qword_280EE2D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EE2D58);
  }

  return result;
}

uint64_t sub_218F58EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218F58F58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F58EA0();
    v7 = a3(a1, &type metadata for LegacyLocalNewsTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218F58FBC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs();
  if ((sub_219BEEC64() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v6 = v4[8];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_219419180(v7, v8);
}

unint64_t sub_218F590E4()
{
  result = qword_27CC13B90;
  if (!qword_27CC13B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13B90);
  }

  return result;
}

unint64_t sub_218F5913C()
{
  result = qword_280EE2D48;
  if (!qword_280EE2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2D48);
  }

  return result;
}

unint64_t sub_218F59194()
{
  result = qword_280EE2D50;
  if (!qword_280EE2D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2D50);
  }

  return result;
}

uint64_t sub_218F591E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69576863746566 && a2 == 0xEB00000000776F64 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x456F54706D616C63 && a2 == 0xEE006E6F69746964 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CE9730 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_218F593A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_218F593EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218F5945C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

void sub_218F5955C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = [objc_opt_self() welcomeToNewsIcon];
  if (v37)
  {
    v4 = sub_218F5945C();
    v35 = v5;
    v36 = v4;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = objc_opt_self();
    v8 = [v7 bundleForClass_];
    v9 = sub_219BDB5E4();
    v33 = v10;
    v34 = v9;

    v11 = [v7 &:ObjCClassFromMetadata OBJC:0x8000000219D02C40 LABEL:? PROTOCOL:? :? :?NUTitleViewStyler + 3];
    v12 = sub_219BDB5E4();
    v31 = v13;
    v32 = v12;

    v14 = [v7 &:ObjCClassFromMetadata OBJC:0x8000000219D02CE0 LABEL:? PROTOCOL:? :? :?NUTitleViewStyler + 3];
    v15 = sub_219BDB5E4();
    v29 = v16;
    v30 = v15;

    v17 = [v7 &:ObjCClassFromMetadata OBJC:0x8000000219D02D20 LABEL:? PROTOCOL:? :? :?NUTitleViewStyler + 3];
    v28 = sub_219BDB5E4();
    v19 = v18;

    v20 = [v7 &:ObjCClassFromMetadata OBJC:0x8000000219D02DD0 LABEL:? PROTOCOL:? :? :?NUTitleViewStyler + 3];
    v21 = sub_219BDB5E4();
    v23 = v22;

    v24 = [v7 bundleForClass_];
    v25 = sub_219BDB5E4();
    v27 = v26;

    *a3 = v37;
    a3[1] = v36;
    a3[2] = v35;
    a3[3] = v34;
    a3[4] = v33;
    a3[5] = v32;
    a3[6] = v31;
    a3[7] = a2;
    a3[8] = a1;
    a3[9] = v30;
    a3[10] = v29;
    a3[11] = v28;
    a3[12] = v19;
    a3[13] = v21;
    a3[14] = v23;
    a3[15] = v25;
    a3[16] = v27;
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for NewspaperTodayFeedGroupEmitter()
{
  result = qword_280EABFD0;
  if (!qword_280EABFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218F59958()
{
  sub_2186DE858();
  if (v0 <= 0x3F)
  {
    type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, qword_280EBC190);
        if (v3 <= 0x3F)
        {
          sub_2186D6710(319, &unk_280E8DF40);
          if (v4 <= 0x3F)
          {
            sub_2186C6148(319, &qword_280E8DE40);
            if (v5 <= 0x3F)
            {
              sub_2186CFDE4(319, &qword_280E910C0);
              if (v6 <= 0x3F)
              {
                sub_2186CFDE4(319, qword_280E9C090);
                if (v7 <= 0x3F)
                {
                  sub_219BE5434();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t sub_218F59AEC(void **a1)
{
  v2 = *(sub_219BF11F4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_218C811E8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_218F62468(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_218F59B98@<X0>(_OWORD *a1@<X8>)
{
  sub_218D45728(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE3514();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NewspaperTodayFeedGroupConfigData();
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE858();
  sub_219BEDD14();
  v12 = *&v11[*(v9 + 100)];

  result = sub_218F5AF68(v11, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  if (!v12)
  {
    goto LABEL_15;
  }

  v29 = *(v12 + 16);
  if (!v29)
  {

LABEL_15:
    *a1 = 0u;
    a1[1] = 0u;
    return result;
  }

  v25 = v1;
  v26 = a1;
  v14 = 0;
  v15 = (v28 + 48);
  v16 = (v28 + 32);
  v17 = v12 + 40;
  v18 = MEMORY[0x277D84F90];
  v27 = v12;
  while (v14 < *(v12 + 16))
  {

    sub_219BE34E4();
    if ((*v15)(v5, 1, v6) == 1)
    {
      result = sub_218F5AF68(v5, sub_218D45728);
    }

    else
    {
      v19 = *v16;
      (*v16)(v30, v5, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_2191F7D30(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_2191F7D30(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      result = (v19)(v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v21, v30, v6);
      v12 = v27;
    }

    ++v14;
    v17 += 16;
    if (v29 == v14)
    {

      v22 = type metadata accessor for NewspaperTodayFeedGroupEmitter();
      v23 = *__swift_project_boxed_opaque_existential_1((v25 + *(v22 + 44)), *(v25 + *(v22 + 44) + 24));
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v18;

      sub_219BE3494();

      a1 = v26;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218F59F18(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218F59FC0(a1, a2);
}

uint64_t sub_218F59FC0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  sub_2186D8FA8(0);
  v3[6] = swift_task_alloc();
  type metadata accessor for NewspaperTodayFeedGroupConfigData();
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218F5A080, 0, 0);
}

uint64_t sub_218F5A080()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_2186DE858();
  sub_219BEDD14();
  sub_218F63B38(v1, v2, sub_2186D8FA8);
  sub_218F5AF68(v1, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v3 = sub_219BF1934();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_218F5AF68(v2, sub_2186D8FA8);
  if (v4 == 1)
  {
    v5 = sub_219BEEDD4();
    sub_2186DF394(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v6 = 0xD000000000000013;
    v6[1] = 0x8000000219CF4870;
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D323D8], v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[5];
    v10 = swift_task_alloc();
    v0[8] = v10;
    *(v10 + 16) = v9;
    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    v11[1] = sub_218F5A318;

    return MEMORY[0x282190858](v0 + 2, &type metadata for NewspaperTodayFeedGroupEmitterCursor, &unk_219C48EE0, v10, &type metadata for NewspaperTodayFeedGroupEmitterCursor);
  }
}

uint64_t sub_218F5A318()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_218F5A664;
  }

  else
  {

    v2 = sub_218F5A434;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218F5A434()
{
  v1 = v0[2];
  v0[11] = v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_218F5A4D8;
  v3 = v0[4];
  v4 = v0[3];

  return sub_218F5B634(v4, v3, v1);
}

uint64_t sub_218F5A4D8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_218F5A6D8;
  }

  else
  {
    v2 = sub_218F5A5EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218F5A5EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218F5A664()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218F5A6D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218F5A74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_218F5A7FC(a1, a2, a3);
}

uint64_t sub_218F5A7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_218D3BC60(0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218F5A8EC, 0, 0);
}

uint64_t sub_218F5A8EC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_218D3BC94();
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_218F5AF68(*(v0 + 48), sub_218D3BC60);
  }

  else
  {
    sub_218F637E4(*(v0 + 48), *(v0 + 72), type metadata accessor for TodayFeedGroup);
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_218F5AF68(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_218F63B38(*(v0 + 40), *(v0 + 24), sub_218D3BC94);
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 1;
LABEL_4:
  (*(*(v5 - 8) + 56))(*(v0 + 24), v6, 1, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_218F5AADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs();
  a2[4] = sub_2186DF394(&qword_280E9CE18, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
  a2[5] = sub_2186DF394(&qword_280E9CE20, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218F63B38(v2 + v4, boxed_opaque_existential_1, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
}

uint64_t sub_218F5ABA0()
{
  sub_2189AE994(0);
  v1 = sub_219BEE964();
  sub_2191EE478(MEMORY[0x277D84F90]);
  return v1;
}

uint64_t sub_218F5AC10@<X0>(uint64_t *a1@<X8>)
{
  sub_2186D8AB4(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186DE858();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218F5AF68(inited + 32, sub_2188317B0);
  sub_218F63BA0(0);
  a1[3] = v5;
  a1[4] = sub_2186DF394(&unk_280EE7880, sub_218F63BA0);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218F5AD94()
{
  sub_2186DF394(&qword_280EABFF8, type metadata accessor for NewspaperTodayFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218F5AF68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218F5AFC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_218F5AFE8, 0, 0);
}

uint64_t sub_218F5AFE8()
{
  v1 = *(v0 + 16);
  *v1 = sub_218F5B0F0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218F5B050(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218F5AFC8(a1, v4);
}

void *sub_218F5B0F0()
{
  v1 = v0;
  v57 = sub_219BF11F4();
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for NewspaperTodayFeedGroupConfigData();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - v7;
  sub_2186DE858();
  v10 = v9;
  sub_219BEDD14();
  v11 = *&v8[*(v3 + 28)];

  sub_218F5AF68(v8, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v12 = *(v11 + 16);
  v55 = v0;
  if (v12)
  {
    v52 = v10;
    v53 = v3;
    v58 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v12, 0);
    v13 = v58;
    v14 = (v11 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v58 = v13;
      v18 = v13[2];
      v17 = v13[3];

      if (v18 >= v17 >> 1)
      {
        sub_21870B65C((v17 > 1), v18 + 1, 1);
        v13 = v58;
      }

      v13[2] = v18 + 1;
      v19 = &v13[2 * v18];
      v19[4] = v15;
      v19[5] = v16;
      v14 += 2;
      --v12;
    }

    while (v12);

    v1 = v55;
    v3 = v53;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v20);
  *(&v52 - 2) = v1;
  v21 = sub_2195E6068(sub_218F63AC8, (&v52 - 4), v13);
  sub_219BEDD14();
  v22 = *&v6[*(v3 + 32)];

  sub_218F5AF68(v6, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v23 = *(v22 + 16);
  if (v23)
  {
    v53 = v21;
    v58 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v23, 0);
    v24 = v58;
    v25 = (v22 + 40);
    do
    {
      v26 = *(v25 - 1);
      v27 = *v25;
      v58 = v24;
      v29 = v24[2];
      v28 = v24[3];

      if (v29 >= v28 >> 1)
      {
        sub_21870B65C((v28 > 1), v29 + 1, 1);
        v24 = v58;
      }

      v24[2] = v29 + 1;
      v30 = &v24[2 * v29];
      v30[4] = v26;
      v30[5] = v27;
      v25 += 2;
      --v23;
    }

    while (v23);

    v1 = v55;
    v21 = v53;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v31);
  *(&v52 - 2) = v1;
  v32 = sub_2195E6068(sub_218F63B00, (&v52 - 4), v24);
  v58 = v21;
  sub_2191ED3E8(v32);
  v33 = type metadata accessor for NewspaperTodayFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1(&v1[*(v33 + 40)], *&v1[*(v33 + 40) + 24]);
  v34 = sub_219BEFFF4();

  v58 = v34;

  sub_218F59AEC(&v58);

  v35 = v58;
  v36 = v58[2];
  if (v36)
  {
    v58 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v36, 0);
    v37 = v58;
    v38 = v54 + 16;
    v39 = *(v54 + 16);
    v40 = *(v54 + 80);
    v53 = v35;
    v41 = v35 + ((v40 + 32) & ~v40);
    v54 = *(v54 + 72);
    v55 = v39;
    v42 = (v38 - 8);
    do
    {
      v43 = v56;
      v44 = v57;
      (v55)(v56, v41, v57);
      v45 = sub_219BF11E4();
      v47 = v46;
      (*v42)(v43, v44);
      v58 = v37;
      v49 = v37[2];
      v48 = v37[3];
      if (v49 >= v48 >> 1)
      {
        sub_21870B65C((v48 > 1), v49 + 1, 1);
        v37 = v58;
      }

      v37[2] = v49 + 1;
      v50 = &v37[2 * v49];
      v50[4] = v45;
      v50[5] = v47;
      v41 += v54;
      --v36;
    }

    while (v36);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v37;
}

uint64_t sub_218F5B634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for NewspaperTodayFeedGroupEmitter();
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  type metadata accessor for TodayFeedGroup();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218F5B704, 0, 0);
}

char *sub_218F5B704()
{
  sub_219BEF0A4();
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DF394(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  v1 = sub_219BEDC44();

  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v5 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v28 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v27 = v0;
  v4 = 0;
  v5 = v28;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CECE0F0](v4, v1);
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
      swift_unknownObjectRetain();
    }

    v7 = [v6 identifier];
    v8 = sub_219BF5414();
    v10 = v9;

    swift_unknownObjectRelease();
    v12 = *(v28 + 16);
    v11 = *(v28 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_21870B65C((v11 > 1), v12 + 1, 1);
    }

    ++v4;
    *(v28 + 16) = v12 + 1;
    v13 = v28 + 16 * v12;
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
  }

  while (v2 != v4);

  v0 = v27;
LABEL_14:
  v14 = v0[4];
  v15 = sub_218845F78(v5);

  v16 = sub_219A7F680(v15, v14);
  v18 = v17;
  v20 = v19;

  v0[10] = v16;
  v0[11] = v18;
  v0[12] = v20;
  if (v18)
  {
    v21 = swift_task_alloc();
    v0[13] = v21;
    *v21 = v0;
    v21[1] = sub_218F5BAB0;
    v22 = v0[9];
    v23 = v0[3];

    return sub_218F5C530(v22, v16, v18, v23);
  }

  else
  {

    v24 = sub_219BEEDD4();
    sub_2186DF394(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D323C8], v24);
    swift_willThrow();

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_218F5BAB0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_218F5BCFC;
  }

  else
  {

    v2 = sub_218F5BBCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218F5BBCC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[2];
  if (v1)
  {
    sub_218B8B468();
    v5 = (v3 + *(v4 + 48));
    sub_218F63B38(v2, v3, type metadata accessor for TodayFeedGroup);
    v5[3] = &type metadata for NewspaperTodayFeedGroupEmitterCursor;
    *v5 = v1;
    sub_218F5AF68(v2, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    sub_218F637E4(v0[9], v0[2], type metadata accessor for TodayFeedGroup);
  }

  sub_218B8B124(0);
  swift_storeEnumTagMultiPayload();

  v6 = v0[1];

  return v6();
}

uint64_t sub_218F5BCFC()
{
  v50 = v0;
  v1 = v0[14];
  v2 = v0[12];
  if (v2)
  {
    sub_218F63B38(v0[5], v0[8], type metadata accessor for NewspaperTodayFeedGroupEmitter);

    v3 = v1;
    v4 = sub_219BE5414();
    v5 = sub_219BF61F4();

    if (os_log_type_enabled(v4, v5))
    {
      v45 = v0[11];
      v47 = v0[14];
      v44 = v0[10];
      v6 = v0[8];
      v7 = v0[6];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v49[0] = v10;
      *v8 = 136446722;
      v11 = (v6 + *(v7 + 48));
      v12 = *v11;
      v13 = v11[1];

      sub_218F5AF68(v6, type metadata accessor for NewspaperTodayFeedGroupEmitter);
      v14 = sub_2186D1058(v12, v13, v49);

      *(v8 + 4) = v14;
      *(v8 + 12) = 2082;
      v15 = sub_2186D1058(v44, v45, v49);

      *(v8 + 14) = v15;
      *(v8 + 22) = 2114;
      v16 = v47;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v17;
      *v9 = v17;
      _os_log_impl(&dword_2186C1000, v4, v5, "%{public}s failed to form group for channel.  Trying the next one.  channel=%{public}s, error=%{public}@", v8, 0x20u);
      sub_218F5AF68(v9, sub_2189B3F3C);
      MEMORY[0x21CECF960](v9, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v10, -1, -1);
      MEMORY[0x21CECF960](v8, -1, -1);
    }

    else
    {
      v34 = v0[8];

      sub_218F5AF68(v34, type metadata accessor for NewspaperTodayFeedGroupEmitter);
    }

    v35 = swift_task_alloc();
    v0[15] = v35;
    *v35 = v0;
    v35[1] = sub_218F5C2FC;
    v36 = v0[2];
    v37 = v0[3];

    return sub_218F5B634(v36, v37, v2);
  }

  else
  {
    sub_218F63B38(v0[5], v0[7], type metadata accessor for NewspaperTodayFeedGroupEmitter);

    v18 = v1;
    v19 = sub_219BE5414();
    v20 = sub_219BF61F4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[11];
      v46 = v0[10];
      v48 = v0[14];
      v22 = v0[6];
      v23 = v0[7];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v49[0] = v26;
      *v24 = 136446722;
      v27 = (v23 + *(v22 + 48));
      v29 = *v27;
      v28 = v27[1];

      sub_218F5AF68(v23, type metadata accessor for NewspaperTodayFeedGroupEmitter);
      v30 = sub_2186D1058(v29, v28, v49);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2082;
      v31 = sub_2186D1058(v46, v21, v49);

      *(v24 + 14) = v31;
      *(v24 + 22) = 2114;
      v32 = v48;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 24) = v33;
      *v25 = v33;
      _os_log_impl(&dword_2186C1000, v19, v20, "%{public}s failed to form group for channel.  Cursor exhausted.  channel=%{public}s, error=%{public}@", v24, 0x20u);
      sub_218F5AF68(v25, sub_2189B3F3C);
      MEMORY[0x21CECF960](v25, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v26, -1, -1);
      MEMORY[0x21CECF960](v24, -1, -1);
    }

    else
    {
      v39 = v0[7];

      sub_218F5AF68(v39, type metadata accessor for NewspaperTodayFeedGroupEmitter);
    }

    v40 = v0[14];
    v41 = sub_219BEEDD4();
    sub_2186DF394(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D323C8], v41);
    swift_willThrow();

    v43 = v0[1];

    return v43();
  }
}

uint64_t sub_218F5C2FC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_218F5C49C;
  }

  else
  {
    v2 = sub_218F5C410;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218F5C410()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218F5C49C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218F5C530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[107] = v4;
  v5[106] = a4;
  v5[105] = a3;
  v5[99] = a2;
  v5[93] = a1;
  v6 = type metadata accessor for NewspaperTodayFeedGroupEmitter();
  v5[108] = v6;
  v7 = *(v6 - 8);
  v5[109] = v7;
  v5[110] = *(v7 + 64);
  v5[111] = swift_task_alloc();
  sub_2186FE720();
  v5[112] = swift_task_alloc();
  v8 = sub_219BF2034();
  v5[113] = v8;
  v9 = *(v8 - 8);
  v5[114] = v9;
  v5[115] = *(v9 + 64);
  v5[116] = swift_task_alloc();
  v5[117] = swift_task_alloc();
  v10 = sub_219BF47F4();
  v5[118] = v10;
  v5[119] = *(v10 - 8);
  v5[120] = swift_task_alloc();
  v11 = sub_219BF3E84();
  v5[121] = v11;
  v5[122] = *(v11 - 8);
  v5[123] = swift_task_alloc();
  v5[124] = swift_task_alloc();
  v12 = type metadata accessor for ChannelHeadlineServiceResult();
  v5[125] = v12;
  v13 = *(v12 - 8);
  v5[126] = v13;
  v5[127] = *(v13 + 64);
  v5[128] = swift_task_alloc();
  v5[129] = swift_task_alloc();
  type metadata accessor for ChannelHeadlineServiceRequest();
  v5[130] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218F5C804, 0, 0);
}

uint64_t sub_218F5C804()
{
  sub_218F5D910(v0[99], v0[105], v0[106], v0[130]);
  v1 = (v0[107] + *(v0[108] + 28));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  v0[131] = v2;
  *v2 = v0;
  v2[1] = sub_218F5C9B4;
  v3 = v0[130];
  v4 = v0[129];

  return sub_219363BE0(v4, v3);
}

uint64_t sub_218F5C9B4()
{
  *(*v1 + 1056) = v0;

  if (v0)
  {
    v2 = sub_218F5D150;
  }

  else
  {
    v2 = sub_218F5CAC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218F5CAC8()
{
  v1 = v0[132];
  v2 = v0[129];
  v3 = v0[123];
  sub_218F5E064(v0[124]);
  sub_218F5E670(v2, v3);
  if (v1)
  {
    v4 = v0[130];
    v5 = v0[129];
    (*(v0[122] + 8))(v0[124], v0[121]);
    sub_218F5AF68(v5, type metadata accessor for ChannelHeadlineServiceResult);
    sub_218F5AF68(v4, type metadata accessor for ChannelHeadlineServiceRequest);

    v6 = v0[1];

    return v6();
  }

  else
  {
    sub_218F5EC5C(v0[129], v0[120]);
    v8 = v0[129];
    v34 = v8;
    v42 = v0[128];
    v44 = v0[126];
    v9 = v0[125];
    v28 = v0[124];
    v29 = v0[123];
    v10 = v0[122];
    v11 = v0[121];
    v12 = v0[119];
    v31 = v0[118];
    v32 = v0[120];
    v35 = v0[117];
    v39 = v0[116];
    v43 = v0[115];
    v46 = v0[114];
    v13 = v0[112];
    v37 = v0[111];
    v38 = v0[113];
    v40 = v0[109];
    v41 = v0[110];
    v36 = v0[107];
    v45 = v0[106];
    sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C146A0;
    *(v33 + 32) = *(v8 + *(v9 + 24));
    v14 = MEMORY[0x277D84560];
    sub_2186D8AB4(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v15 = *(v10 + 72);
    v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_219C09EC0;
    v17 = v30 + v16;
    v18 = *(v10 + 16);
    v18(v17, v28, v11);
    v18(v17 + v15, v29, v11);
    sub_2186D8AB4(0, &unk_280E8B780, MEMORY[0x277D34500], v14);
    v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C09BA0;
    (*(v12 + 16))(v20 + v19, v32, v31);
    v21 = sub_219BEC004();
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    swift_unknownObjectRetain();
    v22 = MEMORY[0x277D84F90];
    sub_219A95188(MEMORY[0x277D84F90]);
    sub_219A95188(v22);
    sub_219A951A0(v22);
    sub_219A951B8(v22);
    sub_219A952CC(v22);
    sub_219A952E4(v22);
    sub_219A953F8(v22);
    sub_219BF2024();
    sub_218F63B38(v36, v37, type metadata accessor for NewspaperTodayFeedGroupEmitter);
    (*(v46 + 16))(v39, v35, v38);
    sub_218F63B38(v34, v42, type metadata accessor for ChannelHeadlineServiceResult);
    v23 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v24 = (v41 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = (*(v46 + 80) + v24 + 8) & ~*(v46 + 80);
    v26 = (v43 + *(v44 + 80) + v25) & ~*(v44 + 80);
    v27 = swift_allocObject();
    v0[133] = v27;
    sub_218F637E4(v37, v27 + v23, type metadata accessor for NewspaperTodayFeedGroupEmitter);
    *(v27 + v24) = v45;
    (*(v46 + 32))(v27 + v25, v39, v38);
    sub_218F637E4(v42, v27 + v26, type metadata accessor for ChannelHeadlineServiceResult);

    sub_219BF2754();
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 2, v0 + 87, sub_218F5D264, v0 + 82);
  }
}

uint64_t sub_218F5D150()
{
  sub_218F5AF68(*(v0 + 1040), type metadata accessor for ChannelHeadlineServiceRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218F5D264()
{
  *(v1 + 1072) = v0;
  if (v0)
  {
    return MEMORY[0x282200920](v1 + 16, v1 + 696, sub_218F5D550, v1 + 704);
  }

  else
  {
    return MEMORY[0x2822009F8](sub_218F5D2A8, 0, 0);
  }
}

uint64_t sub_218F5D2A8()
{
  v1 = v0[134];
  v2 = v0[129];
  v3 = v0[106];
  v4 = v0[93];

  sub_218F6075C(v3, v2, v4);
  v0[135] = v1;

  if (v1)
  {
    v5 = sub_218F5D730;
    v6 = v0 + 2;
    v7 = v0 + 87;
    v8 = v0 + 94;
  }

  else
  {
    v5 = sub_218F5D384;
    v6 = v0 + 2;
    v7 = v0 + 87;
    v8 = v0 + 100;
  }

  return MEMORY[0x282200920](v6, v7, v5, v8);
}

uint64_t sub_218F5D3A0()
{
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[124];
  v4 = v0[123];
  v5 = v0[122];
  v6 = v0[121];
  v7 = v0[120];
  v8 = v0[119];
  v9 = v0[118];
  (*(v0[114] + 8))();
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);
  sub_218F5AF68(v2, type metadata accessor for ChannelHeadlineServiceResult);
  sub_218F5AF68(v1, type metadata accessor for ChannelHeadlineServiceRequest);

  v11 = v0[1];

  return v11();
}

uint64_t sub_218F5D56C()
{
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[124];
  v4 = v0[123];
  v5 = v0[122];
  v6 = v0[121];
  v7 = v0[120];
  v8 = v0[119];
  v9 = v0[118];
  (*(v0[114] + 8))(v0[117], v0[113]);
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);
  sub_218F5AF68(v2, type metadata accessor for ChannelHeadlineServiceResult);
  sub_218F5AF68(v1, type metadata accessor for ChannelHeadlineServiceRequest);

  v11 = v0[1];

  return v11();
}

uint64_t sub_218F5D74C()
{
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[124];
  v4 = v0[123];
  v5 = v0[122];
  v6 = v0[121];
  v7 = v0[120];
  v8 = v0[119];
  v9 = v0[118];
  (*(v0[114] + 8))(v0[117], v0[113]);
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);
  sub_218F5AF68(v2, type metadata accessor for ChannelHeadlineServiceResult);
  sub_218F5AF68(v1, type metadata accessor for ChannelHeadlineServiceRequest);

  v11 = v0[1];

  return v11();
}

char *sub_218F5D910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v78 = a1;
  v76 = a4;
  v77 = a2;
  v6 = sub_219BF0BD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F60FD0(a3);
  v80 = v10;
  v11 = v4 + *(type metadata accessor for NewspaperTodayFeedGroupEmitter() + 20);
  v12 = type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v13 = v15;
  v15(v9, v6);
  v75 = v91;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v74 = v90;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v73 = v89;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v72 = v88;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v71 = v87;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v16 = v86;
  v17 = v79;
  sub_219BEF164();
  if (v17)
  {
  }

  v67 = v12;
  v68 = v13;
  v69 = v11;
  v70 = v6;
  v18 = *(v85 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);

  sub_219BEF164();
  v19 = a3;
  v66 = v16;
  v20 = *(v84 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 24);

  sub_219BEF134();
  sub_219BEF524();
  v68(v9, v70);
  v21 = v83;
  sub_219BEF164();
  v61[1] = v19;
  v63 = v20;
  v64 = v18;
  v23 = *(v82 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);

  v24 = v23;
  if (v23 >> 62)
  {
    v59 = sub_219BF7214();
    v60 = v23;
    v25 = v59;
    v24 = v60;
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v78;
  v65 = 0;
  v62 = v21;
  if (v25)
  {
    v27 = v24;
    v81 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v25 & ~(v25 >> 63), 0);
    v61[0] = v14;
    if (v25 < 0)
    {
      __break(1u);
      return result;
    }

    v28 = 0;
    v29 = v81;
    v30 = v27;
    v79 = v27 & 0xC000000000000001;
    v31 = v25;
    v32 = v27;
    do
    {
      if (v79)
      {
        v33 = MEMORY[0x21CECE0F0](v28, v30);
      }

      else
      {
        v33 = *(v30 + 8 * v28 + 32);
        swift_unknownObjectRetain();
      }

      v34 = [v33 identifier];
      v35 = sub_219BF5414();
      v37 = v36;
      swift_unknownObjectRelease();

      v81 = v29;
      v39 = *(v29 + 16);
      v38 = *(v29 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_21870B65C((v38 > 1), v39 + 1, 1);
        v29 = v81;
      }

      ++v28;
      *(v29 + 16) = v39 + 1;
      v40 = v29 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v30 = v32;
    }

    while (v31 != v28);

    v26 = v78;
    v41 = v70;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
    v41 = v70;
  }

  v79 = sub_218845F78(v29);

  sub_219BEF134();
  sub_219BEF524();
  v68(v9, v41);
  v42 = v81;
  v43 = type metadata accessor for ChannelHeadlineServiceRequest();
  v44 = v43[17];
  v45 = *MEMORY[0x277D32908];
  v46 = sub_219BEFBD4();
  v47 = v76;
  (*(*(v46 - 8) + 104))(v76 + v44, v45, v46);
  sub_219BEF0B4();
  v48 = *(v82 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v49 = qword_280F616D8;
  v50 = *MEMORY[0x277D30BC8];
  v51 = v77;
  *v47 = v26;
  *(v47 + 8) = v51;
  v52 = v74;
  v53 = v75;
  *(v47 + 16) = v80;
  *(v47 + 24) = v53;
  *(v47 + 32) = 0;
  *(v47 + 40) = v52;
  v54 = v72;
  *(v47 + 48) = v73;
  *(v47 + 56) = v54;
  v55 = v66;
  *(v47 + 64) = v71;
  *(v47 + 72) = v55;
  v56 = v63;
  *(v47 + 80) = v64;
  *(v47 + 88) = v56;
  *(v47 + 96) = v62;
  *(v47 + 104) = v79;
  *(v47 + 112) = v42;
  *(v47 + v43[18]) = v48;
  *(v47 + v43[19]) = v49;
  *(v47 + v43[20]) = v50;
  v57 = v49;
  v58 = v50;
}

uint64_t sub_218F5E064@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v39 = type metadata accessor for NewspaperTodayFeedGroupEmitter();
  MEMORY[0x28223BE20](v39);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF14C4();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF2124();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  sub_2186D8AB4(0, &qword_280E903B0, MEMORY[0x277D339D0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v38 - v15;
  v17 = type metadata accessor for NewspaperTodayFeedGroupConfigData();
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE858();
  sub_219BEDD14();
  sub_218F63A34(&v20[*(v18 + 48)], v16);
  sub_218F5AF68(v20, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  v21 = sub_219BF26F4();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v16, 1, v21) != 1)
  {
    v23 = (*(v22 + 88))(v16, v21);
    if (v23 == *MEMORY[0x277D339C8])
    {
      (*(v22 + 96))(v16, v21);
      (*(v8 + 32))(v13, v16, v7);
      (*(v8 + 16))(v11, v13, v7);
      sub_219BF14A4();
      v24 = sub_2191F7664(0, 1, 1, MEMORY[0x277D84F90]);
      v26 = v24[2];
      v25 = v24[3];
      if (v26 >= v25 >> 1)
      {
        v24 = sub_2191F7664(v25 > 1, v26 + 1, 1, v24);
      }

      (*(v8 + 8))(v13, v7);
      v24[2] = v26 + 1;
      (*(v40 + 32))(v24 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v26, v6, v41);
    }

    else
    {
      if (v23 != *MEMORY[0x277D339C0])
      {
        (*(v22 + 8))(v16, v21);
      }

      v29 = v39;
      sub_218F63B38(v1, v3, type metadata accessor for NewspaperTodayFeedGroupEmitter);
      v30 = sub_219BE5414();
      v31 = sub_219BF61F4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v43 = v33;
        *v32 = 136446210;
        v34 = &v3[*(v29 + 48)];
        v35 = *v34;
        v36 = v34[1];

        sub_218F5AF68(v3, type metadata accessor for NewspaperTodayFeedGroupEmitter);
        v37 = sub_2186D1058(v35, v36, &v43);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_2186C1000, v30, v31, "%{public}s invalid subtitle value, skipping.", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x21CECF960](v33, -1, -1);
        MEMORY[0x21CECF960](v32, -1, -1);
      }

      else
      {

        sub_218F5AF68(v3, type metadata accessor for NewspaperTodayFeedGroupEmitter);
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v27);
  sub_218F0BB90(v27);
  return sub_219BF3E74();
}

int64_t sub_218F5E670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v50 = a1;
  v46 = sub_219BF3C84();
  v51 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + *(type metadata accessor for NewspaperTodayFeedGroupEmitter() + 20);
  v9 = type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v10 = *(v5 + 8);
  v10(v7, v4);
  v49 = v52;
  v11 = *(v8 + *(v9 + 52));
  sub_219BEF134();
  sub_219BEF524();
  v10(v7, v4);
  v12 = v52;
  v13 = *(v50 + *(type metadata accessor for ChannelHeadlineServiceResult() + 28));
  v14 = *(v13 + 16);
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v16 = v49;
    if (i < v49)
    {
      break;
    }

    if (v12 < 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v13 + 16);
      v11 = v13 >> 62;
      if (!(v13 >> 62))
      {
        result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result >= v12)
        {
          v23 = v12;
        }

        else
        {
          v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v12)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        if (result < v24)
        {
          goto LABEL_51;
        }

        goto LABEL_16;
      }
    }

    v42 = sub_219BF7214();
    result = sub_219BF7214();
    if (result < 0)
    {
      goto LABEL_54;
    }

    if (v42 >= v12)
    {
      v43 = v12;
    }

    else
    {
      v43 = v42;
    }

    if (v42 < 0)
    {
      v43 = v12;
    }

    if (v12)
    {
      v24 = v43;
    }

    else
    {
      v24 = 0;
    }

    result = sub_219BF7214();
    if (result < v24)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return result;
    }

LABEL_16:
    if ((v13 & 0xC000000000000001) != 0 && v24)
    {
      sub_2186D6710(0, &qword_280E8E260);
      swift_bridgeObjectRetain_n();
      v25 = 0;
      do
      {
        v26 = v25 + 1;
        sub_219BF7334();
        v25 = v26;
      }

      while (v24 != v26);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (v11)
    {
      v28 = sub_219BF7564();
      v29 = v30;
      v27 = v31;
      v33 = v32;

      v24 = v33 >> 1;
    }

    else
    {
      v27 = 0;
      v28 = v13 & 0xFFFFFFFFFFFFFF8;
      v29 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v11 = v24 - v27;
    if (__OFSUB__(v24, v27))
    {
      goto LABEL_52;
    }

    if (!v11)
    {
LABEL_36:
      swift_unknownObjectRelease();
      v40 = MEMORY[0x277D84F90];
      sub_218F0B984(MEMORY[0x277D84F90]);
      sub_218F0BA7C(v40);
      sub_218F0BB90(v40);
      return sub_219BF3E74();
    }

    v52 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      goto LABEL_53;
    }

    v44[1] = v28;
    v13 = v52;
    LODWORD(v50) = *MEMORY[0x277D34128];
    v48 = v51 + 32;
    v49 = (v51 + 104);
    if (v24 <= v27)
    {
      v34 = v27;
    }

    else
    {
      v34 = v24;
    }

    v35 = v34 - v27;
    v36 = (v29 + 8 * v27);
    v12 = v45;
    v37 = v46;
    while (v35)
    {
      *v12 = *v36;
      (*v49)(v12, v50, v37);
      v52 = v13;
      v39 = *(v13 + 16);
      v38 = *(v13 + 24);
      swift_unknownObjectRetain();
      if (v39 >= v38 >> 1)
      {
        sub_218C34A88(v38 > 1, v39 + 1, 1);
        v13 = v52;
      }

      *(v13 + 16) = v39 + 1;
      (*(v51 + 32))(v13 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v39, v12, v37);
      --v35;
      ++v36;
      if (!--v11)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_38:
    ;
  }

  v17 = sub_219BEEDD4();
  sub_2186DF394(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  v19 = v18;
  v20 = *(v13 + 16);
  if (v20 >> 62)
  {
    v41 = v18;
    v21 = sub_219BF7214();
    v19 = v41;
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *v19 = v16;
  v19[1] = v21;
  (*(*(v17 - 8) + 104))();
  return swift_willThrow();
}

char *sub_218F5EC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40[1] = a2;
  sub_218D45240();
  v46 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v45 = v40 - v7;
  v44 = sub_219BF3E84();
  v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChannelHeadlineServiceResult();
  v11 = *(*(a1 + *(v10 + 28)) + 16);
  if (v11 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v13 = MEMORY[0x277D84F90];
    if (!i)
    {
      v16 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v49 = MEMORY[0x277D84F90];

    result = sub_21870B65C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v41 = v10;
    v42 = a1;
    v43 = v9;
    v15 = 0;
    v16 = v49;
    v17 = v11;
    v47 = v11 & 0xC000000000000001;
    v18 = i;
    do
    {
      if (v47)
      {
        v19 = MEMORY[0x21CECE0F0](v15, v17);
      }

      else
      {
        v19 = *(v17 + 8 * v15 + 32);
        swift_unknownObjectRetain();
      }

      v20 = [v19 identifier];
      v21 = sub_219BF5414();
      v23 = v22;
      swift_unknownObjectRelease();

      v49 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21870B65C((v24 > 1), v25 + 1, 1);
        v16 = v49;
      }

      ++v15;
      *(v16 + 16) = v25 + 1;
      v26 = v16 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
    }

    while (v18 != v15);

    a1 = v42;
    v9 = v43;
    v10 = v41;
    v13 = MEMORY[0x277D84F90];
LABEL_14:
    v27 = sub_218845F78(v16);

    v28 = a1 + *(v10 + 24);
    a1 = *(v28 + *(type metadata accessor for ChannelSectionsGroupModel() + 24));
    v11 = *(a1 + 16);
    if (!v11)
    {
LABEL_21:

      return sub_219BF47E4();
    }

    v47 = v27;
    v49 = v13;
    sub_218C35610(0, v11, 0);
    v29 = v49;
    v43 = *(a1 + 16);
    v30 = 0;
    v31 = *(type metadata accessor for ChannelSectionsGroupSectionModel() - 8);
    v41 = a1 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v42 = v31;
    v40[3] = v48 + 32;
    while (v43 != v30)
    {
      if (v30 >= *(a1 + 16))
      {
        goto LABEL_23;
      }

      v32 = a1;
      v33 = v46;
      v34 = *(v46 + 48);
      v35 = v9;
      v36 = v45;
      sub_218F63B38(v41 + *(v42 + 72) * v30, &v45[v34], type metadata accessor for ChannelSectionsGroupSectionModel);
      *v6 = v30;
      v37 = *(v33 + 48);
      v38 = &v36[v34];
      v9 = v35;
      sub_218F637E4(v38, v6 + v37, type metadata accessor for ChannelSectionsGroupSectionModel);
      sub_218F61614(v30, v6 + v37, v47, v35);
      sub_218F5AF68(v6, sub_218D45240);
      v49 = v29;
      v10 = *(v29 + 16);
      v39 = *(v29 + 24);
      if (v10 >= v39 >> 1)
      {
        sub_218C35610(v39 > 1, v10 + 1, 1);
        v29 = v49;
      }

      ++v30;
      *(v29 + 16) = v10 + 1;
      (*(v48 + 32))(v29 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v10, v35, v44);
      a1 = v32;
      if (v11 == v30)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_218F5F120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_218F5F148, 0, 0);
}

uint64_t sub_218F5F148()
{
  v1 = v0[6];
  v2 = *(v1 + *(type metadata accessor for ChannelHeadlineServiceResult() + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_218F5F1F8;
  v5 = v0[4];
  v4 = v0[5];

  return sub_218F5F368(v5, v4, v2);
}

uint64_t sub_218F5F1F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 64) = a1;

    return MEMORY[0x2822009F8](sub_218F5F344, 0, 0);
  }
}

uint64_t sub_218F5F368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_218860D7C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = MEMORY[0x277D83D88];
  sub_2186D8AB4(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[9] = swift_task_alloc();
  sub_2186D8AB4(0, &qword_280E90150, MEMORY[0x277D33EC8], v6);
  v4[10] = swift_task_alloc();
  sub_2186D8AB4(0, &unk_280E91A10, sub_2189AE994, v6);
  v4[11] = swift_task_alloc();
  v7 = sub_219BF2AB4();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  sub_218F63A00(0);
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  sub_218D454D8(0);
  v4[18] = swift_task_alloc();
  sub_218A42400(0);
  v4[19] = v9;
  v4[20] = *(v9 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  sub_218A89A94(0);
  v4[23] = swift_task_alloc();
  sub_2186FE720();
  v4[24] = swift_task_alloc();
  v10 = sub_219BDBD64();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  sub_2186D8FA8(0);
  v4[28] = swift_task_alloc();
  type metadata accessor for NewspaperTodayFeedGroupConfigData();
  v4[29] = swift_task_alloc();
  v11 = sub_219BF1934();
  v4[30] = v11;
  v4[31] = *(v11 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218F5F7EC, 0, 0);
}

uint64_t sub_218F5F7EC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  sub_2186DE858();
  sub_219BEDD14();
  sub_218F63B38(v3, v4, sub_2186D8FA8);
  sub_218F5AF68(v3, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_218F5AF68(*(v0 + 224), sub_2186D8FA8);
    v5 = sub_219BEEDD4();
    sub_2186DF394(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v6 = 0xD000000000000013;
    v6[1] = 0x8000000219CF4870;
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D323D8], v5);
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 216);
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);
    v64 = *(v0 + 152);
    v68 = *(v0 + 144);
    v70 = *(v0 + 192);
    v67 = *(v0 + 120);
    v14 = *(v0 + 32);
    (*(*(v0 + 248) + 32))();
    sub_219BF7314();

    swift_getObjectType();
    v15 = [v14 identifier];
    v16 = sub_219BF5414();
    v18 = v17;

    MEMORY[0x21CECC330](v16, v18);

    MEMORY[0x21CECC330](14906, 0xE200000000000000);
    sub_219BDBD54();
    v19 = sub_219BDBD44();
    v21 = v20;
    (*(v10 + 8))(v9, v11);
    MEMORY[0x21CECC330](v19, v21);

    v22 = [v14 identifier];
    sub_219BF5414();

    v23 = sub_219BEC004();
    (*(*(v23 - 8) + 56))(v70, 1, 1, v23);
    sub_219BF17A4();
    sub_219BF4074();
    v24 = *(v13 + 8);
    v24(v12, v64);
    sub_2186D8AB4(0, &qword_27CC13BA0, sub_218F63A00, MEMORY[0x277D84560]);
    v25 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v26 = swift_allocObject();
    sub_218F998B0(v68);
    v27 = type metadata accessor for ChannelSupergroupConfig();
    if ((*(*(v27 - 8) + 48))(v68, 1, v27) == 1)
    {
      v29 = *(v0 + 48);
      v28 = *(v0 + 56);
      sub_218F5AF68(*(v0 + 144), sub_218D454D8);
      (*(v28 + 56))(v26 + v25, 1, 1, v29);
    }

    else
    {
      v30 = *(v0 + 168);
      v32 = *(v0 + 144);
      v31 = *(v0 + 152);
      (*(*(v0 + 160) + 16))(v30, v32, v31);
      sub_218F5AF68(v32, type metadata accessor for ChannelSupergroupConfig);
      sub_219BF4054();
      v24(v30, v31);
    }

    v33 = *(v0 + 128);
    v34 = *(v0 + 136);
    v35 = *(v0 + 48);
    v36 = *(v0 + 56);
    sub_218F63B38(v26 + v25, v34, sub_218F63A00);
    sub_218F637E4(v34, v33, sub_218F63A00);
    if ((*(v36 + 48))(v33, 1, v35) == 1)
    {
      sub_218F5AF68(*(v0 + 128), sub_218F63A00);
      v37 = MEMORY[0x277D84F90];
    }

    else
    {
      v38 = *(*(v0 + 56) + 32);
      v38(*(v0 + 64), *(v0 + 128), *(v0 + 48));
      v37 = MEMORY[0x277D84F90];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2191F97D4(0, *(v37 + 2) + 1, 1, v37);
      }

      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      if (v40 >= v39 >> 1)
      {
        v37 = sub_2191F97D4(v39 > 1, v40 + 1, 1, v37);
      }

      v42 = *(v0 + 56);
      v41 = *(v0 + 64);
      v43 = *(v0 + 48);
      *(v37 + 2) = v40 + 1;
      v38(&v37[((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v40], v41, v43);
    }

    v45 = *(v0 + 184);
    v44 = *(v0 + 192);
    v47 = *(v0 + 152);
    v46 = *(v0 + 160);
    v65 = *(v0 + 88);
    v66 = *(v0 + 80);
    v63 = *(v0 + 40);
    v69 = *(v0 + 72);
    swift_setDeallocating();
    sub_218F5AF68(v26 + v25, sub_218F63A00);
    swift_deallocClassInstance();
    sub_2191EF694(v37);
    sub_219BF1944();
    sub_2186DF394(&unk_280E907F0, MEMORY[0x277D33498]);
    sub_219BF4064();
    (*(v46 + 56))(v45, 0, 1, v47);
    sub_219BF1764();

    sub_218F5AF68(v45, sub_218A89A94);
    sub_218F5AF68(v44, sub_2186FE720);
    v48 = type metadata accessor for NewspaperTodayFeedGroupEmitter();
    v49 = (v63 + *(v48 + 24));
    v50 = v49[3];
    v51 = v49[4];
    __swift_project_boxed_opaque_existential_1(v49, v50);
    v52 = *(v48 + 20);
    sub_2189AE994(0);
    v54 = v53;
    v55 = *(v53 - 8);
    (*(v55 + 16))(v65, v63 + v52, v53);
    (*(v55 + 56))(v65, 0, 1, v54);
    v56 = sub_219BF35D4();
    (*(*(v56 - 8) + 56))(v66, 1, 1, v56);
    *(v0 + 296) = 1;
    sub_218D451AC();
    swift_allocObject();

    sub_219BF38D4();
    v57 = sub_219BF2774();
    (*(*(v57 - 8) + 56))(v69, 1, 1, v57);
    v58 = qword_280E8D7A0;
    *MEMORY[0x277D30BC8];
    if (v58 != -1)
    {
      swift_once();
    }

    qword_280F616D8;
    sub_219BF2A84();
    v59 = swift_task_alloc();
    *(v0 + 272) = v59;
    *v59 = v0;
    v59[1] = sub_218F602E8;
    v60 = *(v0 + 256);
    v61 = *(v0 + 112);
    v62 = *(v0 + 24);

    return MEMORY[0x2821921B8](v60, v62, v61, v50, v51);
  }
}

uint64_t sub_218F602E8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v4[35] = v1;

  v6 = (v5 + 8);
  v7 = v4[14];
  v8 = v4[12];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_218F605EC;
  }

  else
  {
    v4[36] = a1;
    (*v6)(v7, v8);
    v9 = sub_218F60474;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_218F60474()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = *(v0[31] + 8);
  v3(v0[32], v2);
  v3(v1, v2);

  v4 = v0[1];
  v5 = v0[36];

  return v4(v5);
}

uint64_t sub_218F605EC()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = *(v0[31] + 8);
  v3(v0[32], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_218F6075C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v62 = a3;
  v57 = a2;
  v55 = a1;
  v3 = type metadata accessor for ChannelSectionsGroupSectionModel();
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for NewspaperTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v61);
  v60 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8AB4(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = v48 - v8;
  v9 = sub_219BEF554();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v53 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v52 = v48 - v12;
  v13 = sub_219BED8D4();
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x28223BE20](v13);
  v65 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE858();
  v64 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NewspaperGroupConfig();
  MEMORY[0x28223BE20](v19 - 8);
  v63 = (v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for NewspaperGroup();
  MEMORY[0x28223BE20](v56);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF1904();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF2734();
  v27 = sub_219BF1844();
  (*(v24 + 8))(v26, v23);
  if (!v27)
  {
    goto LABEL_9;
  }

  v68 = &unk_282B7DDA8;
  v28 = swift_dynamicCastObjCProtocolConditional();
  if (!v28)
  {
    swift_unknownObjectRelease();
LABEL_9:
    v46 = sub_219BEEDD4();
    sub_2186DF394(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v47 = 0xD00000000000001BLL;
    v47[1] = 0x8000000219CF4890;
    (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277D323D8], v46);
    return swift_willThrow();
  }

  v49 = v28;
  v50 = v27;
  (*(v16 + 16))(v18, v66, v64);
  sub_218DEF860(v18, v63);

  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for NewspaperTodayFeedGroupEmitter();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  v48[1] = v29;
  sub_219BEE9D4();
  type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs();
  sub_2189AE9B4(0);
  sub_219BEEC84();
  sub_219BED844();
  v30 = v57 + *(type metadata accessor for ChannelHeadlineServiceResult() + 24);
  v31 = *(v30 + *(type metadata accessor for ChannelSectionsGroupModel() + 24));
  v32 = *(v31 + 16);
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v67 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v34 = v31 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v35 = *(v51 + 72);
    do
    {
      sub_218F63B38(v34, v5, type metadata accessor for ChannelSectionsGroupSectionModel);
      swift_unknownObjectRetain();
      sub_218F5AF68(v5, type metadata accessor for ChannelSectionsGroupSectionModel);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v34 += v35;
      --v32;
    }

    while (v32);
    v33 = v67;
  }

  v36 = v60;
  sub_219BEDD14();
  v37 = *(v36 + *(v61 + 92));

  sub_218F5AF68(v36, type metadata accessor for NewspaperTodayFeedGroupConfigData);
  sub_218F637E4(v63, v22, type metadata accessor for NewspaperGroupConfig);
  v38 = v56;
  v39 = *(v56 + 20);
  v41 = v58;
  v40 = v59;
  (*(v58 + 32))(&v22[v39], v65, v59);
  v42 = v49;
  *&v22[v38[6]] = v49;
  *&v22[v38[7]] = v33;
  *&v22[v38[8]] = v37;
  v43 = v62;
  (*(v41 + 16))(v62, &v22[v39], v40);
  v44 = type metadata accessor for NewspaperTodayFeedGroup();
  *(v43 + v44[5]) = v42;
  *(v43 + v44[6]) = v33;

  swift_unknownObjectRetain();

  sub_218F5AF68(v22, type metadata accessor for NewspaperGroup);
  *(v43 + v44[7]) = v37;
  type metadata accessor for TodayFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

void sub_218F60FD0(uint64_t a1)
{
  v2 = sub_219BEE3D4();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0C04();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BF0BD4();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8AB4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for TodayFeedServiceContext();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_219BDBD34();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v45 = a1;
  sub_219BEF0B4();
  sub_218F63B38(*&v46 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v14, type metadata accessor for TodayFeedServiceContext);

  v22 = v14[1];
  sub_218F5AF68(v14, type metadata accessor for TodayFeedServiceContext);
  v23 = [v22 startDate];

  if (!v23)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_219BDBCA4();

  (*(v16 + 32))(v21, v19, v15);
  v24 = *(v16 + 16);
  v42 = v21;
  v24(v11, v21, v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  type metadata accessor for NewspaperTodayFeedGroupEmitter();
  type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v25 = *(v6 + 8);
  v26 = v6 + 8;
  v27 = v43;
  v44 = v26;
  v25(v8);
  v28 = v46;
  v29 = 0;
  if ((*(v16 + 48))(v11, 1, v15) != 1)
  {
    v29 = sub_219BDBC04();
    (*(v16 + 8))(v11, v15);
  }

  v30 = [objc_allocWithZone(MEMORY[0x277D30F38]) initWithStartDate:v29 timeInterval:v28];

  if (!v30)
  {
    goto LABEL_10;
  }

  sub_219BEF134();
  sub_219BEF524();
  (v25)(v8, v27);
  if (LOBYTE(v46) != 1)
  {
    (*(v16 + 8))(v42, v15);
    return;
  }

  sub_219BEF134();
  v31 = v37;
  sub_219BF0BB4();
  (v25)(v8, v27);
  v32 = v36;
  v33 = v42;
  sub_219BEE3C4();
  (*(v40 + 8))(v31, v41);
  v34 = sub_219BF0BF4();
  (*(v38 + 8))(v32, v39);
  if ([v30 intersectionWithDateRange_])
  {
    (*(v16 + 8))(v33, v15);

    return;
  }

LABEL_11:
  __break(1u);
}

size_t sub_218F61614@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_219BF2124();
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF3C84();
  v53 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  v13 = *(a2 + 48);
  v56 = MEMORY[0x277D84F90];
  v47 = a4;
  if (v13 >> 62)
  {
LABEL_39:
    v14 = sub_219BF7214();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  v46 = v12;
  if (v14)
  {
    v44 = v13;
    v45 = a1;
    v16 = 0;
    v51 = v13 & 0xFFFFFFFFFFFFFF8;
    v52 = v13 & 0xC000000000000001;
    v50 = v13 + 32;
    v13 = a3 + 56;
    while (1)
    {
      if (v52)
      {
        a1 = MEMORY[0x21CECE0F0](v16, v44);
        v17 = __OFADD__(v16++, 1);
        if (v17)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v27 = v56;
          a1 = v45;
          v15 = MEMORY[0x277D84F90];
          goto LABEL_26;
        }
      }

      else
      {
        if (v16 >= *(v51 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        a1 = *(v50 + 8 * v16);
        swift_unknownObjectRetain();
        v17 = __OFADD__(v16++, 1);
        if (v17)
        {
          goto LABEL_23;
        }
      }

      v18 = [a1 identifier];
      v19 = sub_219BF5414();
      v21 = v20;

      if (*(a3 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v22 = sub_219BF7AE4(), v23 = -1 << *(a3 + 32), v12 = v22 & ~v23, ((*(v13 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0))
      {
        v24 = ~v23;
        while (1)
        {
          v25 = (*(a3 + 48) + 16 * v12);
          v26 = *v25 == v19 && v25[1] == v21;
          if (v26 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v12 = (v12 + 1) & v24;
          if (((*(v13 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        swift_unknownObjectRelease();

        if (v16 == v14)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_5:

        v12 = &v56;
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        if (v16 == v14)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_26:
  v54 = 0x2D6E6F6974636573;
  v55 = 0xE800000000000000;
  v56 = a1;
  v28 = sub_219BF7894();
  MEMORY[0x21CECC330](v28);

  v29 = v54;
  v30 = v55;
  if ((v27 & 0x8000000000000000) == 0 && (v27 & 0x4000000000000000) == 0)
  {
    v31 = *(v27 + 16);
    if (v31)
    {
      goto LABEL_29;
    }

LABEL_41:

    sub_2186D8AB4(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
    sub_219BF14C4();
    *(swift_allocObject() + 16) = xmmword_219C09EC0;
    sub_219BF20F4();
    sub_219BF14A4();
    type metadata accessor for ChannelSectionsGroupSectionModel();
    sub_219BF20E4();
    sub_219BF14A4();
    v42 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v42);
    sub_218F0BB90(v42);
    return sub_219BF3E74();
  }

  v31 = sub_219BF7214();
  if (!v31)
  {
    goto LABEL_41;
  }

LABEL_29:
  v54 = v15;
  result = sub_218C34A88(0, v31 & ~(v31 >> 63), 0);
  if ((v31 & 0x8000000000000000) == 0)
  {
    v52 = v31;
    v45 = v30;
    v50 = v29;
    v33 = 0;
    v51 = v27 & 0xC000000000000001;
    v34 = *MEMORY[0x277D34128];
    v35 = v54;
    v36 = (v53 + 104);
    v37 = v46;
    do
    {
      if (v51)
      {
        v38 = MEMORY[0x21CECE0F0](v33, v27);
      }

      else
      {
        v38 = swift_unknownObjectRetain();
      }

      *v37 = v38;
      (*v36)(v37, v34, v10);
      v54 = v35;
      v39 = v10;
      v41 = *(v35 + 16);
      v40 = *(v35 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_218C34A88(v40 > 1, v41 + 1, 1);
        v37 = v46;
        v35 = v54;
      }

      ++v33;
      *(v35 + 16) = v41 + 1;
      (*(v53 + 32))(v35 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v41, v37, v39);
      v10 = v39;
    }

    while (v52 != v33);
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

uint64_t sub_218F61C5C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for NewspaperTodayFeedGroupEmitter();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + *(v6 + 32));
  v10 = [objc_msgSend(v9 purchaseProvider)];
  v11 = sub_219BF5D44();

  LOBYTE(v10) = sub_2188537B8(a1, a2, v11);
  swift_unknownObjectRelease();

  if (v10)
  {
    v12 = 1;
    goto LABEL_25;
  }

  v13 = [objc_msgSend(v9 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v13, v13 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  v43 = v8;
  if (!*(&v46 + 1))
  {
    sub_218806FD0(&v47);
    goto LABEL_11;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v14 = 0;
    v16 = 0;
    goto LABEL_12;
  }

  v14 = v44;
  v15 = [v44 integerValue];
  if (v15 == -1)
  {

    goto LABEL_23;
  }

  v16 = v15;
LABEL_12:
  if (objc_getAssociatedObject(v13, ~v16))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  if (!*(&v46 + 1))
  {
    sub_218806FD0(&v47);
LABEL_20:

    if ((v16 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_23:
    v21 = [objc_msgSend(v9 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v22 = sub_219BF53D4();
    v12 = [v21 containsTagID_];

    goto LABEL_24;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v17 = v44;
  v18 = a1;
  v19 = [v17 integerValue];

  v20 = v19 ^ v16;
  a1 = v18;
  if (v20)
  {
    goto LABEL_23;
  }

LABEL_21:
  v12 = 0;
LABEL_24:
  v8 = v43;
LABEL_25:
  v23 = *(v2 + *(v5 + 36));
  v24 = sub_219BF53D4();
  v25 = [v23 hasSubscriptionToTagID_];

  v26 = v12 & v25;
  sub_218F63B38(v2, v8, type metadata accessor for NewspaperTodayFeedGroupEmitter);

  v27 = sub_219BE5414();
  v28 = a1;
  v29 = sub_219BF6214();

  if (os_log_type_enabled(v27, v29))
  {
    v30 = v8;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v41 = v28;
    v33 = v32;
    *&v47 = v32;
    *v31 = 136447234;
    v34 = (v30 + *(v5 + 48));
    v42 = v12;
    v35 = a2;
    v37 = *v34;
    v36 = v34[1];

    sub_218F5AF68(v30, type metadata accessor for NewspaperTodayFeedGroupEmitter);
    v38 = sub_2186D1058(v37, v36, &v47);

    *(v31 + 4) = v38;
    *(v31 + 12) = 2080;
    v39 = v35;
    v26 = v12 & v25;
    *(v31 + 14) = sub_2186D1058(v41, v39, &v47);
    *(v31 + 22) = 1024;
    *(v31 + 24) = v25 & 1;
    *(v31 + 28) = 1024;
    *(v31 + 30) = v42;
    *(v31 + 34) = 1024;
    *(v31 + 36) = v26;
    _os_log_impl(&dword_2186C1000, v27, v29, "%{public}s emitter eligibility for channel=%s subscribed=%{BOOL}d access=%{BOOL}d eligible=%{BOOL}d", v31, 0x28u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v33, -1, -1);
    MEMORY[0x21CECF960](v31, -1, -1);
  }

  else
  {

    sub_218F5AF68(v8, type metadata accessor for NewspaperTodayFeedGroupEmitter);
  }

  return v26;
}

uint64_t sub_218F621B8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for NewspaperTodayFeedGroupEmitter();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + *(v6 + 36));
  v10 = sub_219BF53D4();
  v11 = [v9 hasSubscriptionToTagID_];

  v12 = sub_219BF53D4();
  v13 = [v9 hasAutoFavoriteSubscriptionForTagID_];

  sub_218F63B38(v2, v8, type metadata accessor for NewspaperTodayFeedGroupEmitter);

  v14 = sub_219BE5414();
  v15 = sub_219BF6214();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v11 | v13;
    v17 = v16;
    v18 = swift_slowAlloc();
    v27 = v11;
    v19 = v18;
    v29 = v18;
    *v17 = 136447234;
    v20 = &v8[*(v5 + 48)];
    v22 = *v20;
    v21 = v20[1];

    sub_218F5AF68(v8, type metadata accessor for NewspaperTodayFeedGroupEmitter);
    v23 = sub_2186D1058(v22, v21, &v29);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_2186D1058(a1, a2, &v29);
    *(v17 + 22) = 1024;
    v24 = v28;
    *(v17 + 24) = v27;
    *(v17 + 28) = 1024;
    *(v17 + 30) = v13 & 1;
    *(v17 + 34) = 1024;
    *(v17 + 36) = v24 & 1;
    _os_log_impl(&dword_2186C1000, v14, v15, "%{public}s emitter eligibility for channel=%s subscribed=%{BOOL}d autofavorite=%{BOOL}d eligible=%{BOOL}d", v17, 0x28u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v19, -1, -1);
    MEMORY[0x21CECF960](v17, -1, -1);

    v25 = v24;
  }

  else
  {

    sub_218F5AF68(v8, type metadata accessor for NewspaperTodayFeedGroupEmitter);
    v25 = v11 | v13;
  }

  return v25 & 1;
}

uint64_t sub_218F62468(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_219BF11F4();
        v6 = sub_219BF5A34();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_219BF11F4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_218F62834(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_218F62594(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_218F62594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_219BF11F4();
  v9 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v49 = &v35 - v12;
  result = MEMORY[0x28223BE20](v11);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v14 + 16);
    v47 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v43 = (v14 + 32);
    v44 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v38 = v21;
    v39 = v20;
    v22 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v48;
      v25 = v46;
      v46(v48, v21, v8);
      v26 = v49;
      v25(v49, v23, v8);
      sub_219BF11D4();
      v28 = v27;
      sub_219BF11D4();
      v30 = v29;
      v31 = *v18;
      (*v18)(v26, v8);
      result = v31(v24, v8);
      if (v30 >= v28)
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = v40 + v36;
        v20 = v39 - 1;
        v21 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v23, v33, v8);
      v23 += v42;
      v21 += v42;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218F62834(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v124 = a1;
  v9 = sub_219BF11F4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v126 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v137 = &v121 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v143 = &v121 - v16;
  result = MEMORY[0x28223BE20](v15);
  v142 = &v121 - v18;
  v134 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_134;
    }

    a3 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_128:
      result = sub_218C81048(a3);
    }

    v144 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v134)
      {
        v117 = *(result + 16 * a3);
        v118 = result;
        v119 = *(result + 16 * (a3 - 1) + 40);
        sub_218F63244(&(*v134)[v10[9] * v117], &(*v134)[v10[9] * *(result + 16 * (a3 - 1) + 32)], &(*v134)[v10[9] * v119], v5);
        if (v6)
        {
        }

        if (v119 < v117)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_218C81048(v118);
        }

        if (a3 - 2 >= *(v118 + 2))
        {
          goto LABEL_122;
        }

        v120 = &v118[16 * a3];
        *v120 = v117;
        *(v120 + 1) = v119;
        v144 = v118;
        sub_218C80FBC(a3 - 1);
        result = v144;
        a3 = *(v144 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v140 = (v10 + 1);
  v141 = v10 + 2;
  v139 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v133 = v10;
  v123 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v127 = v21;
    if (v20 + 1 >= v19)
    {
      v38 = v20 + 1;
    }

    else
    {
      v135 = v19;
      v128 = v6;
      v24 = v10[9];
      v5 = &(*v134)[v24 * v23];
      v131 = *v134;
      v25 = v131;
      v26 = v10[2];
      v27 = v142;
      v26(v142, &v131[v24 * v23], v9);
      v28 = &v25[v24 * v22];
      v29 = v143;
      v136 = v26;
      v26(v143, v28, v9);
      sub_219BF11D4();
      v31 = v30;
      sub_219BF11D4();
      v33 = v32;
      v34 = v22;
      v35 = v10[1];
      a3 = v140;
      v35(v29, v9);
      v132 = v35;
      result = (v35)(v27, v9);
      v122 = v34;
      v36 = v34 + 2;
      v138 = v24;
      v37 = &v131[v24 * (v34 + 2)];
      while (1)
      {
        v38 = v135;
        if (v135 == v36)
        {
          break;
        }

        a3 = v142;
        v39 = v136;
        v136(v142, v37, v9);
        v40 = v143;
        v39(v143, v5, v9);
        sub_219BF11D4();
        v42 = v41;
        sub_219BF11D4();
        v44 = v43;
        v45 = v132;
        (v132)(v40, v9);
        result = v45(a3, v9);
        v10 = v133;
        ++v36;
        v37 += v138;
        v5 += v138;
        if (v33 < v31 == v44 >= v42)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v46 = v127;
      v6 = v128;
      a4 = v123;
      v22 = v122;
      if (v33 < v31)
      {
        if (v38 < v122)
        {
          goto LABEL_125;
        }

        if (v122 < v38)
        {
          v47 = v38;
          a3 = v138 * (v38 - 1);
          v5 = v38 * v138;
          v135 = v38;
          v48 = v122 * v138;
          do
          {
            if (v22 != --v47)
            {
              v128 = v6;
              v49 = *v134;
              if (!*v134)
              {
                goto LABEL_131;
              }

              v50 = *v139;
              (*v139)(v126, &v49[v48], v9, v46);
              if (v48 < a3 || &v49[v48] >= &v49[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v50)(&v49[a3], v126, v9);
              v46 = v127;
              v6 = v128;
            }

            ++v22;
            a3 -= v138;
            v5 -= v138;
            v48 += v138;
          }

          while (v22 < v47);
          v10 = v133;
          a4 = v123;
          v22 = v122;
          v38 = v135;
        }
      }
    }

    v51 = v134[1];
    if (v38 < v51)
    {
      if (__OFSUB__(v38, v22))
      {
        goto LABEL_124;
      }

      if (v38 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = v134[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v38 != v5)
        {
          break;
        }
      }
    }

    v5 = v38;
    if (v38 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v127;
    }

    else
    {
      result = sub_2191F6B60(0, *(v127 + 2) + 1, 1, v127);
      v21 = result;
    }

    a3 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a3 + 1;
    if (a3 >= v52 >> 1)
    {
      result = sub_2191F6B60((v52 > 1), a3 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a3];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v124;
    if (!*v124)
    {
      goto LABEL_133;
    }

    v129 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v53)
        {
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
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v134)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a3 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_218F63244(&(*v134)[v10[9] * v94], &(*v134)[v10[9] * *&v21[16 * v5 + 32]], &(*v134)[v10[9] * v95], v55);
        if (v6)
        {
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_218C81048(v93);
        }

        if (a3 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a3];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v144 = v93;
        result = sub_218C80FBC(v5);
        v21 = v144;
        v53 = *(v144 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v134[1];
    v20 = v129;
    a4 = v123;
    if (v129 >= v19)
    {
      goto LABEL_95;
    }
  }

  v128 = v6;
  v97 = *v134;
  v98 = v10[9];
  v138 = v10[2];
  v99 = &v97[v98 * (v38 - 1)];
  v100 = v22;
  v101 = -v98;
  v122 = v100;
  v102 = (v100 - v38);
  v136 = v97;
  v125 = v98;
  v103 = &v97[v38 * v98];
  v129 = v5;
LABEL_85:
  v135 = v38;
  v130 = v103;
  v131 = v102;
  v104 = v103;
  v132 = v99;
  while (1)
  {
    v105 = v142;
    v106 = v138;
    (v138)(v142, v104, v9);
    v107 = v143;
    v106(v143, v99, v9);
    sub_219BF11D4();
    v109 = v108;
    sub_219BF11D4();
    v111 = v110;
    v112 = *v140;
    (*v140)(v107, v9);
    v113 = v105;
    a3 = v9;
    result = v112(v113, v9);
    if (v111 >= v109)
    {
LABEL_84:
      v38 = v135 + 1;
      v99 = &v132[v125];
      v102 = v131 - 1;
      v5 = v129;
      v103 = &v130[v125];
      if (v135 + 1 != v129)
      {
        goto LABEL_85;
      }

      v6 = v128;
      v10 = v133;
      v22 = v122;
      if (v129 < v122)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v136)
    {
      break;
    }

    v114 = *v139;
    v115 = v137;
    (*v139)(v137, v104, v9);
    swift_arrayInitWithTakeFrontToBack();
    v114(v99, v115, v9);
    v99 += v101;
    v104 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_218F63244(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = sub_219BF11F4();
  v8 = *(v65 - 8);
  v9 = MEMORY[0x28223BE20](v65);
  v64 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v63 = &v53 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v68 = a1;
  v67 = a4;
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

    v34 = a4 + v18;
    if (v18 >= 1)
    {
      v35 = -v14;
      v57 = a4;
      v58 = (v8 + 16);
      v55 = (v8 + 8);
      v56 = a1;
      v36 = v34;
      v59 = -v14;
      do
      {
        v54 = v34;
        v37 = a2;
        v38 = a2 + v35;
        v61 = v37;
        v62 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v68 = v37;
            v66 = v54;
            goto LABEL_58;
          }

          v40 = a3;
          v60 = v34;
          v41 = a3 + v35;
          v42 = v36 + v35;
          v43 = *v58;
          v44 = v63;
          v45 = v65;
          (*v58)(v63, v42, v65);
          v46 = v38;
          v47 = v64;
          (v43)(v64, v46, v45);
          sub_219BF11D4();
          v49 = v48;
          sub_219BF11D4();
          v51 = v50;
          v52 = *v55;
          (*v55)(v47, v45);
          v52(v44, v45);
          if (v51 < v49)
          {
            break;
          }

          v34 = v42;
          a3 = v41;
          if (v40 < v36 || v41 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v62;
            a1 = v56;
          }

          else
          {
            v38 = v62;
            a1 = v56;
            if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v42;
          v39 = v42 > v57;
          v35 = v59;
          v37 = v61;
          if (!v39)
          {
            a2 = v61;
            goto LABEL_57;
          }
        }

        a3 = v41;
        if (v40 < v61 || v41 >= v61)
        {
          a2 = v62;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v56;
          v35 = v59;
          v34 = v60;
        }

        else
        {
          a2 = v62;
          a1 = v56;
          v35 = v59;
          v34 = v60;
          if (v40 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v36 > v57);
    }

LABEL_57:
    v68 = a2;
    v66 = v34;
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

    v62 = a4 + v17;
    v66 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v20 = *(v8 + 16);
      v60 = a3;
      v61 = v8 + 16;
      v58 = (v8 + 8);
      v59 = v20;
      v21 = v64;
      do
      {
        v22 = a1;
        v23 = v63;
        v24 = a2;
        v25 = v65;
        v26 = a2;
        v27 = v59;
        (v59)(v63, v24, v65);
        v27(v21, a4, v25);
        sub_219BF11D4();
        v29 = v28;
        sub_219BF11D4();
        v31 = v30;
        v32 = *v58;
        (*v58)(v21, v25);
        v32(v23, v25);
        if (v31 >= v29)
        {
          v33 = v22;
          if (v22 < a4 || v22 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v26;
          }

          else
          {
            a2 = v26;
            if (v22 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = a4 + v14;
          a4 += v14;
        }

        else
        {
          a2 = v26 + v14;
          v33 = v22;
          if (v22 < v26 || v22 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v22 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v33 + v14;
        v68 = a1;
      }

      while (a4 < v62 && a2 < v60);
    }
  }

LABEL_58:
  sub_2189F193C(&v68, &v67, &v66);
  return 1;
}

uint64_t sub_218F637E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F6384C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for NewspaperTodayFeedGroupEmitter() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_219BF2034() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for ChannelHeadlineServiceResult() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2187608D4;

  return sub_218F5F120(a1, v1 + v6, v13, v1 + v9, v1 + v12);
}

uint64_t sub_218F63A34(uint64_t a1, uint64_t a2)
{
  sub_2186D8AB4(0, &qword_280E903B0, MEMORY[0x277D339D0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F63B38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F63BE4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a3;
  v105 = a2;
  v97 = a1;
  v107 = a4;
  v4 = MEMORY[0x277D32318];
  sub_218F65138(0, &qword_280E91860, MEMORY[0x277D32318]);
  v6 = v5;
  v109 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v96 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v101 = &v95 - v9;
  v10 = MEMORY[0x277D321A0];
  sub_218F65138(0, &qword_280E91A20, MEMORY[0x277D321A0]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v98 = &v95 - v17;
  v106 = type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs();
  v108 = *(v106 - 8);
  v18 = MEMORY[0x28223BE20](v106);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v100 = &v95 - v21;
  sub_218F651D4(0, &unk_280E91850, &qword_280E91860, v4);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v95 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v99 = &v95 - v30;
  MEMORY[0x28223BE20](v29);
  v103 = &v95 - v31;
  sub_218F651D4(0, &unk_280E91A10, &qword_280E91A20, v10);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v35 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v95 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v95 - v40;
  MEMORY[0x28223BE20](v39);
  v104 = &v95 - v42;
  sub_218F6522C();
  MEMORY[0x28223BE20](v43 - 8);
  v46 = &v95 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v44)
  {
    v104 = v16;
    v105 = v25;
    (*(v13 + 56))(v38, 1, 1, v12);
    v65 = v109;
    (*(v109 + 56))(v28, 1, 1, v6);
    sub_218F65284(v38, v35, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v66 = *(v13 + 48);
    v67 = v66(v35, 1, v12);
    v108 = v6;
    if (v67 == 1)
    {
      v68 = v20;
      if (qword_280E91AC8 != -1)
      {
        swift_once();
      }

      v69 = __swift_project_value_buffer(v12, qword_280F61830);
      v70 = v104;
      (*(v13 + 16))(v104, v69, v12);
      v71 = v66(v35, 1, v12);
      v72 = v70;
      v73 = v105;
      if (v71 != 1)
      {
        sub_218F652F4(v35, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v72 = v104;
      (*(v13 + 32))(v104, v35, v12);
      v68 = v20;
      v73 = v105;
    }

    (*(v13 + 32))(v68, v72, v12);
    sub_218F65284(v28, v73, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v84 = *(v65 + 48);
    v85 = v108;
    if (v84(v73, 1, v108) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig();
      sub_218F65718(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      v86 = v96;
      v85 = v108;
      sub_219BEEC74();
      if (v84(v73, 1, v85) != 1)
      {
        sub_218F652F4(v73, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v86 = v96;
      (*(v65 + 32))(v96, v73, v85);
    }

    v87 = v106;
    (*(v65 + 32))(&v68[*(v106 + 20)], v86, v85);
    sub_219BF5CF4();
    *&v110 = v88 * 12.0;
    sub_2186ECA28();
    swift_allocObject();
    *&v68[v87[6]] = sub_219BEF534();
    LOBYTE(v110) = 1;
    sub_2186F95C4();
    swift_allocObject();
    *&v68[v87[7]] = sub_219BEF534();
    LOBYTE(v110) = 0;
    swift_allocObject();
    *&v68[v87[8]] = sub_219BEF534();
    LOBYTE(v110) = 0;
    swift_allocObject();
    *&v68[v87[9]] = sub_219BEF534();
    sub_219BF5D04();
    v110 = v89;
    swift_allocObject();
    *&v68[v87[10]] = sub_219BEF534();
    sub_218D39A04(0, &qword_280E8BAF0, MEMORY[0x277D84560]);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_219C09EC0;
    if (qword_280EB0610 != -1)
    {
      v94 = v90;
      swift_once();
      v90 = v94;
    }

    v91 = byte_280F61A98 | 0x80;
    *(v90 + 32) = qword_280F61A90;
    *(v90 + 40) = v91;
    *(v90 + 48) = 5;
    *(v90 + 56) = 0;
    v110 = v90;
    sub_218D398D0();
    swift_allocObject();
    *&v68[v87[11]] = sub_219BEF534();
    v110 = 1;
    sub_2186F9548();
    swift_allocObject();
    *&v68[v87[12]] = sub_219BEF534();
    v110 = 1;
    swift_allocObject();
    *&v68[v87[13]] = sub_219BEF534();
    v110 = 1;
    swift_allocObject();
    *&v68[v87[14]] = sub_219BEF534();
    v110 = 3;
    swift_allocObject();
    *&v68[v87[15]] = sub_219BEF534();
    *&v110 = 0.0;
    swift_allocObject();
    *&v68[v87[16]] = sub_219BEF534();
    v110 = 4;
    swift_allocObject();
    v92 = sub_219BEF534();
    sub_218F652F4(v28, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_218F652F4(v38, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *&v68[v87[17]] = v92;
    v53 = v68;
    return sub_218F65350(v53, v107);
  }

  v47 = v6;
  v48 = v102;
  if (*(v102 + 16))
  {
    v49 = &v95 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    v50 = sub_21870F700(v97, v44);
    v46 = v49;
    if (v51)
    {
      v52 = v108;
      sub_218F65410(*(v48 + 56) + *(v108 + 72) * v50, v49);
      (*(v52 + 56))(v49, 0, 1, v106);
      v53 = v49;
      return sub_218F65350(v53, v107);
    }
  }

  v54 = *(v108 + 56);
  v105 = v46;
  v55 = v106;
  v54(v46, 1, 1, v106);
  v56 = v104;
  (*(v13 + 56))(v104, 1, 1, v12);
  v57 = v103;
  (*(v109 + 56))(v103, 1, 1, v6);
  sub_218F65284(v56, v41, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
  v58 = *(v13 + 48);
  if (v58(v41, 1, v12) == 1)
  {
    v60 = v100;
    v59 = v101;
    if (qword_280E91AC8 != -1)
    {
      swift_once();
    }

    v61 = __swift_project_value_buffer(v12, qword_280F61830);
    v62 = v98;
    (*(v13 + 16))(v98, v61, v12);
    v63 = v58(v41, 1, v12);
    v64 = v62;
    v57 = v103;
    if (v63 != 1)
    {
      sub_218F652F4(v41, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    }
  }

  else
  {
    v64 = v98;
    (*(v13 + 32))(v98, v41, v12);
    v60 = v100;
    v59 = v101;
  }

  (*(v13 + 32))(v60, v64, v12);
  v74 = v99;
  sub_218F65284(v57, v99, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
  v75 = v109;
  v76 = *(v109 + 48);
  if (v76(v74, 1, v47) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_218F65718(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    sub_219BEEC74();
    if (v76(v74, 1, v47) != 1)
    {
      sub_218F652F4(v74, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    }
  }

  else
  {
    (*(v75 + 32))(v59, v74, v47);
  }

  (*(v75 + 32))(v60 + v55[5], v59, v47);
  sub_219BF5CF4();
  *&v110 = v77 * 12.0;
  sub_2186ECA28();
  swift_allocObject();
  *(v60 + v55[6]) = sub_219BEF534();
  LOBYTE(v110) = 1;
  sub_2186F95C4();
  swift_allocObject();
  *(v60 + v55[7]) = sub_219BEF534();
  LOBYTE(v110) = 0;
  swift_allocObject();
  *(v60 + v55[8]) = sub_219BEF534();
  LOBYTE(v110) = 0;
  swift_allocObject();
  *(v60 + v55[9]) = sub_219BEF534();
  sub_219BF5D04();
  v110 = v78;
  swift_allocObject();
  *(v60 + v55[10]) = sub_219BEF534();
  sub_218D39A04(0, &qword_280E8BAF0, MEMORY[0x277D84560]);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_219C09EC0;
  if (qword_280EB0610 != -1)
  {
    v93 = v79;
    swift_once();
    v79 = v93;
  }

  v80 = byte_280F61A98 | 0x80;
  *(v79 + 32) = qword_280F61A90;
  *(v79 + 40) = v80;
  *(v79 + 48) = 5;
  *(v79 + 56) = 0;
  v110 = v79;
  sub_218D398D0();
  swift_allocObject();
  *(v60 + v55[11]) = sub_219BEF534();
  v110 = 1;
  sub_2186F9548();
  swift_allocObject();
  *(v60 + v55[12]) = sub_219BEF534();
  v110 = 1;
  swift_allocObject();
  *(v60 + v55[13]) = sub_219BEF534();
  v110 = 1;
  swift_allocObject();
  *(v60 + v55[14]) = sub_219BEF534();
  v110 = 3;
  swift_allocObject();
  *(v60 + v55[15]) = sub_219BEF534();
  *&v110 = 0.0;
  swift_allocObject();
  *(v60 + v55[16]) = sub_219BEF534();
  v110 = 4;
  swift_allocObject();
  v81 = sub_219BEF534();
  sub_218F652F4(v57, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
  sub_218F652F4(v104, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
  *(v60 + v55[17]) = v81;
  sub_218F65350(v60, v107);
  v82 = v105;
  result = (*(v108 + 48))(v105, 1, v55);
  if (result != 1)
  {
    return sub_218F653B4(v82);
  }

  return result;
}

uint64_t sub_218F64DA0(void *a1, uint64_t a2)
{
  sub_218F65604(0, &qword_280E8C440, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F64FCC();
  sub_219BF7B44();
  v10[1] = a2;
  sub_218F65020();
  sub_218F65088();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218F64F00(uint64_t a1)
{
  v2 = sub_218F64FCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F64F3C(uint64_t a1)
{
  v2 = sub_218F64FCC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218F64F78@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_218F65474(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_218F64FCC()
{
  result = qword_280EB3940[0];
  if (!qword_280EB3940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB3940);
  }

  return result;
}

void sub_218F65020()
{
  if (!qword_280E8FB60)
  {
    type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs();
    v0 = sub_219BF52A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FB60);
    }
  }
}

unint64_t sub_218F65088()
{
  result = qword_280E8FB58;
  if (!qword_280E8FB58)
  {
    sub_218F65020();
    sub_218F65718(&qword_280E9CE20, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FB58);
  }

  return result;
}

void sub_218F65138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig();
    v7 = sub_218F65718(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_218F651D4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_218F65138(255, a3, a4);
    v5 = sub_219BF6FB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_218F6522C()
{
  if (!qword_280E9CDA8[0])
  {
    type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, qword_280E9CDA8);
    }
  }
}

uint64_t sub_218F65284(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_218F651D4(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_218F652F4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_218F651D4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_218F65350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F653B4(uint64_t a1)
{
  sub_218F6522C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218F65410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218F65474(void *a1)
{
  sub_218F65604(0, &qword_280E8CC08, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F64FCC();
  sub_219BF7B34();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_218F65020();
    sub_218F65668();
    sub_219BF7674();
    v8 = v11;
    if (!v11)
    {
      v8 = sub_2194B0200(MEMORY[0x277D84F90]);
    }

    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

void sub_218F65604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F64FCC();
    v7 = a3(a1, &type metadata for NewspaperTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218F65668()
{
  result = qword_280E8FB50;
  if (!qword_280E8FB50)
  {
    sub_218F65020();
    sub_218F65718(&qword_280E9CE18, type metadata accessor for NewspaperTodayFeedGroupSubtypeKnobs);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FB50);
  }

  return result;
}

uint64_t sub_218F65718(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218F65774()
{
  result = qword_27CC13BA8;
  if (!qword_27CC13BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13BA8);
  }

  return result;
}

unint64_t sub_218F657CC()
{
  result = qword_280EB3930;
  if (!qword_280EB3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB3930);
  }

  return result;
}

unint64_t sub_218F65824()
{
  result = qword_280EB3938;
  if (!qword_280EB3938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB3938);
  }

  return result;
}

uint64_t sub_218F65878(uint64_t a1, uint64_t a2, int a3)
{
  v53 = a3;
  v5 = MEMORY[0x277D83D88];
  sub_218F663C4(0, &qword_280EE8028, MEMORY[0x277D2F260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v42 - v7;
  v8 = sub_219BE1444();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F663C4(0, &qword_280EE7F58, MEMORY[0x277D2F890], v5);
  MEMORY[0x28223BE20](v10 - 8);
  v47 = &v42 - v11;
  v12 = sub_219BE1714();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x277D2D8A8];
  sub_218F663C4(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], v5);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_219BDF0E4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v43 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDD2D4();
  sub_218F66428(&unk_280EE8ED0, MEMORY[0x277CEAED0]);
  sub_219BDCCC4();
  v20 = type metadata accessor for ContinueReadingPromptExposureData();
  sub_219BE1524();
  sub_218F66428(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v21 = a2;
  v22 = v20;
  sub_219BDCCC4();
  sub_218F662C8(a2 + *(v20 + 24), v16, &unk_280EE88A0, v46);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_218F66348(v16, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  }

  else
  {
    v23 = v43;
    (*(v18 + 32))(v43, v16, v17);
    sub_218F66428(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
    sub_219BDCCC4();
    (*(v18 + 8))(v23, v17);
  }

  v24 = v21 + *(v20 + 28);
  v25 = v47;
  sub_218F662C8(v24, v47, &qword_280EE7F58, MEMORY[0x277D2F890]);
  v27 = v48;
  v26 = v49;
  v28 = (*(v48 + 48))(v25, 1, v49);
  v30 = v51;
  v29 = v52;
  v31 = v50;
  if (v28 == 1)
  {
    sub_218F66348(v25, &qword_280EE7F58, MEMORY[0x277D2F890]);
  }

  else
  {
    v32 = v25;
    v33 = v44;
    (*(v27 + 32))(v44, v32, v26);
    sub_218F66428(&unk_280EE7F60, MEMORY[0x277D2F890]);
    sub_219BDCCC4();
    (*(v27 + 8))(v33, v26);
  }

  sub_218F662C8(v21 + *(v22 + 32), v31, &qword_280EE8028, MEMORY[0x277D2F260]);
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    sub_218F66348(v31, &qword_280EE8028, MEMORY[0x277D2F260]);
  }

  else
  {
    v34 = *(v30 + 32);
    v49 = "ntinueReadingPromptTracker";
    v35 = v45;
    v34(v45, v31, v29);
    sub_218F663C4(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v36 = sub_219BDCD44();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_219C09BA0;
    (*(v37 + 104))(v39 + v38, *MEMORY[0x277CEAD18], v36);
    sub_218F66428(&unk_280EE8030, MEMORY[0x277D2F260]);
    sub_219BDCCC4();

    (*(v30 + 8))(v35, v29);
  }

  sub_219BDF824();
  sub_218F66428(&unk_280EE8650, MEMORY[0x277D2DD98]);
  sub_219BDCCC4();
  sub_219BE06D4();
  sub_218F66428(&unk_280EE8350, MEMORY[0x277D2E6F8]);
  sub_219BDCCC4();
  sub_219BE0F44();
  memset(v54, 0, sizeof(v54));
  v40 = swift_allocObject();
  *(v40 + 16) = v53;
  *(v40 + 24) = a1;
  sub_218F66428(&unk_280EE8140, MEMORY[0x277D2EE08]);

  sub_219BDCCE4();

  return sub_218806FD0(v54);
}

uint64_t sub_218F66224(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_219BE06D4();
    sub_218F66428(&unk_280EE8350, MEMORY[0x277D2E6F8]);
    return sub_219BDCC44();
  }

  return result;
}

uint64_t sub_218F662C8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218F663C4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218F66348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218F663C4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_218F663C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F66428(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SharedWithYouFeedExpandRequest()
{
  result = qword_27CC13BB0;
  if (!qword_27CC13BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218F664F8()
{
  if (!qword_280E922B0)
  {
    type metadata accessor for SportsScoresTagFeedGroupConfigData();
    sub_218F6B5DC(&qword_280E9E958, type metadata accessor for SportsScoresTagFeedGroupConfigData);
    sub_218F6B5DC(&qword_280E9E960, type metadata accessor for SportsScoresTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E922B0);
    }
  }
}

uint64_t type metadata accessor for SportsScoresTagFeedGroupEmitter()
{
  result = qword_280EA7D70;
  if (!qword_280EA7D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218F66624()
{
  sub_218F664F8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsScoresTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186C709C(319, &qword_280EE9F20);
        if (v3 <= 0x3F)
        {
          type metadata accessor for SportsScoreSorter();
          if (v4 <= 0x3F)
          {
            sub_2186C709C(319, &unk_280E8FE20);
            if (v5 <= 0x3F)
            {
              sub_2186C709C(319, qword_280EC7670);
              if (v6 <= 0x3F)
              {
                sub_2186C709C(319, qword_280EA48C0);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_218F667B0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SportsScoresTagFeedGroupEmitter();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_218EEE328();
  v10 = v9;
  v36 = v2;
  v37 = a1;
  v32 = v2;
  v38 = v8;
  v39 = v9;
  v31 = v9;
  sub_219BF4CD4();
  v29[1] = sub_219BE3204();
  v34 = type metadata accessor for SportsScoresTagFeedGroupEmitter;
  sub_218F6B624(v2, v7, type metadata accessor for SportsScoresTagFeedGroupEmitter);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v33 = v11 + v6;
  v12 = (v11 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v30 = v11;
  sub_218F6AEE0(v7, v14 + v11);
  *(v14 + v12) = a1;
  v15 = v14 + v13;
  v35 = v8;
  *v15 = v8;
  *(v15 + 8) = v10;
  swift_unknownObjectRetain();

  v16 = sub_219BE2E54();
  sub_218ACC4E4(0);
  sub_219BE2F64();

  v17 = v32;
  sub_218F6B624(v32, v7, v34);
  v18 = swift_allocObject();
  sub_218F6AEE0(v7, v18 + v11);
  *(v18 + v12) = a1;
  v19 = v18 + v13;
  *v19 = v35;
  *(v19 + 8) = v31;

  swift_unknownObjectRetain();
  v20 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v21 = v34;
  sub_218F6B624(v17, v7, v34);
  v22 = swift_allocObject();
  v23 = v30;
  sub_218F6AEE0(v7, v22 + v30);
  *(v22 + v12) = a1;

  v24 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_218F6B624(v17, v7, v21);
  v25 = swift_allocObject();
  sub_218F6AEE0(v7, v25 + v23);
  v26 = sub_219BE2E54();
  v27 = sub_219BE3064();
  swift_unknownObjectRelease();

  return v27;
}

uint64_t sub_218F66B68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218F664F8();
  v6 = v5;
  v7 = swift_allocBox();
  result = (*(*(v6 - 8) + 16))(v8, v2 + *(a1 + 20), v6);
  *a2 = v7 | 0x3000000000000002;
  return result;
}

uint64_t sub_218F66BF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  a2[3] = type metadata accessor for SportsScoresTagFeedGroupKnobs();
  a2[4] = sub_218F6B5DC(&qword_280EAEA10, type metadata accessor for SportsScoresTagFeedGroupKnobs);
  a2[5] = sub_218F6B5DC(&qword_27CC13BD8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218F6B624(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsScoresTagFeedGroupKnobs);
}

unint64_t sub_218F66CC0(uint64_t a1)
{
  v3 = sub_219BF0BD4();
  v33 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for SportsScoresTagFeedGroupEmitter() + 24);
  LOBYTE(v43) = 14;
  sub_2189AD5C8();
  v35 = v7;
  v36 = a1;
  v42 = sub_219BEE964();
  v39 = MEMORY[0x277D84560];
  sub_218F6B1C0(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v37 = v8;
  v9 = *(v8 - 8);
  v38 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v40 = 2 * v38;
  v11 = swift_allocObject();
  v41 = v11;
  *(v11 + 16) = xmmword_219C0B8C0;
  v12 = (v11 + v10);
  type metadata accessor for SportsScoresTagFeedGroupKnobs();
  sub_219BEF134();
  v13 = sub_219BEEDF4();
  v14 = *(v4 + 8);
  v32[1] = v4 + 8;
  v34 = v14;
  v14(v6, v3);
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_219BF7314();

  v43 = 0xD00000000000001BLL;
  v44 = 0x8000000219CE4670;
  sub_218A80DA8();
  v15 = sub_219BF5D54();
  MEMORY[0x21CECC330](v15);

  *(swift_allocObject() + 16) = v13;
  sub_218A7F1DC(0, &qword_280E91240, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v12 = sub_219BEFB94();
  v16 = *MEMORY[0x277D32308];
  v32[0] = *(v9 + 104);
  v17 = v37;
  (v32[0])(v12, v16, v37);
  sub_219BEF134();
  v18 = sub_219BEEDF4();
  v34(v6, v33);
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_219BF7314();

  v43 = 0xD00000000000001ELL;
  v44 = 0x8000000219CE4690;
  v19 = sub_219BF5D54();
  MEMORY[0x21CECC330](v19);

  *(swift_allocObject() + 16) = v18;
  swift_allocObject();
  v20 = sub_219BEFB94();
  v21 = v38;
  *(v12 + v38) = v20;
  v22 = v17;
  v23 = v17;
  v24 = v32[0];
  (v32[0])(v12 + v21, v16, v23);
  sub_218F6B1C0(0, &qword_280E8B8A0, MEMORY[0x277D32F00], v39);
  v25 = sub_219BF0644();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C09BA0;
  (*(v26 + 104))(v28 + v27, *MEMORY[0x277D32EF8], v25);
  v29 = sub_2194B3180(v28);
  swift_setDeallocating();
  (*(v26 + 8))(v28 + v27, v25);
  swift_deallocClassInstance();
  v30 = v40;
  *(v12 + v40) = v29;
  v24(v12 + v30, *MEMORY[0x277D322C8], v22);
  v43 = v42;
  sub_2191EDA0C(v41);
  return v43;
}

uint64_t sub_218F672B8@<X0>(uint64_t *a1@<X8>)
{
  sub_218F6B1C0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218F664F8();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218F6B68C(inited + 32, sub_2188317B0);
  sub_218F6B1C0(0, &qword_280EE77F0, type metadata accessor for SportsScoresTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_218F6B6EC();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_218F67444()
{
  sub_218F6B5DC(&qword_280EA7D90, type metadata accessor for SportsScoresTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_218F675D0(uint64_t a1, void *a2, char a3)
{
  v6 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_219BF4CD4();
  MEMORY[0x28223BE20](v7);
  v8 = sub_219BF0BD4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (a3 == 1)
    {
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_219C09BA0;
      v48 = 0;
      v49 = 0xE000000000000000;
      v50 = [a2 eventLeagueTag];
      sub_2186D85DC();
      sub_219BF7484();
      swift_unknownObjectRelease();
      v14 = v48;
      v15 = v49;
      *(v13 + 56) = MEMORY[0x277D837D0];
      *(v13 + 64) = sub_2186FC3BC();
      *(v13 + 32) = v14;
      *(v13 + 40) = v15;
      sub_219BF6214();
      sub_219BE5314();

      sub_218F6B58C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_219C146A0;
      *(v16 + 32) = [a2 eventLeagueTag];
      sub_219BF4CE4();
      sub_219BF4CA4();
      sub_218F6B1C0(0, &qword_27CC13BC8, MEMORY[0x277D34658], MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE3014();
    }

    else
    {
      v46[1] = v7;
      v46[2] = v3;
      v28 = v10;
      type metadata accessor for SportsScoresTagFeedGroupEmitter();
      type metadata accessor for SportsScoresTagFeedGroupKnobs();
      sub_219BEF134();
      sub_219BEF524();
      v29 = *(v9 + 8);
      v29(v12, v28);
      v46[0] = v48;
      sub_219BEF134();
      sub_219BEF524();
      v29(v12, v28);
      v30 = v48;
      sub_219BEF134();
      sub_219BEF524();
      v29(v12, v28);
      v31 = v48;
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v32 = swift_allocObject();
      v33 = MEMORY[0x277D83B88];
      *(v32 + 16) = xmmword_219C09BA0;
      v34 = MEMORY[0x277D83C10];
      *(v32 + 56) = v33;
      *(v32 + 64) = v34;
      v35 = v46[0];
      *(v32 + 32) = v46[0];
      sub_219BF6214();
      sub_219BE5314();

      MEMORY[0x28223BE20](v36);
      v46[-4] = v47;
      v46[-3] = v35;
      LOBYTE(v46[-2]) = v30;
      sub_219BE3204();
      *(swift_allocObject() + 16) = v31;
      v37 = sub_219BE2E54();
      v38 = sub_219BE2F74();

      return v38;
    }
  }

  else
  {
    sub_219BEF0B4();
    v18 = *(v48 + 16);

    v19 = *(v18 + 32);

    v20 = [v19 backingTag];

    v21 = [v20 asSports];
    swift_unknownObjectRelease();
    if (v21)
    {
      if ([v21 sportsType] == 1)
      {
        if (qword_280E8D7F8 != -1)
        {
          swift_once();
        }

        sub_2186F20D4();
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_219C09BA0;
        v48 = 0;
        v49 = 0xE000000000000000;
        v50 = v21;
        sub_2186D85DC();
        sub_219BF7484();
        v23 = v48;
        v24 = v49;
        *(v22 + 56) = MEMORY[0x277D837D0];
        *(v22 + 64) = sub_2186FC3BC();
        *(v22 + 32) = v23;
        *(v22 + 40) = v24;
        sub_219BF6214();
        sub_219BE5314();

        MEMORY[0x28223BE20](v25);
        v46[-2] = v47;
        sub_219BF29D4();
        sub_219BE3204();
        *(swift_allocObject() + 16) = v21;
        swift_unknownObjectRetain();
        v26 = sub_219BE2E54();
        v27 = sub_219BE2F74();
        swift_unknownObjectRelease();

        return v27;
      }

      else
      {
        if (qword_280E8D7F8 != -1)
        {
          swift_once();
        }

        sub_2186F20D4();
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_219C09BA0;
        v48 = 0;
        v49 = 0xE000000000000000;
        v50 = v21;
        sub_2186D85DC();
        sub_219BF7484();
        v42 = v48;
        v43 = v49;
        *(v41 + 56) = MEMORY[0x277D837D0];
        *(v41 + 64) = sub_2186FC3BC();
        *(v41 + 32) = v42;
        *(v41 + 40) = v43;
        sub_219BF6214();
        sub_219BE5314();

        sub_218F6B58C(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_219C146A0;
        *(v44 + 32) = v21;
        swift_unknownObjectRetain();
        sub_219BF4CE4();
        sub_219BF4CA4();
        sub_218F6B1C0(0, &qword_27CC13BC8, MEMORY[0x277D34658], MEMORY[0x277D6CF30]);
        swift_allocObject();
        v45 = sub_219BE3014();
        swift_unknownObjectRelease();
        return v45;
      }
    }

    else
    {
      v39 = sub_219BEEDD4();
      sub_218F6B5DC(&qword_280E917E0, MEMORY[0x277D32430]);
      swift_allocError();
      (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D323A0], v39);
      return swift_willThrow();
    }
  }
}

uint64_t sub_218F68018(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v74 = a4;
  v75 = a3;
  v67 = a2;
  v76 = sub_219BF4CD4();
  v78 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v72 = v6;
  v73 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsScoresTagFeedGroupEmitter();
  v68 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v69 = v8;
  v70 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(0);
  MEMORY[0x28223BE20](v9 - 8);
  v64 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F6B1C0(0, &unk_280E8FE40, MEMORY[0x277D34408], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v60 - v12;
  v65 = type metadata accessor for SportsConfiguringDataVisualizationRequest(0);
  MEMORY[0x28223BE20](v65);
  v79 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF0BD4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v4;
  type metadata accessor for SportsScoresTagFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v19 = *(v16 + 8);
  v19(v18, v15);
  v77 = v80;
  v20 = a1;
  sub_219BEF134();
  sub_219BEF524();
  v19(v18, v15);
  v21 = v80;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C0B8C0;
  v23 = v67;
  v24 = *(sub_219BF4CC4() + 16);

  v25 = MEMORY[0x277D83B88];
  v26 = MEMORY[0x277D83C10];
  *(v22 + 56) = MEMORY[0x277D83B88];
  *(v22 + 64) = v26;
  *(v22 + 32) = v24;
  *(v22 + 96) = v25;
  *(v22 + 104) = v26;
  *(v22 + 72) = v77;
  *(v22 + 136) = v25;
  *(v22 + 144) = v26;
  v66 = v21;
  *(v22 + 112) = v21;
  sub_219BF6214();
  sub_219BE5314();

  sub_219BEF0B4();
  v27 = *(v80 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v28 = v76;
  v62 = *(v78 + 16);
  v62(v13, v23, v76);
  v29 = *MEMORY[0x277D34400];
  v30 = sub_219BF43B4();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v13, v29, v30);
  (*(v31 + 56))(v13, 0, 1, v30);
  v32 = sub_219BF4F64();
  v33 = v64;
  (*(*(v32 - 8) + 56))(v64, 6, 6, v32);
  v34 = sub_219BF6394();
  v35 = [v27 alternativeFeedDescriptor];
  v61 = v20;
  v36 = v28;
  v37 = v33;
  v63 = v27;
  if (v35)
  {
    v38 = v35;
    v39 = [v35 feedConfiguration];
  }

  else
  {
    v39 = [v27 feedConfiguration];
  }

  v40 = v79;
  sub_218F6B224(v13, v79);
  v41 = v65;
  sub_218F6B624(v37, v40 + *(v65 + 20), type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
  v42 = (v40 + *(v41 + 24));
  *v42 = v34;
  v42[1] = v39;
  sub_218F6B68C(v37, type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
  sub_218F6B51C(v13, &unk_280E8FE40, MEMORY[0x277D34408]);
  v43 = v40 + *(v41 + 28);
  strcpy(v43, "sportsScores");
  *(v43 + 13) = 0;
  *(v43 + 14) = -5120;
  v44 = CACurrentMediaTime();
  MEMORY[0x28223BE20](v45);
  v46 = v71;
  *(&v60 - 2) = v71;
  *(&v60 - 1) = v40;
  sub_219BF4264();
  v65 = sub_219BE3204();
  v47 = v70;
  sub_218F6B624(v46, v70, type metadata accessor for SportsScoresTagFeedGroupEmitter);
  v48 = v73;
  v62(v73, v23, v36);
  v49 = (*(v68 + 80) + 33) & ~*(v68 + 80);
  v50 = (v69 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
  v52 = v78;
  v53 = (*(v78 + 80) + v51 + 8) & ~*(v78 + 80);
  v54 = (v72 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  *(v55 + 16) = v44;
  *(v55 + 24) = v75;
  *(v55 + 32) = v74;
  sub_218F6AEE0(v47, v55 + v49);
  *(v55 + v50) = v61;
  *(v55 + v51) = v66;
  (*(v52 + 32))(v55 + v53, v48, v76);
  *(v55 + v54) = v77;
  swift_unknownObjectRetain();

  v56 = sub_219BE2E54();
  sub_218ACC4E4(0);
  sub_219BE2F64();

  v57 = sub_219BE2E54();
  v58 = sub_219BE2FD4();

  sub_218F6B68C(v79, type metadata accessor for SportsConfiguringDataVisualizationRequest);
  return v58;
}

size_t sub_218F688AC(uint64_t a1, unint64_t a2, void *a3, int a4)
{
  v83 = a4;
  v82 = a3;
  v6 = MEMORY[0x277D83D88];
  sub_218F6B1C0(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v77 - v8;
  sub_218F6B1C0(0, &qword_280E90150, MEMORY[0x277D33EC8], v6);
  MEMORY[0x28223BE20](v10 - 8);
  v86 = v77 - v11;
  sub_218F6B1C0(0, &qword_280E91A70, sub_2189AD5C8, v6);
  MEMORY[0x28223BE20](v12 - 8);
  v85 = v77 - v13;
  v14 = sub_219BF2AB4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F6B1C0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v6);
  MEMORY[0x28223BE20](v18 - 8);
  v81 = v77 - v19;
  v20 = sub_219BF2034();
  v89 = *(v20 - 8);
  v90 = v20;
  MEMORY[0x28223BE20](v20);
  v88 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for SportsScoresTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v80);
  v97 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BF3484();
  v100 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = (v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = sub_219BF3C84();
  v105 = *(v79 - 8);
  v24 = MEMORY[0x28223BE20](v79);
  v98 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v78 = v77 - v26;
  v87 = a1;
  sub_219BEF0B4();
  v27 = *(v108 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v28 = [v27 backingTag];

  v84 = v28;
  v29 = [v28 asSports];
  sub_219BF4D24();
  swift_allocObject();
  v106 = sub_219BF4D04();
  sub_218F6B1C0(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v30 = *(sub_219BF3E84() - 8);
  v31 = *(v30 + 72);
  v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v33 = a2;
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_219C09EC0;
  if (a2 >> 62)
  {
    v34 = sub_219BF7214();
  }

  else
  {
    v34 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = MEMORY[0x277D84F90];
  v94 = v14;
  v92 = v15;
  v93 = v9;
  v91 = v17;
  if (v34)
  {
    v77[1] = v32;
    v108 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
      __break(1u);
      return result;
    }

    v77[0] = v31;
    v37 = v108;
    if ((v33 & 0xC000000000000001) != 0)
    {
      v102 = v33;
      v38 = 0;
      LODWORD(v101) = *MEMORY[0x277D33DF0];
      v100 += 13;
      LODWORD(v99) = *MEMORY[0x277D34130];
      v39 = (v105 + 104);
      v98 = (v105 + 32);
      v40 = v79;
      v41 = v78;
      do
      {
        MEMORY[0x21CECE0F0](v38, v102);
        v42 = swift_allocObject();
        *(v42 + 16) = sub_219BF3FE4();
        v44 = v103;
        v43 = v104;
        *v103 = v42;
        (*v100)(v44, v101, v43);
        sub_219BF1AC4();
        swift_unknownObjectRelease();
        (*v39)(v41, v99, v40);
        v108 = v37;
        v46 = *(v37 + 16);
        v45 = *(v37 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_218C34A88(v45 > 1, v46 + 1, 1);
          v41 = v78;
          v40 = v79;
          v37 = v108;
        }

        ++v38;
        *(v37 + 16) = v46 + 1;
        (*(v105 + 32))(v37 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v46, v41, v40);
      }

      while (v34 != v38);
    }

    else
    {
      v47 = v33 + 32;
      LODWORD(v102) = *MEMORY[0x277D33DF0];
      v101 = v100 + 13;
      LODWORD(v100) = *MEMORY[0x277D34130];
      v48 = (v105 + 104);
      v99 = v105 + 32;
      v49 = v79;
      v50 = v98;
      do
      {
        v51 = swift_allocObject();

        *(v51 + 16) = sub_219BF3FE4();
        v53 = v103;
        v52 = v104;
        *v103 = v51;
        (*v101)(v53, v102, v52);
        sub_219BF1AC4();

        (*v48)(v50, v100, v49);
        v108 = v37;
        v55 = *(v37 + 16);
        v54 = *(v37 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_218C34A88(v54 > 1, v55 + 1, 1);
          v50 = v98;
          v49 = v79;
          v37 = v108;
        }

        *(v37 + 16) = v55 + 1;
        (*(v105 + 32))(v37 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v55, v50, v49);
        v47 += 8;
        --v34;
      }

      while (v34);
    }

    v35 = MEMORY[0x277D84F90];
  }

  v56 = v35;
  sub_218F0B984(v35);
  sub_218F0BA7C(v56);
  sub_218F0BB90(v56);
  sub_219BF3E74();
  sub_218EEDC8C(v82, v83);
  sub_218F0B984(v56);
  sub_218F0BA7C(v56);
  sub_218F0BB90(v56);
  sub_219BF3E74();
  v57 = type metadata accessor for SportsScoresTagFeedGroupEmitter();
  v58 = (v96 + *(v57 + 28));
  v59 = v58[3];
  v104 = v58[4];
  v105 = v59;
  v103 = __swift_project_boxed_opaque_existential_1(v58, v59);
  sub_218F664F8();
  sub_219BEDD14();
  v102 = *(v80 + 20);
  v60 = sub_219BEC004();
  (*(*(v60 - 8) + 56))(v81, 1, 1, v60);
  sub_219A95188(v56);
  sub_219A95188(v56);
  sub_219A951A0(v56);
  sub_219A951B8(v56);
  sub_219A952CC(v56);
  sub_219A952E4(v56);
  sub_219A953F8(v56);
  v61 = v88;
  sub_219BF2024();
  v62 = *(v57 + 24);
  sub_2189AD5C8();
  v64 = v63;
  v65 = *(v63 - 8);
  v66 = v85;
  (*(v65 + 16))(v85, v96 + v62, v63);
  (*(v65 + 56))(v66, 0, 1, v64);
  sub_219BEF0B4();
  v67 = *(v108 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v68 = sub_219BF35D4();
  (*(*(v68 - 8) + 56))(v86, 1, 1, v68);
  LOBYTE(v107) = 14;
  sub_218A7F1DC(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v69 = *(v107 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v70 = sub_219BF2774();
  (*(*(v70 - 8) + 56))(v93, 1, 1, v70);
  v71 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v71 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v72 = v91;
  sub_219BF2A84();
  v73 = v97;
  v74 = v102;
  v75 = sub_219BF2194();
  swift_unknownObjectRelease();

  (*(v92 + 8))(v72, v94);
  (*(v89 + 8))(v61, v90);
  v76 = sub_219BF1934();
  (*(*(v76 - 8) + 8))(&v73[v74], v76);
  return v75;
}

uint64_t sub_218F69778(uint64_t a1)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F6990C(a1, v7);
  sub_218F6B624(v7, v4, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_218F6B1C0(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v8 = sub_219BE3014();
  sub_218F6B68C(v7, type metadata accessor for TagFeedGroup);
  return v8;
}

uint64_t sub_218F6990C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a2;
  sub_218F6B1C0(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = v23 - v4;
  v5 = sub_219BEF554();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v25 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = sub_219BF1904();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BED8D4();
  v26 = *(v12 - 8);
  v27 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF0B4();
  v15 = *(v30 + 16);

  v16 = *(v15 + 32);

  v24 = [v16 backingTag];

  (*(v9 + 16))(v11, a1, v8);
  type metadata accessor for SportsScoresTagFeedGroupEmitter();
  sub_218F664F8();
  v17 = sub_219BEDCB4();
  v23[1] = v18;
  v23[2] = v17;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v19 = sub_219BEE5D4();
  (*(*(v19 - 8) + 56))(v28, 1, 1, v19);
  sub_219BED854();
  v20 = v29;
  *v29 = v24;
  v21 = type metadata accessor for SportsScoresTagFeedGroup();
  (*(v26 + 32))(&v20[*(v21 + 20)], v14, v27);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218F69D28(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for SportsScoresTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a1 + *(v6 + 44)), *(a1 + *(v6 + 44) + 24));
  v7 = off_282A97438;
  type metadata accessor for MySportsTagService();
  return v7(a2, a3 & 1 | 0x100u);
}

uint64_t sub_218F69DC8(uint64_t a1)
{
  v2 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *(a1 + 8);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  if (v3 >> 62)
  {
    v5 = sub_219BF7214();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v6;
  *(v4 + 32) = v5;
  sub_219BF6214();
  sub_219BE5314();

  sub_219BF4CE4();
  return sub_219BF4CA4();
}

uint64_t sub_218F69F50(uint64_t a1)
{
  v2 = type metadata accessor for SportsScoresTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a1 + *(v2 + 40)), *(a1 + *(v2 + 40) + 24));
  return sub_219BF4434();
}

uint64_t sub_218F69FAC@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v4 - 8);
  v38 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF34F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F6B1C0(0, &qword_27CC13BD0, MEMORY[0x277D33E48], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v36 - v11;
  v37 = a1;
  v13 = [a1 identifier];
  sub_219BF5414();

  sub_219BF29A4();

  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_218F6B51C(v12, &qword_27CC13BD0, MEMORY[0x277D33E48]);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v36[1] = v2;
    v15 = sub_219BF34B4();
    v43 = *(v7 + 8);
    v44 = v7 + 8;
    v43(v12, v6);
    v16 = *(v15 + 16);
    if (v16)
    {
      v18 = *(v7 + 16);
      v17 = v7 + 16;
      v19 = *(v17 + 64);
      v36[0] = v15;
      v20 = v15 + ((v19 + 32) & ~v19);
      v41 = *(v17 + 56);
      v42 = v18;
      v21 = MEMORY[0x277D84F90];
      v40 = v17;
      v18(v9, v20, v6);
      while (1)
      {
        v23 = sub_219BF34D4();
        v25 = v24;
        v43(v9, v6);
        if (v25)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_218840D24(0, *(v21 + 2) + 1, 1, v21);
          }

          v27 = *(v21 + 2);
          v26 = *(v21 + 3);
          if (v27 >= v26 >> 1)
          {
            v21 = sub_218840D24((v26 > 1), v27 + 1, 1, v21);
          }

          *(v21 + 2) = v27 + 1;
          v22 = &v21[16 * v27];
          *(v22 + 4) = v23;
          *(v22 + 5) = v25;
        }

        v20 += v41;
        if (!--v16)
        {
          break;
        }

        v42(v9, v20, v6);
      }
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v45 = v21;
    sub_218F6B58C(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218ACCAC0();
    v14 = sub_219BF56E4();
  }

  v28 = MEMORY[0x277D837D0];
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_219C09EC0;
  v45 = 0;
  v46 = 0xE000000000000000;
  v47 = v37;
  sub_2186D85DC();
  sub_219BF7484();
  v30 = v45;
  v31 = v46;
  *(v29 + 56) = v28;
  v32 = sub_2186FC3BC();
  *(v29 + 64) = v32;
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  v33 = MEMORY[0x21CECC6D0](v14, v28);
  *(v29 + 96) = v28;
  *(v29 + 104) = v32;
  *(v29 + 72) = v33;
  *(v29 + 80) = v34;
  sub_219BF6214();
  sub_219BE5314();

  sub_219BF4CE4();
  return sub_219BF4CB4();
}

uint64_t sub_218F6A4C0(uint64_t a1, void *a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v77 = a7;
  v74 = a6;
  v81 = a1;
  v12 = sub_219BDBD34();
  v79 = *(v12 - 8);
  v80 = v12;
  MEMORY[0x28223BE20](v12);
  v78 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF0BD4();
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x28223BE20](v14);
  v70 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v16 = qword_280F61708;
  sub_2186F20D4();
  v75 = v17;
  v18 = swift_allocObject();
  v69 = xmmword_219C09BA0;
  *(v18 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v19 = MEMORY[0x277D83A80];
  *(v18 + 56) = MEMORY[0x277D839F8];
  *(v18 + 64) = v19;
  *(v18 + 32) = v20;
  sub_219BF6214();
  v71 = v16;
  sub_219BE5314();

  v21 = *(type metadata accessor for SportsScoresTagFeedGroupEmitter() + 24);
  v76 = a4;
  v22 = a4 + v21;
  v23 = type metadata accessor for SportsScoresTagFeedGroupKnobs();
  v82 = a8;
  if (a3 >= 2u)
  {
    v35 = (v22 + *(v23 + 32));
    v25 = *v35;
    v26 = v35[1];
    v27 = v35[2];
    v28 = v35[3];
    goto LABEL_8;
  }

  v24 = (v22 + *(v23 + 28));
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  if (a3 != 1)
  {
LABEL_8:
    v84 = v28;
    v85 = v27;
    v86 = v25;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    *&v69 = MEMORY[0x277D84FA0];
    goto LABEL_11;
  }

  v86 = *v24;
  swift_retain_n();
  v83 = v26;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v29 = [a2 UMCCanonicalID];
  v84 = v28;
  v85 = v27;
  if (v29)
  {
    v30 = v29;
    v68 = sub_219BF5414();
    v32 = v31;

    sub_218F6B58C(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = v69;
    *(inited + 32) = v68;
    v34 = inited + 32;
    *(inited + 40) = v32;
    *&v69 = sub_2194AD74C(inited);
    swift_setDeallocating();
    sub_2189AD3D8(v34);
  }

  else
  {
    *&v69 = MEMORY[0x277D84FA0];
  }

  v26 = v83;
LABEL_11:
  v68 = sub_218EEDF54(a2, a3);
  v88 = 0x63537374726F7073;
  v89 = 0xEF202D207365726FLL;
  sub_219BEF0B4();
  v36 = *(v87 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v37 = [v36 backingTag];

  v38 = [v37 name];
  swift_unknownObjectRelease();
  v39 = sub_219BF5414();
  v41 = v40;

  MEMORY[0x21CECC330](v39, v41);

  v66 = v89;
  v67 = v88;
  v42 = v70;
  sub_219BEF134();
  v65 = sub_219BEF264();
  v43 = sub_219BEF264();
  sub_219BEF524();
  v44 = v88;
  v45 = sub_219BF0BC4();
  v46 = sub_2194796A0(MEMORY[0x277D84FA0], v45);
  sub_219BEF524();

  v83 = v26;

  (*(v72 + 8))(v42, v73);
  *&v90 = v71;
  *(&v90 + 1) = v67;
  *&v91 = v66;
  *(&v91 + 1) = v74;
  *&v92 = v69;
  *(&v92 + 1) = v65;
  *&v93 = v43;
  *(&v93 + 1) = v44;
  *&v94 = v46;
  BYTE8(v94) = v87;
  v95 = v68;
  v97 = v68;
  v96[2] = v92;
  v96[3] = v93;
  v96[0] = v90;
  v96[1] = v91;
  v96[4] = v94;
  v47 = v71;
  CACurrentMediaTime();
  type metadata accessor for SportsScoresTagFeedGroupEmitter();
  v48 = sub_219BF4234();
  v49 = sub_219BF4CC4();
  v50 = sub_218845F78(v49);

  v51 = v78;
  sub_219BDBD24();
  v52 = sub_219AC4E80(v48, v96, v50, v51);

  (*(v79 + 8))(v51, v80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_219C0B8C0;
  v54 = sub_219BF4234();
  if (v54 >> 62)
  {
    v55 = sub_219BF7214();
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = MEMORY[0x277D83B88];
  v57 = MEMORY[0x277D83C10];
  *(v53 + 56) = MEMORY[0x277D83B88];
  *(v53 + 64) = v57;
  *(v53 + 32) = v55;
  if (v52 >> 62)
  {
    v58 = sub_219BF7214();
  }

  else
  {
    v58 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v53 + 96) = v56;
  *(v53 + 104) = v57;
  *(v53 + 72) = v58;
  sub_219BF5CD4();
  *(v53 + 136) = MEMORY[0x277D839F8];
  *(v53 + 144) = MEMORY[0x277D83A80];
  *(v53 + 112) = v59;
  sub_219BF6214();
  sub_219BE5314();

  v60 = v82;
  if (v58 >= v82)
  {
    v88 = v52;
    sub_218F6B1C0(0, &unk_280EE6AD0, sub_218ACC4E4, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v58 = sub_219BE3014();
  }

  else
  {

    v61 = sub_219BEEDD4();
    sub_218F6B5DC(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v62 = v60;
    v62[1] = v58;
    (*(*(v61 - 8) + 104))(v62, *MEMORY[0x277D32400], v61);
    swift_willThrow();
  }

  sub_218F6B454(&v90);
  return v58;
}

uint64_t sub_218F6AD80()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186C709C(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();
}

uint64_t sub_218F6AEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsScoresTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F6AF44(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsScoresTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_218F68018(*(v1 + v4), a1, *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

size_t sub_218F6AFF8(unint64_t *a1)
{
  v3 = *(type metadata accessor for SportsScoresTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_218F688AC(*(v1 + v4), *a1, *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_218F6B1C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F6B224(uint64_t a1, uint64_t a2)
{
  sub_218F6B1C0(0, &unk_280E8FE40, MEMORY[0x277D34408], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F6B2B8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + *(type metadata accessor for SportsScoresTagFeedGroupEmitter() + 48) + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 8))(v1, ObjectType, v3);
}

uint64_t sub_218F6B328(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsScoresTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_219BF4CD4() - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  return sub_218F6A4C0(a1, *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + v5), *(v1 + v6), v1 + v8, *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_218F6B51C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218F6B1C0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_218F6B58C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_218F6B5DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218F6B624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F6B68C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218F6B6EC()
{
  result = qword_280EE77F8;
  if (!qword_280EE77F8)
  {
    sub_218F6B1C0(255, &qword_280EE77F0, type metadata accessor for SportsScoresTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE77F8);
  }

  return result;
}

id sub_218F6B774(uint64_t a1)
{
  v2 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218AD8008(a1, v4, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  v5 = v4[3];
  v6 = v4[6];
  v7 = v4[7];

  sub_218F351A8(v6, v7);
  sub_2187DE3C8();
  v9 = *(v8 + 48);
  sub_218807310();
  v10 = sub_219BF6414();
  sub_2188073C8(&qword_27CC13BE0, sub_218807310);
  sub_218F6CEC0(v4 + v9, type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes);
  swift_getObjectType();
  v11 = v10;
  sub_218F6B9D0(v11, a1);

  v16 = v11;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;

  sub_219BE5834();

  return v11;
}

uint64_t sub_218F6B9D0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AD8008(a2, v10, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  v11 = *(v10 + 3);
  v18[2] = *(v10 + 2);
  v18[3] = v11;
  v19 = *(v10 + 8);
  v12 = *(v10 + 1);
  v18[0] = *v10;
  v18[1] = v12;
  sub_2187DE3C8();
  sub_218F6D070(&v10[*(v13 + 48)], v7, type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes);
  sub_218807310();
  sub_219BF5044();
  if (v3)
  {
    sub_218F6CEC0(v7, type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes);
    return sub_218F6CFC8(v18);
  }

  else
  {
    v15 = v17[1];
    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    v16 = sub_219BE8204();
    sub_2196EDA38(v18, v7, v16);
    sub_218F6CFC8(v18);

    return sub_218F6CEC0(v7, type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes);
  }
}

void sub_218F6BBAC(void *a1, void *a2)
{
  sub_218F6D01C(0, &qword_27CC13BE8, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v33 = a1;
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (!v16)
    {

      return;
    }

    v17 = v16;
    sub_219BE5824();
    if (!v35)
    {

      sub_218806FD0(aBlock);
      (*(v8 + 56))(v6, 1, 1, v7);
      goto LABEL_8;
    }

    v18 = swift_dynamicCast();
    (*(v8 + 56))(v6, v18 ^ 1u, 1, v7);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

LABEL_8:
      sub_218F6CE64(v6, &qword_27CC13BE8, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
      return;
    }

    sub_218F6D070(v6, v13, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
    v19 = *(v15 + 96);
    if (v19)
    {

      if ((sub_219BEA374() & 1) == 0)
      {
        sub_218F6CEC0(v13, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);

        goto LABEL_15;
      }

      v32 = objc_opt_self();
      sub_218AD8008(v13, v11, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
      v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v31 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
      v22 = swift_allocObject();
      v23 = v33;
      *(v22 + 16) = v15;
      *(v22 + 24) = v23;
      sub_218F6D070(v11, v22 + v20, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
      *(v22 + v31) = v19;
      *(v22 + v21) = v17;
      *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_218F6CF20;
      *(v24 + 24) = v22;
      v36 = sub_218807D50;
      v37 = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218807CE4;
      v35 = &block_descriptor_75;
      v25 = _Block_copy(aBlock);

      v26 = v33;
      v27 = v17;
      v28 = a2;

      [v32 performWithoutAnimation_];
      _Block_release(v25);

      sub_218F6CEC0(v13, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    sub_218F6CEC0(v13, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
LABEL_15:
  }
}

uint64_t sub_218F6C1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v37 = a1;
  v38 = sub_219BE9CC4();
  v6 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE8434();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AD8008(a2, v15, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_218F6CEC0(v15, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  }

  sub_2187DE694();
  v18 = *(v17 + 48);
  (*(v10 + 32))(v12, v15, v9);
  v19 = v6;
  v20 = &v15[v18];
  v21 = v38;
  (*(v6 + 32))(v8, v20, v38);
  sub_218807484();
  sub_219BF5044();
  if (v4)
  {
    (*(v6 + 8))(v8, v21);
  }

  else
  {
    v22 = v39;
    v23 = v34[10];
    v33 = v34[11];
    __swift_project_boxed_opaque_existential_1(v34 + 7, v23);
    v37 = v19;
    v34 = 0;
    v24 = v22;
    v25 = sub_219BE8204();
    sub_219BE94C4();

    v26 = sub_219BE8204();
    v27 = sub_219BE7184();

    v28 = sub_219BEA814();
    v29 = swift_allocObject();
    v30 = v35;
    v31 = v36;
    *(v29 + 16) = v35;
    *(v29 + 24) = v31;
    sub_2188202A8(v30);
    v32 = sub_219BEA804();

    (*(v37 + 8))(v8, v38);
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_218F6C548(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a1;
  v41 = a5;
  sub_218F6D01C(0, &unk_27CC13BF0, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v39 = a6;
    swift_beginAccess();
    v20 = swift_unknownObjectWeakLoadStrong();
    if (!v20)
    {

      return;
    }

    v21 = v20;
    sub_219BE5824();
    if (!v43)
    {

      sub_218806FD0(aBlock);
      (*(v12 + 56))(v10, 1, 1, v11);
      goto LABEL_8;
    }

    v22 = swift_dynamicCast();
    (*(v12 + 56))(v10, v22 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

LABEL_8:
      sub_218F6CE64(v10, &unk_27CC13BF0, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
      return;
    }

    sub_218F6D070(v10, v17, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
    v23 = *(v19 + 96);
    if (v23)
    {

      if ((sub_219BEA374() & 1) == 0)
      {
        sub_218F6CEC0(v17, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);

        goto LABEL_15;
      }

      v38 = objc_opt_self();
      sub_218AD8008(v17, v15, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
      v24 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v36 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
      v25 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
      v26 = swift_allocObject();
      v27 = v40;
      *(v26 + 16) = v19;
      *(v26 + 24) = v27;
      sub_218F6D070(v15, v26 + v24, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
      v28 = (v26 + v36);
      v29 = v39;
      *v28 = v41;
      v28[1] = v29;
      *(v26 + v37) = v23;
      *(v26 + v25) = v21;
      *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_218F6D0D8;
      *(v30 + 24) = v26;
      v44 = sub_218807CE0;
      v45 = v30;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218807CE4;
      v43 = &block_descriptor_27_0;
      v31 = _Block_copy(aBlock);

      v32 = v40;
      sub_2188202A8(v41);
      v33 = v21;
      v34 = a2;

      [v38 performWithoutAnimation_];
      _Block_release(v31);

      sub_218F6CEC0(v17, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    sub_218F6CEC0(v17, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
LABEL_15:
  }
}

void sub_218F6CB94(uint64_t a1, void *a2)
{
  v3 = sub_219BDC014();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDC104();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = MEMORY[0x277D83B88];
    sub_2186F83B8(0, &qword_280E8B660, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    v15 = [a2 indexPath];
    sub_219BDC0B4();

    v16 = sub_219BDC0F4();
    (*(v8 + 8))(v10, v7);
    *(v14 + 32) = v16;
    v18 = v14;
    sub_2188073C8(&qword_27CC10BB8, MEMORY[0x277CC9A28]);
    sub_2186F83B8(0, &unk_280E8ED80, v13, MEMORY[0x277D83940]);
    sub_218CB84C0();
    sub_219BF7164();
    v17 = sub_219BDBFC4();
    (*(v4 + 8))(v6, v3);
    [v12 reloadSections_];
  }
}

uint64_t sub_218F6CE64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218F6D01C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218F6CEC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218F6CF20()
{
  v1 = *(type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_218F6C0C4(v2, v3, v4);
}

void sub_218F6D01C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218F6D070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F6D0D8()
{
  v1 = *(type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_218F6CA8C(v3, v4, v0 + v2, v6, v7);
}

uint64_t objectdestroy_16Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_218F6D1EC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_218F6D228(char a1)
{
  if (a1)
  {
    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v1 = sub_219BE5434();
    __swift_project_value_buffer(v1, qword_27CCD8BA0);
    oslog = sub_219BE5414();
    v2 = sub_219BF61F4();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Successfully opened tap-to-radar URL";
LABEL_10:
      _os_log_impl(&dword_2186C1000, oslog, v2, v4, v3, 2u);
      MEMORY[0x21CECF960](v3, -1, -1);
    }
  }

  else
  {
    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v5 = sub_219BE5434();
    __swift_project_value_buffer(v5, qword_27CCD8BA0);
    oslog = sub_219BE5414();
    v2 = sub_219BF61F4();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      v4 = "Failed to open tap-to-radar URL for unknown reason";
      goto LABEL_10;
    }
  }
}

uint64_t sub_218F6D408(uint64_t a1)
{
  v78 = a1;
  v1 = MEMORY[0x277D83D88];
  sub_2186E5660(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v80 = &v73 - v3;
  v79 = sub_219BDB954();
  v82 = *(v79 - 8);
  v4 = MEMORY[0x28223BE20](v79);
  v75 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v81 = &v73 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v73 - v8;
  v10 = sub_219BE22F4();
  v76 = *(v10 - 8);
  v77 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5660(0, &unk_280EE9DB0, MEMORY[0x277CC8958], v1);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v73 - v17;
  v19 = sub_219BDB354();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v73 - v24;
  sub_219BDB314();
  v26 = *(v20 + 48);
  if (v26(v18, 1, v19) == 1)
  {
    sub_218F6DF68(v18, &unk_280EE9DB0, MEMORY[0x277CC8958]);
    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v27 = sub_219BE5434();
    __swift_project_value_buffer(v27, qword_27CCD8BA0);
    v28 = sub_219BE5414();
    v29 = sub_219BF61F4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2186C1000, v28, v29, "Failed to construct tap-to-radar URL components from base string", v30, 2u);
      MEMORY[0x21CECF960](v30, -1, -1);
    }

    return 0;
  }

  v73 = v25;
  v74 = v20;
  v31 = v18;
  v32 = *(v20 + 32);
  v32(v25, v31, v19);
  sub_2186E5660(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22A4();
  (*(v76 + 8))(v12, v77);
  sub_219BDB264();
  v33 = *(v82 + 8);
  v34 = v79;
  v78 = v82 + 8;
  v33(v9, v79);
  v35 = v26(v16, 1, v19);
  v36 = v19;
  v37 = v34;
  if (v35 == 1)
  {
    sub_218F6DF68(v16, &unk_280EE9DB0, MEMORY[0x277CC8958]);
    v38 = v74;
LABEL_13:
    v40 = v73;
    v41 = v82;
    goto LABEL_14;
  }

  v32(v23, v16, v36);
  v39 = sub_219BDB234();
  if (!v39)
  {
    v38 = v74;
    (*(v74 + 8))(v23, v36);
    goto LABEL_13;
  }

  v40 = v73;
  v38 = v74;
  v41 = v82;
  if (*(v39 + 16))
  {
    sub_219BDB244();
    (*(v38 + 8))(v23, v36);
  }

  else
  {
    (*(v74 + 8))(v23, v36);
  }

LABEL_14:
  v42 = v80;
  sub_219BDB274();
  if ((*(v41 + 48))(v42, 1, v34) == 1)
  {
    sub_218F6DF68(v42, &unk_280EE9D00, MEMORY[0x277CC9260]);
    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v43 = sub_219BE5434();
    __swift_project_value_buffer(v43, qword_27CCD8BA0);
    v44 = sub_219BE5414();
    v45 = sub_219BF61F4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_2186C1000, v44, v45, "Failed to construct tap-to-radar URL", v46, 2u);
      MEMORY[0x21CECF960](v46, -1, -1);
    }

LABEL_30:
    (*(v38 + 8))(v40, v36);
    return 0;
  }

  v77 = v33;
  (*(v41 + 32))(v81, v42, v34);
  v47 = objc_opt_self();
  v48 = [v47 sharedApplication];
  v49 = sub_219BDB854();
  v50 = [v48 canOpenURL_];

  if (!v50)
  {
    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v63 = sub_219BE5434();
    __swift_project_value_buffer(v63, qword_27CCD8BA0);
    v64 = sub_219BE5414();
    v65 = sub_219BF61F4();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2186C1000, v64, v65, "Can't open tap-to-radar URL because the app isn't available", v66, 2u);
      MEMORY[0x21CECF960](v66, -1, -1);
    }

    v77(v81, v37);
    goto LABEL_30;
  }

  v80 = v36;
  if (qword_27CC08628 != -1)
  {
    swift_once();
  }

  v51 = sub_219BE5434();
  __swift_project_value_buffer(v51, qword_27CCD8BA0);
  v52 = v75;
  (*(v82 + 16))(v75, v81, v37);
  v53 = sub_219BE5414();
  v54 = sub_219BF6214();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    aBlock[0] = v56;
    *v55 = 136446210;
    v57 = sub_219BDB804();
    v59 = v58;
    v60 = v77;
    v77(v52, v37);
    v61 = sub_2186D1058(v57, v59, aBlock);
    v38 = v74;

    *(v55 + 4) = v61;
    _os_log_impl(&dword_2186C1000, v53, v54, "Will open tap-to-radar URL: %{public}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    v62 = v56;
    v40 = v73;
    MEMORY[0x21CECF960](v62, -1, -1);
    MEMORY[0x21CECF960](v55, -1, -1);
  }

  else
  {

    v60 = v77;
    v77(v52, v37);
  }

  v68 = [v47 sharedApplication];
  v69 = v81;
  v70 = sub_219BDB854();
  sub_2194B115C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_218F6DFD8(&qword_27CC0A770, 255, type metadata accessor for OpenExternalURLOptionsKey);
  v71 = sub_219BF5204();

  aBlock[4] = sub_218F6D228;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218A1DA70;
  aBlock[3] = &block_descriptor_76;
  v72 = _Block_copy(aBlock);
  [v68 openURL:v70 options:v71 completionHandler:v72];
  _Block_release(v72);

  v60(v69, v37);
  (*(v38 + 8))(v40, v80);
  return 1;
}

uint64_t sub_218F6DF68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186E5660(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218F6DFD8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_218F6E020@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC7NewsUI230NewslettersStateCommandHandler_newsletterManager) cachedNewsletters];
  if (v3)
  {
    v4 = v3;
    sub_218F6E36C();
    v5 = sub_219BF5924();

    if (v5 >> 62)
    {
LABEL_20:
      v6 = sub_219BF7214();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    v8 = MEMORY[0x277D33DB8];
    while (v6 != v7)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CECE0F0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v11 = [v9 enrollment];

      ++v7;
      if (v11 == 2)
      {
        v8 = MEMORY[0x277D33DB0];
        break;
      }
    }
  }

  else
  {
    v8 = MEMORY[0x277D33DB8];
  }

  v12 = *v8;
  v13 = sub_219BF33B4();
  v14 = *(*(v13 - 8) + 104);

  return v14(a1, v12, v13);
}

unint64_t sub_218F6E314()
{
  result = qword_27CC13C78;
  if (!qword_27CC13C78)
  {
    sub_219BF33B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13C78);
  }

  return result;
}

unint64_t sub_218F6E36C()
{
  result = qword_27CC13C80[0];
  if (!qword_27CC13C80[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27CC13C80);
  }

  return result;
}

double sub_218F6E3D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21876E624(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21949394C();
      v9 = v11;
    }

    sub_21876E4CC(*(v9 + 56) + 16 * v7, a2);
    sub_21948A1C4(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = xmmword_219C14A10;
  }

  return result;
}

uint64_t sub_218F6E46C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21931F330(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_219495880();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_219BE3514();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_21948AA28(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_218F6E534()
{
  v1 = *(v0 + 17);
  if (v1 == 2)
  {
    sub_219BDC3B4();
    sub_218F6F288();
    sub_219BDC7D4();

    LOBYTE(v1) = v3;
    *(v0 + 17) = v3;
  }

  return v1 & 1;
}

uint64_t sub_218F6E5C8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_218F6E628(v0);
    v1 = v2;
    *(v0 + 24) = v2;
  }

  return v1;
}

void sub_218F6E628(uint64_t a1)
{
  sub_218D45728(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE3514();
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDC394();
  sub_218F6F288();
  sub_219BDC7D4();

  if ((v24 & 1) == 0)
  {
    v7 = *(a1 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_appConfiguration);
    if ([v7 respondsToSelector_])
    {
      v8 = [v7 smarterMessagingConfig];
      v9 = [v8 placementsBlocklist];

      if (v9)
      {
        v10 = sub_219BF5924();

        v22 = *(v10 + 16);
        if (v22)
        {
          v11 = 0;
          v12 = (v21 + 48);
          v13 = (v21 + 32);
          v14 = v10 + 40;
          v15 = MEMORY[0x277D84F90];
          v20 = v10;
          while (v11 < *(v10 + 16))
          {

            sub_219BE34E4();
            if ((*v12)(v4, 1, v5) == 1)
            {
              sub_21876E2C0(v4, sub_218D45728);
            }

            else
            {
              v16 = *v13;
              (*v13)(v23, v4, v5);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_2191F7D30(0, *(v15 + 2) + 1, 1, v15);
              }

              v18 = *(v15 + 2);
              v17 = *(v15 + 3);
              if (v18 >= v17 >> 1)
              {
                v15 = sub_2191F7D30(v17 > 1, v18 + 1, 1, v15);
              }

              *(v15 + 2) = v18 + 1;
              v16(&v15[((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18], v23, v5);
              v10 = v20;
            }

            ++v11;
            v14 += 16;
            if (v22 == v11)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
        }

        else
        {
LABEL_16:
        }
      }
    }
  }
}

uint64_t sub_218F6E984()
{
  sub_219BDC394();
  sub_218F6F288();
  sub_219BDC7D4();

  if ((v5 & 0x100) != 0)
  {
    v1 = 0;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_store + 24);
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_store + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_store), v2);
    (*(v3 + 8))(&v5, v2, v3);
    v1 = v5;
    if (v5 == 2)
    {
      v1 = 0;
    }
  }

  return v1 & 1;
}

void *sub_218F6EA5C(int a1)
{
  sub_219BDC394();
  sub_218F6F288();
  sub_219BDC7D4();

  if (BYTE1(v13) == 1 || (v4 = *(v1 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_store + 24), v5 = *(v1 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_store + 32), __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_store), v4), result = (*(v5 + 8))(&v13, v4, v5), v13 == 2))
  {
    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  else if (((v13 ^ a1) & 1) == 0)
  {
    return result;
  }

  v6 = *(v1 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_store + 24);
  v7 = *(v1 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_store + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_store), v6);
  v12 = a1 & 1;
  (*(v7 + 24))(&v12, v6, v7);
  result = sub_218F6EC08();
  v8 = result;
  v9 = result[2];
  if (!v9)
  {
  }

  v10 = 0;
  v11 = result + 5;
  while (v10 < v8[2])
  {
    ++v10;
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_219BE3B14();
    result = swift_unknownObjectRelease();
    v11 += 2;
    if (v9 == v10)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218F6EC08()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_observers;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v28 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v10 = v9;
LABEL_16:
      v13 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v14 = v13 | (v10 << 6);
      v15 = *(*(v3 + 48) + 8 * v14);
      sub_218F6F250(*(v3 + 56) + 16 * v14, v30);
      v32 = v15;
      sub_21876E4CC(v30, v33);
LABEL_17:
      sub_218F6F2E0(&v32, &v34, sub_218F6F348);
      if (!v35[0] && v35[1] == 1)
      {

        return v28;
      }

      v16 = v34;
      sub_21876E4CC(v35, v30);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        break;
      }

      swift_beginAccess();
      v18 = sub_21876E624(v16);
      if (v19)
      {
        v20 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v1 + v2);
        *(v1 + v2) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_21949394C();
        }

        sub_21876E4CC(*(v22 + 56) + 16 * v20, &v29);
        sub_21948A1C4(v20, v22);
        *(v1 + v2) = v22;
      }

      else
      {
        v29 = xmmword_219C14A10;
      }

      swift_endAccess();
      sub_21876E2C0(&v29, sub_21876E320);
      result = sub_218F6F3B8(v30);
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v27 = Strong;
    v26 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_2191F9808(0, v28[2] + 1, 1, v28);
    }

    v24 = v28[2];
    v23 = v28[3];
    if (v24 >= v23 >> 1)
    {
      v28 = sub_2191F9808((v23 > 1), v24 + 1, 1, v28);
    }

    result = sub_218F6F3B8(v30);
    v28[2] = v24 + 1;
    v25 = &v28[2 * v24];
    v25[4] = v27;
    v25[5] = v26;
  }

  while (v6);
LABEL_8:
  if (v7 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      v6 = 0;
      v32 = 0;
      v33[0] = 0;
      v9 = v12;
      v33[1] = 1;
      goto LABEL_17;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218F6EEFC()
{

  sub_21876E2C0(v0 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings____lazy_storage___engagementUpsellConfig, sub_21875A100);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_store);

  return swift_deallocClassInstance();
}

uint64_t sub_218F6EFC4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
      *(result + 8) = 1;
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

_BYTE *(*sub_218F6F020(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = sub_218F6E534() & 1;
  return sub_218F6F06C;
}

void *(*sub_218F6F084(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_219BDC394();
  sub_218F6F288();
  sub_219BDC7D4();

  if (*(a1 + 9))
  {
    v3 = 0;
  }

  else
  {
    v4 = *(v1 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_store + 24);
    v5 = *(v1 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_store + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI225EngagementFeatureSettings_store), v4);
    (*(v5 + 8))(&v7, v4, v5);
    v3 = v7;
    if (v7 == 2)
    {
      v3 = 0;
    }
  }

  *(a1 + 8) = v3 & 1;
  return sub_218F6F184;
}

uint64_t sub_218F6F1B0(uint64_t a1)
{
  sub_219BE1AB4();
  swift_beginAccess();
  sub_218F6E3D4(a1, &v3);
  swift_endAccess();
  sub_21876E2C0(&v3, sub_21876E320);
  return sub_219BE1AC4();
}

unint64_t sub_218F6F288()
{
  result = qword_280EBEF20;
  if (!qword_280EBEF20)
  {
    type metadata accessor for EngagementFeatureSettings();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBEF20);
  }

  return result;
}

uint64_t sub_218F6F2E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218F6F348()
{
  if (!qword_27CC13C98)
  {
    sub_2187A1E14(255, &unk_27CC13CA0);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13C98);
    }
  }
}

id PuzzleViewConfig.visualEffect.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_218F6F420(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_218F6F47C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for AudioPlaylistFeedLayoutModel()
{
  result = qword_27CC13CB0;
  if (!qword_27CC13CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_218F6F528()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F6FBC8(v0, v7);
  (*(v2 + 32))(v5, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_218F6F68C(uint64_t a1)
{
  v2 = sub_218F6FC2C(&qword_27CC13CC0);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_218F6F790()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F6FBC8(v0, v7);
  (*(v2 + 32))(v5, v7, v1);
  v8 = sub_219BEF8E4();
  (*(v2 + 8))(v5, v1);
  return v8;
}

uint64_t sub_218F6F920(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F6FBC8(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_218F6FA84(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F6FBC8(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_218F6FBC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F6FC2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioPlaylistFeedLayoutModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for TodayRebuildShortcutsModifier()
{
  result = qword_280EAE1C8;
  if (!qword_280EAE1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218F6FCE4()
{
  sub_218F6FDB0();
  if (v0 <= 0x3F)
  {
    sub_218F70AA4(319, &qword_27CC13CC8, sub_218C5679C, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_219BF0BD4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_218F6FDB0()
{
  result = qword_280EC2CE0[0];
  if (!qword_280EC2CE0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280EC2CE0);
  }

  return result;
}

char *sub_218F6FE14(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v107 = a3;
  v108 = a2;
  v4 = sub_219BE6DF4();
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v98 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188499F8(0, &unk_280EE4B30, MEMORY[0x277D6DF88]);
  v105 = *(v6 - 8);
  v106 = v6;
  MEMORY[0x28223BE20](v6);
  v104 = (v86 - v7);
  sub_2188118D4(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v95 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v90 = v86 - v12;
  MEMORY[0x28223BE20](v11);
  v102 = v86 - v13;
  sub_21880B928();
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v96 = v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v86 - v19;
  sub_218A1AC00();
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00();
  v26 = v25;
  v109 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v91 = v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = v86 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v86 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v110 = v86 - v36;
  MEMORY[0x28223BE20](v35);
  v103 = v86 - v37;
  v97 = v16;
  v38 = *(v16 + 16);
  v101 = a1;
  v39 = a1;
  v40 = v15;
  v94 = v16 + 16;
  v93 = v38;
  v38(v20, v39, v15);
  sub_218F70C20(&qword_280EE3738, sub_21880B928);
  sub_219BF56A4();
  v41 = *(v22 + 44);
  sub_218F70C20(&qword_280EE3730, sub_21880B928);
  sub_219BF5E84();
  if (*&v24[v41] == v113[0])
  {
LABEL_5:
    sub_218F70B6C(v24, sub_218A1AC00);
    sub_218F70BCC();
    v45 = swift_allocError();
    v47 = v104;
    v46 = v105;
    *v104 = v45;
    v48 = v106;
    (*(v46 + 104))(v47, *MEMORY[0x277D6DF68], v106);
    v108(v47);
    return (*(v46 + 8))(v47, v48);
  }

  v42 = (v109 + 16);
  v111 = (v109 + 8);
  v112 = (v109 + 32);
  while (1)
  {
    v43 = sub_219BF5EC4();
    (*v42)(v34);
    v43(v113, 0);
    sub_219BF5E94();
    v44 = *v112;
    (*v112)(v31, v34, v26);
    sub_219BE6934();
    LODWORD(v43) = (v113[0] >> 58) & 0x3C | (LODWORD(v113[0]) >> 1) & 3;

    if (v43 == 22)
    {
      break;
    }

    (*v111)(v31, v26);
    sub_219BF5E84();
    if (*&v24[v41] == v113[0])
    {
      goto LABEL_5;
    }
  }

  v89 = v40;
  sub_218F70B6C(v24, sub_218A1AC00);
  v50 = v110;
  v44(v110, v31, v26);
  v51 = v103;
  v44(v103, v50, v26);
  v52 = v109 + 56;
  v53 = v102;
  v88 = *(v109 + 56);
  v88(v102, 1, 1, v26);
  sub_219BE6934();
  v54 = (v113[0] >> 58) & 0x3C | (LODWORD(v113[0]) >> 1) & 3;

  if (v54 == 22)
  {
    v87 = v26;
    v55 = v92[5];
    v86[1] = v52;
    if (v55 >> 62)
    {
      v84 = v55;
      v85 = sub_219BF7214();
      v55 = v84;
      v56 = v85;
    }

    else
    {
      v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = MEMORY[0x277D84F90];
    if (v56)
    {
      v58 = v55;
      v113[0] = MEMORY[0x277D84F90];
      result = sub_21870B65C(0, v56 & ~(v56 >> 63), 0);
      if (v56 < 0)
      {
        __break(1u);
        return result;
      }

      v59 = 0;
      v57 = v113[0];
      v60 = v58;
      v110 = (v58 & 0xC000000000000001);
      v61 = v58;
      v62 = v56;
      do
      {
        if (v110)
        {
          v63 = MEMORY[0x21CECE0F0](v59, v60);
        }

        else
        {
          v63 = *(v60 + 8 * v59 + 32);
        }

        v64 = v63;
        v65 = [v63 identifier];
        v66 = sub_219BF5414();
        v68 = v67;

        v113[0] = v57;
        v70 = *(v57 + 16);
        v69 = *(v57 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_21870B65C((v69 > 1), v70 + 1, 1);
          v57 = v113[0];
        }

        ++v59;
        *(v57 + 16) = v70 + 1;
        v71 = v57 + 16 * v70;
        *(v71 + 32) = v66;
        *(v71 + 40) = v68;
        v60 = v61;
      }

      while (v62 != v59);
      v53 = v102;
      v51 = v103;
    }

    v72 = v92;
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v73 = v72 + *(type metadata accessor for TodayRebuildShortcutsModifier() + 24);
    v74 = v90;
    sub_218DE5CEC(v51, v73, v57, 1, v90);
    sub_218F70B6C(v53, sub_2188118D4);

    v26 = v87;
    v88(v74, 0, 1, v87);
    sub_218A1ACF4(v74, v53);
  }

  v75 = v96;
  v93(v96, v101, v89);
  v76 = v95;
  sub_218F70B08(v53, v95);
  if ((*(v109 + 48))(v76, 1, v26) == 1)
  {
    sub_218F70B6C(v76, sub_2188118D4);
    v77 = v75;
    v78 = v111;
  }

  else
  {
    v79 = v91;
    v44(v91, v76, v26);
    sub_219BEB234();
    v78 = v111;
    (*v111)(v79, v26);
    v77 = v75;
  }

  v81 = v98;
  v80 = v99;
  v82 = v100;
  (*(v99 + 104))(v98, *MEMORY[0x277D6D868], v100);
  type metadata accessor for TodayModel(0);
  sub_2186EB3E8();
  sub_218F70C20(&qword_280EDF9E0, type metadata accessor for TodayModel);
  sub_2188552DC();
  v83 = v104;
  sub_219BE85E4();
  (*(v80 + 8))(v81, v82);
  v108(v83);
  (*(v105 + 8))(v83, v106);
  (*(v97 + 8))(v77, v89);
  sub_218F70B6C(v102, sub_2188118D4);
  return (*v78)(v103, v26);
}

uint64_t sub_218F709A8(uint64_t a1)
{
  v2 = sub_218F70C20(qword_280EAE1E0, type metadata accessor for TodayRebuildShortcutsModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_218F70AA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F70B08(uint64_t a1, uint64_t a2)
{
  sub_2188118D4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F70B6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218F70BCC()
{
  result = qword_27CC13CD0;
  if (!qword_27CC13CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13CD0);
  }

  return result;
}

uint64_t sub_218F70C20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218F70C7C()
{
  result = qword_27CC13CD8;
  if (!qword_27CC13CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13CD8);
  }

  return result;
}

uint64_t static Settings.Audio.refreshEveryLaunch.getter()
{
  if (qword_280EE9910 != -1)
  {
    swift_once();
  }
}

uint64_t type metadata accessor for SportsTagLayoutOptions()
{
  result = qword_27CC13CE0;
  if (!qword_27CC13CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for SportsManagementDetailPrewarmResult()
{
  result = qword_27CC13CF0;
  if (!qword_27CC13CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}