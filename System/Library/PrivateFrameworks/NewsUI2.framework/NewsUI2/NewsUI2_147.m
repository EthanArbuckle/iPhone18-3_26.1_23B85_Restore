uint64_t sub_219734040(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973727C();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_219737140();
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

uint64_t sub_219734198(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_2197341DC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BF44C4();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for SearchMoreBlueprintLayoutBuilder();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
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

uint64_t sub_2197342C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973727C();
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
  sub_219737E30();
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
    sub_2197386EC(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_219737B74();
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2197345CC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_2197386EC(&qword_280E8FF80, MEMORY[0x277D34268]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219737CB0();
  if (sub_219BE1E24())
  {
    sub_2197386EC(&qword_27CC1E890, sub_219737CB0);
  }

  sub_219BE86F4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219737AE0();
  v3 = sub_219BE1E24();
  if (v3)
  {
    sub_2197386EC(&qword_27CC1E888, sub_219737AE0);
  }

  sub_219BE8724();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70);
  result = sub_219BE1E34();
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2197375C8();
    result = sub_219BE1E24();
    if (result)
    {
      swift_getObjectType();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_219BF35C4();
      swift_allocObject();
      sub_2197386EC(&qword_27CC1E748, sub_2197375C8);

      sub_219BF35A4();
      sub_219BF3EC4();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219734914()
{
  sub_21973842C(0, &qword_27CC1E898, sub_218F936D8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v15 - v1;
  sub_218F936D8();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_219BE86A4();

    v16 = v15[1];
    sub_2189877E8();
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8);
    sub_219BE7B94();

    v10 = sub_218F93D18();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v10 = 0xF000000000000007;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_219BE86A4();

    v15[0] = v16;
    sub_2189877E8();
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8);
    sub_219BE7B94();

    (*(v5 + 56))(v2, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v2, 1, 1, v4);
  }

  sub_219BE6684();
  type metadata accessor for SearchMoreSectionDescriptor();
  type metadata accessor for SearchMoreModel(0);
  sub_2197386EC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
  sub_2197386EC(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
  sub_219BF44D4();
  sub_2197383B4(v2);
  type metadata accessor for SearchMoreFeedServiceConfig();
  sub_2197386EC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
  v13 = sub_219BE6624();

  sub_21885AB78(v10);
  return v13;
}

uint64_t sub_219734CEC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
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

uint64_t sub_219734DCC(void *a1)
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
  sub_2197373F8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737680();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737800();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21973727C();
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219734F38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973727C();
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

uint64_t sub_219734FF0()
{
  v0 = sub_219BE80A4();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0]);
  return sub_219BE9574();
}

uint64_t sub_2197350C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219735188(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197375C8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchMoreBlueprintViewCellProvider();
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
  type metadata accessor for SearchMoreBlueprintViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_2197373F8();
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_219735324(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0);
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

uint64_t sub_219735434(uint64_t a1, void *a2)
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

uint64_t sub_219735508(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197375C8();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737E30();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2197386EC(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_219737680();
    v4 = objc_allocWithZone(v3);
    return sub_219BE9754();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2197356F4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219737EC4();
  if (sub_219BE1E24())
  {
    sub_2197386EC(&qword_27CC1E880, sub_219737EC4);
  }

  sub_219BE9774();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE9564();
  sub_219BE1DE4();
  sub_219BE9784();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219737B74();
  sub_219BE1E24();
  return sub_219BE9714();
}

uint64_t sub_219735870(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2197375C8();
    result = sub_219BE1E24();
    if (result)
    {
      sub_219737800();
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

uint64_t sub_219735930(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E91810);
    result = sub_219BE1E34();
    v3 = v19;
    if (v19)
    {
      v4 = v20;
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      MEMORY[0x28223BE20](v5);
      v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for BaseStyler();
      v18[3] = v10;
      v11 = sub_2197386EC(&qword_280EDFED0, type metadata accessor for BaseStyler);
      v18[4] = v11;
      v18[0] = v9;
      type metadata accessor for SearchMoreBlueprintViewCellProvider();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v10);
      MEMORY[0x28223BE20](v13);
      v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[7] = v10;
      v12[8] = v11;
      v12[3] = 0;
      v12[4] = v17;
      swift_unknownObjectWeakInit();
      v12[9] = v3;
      v12[10] = v4;
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v21);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219735BE8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchMoreViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A58B78;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_219735C7C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0);
  sub_218718690(a1, v5);
  v2 = swift_allocObject();
  sub_2186CB1F0(v5, v2 + 16);
  sub_219BE1E14();

  if (v7)
  {
    type metadata accessor for SearchMoreBlueprintViewSupplementaryViewProvider();
    v4 = swift_allocObject();
    sub_2186CB1F0(&v6, v4 + 16);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219735D80(void *a1, void *a2)
{
  sub_218C3070C(0, &qword_280E8B8A8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219737D44();
  v6 = v5;
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    *(v4 + 56) = v6;
    *(v4 + 64) = sub_2197386EC(&qword_27CC1E878, sub_219737D44);
    *(v4 + 32) = v8;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218C3070C(0, &qword_280E8EF20, MEMORY[0x277D83940]);
    sub_219BE1BA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219735ED4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973727C();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219737CB0();
    swift_allocObject();
    return sub_219BE8914();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219735F4C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219737D44();
    swift_allocObject();
    return sub_219BEEB34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219735FE4(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2197382F4();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8();
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_219737E30();
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219736244(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2197375C8();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2197386EC(&qword_27CC1E848, sub_2197375C8);
    sub_219BE8E94();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280E90FB0);
    sub_219BE1E34();
    sub_2197380EC();
    swift_allocObject();
    sub_219BEFCE4();
    sub_2197386EC(&qword_27CC1E858, sub_2197380EC);
    sub_219BE8EA4();

    sub_2197381C4();
    swift_allocObject();
    sub_219BF0074();
    sub_2197386EC(&qword_27CC1E868, sub_2197381C4);
    sub_219BE8EA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21973646C(void *a1)
{
  sub_2187F2110();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737EC4();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_2197386EC(&qword_27CC1E840, sub_219737EC4);
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

uint64_t sub_2197365A8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973727C();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189877E8();
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
    sub_2197386EC(&qword_280EE8EE0, MEMORY[0x277CEAEA8]);
    sub_219737EC4();
    swift_allocObject();
    return sub_219BE9AB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219736788(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973727C();
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

uint64_t sub_219736844(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219737B74();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = sub_2197386EC(a3, sub_219737B74);
    v7 = v8;
  }

  else
  {
    v9 = 0;
  }

  return a5(v7, v9);
}

uint64_t sub_2197368F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219737B74();
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_2197386EC(&qword_27CC1E828, sub_219737B74);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2197369A0(void *a1)
{
  sub_21973842C(0, &unk_280EE3E00, MEMORY[0x277D6E8E0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_219BE9524();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_219BE9564();
  result = sub_219BE1DE4();
  if (result)
  {
    v12[4] = v9;
    v12[5] = MEMORY[0x277D6E680];
    v12[1] = result;
    *v8 = 2;
    (*(v6 + 104))(v8, *MEMORY[0x277D6E670], v5);
    v11 = sub_219BE9D64();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    sub_219BE9534();
    swift_allocObject();
    return sub_219BE9514();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219736BA8()
{
  sub_21973842C(0, &unk_280EE3E00, MEMORY[0x277D6E8E0]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_219BE8944();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE8544();
  MEMORY[0x28223BE20](v7 - 8);
  sub_219BE9564();
  if (qword_27CC08540 != -1)
  {
    swift_once();
  }

  v8 = qword_27CCD8A08;
  (*(v4 + 104))(v6, *MEMORY[0x277D6E080], v3);
  v9 = sub_219BE9D64();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = v8;
  sub_219BE8534();
  return sub_219BE9554();
}

uint64_t sub_219736DC8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197375C8();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8E350);
    result = sub_219BE1E24();
    if (result)
    {
      sub_219737FB0(0, &qword_27CC1E7F8, &qword_27CC1E800, &unk_219C6E4B0, MEMORY[0x277D30270]);
      swift_allocObject();
      return sub_219BDEB44();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219736EEC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197375C8();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E350);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8AB0);
  result = sub_219BE1E34();
  if (v3)
  {
    sub_219737FB0(0, &qword_27CC1E818, &qword_27CC1E820, &unk_219C6E488, MEMORY[0x277D2FF78]);
    swift_allocObject();
    return sub_219BDE2E4();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_219737054()
{
  if (!qword_27CC1E720)
  {
    sub_2189877E8();
    sub_219737140();
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8);
    sub_2197386EC(&qword_27CC1E798, sub_219737140);
    v0 = sub_219BE6F54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E720);
    }
  }
}

void sub_219737140()
{
  if (!qword_27CC1E728)
  {
    type metadata accessor for SearchMoreSectionDescriptor();
    type metadata accessor for SearchMoreModel(255);
    sub_21973727C();
    sub_2197386EC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
    sub_2197386EC(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
    sub_2197386EC(&qword_27CC1E790, sub_21973727C);
    v0 = sub_219BE72E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E728);
    }
  }
}

void sub_21973727C()
{
  if (!qword_27CC1E730)
  {
    sub_2186C6148(255, &qword_280E8E4C0);
    sub_2197373F8();
    sub_219737680();
    sub_219737800();
    type metadata accessor for SearchMoreViewController();
    sub_2197386EC(&qword_27CC1E778, sub_2197373F8);
    sub_2197386EC(&qword_27CC1E780, sub_219737680);
    sub_2197386EC(&qword_27CC1E788, sub_219737800);
    v0 = sub_219BE7BE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E730);
    }
  }
}

void sub_2197373F8()
{
  if (!qword_27CC1E738)
  {
    sub_2189877E8();
    sub_2197375C8();
    type metadata accessor for SearchMoreBlueprintViewCellProvider();
    type metadata accessor for SearchMoreBlueprintViewSupplementaryViewProvider();
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8);
    sub_2197386EC(&qword_27CC1E748, sub_2197375C8);
    sub_2197386EC(&qword_27CC1E750, type metadata accessor for SearchMoreBlueprintViewCellProvider);
    sub_2197386EC(&qword_27CC1E758, type metadata accessor for SearchMoreBlueprintViewSupplementaryViewProvider);
    sub_2197386EC(&qword_27CC14770, type metadata accessor for SearchMoreLayoutModel);
    v0 = sub_219BE9B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E738);
    }
  }
}

void sub_2197375C8()
{
  if (!qword_27CC1E740)
  {
    type metadata accessor for SearchMoreLayoutModel();
    sub_218C3ED14();
    sub_2197386EC(&qword_27CC0F490, type metadata accessor for SearchMoreLayoutModel);
    v0 = sub_219BE8564();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E740);
    }
  }
}

void sub_219737680()
{
  if (!qword_27CC1E760)
  {
    sub_2189877E8();
    sub_2197375C8();
    type metadata accessor for SearchMoreViewController();
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8);
    sub_2197386EC(&qword_27CC1E748, sub_2197375C8);
    sub_2197386EC(&qword_27CC1E768, type metadata accessor for SearchMoreViewController);
    sub_2197386EC(&qword_27CC14770, type metadata accessor for SearchMoreLayoutModel);
    v0 = sub_219BE9794();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E760);
    }
  }
}

void sub_219737800()
{
  if (!qword_27CC1E770)
  {
    sub_2189877E8();
    sub_2197375C8();
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8);
    sub_2197386EC(&qword_27CC1E748, sub_2197375C8);
    v0 = sub_219BE9F34();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E770);
    }
  }
}

void sub_2197378EC()
{
  if (!qword_27CC1E7A0)
  {
    sub_2197375C8();
    type metadata accessor for SearchMoreBlueprintLayoutBuilder();
    sub_219737A28();
    sub_2197386EC(&qword_27CC1E748, sub_2197375C8);
    sub_2197386EC(&qword_27CC1E7B0, type metadata accessor for SearchMoreBlueprintLayoutBuilder);
    sub_2197386EC(&qword_27CC1E7B8, sub_219737A28);
    v0 = sub_219BEA4A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E7A0);
    }
  }
}

void sub_219737A28()
{
  if (!qword_27CC1E7A8)
  {
    type metadata accessor for SearchMoreLayoutModel();
    sub_218FD8D9C();
    sub_2197386EC(&qword_27CC14770, type metadata accessor for SearchMoreLayoutModel);
    v0 = sub_219BE9974();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E7A8);
    }
  }
}

void sub_219737AE0()
{
  if (!qword_27CC1E7C0)
  {
    sub_2197375C8();
    sub_2197386EC(&qword_27CC1E748, sub_2197375C8);
    v0 = sub_219BE99B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E7C0);
    }
  }
}

void sub_219737B74()
{
  if (!qword_27CC1E7C8)
  {
    sub_2189877E8();
    sub_21973727C();
    type metadata accessor for SearchMoreViewController();
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8);
    sub_2197386EC(&qword_27CC1E790, sub_21973727C);
    sub_2197386EC(&qword_27CC1E768, type metadata accessor for SearchMoreViewController);
    v0 = sub_219BE8774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E7C8);
    }
  }
}

void sub_219737CB0()
{
  if (!qword_27CC1E7D0)
  {
    sub_21973727C();
    sub_2197386EC(&qword_27CC1E790, sub_21973727C);
    v0 = sub_219BE8934();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E7D0);
    }
  }
}

void sub_219737D44()
{
  if (!qword_27CC1E7D8)
  {
    type metadata accessor for SearchMoreFeedServiceConfig();
    sub_2189877E8();
    sub_2197386EC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8);
    v0 = sub_219BEEB44();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E7D8);
    }
  }
}

void sub_219737E30()
{
  if (!qword_27CC1E7E0)
  {
    sub_2189877E8();
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8);
    v0 = sub_219BE8ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E7E0);
    }
  }
}

void sub_219737EC4()
{
  if (!qword_27CC1E7E8)
  {
    sub_21973727C();
    sub_2189877E8();
    sub_2197386EC(&qword_27CC1E790, sub_21973727C);
    sub_2197386EC(&qword_27CC1E7F0, sub_2189877E8);
    v0 = sub_219BE9AD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E7E8);
    }
  }
}

void sub_219737FB0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_2197375C8();
    v12[0] = v9;
    v12[1] = sub_2197386EC(&qword_27CC1E748, sub_2197375C8);
    v12[2] = sub_2197386EC(a3, type metadata accessor for SearchMoreLayoutModel);
    v12[3] = sub_2197386EC(&qword_27CC1E808, type metadata accessor for SearchMoreLayoutModel);
    v12[4] = sub_2197386EC(&qword_27CC1E810, type metadata accessor for SearchMoreLayoutModel);
    v10 = a5(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_2197380EC()
{
  if (!qword_27CC1E850)
  {
    sub_2189877E8();
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8);
    sub_2197386EC(&qword_27CC14760, type metadata accessor for SearchMoreModel);
    v0 = sub_219BEFCF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E850);
    }
  }
}

void sub_2197381C4()
{
  if (!qword_27CC1E860)
  {
    sub_2189877E8();
    type metadata accessor for SearchMoreFeedServiceConfig();
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8);
    sub_2197386EC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
    sub_2197386EC(&qword_27CC14760, type metadata accessor for SearchMoreModel);
    v0 = sub_219BF0084();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E860);
    }
  }
}

void sub_2197382F4()
{
  if (!qword_27CC1E870)
  {
    sub_2189877E8();
    sub_2197386EC(&qword_27CC0B878, sub_2189877E8);
    v0 = sub_219BE8EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E870);
    }
  }
}

uint64_t sub_2197383B4(uint64_t a1)
{
  sub_21973842C(0, &qword_27CC1E898, sub_218F936D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21973842C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_219738480()
{
  if (!qword_27CC1E8A0)
  {
    type metadata accessor for SearchMoreSectionDescriptor();
    type metadata accessor for SearchMoreModel(255);
    sub_2197386EC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
    sub_2197386EC(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
    v0 = sub_219BE96F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E8A0);
    }
  }
}

void sub_21973856C()
{
  if (!qword_27CC1E8A8)
  {
    type metadata accessor for SearchMoreSectionDescriptor();
    type metadata accessor for SearchMoreModel(255);
    sub_2197386EC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
    sub_2197386EC(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
    v0 = sub_219BE8FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E8A8);
    }
  }
}

void sub_219738658()
{
  if (!qword_27CC1E8C0)
  {
    type metadata accessor for SearchMoreBlueprintModifierFactory();
    sub_2197386EC(&qword_27CC1E8C8, type metadata accessor for SearchMoreBlueprintModifierFactory);
    v0 = type metadata accessor for SearchMoreInteractor();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E8C0);
    }
  }
}

uint64_t sub_2197386EC(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_219738734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = type metadata accessor for SearchMoreRouter();
  v35[3] = v13;
  v35[4] = &off_282A43390;
  v35[0] = a5;
  v33 = v12;
  v34 = &off_282A52210;
  v32[0] = a6;
  type metadata accessor for SearchMoreEventHandler();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v35, v13);
  MEMORY[0x28223BE20](v15);
  v17 = (&v30[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
  MEMORY[0x28223BE20](v19);
  v21 = (&v30[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v17;
  v24 = *v21;
  v31[3] = v13;
  v31[4] = &off_282A43390;
  v31[0] = v23;
  v30[3] = v12;
  v30[4] = &off_282A52210;
  v30[0] = v24;
  v14[3] = 0;
  swift_unknownObjectWeakInit();
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  sub_218718690(v31, (v14 + 8));
  sub_218718690(v30, (v14 + 13));
  ObjectType = swift_getObjectType();
  v26 = *(a2 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v26(v27, &off_282A57A60, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return v14;
}

uint64_t sub_2197389F4()
{
  sub_2186C6148(0, &qword_280E8DDC0);
  sub_219BE3204();

  v0 = sub_219BE2E54();
  sub_219BE2874();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_219738AC0(void **a1, uint64_t a2)
{
  v42 = a1;
  v45 = a2;
  v2 = sub_219BE2874();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_219739FE0(0, &qword_280EE9C10, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  sub_219739FE0(0, &qword_27CC214D0, type metadata accessor for AppRefreshRequestWindow, v6);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - v11;
  refreshed = type metadata accessor for AppRefreshRequestWindow();
  v14 = *(refreshed - 8);
  MEMORY[0x28223BE20](refreshed);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219739070(*v42, v12);
  v17 = *(v14 + 48);
  v42 = refreshed;
  if (v17(v12, 1, refreshed) == 1)
  {
    sub_219739F14(v12, &qword_27CC214D0, type metadata accessor for AppRefreshRequestWindow);
  }

  else
  {
    v39 = v3;
    v40 = v2;
    v41 = v5;
    sub_219739EB0(v12, v16);
    v18 = v16;
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v38 = qword_280F61750;
    sub_219739FE0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_219C09BA0;
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_219BF7314();

    v43 = 0x203A7265746661;
    v44 = 0xE700000000000000;
    sub_219BDBDF4();
    v20 = sub_219BDBE34();
    v21 = *(*(v20 - 8) + 56);
    v21(v9, 0, 1, v20);
    v22 = sub_219BDBB94();
    v24 = v23;
    v37 = v18;
    v25 = MEMORY[0x277CC9788];
    sub_219739F14(v9, &qword_280EE9C10, MEMORY[0x277CC9788]);
    MEMORY[0x21CECC330](v22, v24);

    MEMORY[0x21CECC330](0x3A65726F66656220, 0xE900000000000020);
    sub_219BDBDF4();
    v21(v9, 0, 1, v20);
    v26 = v37;
    v27 = sub_219BDBB94();
    v29 = v28;
    sub_219739F14(v9, &qword_280EE9C10, v25);
    MEMORY[0x21CECC330](v27, v29);

    MEMORY[0x21CECC330](46, 0xE100000000000000);
    v30 = v43;
    v31 = v44;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_2186FC3BC();
    *(v19 + 32) = v30;
    *(v19 + 40) = v31;
    sub_219BF6214();
    sub_219BE5314();

    v32 = *(v45 + 16);
    v33 = sub_219BDBC04();
    v34 = sub_219BDBC04();
    [v32 requestBackgroundAppRefreshStartingAfter:v33 before:v34];

    sub_219739F84(v26);
    v2 = v40;
    v5 = v41;
    v3 = v39;
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D6CD50], v2);
  sub_219739FE0(0, &qword_280EE6BB0, MEMORY[0x277D6CD60], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

id sub_219739070@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_219739FE0(0, &qword_280EE9BD0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v120 = &v85 - v5;
  sub_219739FE0(0, &unk_280EE9C00, MEMORY[0x277CC99E8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v119 = &v85 - v7;
  v8 = sub_219BDC084();
  v110 = *(v8 - 8);
  v111 = v8;
  MEMORY[0x28223BE20](v8);
  v109 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB534();
  v114 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v113 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v121 = &v85 - v13;
  v117 = sub_219BDBF74();
  v14 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v116 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDBF94();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v122 = &v85 - v21;
  sub_219739FE0(0, &qword_280EE9C40, MEMORY[0x277CC9578], v3);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v92 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v112 = &v85 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v85 - v27;
  v123 = sub_219BDBD34();
  v29 = *(v123 - 8);
  v30 = MEMORY[0x28223BE20](v123);
  v86 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v91 = &v85 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v85 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v85 - v37;
  result = [a1 newIssuesCheckLocalTime];
  v40 = result;
  if (result <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v108 = v10;
  v41 = v122;
  sub_219BDBF34();
  v42 = *MEMORY[0x277CC9968];
  v43 = v14;
  v44 = v14 + 104;
  v45 = *(v14 + 104);
  v118 = v16;
  v47 = v116;
  v46 = v117;
  v89 = v44;
  v88 = v45;
  v45(v116, v42, v117);
  sub_219BDBD24();
  sub_219BDBF04();
  v48 = v29[1];
  v49 = v36;
  v50 = v123;
  v107 = v29 + 1;
  v106 = v48;
  v48(v49, v123);
  v51 = *(v43 + 8);
  v52 = v47;
  v53 = v118;
  v90 = v43 + 8;
  v87 = v51;
  v51(v52, v46);
  v54 = v41;
  v124 = *(v17 + 8);
  v125 = v17 + 8;
  v124(v41, v53);
  v55 = v29[6];
  v105 = v29 + 6;
  v104 = v55;
  result = v55(v28, 1, v50);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v56 = (v40 % 216000) / 16;
  v102 = (v56 - 24 * ((((43 * v56) & 0x8000) != 0) + (((43 * v56) >> 8) >> 2)));
  v101 = ((((34953 * (v40 % 3600)) >> 16) >> 5) + (((v40 % 3600 + ((-30583 * (v40 % 3600)) >> 16)) & 0x8000) >> 15));
  v100 = v40 % 60;
  v57 = v29[4];
  v93 = v29 + 4;
  v94 = v57;
  v57(v38, v28, v50);
  sub_219BDBF34();
  sub_219BDBF34();
  v58 = v109;
  sub_219BDBF54();
  v59 = v124;
  v124(v20, v53);
  v103 = v38;
  sub_219BDBE84();
  v60 = v110;
  v61 = v58;
  v62 = v111;
  (*(v110 + 8))(v61, v111);
  v59(v54, v53);
  (*(v17 + 56))(v119, 1, 1, v53);
  (*(v60 + 56))(v120, 1, 1, v62);
  v111 = sub_219BDB494();
  LODWORD(v109) = v63;
  v110 = sub_219BDB4B4();
  v99 = v64;
  v98 = sub_219BDB434();
  v95 = v65;
  v97 = sub_219BDB504();
  v96 = sub_219BDB3F4();
  sub_219BDB4F4();
  sub_219BDB3E4();
  sub_219BDB3D4();
  sub_219BDB404();
  v66 = v118;
  v67 = v122;
  v68 = v123;
  v69 = v113;
  sub_219BDB514();
  sub_219BDBF34();
  v70 = v112;
  sub_219BDBEF4();
  v124(v67, v66);
  v71 = v104;
  if (v104(v70, 1, v68) == 1)
  {
    v72 = v115;
    v73 = v108;
    v74 = v106;
LABEL_8:
    sub_219739F14(v70, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_219BF61F4();
    sub_2186C6148(0, &qword_280E8D790);
    v79 = sub_219BF6F44();
    sub_219BE5314();

    v80 = *(v114 + 8);
    v80(v69, v73);
    v80(v121, v73);
    v74(v103, v68);
    refreshed = type metadata accessor for AppRefreshRequestWindow();
    return (*(*(refreshed - 8) + 56))(v72, 1, 1, refreshed);
  }

  v75 = v91;
  v94(v91, v70, v68);
  sub_219BDBF34();
  v77 = v116;
  v76 = v117;
  v88(v116, *MEMORY[0x277CC9980], v117);
  v70 = v92;
  sub_219BDBF04();
  v87(v77, v76);
  v124(v67, v66);
  v78 = v71(v70, 1, v68);
  v72 = v115;
  v73 = v108;
  v74 = v106;
  if (v78 == 1)
  {
    v106(v75, v68);
    goto LABEL_8;
  }

  v82 = v86;
  v94(v86, v70, v68);
  sub_219BDBA64();
  v83 = type metadata accessor for AppRefreshRequestWindow();
  sub_219BDBA64();
  v74(v82, v68);
  v74(v75, v68);
  v84 = *(v114 + 8);
  v84(v69, v73);
  v84(v121, v73);
  v74(v103, v68);
  return (*(*(v83 - 8) + 56))(v115, 0, 1, v83);
}

uint64_t sub_219739DC0()
{
  sub_2186C6148(0, &qword_280E8DDC0);
  sub_219BE3204();

  v0 = sub_219BE2E54();
  sub_219BE2874();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_219739EB0(uint64_t a1, uint64_t a2)
{
  refreshed = type metadata accessor for AppRefreshRequestWindow();
  (*(*(refreshed - 8) + 32))(a2, a1, refreshed);
  return a2;
}

uint64_t sub_219739F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219739FE0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219739F84(uint64_t a1)
{
  refreshed = type metadata accessor for AppRefreshRequestWindow();
  (*(*(refreshed - 8) + 8))(a1, refreshed);
  return a1;
}

void sub_219739FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21973A0C0(void **a1)
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
  result = sub_21973BB90(v6);
  *a1 = v3;
  return result;
}

char *sub_21973A168(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_218C81314(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_21973BCBC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_21973A1D4()
{
  v1 = sub_219BED174();
  v18 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BED1D4();
  v16 = *(v4 - 8);
  v17 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6148(0, &qword_280E8E3B0);
  (*(v8 + 104))(v10, *MEMORY[0x277D851D0], v7);
  v11 = sub_219BF66E4();
  (*(v8 + 8))(v10, v7);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_21973BB14;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_161;
  v13 = _Block_copy(aBlock);
  sub_219BED1A4();
  v19 = MEMORY[0x277D84F90];
  sub_21874E2E8(&qword_280E927E0, 255, MEMORY[0x277D85198]);
  v14 = MEMORY[0x277D85198];
  sub_21874E910(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21973BB1C(&qword_280E8EFA0, &qword_280E8EFB0, v14);
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v6, v3, v13);
  _Block_release(v13);

  swift_unownedRelease();
  (*(v18 + 8))(v3, v1);
  (*(v16 + 8))(v6, v17);
}

uint64_t sub_21973A5A8(uint64_t a1)
{
  v2 = swift_unownedRetainStrong();
  sub_218718690(v2 + 32, v5);

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_219BEFFE4();
  *(swift_allocObject() + 16) = a1;
  swift_unownedRetain();
  v3 = sub_219BE2E54();
  sub_219BE3024();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_21973A684()
{
  v0 = sub_219BED174();
  v13 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BED1D4();
  v3 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  v6 = sub_21973A99C();

  sub_2186C6148(0, &qword_280E8E3B0);
  v7 = sub_219BF66A4();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  aBlock[4] = sub_21973BB88;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_10_5;
  v9 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E2E8(&qword_280E927E0, 255, MEMORY[0x277D85198]);
  v10 = MEMORY[0x277D85198];
  sub_21874E910(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21973BB1C(&qword_280E8EFA0, &qword_280E8EFB0, v10);
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v5, v2, v9);
  _Block_release(v9);

  (*(v13 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v12);
}

uint64_t sub_21973A99C()
{
  v85 = sub_219BF11F4();
  v83 = *(v85 - 8);
  v1 = MEMORY[0x28223BE20](v85 - 8);
  *&v81 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v82 = &v75 - v4;
  MEMORY[0x28223BE20](v3);
  inited = &v75 - v5;
  v77 = sub_21973B6DC(v0, v7);
  v9 = v8;
  v84 = v0;
  sub_219ADE0A8();
  v11 = v10;
  v12 = *(v10 + 16);
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = sub_21947D1C0(*(v10 + 16), 0);
  v14 = sub_2194ABD64(&v91, v13 + 4, v12, v11);
  sub_21892DE98();
  if (v14 != v12)
  {
    __break(1u);
LABEL_4:
  }

  v15 = v84[7];
  __swift_project_boxed_opaque_existential_1(v84 + 4, v15);
  v16 = sub_219BEFFF4();

  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  v76 = v9;
  v80 = v17;
  if (v17)
  {
    v19 = 0;
    v79 = (v83 + 16);
    v75 = (v83 + 8);
    v20 = (v83 + 32);
    v21 = v85;
    v78 = v16;
    while (1)
    {
      if (v19 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_97;
      }

      v22 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v15 = *(v83 + 72);
      (*(v83 + 16))(inited, v16 + v22 + v15 * v19, v21);
      v23 = sub_219BF11E4();
      if (!v9)
      {
        break;
      }

      if (v23 == v77 && v9 == v24)
      {
      }

      else
      {
        v25 = sub_219BF78F4();
        v16 = v78;

        if ((v25 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      (*v75)(inited, v21);
LABEL_9:
      if (v80 == ++v19)
      {
        goto LABEL_22;
      }
    }

LABEL_17:
    v26 = *v20;
    (*v20)(v82, inited, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_218C37FF0(0, v18[2] + 1, 1);
      v18 = v91;
    }

    v29 = v18[2];
    v28 = v18[3];
    if (v29 >= v28 >> 1)
    {
      sub_218C37FF0(v28 > 1, v29 + 1, 1);
      v18 = v91;
    }

    v18[2] = v29 + 1;
    v30 = v18 + v22 + v29 * v15;
    v21 = v85;
    v26(v30, v82, v85);
    v9 = v76;
    v16 = v78;
    goto LABEL_9;
  }

LABEL_22:

  v91 = v18;

  sub_21973A0C0(&v91);
  v79 = 0;

  v31 = v91;
  v32 = *(v91 + 16);
  if (v32)
  {
    v91 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v32, 0);
    inited = v91;
    v33 = v83 + 16;
    v83 = *(v83 + 16);
    v34 = (*(v33 + 64) + 32) & ~*(v33 + 64);
    v80 = v31;
    v35 = v31 + v34;
    v82 = *(v33 + 56);
    v36 = (v33 - 8);
    do
    {
      v37 = v81;
      v38 = v85;
      (v83)(v81, v35, v85);
      v39 = sub_219BF11E4();
      v41 = v40;
      (*v36)(v37, v38);
      v91 = inited;
      v43 = *(inited + 2);
      v42 = *(inited + 3);
      if (v43 >= v42 >> 1)
      {
        sub_21870B65C((v42 > 1), v43 + 1, 1);
        inited = v91;
      }

      *(inited + 2) = v43 + 1;
      v44 = &inited[16 * v43];
      *(v44 + 4) = v39;
      *(v44 + 5) = v41;
      v35 += v82;
      --v32;
    }

    while (v32);

    v45 = v77;
    v9 = v76;
  }

  else
  {

    inited = MEMORY[0x277D84F90];
    v45 = v77;
  }

  v15 = &v88;
  v89 = v45;
  v90 = v9;
  v46 = MEMORY[0x277D84F90];
  if (v9)
  {

    v47 = MEMORY[0x277D84F90];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_31;
    }

    goto LABEL_107;
  }

  v47 = MEMORY[0x277D84F90];
  while (2)
  {
    sub_2189D2CDC(v15 + 32);
    v91 = v47;
    sub_2191ED3E8(inited);
    v82 = v84[9];
    v15 = sub_218E96058(v91);

    v91 = v46;
    if (v15 >> 62)
    {
      goto LABEL_101;
    }

    v85 = v15 & 0xFFFFFFFFFFFFFF8;
    v45 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_37:
    v52 = MEMORY[0x277D84F90];
    if (!v45)
    {
      goto LABEL_64;
    }

    v53 = 0;
    v83 = v15 & 0xC000000000000001;
    v81 = xmmword_219C09BA0;
    do
    {
      v80 = v52;
      v54 = v53;
      while (1)
      {
        if (v83)
        {
          v55 = MEMORY[0x21CECE0F0](v54, v15);
          v53 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v54 >= *(v85 + 16))
          {
            goto LABEL_98;
          }

          v55 = *(v15 + 8 * v54 + 32);

          v53 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
            goto LABEL_99;
          }
        }

        v56 = [*(v55 + 16) asSection];
        if (!v56)
        {
          goto LABEL_59;
        }

        v47 = v56;
        sub_2186DF260(0, &qword_280E8B750, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 1) = v81;
        v57 = [v47 parentID];
        if (v57)
        {
          v58 = v57;
          v59 = sub_219BF5414();
          v61 = v60;
        }

        else
        {
          v59 = 0;
          v61 = 0xE000000000000000;
        }

        *(inited + 4) = v59;
        *(inited + 5) = v61;
        v62 = sub_218E96058(inited);
        swift_setDeallocating();
        sub_2189AD3D8((inited + 32));
        if (v62 >> 62)
        {
          break;
        }

        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

LABEL_49:

        swift_unknownObjectRelease();

        ++v54;
        if (v53 == v45)
        {
          v52 = v80;
          goto LABEL_64;
        }
      }

      if (!sub_219BF7214())
      {
        goto LABEL_49;
      }

LABEL_55:
      if ((v62 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](0, v62);
      }

      else
      {
        if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_109;
        }
      }

      swift_unknownObjectRelease();

LABEL_59:
      MEMORY[0x21CECC690]();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v52 = v91;
    }

    while (v53 != v45);
LABEL_64:

    v91 = v52;
    sub_21874E910(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    sub_21973BB1C(&qword_280E8EFC0, &qword_280E8EFD0, type metadata accessor for TagModel);
    sub_21874E2E8(qword_280E92B40, 255, type metadata accessor for TagModel);
    v47 = sub_219BF56B4();

    v15 = v47 >> 62;
    if (v47 >> 62)
    {
      if (v47 < 0)
      {
        v46 = v47;
      }

      else
      {
        v46 = (v47 & 0xFFFFFFFFFFFFFF8);
      }

      v62 = sub_219BF7214();
      if (sub_219BF7214() < 0)
      {
        __break(1u);
LABEL_107:
        v47 = sub_218840D24(0, *(v47 + 16) + 1, 1, v47);
LABEL_31:
        v49 = *(v47 + 16);
        v48 = *(v47 + 24);
        if (v49 >= v48 >> 1)
        {
          v47 = sub_218840D24((v48 > 1), v49 + 1, 1, v47);
        }

        *(v47 + 16) = v49 + 1;
        v50 = v47 + 16 * v49;
        v51 = v76;
        *(v50 + 32) = v45;
        *(v50 + 40) = v51;
        continue;
      }

      while (1)
      {
        if (v62 >= 3)
        {
          v74 = 3;
        }

        else
        {
          v74 = v62;
        }

        if ((v62 & 0x8000000000000000) == 0)
        {
          v64 = v74;
        }

        else
        {
          v64 = 3;
        }

        result = sub_219BF7214();
        if (result < v64)
        {
          goto LABEL_118;
        }

LABEL_69:
        if ((v47 & 0xC000000000000001) != 0 && v64)
        {
          type metadata accessor for TagModel();

          sub_219BF7334();
          if (v64 != 1)
          {
            sub_219BF7334();
            if (v64 != 2)
            {
              sub_219BF7334();
            }
          }
        }

        else
        {
        }

        if (v15)
        {
          inited = sub_219BF7564();
          v66 = v67;
          v65 = v68;
          v62 = v69;
        }

        else
        {
          v65 = 0;
          inited = (v47 & 0xFFFFFFFFFFFFFF8);
          v66 = (v47 & 0xFFFFFFFFFFFFFF8) + 32;
          v62 = (2 * v64) | 1;
        }

        swift_unknownObjectRetain();
        v91 = sub_21973D980(v66, v65, v62);
        v61 = v79;
        sub_21973A168(&v91);
        if (v61)
        {
          goto LABEL_110;
        }

        swift_unknownObjectRelease();
        v70 = *(v91 + 16);
        if (v70)
        {
          v91 = MEMORY[0x277D84F90];
          sub_219BF73F4();
          v15 = 40;
          do
          {

            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            v15 += 16;
            --v70;
          }

          while (v70);

          v71 = v91;
          if (v91 >> 62)
          {
LABEL_94:
            v47 = sub_219BF7214();
            if (!v47)
            {
LABEL_95:
              swift_unknownObjectRelease();

              return MEMORY[0x277D84F90];
            }

            goto LABEL_84;
          }
        }

        else
        {

          v71 = MEMORY[0x277D84F90];
          if (MEMORY[0x277D84F90] >> 62)
          {
            goto LABEL_94;
          }
        }

        v47 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v47)
        {
          goto LABEL_95;
        }

LABEL_84:
        v91 = MEMORY[0x277D84F90];
        v62 = &v91;
        sub_219BF73F4();
        if ((v47 & 0x8000000000000000) == 0)
        {
          v85 = inited;
          for (i = 0; ; ++i)
          {
            v15 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if ((v71 & 0xC000000000000001) != 0)
            {
              v73 = MEMORY[0x21CECE0F0](i, v71);
            }

            else
            {
              if (i >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_100;
              }

              v73 = *(v71 + 8 * i + 32);
            }

            v86 = v73;
            sub_21973B7DC(&v86, &v87);

            sub_219BF73D4();
            inited = *(v91 + 16);
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            if (v15 == v47)
            {
              swift_unknownObjectRelease();

              return v91;
            }
          }

LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          v85 = v15 & 0xFFFFFFFFFFFFFF8;
          v45 = sub_219BF7214();
          goto LABEL_37;
        }

        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:

        __break(1u);
      }
    }

    break;
  }

  result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v64 = 3;
  }

  else
  {
    v64 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result >= v64)
  {
    goto LABEL_69;
  }

LABEL_118:
  __break(1u);
  return result;
}

void sub_21973B63C()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_2186C6148(0, &unk_280E8DD90);
  v1 = sub_219BF5904();
  [v0 setShortcutItems_];
}

uint64_t sub_21973B6DC(uint64_t a1, uint64_t a2)
{
  if (qword_280EE9638 != -1)
  {
    swift_once();
  }

  sub_21874E2E8(qword_280ED03B8, a2, type metadata accessor for ShortcutItemUpdater);
  sub_219BDC7D4();
  result = v4;
  v3 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v3 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    return 0;
  }

  return result;
}

void sub_21973B7DC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*(*a1 + 16) displayName];
  if (!v4)
  {
    sub_219BF5414();
    v4 = sub_219BF53D4();
  }

  v5 = sub_21973DB54(*(v3 + 16));
  sub_21874E910(0, &qword_280E8B6B0, sub_21973DC6C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 32) = 0x656E696C64616568;
  *(inited + 16) = xmmword_219C0D560;
  *(inited + 40) = 0xEA00000000004449;
  v7 = [*(v3 + 16) identifier];
  if (!v7)
  {
    sub_219BF5414();
    v8 = sub_219BF53D4();

    v7 = v8;
  }

  *(inited + 48) = v7;
  *(inited + 56) = 0x726F7053794D7369;
  *(inited + 64) = 0xEA00000000007374;
  [*(v3 + 16) isMySports];
  *(inited + 72) = sub_219BF5B34();
  *(inited + 80) = 0x656C7A7A75507369;
  *(inited + 88) = 0xEB00000000627548;
  [*(v3 + 16) isPuzzleHub];
  *(inited + 96) = sub_219BF5B34();
  *(inited + 104) = 0x7548646F6F467369;
  *(inited + 112) = 0xE900000000000062;
  [*(v3 + 16) isFoodHub];
  *(inited + 120) = sub_219BF5B34();
  *(inited + 128) = 0x6570696365527369;
  *(inited + 136) = 0xEF676F6C61746143;
  [*(v3 + 16) isRecipeCatalog];
  *(inited + 144) = sub_219BF5B34();
  sub_2194B1AF0(inited);
  swift_setDeallocating();
  sub_21973DC6C();
  swift_arrayDestroy();
  v9 = objc_allocWithZone(MEMORY[0x277D75198]);
  v10 = sub_219BF53D4();
  sub_218D17A08();
  v11 = sub_219BF5204();

  v12 = [v9 initWithType:v10 localizedTitle:v4 localizedSubtitle:0 icon:v5 userInfo:v11];

  *a2 = v12;
}

uint64_t sub_21973BAC8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21973BB1C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_21874E910(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21973BB90(uint64_t *a1)
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
      sub_21973C138(v8, v9, a1, v4);
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
    return sub_21973BDB8(0, v2, 1, a1);
  }

  return result;
}

char *sub_21973BCBC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_218C3F8C8();
        v5 = sub_219BF5A34();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21973CB48(v7, v8, a1, v4);
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
    return sub_21973C058(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21973BDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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

char *sub_21973C058(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 16 * a3 - 16);
    v7 = &result[-a3];
LABEL_5:
    v8 = (v5 + 16 * v4);
    v10 = *v8;
    v9 = v8[1];
    v11 = v7;
    v15 = v6;
    while (1)
    {
      v12 = *v6;
      result = [*(v9 + 16) isMySports];
      if ((result & 1) == 0 && v10 >= v12)
      {
LABEL_4:
        ++v4;
        v6 = v15 + 2;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v10 = v6[2];
      v9 = v6[3];
      *(v6 + 1) = *v6;
      *v6 = v10;
      v6[1] = v9;
      v6 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21973C138(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
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
        sub_21973D17C(&(*v134)[v10[9] * v117], &(*v134)[v10[9] * *(result + 16 * (a3 - 1) + 32)], &(*v134)[v10[9] * v119], v5);
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
        sub_21973D17C(&(*v134)[v10[9] * v94], &(*v134)[v10[9] * *&v21[16 * v5 + 32]], &(*v134)[v10[9] * v95], v55);
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

uint64_t sub_21973CB48(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_97:
    v8 = *v7;
    if (!*v7)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_99:
      v90 = *(v10 + 2);
      if (v90 >= 2)
      {
        while (*v6)
        {
          v91 = *&v10[16 * v90];
          v92 = *&v10[16 * v90 + 24];
          sub_21973D71C((*v6 + 16 * v91), (*v6 + 16 * *&v10[16 * v90 + 16]), (*v6 + 16 * v92), v8);
          if (v5)
          {
          }

          if (v92 < v91)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_218C81048(v10);
          }

          if (v90 - 2 >= *(v10 + 2))
          {
            goto LABEL_123;
          }

          v93 = &v10[16 * v90];
          *v93 = v91;
          *(v93 + 1) = v92;
          result = sub_218C80FBC(v90 - 1);
          v90 = *(v10 + 2);
          if (v90 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_218C81048(v10);
    v10 = result;
    goto LABEL_99;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v99 = result;
  while (2)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
      goto LABEL_23;
    }

    v13 = *v6;
    v14 = (v13 + 16 * v12);
    v15 = *v14;
    v16 = 16 * v9;
    v17 = *(v13 + 16 * v9);
    result = [*(v14[1] + 16) isMySports];
    v18 = v11;
    if (v15 < v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = result;
    }

    v20 = v18 + 2;
    v97 = v18;
    if (v18 + 2 >= v8)
    {
      v24 = v12;
      v12 = v20;
      goto LABEL_18;
    }

    v21 = v13 + 16 * v18 + 40;
    while (1)
    {
      v12 = v20;
      v22 = *(v21 - 8);
      v23 = *(v21 - 24);
      result = [*(*v21 + 16) isMySports];
      if (result)
      {
        if ((v19 & 1) == 0)
        {
          v6 = a3;
          v11 = v97;
          v7 = v99;
          goto LABEL_23;
        }

        goto LABEL_11;
      }

      if (v19 == v22 >= v23)
      {
        break;
      }

LABEL_11:
      v20 = v12 + 1;
      v21 += 16;
      if (v8 == v12 + 1)
      {
        v24 = v12;
        v12 = v8;
        goto LABEL_18;
      }
    }

    v24 = v12 - 1;
LABEL_18:
    v6 = a3;
    if (!v19)
    {
      v7 = v99;
      v11 = v97;
      goto LABEL_23;
    }

    v11 = v97;
    if (v12 < v97)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v97 <= v24)
    {
      v82 = 0;
      v83 = 16 * v12;
      v84 = v97;
      do
      {
        if (v84 != v12 + v82 - 1)
        {
          v85 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v86 = (v85 + v16);
          v87 = v85 + v83;
          v88 = *v86;
          v89 = v86[1];
          *v86 = *(v87 - 16);
          *(v87 - 16) = v88;
          *(v87 - 8) = v89;
        }

        ++v84;
        --v82;
        v83 -= 16;
        v16 += 16;
      }

      while (v84 < v12 + v82);
    }

    v7 = v99;
LABEL_23:
    v25 = v6[1];
    if (v12 >= v25)
    {
      goto LABEL_41;
    }

    if (__OFSUB__(v12, v11))
    {
      goto LABEL_125;
    }

    if (v12 - v11 >= a4)
    {
LABEL_41:
      if (v12 < v11)
      {
        goto LABEL_124;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v9 = v12;
      if ((result & 1) == 0)
      {
        result = sub_2191F6B60(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v37 = *(v10 + 2);
      v36 = *(v10 + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        result = sub_2191F6B60((v36 > 1), v37 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v38;
      v39 = &v10[16 * v37];
      *(v39 + 4) = v11;
      *(v39 + 5) = v9;
      v40 = *v7;
      if (!*v7)
      {
        goto LABEL_134;
      }

      if (!v37)
      {
LABEL_3:
        v8 = v6[1];
        v7 = v99;
        if (v9 >= v8)
        {
          goto LABEL_97;
        }

        continue;
      }

      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v10 + 4);
          v43 = *(v10 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_61:
          if (v45)
          {
            goto LABEL_113;
          }

          v58 = &v10[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_116;
          }

          v64 = &v10[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_120;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v68 = &v10[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_75:
        if (v63)
        {
          goto LABEL_115;
        }

        v71 = &v10[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_118;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_82:
        v8 = v41 - 1;
        if (v41 - 1 >= v38)
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
          goto LABEL_127;
        }

        if (!*v6)
        {
          goto LABEL_131;
        }

        v79 = *&v10[16 * v8 + 32];
        v80 = *&v10[16 * v41 + 40];
        sub_21973D71C((*v6 + 16 * v79), (*v6 + 16 * *&v10[16 * v41 + 32]), (*v6 + 16 * v80), v40);
        if (v5)
        {
        }

        if (v80 < v79)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_218C81048(v10);
        }

        if (v8 >= *(v10 + 2))
        {
          goto LABEL_110;
        }

        v81 = &v10[16 * v8];
        *(v81 + 4) = v79;
        *(v81 + 5) = v80;
        result = sub_218C80FBC(v41);
        v38 = *(v10 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v10[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_111;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_112;
      }

      v53 = &v10[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_114;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_117;
      }

      if (v57 >= v49)
      {
        v75 = &v10[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_121;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    break;
  }

  v26 = v11 + a4;
  if (__OFADD__(v11, a4))
  {
    goto LABEL_126;
  }

  if (v26 >= v25)
  {
    v26 = v6[1];
  }

  if (v26 < v11)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v12 == v26)
  {
    goto LABEL_41;
  }

  v94 = v5;
  v27 = *v6;
  v8 = *v6 + 16 * v12 - 16;
  v98 = v11;
  v28 = v11 - v12;
  v100 = v26;
LABEL_33:
  v101 = v12;
  v29 = (v27 + 16 * v12);
  v31 = *v29;
  v30 = v29[1];
  v32 = v28;
  v33 = v8;
  while (1)
  {
    v34 = *v33;
    result = [*(v30 + 16) isMySports];
    if ((result & 1) == 0 && v31 >= v34)
    {
LABEL_32:
      v12 = v101 + 1;
      v8 += 16;
      --v28;
      if (v101 + 1 == v100)
      {
        v12 = v100;
        v5 = v94;
        v6 = a3;
        v11 = v98;
        v7 = v99;
        goto LABEL_41;
      }

      goto LABEL_33;
    }

    if (!v27)
    {
      break;
    }

    v31 = v33[2];
    v30 = v33[3];
    *(v33 + 1) = *v33;
    *v33 = v31;
    v33[1] = v30;
    v33 -= 2;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_32;
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
  return result;
}

uint64_t sub_21973D17C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
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

uint64_t sub_21973D71C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __src || &__src[16 * v13] <= a4)
    {
      memmove(a4, __src, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
      v28 = v4;
LABEL_27:
      v19 = v6 - 16;
      v5 -= 16;
      v20 = v14;
      do
      {
        v21 = v5 + 16;
        v23 = *(v20 - 2);
        v22 = *(v20 - 1);
        v20 -= 16;
        v24 = v19;
        v25 = *v19;
        if (([*(v22 + 16) isMySports] & 1) != 0 || v23 < v25)
        {
          v26 = v24;
          if (v21 != v6)
          {
            *v5 = *v24;
          }

          v4 = v28;
          if (v14 <= v28 || (v6 = v26, v26 <= v7))
          {
            v6 = v26;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v21 != v14)
        {
          *v5 = *v20;
        }

        v5 -= 16;
        v14 = v20;
        v19 = v24;
      }

      while (v20 > v28);
      v14 = v20;
      v4 = v28;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        v16 = *v4;
        if (([*(*(v6 + 1) + 16) isMySports] & 1) != 0 || v15 < v16)
        {
          break;
        }

        v17 = v4;
        v18 = v7 == v4;
        v4 += 16;
        if (!v18)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      v17 = v6;
      v18 = v7 == v6;
      v6 += 16;
      if (v18)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v7 = *v17;
      goto LABEL_18;
    }

LABEL_20:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_21973D980(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = MEMORY[0x277D84F90];
  v5 = (a3 >> 1) - a2;
  if (a3 >> 1 == a2)
  {
    v6 = 0;
LABEL_26:
    v24 = *(v4 + 3);
    if (v24 < 2)
    {
      return v4;
    }

    v25 = v24 >> 1;
    v12 = __OFSUB__(v25, v6);
    v26 = v25 - v6;
    if (!v12)
    {
      *(v4 + 2) = v26;
      return v4;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    if (a2 > v3)
    {
      v3 = a2;
    }

    v8 = v3 - a2;
    v9 = result + 8 * a2;
    v10 = (MEMORY[0x277D84F90] + 32);
    while (v8 != v7)
    {
      if (__OFADD__(v7, 1))
      {
        goto LABEL_31;
      }

      v11 = *(v9 + 8 * v7);
      if (v6)
      {

        v12 = __OFSUB__(v6--, 1);
        if (v12)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v13 = *(v4 + 3);
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        sub_21874E910(0, &unk_280E8B670, sub_218C3F8C8, MEMORY[0x277D84560]);
        v16 = swift_allocObject();
        v17 = _swift_stdlib_malloc_size_0(v16);
        v18 = v17 - 32;
        if (v17 < 32)
        {
          v18 = v17 - 17;
        }

        v19 = v18 >> 4;
        *(v16 + 2) = v15;
        *(v16 + 3) = 2 * (v18 >> 4);
        v20 = v16 + 32;
        v21 = *(v4 + 3) >> 1;
        v10 = &v16[16 * v21 + 32];
        v22 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;
        if (*(v4 + 2))
        {
          v23 = v4 + 32;
          if (v16 != v4 || v20 >= &v23[16 * v21])
          {
            memmove(v20, v23, 16 * v21);
          }

          *(v4 + 2) = 0;
        }

        else
        {
        }

        v4 = v16;
        v12 = __OFSUB__(v22, 1);
        v6 = v22 - 1;
        if (v12)
        {
          goto LABEL_32;
        }
      }

      *v10 = v7;
      *(v10 + 1) = v11;
      v10 += 16;
      if (v5 == ++v7)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21973DB54(void *a1)
{
  if (![a1 isMySports] && !objc_msgSend(a1, sel_isPuzzleHub) && !objc_msgSend(a1, sel_isFoodHub))
  {
    [a1 isRecipeCatalog];
  }

  v2 = sub_219BF53D4();
  v3 = [objc_opt_self() iconWithSystemImageName_];

  return v3;
}

void sub_21973DC6C()
{
  if (!qword_280E8F6F8)
  {
    sub_218D17A08();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F6F8);
    }
  }
}

uint64_t SportsManagementStartupTask.run()()
{
  if (qword_280EE98D8 != -1)
  {
    swift_once();
  }

  sub_21879FFB0(&qword_280EB6C68);
  sub_219BDCA54();
  sub_21879D924();
  swift_allocObject();
  return sub_219BE3014();
}

unint64_t sub_21973DE00()
{
  result = qword_27CC1E8D0;
  if (!qword_27CC1E8D0)
  {
    sub_21973DE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E8D0);
  }

  return result;
}

void sub_21973DE58()
{
  if (!qword_27CC1E8D8)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E8D8);
    }
  }
}

uint64_t sub_21973DEA8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21973DF24()
{
  sub_219BF5524();
}

uint64_t sub_21973DF8C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21973E004@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

void sub_21973E064(uint64_t *a1@<X8>)
{
  v2 = 1819047270;
  if (!*v1)
  {
    v2 = 0x6C616974726170;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21973E09C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1819047270;
  }

  else
  {
    v3 = 0x6C616974726170;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1819047270;
  }

  else
  {
    v5 = 0x6C616974726170;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

unint64_t sub_21973E200()
{
  result = qword_27CC1E8E0;
  if (!qword_27CC1E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E8E0);
  }

  return result;
}

unint64_t sub_21973E254()
{
  result = qword_27CC1E8E8;
  if (!qword_27CC1E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E8E8);
  }

  return result;
}

uint64_t sub_21973E2A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_21973E304(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21973E368()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21973E428()
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_21973E494(uint64_t a1, uint64_t a2)
{
  v4 = sub_21973E654();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_21973E4E0()
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

unint64_t sub_21973E54C()
{
  result = qword_27CC1E8F0;
  if (!qword_27CC1E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E8F0);
  }

  return result;
}

unint64_t sub_21973E5A4()
{
  result = qword_27CC1E8F8;
  if (!qword_27CC1E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E8F8);
  }

  return result;
}

unint64_t sub_21973E5FC()
{
  result = qword_27CC1E900;
  if (!qword_27CC1E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E900);
  }

  return result;
}

unint64_t sub_21973E654()
{
  result = qword_27CC1E908;
  if (!qword_27CC1E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E908);
  }

  return result;
}

unint64_t sub_21973E6AC()
{
  result = qword_27CC1E910;
  if (!qword_27CC1E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E910);
  }

  return result;
}

void sub_21973E700()
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

uint64_t type metadata accessor for WeatherTagFeedGroupKnobs()
{
  result = qword_280EBFB18;
  if (!qword_280EBFB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21973E880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_21973EAD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21973EF30(0, &qword_27CC1E918, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973EEDC();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8();
    sub_21877C5E8(&qword_280E91A88, sub_2189AD5C8);
    sub_219BF7674();
    sub_21973E880(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21973ECC4(uint64_t a1)
{
  v2 = sub_21973EEDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21973ED00(uint64_t a1)
{
  v2 = sub_21973EEDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21973ED54(void *a1)
{
  sub_21973EF30(0, &qword_27CC1E928, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21973EEDC();
  sub_219BF7B44();
  sub_2189AD5C8();
  sub_21877C5E8(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21973EEDC()
{
  result = qword_27CC1E920;
  if (!qword_27CC1E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E920);
  }

  return result;
}

void sub_21973EF30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21973EEDC();
    v7 = a3(a1, &type metadata for WeatherTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21973EFA8()
{
  result = qword_27CC1E930;
  if (!qword_27CC1E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E930);
  }

  return result;
}

unint64_t sub_21973F000()
{
  result = qword_27CC1E938;
  if (!qword_27CC1E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E938);
  }

  return result;
}

unint64_t sub_21973F058()
{
  result = qword_27CC1E940;
  if (!qword_27CC1E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E940);
  }

  return result;
}

uint64_t sub_21973F0AC(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v34 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v35 = a1;

  v8 = 0;
  while (v5)
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v8 << 6);
    v12 = (*(v35 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_2186D1230(*(v35 + 56) + 32 * v11, v33);
    *&v32 = v14;
    *(&v32 + 1) = v13;
    v29 = v32;
    v30 = v33[0];
    v31 = v33[1];
    sub_2186D1230(&v30, v28);
    v26 = v29;
    v27[0] = v30;
    v27[1] = v31;
    sub_218751558(v28, v25);
    v15 = *(v1 + 16);
    if (*(v1 + 24) <= v15)
    {

      sub_2194815B8(v15 + 1, 1);
      v1 = v34;
    }

    else
    {
    }

    v16 = v26;
    sub_219BF7AA4();
    sub_219BF5524();
    result = sub_219BF7AE4();
    v17 = v1 + 64;
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v17 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_6;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v1 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_6:
    v5 &= v5 - 1;
    *(v17 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(*(v1 + 48) + 16 * v9) = v16;
    sub_218751558(v25, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
    result = __swift_destroy_boxed_opaque_existential_1(v27);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_21973F32C()
{
  v1 = OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase____lazy_storage___dataStore;
  if (*(v0 + OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase____lazy_storage___dataStore))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase____lazy_storage___dataStore);
  }

  else
  {
    v3 = [*(v0 + OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_aggregateStoreProvider) aggregateStore];
    _s9DataStoreCMa();
    swift_allocObject();
    v2 = sub_2189D8288(v3);

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_21973F404(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v4 = sub_219BE4E74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v42 = qword_280F61728;
  v41 = sub_219BF6214();
  sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  v45 = 0;
  v46 = 0xE000000000000000;

  v12 = sub_219BF53D4();

  v13 = [a1 objectForKey_];

  if (v13)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v43, v44);
    swift_dynamicCast();
    v14 = sub_219BE49B4();
    v16 = v15;
    v17 = *(v5 + 8);
    v17(v10, v4);
    MEMORY[0x21CECC330](v14, v16);

    v18 = v45;
    v19 = v46;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_2186FC3BC();
    *(v11 + 32) = v18;
    *(v11 + 40) = v19;
    sub_219BE5314();

    v20 = sub_219BF53D4();

    v21 = [a1 objectForKey_];

    if (v21)
    {
      v22 = swift_allocObject();
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v43, v44);
      swift_dynamicCast();
      v23 = sub_219BE4D14();
      v17(v8, v4);
      v24 = *(v23 + 16);
      v25 = *(sub_219BE4D24() - 8);
      v26 = v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v22[2] = v23;
      v22[3] = v26;
      v22[4] = 0;
      v22[5] = (2 * v24) | 1;
      v27 = v38;
      sub_21973F958(v22, v38, a1);
      *(swift_allocObject() + 16) = a1;
      v28 = a1;
      v29 = sub_219BE2E54();
      sub_219BE2F64();

      v30 = swift_allocObject();
      *(v30 + 16) = v27;
      *(v30 + 24) = v28;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_2197410DC;
      *(v31 + 24) = v30;
      v32 = v28;
      v33 = v27;
      v34 = sub_219BE2E54();
      sub_219BE2F74();

      v35 = swift_allocObject();
      *(v35 + 16) = v39;
      *(v35 + 24) = v40;

      v36 = sub_219BE2E54();
      sub_219BE2FD4();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_21973F958(uint64_t a1, char *a2, void *a3)
{
  v92 = a3;
  v5 = sub_219BE49C4();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_219BE4E74();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E82C8(0, &unk_27CC1E998, MEMORY[0x277D34A50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v70 - v11;
  v13 = sub_219BE4D24();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v89 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v70 - v17;
  swift_beginAccess();
  sub_218FDC6C8(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_219744368(v12, &unk_27CC1E998, MEMORY[0x277D34A50]);
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    sub_2197445A0(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
    return;
  }

  v76 = v15;
  v79 = a1;
  v83 = v14;
  v19 = *(v14 + 32);
  v84 = v13;
  v91 = v14 + 32;
  v82 = v19;
  v19(v18, v12, v13);
  v20 = *&a2[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_tagService + 8];
  v75 = *&a2[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_tagService];
  v74 = v20;
  v78 = sub_21973F32C();
  v21 = *&a2[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_commandCenter + 8];
  v77 = *&a2[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_commandCenter];
  v81 = v21;
  v80 = a2;
  v22 = *&a2[OBJC_IVAR____TtC7NewsUI229PersonalizationScriptTestCase_tracker];

  v23 = sub_219BF53D4();

  v24 = [v92 objectForKey_];

  if (!v24)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_218751558(v94, v95);
  sub_2186CF94C();
  swift_dynamicCast();
  v25 = v93;

  v26 = sub_219BF53D4();

  v27 = [v92 objectForKey_];

  if (!v27)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_218751558(v94, v95);
  sub_2186C6148(0, &qword_280E8E480);
  swift_dynamicCast();
  v73 = v93;

  v28 = sub_219BF53D4();

  v29 = [v92 objectForKey_];

  if (!v29)
  {
LABEL_16:
    __break(1u);
    return;
  }

  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_218751558(v94, v95);
  v30 = v86;
  swift_dynamicCast();
  v31 = sub_219BE49A4();
  if (!v31 || (v32 = *(v31 + 16), , v33 = 30.0, !v32))
  {
    v33 = 0.0;
  }

  v34 = v18;
  v72 = v22;
  v90 = v25;
  v85[1](v9, v30);
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_219C09BA0;
  *&v95[0] = 0;
  *(&v95[0] + 1) = 0xE000000000000000;
  v71 = v18;
  sub_219BE4D04();
  v36 = v88;
  sub_219BF7484();
  v37 = *(v87 + 8);
  v37(v7, v36);
  v38 = v95[0];
  *(v35 + 56) = MEMORY[0x277D837D0];
  *(v35 + 64) = sub_2186FC3BC();
  *(v35 + 32) = v38;
  sub_219BE5314();

  sub_219BE4D04();
  v75 = sub_21923FB98(v75, v74);
  v37(v7, v36);
  v39 = sub_219BE1C44();
  v40 = v83;
  v41 = *(v83 + 16);
  v87 = v83 + 16;
  v88 = v41;
  v42 = v89;
  v43 = v84;
  v41(v89, v34, v84);
  v44 = *(v40 + 80);
  v86 = (v44 + 16) & ~v44;
  v45 = (v76 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = v45;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v82;
  v82(v47 + ((v44 + 16) & ~v44), v42, v43);
  *(v47 + v45) = v90;
  v49 = v73;
  *(v47 + v46) = v73;

  v85 = v49;
  sub_219BE2F64();

  v75 = sub_219BE1C44();
  v88(v42, v34, v43);
  v50 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v48(v52 + v86, v42, v43);
  v53 = v76;
  *(v52 + v76) = v78;
  *(v52 + v46) = v90;
  v54 = (v52 + v50);
  v55 = v77;
  v56 = v81;
  *v54 = v77;
  v54[1] = v56;
  *(v52 + v51) = v72;
  *(v52 + ((v51 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;

  swift_unknownObjectRetain();

  v57 = v75;
  sub_219BE2F64();

  v58 = sub_219BE1C44();
  v59 = v71;
  v60 = v84;
  v88(v42, v71, v84);
  v61 = swift_allocObject();
  v82(v61 + v86, v42, v60);
  v62 = (v61 + v53);
  v63 = v81;
  *v62 = v55;
  v62[1] = v63;
  swift_unknownObjectRetain();
  sub_219BE2F64();

  v64 = swift_allocObject();
  v65 = v80;
  v64[2] = v79;
  v64[3] = v65;
  v66 = v92;
  v64[4] = v92;

  v67 = v65;
  v68 = v66;
  v69 = sub_219BE2E54();
  sub_219BE2F64();

  (*(v83 + 8))(v59, v60);
}

uint64_t sub_21974050C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  return sub_21973F958(a2, a3, a4);
}

void sub_2197405C4(uint64_t a1, void *a2)
{
  v20 = sub_219BED214();
  v3 = *(v20 - 8);
  v4 = MEMORY[0x28223BE20](v20);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = sub_219BE4E74();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);

  v13 = sub_219BF53D4();

  v14 = [a2 objectForKey_];

  if (v14)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v21, &v22);
    swift_dynamicCast();
    if (sub_219BE49A4())
    {
    }

    (*(v10 + 8))(v12, v9);
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C09BA0;
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    sub_219BF5CB4();
    v16 = v22;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_2186FC3BC();
    *(v15 + 32) = v16;
    sub_219BE5314();

    sub_219BED1F4();
    sub_219BED244();
    v17 = *(v3 + 8);
    v18 = v6;
    v19 = v20;
    v17(v18, v20);
    sub_219BE2E14();
    v17(v8, v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_219740954(uint64_t a1, void *a2)
{
  v4 = sub_219BE4E74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = sub_219BF53D4();

  v9 = [a2 objectForKey_];

  if (v9)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v24, &aBlock);
    swift_dynamicCast();
    v10 = sub_219BE49A4();
    (*(v5 + 8))(v7, v4);
    v11 = sub_21973F32C();
    v12 = sub_219743BD0(v10, v11);

    if (!v2)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
      v14 = [a2 testName];
      if (!v14)
      {
        sub_219BF5414();
        v14 = sub_219BF53D4();
      }

      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      v16 = swift_allocObject();
      *(v16 + 16) = sub_2197440EC;
      *(v16 + 24) = v15;
      v22 = sub_2197440F4;
      v23 = v16;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v20 = sub_219740ED4;
      v21 = &block_descriptor_162;
      v17 = _Block_copy(&aBlock);
      v18 = v12;

      [v13 ts:v14 performScrollTest:0 iterations:0 delta:v17 extraResultsBlock:?];
      _Block_release(v17);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219740C4C(void *a1)
{
  sub_2186E82C8(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0B8C0;
  *(inited + 32) = 0x6572756C696166;
  *(inited + 40) = 0xE700000000000000;
  v3 = MEMORY[0x277D83D88];
  sub_2197445A0(0, &qword_280E8E900, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
  *(inited + 48) = a1 != 0;
  *(inited + 56) = a1 == 0;
  *(inited + 72) = v4;
  strcpy((inited + 80), "failureMessage");
  *(inited + 95) = -18;
  sub_2197445A0(0, &qword_280E8F860, MEMORY[0x277D837D0], v3);
  *(inited + 120) = v5;
  if (a1)
  {
    v6 = a1;
    v7 = [v6 message];
    a1 = sub_219BF5414();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *(inited + 96) = a1;
  *(inited + 104) = v9;
  *(inited + 128) = 0x747069726373;
  *(inited + 136) = 0xE600000000000000;
  sub_2186E82C8(0, &qword_27CC1E990, MEMORY[0x277D34AD0], MEMORY[0x277D83D88]);
  *(inited + 168) = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 144));
  sub_219691AA0(boxed_opaque_existential_1);
  v12 = sub_219BE4E74();
  (*(*(v12 - 8) + 56))(boxed_opaque_existential_1, 0, 1, v12);
  v13 = sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188317B0();
  swift_arrayDestroy();
  v14 = sub_21973F0AC(v13);

  return v14;
}

id sub_219740ED4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4 = sub_219BF5204();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_219741114()
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();

  MEMORY[0x28223BE20](v1);
  sub_2197445A0(0, &unk_27CC1E9B0, &_s11DestinationON, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_2197412FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v13 = sub_219BE9414();
  v26 = *(v13 - 8);
  v27 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a6;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a7;
  v18[7] = sub_218846958;
  v18[8] = v16;

  sub_2189EB264(a6);

  v19 = a7;
  sub_219BE6454();

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C09BA0;
  v29 = 0;
  v30 = 0xE000000000000000;
  v28 = a6;
  sub_219BF7484();
  v21 = v29;
  v22 = v30;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_2186FC3BC();
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  sub_219BE5314();

  v29 = a6;
  v24 = v26;
  v23 = v27;
  (*(v26 + 104))(v15, *MEMORY[0x277D6E598], v27);
  sub_219BE6474();
  (*(v24 + 8))(v15, v23);
}

void sub_219741638(uint64_t *a1, uint64_t a2, unint64_t a3, void (*a4)(void *), uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v47 = a8;
  v45 = a7;
  v46 = a6;
  v51 = a4;
  v52 = a5;
  v11 = sub_219BED174();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v50 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BED1D4();
  v49 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_219BED214();
  v48 = *(v53 - 8);
  v17 = MEMORY[0x28223BE20](v53);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - v20;
  v22 = *a1;
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    v42 = v14;
    v43 = v12;
    v44 = v11;
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_219C09BA0;
    aBlock = 0;
    v55 = 0xE000000000000000;
    v60 = a3;
    sub_219BF7484();
    v24 = aBlock;
    v25 = v55;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_2186FC3BC();
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    sub_219BE5314();

    aBlock = v22;
    v26 = NewsActivity2.identifier.getter();
    v28 = v27;
    v60 = a3;
    if (v26 == NewsActivity2.identifier.getter() && v28 == v29)
    {

LABEL_8:
      sub_2186C6148(0, &qword_280E8E3B0);
      v31 = sub_219BF66A4();
      sub_219BED1F4();
      sub_219BED244();
      v48 = *(v48 + 8);
      (v48)(v19, v53);
      v32 = swift_allocObject();
      v34 = v46;
      v33 = v47;
      v32[2] = a3;
      v32[3] = v34;
      v35 = v52;
      v32[4] = v51;
      v32[5] = v35;
      v32[6] = v45;
      v32[7] = v33;
      v58 = sub_219744650;
      v59 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v55 = 1107296256;
      v56 = sub_218793E0C;
      v57 = &block_descriptor_105_0;
      v36 = _Block_copy(&aBlock);
      sub_2189EB264(a3);
      v37 = v34;

      sub_219BED1A4();
      aBlock = MEMORY[0x277D84F90];
      sub_21874E330(&qword_280E927E0, MEMORY[0x277D85198]);
      sub_2186E82C8(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_21874EB68();
      v38 = v50;
      v39 = v44;
      sub_219BF7164();
      MEMORY[0x21CECD420](v21, v16, v38, v36);
      _Block_release(v36);

      (*(v43 + 8))(v38, v39);
      (*(v49 + 8))(v16, v42);
      (v48)(v21, v53);
      return;
    }

    v30 = sub_219BF78F4();

    if (v30)
    {
      goto LABEL_8;
    }

    type metadata accessor for PersonalizationScriptTestCase.Errors();
    sub_21874E330(&qword_27CC16BE0, type metadata accessor for PersonalizationScriptTestCase.Errors);
    v40 = swift_allocError();
    *v41 = a3;
    swift_storeEnumTagMultiPayload();
    sub_2189EB264(a3);
    v51(v40);
  }
}

void sub_219741CE0(unint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, void (*a5)(unint64_t))
{
  v7 = (a1 >> 58) & 0x3C | (a1 >> 1) & 3;
  if (v7 == 10)
  {
    type metadata accessor for TagFeedViewController();
    sub_219BF6584();
    if (v14)
    {
      v8 = v14;
      v9 = v14;
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (v7 == 17)
  {
    type metadata accessor for TodayViewController();
    sub_219BF6584();
    if (v14)
    {
      v8 = v14;
      v9 = v14 | 0x8000000000000000;
LABEL_7:
      a5(v9);

      return;
    }

LABEL_11:
    type metadata accessor for PersonalizationScriptTestCase.Errors();
    sub_21874E330(&qword_27CC16BE0, type metadata accessor for PersonalizationScriptTestCase.Errors);
    v13 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    a3(v13);

    return;
  }

  type metadata accessor for PersonalizationScriptTestCase.Errors();
  sub_21874E330(&qword_27CC16BE0, type metadata accessor for PersonalizationScriptTestCase.Errors);
  v11 = swift_allocError();
  *v12 = a1;
  swift_storeEnumTagMultiPayload();
  sub_2189EB264(a1);
  a3(v11);
}

uint64_t sub_219741EE4(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, void, void))
{
  v90 = a4;
  v88 = a6;
  v89 = a8;
  v86 = a7;
  v87 = a5;
  v10 = sub_219BE49D4();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v77 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_219BE4D74();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E82C8(0, &qword_27CC1E9A8, MEMORY[0x277D34A58], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v83 = &v71 - v14;
  v15 = sub_219BE4D54();
  v92 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v79 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v17;
  MEMORY[0x28223BE20](v16);
  v91 = &v71 - v18;
  v19 = *a1;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v20 = qword_280F61728;
  LODWORD(v82) = sub_219BF6214();
  sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v73 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C0B8C0;
  sub_219BE4D14();
  v23 = MEMORY[0x21CECC6D0]();
  v93 = v15;
  v25 = v24;

  v26 = MEMORY[0x277D837D0];
  *(v22 + 56) = MEMORY[0x277D837D0];
  v27 = sub_2186FC3BC();
  *(v22 + 64) = v27;
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  v96 = 0;
  v97 = 0xE000000000000000;
  sub_219BE4D24();
  sub_219BF7484();
  v28 = v96;
  v29 = v97;
  *(v22 + 96) = v26;
  *(v22 + 104) = v27;
  *(v22 + 72) = v28;
  *(v22 + 80) = v29;
  v96 = 0;
  v97 = 0xE000000000000000;
  v85 = v19;
  v94 = v19;
  v30 = v93;
  sub_219BF7484();
  v31 = v96;
  v32 = v97;
  *(v22 + 136) = v26;
  *(v22 + 144) = v27;
  *(v22 + 112) = v31;
  *(v22 + 120) = v32;
  v84 = v20;
  sub_219BE5314();

  v33 = swift_allocObject();
  v34 = sub_219BE4D14();
  v35 = *(v34 + 16);
  v36 = v92;
  v37 = *(v92 + 80);
  v33[2] = v34;
  v33[3] = v34 + ((v37 + 32) & ~v37);
  v33[4] = 0;
  v33[5] = (2 * v35) | 1;
  _s9InventoryCMa();
  v38 = swift_allocObject();
  *(v38 + 16) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v39 = v83;
  sub_218FDC6E0(v83);
  if ((*(v36 + 48))(v39, 1, v30) == 1)
  {
    sub_219744368(v39, &qword_27CC1E9A8, MEMORY[0x277D34A58]);
    sub_219BF6214();
    sub_219BE5314();
    sub_2189D69A0();
    sub_2197445A0(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v40 = sub_219BE3014();
  }

  else
  {
    v72 = ~v37;
    v82 = *(v36 + 32);
    v83 = (v36 + 32);
    v82(v91, v39, v30);
    sub_219BF6214();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_219C09BA0;
    v94 = 0;
    v95 = 0xE000000000000000;
    sub_219BF7484();
    v42 = v94;
    v43 = v95;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = v27;
    *(v41 + 32) = v42;
    *(v41 + 40) = v43;
    sub_219BE5314();

    v44 = v75;
    v45 = v74;
    v46 = v76;
    (*(v75 + 104))(v74, *MEMORY[0x277D34A68], v76);
    v47 = sub_219BE4D34();
    v49 = v90;
    if (v48)
    {
      sub_2189D66A4(v47, v48, v90, v45);
    }

    (*(v44 + 8))(v45, v46);
    v50 = v77;
    v51 = v91;
    sub_219BE4D44();
    v71 = v38;
    sub_21993873C(v85, v38, v87, v88, v86, v89);
    (*(v80 + 8))(v50, v81);
    v52 = swift_allocObject();
    *(v52 + 16) = a2;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_2197443D8;
    *(v53 + 24) = v52;
    v54 = sub_219BE2E54();
    sub_219BE2F64();

    v55 = v79;
    v56 = v51;
    v57 = v93;
    (*(v92 + 16))(v79, v56, v93);
    v58 = (v37 + 24) & v72;
    v59 = swift_allocObject();
    *(v59 + 16) = v49;
    v82((v59 + v58), v55, v57);
    v60 = swift_allocObject();
    *(v60 + 16) = sub_2197443E0;
    *(v60 + 24) = v59;

    v61 = sub_219BE2E54();
    v84 = sub_219BE2F74();

    v83 = sub_219BE1C44();
    v62 = swift_allocObject();
    *(v62 + 16) = v33;
    *(v62 + 24) = v49;
    v63 = v85;
    v64 = v71;
    *(v62 + 32) = v85;
    *(v62 + 40) = v64;
    v65 = v88;
    *(v62 + 48) = v87;
    *(v62 + 56) = v65;
    v66 = v89;
    *(v62 + 64) = v86;
    *(v62 + 72) = v66;
    *(v62 + 80) = a2;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_2197443E4;
    *(v67 + 24) = v62;
    v68 = (v63 & 0x7FFFFFFFFFFFFFFFLL);

    swift_unknownObjectRetain();

    v69 = v83;
    v40 = sub_219BE2F64();

    (*(v92 + 8))(v91, v93);
  }

  return v40;
}

uint64_t sub_2197428AC()
{
  v0 = sub_219BED214();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_219BF5CB4();
  v8 = v13;
  v9 = v14;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  sub_219BE5314();

  sub_219BED1F4();
  sub_219BED244();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v11 = sub_219BE2E14();
  v10(v6, v0);
  return v11;
}

uint64_t sub_219742AEC(uint64_t a1)
{
  v2 = sub_219BE4D74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D34A60], v2);
  v6 = sub_219BE4D34();
  if (v7)
  {
    sub_2189D66A4(v6, v7, a1, v5);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_219742BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void, void, void), double a9)
{
  v69 = a6;
  v70 = a8;
  v65 = a7;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v12 = sub_219BE49D4();
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE4D74();
  v60 = *(v15 - 8);
  v61 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E82C8(0, &qword_27CC1E9A8, MEMORY[0x277D34A58], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v56 - v19;
  v21 = sub_219BE4D54();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v62 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v56 - v25;
  swift_beginAccess();
  sub_218FDC6E0(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_219744368(v20, &qword_27CC1E9A8, MEMORY[0x277D34A58]);
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    sub_2189D69A0();
    sub_2197445A0(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    v58 = a1;
    v59 = a2;
    v57 = v22;
    v28 = *(v22 + 32);
    v56[1] = v22 + 32;
    v56[0] = v28;
    v28(v26, v20, v21);
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_219C09BA0;
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_219BF7484();
    v30 = v71;
    v31 = v72;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_2186FC3BC();
    *(v29 + 32) = v30;
    *(v29 + 40) = v31;
    sub_219BE5314();

    v33 = v60;
    v32 = v61;
    (*(v60 + 104))(v17, *MEMORY[0x277D34A68], v61);
    v34 = sub_219BE4D34();
    v36 = v59;
    if (v35)
    {
      sub_2189D66A4(v34, v35, v59, v17);
    }

    (*(v33 + 8))(v17, v32);
    sub_219BE4D44();
    sub_21993873C(v66, v67, v68, v69, v65, v70);
    (*(v63 + 8))(v14, v64);
    v37 = swift_allocObject();
    *(v37 + 16) = a9;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_2197446E0;
    *(v38 + 24) = v37;
    v39 = sub_219BE2E54();
    sub_219BE2F64();

    v40 = v57;
    v41 = v62;
    (*(v57 + 16))(v62, v26, v21);
    v42 = (*(v40 + 80) + 24) & ~*(v40 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v36;
    (v56[0])(v43 + v42, v41, v21);
    v44 = swift_allocObject();
    *(v44 + 16) = sub_2197446D4;
    *(v44 + 24) = v43;

    v45 = sub_219BE2E54();
    v64 = sub_219BE2F74();

    v62 = sub_219BE1C44();
    v46 = swift_allocObject();
    *(v46 + 16) = v58;
    *(v46 + 24) = v36;
    v47 = v66;
    v48 = v67;
    *(v46 + 32) = v66;
    *(v46 + 40) = v48;
    v63 = v21;
    v49 = v69;
    *(v46 + 48) = v68;
    *(v46 + 56) = v49;
    v50 = v65;
    v65 = v26;
    v51 = v70;
    *(v46 + 64) = v50;
    *(v46 + 72) = v51;
    *(v46 + 80) = a9;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_2197446D8;
    *(v52 + 24) = v46;
    v53 = (v47 & 0x7FFFFFFFFFFFFFFFLL);

    swift_unknownObjectRetain();

    v54 = v62;
    v55 = sub_219BE2F64();

    (*(v40 + 8))(v65, v63);
    return v55;
  }
}

uint64_t sub_219743400()
{
  v1 = sub_219BE49C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE4D04();
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277D34888])
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    swift_getObjectType();
    sub_2197445A0(0, &qword_280EE3930, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBE8]);
    sub_219BEA9A4();
    sub_219BE70A4();
    if (v0)
    {
    }

    sub_2197445A0(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v6 = sub_219BE30B4();
LABEL_11:
    v7 = v6;
    (*(v2 + 8))(v4, v1);
    return v7;
  }

  if (v5 == *MEMORY[0x277D34890])
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    sub_2197445A0(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v6 = sub_219BE3014();
    goto LABEL_11;
  }

  result = sub_219BF78E4();
  __break(1u);
  return result;
}

uint64_t sub_219743734(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BED174();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED1D4();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BED214();
  v23 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_2186C6148(0, &qword_280E8E3B0);

  v18 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v19 = *(v11 + 8);
  v19(v14, v10);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2187A913C;
  *(v20 + 24) = v17;
  aBlock[4] = sub_219744360;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_44_1;
  v21 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E330(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_2186E82C8(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD420](v16, v9, v6, v21);
  _Block_release(v21);

  (*(v26 + 8))(v6, v4);
  (*(v24 + 8))(v9, v25);
  return (v19)(v16, v23);
}

uint64_t sub_219743B34(uint64_t (*a1)(uint64_t))
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v2 = sub_219BE5314();
  return a1(v2);
}

uint64_t sub_219743BD0(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v4 = sub_219BE4E64();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    return 0;
  }

  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  LODWORD(v31) = sub_219BF6214();
  sub_2186E82C8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v34 = v7;
  v8 = swift_allocObject();
  v32 = xmmword_219C09BA0;
  *(v8 + 16) = xmmword_219C09BA0;
  v36 = *(a1 + 16);
  v9 = v36;
  v10 = sub_219BF7894();
  v12 = v11;
  *(v8 + 56) = MEMORY[0x277D837D0];
  v33 = sub_2186FC3BC();
  *(v8 + 64) = v33;
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  sub_219BE5314();

  if (!v9)
  {
    return 0;
  }

  v30 = *(v38 + 16);
  v31 = (v38 + 8);
  v13 = a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
  v38 += 16;
  v29 = *(v38 + 56);
  while (1)
  {
    v30(v6, v13, v4);
    sub_219BF6214();
    v14 = swift_allocObject();
    *(v14 + 16) = v32;
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_219BF7484();
    v15 = v36;
    v16 = v37;
    v17 = v33;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = v17;
    *(v14 + 32) = v15;
    *(v14 + 40) = v16;
    sub_219BE5314();

    v18 = sub_21923F204(v35);
    if (v2)
    {
      return (*v31)(v6, v4);
    }

    v19 = v18;
    sub_219BF6214();
    if ((v19 & 1) == 0)
    {
      break;
    }

    sub_219BE5314();
    (*v31)(v6, v4);
    v13 += v29;
    if (!--v9)
    {
      return 0;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_219BF7484();
  v22 = v36;
  v23 = v37;
  v24 = v33;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = v24;
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  sub_219BE5314();

  v36 = 0;
  v37 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000011, 0x8000000219D33230);
  sub_219BF7484();
  v25 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v26 = sub_219BF53D4();

  v27 = [v25 initWithMessage_];

  (*v31)(v6, v4);
  return v27;
}

uint64_t sub_2197440F4()
{
  v1 = (*(v0 + 16))();
  v2 = sub_218E9B5CC(v1);

  return v2;
}

uint64_t sub_2197441D8(uint64_t *a1)
{
  v3 = *(sub_219BE4D24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_219741EE4(a1, *(v1 + ((((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_219744368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186E82C8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_55Tm()
{
  v1 = sub_219BE4D54();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2197444AC()
{
  sub_219BE4D54();
  v1 = *(v0 + 16);

  return sub_219742AEC(v1);
}

uint64_t objectdestroy_61Tm_0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_2197445A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for PersonalizationScriptTestCase.Errors()
{
  result = qword_27CC1E9C0;
  if (!qword_27CC1E9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219744660()
{
  result = sub_219BE4CC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_219744700(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v23 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *(v23 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_219BF7214();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v22 = sub_219BF7214();
      v9 = v22 + v6;
      if (__OFADD__(v22, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_219BF7214();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_219BF7364();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v6)
    {
      goto LABEL_36;
    }

    v27 = v2;
    v14 = v10 + 8 * v11 + 32;
    v25 = v6;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_2187E7248();
      sub_21962C1F4();
      for (i = 0; i != v13; ++i)
      {
        v16 = sub_218A352D0(v26, i, v4);
        v18 = *v17;
        swift_unknownObjectRetain();
        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      sub_218731D50();
      swift_arrayInitWithCopy();
    }

    v2 = v27;
    if (v25 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v25);
      v21 = v19 + v25;
      if (v20)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = sub_219BF7214();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_219744990(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_21870F424(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  v4 = [a2 articleListID];
  v5 = sub_219BF5414();
  v7 = v6;

  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  v8 = sub_219BF27C4();

  return v8;
}

uint64_t sub_219744A88(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v4 = sub_21947D59C(*(*a1 + 16), 0);
  v5 = sub_2194B7E44(v8, v4 + 4, v2, v1);

  result = sub_21892DE98();
  if (v5 == v2)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_5:
    v7 = sub_219744700(v4);

    v8[0] = v7;
    v8[1] = v3;
    v8[2] = v3;
    sub_21870F424(0, &qword_280EE6F90, &_s4FeedVN_0, MEMORY[0x277D6CF30]);
    memset(&v8[3], 0, 24);
    swift_allocObject();
    return sub_219BE3014();
  }

  __break(1u);
  return result;
}

uint64_t sub_219744BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 16);
  v12 = objc_allocWithZone(MEMORY[0x277D30F58]);

  v13 = v11;

  v14 = sub_219BF53D4();

  v15 = [v12 initWithContext:v13 issueListID:v14];

  [v15 setPurpose_];
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = sub_2189EB59C;
  v16[5] = v10;
  v19[4] = sub_219744E50;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_218FF8F6C;
  v19[3] = &block_descriptor_163;
  v17 = _Block_copy(v19);

  [v15 setFetchCompletionHandler_];
  _Block_release(v17);
  sub_219BE1F84();
  sub_219BE1F54();
  sub_219BE1F64();
}

void sub_219744DA8(uint64_t a1, id a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v6 = a2;
    v7 = a2;
    v8 = v6;
  }

  else
  {
    if (a1)
    {
      a5();
      return;
    }

    sub_2189EEC00();
    v8 = swift_allocError();
    v6 = v8;
    *v9 = 2;
  }

  a3(v8);
}

id sub_219744E90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = [*a1 locationServicesAvailable];
  v5 = result ^ 1;
  if (v3 == 2)
  {
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

void sub_219744EE8(void *a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  if (!a2)
  {
    if (a1 && ([a1 respondsToSelector_] & 1) != 0)
    {
      v15 = [a1 locationSharingUpsellConfig];
      v16 = [v15 landingPageArticleID];
      if (v16)
      {
        v17 = v16;
        sub_219BF5414();

        if (qword_27CC08638 != -1)
        {
          swift_once();
        }

        v18 = sub_219BE5434();
        __swift_project_value_buffer(v18, qword_27CCD8BB8);
        v19 = sub_219BE5414();
        v20 = sub_219BF6214();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_2186C1000, v19, v20, "Routing to location sharing landing page...", v21, 2u);
          MEMORY[0x21CECF960](v21, -1, -1);
        }

        __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
        sub_219BE43C4();

LABEL_22:
        sub_219BE1D04();

        return;
      }
    }

    else
    {
      v15 = 0;
    }

    if (qword_27CC08638 != -1)
    {
      swift_once();
    }

    v22 = sub_219BE5434();
    __swift_project_value_buffer(v22, qword_27CCD8BB8);
    v23 = sub_219BE5414();
    v24 = sub_219BF6214();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2186C1000, v23, v24, "LocationSharingDetectionManager: undefined landingPageArticleID. Skipping routing to landing page.", v25, 2u);
      MEMORY[0x21CECF960](v25, -1, -1);
    }

    goto LABEL_22;
  }

  v6 = a2;
  if (qword_27CC08638 != -1)
  {
    swift_once();
  }

  v7 = sub_219BE5434();
  __swift_project_value_buffer(v7, qword_27CCD8BB8);
  v8 = a2;
  v9 = sub_219BE5414();
  v10 = sub_219BF61F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = a2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2186C1000, v9, v10, "showLocationSharingScreen: failed to fetch configuration with error: %@", v11, 0xCu);
    sub_218962D30(v12);
    MEMORY[0x21CECF960](v12, -1, -1);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2197452C0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219745318()
{
  sub_218755F2C(0);
  sub_219BE3204();
  v0 = sub_219BE2E54();
  v1 = sub_219BE2F74();

  return v1;
}

void (*sub_2197453A8())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_weakInit();
  return sub_2197457B8;
}

void sub_219745404(void (*a1)(void *, uint64_t), uint64_t a2)
{
  v4 = sub_219BE2864();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_218CF7A74(0, &qword_280E8C090, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09EC0;
    sub_219BE2834();
    sub_219BE2854();
    aBlock[0] = v10;
    sub_21878FA74(&qword_280EE73C0, 255, MEMORY[0x277D6CD38]);
    sub_218CF7A74(0, &unk_280E8F5C0, MEMORY[0x277D83940]);
    sub_21881CB9C();
    sub_219BF7164();
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;

    sub_219BE1D24();

    (*(v5 + 8))(v7, v4);
    v12 = *(v9 + 56);
    v13 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_2197457F0;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218C1CBB4;
    aBlock[3] = &block_descriptor_164;
    v14 = _Block_copy(aBlock);

    [v12 fetchConfigurationIfNeededWithCompletion_];
    _Block_release(v14);
  }

  else
  {
    v15 = sub_219BE8B44();
    sub_21878FA74(&qword_27CC127C0, 255, MEMORY[0x277D6E190]);
    v16 = swift_allocError();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D6E188], v15);
    a1(v16, 1);
  }
}

uint64_t sub_2197457F8()
{
  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F62670);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "RevokeNotificationHandler received notification in foreground", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  MEMORY[0x28223BE20](v4);
  sub_219BE2C84();
  sub_219BE3204();
  v5 = sub_219BE2E54();
  type metadata accessor for UNNotificationPresentationOptions(0);
  v6 = sub_219BE2F64();

  return v6;
}

uint64_t sub_219745984(int a1, id a2)
{
  v2 = [a2 request];
  v3 = [v2 content];

  v4 = [v3 userInfo];
  v5 = sub_219BF5214();

  v6 = sub_219745A54(v5);

  return v6;
}

uint64_t sub_219745A54(uint64_t a1)
{
  v42 = *v1;
  v3 = sub_219BE2C84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v10 = sub_219BE5434();
  __swift_project_value_buffer(v10, qword_280F62670);
  v11 = sub_219BE5414();
  v12 = sub_219BF6214();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v41 = v7;
    v14 = v4;
    v15 = v3;
    v16 = v13;
    *v13 = 0;
    _os_log_impl(&dword_2186C1000, v11, v12, "RevokeNotificationHandler received notification", v13, 2u);
    v17 = v16;
    v3 = v15;
    v4 = v14;
    MEMORY[0x21CECF960](v17, -1, -1);
  }

  sub_219656878(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v41 = v6;
    v19 = *v9;
    v18 = v9[1];
    v21 = v9[2];
    v20 = v9[3];

    v22 = sub_219BE5414();
    v23 = sub_219BF6214();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v40 = v3;
      v25 = v24;
      v26 = swift_slowAlloc();
      v39 = v19;
      v27 = v26;
      v43 = v26;
      *v25 = 136315138;

      v28 = sub_2186D1058(v21, v20, &v43);

      *(v25 + 4) = v28;
      _os_log_impl(&dword_2186C1000, v22, v23, "RevokeNotificationHandler targeting removal of notification with backendID: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v29 = v27;
      v19 = v39;
      MEMORY[0x21CECF960](v29, -1, -1);
      v30 = v25;
      v3 = v40;
      MEMORY[0x21CECF960](v30, -1, -1);
    }

    sub_2197469A4(0, &qword_280E8F2E0, type metadata accessor for UserNotification, MEMORY[0x277D83940]);
    sub_219BE3204();
    v31 = swift_allocObject();
    v31[2] = v19;
    v31[3] = v18;
    v31[4] = v21;
    v31[5] = v20;
    v32 = sub_219BE2E54();
    sub_219BE2F94();

    v6 = v41;
  }

  else
  {
    sub_219746A90(v9, type metadata accessor for UserNotification.Kind);
    v32 = sub_219BE5414();
    v33 = sub_219BF61F4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v6;
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_2186C1000, v32, v33, "RevokeNotificationHandler cannot handle this type of notification.", v35, 2u);
      v36 = v35;
      v6 = v34;
      MEMORY[0x21CECF960](v36, -1, -1);
    }
  }

  (*(v4 + 104))(v6, *MEMORY[0x277D6CE80], v3);
  sub_2197469A4(0, &unk_280EE6BA0, MEMORY[0x277D6CE90], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219745F60()
{
  sub_2197469A4(0, &qword_27CC10F60, type metadata accessor for UNNotificationPresentationOptions, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219745FE0(unint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = a5;
  v9 = type metadata accessor for UserNotification.ArticleData(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v80 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v78 - v12;
  v88 = type metadata accessor for UserNotification.Kind(0);
  result = MEMORY[0x28223BE20](v88);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v90 = MEMORY[0x277D84FA0];
  if (v18 >> 62)
  {
    result = sub_219BF7214();
    v19 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_45:
    v72 = MEMORY[0x277D84FA0];
LABEL_46:
    v73 = a2[5];
    v74 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v73);
    v75 = *(v72 + 16);
    if (v75)
    {
      v76 = sub_21947D1C0(*(v72 + 16), 0);
      v77 = sub_2194ABD64(&v89, v76 + 4, v75, v72);
      sub_21892DE98();
      if (v77 == v75)
      {
LABEL_50:
        (*(v74 + 80))(v76, v73, v74);
      }

      __break(1u);
    }

    v76 = MEMORY[0x277D84F90];
    goto LABEL_50;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_45;
  }

LABEL_3:
  if (v19 >= 1)
  {
    v78 = a2;
    v20 = 0;
    v87 = v18 & 0xC000000000000001;
    *&v15 = 136315138;
    v81 = v15;
    v79 = a6;
    v83 = v17;
    v84 = v13;
    v82 = v18;
    v85 = v19;
    while (1)
    {
      if (v87)
      {
        v23 = MEMORY[0x21CECE0F0](v20, v18);
      }

      else
      {
        v23 = *(v18 + 8 * v20 + 32);
      }

      v24 = v23;
      sub_219746A28(v23 + OBJC_IVAR____TtC7NewsUI216UserNotification_kind, v17, type metadata accessor for UserNotification.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_2187ACC2C();
          v27 = &v17[*(v26 + 48)];
          v29 = *v27;
          v28 = v27[1];
          if (qword_280EE5FC8 != -1)
          {
            swift_once();
          }

          v30 = sub_219BE5434();
          __swift_project_value_buffer(v30, qword_280F62670);

          v31 = sub_219BE5414();
          v32 = sub_219BF6214();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v89 = v34;
            *v33 = v81;
            *(v33 + 4) = sub_2186D1058(v29, v28, &v89);
            _os_log_impl(&dword_2186C1000, v31, v32, "RevokeNotificationHandler found delivered url notification with id: %s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v34);
            v35 = v34;
            a6 = v79;
            MEMORY[0x21CECF960](v35, -1, -1);
            v36 = v33;
            v13 = v84;
            MEMORY[0x21CECF960](v36, -1, -1);
          }

          if (v29 == v86 && v28 == a6)
          {

            v17 = v83;
            goto LABEL_26;
          }

          v47 = sub_219BF78F4();

          v17 = v83;
          if (v47)
          {
LABEL_26:
            v48 = v24;
            v49 = sub_219BE5414();
            v50 = sub_219BF6214();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              v89 = v52;
              *v51 = v81;
              v53 = *&v48[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
              v54 = *&v48[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier + 8];

              v55 = sub_2186D1058(v53, v54, &v89);
              v13 = v84;

              *(v51 + 4) = v55;
              v17 = v83;
              _os_log_impl(&dword_2186C1000, v49, v50, "RevokeNotificationHandler found a matching url notification. Will remove: %s", v51, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v52);
              MEMORY[0x21CECF960](v52, -1, -1);
              MEMORY[0x21CECF960](v51, -1, -1);
            }

            v19 = v85;
            v57 = *&v48[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
            v56 = *&v48[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier + 8];

            sub_219497B60(&v89, v57, v56);
          }

          else
          {

            v19 = v85;
          }

          v58 = sub_219BDB954();
          (*(*(v58 - 8) + 8))(v17, v58);
LABEL_41:
          v18 = v82;
          goto LABEL_7;
        }

        v21 = type metadata accessor for UserNotification.Kind;
        v22 = v17;
      }

      else
      {
        sub_218A7A74C(v17, v13);
        if (qword_280EE5FC8 != -1)
        {
          swift_once();
        }

        v37 = sub_219BE5434();
        __swift_project_value_buffer(v37, qword_280F62670);
        v38 = v13;
        v39 = v80;
        sub_219746A28(v38, v80, type metadata accessor for UserNotification.ArticleData);
        v40 = sub_219BE5414();
        v41 = sub_219BF6214();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v89 = v43;
          *v42 = v81;
          v44 = v39;
          if (*(v39 + 24))
          {
            v45 = *(v39 + 16);
            v46 = *(v39 + 24);
          }

          else
          {
            v46 = 0xE300000000000000;
            v45 = 7104878;
          }

          sub_219746A90(v44, type metadata accessor for UserNotification.ArticleData);
          v59 = sub_2186D1058(v45, v46, &v89);

          *(v42 + 4) = v59;
          _os_log_impl(&dword_2186C1000, v40, v41, "RevokeNotificationHandler found delivered article notification with backendID: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x21CECF960](v43, -1, -1);
          MEMORY[0x21CECF960](v42, -1, -1);

          a6 = v79;
          v18 = v82;
          v17 = v83;
        }

        else
        {

          sub_219746A90(v39, type metadata accessor for UserNotification.ArticleData);
        }

        v13 = v84;
        v19 = v85;
        v60 = *(v84 + 3);
        if (v60 && (*(v84 + 2) == v86 && v60 == a6 || (sub_219BF78F4() & 1) != 0))
        {
          v61 = v24;
          v62 = sub_219BE5414();
          v63 = sub_219BF6214();

          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v89 = v65;
            *v64 = v81;
            v66 = *&v61[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
            v67 = *&v61[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier + 8];

            v68 = sub_2186D1058(v66, v67, &v89);
            v13 = v84;

            *(v64 + 4) = v68;
            v17 = v83;
            _os_log_impl(&dword_2186C1000, v62, v63, "RevokeNotificationHandler found a matching article notification. Will remove: %s", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v65);
            v69 = v65;
            v19 = v85;
            MEMORY[0x21CECF960](v69, -1, -1);
            MEMORY[0x21CECF960](v64, -1, -1);
          }

          v71 = *&v61[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
          v70 = *&v61[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier + 8];

          sub_219497B60(&v89, v71, v70);

          sub_219746A90(v13, type metadata accessor for UserNotification.ArticleData);
          goto LABEL_41;
        }

        v21 = type metadata accessor for UserNotification.ArticleData;
        v22 = v13;
      }

      sub_219746A90(v22, v21);
LABEL_7:
      if (v19 == ++v20)
      {
        v72 = v90;
        a2 = v78;
        goto LABEL_46;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219746948()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 64))(v1, v2);
}

void sub_2197469A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219746A28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219746A90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_219746AF0(void *a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v63 = a1;
  sub_2197481B8(0, &qword_280E8FE00, MEMORY[0x277D34450]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v55 - v6;
  v8 = sub_219BF4574();
  v58 = *(v8 - 1);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v56 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197481B8(0, &unk_280EE4470, MEMORY[0x277D6E658]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v55 - v11);
  v13 = sub_219BE92E4();
  v60 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v19 = sub_219BE9EC4();
  v61 = *(v19 - 8);
  v62 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  v64 = result;
  if (result)
  {
    v23 = sub_219747B14(a2);
    if (v23)
    {
      v24 = v23;
      v25 = [v64 presentedViewController];
      if (v25)
      {
        v26 = v25;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          return 0;
        }
      }

      v65[0] = v24;
      v66 = 2;
      v30 = v24;
      v31 = sub_218CF86B0(v63, v65);
      sub_2189A4E34(v65);
      v63 = v31;
      if (v31)
      {
        LODWORD(v56) = *MEMORY[0x277D6E528];
        v32 = v56;
        v33 = sub_219BE92D4();
        v59 = v30;
        v34 = v33;
        v35 = *(v33 - 8);
        v36 = *(v35 + 104);
        v57 = v35 + 104;
        v36(v18, v32, v33);
        v37 = *MEMORY[0x277D6E518];
        v58 = v12;
        v38 = *(v60 + 104);
        v38(v18, v37, v13);
        v36(v15, v56, v34);
        v38(v15, v37, v13);
        sub_219BE9EB4();
        v39 = sub_219BE94F4();
        v40 = v58;
        (*(*(v39 - 8) + 56))(v58, 1, 1, v39);
        v41 = v63;
        sub_21909BA64(v63, v21, v40);

        sub_21974828C(v40, &unk_280EE4470, MEMORY[0x277D6E658]);
        (*(v61 + 8))(v21, v62);
      }

      else
      {
      }

      return 0;
    }

    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_219748154();
    sub_219748564(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
    sub_219BEA794();
    sub_219BE1E14();

    if (!v68)
    {

      sub_21974828C(&v67, &qword_27CC1E9D0, sub_219748154);
      return 0;
    }

    sub_2186CB1F0(&v67, v65);
    sub_21974820C(v57, v7);
    v28 = v58;
    v27 = v59;
    if (v58[6](v7, 1, v59) == 1)
    {
      sub_21974828C(v7, &qword_280E8FE00, MEMORY[0x277D34450]);
      v29 = 1;
    }

    else
    {
      v42 = v56;
      v28[4](v56, v7, v27);
      v43 = sub_219BF4554();
      v29 = [objc_opt_self() effectWithStyle_];
      (v28[1])(v42, v27);
    }

    __swift_project_boxed_opaque_existential_1(v65, v65[3]);
    if (v29 == 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = v29;
    }

    *&v67 = v44;
    sub_2190AB1E0(v29);
    v45 = sub_219B7EBC0(a2, &v67);

    v46 = v64;
    v47 = [v64 traitCollection];
    v48 = [v47 verticalSizeClass];

    v49 = [v46 traitCollection];
    v50 = [v49 horizontalSizeClass];

    if (v48 == 1)
    {
      if ((v50 - 1) <= 1)
      {
LABEL_22:
        v51 = [objc_opt_self() currentDevice];
        v52 = [v51 userInterfaceIdiom];

        if (v52 == 1)
        {
          v53 = 2;
        }

        else
        {
          v53 = 5;
        }

        goto LABEL_27;
      }
    }

    else if (v48 == 2 && v50 == 1)
    {
      goto LABEL_22;
    }

    v53 = 2;
LABEL_27:
    v54 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    [v54 setModalInPresentation_];
    [v54 setModalPresentationStyle_];

    sub_2190AAF44(v29);
    __swift_destroy_boxed_opaque_existential_1(v65);
    return v54;
  }

  return result;
}

uint64_t sub_2197472E8(void *a1, uint64_t a2)
{
  v70 = a1;
  v4 = sub_219BE9CF4();
  v69 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE9D24();
  v68 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2197481B8(0, &unk_280EE4470, MEMORY[0x277D6E658]);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v61 - v11;
  v12 = sub_219BE92E4();
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - v16;
  v18 = sub_219BE9EC4();
  v65 = *(v18 - 8);
  v66 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219747B14(a2);
  if (v21)
  {
    v22 = v21;
    v23 = v2[7];
    Strong = swift_unknownObjectWeakLoadStrong();
    v25 = v70;
    if (Strong)
    {
      v26 = Strong;
      v27 = [Strong presentedViewController];

      if (v27)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          return 0;
        }
      }
    }

    v71[0] = v22;
    v72 = 2;
    v48 = v22;
    v49 = sub_218CF86B0(v25, v71);
    sub_2189A4E34(v71);
    if (v49)
    {
      v50 = *MEMORY[0x277D6E528];
      v51 = sub_219BE92D4();
      v70 = v48;
      v52 = v51;
      v53 = *(*(v51 - 8) + 104);
      v69 = v23;
      v53(v17, v50, v51);
      v54 = *MEMORY[0x277D6E518];
      v62 = v20;
      v55 = v64;
      v68 = v49;
      v56 = *(v63 + 104);
      v56(v17, v54, v64);
      v53(v14, v50, v52);
      v56(v14, v54, v55);
      v57 = v62;
      sub_219BE9EB4();
      v58 = sub_219BE94F4();
      v59 = v67;
      (*(*(v58 - 8) + 56))(v67, 1, 1, v58);
      v60 = v68;
      sub_21909BA64(v68, v57, v59);

      sub_21974828C(v59, &unk_280EE4470, MEMORY[0x277D6E658]);
      v65[1](v57, v66);
    }

    else
    {
    }

    return 0;
  }

  v65 = v9;
  v66 = v6;
  v28 = v7;
  v67 = v4;
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_219748154();
  sub_219748564(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  sub_219BEA794();
  sub_219BE1E14();

  if (v74)
  {
    sub_2186CB1F0(&v73, v71);
    __swift_project_boxed_opaque_existential_1(v71, v71[3]);
    *&v73 = 0;
    v30 = sub_219B7EBC0(a2, &v73);

    v31 = sub_219BED0C4();
    [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    v32 = *a2;
    v33 = *(a2 + 8);
    v34 = v28;
    if (v31)
    {
      if (*(a2 + 16))
      {
        v35 = [swift_unknownObjectRetain() identifier];
        sub_219BF5414();

        sub_218B083E8(v32, v33, 1);
      }

      else
      {
      }

      v37 = v68;
      v38 = v69;
      v40 = v65;
      v39 = v66;
      sub_219BE9D54();
      v41 = sub_219BE9CE4();
      (v37[13])(v40, *MEMORY[0x277D6E8D0], v34);
      sub_219BE9D14();
      (*(v38 + 104))(v39, *MEMORY[0x277D6E8C8], v67);
      sub_219BE9D04();
      v42 = v41;
      [v42 setModalPresentationStyle_];
    }

    else
    {
      if (*(a2 + 16))
      {
        v36 = [swift_unknownObjectRetain() identifier];
        sub_219BF5414();

        sub_218B083E8(v32, v33, 1);
      }

      else
      {
      }

      v44 = v65;
      v43 = v66;
      v45 = v68;
      sub_219BE9D54();
      v46 = sub_219BE9CE4();
      sub_219BE9D34();
      (v45[13])(v44, *MEMORY[0x277D6E8D0], v28);
      sub_219BE9D14();
      (*(v69 + 104))(v43, *MEMORY[0x277D6E8C8], v67);
      sub_219BE9D04();
      v42 = v46;
      [v42 setModalPresentationStyle_];
      v47 = sub_219BEA784();
      v47(v42);
    }

    __swift_destroy_boxed_opaque_existential_1(v71);
    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219747B14(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BF2624();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1D74();
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF1584();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219748564(0, &unk_27CC0C6E0, sub_2186F1804, &type metadata for PuzzleOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v35 - v15;
  if (*(a1 + 16) == 1)
  {
    v35 = v11;
    v36 = v13;
    v17 = *a1;
    v37 = *(a1 + 8);
    v18 = objc_opt_self();
    LODWORD(v18) = [v18 isTagAllowedInContentStoreFront_];
    swift_unknownObjectRelease();
    if (!v18)
    {
      __swift_project_boxed_opaque_existential_1((v2 + 128), *(v2 + 152));
      if (qword_27CC08A08 != -1)
      {
        swift_once();
      }

      v19 = qword_27CCD9048;
      goto LABEL_10;
    }

    if ([v17 isDeprecated])
    {
      __swift_project_boxed_opaque_existential_1((v2 + 128), *(v2 + 152));
      if (qword_27CC08A10 != -1)
      {
        swift_once();
      }

      v19 = qword_27CCD9060;
LABEL_10:
      __swift_project_value_buffer(v10, v19);
      v20 = sub_219BF4994();
      sub_218B083E8(v17, v37, 1);
      return v20;
    }

    sub_218B083E8(v17, v37, 1);
    v11 = v35;
    v13 = v36;
  }

  sub_219BF1B74();
  if ((v11[6])(v16, 1, v10) == 1)
  {
    return 0;
  }

  (v11[4])(v13, v16, v10);
  if ([*(v2 + 168) useOfflineMode])
  {
    if (sub_2197482E8(a1, v2))
    {
      (v11[1])(v13, v10);
      return 0;
    }

    v28 = *(v2 + 152);
    v27 = *(v2 + 160);
    v36 = v13;
    v37 = v27;
    v35 = __swift_project_boxed_opaque_existential_1((v2 + 128), v28);
    v29 = v38;
    (*(v38 + 104))(v9, *MEMORY[0x277D335F0], v7);
    v31 = v39;
    v30 = v40;
    (*(v39 + 104))(v6, *MEMORY[0x277D33990], v40);
    v32 = sub_219BF4984();
    (*(v31 + 8))(v6, v30);
    (*(v29 + 8))(v9, v7);
    (v11[1])(v36, v10);
    return v32;
  }

  v22 = v13;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2197485CC();
  result = sub_219BE1E24();
  if (result)
  {
    v23 = result;
    v25 = *a1;
    v24 = *(a1 + 8);
    if (*(a1 + 16))
    {
      v26 = [swift_unknownObjectRetain() identifier];
      sub_219BF5414();

      sub_218B083E8(v25, v24, 1);
    }

    else
    {
    }

    v33 = sub_219BF53D4();

    v34 = [v23 isPuzzleDownloadedEnoughToUse_];

    if (v34)
    {
      (v11[1])(v22, v10);
      swift_unknownObjectRelease();
      return 0;
    }

    __swift_project_boxed_opaque_existential_1((v2 + 128), *(v2 + 152));
    v32 = sub_219BF4994();
    swift_unknownObjectRelease();
    (v11[1])(v22, v10);
    return v32;
  }

  __break(1u);
  return result;
}

unint64_t sub_219748154()
{
  result = qword_280ED81C8[0];
  if (!qword_280ED81C8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280ED81C8);
  }

  return result;
}

void sub_2197481B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_21974820C(uint64_t a1, uint64_t a2)
{
  sub_2197481B8(0, &qword_280E8FE00, MEMORY[0x277D34450]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21974828C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2197481B8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2197482E8(uint64_t a1, void *a2)
{
  v4 = sub_219BF2CB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_219BF2634();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = a2[64];
  v17 = a2[65];
  __swift_project_boxed_opaque_existential_1(a2 + 61, v14);
  *v7 = v12;
  if (v13)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D33BA8], v4);
    sub_218CC4CD0(v12, v11, 1);
    swift_unknownObjectRetain();
    sub_219BF4794();
    (*(v5 + 8))(v7, v4);
    v15 = sub_219BF2614();
    sub_218B083E8(v12, v11, 1);
  }

  else
  {
    v7[1] = v11;
    (*(v5 + 104))(v7, *MEMORY[0x277D33B80], v4);

    sub_219BF4794();
    (*(v5 + 8))(v7, v4);
    v15 = sub_219BF2614();
  }

  (*(v8 + 8))(v10, v18);
  return v15 & 1;
}

void sub_219748564(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2197485CC()
{
  result = qword_280E8DD18;
  if (!qword_280E8DD18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8DD18);
  }

  return result;
}

uint64_t ShareLinkContextProvider.__allocating_init(context:)(_BYTE *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  return result;
}

uint64_t sub_219748700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[2] = a2;
  sub_2197489C0();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219748A1C();
  MEMORY[0x28223BE20](v8 - 8);
  v18[1] = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + 32;
    v12 = MEMORY[0x277D84F90];
    do
    {
      sub_21896FC94(v11, v20);
      sub_21896FC94(v20, &v19);
      sub_218DB6840();
      sub_219BE5FB4();
      sub_218C113E0(v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2191FB130(0, v12[2] + 1, 1, v12);
      }

      v14 = v12[2];
      v13 = v12[3];
      if (v14 >= v13 >> 1)
      {
        v12 = sub_2191FB130(v13 > 1, v14 + 1, 1, v12);
      }

      v12[2] = v14 + 1;
      (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7, v4);
      v11 += 176;
      --v10;
    }

    while (v10);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = sub_219748ACC(&qword_27CC1E9E0);
  v16 = sub_219748ACC(&qword_27CC1E9E8);
  MEMORY[0x21CEB9170](v12, v4, v15, v16);
  sub_218DB6788();
  sub_218DB6840();
  return sub_219BE6924();
}

void sub_2197489C0()
{
  if (!qword_27CC162E8)
  {
    sub_218DB6840();
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC162E8);
    }
  }
}

void sub_219748A1C()
{
  if (!qword_27CC1E9D8)
  {
    sub_2197489C0();
    sub_219748ACC(&qword_27CC1E9E0);
    sub_219748ACC(&qword_27CC1E9E8);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1E9D8);
    }
  }
}

uint64_t sub_219748ACC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2197489C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219748B40(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BDEE04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF3B14();
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_2192057B8(v7);
  if (v8)
  {
    v9 = MEMORY[0x28223BE20](v8);
    v16[-4] = v2;
    v16[-3] = v9;
    v16[-2] = a1;
    sub_21974A2EC(0, &qword_280EE6918, sub_2189EB4C0);
    swift_allocObject();
    v10 = sub_219BE30B4();

    return v10;
  }

  else
  {
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
    sub_2186F20D4();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_219C09BA0;
    v13 = sub_219BDEDA4();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_2186FC3BC();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_219BE5314();

    v16[1] = 0;
    sub_21974A2EC(0, &qword_280EE6918, sub_2189EB4C0);
    swift_allocObject();
    return sub_219BE3014();
  }
}

id sub_219748DC4(void **a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  LODWORD(v122) = a5;
  v118 = a4;
  v121 = sub_219BDBD64();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v119 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDEE04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ContinueReadingEligibility(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_2189EAD9C();
    v51 = swift_allocError();
    *v52 = 0;
    *v15 = v51;
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_21974A2EC(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility);
    swift_allocObject();
    return sub_219BE3014();
  }

  v18 = Strong;
  v115 = v13;
  v116 = v15;
  v107 = v5;
  v19 = v12;
  v20 = v10;
  v21 = *(v10 + 16);
  v113 = v19;
  v114 = a3;
  v106 = v10 + 16;
  v105 = v21;
  v21(v19, a3, v9);
  v22 = *(v18 + 344);
  v117 = v18;
  __swift_project_boxed_opaque_existential_1((v18 + 320), v22);
  v23 = v16;
  v24 = sub_219B7D048();
  v25 = sub_219BDEDF4();
  v26 = [v25 articleID];
  v112 = sub_219BF5414();
  v111 = v27;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  v30 = sub_219BDB5E4();
  v110 = v16;
  v31 = v118;
  v109 = v30;
  v108 = v32;

  v33 = sub_2189DC6FC(v25, 0);
  v35 = v34;
  v36 = v119;
  sub_219BDBD54();
  v37 = sub_219BDBD44();
  v39 = v38;
  (*(v120 + 8))(v36, v121);
  v40 = *(v20 + 8);
  v121 = v9;
  v40(v113, v9);
  LOBYTE(v20) = v122 & 1;
  LOBYTE(v123) = v122 & 1;
  *&v128 = v112;
  *(&v128 + 1) = v111;
  *&v129 = v25;
  BYTE8(v129) = 0;
  *(&v129 + 9) = v126;
  HIDWORD(v129) = *(&v126 + 3);
  *&v130 = v109;
  *(&v130 + 1) = v108;
  *&v131 = v33;
  *(&v131 + 1) = v35;
  *&v132 = v31;
  BYTE8(v132) = v122 & 1;
  *(&v132 + 9) = v124;
  HIDWORD(v132) = *(&v124 + 3);
  *&v133 = v37;
  *(&v133 + 1) = v39;
  *&v134 = v110;
  *(&v134 + 1) = v24;
  v135 = 0;
  sub_219BDC8D4();
  sub_2189EB258(v31, v20);
  sub_219BDC8B4();
  if (qword_280EE93F0 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  if (v126)
  {
    v41 = MEMORY[0x277D837D0];
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_219C09BA0;
    v43 = sub_219BDEDA4();
    v45 = v44;
    *(v42 + 56) = v41;
    *(v42 + 64) = sub_2186FC3BC();
    *(v42 + 32) = v43;
    *(v42 + 40) = v45;
    sub_219BF6214();
    sub_219BE5314();

    v46 = v133;
    v47 = v116;
    *(v116 + 4) = v132;
    *(v47 + 5) = v46;
    *(v47 + 6) = v134;
    *(v47 + 112) = v135;
    v48 = v129;
    *v47 = v128;
    *(v47 + 1) = v48;
    v49 = v131;
    *(v47 + 2) = v130;
    *(v47 + 3) = v49;
    swift_storeEnumTagMultiPayload();
    sub_21974A2EC(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility);
    swift_allocObject();
    v50 = sub_219BE3014();
    goto LABEL_18;
  }

  v54 = v117;
  v55 = *(v117 + 112);
  sub_2189D2C8C(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_219C09BA0;
  v57 = v55;
  v58 = v114;
  *(v56 + 32) = sub_219BDEDA4();
  *(v56 + 40) = v59;
  v60 = sub_219BF5904();

  v61 = [v57 historyItemsForArticleIDs_];

  sub_219525A88();
  v62 = sub_219BF5924();

  if (v62 >> 62)
  {
    result = sub_219BF7214();
  }

  else
  {
    result = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = v116;
  v64 = v121;
  if (!result)
  {

    v105(v63, v58, v64);
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_21974A2EC(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility);
    swift_allocObject();
    v50 = sub_219BE3014();
    sub_2189EB304(&v128);
LABEL_18:

    return v50;
  }

  if ((v62 & 0xC000000000000001) != 0)
  {
    v65 = MEMORY[0x21CECE0F0](0, v62);
  }

  else
  {
    if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v65 = *(v62 + 32);
    swift_unknownObjectRetain();
  }

  if ([v65 hasArticleCompletedReading] || objc_msgSend(v65, sel_hasArticleBeenMarkedOffensive) || objc_msgSend(v65, sel_articleLikingStatus) == 2)
  {
    v105(v63, v58, v64);
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_21974A2EC(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility);
    swift_allocObject();
    v50 = sub_219BE3014();
    sub_2189EB304(&v128);

LABEL_22:
    swift_unknownObjectRelease();
    return v50;
  }

  v66 = sub_219BDEDF4();
  v67 = *(v54 + 128);
  swift_unknownObjectRetain();
  v68 = [v66 isPaid];
  if ([v66 respondsToSelector_])
  {
    v69 = [v66 isBundlePaid];
  }

  else
  {
    v69 = 0;
  }

  v70 = [v66 sourceChannel];
  if (v70)
  {
    v71 = [v70 identifier];
    swift_unknownObjectRelease();
    v120 = sub_219BF5414();
    v73 = v72;
  }

  else
  {
    v120 = 0;
    v73 = 0;
  }

  if (v68)
  {
    v74 = [v67 purchaseProvider];
    if (v73)
    {
      v75 = [v74 purchasedTagIDs];
      v76 = sub_219BF5D44();

      LOBYTE(v75) = sub_2188537B8(v120, v73, v76);

      swift_unknownObjectRelease();
      if (v75)
      {

        swift_unknownObjectRelease();
        goto LABEL_62;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (!v69)
    {
      swift_unknownObjectRelease();

LABEL_66:
      v105(v116, v114, v121);
      type metadata accessor for ContinueReadingIneligibilityReason(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_21974A2EC(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility);
      swift_allocObject();
      v50 = sub_219BE3014();
      sub_2189EB304(&v128);

      swift_unknownObjectRelease();
      goto LABEL_22;
    }
  }

  else if ((v69 & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_62;
  }

  if (!v73)
  {
    swift_unknownObjectRelease();
    goto LABEL_66;
  }

  v77 = [objc_msgSend(v67 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v77, v77 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v125 = 0u;
    v124 = 0u;
  }

  v127 = v125;
  v126 = v124;
  v122 = v66;
  if (!*(&v125 + 1))
  {
    sub_218806FD0(&v126);
    goto LABEL_49;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_49:
    v78 = 0;
    v80 = 0;
    goto LABEL_50;
  }

  v78 = v123;
  v79 = [v123 integerValue];
  if (v79 == -1)
  {

    goto LABEL_61;
  }

  v80 = v79;
LABEL_50:
  if (objc_getAssociatedObject(v77, ~v80))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v125 = 0u;
    v124 = 0u;
  }

  v127 = v125;
  v126 = v124;
  if (!*(&v125 + 1))
  {
    sub_218806FD0(&v126);
LABEL_58:

    if (v80)
    {
      goto LABEL_61;
    }

    goto LABEL_59;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_58;
  }

  v81 = v123;
  v82 = [v81 integerValue];

  if (((v82 ^ v80) & 1) == 0)
  {
LABEL_59:

    swift_unknownObjectRelease();
    goto LABEL_66;
  }

LABEL_61:
  v83 = [objc_msgSend(v67 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v84 = [v83 bundleChannelIDs];

  v85 = sub_219BF53D4();
  v86 = [v84 containsObject_];

  swift_unknownObjectRelease();
  v66 = v122;
  if ((v86 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_62:
  v122 = v66;
  v87 = [v66 sourceChannel];
  v88 = v117;
  v89 = v114;
  v90 = v121;
  if (!v87)
  {
    goto LABEL_71;
  }

  v91 = [v87 identifier];
  swift_unknownObjectRelease();
  v92 = sub_219BF5414();
  v94 = v93;

  result = [*(v88 + 120) mutedTagIDs];
  if (!result)
  {
    goto LABEL_76;
  }

  v95 = result;
  v96 = sub_219BF5D44();

  LOBYTE(v95) = sub_2188537B8(v92, v94, v96);

  if (v95)
  {

    v105(v116, v89, v90);
    type metadata accessor for ContinueReadingIneligibilityReason(0);
LABEL_70:
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_21974A2EC(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility);
    swift_allocObject();
    v50 = sub_219BE3014();
    sub_2189EB304(&v128);
LABEL_72:

    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  result = [*(v88 + 120) ignoredTagIDs];
  if (result)
  {
    v97 = result;
    v98 = sub_219BF5D44();

    v99 = sub_2188537B8(v92, v94, v98);

    if (v99)
    {
      v105(v116, v89, v90);
      type metadata accessor for ContinueReadingIneligibilityReason(0);
      goto LABEL_70;
    }

LABEL_71:
    v100 = v133;
    v101 = v116;
    *(v116 + 4) = v132;
    *(v101 + 5) = v100;
    *(v101 + 6) = v134;
    *(v101 + 112) = v135;
    v102 = v129;
    *v101 = v128;
    *(v101 + 1) = v102;
    v103 = v131;
    *(v101 + 2) = v130;
    *(v101 + 3) = v103;
    swift_storeEnumTagMultiPayload();
    sub_21974A2EC(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility);
    swift_allocObject();
    v50 = sub_219BE3014();
    goto LABEL_72;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_21974A068(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v22 = a4;
  v21 = a3;
  v5 = sub_219BDEE04();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  swift_unknownObjectRetain();
  sub_219BDEDE4();
  v23 = a2;
  v24 = v11;
  sub_2189EB4C0();
  sub_219BE3204();
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v9, v11, v5);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v6 + 32))(v14 + v13, v9, v5);
  v15 = v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = v21;
  *v15 = v21;
  v17 = v22 & 1;
  *(v15 + 8) = v22 & 1;
  sub_2189EB258(v16, v17);
  v18 = sub_219BE2E54();
  type metadata accessor for ContinueReadingEligibility(0);
  v19 = sub_219BE2F64();

  (*(v6 + 8))(v11, v5);
  return v19;
}

void sub_21974A2EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BE3114();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21974A340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_219BDEE04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = a5[20];
  v21[2] = a5[21];
  v21[1] = __swift_project_boxed_opaque_existential_1(a5 + 17, v16);
  v22[3] = sub_219BF3B14();
  v22[4] = sub_21974A888();
  v22[0] = a6;
  (*(v13 + 16))(v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a7, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v19 = (v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_218846958;
  v19[1] = v15;

  sub_219BE6254();

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

void sub_21974A528(void *a1, id a2, uint64_t a3, void (*a4)(void *))
{
  if (a1)
  {
    v6 = qword_280E8D8F0;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_219C09BA0;
    v9 = sub_219BDEDA4();
    v11 = v10;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_2186FC3BC();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    sub_219BF6214();
    sub_219BE5314();

    v24 = v7;
    a4(a1);
  }

  else
  {
    if (a2)
    {
      v13 = a2;
      if (qword_280E8D8F0 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_2186F20D4();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_219C09EC0;
      v15 = sub_219BDEDA4();
      v17 = v16;
      v18 = MEMORY[0x277D837D0];
      *(v14 + 56) = MEMORY[0x277D837D0];
      v19 = sub_2186FC3BC();
      *(v14 + 64) = v19;
      *(v14 + 32) = v15;
      *(v14 + 40) = v17;
      sub_2186CFDE4(0, &qword_280E8B580);
      sub_219BF7484();
      *(v14 + 96) = v18;
      *(v14 + 104) = v19;
      *(v14 + 72) = 0;
      *(v14 + 80) = 0xE000000000000000;
      sub_219BE5314();
    }

    else
    {
      if (qword_280E8D8F0 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_219C09BA0;
      v21 = sub_219BDEDA4();
      v23 = v22;
      *(v20 + 56) = MEMORY[0x277D837D0];
      *(v20 + 64) = sub_2186FC3BC();
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      sub_219BF6214();
      sub_219BE5314();
    }

    a4(0);
  }
}

unint64_t sub_21974A888()
{
  result = qword_280E90020;
  if (!qword_280E90020)
  {
    sub_219BF3B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90020);
  }

  return result;
}

void sub_21974A8E0(void *a1, void *a2)
{
  v5 = *(sub_219BDEE04() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_21974A528(a1, a2, v2 + v6, v7);
}

uint64_t sub_21974AB14()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SportsDetailModel();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_21974AC0C()
{
  v1 = v0;
  v2 = type metadata accessor for SportsDetailModel();
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
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

  sub_218A3A494(v0 + *(*v0 + 136), v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2191BBAA0(v4);
  if (EnumCaseMultiPayload == 1)
  {
    v7 = (v1 + *(*v1 + 128));
    v8 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v9 + 40))(v8, v9);
  }

  type metadata accessor for SportsManagementDetailPrewarmResult();
  sub_219BE3204();
  sub_2187D9028();
  v10 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  v11 = sub_219BE2E54();
  sub_218AB5E74();
  sub_219BE2F94();

  v12 = sub_219BF66A4();
  sub_219BE2FE4();
}

uint64_t sub_21974AED8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = type metadata accessor for SportsDetailModel();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (*(*(v3 + 88) + 40))(a1, *(v3 + 80));
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_218A3A494(a1, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      sub_218FA8DDC(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
      swift_unknownObjectRetain();
      sub_219BE3494();

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v14[1] = v7;
  sub_218CE6068();
  sub_21974BA20(&unk_27CC1EAD0, sub_218CE6068);
  v12 = sub_219BE6E84();

  return v12;
}

uint64_t sub_21974B100@<X0>(BOOL *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v3 = result;
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    result = swift_unknownObjectRelease();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_21974B1BC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21974B274()
{
  v1 = *v0;
  sub_219BE6EC4();
  v2 = sub_218982970();

  if ((v2 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
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

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v1 + 80);
  *(v5 + 24) = *(v1 + 88);
  *(v5 + 32) = v4;
  *(v5 + 40) = HIBYTE(v2) & 1;

  sub_219BE6F24();
}

uint64_t sub_21974B40C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ((a3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(swift_allocObject() + 16) = Strong;
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21974B4F4(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_219729700(a1, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21974B590()
{
  sub_219BE3204();
  v0 = sub_219BE1C44();
  v1 = sub_219BE3034();

  return v1;
}

uint64_t sub_21974B648(uint64_t a1)
{
  v2 = type metadata accessor for SportsDetailModel();
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A3A494(a1 + *(*a1 + 136), v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_2191BBAA0(v4);
  if (EnumCaseMultiPayload == 1)
  {
    v7 = (a1 + *(*a1 + 128));
    v8 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v8);
    return (*(v9 + 48))(v8, v9);
  }

  return result;
}

uint64_t *sub_21974B744()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + *(*v0 + 128));
  sub_2191BBAA0(v0 + *(*v0 + 136));
  return v0;
}

uint64_t sub_21974B820()
{
  sub_21974B744();

  return swift_deallocClassInstance();
}

uint64_t sub_21974B8A0()
{
  v1 = (*(v0 + *(*v0 + 120)) + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_sportsOnboardingManager);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 32))(v2, v3);
}

void sub_21974B9BC()
{
  type metadata accessor for SportsDetailModel();

  sub_2191BB250();
}

uint64_t sub_21974BA20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21974BA70()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_21974BAE0(uint64_t a1)
{
  sub_2186C66AC();
  v2 = sub_219BF6F74();
  sub_219BF6214();
  sub_219BE5314();

  sub_2186E832C(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  sub_21870F2E8(0, &qword_280EE6900);
  swift_allocObject();
  sub_219BE30B4();
  __swift_project_boxed_opaque_existential_1((a1 + 88), *(a1 + 112));
  sub_219BEFFE4();
  v3 = sub_219BE2E54();
  v4 = sub_219BE2E44();

  return v4;
}

uint64_t sub_21974BC7C(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_219BEFBD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21974BF90(a1);
  v11 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v12 = sub_21974D0A0(v10, *v11, a2);
  sub_2186C66AC();
  v26 = sub_219BF6F74();
  v25[1] = sub_219BF6214();
  sub_2186E832C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C0B8C0;
  if (a1 >> 62)
  {
    v14 = sub_219BF7214();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D83B88];
  v16 = MEMORY[0x277D83C10];
  *(v13 + 56) = MEMORY[0x277D83B88];
  *(v13 + 64) = v16;
  *(v13 + 32) = v14;
  if (v10 >> 62)
  {
    v17 = sub_219BF7214();
  }

  else
  {
    v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v13 + 96) = v15;
  *(v13 + 104) = v16;
  *(v13 + 72) = v17;
  if (v12 >> 62)
  {
    v18 = sub_219BF7214();
  }

  else
  {
    v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v13 + 136) = v15;
  *(v13 + 144) = v16;
  *(v13 + 112) = v18;
  v19 = v26;
  sub_219BE5314();

  v20 = *(v7 + 104);
  v20(v9, *MEMORY[0x277D32920], v6);
  v21 = sub_21974C380();
  v22 = *(v7 + 8);
  v22(v9, v6);
  v20(v9, *MEMORY[0x277D328F8], v6);
  v23 = sub_21974C380();

  v22(v9, v6);
  v27 = v21;
  v28 = v23;
  sub_21870F2E8(0, &qword_280EE6EE0);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21974BF90(unint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 24), v4);
  v5 = sub_219BF3CE4();
  v6 = [v5 audioSuggestionsMaxAge];

  v39 = v2;
  v7 = *(v2 + 72);
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_35:
    v9 = sub_219BF7214();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  v40 = a1;
  if (v9)
  {
    v42 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      __break(1u);

      swift_unknownObjectRelease();

      __break(1u);
      return result;
    }

    v37 = v8;
    v38 = v6;
    v11 = v42;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v12, v40);
        v13 = [swift_unknownObjectRetain() articleID];
        v14 = sub_219BF5414();
        v16 = v15;
        swift_unknownObjectRelease_n();

        v42 = v11;
        v18 = *(v11 + 16);
        v17 = *(v11 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_21870B65C((v17 > 1), v18 + 1, 1);
          v11 = v42;
        }

        ++v12;
        *(v11 + 16) = v18 + 1;
        v19 = v11 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
      }

      while (v9 != v12);
    }

    else
    {
      v20 = a1 + 32;
      do
      {
        v21 = [swift_unknownObjectRetain_n() articleID];
        v22 = sub_219BF5414();
        v24 = v23;
        swift_unknownObjectRelease_n();

        v42 = v11;
        v26 = *(v11 + 16);
        v25 = *(v11 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_21870B65C((v25 > 1), v26 + 1, 1);
          v11 = v42;
        }

        *(v11 + 16) = v26 + 1;
        v27 = v11 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v20 += 8;
        --v9;
      }

      while (v9);
    }

    a1 = v40;
    v8 = v37;
    v6 = v38;
    v10 = MEMORY[0x277D84F90];
  }

  v28 = sub_219BF5904();

  v29 = [v7 historyItemsByArticleIDForArticleIDs_];

  sub_2186D6710(0, &qword_280E8E1B0);
  v7 = sub_219BF5214();

  v42 = v10;
  if (v8)
  {
    v30 = sub_219BF7214();
    if (v30)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_19:
      v31 = 0;
      v4 = 0;
      v32 = v6;
      v33 = a1 & 0xC000000000000001;
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v33)
        {
          v34 = MEMORY[0x21CECE0F0](v31, a1);
          v6 = (v31 + 1);
          if (__OFADD__(v31, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            v35 = v42;
            goto LABEL_33;
          }
        }

        else
        {
          if (v31 >= *(v8 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v34 = *(a1 + 8 * v31 + 32);
          swift_unknownObjectRetain();
          v6 = (v31 + 1);
          if (__OFADD__(v31, 1))
          {
            goto LABEL_29;
          }
        }

        v41 = v34;
        if (sub_21974C848(&v41, v7, v39, v32))
        {
          sub_219BF73D4();
          sub_219BF7414();
          a1 = v40;
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v31;
        if (v6 == v30)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v35 = MEMORY[0x277D84F90];
LABEL_33:

  return v35;
}