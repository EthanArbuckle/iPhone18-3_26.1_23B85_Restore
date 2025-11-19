uint64_t sub_219656878@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_219BF72A4();
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v4 = sub_21931EECC(v9);
  if ((v5 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2186D1230(*(a1 + 56) + 32 * v4, v10);
  sub_218B6B67C(v9);
  sub_2187AC8F4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_219BF72A4();
  if (!MEMORY[0x737071] || (v6 = sub_21931EECC(v9), (v7 & 1) == 0))
  {

LABEL_9:
    sub_218B6B67C(v9);
    goto LABEL_10;
  }

  sub_2186D1230(MEMORY[0x737099] + 32 * v6, v10);
  sub_218B6B67C(v9);

  if (swift_dynamicCast())
  {
    sub_2196552E0(a1, 0x79726F6765746163, 0xE800000000000000, a2);
  }

LABEL_10:
  type metadata accessor for UserNotification.Kind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219656A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = sub_219BF5414();
  sub_219BF72A4();
  if (!*(a1 + 16) || (v4 = sub_21931EECC(v10), (v5 & 1) == 0))
  {
    sub_218B6B67C(v10);
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  sub_2186D1230(*(a1 + 56) + 32 * v4, v11);
  sub_218B6B67C(v10);
  if ((swift_dynamicCast() & 1) == 0 || !v9)
  {
    goto LABEL_7;
  }

  FCMillisecondsToSeconds();
  sub_219BDBC74();
  v6 = 0;
LABEL_8:
  v7 = sub_219BDBD34();
  return (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

id sub_219656B20()
{
  sub_2186DDF98(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18[-v2];
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v18[-v9];
  v11 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2187ADB6C(v0 + OBJC_IVAR____TtC7NewsUI216UserNotification_kind, v13, type metadata accessor for UserNotification.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_219657A18(v13, type metadata accessor for UserNotification.Kind);
  if (EnumCaseMultiPayload != 3)
  {
    return 0;
  }

  sub_2186C6148(0, &qword_280E8DA68);
  sub_21988D76C(0xD00000000000001ALL, 0x8000000219D2BDC0, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2187BC824(v3, &unk_280EE9D00, MEMORY[0x277CC9260]);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  sub_2186C6148(0, &qword_27CC1FBF0);
  (*(v5 + 16))(v8, v10, v4);
  v15 = sub_2194B141C(MEMORY[0x277D84F90]);
  v17 = sub_219656E5C(0x6567616D69, 0xE500000000000000, v8, v15);
  (*(v5 + 8))(v10, v4);
  result = v17;
  if (!v17)
  {
    return 0;
  }

  return result;
}

id sub_219656E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_219BF53D4();

  v7 = sub_219BDB854();
  if (a4)
  {
    v8 = sub_219BF5204();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() attachmentWithIdentifier:v6 URL:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_219BDB954();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a3, v11);
  }

  else
  {
    v14 = v17[0];
    sub_219BDB724();

    swift_willThrow();
    v15 = sub_219BDB954();
    (*(*(v15 - 8) + 8))(a3, v15);
  }

  return v9;
}

uint64_t UserNotification.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI216UserNotification_title);

  return v1;
}

uint64_t UserNotification.message.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI216UserNotification_message);

  return v1;
}

id UserNotification.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserNotification.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserNotification(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UserNotificationKind.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

unint64_t sub_21965734C()
{
  result = qword_27CC1D720;
  if (!qword_27CC1D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D720);
  }

  return result;
}

uint64_t sub_2196573A8()
{
  result = type metadata accessor for UserNotification.Kind(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UserNotification.DeliveryStatus(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2196574D0()
{
  sub_218C1A090();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

id sub_2196575B8(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 identifier];
  v9 = sub_219BF5414();
  v11 = v10;

  v12 = &v2[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
  *v12 = v9;
  v12[1] = v11;
  v13 = [a1 content];
  v14 = [v13 userInfo];

  v15 = sub_219BF5214();
  v16 = [a1 content];
  v17 = [v16 categoryIdentifier];

  v18 = sub_219BF5414();
  v20 = v19;

  sub_2196552E0(v15, v18, v20, v7);

  sub_2196579B0(v7, &v2[OBJC_IVAR____TtC7NewsUI216UserNotification_kind], type metadata accessor for UserNotification.Kind);
  v21 = [a1 content];
  v22 = [v21 title];

  v23 = sub_219BF5414();
  v25 = v24;

  v26 = &v2[OBJC_IVAR____TtC7NewsUI216UserNotification_title];
  *v26 = v23;
  v26[1] = v25;
  v27 = [a1 content];
  v28 = [v27 subtitle];

  v29 = sub_219BF5414();
  v31 = v30;

  v32 = &v2[OBJC_IVAR____TtC7NewsUI216UserNotification_subtitle];
  *v32 = v29;
  v32[1] = v31;
  v33 = [a1 content];
  v34 = [v33 body];

  v35 = sub_219BF5414();
  v37 = v36;

  v38 = &v2[OBJC_IVAR____TtC7NewsUI216UserNotification_message];
  *v38 = v35;
  v38[1] = v37;
  v39 = [a1 content];
  v40 = [v39 threadIdentifier];

  v41 = sub_219BF5414();
  v43 = v42;

  v44 = &v2[OBJC_IVAR____TtC7NewsUI216UserNotification_threadIdentifier];
  *v44 = v41;
  v44[1] = v43;
  sub_2187ADB6C(a2, &v2[OBJC_IVAR____TtC7NewsUI216UserNotification_deliveryStatus], type metadata accessor for UserNotification.DeliveryStatus);
  v45 = [a1 content];
  v46 = [v45 userInfo];

  v47 = sub_219BF5214();
  *&v2[OBJC_IVAR____TtC7NewsUI216UserNotification_payload] = v47;
  v48 = type metadata accessor for UserNotification(0);
  v51.receiver = v2;
  v51.super_class = v48;
  v49 = objc_msgSendSuper2(&v51, sel_init);
  sub_219657A18(a2, type metadata accessor for UserNotification.DeliveryStatus);
  return v49;
}

uint64_t sub_2196579B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219657A18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219657A78()
{
  result = qword_27CC1D730;
  if (!qword_27CC1D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D730);
  }

  return result;
}

uint64_t sub_219657ACC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496575737369 && a2 == 0xE700000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E6C656E6E616863 && a2 == 0xEB00000000656D61 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219D2BE40 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_219657BF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_219659228(0, &qword_27CC1D7D8, sub_219658D10, &type metadata for UserNotification.IssueData.Issue.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219658D10();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v24;
  v27 = 0;
  v11 = sub_219BF76F4();
  v13 = v12;
  v23 = v11;
  v26 = 1;
  v21 = sub_219BF76F4();
  v22 = v14;
  v25 = 2;
  v15 = sub_219BF76F4();
  v16 = v8;
  v18 = v17;
  (*(v9 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v23;
  v10[1] = v13;
  v20 = v22;
  v10[2] = v21;
  v10[3] = v20;
  v10[4] = v15;
  v10[5] = v18;
  return result;
}

uint64_t sub_219657E74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736575737369 && a2 == 0xE600000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000219D2BE20 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_219657F98(void *a1)
{
  sub_219659228(0, &qword_27CC1D788, sub_219658AE8, &type metadata for UserNotification.RevokeData.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219658AE8();
  sub_219BF7B34();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_219BF76F4();
    v11 = 1;
    sub_219BF76F4();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_2196581AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7550737961646F74 && a2 == 0xEE004449656C7A7ALL;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1937334628 && a2 == 0xE400000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_2196582D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  sub_219659228(0, &qword_27CC1D850, sub_2196591D4, &type metadata for UserNotification.PuzzleStreakData.PuzzleStreak.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196591D4();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v21;
  v24 = 0;
  v11 = sub_219BF76F4();
  v13 = v12;
  v14 = v11;
  v23 = 1;
  v20 = sub_219BF7724();
  v22 = 2;
  v15 = sub_219BF76F4();
  v16 = v8;
  v18 = v17;
  (*(v9 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v14;
  v10[1] = v13;
  v10[2] = v20;
  v10[3] = v15;
  v10[4] = v18;
  return result;
}

uint64_t sub_21965853C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7453656C7A7A7570 && a2 == 0xED0000736B616572;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7548656C7A7A7570 && a2 == 0xEE00444967615462 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_21965866C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  sub_219659228(0, &qword_27CC1D748, sub_21965895C, &type metadata for UserNotification.PuzzleStreakData.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21965895C();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v22;
  sub_2187AC848(0, &qword_27CC1D758, &type metadata for UserNotification.PuzzleStreakData.PuzzleStreak, MEMORY[0x277D83940]);
  v25 = 0;
  sub_219658A04(&qword_27CC1D760, sub_2196589B0);
  sub_219BF7734();
  v11 = v26;
  v24 = 1;
  v20 = sub_219BF7694();
  v21 = v12;
  v23 = 2;
  v13 = sub_219BF76F4();
  v14 = v8;
  v16 = v15;
  (*(v9 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v20;
  v18 = v21;
  *v10 = v11;
  v10[1] = v19;
  v10[2] = v18;
  v10[3] = v13;
  v10[4] = v16;
  return result;
}

unint64_t sub_21965895C()
{
  result = qword_27CC1D750;
  if (!qword_27CC1D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D750);
  }

  return result;
}

unint64_t sub_2196589B0()
{
  result = qword_27CC1D768;
  if (!qword_27CC1D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D768);
  }

  return result;
}

uint64_t sub_219658A04(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2187AC848(255, &qword_27CC1D758, &type metadata for UserNotification.PuzzleStreakData.PuzzleStreak, MEMORY[0x277D83940]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219658A94()
{
  result = qword_27CC1D780;
  if (!qword_27CC1D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D780);
  }

  return result;
}

unint64_t sub_219658AE8()
{
  result = qword_27CC1D790;
  if (!qword_27CC1D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D790);
  }

  return result;
}

unint64_t sub_219658B3C()
{
  result = qword_27CC1D7A8;
  if (!qword_27CC1D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D7A8);
  }

  return result;
}

unint64_t sub_219658B90()
{
  result = qword_27CC1D7B8;
  if (!qword_27CC1D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D7B8);
  }

  return result;
}

uint64_t sub_219658BE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219658C2C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2187AC848(255, &qword_280E8F2E8, &type metadata for UserNotification.IssueData.Issue, MEMORY[0x277D83940]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219658CBC()
{
  result = qword_27CC1D7D0;
  if (!qword_27CC1D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D7D0);
  }

  return result;
}

unint64_t sub_219658D10()
{
  result = qword_27CC1D7E0;
  if (!qword_27CC1D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D7E0);
  }

  return result;
}

unint64_t sub_219658DB8()
{
  result = qword_27CC1D7F0;
  if (!qword_27CC1D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D7F0);
  }

  return result;
}

unint64_t sub_219658E10()
{
  result = qword_27CC1D7F8;
  if (!qword_27CC1D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D7F8);
  }

  return result;
}

unint64_t sub_219658E68()
{
  result = qword_27CC1D800;
  if (!qword_27CC1D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D800);
  }

  return result;
}

unint64_t sub_219658EC0()
{
  result = qword_27CC1D808;
  if (!qword_27CC1D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D808);
  }

  return result;
}

unint64_t sub_219658F18()
{
  result = qword_27CC1D810;
  if (!qword_27CC1D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D810);
  }

  return result;
}

unint64_t sub_219658F70()
{
  result = qword_27CC1D818;
  if (!qword_27CC1D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D818);
  }

  return result;
}

unint64_t sub_219658FC8()
{
  result = qword_27CC1D820;
  if (!qword_27CC1D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D820);
  }

  return result;
}

unint64_t sub_219659020()
{
  result = qword_27CC1D828;
  if (!qword_27CC1D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D828);
  }

  return result;
}

unint64_t sub_219659078()
{
  result = qword_27CC1D830;
  if (!qword_27CC1D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D830);
  }

  return result;
}

unint64_t sub_2196590D0()
{
  result = qword_27CC1D838;
  if (!qword_27CC1D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D838);
  }

  return result;
}

unint64_t sub_219659128()
{
  result = qword_27CC1D840;
  if (!qword_27CC1D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D840);
  }

  return result;
}

unint64_t sub_219659180()
{
  result = qword_27CC1D848;
  if (!qword_27CC1D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D848);
  }

  return result;
}

unint64_t sub_2196591D4()
{
  result = qword_27CC1D858;
  if (!qword_27CC1D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D858);
  }

  return result;
}

void sub_219659228(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2196592A4()
{
  result = qword_27CC1D868;
  if (!qword_27CC1D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D868);
  }

  return result;
}

unint64_t sub_2196592FC()
{
  result = qword_27CC1D870;
  if (!qword_27CC1D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D870);
  }

  return result;
}

unint64_t sub_219659354()
{
  result = qword_27CC1D878;
  if (!qword_27CC1D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D878);
  }

  return result;
}

uint64_t NotificationConfigurationManager.__allocating_init(appConfigurationManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_219659438(SEL *a1)
{
  v3 = [objc_msgSend(*(v1 + 16) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v4 = [v3 *a1];

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = sub_219BF5924();

  return v5;
}

BOOL NotificationConfigurationManager.isNotificationsEnabled.getter()
{
  v1 = *(v0 + 16);
  v2 = [objc_msgSend(v1 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v3 = [v2 recommendedNotificationChannelIDs];

  if (v3)
  {
    v4 = sub_219BF5924();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = *(v4 + 16);

  if (v5)
  {
    return 1;
  }

  v7 = [objc_msgSend(v1 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v8 = [v7 preSubscribedNotificationsChannelIDs];

  if (v8)
  {
    v9 = sub_219BF5924();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);

  return v10 != 0;
}

void NotificationConfigurationManager.refresh(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_219BED184();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 16);
  sub_2187D9028();
  (*(v7 + 104))(v9, *MEMORY[0x277D851D0], v6);
  v11 = sub_219BF66E4();
  (*(v7 + 8))(v9, v6);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v3;
  aBlock[4] = sub_2196598B8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218C1CBB4;
  aBlock[3] = &block_descriptor_151;
  v13 = _Block_copy(aBlock);

  [v10 fetchAppConfigurationIfNeededWithCompletionQueue:v11 completion:v13];
  _Block_release(v13);
}

uint64_t sub_21965981C(int a1, id a2, void (*a3)(void *), uint64_t a4, void *a5)
{
  if (a2)
  {
    v8[0] = a2;
    v9 = 1;
    v6 = a2;
  }

  else
  {
    v8[3] = *a5;
    v8[4] = &protocol witness table for NotificationConfigurationManager;
    v8[0] = a5;
    v9 = 0;
  }

  a3(v8);
  return sub_219659BE0(v8);
}

uint64_t NotificationConfigurationManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219659934(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [objc_msgSend(*(*v3 + 16) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v6 = [v5 *a3];

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = sub_219BF5924();

  return v7;
}

BOOL sub_2196599E4()
{
  v1 = *v0;
  v2 = [objc_msgSend(*(*v0 + 16) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v3 = [v2 recommendedNotificationChannelIDs];

  if (v3)
  {
    v4 = sub_219BF5924();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = *(v4 + 16);

  if (v5)
  {
    return 1;
  }

  v7 = [objc_msgSend(*(v1 + 16) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v8 = [v7 preSubscribedNotificationsChannelIDs];

  if (v8)
  {
    v9 = sub_219BF5924();
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);

  return v10 != 0;
}

uint64_t sub_219659BE0(uint64_t a1)
{
  sub_218A266AC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of StreamingRecipeResults.expand(location:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 24))();
}

{
  return (*(a5 + 32))();
}

uint64_t sub_219659C8C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for SportsScoreSortingFilterWhen();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SportsScoreSortingSubsetFilter();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsScoreSortingOrFilter();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SportsScoreSortingAndFilter();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](matched - 8);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_25:

    return a1;
  }

  if (!sub_219BF7214())
  {
    goto LABEL_25;
  }

LABEL_3:
  v24 = a3 >> 60;
  if ((a3 >> 60) <= 3)
  {
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v29 = swift_projectBox();
        v26 = type metadata accessor for SportsScoreSortingAndFilter;
        sub_218E23E5C(v29, v20, type metadata accessor for SportsScoreSortingAndFilter);
        a1 = sub_219A6059C(v20, a1, a2);
        v27 = v20;
      }

      else
      {
        v36 = swift_projectBox();
        v26 = type metadata accessor for SportsScoreSortingOrFilter;
        sub_218E23E5C(v36, v17, type metadata accessor for SportsScoreSortingOrFilter);
        a1 = sub_2196840F4(v17, a1, a2);
        v27 = v17;
      }
    }

    else
    {
      if (v24)
      {
        v34 = swift_projectBox();
        v26 = type metadata accessor for SportsScoreSortingMatchFilter;
        sub_218E23E5C(v34, v23, type metadata accessor for SportsScoreSortingMatchFilter);
        v35 = sub_218A84E44(v23, a1, a2);
        a1 = sub_219AC4B08(a1, v35);
      }

      else
      {
        v28 = swift_projectBox();
        v26 = type metadata accessor for SportsScoreSortingMatchFilter;
        sub_218E23E5C(v28, v23, type metadata accessor for SportsScoreSortingMatchFilter);
        a1 = sub_218A84E44(v23, a1, a2);
      }

      v27 = v23;
    }

    goto LABEL_23;
  }

  if (v24 <= 5)
  {
    if (v24 != 4)
    {
      v38 = swift_projectBox();
      v26 = type metadata accessor for SportsScoreSortingSubsetFilter;
      sub_218E23E5C(v38, v11, type metadata accessor for SportsScoreSortingSubsetFilter);
      a1 = sub_218E1E098(v11, a1, a2);
      v27 = v11;
      goto LABEL_23;
    }

    v30 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

    v31 = sub_219659C8C(a1, a2, v30);
    a1 = sub_219AC4B08(a1, v31);

    return a1;
  }

  if (v24 != 6)
  {
    if (v24 == 7)
    {
      v25 = swift_projectBox();
      v26 = type metadata accessor for SportsScoreSortingGroupByFilter;
      sub_218E23E5C(v25, v14, type metadata accessor for SportsScoreSortingGroupByFilter);
      a1 = sub_218C49BFC(v14, a1, a2);
      v27 = v14;
LABEL_23:
      sub_21965C1F8(v27, v26);
      return a1;
    }

    v37 = swift_projectBox();
    sub_218E23E5C(v37, v8, type metadata accessor for SportsScoreSortingFilterWhen);
    a1 = sub_2197731BC(v8, a1, a2, a3);
    sub_21965C1F8(v8, type metadata accessor for SportsScoreSortingFilterWhen);
    return a1;
  }

  v32 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

  return sub_21903E324(v32, a1);
}

uint64_t sub_21965A168(void *a1, unint64_t a2)
{
  v61 = a2;
  v54 = type metadata accessor for SportsScoreSortingFilterWhen();
  MEMORY[0x28223BE20](v54);
  v57 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for SportsScoreSortingSubsetFilter();
  MEMORY[0x28223BE20](v53);
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  MEMORY[0x28223BE20](v52);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for SportsScoreSortingOrFilter();
  MEMORY[0x28223BE20](v50);
  v59 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SportsScoreSortingAndFilter();
  MEMORY[0x28223BE20](v51);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  v9 = MEMORY[0x28223BE20](matched);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  sub_21965CE0C(0, &qword_280E8C558, MEMORY[0x277D84538]);
  v15 = v14;
  v60 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21965CC54();
  v18 = v17;
  sub_219BF7B44();
  v19 = v61 >> 60;
  if ((v61 >> 60) <= 3)
  {
    v25 = v11;
    v27 = v58;
    v26 = v59;
    if (v19 <= 1)
    {
      v20 = v18;
      if (v19)
      {
        v42 = swift_projectBox();
        sub_218E23E5C(v42, v25, type metadata accessor for SportsScoreSortingMatchFilter);
        LOBYTE(v63) = 8;
        v64 = 0;
        sub_21965CE70();
        v43 = v62;
        sub_219BF7834();
        if (!v43)
        {
          LOBYTE(v63) = 1;
          sub_21965CF6C(&qword_280EAEAE0, type metadata accessor for SportsScoreSortingMatchFilter);
          sub_219BF7834();
        }

        v30 = type metadata accessor for SportsScoreSortingMatchFilter;
        v31 = v25;
      }

      else
      {
        v28 = swift_projectBox();
        sub_218E23E5C(v28, v13, type metadata accessor for SportsScoreSortingMatchFilter);
        LOBYTE(v63) = 0;
        v64 = 0;
        sub_21965CE70();
        v29 = v62;
        sub_219BF7834();
        if (!v29)
        {
          LOBYTE(v63) = 1;
          sub_21965CF6C(&qword_280EAEAE0, type metadata accessor for SportsScoreSortingMatchFilter);
          sub_219BF7834();
        }

        v30 = type metadata accessor for SportsScoreSortingMatchFilter;
        v31 = v13;
      }

      goto LABEL_37;
    }

    v32 = v18;
    if (v19 == 2)
    {
      v33 = swift_projectBox();
      v34 = v27;
      sub_218E23E5C(v33, v27, type metadata accessor for SportsScoreSortingAndFilter);
      LOBYTE(v63) = 1;
      v64 = 0;
      sub_21965CE70();
      v35 = v62;
      sub_219BF7834();
      if (!v35)
      {
        LOBYTE(v63) = 1;
        sub_21965CF6C(&qword_280EB6900, type metadata accessor for SportsScoreSortingAndFilter);
        sub_219BF7834();
      }

      v36 = type metadata accessor for SportsScoreSortingAndFilter;
    }

    else
    {
      v44 = swift_projectBox();
      v34 = v26;
      sub_218E23E5C(v44, v26, type metadata accessor for SportsScoreSortingOrFilter);
      LOBYTE(v63) = 2;
      v64 = 0;
      sub_21965CE70();
      v45 = v62;
      sub_219BF7834();
      if (!v45)
      {
        LOBYTE(v63) = 1;
        sub_21965CF6C(&qword_280EBA160, type metadata accessor for SportsScoreSortingOrFilter);
        sub_219BF7834();
      }

      v36 = type metadata accessor for SportsScoreSortingOrFilter;
    }

    sub_21965C1F8(v34, v36);
    return (*(v60 + 8))(v32, v15);
  }

  else
  {
    if (v19 > 5)
    {
      v20 = v17;
      if (v19 == 6)
      {
        v40 = *((v61 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        LOBYTE(v63) = 6;
        v64 = 0;
        sub_21965CE70();
        v41 = v62;
        sub_219BF7834();
        if (!v41)
        {
          LOBYTE(v63) = v40;
          v64 = 1;
          sub_21965CEC4();
          sub_219BF7834();
        }

        return (*(v60 + 8))(v20, v15);
      }

      if (v19 == 7)
      {
        v21 = swift_projectBox();
        v22 = v55;
        sub_218E23E5C(v21, v55, type metadata accessor for SportsScoreSortingGroupByFilter);
        LOBYTE(v63) = 4;
        v64 = 0;
        sub_21965CE70();
        v23 = v62;
        sub_219BF7834();
        if (!v23)
        {
          LOBYTE(v63) = 1;
          sub_21965CF6C(&qword_280EA7E80, type metadata accessor for SportsScoreSortingGroupByFilter);
          sub_219BF7834();
        }

        v24 = type metadata accessor for SportsScoreSortingGroupByFilter;
      }

      else
      {
        v46 = swift_projectBox();
        v22 = v57;
        sub_218E23E5C(v46, v57, type metadata accessor for SportsScoreSortingFilterWhen);
        LOBYTE(v63) = 7;
        v64 = 0;
        sub_21965CE70();
        v47 = v62;
        sub_219BF7834();
        if (!v47)
        {
          LOBYTE(v63) = 1;
          sub_21965CF6C(&qword_280EB2780, type metadata accessor for SportsScoreSortingFilterWhen);
          sub_219BF7834();
        }

        v24 = type metadata accessor for SportsScoreSortingFilterWhen;
      }

      goto LABEL_36;
    }

    v20 = v17;
    if (v19 != 4)
    {
      v48 = swift_projectBox();
      v22 = v56;
      sub_218E23E5C(v48, v56, type metadata accessor for SportsScoreSortingSubsetFilter);
      LOBYTE(v63) = 5;
      v64 = 0;
      sub_21965CE70();
      v49 = v62;
      sub_219BF7834();
      if (!v49)
      {
        LOBYTE(v63) = 1;
        sub_21965CF6C(&qword_280EAAFC8, type metadata accessor for SportsScoreSortingSubsetFilter);
        sub_219BF7834();
      }

      v24 = type metadata accessor for SportsScoreSortingSubsetFilter;
LABEL_36:
      v30 = v24;
      v31 = v22;
LABEL_37:
      sub_21965C1F8(v31, v30);
      return (*(v60 + 8))(v20, v15);
    }

    v37 = *((v61 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v63) = 3;
    v64 = 0;
    sub_21965CE70();

    v38 = v62;
    sub_219BF7834();
    if (!v38)
    {
      v63 = v37;
      v64 = 1;
      sub_21965CF18();
      sub_219BF7834();
    }

    (*(v60 + 8))(v17, v15);
  }
}

uint64_t sub_21965ABE8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1885693291;
    v6 = 29295;
    if (a1 != 2)
    {
      v6 = 7630702;
    }

    if (a1)
    {
      v5 = 6581857;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746E65636572;
    v2 = 1852139639;
    if (a1 != 7)
    {
      v2 = 0x65766F6D6572;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x794270756F7267;
    if (a1 != 4)
    {
      v3 = 0x746573627573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21965ACC4(uint64_t a1, unint64_t a2)
{
  v83 = a2;
  v77 = type metadata accessor for SportsScoreSortingFilterWhen();
  v3 = MEMORY[0x28223BE20](v77);
  v81 = (&v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v82 = (&v76 - v5);
  v6 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v79 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v78 = &v76 - v9;
  v10 = type metadata accessor for SportsScoreSortingSubsetFilter();
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v76 - v14;
  v15 = type metadata accessor for SportsScoreSortingOrFilter();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v76 - v19;
  v21 = type metadata accessor for SportsScoreSortingAndFilter();
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v76 - v25;
  type metadata accessor for SportsScoreSortingMatchFilter(0);
  v27 = MEMORY[0x28223BE20](a1);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v76 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v76 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v76 - v37;
  v39 = v36 >> 60;
  if ((v36 >> 60) <= 3)
  {
    if (v39 > 1)
    {
      v40 = v39 == 2;
      v51 = v83 >> 60;
      if (!v40)
      {
        if (v51 != 3)
        {
          goto LABEL_39;
        }

        v62 = swift_projectBox();
        v63 = swift_projectBox();
        sub_218E23E5C(v62, v20, type metadata accessor for SportsScoreSortingOrFilter);
        sub_218E23E5C(v63, v18, type metadata accessor for SportsScoreSortingOrFilter);
        sub_218C425D4();
        sub_21965CF6C(&qword_280E8FDC8, sub_218C425D4);
        sub_218C4A1E8();
        v47 = sub_219BF2694();
        sub_21965C1F8(v18, type metadata accessor for SportsScoreSortingOrFilter);
        sub_21965C1F8(v20, type metadata accessor for SportsScoreSortingOrFilter);
        return v47 & 1;
      }

      if (v51 != 2)
      {
        goto LABEL_39;
      }

      v52 = swift_projectBox();
      v53 = swift_projectBox();
      v44 = type metadata accessor for SportsScoreSortingAndFilter;
      sub_218E23E5C(v52, v26, type metadata accessor for SportsScoreSortingAndFilter);
      sub_218E23E5C(v53, v24, type metadata accessor for SportsScoreSortingAndFilter);
      sub_218C425D4();
      sub_21965CF6C(&qword_280E8FDC8, sub_218C425D4);
      sub_218C4A1E8();
      v47 = sub_219BF2694();
      sub_21965C1F8(v24, type metadata accessor for SportsScoreSortingAndFilter);
      v48 = v26;
    }

    else if (v39)
    {
      if (v83 >> 60 != 1)
      {
        goto LABEL_39;
      }

      v60 = swift_projectBox();
      v61 = swift_projectBox();
      v44 = type metadata accessor for SportsScoreSortingMatchFilter;
      sub_218E23E5C(v60, v32, type metadata accessor for SportsScoreSortingMatchFilter);
      sub_218E23E5C(v61, v29, type metadata accessor for SportsScoreSortingMatchFilter);
      v47 = sub_218A84380(v32, v29);
      sub_21965C1F8(v29, type metadata accessor for SportsScoreSortingMatchFilter);
      v48 = v32;
    }

    else
    {
      if (v83 >> 60)
      {
        goto LABEL_39;
      }

      v49 = swift_projectBox();
      v50 = swift_projectBox();
      v44 = type metadata accessor for SportsScoreSortingMatchFilter;
      sub_218E23E5C(v49, v38, type metadata accessor for SportsScoreSortingMatchFilter);
      sub_218E23E5C(v50, v35, type metadata accessor for SportsScoreSortingMatchFilter);
      v47 = sub_218A84380(v38, v35);
      sub_21965C1F8(v35, type metadata accessor for SportsScoreSortingMatchFilter);
      v48 = v38;
    }

LABEL_25:
    sub_21965C1F8(v48, v44);
    return v47 & 1;
  }

  if (v39 <= 5)
  {
    if (v39 == 4)
    {
      if (v83 >> 60 == 4)
      {
        v54 = *((v36 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v55 = *((v83 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        LOBYTE(v54) = sub_21965ACC4(v54, v55);

        return v54 & 1;
      }

      goto LABEL_39;
    }

    if (v83 >> 60 == 5)
    {
      v68 = swift_projectBox();
      v69 = swift_projectBox();
      v70 = v80;
      sub_218E23E5C(v68, v80, type metadata accessor for SportsScoreSortingSubsetFilter);
      sub_218E23E5C(v69, v13, type metadata accessor for SportsScoreSortingSubsetFilter);
      if ((sub_218A84380(v70, v13) & 1) == 0)
      {
        v72 = type metadata accessor for SportsScoreSortingSubsetFilter;
        sub_21965C1F8(v13, type metadata accessor for SportsScoreSortingSubsetFilter);
        v73 = v70;
LABEL_38:
        sub_21965C1F8(v73, v72);
        goto LABEL_39;
      }

      sub_218C425D4();
      sub_21965CF6C(&qword_280E8FDC8, sub_218C425D4);
      sub_218C4A1E8();
      v71 = sub_219BF2694();
      sub_21965C1F8(v13, type metadata accessor for SportsScoreSortingSubsetFilter);
      sub_21965C1F8(v70, type metadata accessor for SportsScoreSortingSubsetFilter);
      if (v71)
      {
        v47 = 1;
        return v47 & 1;
      }
    }

LABEL_39:
    v47 = 0;
    return v47 & 1;
  }

  if (v39 != 6)
  {
    v40 = v39 == 7;
    v41 = v83 >> 60;
    if (!v40)
    {
      if (v41 == 8)
      {
        v64 = swift_projectBox();
        v65 = swift_projectBox();
        v66 = v82;
        sub_218E23E5C(v64, v82, type metadata accessor for SportsScoreSortingFilterWhen);
        v67 = v81;
        sub_218E23E5C(v65, v81, type metadata accessor for SportsScoreSortingFilterWhen);
        if (sub_2194731FC(*v66, *v67))
        {
          sub_218C425D4();
          sub_21965CF6C(&qword_280E8FDC8, sub_218C425D4);
          sub_218C4A1E8();
          if (sub_219BF2694())
          {
            sub_21965C1F8(v67, type metadata accessor for SportsScoreSortingFilterWhen);
            sub_21965C1F8(v66, type metadata accessor for SportsScoreSortingFilterWhen);
            v47 = 1;
            return v47 & 1;
          }
        }

        v72 = type metadata accessor for SportsScoreSortingFilterWhen;
        sub_21965C1F8(v67, type metadata accessor for SportsScoreSortingFilterWhen);
        v73 = v66;
        goto LABEL_38;
      }

      goto LABEL_39;
    }

    if (v41 != 7)
    {
      goto LABEL_39;
    }

    v42 = swift_projectBox();
    v43 = swift_projectBox();
    v44 = type metadata accessor for SportsScoreSortingGroupByFilter;
    v45 = v78;
    sub_218E23E5C(v42, v78, type metadata accessor for SportsScoreSortingGroupByFilter);
    v46 = v79;
    sub_218E23E5C(v43, v79, type metadata accessor for SportsScoreSortingGroupByFilter);
    v47 = sub_218C486CC(v45, v46);
    sub_21965C1F8(v46, type metadata accessor for SportsScoreSortingGroupByFilter);
    v48 = v45;
    goto LABEL_25;
  }

  if (v83 >> 60 != 6)
  {
    goto LABEL_39;
  }

  v57 = 0x6C616E6966;
  if (*((v36 & 0xFFFFFFFFFFFFFFFLL) + 0x10))
  {
    if (*((v36 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == 1)
    {
      v58 = 0xE800000000000000;
      v59 = 0x676E696D6F637075;
    }

    else
    {
      v58 = 0xE400000000000000;
      v59 = 1702259052;
    }
  }

  else
  {
    v58 = 0xE500000000000000;
    v59 = 0x6C616E6966;
  }

  if (*((v83 & 0xFFFFFFFFFFFFFFFLL) + 0x10))
  {
    if (*((v83 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == 1)
    {
      v74 = 0xE800000000000000;
      v57 = 0x676E696D6F637075;
    }

    else
    {
      v74 = 0xE400000000000000;
      v57 = 1702259052;
    }
  }

  else
  {
    v74 = 0xE500000000000000;
  }

  if (v59 != v57 || v58 != v74)
  {
    v75 = sub_219BF78F4();

    return v75 & 1;
  }

  v47 = 1;
  return v47 & 1;
}

uint64_t sub_21965B6F0@<X0>(char *a1@<X8>)
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

uint64_t sub_21965B750@<X0>(char *a1@<X8>)
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

uint64_t sub_21965B864(uint64_t a1)
{
  v2 = sub_21965CC54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21965B8A0(uint64_t a1)
{
  v2 = sub_21965CC54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21965B8E8()
{
  sub_219BF7AA4();
  sub_2194774C4();
  return sub_219BF7AE4();
}

uint64_t sub_21965B938()
{
  sub_219BF7AA4();
  sub_2194774C4();
  return sub_219BF7AE4();
}

uint64_t sub_21965B97C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21965D188();
  *a1 = result;
  return result;
}

uint64_t sub_21965B9AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21965ABE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_21965BA88@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = sub_21965C268(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_21965BADC(unint64_t a1)
{
  v2 = type metadata accessor for SportsScoreSortingFilterWhen();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsScoreSortingSubsetFilter();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SportsScoreSortingOrFilter();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SportsScoreSortingAndFilter();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](matched - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1 >> 60;
  if ((a1 >> 60) <= 3)
  {
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v29 = swift_projectBox();
        v22 = type metadata accessor for SportsScoreSortingAndFilter;
        sub_218E23E5C(v29, v16, type metadata accessor for SportsScoreSortingAndFilter);
        v55 = 677670497;
        v56 = 0xE400000000000000;
        strcpy(v54, "filters=");
        BYTE1(v54[1]) = 0;
        WORD1(v54[1]) = 0;
        HIDWORD(v54[1]) = -402653184;
        sub_218C42540();
        sub_219BF2664();
        v30 = MEMORY[0x21CECC6D0](v53, &type metadata for SportsScoreSortingFilter);
        v32 = v31;

        MEMORY[0x21CECC330](v30, v32);

        MEMORY[0x21CECC330](v54[0], v54[1]);

        MEMORY[0x21CECC330](41, 0xE100000000000000);
        v24 = v55;
        v25 = v16;
      }

      else
      {
        v42 = swift_projectBox();
        v22 = type metadata accessor for SportsScoreSortingOrFilter;
        sub_218E23E5C(v42, v13, type metadata accessor for SportsScoreSortingOrFilter);
        v55 = 2650735;
        v56 = 0xE300000000000000;
        strcpy(v54, "filters=");
        BYTE1(v54[1]) = 0;
        WORD1(v54[1]) = 0;
        HIDWORD(v54[1]) = -402653184;
        sub_218C42540();
        sub_219BF2664();
        v43 = MEMORY[0x21CECC6D0](v53, &type metadata for SportsScoreSortingFilter);
        v45 = v44;

        MEMORY[0x21CECC330](v43, v45);

        MEMORY[0x21CECC330](v54[0], v54[1]);

        MEMORY[0x21CECC330](41, 0xE100000000000000);
        v24 = v55;
        v25 = v13;
      }
    }

    else
    {
      if (v20)
      {
        v40 = swift_projectBox();
        v22 = type metadata accessor for SportsScoreSortingMatchFilter;
        sub_218E23E5C(v40, v19, type metadata accessor for SportsScoreSortingMatchFilter);
        v27 = 0x2865766F6D6572;
        v28 = 0xE700000000000000;
      }

      else
      {
        v26 = swift_projectBox();
        v22 = type metadata accessor for SportsScoreSortingMatchFilter;
        sub_218E23E5C(v26, v19, type metadata accessor for SportsScoreSortingMatchFilter);
        v27 = 0x287065656BLL;
        v28 = 0xE500000000000000;
      }

      v55 = v27;
      v56 = v28;
      v41 = sub_218A830C4();
      MEMORY[0x21CECC330](v41);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      v24 = v55;
      v25 = v19;
    }

    goto LABEL_28;
  }

  if (v20 <= 5)
  {
    if (v20 != 4)
    {
      v49 = swift_projectBox();
      v22 = type metadata accessor for SportsScoreSortingSubsetFilter;
      sub_218E23E5C(v49, v7, type metadata accessor for SportsScoreSortingSubsetFilter);
      v55 = 0x28746573627573;
      v56 = 0xE700000000000000;
      v50 = sub_218E1DF48();
      MEMORY[0x21CECC330](v50);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      v24 = v55;
      v25 = v7;
      goto LABEL_28;
    }

    v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v55 = 678719342;
    v56 = 0xE400000000000000;
    strcpy(v54, "filter=");
    v54[1] = 0xE700000000000000;

    v34 = sub_21965BADC(v33);
    MEMORY[0x21CECC330](v34);

    MEMORY[0x21CECC330](v54[0], v54[1]);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
  }

  else
  {
    if (v20 != 6)
    {
      if (v20 != 7)
      {
        v46 = swift_projectBox();
        sub_218E23E5C(v46, v4, type metadata accessor for SportsScoreSortingFilterWhen);
        v55 = 0x286E656877;
        v56 = 0xE500000000000000;
        v47 = sub_219775DC4();
        MEMORY[0x21CECC330](v47);

        MEMORY[0x21CECC330](41, 0xE100000000000000);
        v24 = v55;
        v25 = v4;
        v48 = type metadata accessor for SportsScoreSortingFilterWhen;
LABEL_29:
        sub_21965C1F8(v25, v48);
        return v24;
      }

      v21 = swift_projectBox();
      v22 = type metadata accessor for SportsScoreSortingGroupByFilter;
      sub_218E23E5C(v21, v10, type metadata accessor for SportsScoreSortingGroupByFilter);
      v55 = 0x28794270756F7267;
      v56 = 0xE800000000000000;
      v23 = sub_218C42320();
      MEMORY[0x21CECC330](v23);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      v24 = v55;
      v25 = v10;
LABEL_28:
      v48 = v22;
      goto LABEL_29;
    }

    v35 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v55 = 0x28746E65636572;
    v56 = 0xE700000000000000;
    strcpy(v54, "eventStatus=");
    BYTE5(v54[1]) = 0;
    HIWORD(v54[1]) = -5120;
    v36 = 0xE800000000000000;
    v37 = 0x676E696D6F637075;
    if (v35 != 1)
    {
      v37 = 1702259052;
      v36 = 0xE400000000000000;
    }

    if (v35)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0x6C616E6966;
    }

    if (v35)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0xE500000000000000;
    }

    MEMORY[0x21CECC330](v38, v39);

    MEMORY[0x21CECC330](v54[0], v54[1]);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
  }

  return v55;
}

uint64_t sub_21965C1F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_21965C268(void *a1)
{
  v55 = type metadata accessor for SportsScoreSortingFilterWhen();
  MEMORY[0x28223BE20](v55);
  v54 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SportsScoreSortingSubsetFilter();
  MEMORY[0x28223BE20](v59);
  v58 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  MEMORY[0x28223BE20](v52);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for SportsScoreSortingOrFilter();
  MEMORY[0x28223BE20](v53);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SportsScoreSortingAndFilter();
  MEMORY[0x28223BE20](v51);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  v9 = MEMORY[0x28223BE20](matched);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  sub_21965CE0C(0, &qword_280E8CD90, MEMORY[0x277D844C8]);
  v15 = v14;
  v56 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v18 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_21965CC54();
  v19 = v60;
  sub_219BF7B34();
  if (!v19)
  {
    v20 = v13;
    v48 = v11;
    v49 = v7;
    v21 = v57;
    v22 = v58;
    v60 = matched;
    v23 = v56;
    v63 = 0;
    sub_21965CCA8();
    sub_219BF7734();
    if (v62 <= 3u)
    {
      if (v62 > 1u)
      {
        if (v62 == 2)
        {
          LOBYTE(v62) = 1;
          sub_21965CF6C(&qword_280EBA158, type metadata accessor for SportsScoreSortingOrFilter);
          v29 = v50;
          sub_219BF7734();
          (*(v23 + 8))(v17, v15);
          v30 = swift_allocBox();
          sub_21965CDA4(v29, v31, type metadata accessor for SportsScoreSortingOrFilter);
          v11 = (v30 | 0x3000000000000000);
        }

        else
        {
          v63 = 1;
          sub_21965CD50();
          sub_219BF7734();
          (*(v23 + 8))(v17, v15);
          v43 = v62;
          v44 = swift_allocObject();
          *(v44 + 16) = v43;
          v11 = (v44 | 0x4000000000000000);
        }
      }

      else if (v62)
      {
        LOBYTE(v62) = 1;
        sub_21965CF6C(&qword_280EB68F8, type metadata accessor for SportsScoreSortingAndFilter);
        v37 = v49;
        sub_219BF7734();
        (*(v23 + 8))(v17, v15);
        v38 = swift_allocBox();
        sub_21965CDA4(v37, v39, type metadata accessor for SportsScoreSortingAndFilter);
        v11 = (v38 | 0x2000000000000000);
      }

      else
      {
        LOBYTE(v62) = 1;
        sub_21965CF6C(&qword_280EAEAD8, type metadata accessor for SportsScoreSortingMatchFilter);
        sub_219BF7734();
        (*(v23 + 8))(v17, v15);
        v11 = swift_allocBox();
        sub_21965CDA4(v20, v28, type metadata accessor for SportsScoreSortingMatchFilter);
      }
    }

    else if (v62 <= 5u)
    {
      if (v62 == 4)
      {
        LOBYTE(v62) = 1;
        sub_21965CF6C(&qword_280EA7E78, type metadata accessor for SportsScoreSortingGroupByFilter);
        v32 = v21;
        sub_219BF7734();
        (*(v23 + 8))(v17, v15);
        v33 = swift_allocBox();
        sub_21965CDA4(v32, v34, type metadata accessor for SportsScoreSortingGroupByFilter);
        v11 = (v33 | 0x7000000000000000);
      }

      else
      {
        LOBYTE(v62) = 1;
        sub_21965CF6C(&qword_280EAAFC0, type metadata accessor for SportsScoreSortingSubsetFilter);
        sub_219BF7734();
        (*(v23 + 8))(v17, v15);
        v45 = swift_allocBox();
        sub_21965CDA4(v22, v46, type metadata accessor for SportsScoreSortingSubsetFilter);
        v11 = (v45 | 0x5000000000000000);
      }
    }

    else if (v62 == 6)
    {
      v63 = 1;
      sub_21965CCFC();
      sub_219BF7734();
      (*(v23 + 8))(v17, v15);
      v35 = v62;
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      v11 = (v36 | 0x6000000000000000);
    }

    else if (v62 == 7)
    {
      LOBYTE(v62) = 1;
      sub_21965CF6C(&qword_280EB2778, type metadata accessor for SportsScoreSortingFilterWhen);
      v25 = v54;
      sub_219BF7734();
      (*(v23 + 8))(v17, v15);
      v26 = swift_allocBox();
      sub_21965CDA4(v25, v27, type metadata accessor for SportsScoreSortingFilterWhen);
      v11 = (v26 | 0x8000000000000000);
    }

    else
    {
      LOBYTE(v62) = 1;
      sub_21965CF6C(&qword_280EAEAD8, type metadata accessor for SportsScoreSortingMatchFilter);
      v40 = v48;
      sub_219BF7734();
      (*(v23 + 8))(v17, v15);
      v41 = swift_allocBox();
      sub_21965CDA4(v40, v42, type metadata accessor for SportsScoreSortingMatchFilter);
      v11 = (v41 | 0x1000000000000000);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v61);
  return v11;
}

unint64_t sub_21965CC54()
{
  result = qword_280EC0238[0];
  if (!qword_280EC0238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC0238);
  }

  return result;
}

unint64_t sub_21965CCA8()
{
  result = qword_280EC0210;
  if (!qword_280EC0210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0210);
  }

  return result;
}

unint64_t sub_21965CCFC()
{
  result = qword_280EAAFE8;
  if (!qword_280EAAFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAAFE8);
  }

  return result;
}

unint64_t sub_21965CD50()
{
  result = qword_27CC1D880;
  if (!qword_27CC1D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D880);
  }

  return result;
}

uint64_t sub_21965CDA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21965CE0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21965CC54();
    v7 = a3(a1, &type metadata for SportsScoreSortingFilter.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21965CE70()
{
  result = qword_280EC0220;
  if (!qword_280EC0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0220);
  }

  return result;
}

unint64_t sub_21965CEC4()
{
  result = qword_280EAAFF0;
  if (!qword_280EAAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAAFF0);
  }

  return result;
}

unint64_t sub_21965CF18()
{
  result = qword_27CC1D888;
  if (!qword_27CC1D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D888);
  }

  return result;
}

uint64_t sub_21965CF6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21965CFD8()
{
  result = qword_27CC1D890;
  if (!qword_27CC1D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D890);
  }

  return result;
}

unint64_t sub_21965D030()
{
  result = qword_27CC1D898;
  if (!qword_27CC1D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D898);
  }

  return result;
}

unint64_t sub_21965D088()
{
  result = qword_280EC0228;
  if (!qword_280EC0228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0228);
  }

  return result;
}

unint64_t sub_21965D0E0()
{
  result = qword_280EC0230;
  if (!qword_280EC0230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0230);
  }

  return result;
}

unint64_t sub_21965D134()
{
  result = qword_280EC0218;
  if (!qword_280EC0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0218);
  }

  return result;
}

uint64_t sub_21965D188()
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

unint64_t sub_21965D1D4()
{
  result = qword_27CC1D8A0;
  if (!qword_27CC1D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D8A0);
  }

  return result;
}

uint64_t sub_21965D228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v3 = type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Footer(0);
  v38 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v40 = &v38 - v6;
  v7 = sub_219BF00D4();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Header(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v17 = sub_219BE9834();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F6E8();
  sub_219BE8184();
  v21 = v47;
  v46 = v48;
  v41 = v49;
  sub_219BE95F4();
  v22 = (*(v18 + 88))(v20, v17);
  if (v22 == *MEMORY[0x277D6E758])
  {
    v23 = sub_219BE9604();
    if ((v23 & 0x8000000000000000) == 0)
    {
      if (v23 < *(v21 + 16))
      {
        sub_21897FB90(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23, v16, type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Header);
        sub_21897FB90(v16, v14, type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Header);
        v25 = v44;
        v24 = v45;
        (*(v44 + 32))(v9, v14, v45);
        __swift_project_boxed_opaque_existential_1((v42 + 16), *(v42 + 40));
        v26 = sub_219BF0234();

        (*(v25 + 8))(v9, v24);
        v27 = v16;
        v28 = type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Header;
LABEL_10:
        sub_21897FBF8(v27, v28);
        return v26;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v22 == *MEMORY[0x277D6E750])
  {
    v29 = sub_219BE9604();
    v30 = *(v21 + 16);
    v31 = __OFSUB__(v29, v30);
    v32 = v29 - v30;
    if (!v31)
    {
      if ((v32 & 0x8000000000000000) == 0)
      {
        if (v32 < *(v46 + 16))
        {
          v33 = v40;
          sub_21897FB90(v46 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v32, v40, type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Footer);
          v34 = v39;
          sub_21897FB90(v33, v39, type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Footer);
          v36 = v44;
          v35 = v45;
          (*(v44 + 32))(v9, v34, v45);
          __swift_project_boxed_opaque_existential_1((v42 + 16), *(v42 + 40));
          v26 = sub_219BF0234();

          (*(v36 + 8))(v9, v35);
          v27 = v33;
          v28 = type metadata accessor for AudioPlaylistFeedLayoutSectionDescriptor.Footer;
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_21965D8C0@<X0>(uint64_t a1@<X8>)
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = NewsCoreUserDefaults();
  v6 = [v5 BOOLForKey_];

  v7 = NewsCoreUserDefaults();
  v8 = [v7 objectForKey_];

  if (v8)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    v9 = sub_219BDBD34();
    v10 = swift_dynamicCast();
    (*(*(v9 - 8) + 56))(v4, v10 ^ 1u, 1, v9);
  }

  else
  {
    sub_218806FD0(v17);
    v11 = sub_219BDBD34();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  }

  v12 = 2;
  *(a1 + 8) = 2;
  if (!v6)
  {
    v12 = 3;
  }

  *a1 = v12;
  v13 = type metadata accessor for SportsSyncSetting();
  return sub_218A5DD60(v4, a1 + *(v13 + 24));
}

uint64_t sub_21965DAA8(void *a1)
{
  sub_2186DCF58();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = NewsCoreUserDefaults();
  [v5 setBool:*a1 == 2 forKey:*MEMORY[0x277D30C90]];

  v6 = NewsCoreUserDefaults();
  v7 = type metadata accessor for SportsSyncSetting();
  sub_2187D96F4(a1 + *(v7 + 24), v4);
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v4, 1, v8) != 1)
  {
    v10 = sub_219BDBC04();
    (*(v9 + 8))(v4, v8);
  }

  [v6 setObject:v10 forKey:*MEMORY[0x277D30C88]];

  return swift_unknownObjectRelease();
}

uint64_t sub_21965DC6C()
{
  v1 = sub_218831A70(MEMORY[0x277D84F90]);
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_218E8A3C4;

  return sub_21965E960(v1);
}

void sub_21965DD14(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v72 = a2;
  sub_219661C78(0, &qword_27CC1D670, MEMORY[0x277D33808], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v53 - v6;
  v7 = sub_219BF2EC4();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x28223BE20](v7);
  v56 = (&v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_219BF22F4();
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x28223BE20](v9);
  v68 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE7F34();
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x28223BE20](v11);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE6754();
  MEMORY[0x28223BE20](v13 - 8);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE7854();
  v64 = *(v15 - 8);
  v65 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v62 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v59 = &v53 - v18;
  v19 = sub_219BF53D4();
  v20 = objc_opt_self();
  v21 = [v20 systemImageNamed_];

  if (v21)
  {
    swift_getObjectType();
    v22 = sub_219BF3BE4();
    v23 = [v21 imageByApplyingSymbolConfiguration_];
  }

  else
  {
    v23 = 0;
  }

  sub_219BE5D04();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v57 = v23;
  [v24 setImage:v23 forState:0];
  [v24 setShowsMenuAsPrimaryAction_];
  if (a1)
  {
    v25 = *(v3 + OBJC_IVAR____TtC7NewsUI219PuzzleRadarReporter_puzzleRadarScript);
    [swift_unknownObjectRetain() removeScript_];
    [a1 addScript_];
    swift_unknownObjectRelease();
  }

  sub_2186C6148(0, &qword_280E8DAF0);
  sub_218E8C844(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_219C146A0;
  sub_2186C6148(0, &qword_280E8D9D0);
  v27 = sub_219BF53D4();
  v28 = [v20 systemImageNamed_];

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v30;
  *(v26 + 32) = sub_219BF6E14();
  v32 = sub_219BF6BF4();
  [v24 setMenu_];

  v33 = sub_219BED0C4();
  v55 = v24;
  if ((v33 & 1) == 0)
  {

    sub_219BE7274();
    v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCustomView_];
    sub_219BE7264();
    goto LABEL_10;
  }

  v34 = [objc_allocWithZone(sub_219BE7274()) init];
  v35 = sub_219BF53D4();
  v36 = [v20 systemImageNamed_];

  if (v36)
  {
    [v34 setImage_];

    v37 = v34;
    [v37 setMenu_];

LABEL_10:
    v38 = v37;
    v39 = sub_219BF53D4();
    v54 = v38;
    [v38 setTitle_];

    v40 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v41 = [v40 UUIDString];

    sub_219BF5414();
    sub_219BE6774();
    swift_allocObject();
    v42 = sub_219BE6764();
    v73 = v42;

    v53 = v57;
    sub_219BE6744();
    (*(v60 + 104))(v63, *MEMORY[0x277D6DDB8], v61);
    sub_219661DFC(&unk_280EE59E0, MEMORY[0x277D6D6B0]);
    v43 = v59;
    sub_219BE7804();
    v44 = v64;
    v45 = v65;
    (*(v64 + 16))(v62, v43, v65);
    v46 = v56;
    *v56 = v42;
    v46[1] = v32;
    (*(v66 + 104))(v46, *MEMORY[0x277D33C28], v67);
    v47 = v32;

    v48 = v68;
    sub_219BF22E4();
    v50 = v69;
    v49 = v70;
    v51 = v71;
    (*(v69 + 16))(v71, v48, v70);
    (*(v50 + 56))(v51, 0, 1, v49);
    v52 = v54;
    sub_219BF28C4();

    (*(v50 + 8))(v48, v49);
    (*(v44 + 8))(v43, v45);
    return;
  }

  __break(1u);
}

void sub_21965E6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_219661C78(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = *&v10[OBJC_IVAR____TtC7NewsUI219PuzzleRadarReporter_puzzleRadarScript];
      [v12 executeScript:v13 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = sub_219BF5BF4();
      (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v10;
      v16 = v10;
      sub_218AB3D80(0, 0, v8, a5, v15);
    }
  }
}

uint64_t sub_21965E8B8()
{
  v1 = sub_218831A70(MEMORY[0x277D84F90]);
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_2196623F4;

  return sub_21965E960(v1);
}

uint64_t sub_21965E960(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_219BE6804();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_219BEB554();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[13] = v5;
  v6 = swift_task_alloc();
  v2[14] = v6;
  *v6 = v2;
  v6[1] = sub_21965EAE4;

  return sub_21965FC60(v5);
}

uint64_t sub_21965EAE4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_21965F524;
  }

  else
  {
    v2 = sub_21965EBF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21965EBF8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  sub_219661D90();
  v7 = v6;
  *(v0 + 128) = v6;
  v8 = swift_allocBox();
  v10 = (v9 + *(v7 + 48));
  v11 = *(v3 + 16);
  *(v0 + 136) = v11;
  *(v0 + 144) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v9, v1, v2);
  strcpy(v10, "puzzle-history");
  v10[15] = -18;
  *v4 = v8;
  *(v0 + 248) = *MEMORY[0x277D6D6C8];
  v12 = *(v5 + 104);
  *(v0 + 152) = v12;
  *(v0 + 160) = (v5 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v4);
  v13 = sub_2191F9528(0, 1, 1, MEMORY[0x277D84F90]);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_2191F9528(v14 > 1, v15 + 1, 1, v13);
  }

  *(v0 + 168) = v13;
  v16 = *(v0 + 72);
  v17 = *(v0 + 32);
  v18 = *(v0 + 40);
  v19 = *(v0 + 24);
  *(v13 + 2) = v15 + 1;
  v20 = *(v18 + 32);
  v18 += 32;
  v21 = *(v18 + 48);
  *(v0 + 252) = v21;
  v22 = *(v18 + 40);
  *(v0 + 176) = v22;
  *(v0 + 184) = v20;
  *(v0 + 192) = v18 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v20(&v13[((v21 + 32) & ~v21) + v22 * v15], v16, v17);
  v23 = (v19 + OBJC_IVAR____TtC7NewsUI219PuzzleRadarReporter_puzzleStatsService);
  v24 = *(v19 + OBJC_IVAR____TtC7NewsUI219PuzzleRadarReporter_puzzleStatsService + 24);
  v25 = *(v19 + OBJC_IVAR____TtC7NewsUI219PuzzleRadarReporter_puzzleStatsService + 32);
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v26 = swift_task_alloc();
  *(v0 + 200) = v26;
  *v26 = v0;
  v26[1] = sub_21965EE18;

  return MEMORY[0x282192A30](1, v24, v25);
}

uint64_t sub_21965EE18()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 208) = v3;
  *v3 = v2;
  v3[1] = sub_21965EF70;
  v4 = *(v1 + 96);

  return sub_219660788(v4);
}

uint64_t sub_21965EF70()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_21965F8B8;
  }

  else
  {
    v2 = sub_21965F084;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21965F084()
{
  v1 = *(v0 + 168);
  v47 = *(v0 + 248);
  v49 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 32);
  v8 = swift_allocBox();
  v10 = v9 + *(v2 + 48);
  v3(v9, v4, v5);
  strcpy(v10, "puzzle-stats");
  *(v10 + 13) = 0;
  *(v10 + 14) = -5120;
  *v6 = v8;
  v49(v6, v47, v7);
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v13 = *(v0 + 168);
  if (v12 >= v11 >> 1)
  {
    v13 = sub_2191F9528(v11 > 1, v12 + 1, 1, v13);
  }

  v48 = *(v0 + 184);
  v46 = *(v0 + 176);
  v14 = *(v0 + 104);
  v15 = *(v0 + 80);
  v16 = *(v0 + 64);
  v17 = *(v0 + 32);
  v18 = (*(v0 + 252) + 32) & ~*(v0 + 252);
  v19 = *(*(v0 + 88) + 8);
  v19(*(v0 + 96), v15);
  v19(v14, v15);
  *(v13 + 2) = v12 + 1;
  v48(&v13[v18 + v46 * v12], v16, v17);
  *(v0 + 224) = *(v0 + 216);
  v20 = *(v0 + 56);
  v21 = *(v0 + 32);
  v22 = *(v0 + 40);
  v23 = *(v0 + 16);
  sub_219661D90();
  v25 = v24;
  v26 = swift_allocBox();
  v28 = (v27 + *(v25 + 48));
  sub_219661198(v23);
  *v28 = 0xD000000000000011;
  v28[1] = 0x8000000219D2C010;
  *v20 = v26;
  v50 = *(v22 + 104);
  v50(v20, *MEMORY[0x277D6D6C8], v21);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_2191F9528(0, *(v13 + 2) + 1, 1, v13);
  }

  v30 = *(v13 + 2);
  v29 = *(v13 + 3);
  if (v30 >= v29 >> 1)
  {
    v13 = sub_2191F9528(v29 > 1, v30 + 1, 1, v13);
  }

  v32 = *(v0 + 48);
  v31 = *(v0 + 56);
  v33 = *(v0 + 32);
  v34 = *(v0 + 40);
  *(v13 + 2) = v30 + 1;
  v36 = *(v34 + 32);
  v34 += 32;
  v35 = v36;
  v37 = (*(v34 + 48) + 32) & ~*(v34 + 48);
  v38 = *(v34 + 40);
  v36(&v13[v37 + v38 * v30], v31, v33);
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *v32 = v39;
  v50(v32, *MEMORY[0x277D6D6C0], v33);
  v40 = *(v13 + 3);
  if ((v30 + 2) > (v40 >> 1))
  {
    v13 = sub_2191F9528(v40 > 1, v30 + 2, 1, v13);
  }

  *(v0 + 232) = v13;
  v41 = *(v0 + 48);
  v42 = *(v0 + 32);
  *(v13 + 2) = v30 + 2;
  v35(&v13[v37 + v38 * (v30 + 1)], v41, v42);
  sub_219BF5BD4();
  *(v0 + 240) = sub_219BF5BC4();
  v44 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_21965F41C, v44, v43);
}

void sub_21965F41C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v3 = *(v0 + 24);

  sub_219661578(v3, v1, (v0 + 256));
  if (v2)
  {
  }

  else
  {

    v4 = *(v0 + 8);

    v4();
  }
}

uint64_t sub_21965F524()
{
  v1 = v0[15];
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625E0);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2186C1000, v4, v5, "PuzzleRadarReporter: Failed to generate attachments: %@", v6, 0xCu);
    sub_218962D30(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  else
  {
  }

  v0[28] = 0;
  v10 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  v13 = v0[2];
  sub_219661D90();
  v15 = v14;
  v16 = swift_allocBox();
  v18 = (v17 + *(v15 + 48));
  sub_219661198(v13);
  *v18 = 0xD000000000000011;
  v18[1] = 0x8000000219D2C010;
  *v10 = v16;
  v37 = *(v12 + 104);
  v37(v10, *MEMORY[0x277D6D6C8], v11);
  v19 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_2191F9528(0, *(v19 + 2) + 1, 1, v19);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_2191F9528(v20 > 1, v21 + 1, 1, v19);
  }

  v23 = v0[6];
  v22 = v0[7];
  v24 = v0[4];
  v25 = v0[5];
  *(v19 + 2) = v21 + 1;
  v27 = *(v25 + 32);
  v25 += 32;
  v26 = v27;
  v28 = (*(v25 + 48) + 32) & ~*(v25 + 48);
  v29 = *(v25 + 40);
  v27(&v19[v28 + v29 * v21], v22, v24);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *v23 = v30;
  v37(v23, *MEMORY[0x277D6D6C0], v24);
  v31 = *(v19 + 3);
  if ((v21 + 2) > (v31 >> 1))
  {
    v19 = sub_2191F9528(v31 > 1, v21 + 2, 1, v19);
  }

  v0[29] = v19;
  v32 = v0[6];
  v33 = v0[4];
  *(v19 + 2) = v21 + 2;
  v26(&v19[v28 + v29 * (v21 + 1)], v32, v33);
  sub_219BF5BD4();
  v0[30] = sub_219BF5BC4();
  v35 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_21965F41C, v35, v34);
}

uint64_t sub_21965F8B8()
{
  (*(v0[11] + 8))(v0[13], v0[10]);
  v1 = v0[27];
  v2 = v0[21];
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F625E0);
  v4 = v1;
  v5 = sub_219BE5414();
  v6 = sub_219BF61F4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2186C1000, v5, v6, "PuzzleRadarReporter: Failed to generate attachments: %@", v7, 0xCu);
    sub_218962D30(v8);
    MEMORY[0x21CECF960](v8, -1, -1);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  else
  {
  }

  v0[28] = 0;
  v11 = v0[7];
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[2];
  sub_219661D90();
  v16 = v15;
  v17 = swift_allocBox();
  v19 = (v18 + *(v16 + 48));
  sub_219661198(v14);
  *v19 = 0xD000000000000011;
  v19[1] = 0x8000000219D2C010;
  *v11 = v17;
  v37 = *(v13 + 104);
  v37(v11, *MEMORY[0x277D6D6C8], v12);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2191F9528(0, *(v2 + 2) + 1, 1, v2);
  }

  v21 = *(v2 + 2);
  v20 = *(v2 + 3);
  if (v21 >= v20 >> 1)
  {
    v2 = sub_2191F9528(v20 > 1, v21 + 1, 1, v2);
  }

  v23 = v0[6];
  v22 = v0[7];
  v24 = v0[4];
  v25 = v0[5];
  *(v2 + 2) = v21 + 1;
  v27 = *(v25 + 32);
  v25 += 32;
  v26 = v27;
  v28 = (*(v25 + 48) + 32) & ~*(v25 + 48);
  v29 = *(v25 + 40);
  v27(&v2[v28 + v29 * v21], v22, v24);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *v23 = v30;
  v37(v23, *MEMORY[0x277D6D6C0], v24);
  v31 = *(v2 + 3);
  if ((v21 + 2) > (v31 >> 1))
  {
    v2 = sub_2191F9528(v31 > 1, v21 + 2, 1, v2);
  }

  v0[29] = v2;
  v32 = v0[6];
  v33 = v0[4];
  *(v2 + 2) = v21 + 2;
  v26(&v2[v28 + v29 * (v21 + 1)], v32, v33);
  sub_219BF5BD4();
  v0[30] = sub_219BF5BC4();
  v35 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_21965F41C, v35, v34);
}

uint64_t sub_21965FC60(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_219BE63B4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_219BDBD34();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21965FD7C, 0, 0);
}

uint64_t sub_21965FD7C()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC7NewsUI219PuzzleRadarReporter_puzzleHistoryService;
  v0[10] = OBJC_IVAR____TtC7NewsUI219PuzzleRadarReporter_puzzleHistoryService;
  v3 = *(v1 + v2 + 24);
  v4 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v3);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_21965FE40;

  return MEMORY[0x282192DC8](v3, v4);
}

uint64_t sub_21965FE40()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_219660718;
  }

  else
  {
    v2 = sub_21965FF54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21965FF54()
{
  ObjectType = swift_getObjectType();
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_219660008;

  return MEMORY[0x282193DF0](0, ObjectType);
}

uint64_t sub_219660008(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_2196606A8;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_219660130;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219660130()
{
  v56 = v1;
  v2 = [*(v1 + 120) puzzlesConfig];
  swift_unknownObjectRelease();
  v3 = [v2 puzzleTypes];

  v4 = sub_219BF5924();
  v5 = v4;
  v51 = *(v4 + 16);
  if (v51)
  {
    v6 = 0;
    v49 = (*(v1 + 64) + 8);
    v50 = v4 + 32;
    v7 = MEMORY[0x277D84F98];
    v48 = v5;
    while (1)
    {
      v8 = *(v5 + 16);
      if (v6 >= v8)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v9 = *(v1 + 72);
      v10 = *(v1 + 56);
      v11 = (*(v1 + 24) + *(v1 + 80));
      v52 = v6;
      v12 = (v50 + 16 * v6);
      v14 = *v12;
      v13 = v12[1];
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);

      sub_219BDBBB4();
      v53 = v14;
      v54 = v13;
      v15 = sub_219BF3764();
      (*v49)(v9, v10);
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = v15 + 40;
        v18 = MEMORY[0x277D84F90];
        do
        {
          v20 = (*(v1 + 24) + *(v1 + 80));
          __swift_project_boxed_opaque_existential_1(v20, v20[3]);

          v21 = sub_219BF3424();

          if (v21)
          {
            v22 = [v21 description];
            v23 = sub_219BF5414();
            v25 = v24;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_218840D24(0, *(v18 + 2) + 1, 1, v18);
            }

            v27 = *(v18 + 2);
            v26 = *(v18 + 3);
            if (v27 >= v26 >> 1)
            {
              v18 = sub_218840D24((v26 > 1), v27 + 1, 1, v18);
            }

            *(v18 + 2) = v27 + 1;
            v19 = &v18[16 * v27];
            *(v19 + 4) = v23;
            *(v19 + 5) = v25;
          }

          v17 += 16;
          --v16;
        }

        while (v16);
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55[0] = v7;
      v0 = v54;
      v3 = v7;
      v29 = sub_21870F700(v53, v54);
      v31 = v7[2];
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v8 = v31 + v32;
      if (v33)
      {
        goto LABEL_38;
      }

      v34 = v30;
      if (v7[3] < v8)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v3 = v55;
      v38 = v29;
      sub_2194933B4();
      v29 = v38;
      v7 = v55[0];
      if (v34)
      {
LABEL_3:
        *(v7[7] + 8 * v29) = v18;

        goto LABEL_4;
      }

LABEL_22:
      v7[(v29 >> 6) + 8] |= 1 << v29;
      v36 = (v7[6] + 16 * v29);
      *v36 = v53;
      v36[1] = v54;
      *(v7[7] + 8 * v29) = v18;
      v37 = v7[2];
      v33 = __OFADD__(v37, 1);
      v8 = v37 + 1;
      if (v33)
      {
        goto LABEL_39;
      }

      v7[2] = v8;
LABEL_4:
      v6 = v52 + 1;
      v5 = v48;
      if (v52 + 1 == v51)
      {

        goto LABEL_28;
      }
    }

    sub_219482CFC(v8, isUniquelyReferenced_nonNull_native);
    v7 = v55[0];
    v3 = v55[0];
    v29 = sub_21870F700(v53, v54);
    if ((v34 & 1) != (v35 & 1))
    {

      return sub_219BF79A4();
    }

LABEL_21:
    if (v34)
    {
      goto LABEL_3;
    }

    goto LABEL_22;
  }

LABEL_28:
  v39 = MEMORY[0x277D837D0];
  sub_218E8C844(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v40 = sub_219BF5244();
  v42 = v41;

  if (v42)
  {
    v55[3] = v39;
    v55[4] = MEMORY[0x277D83838];
    v55[0] = v40;
    v55[1] = v42;
    sub_219BE63C4();
    v3 = sub_2191F94F4(0, 1, 1, MEMORY[0x277D84F90]);
    v0 = v3[2];
    v8 = v3[3];
    v7 = (v0 + 1);
    if (v0 >= v8 >> 1)
    {
LABEL_40:
      v3 = sub_2191F94F4(v8 > 1, v7, 1, v3);
    }

    v44 = *(v1 + 40);
    v43 = *(v1 + 48);
    v45 = *(v1 + 32);
    v3[2] = v7;
    (*(v44 + 32))(v3 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v0, v43, v45);
  }

  sub_219BEB564();

  v46 = *(v1 + 8);

  return v46();
}

uint64_t sub_2196606A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219660718()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219660788(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_219BE63B4();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_219BF5474();
  v2[13] = swift_task_alloc();
  v4 = sub_219BDB024();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2196608D0, 0, 0);
}

uint64_t sub_2196608D0()
{
  sub_219BDB084();
  swift_allocObject();
  v0[17] = sub_219BDB074();
  v1 = MEMORY[0x277CC8718];
  sub_219661C78(0, &qword_27CC1D8F0, MEMORY[0x277CC8718], MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  sub_219BDB014();
  sub_219BDB004();
  v0[7] = v2;
  sub_219661DFC(&qword_27CC1D8F8, MEMORY[0x277CC8718]);
  sub_219661C78(0, &qword_27CC1D900, v1, MEMORY[0x277D83940]);
  sub_219661E44();
  sub_219BF7164();
  sub_219BDB034();
  ObjectType = swift_getObjectType();
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_219660AE0;

  return MEMORY[0x282193DF0](0, ObjectType);
}

uint64_t sub_219660AE0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_219660E6C;
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = sub_219660C08;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219660C08()
{
  v1 = *(v0 + 72);
  v2 = [*(v0 + 160) puzzlesConfig];
  swift_unknownObjectRelease();
  v3 = [v2 puzzleTypes];

  v4 = sub_219BF5924();
  *(v0 + 168) = v4;

  v5 = (v1 + OBJC_IVAR____TtC7NewsUI219PuzzleRadarReporter_puzzleStatsService);
  v6 = *(v1 + OBJC_IVAR____TtC7NewsUI219PuzzleRadarReporter_puzzleStatsService + 24);
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = swift_task_alloc();
  *(v0 + 176) = v8;
  *v8 = v0;
  v8[1] = sub_219660D38;

  return MEMORY[0x282192A28](v0 + 16, v4, v6, v7);
}

uint64_t sub_219660D38()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_219661110;
  }

  else
  {
    v2 = sub_219660EF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219660E6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219660EF4()
{
  v1 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = sub_219BDB064();
  if (v1)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    v4 = v0[1];
  }

  else
  {
    v5 = v2;
    v6 = v3;
    sub_219BF5464();
    sub_219BF5434();
    if (v7)
    {
      sub_219BE63C4();
      v8 = sub_2191F94F4(0, 1, 1, MEMORY[0x277D84F90]);
      v10 = v8[2];
      v9 = v8[3];
      v11 = v10 + 1;
      if (v10 >= v9 >> 1)
      {
        v16 = sub_2191F94F4(v9 > 1, v10 + 1, 1, v8);
        v11 = v10 + 1;
        v8 = v16;
      }

      v13 = v0[11];
      v12 = v0[12];
      v14 = v0[10];
      v8[2] = v11;
      (*(v13 + 32))(v8 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v10, v12, v14);
    }

    sub_219BEB564();

    sub_2186C6190(v5, v6);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));

    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_219661110()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219661198(uint64_t a1)
{
  v2 = sub_219BE63B4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  if (!*(a1 + 16) || (v9 = sub_21870F700(0x77656E656C707061, 0xE900000000000073), (v10 & 1) == 0) || (sub_2186D1230(*(a1 + 56) + 32 * v9, &v30), sub_218A19674(), (swift_dynamicCast() & 1) == 0))
  {
    v15 = MEMORY[0x277D84F90];
    if (!*(a1 + 16))
    {
      return sub_219BEB564();
    }

    goto LABEL_10;
  }

  v29 = v3;
  v11 = MEMORY[0x277D837D0];
  v12 = sub_219BF5244();
  v14 = v13;

  if (!v14)
  {
    v15 = MEMORY[0x277D84F90];
    v3 = v29;
    if (!*(a1 + 16))
    {
      return sub_219BEB564();
    }

    goto LABEL_10;
  }

  v32 = v11;
  v33 = MEMORY[0x277D83838];
  v30 = v12;
  v31 = v14;
  sub_219BE63C4();
  v15 = sub_2191F94F4(0, 1, 1, MEMORY[0x277D84F90]);
  v17 = v15[2];
  v16 = v15[3];
  if (v17 >= v16 >> 1)
  {
    v15 = sub_2191F94F4(v16 > 1, v17 + 1, 1, v15);
  }

  v3 = v29;
  v15[2] = v17 + 1;
  (*(v3 + 32))(v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v8, v2);
  if (*(a1 + 16))
  {
LABEL_10:
    v18 = sub_21870F700(0x7461646C61636F6CLL, 0xEE0065726F747361);
    if (v19)
    {
      sub_2186D1230(*(a1 + 56) + 32 * v18, &v30);
      sub_218A19674();
      if (swift_dynamicCast())
      {
        v29 = v3;
        v20 = MEMORY[0x277D837D0];
        v21 = sub_219BF5244();
        v23 = v22;

        if (v23)
        {
          v32 = v20;
          v33 = MEMORY[0x277D83838];
          v30 = v21;
          v31 = v23;
          sub_219BE63C4();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_2191F94F4(0, v15[2] + 1, 1, v15);
          }

          v24 = v29;
          v26 = v15[2];
          v25 = v15[3];
          if (v26 >= v25 >> 1)
          {
            v15 = sub_2191F94F4(v25 > 1, v26 + 1, 1, v15);
          }

          v15[2] = v26 + 1;
          (*(v24 + 32))(v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v26, v6, v2);
        }
      }
    }
  }

  return sub_219BEB564();
}

uint64_t sub_219661578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v25[3] = a2;
  v34 = a3;
  v26 = sub_219BE89F4();
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v27 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE6CF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_219661C78(0, &unk_27CC1D910, MEMORY[0x277D6D5C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v25 - v12;
  v14 = MEMORY[0x277D6EB98];
  sub_219661C78(0, &unk_27CC1EE20, MEMORY[0x277D6EB98], v10);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v25 - v16;
  v18 = *(a1 + OBJC_IVAR____TtC7NewsUI219PuzzleRadarReporter_commandCenter + 8);
  v25[1] = *(a1 + OBJC_IVAR____TtC7NewsUI219PuzzleRadarReporter_commandCenter);
  v25[2] = v18;
  v25[0] = swift_getObjectType();
  sub_219661C78(0, &qword_27CC1D920, v14, MEMORY[0x277D6EBE8]);
  sub_219BEA924();
  if (qword_27CC07F70 != -1)
  {
    swift_once();
  }

  v19 = sub_219BE63A4();
  v20 = __swift_project_value_buffer(v19, qword_27CC12E40);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v13, v20, v19);
  (*(v21 + 56))(v13, 0, 1, v19);
  (*(v7 + 104))(v9, *MEMORY[0x277D6D7F0], v6);

  sub_219BEA754();
  v22 = sub_219BEA764();
  (*(*(v22 - 8) + 56))(v17, 0, 1, v22);
  (*(v4 + 104))(v27, *MEMORY[0x277D6E0F8], v26);
  v29 = &type metadata for PuzzleRadarReporter.Tracker;
  v30 = sub_219661ECC();
  v31 = 0u;
  v32 = 0u;
  v33 = 1;
  sub_219BE8314();
  swift_allocObject();
  sub_219BE82F4();
  v23 = v28;
  sub_219BE7044();
  if (v23)
  {

    result = sub_219295728(v17);
  }

  else
  {
    sub_219295728(v17);
  }

  *v34 = v23 != 0;
  return result;
}

uint64_t sub_219661B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2187608D4;

  return sub_21965E960(a5);
}

void sub_219661C78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219661CDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_21965E898(a1, v4, v5, v6);
}

void sub_219661D90()
{
  if (!qword_27CC1D8E8)
  {
    sub_219BEB554();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1D8E8);
    }
  }
}

uint64_t sub_219661DFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219661E44()
{
  result = qword_27CC1D908;
  if (!qword_27CC1D908)
  {
    sub_219661C78(255, &qword_27CC1D900, MEMORY[0x277CC8718], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D908);
  }

  return result;
}

unint64_t sub_219661ECC()
{
  result = qword_27CC1D928;
  if (!qword_27CC1D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D928);
  }

  return result;
}

uint64_t sub_219661F20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_21965DC4C(a1, v4, v5, v6);
}

void sub_219661FD4(void *a1)
{
  sub_219661C78(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  v6 = [a1 body];
  v7 = sub_219BF5214();

  v8 = sub_2187A1A2C(v7);

  if (v8)
  {
    v9 = sub_219BF5BF4();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v1;
    v10[5] = v8;
    v11 = v1;
    sub_218AB3D80(0, 0, v5, &unk_219C965C8, v10);
  }

  else
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v12 = sub_219BE5434();
    __swift_project_value_buffer(v12, qword_280F625E0);
    swift_unknownObjectRetain();
    v22 = sub_219BE5414();
    v13 = sub_219BF61F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315138;
      v16 = [a1 body];
      sub_219BF5214();

      v17 = sub_219BF5224();
      v19 = v18;

      v20 = sub_2186D1058(v17, v19, &v23);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_2186C1000, v22, v13, "PuzzleRadarReporter received invalid message [%s]", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x21CECF960](v15, -1, -1);
      MEMORY[0x21CECF960](v14, -1, -1);
    }

    else
    {
      v21 = v22;
    }
  }
}

uint64_t sub_219662324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187608D4;

  return sub_219661B20(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for FoodTodayFeedGroupKnobs()
{
  result = qword_280EC4E90;
  if (!qword_280EC4E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21966246C()
{
  sub_2189AE994(319);
  if (v0 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for FoodTodayFeedGroupRecipeKnobs();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FoodTodayFeedGroupHeadlineKnobs();
        if (v3 <= 0x3F)
        {
          type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();
          if (v4 <= 0x3F)
          {
            type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs();
            if (v5 <= 0x3F)
            {
              sub_2192927D8();
              if (v6 <= 0x3F)
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

uint64_t sub_21966256C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v265 = a2;
  v274 = type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs();
  v263 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v264 = v226 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEFD94();
  v289 = *(v4 - 8);
  v290 = v4;
  MEMORY[0x28223BE20](v4);
  v269 = v226 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v243 = v226 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v280 = v226 - v9;
  v272 = type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();
  v261 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v262 = v226 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = type metadata accessor for FoodTodayFeedGroupHeadlineKnobs();
  v276 = *(v281 - 8);
  v11 = MEMORY[0x28223BE20](v281);
  v253 = (v226 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v254 = v226 - v13;
  v258 = sub_219BEF244();
  v277 = *(v258 - 8);
  v14 = MEMORY[0x28223BE20](v258);
  v242 = v226 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v240 = v226 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v238 = v226 - v19;
  MEMORY[0x28223BE20](v18);
  v235 = v226 - v20;
  sub_218D55324(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v241 = v226 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v257 = v226 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v239 = v226 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v275 = v226 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v236 = v226 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v273 = v226 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v234 = v226 - v35;
  MEMORY[0x28223BE20](v34);
  v250 = v226 - v36;
  v37 = type metadata accessor for FoodTodayFeedGroupRecipeKnobs();
  v291 = *(v37 - 8);
  v292 = v37;
  v38 = MEMORY[0x28223BE20](v37);
  v255 = (v226 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = MEMORY[0x28223BE20](v38);
  v256 = v226 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v237 = (v226 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v251 = v226 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v248 = (v226 - v47);
  MEMORY[0x28223BE20](v46);
  v249 = v226 - v48;
  sub_2189AE9B4(0);
  v245 = v49;
  v271 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v247 = v226 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v244 = v51;
  v270 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v246 = v226 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = type metadata accessor for FoodTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v293);
  v294 = v226 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219665320(0);
  v55 = MEMORY[0x28223BE20](v54 - 8);
  v260 = v226 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v288 = v226 - v57;
  sub_219665340(0);
  v59 = MEMORY[0x28223BE20](v58 - 8);
  v259 = v226 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v287 = v226 - v61;
  sub_219665360(0);
  v63 = MEMORY[0x28223BE20](v62 - 8);
  v268 = v226 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v286 = v226 - v65;
  sub_219665380(0);
  v67 = MEMORY[0x28223BE20](v66 - 8);
  v252 = v226 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x28223BE20](v67);
  v267 = v226 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v73 = v226 - v72;
  v74 = MEMORY[0x28223BE20](v71);
  v283 = v226 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v285 = v226 - v77;
  MEMORY[0x28223BE20](v76);
  v284 = v226 - v78;
  sub_2189AF700(0);
  v80 = MEMORY[0x28223BE20](v79 - 8);
  v82 = v226 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v80);
  v279 = v226 - v83;
  sub_2189AF720(0);
  v85 = MEMORY[0x28223BE20](v84 - 8);
  v266 = v226 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v278 = v226 - v87;
  sub_2196653A0(0, &qword_280E8CE00, MEMORY[0x277D844C8]);
  v89 = v88;
  v90 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v92 = v226 - v91;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196652CC();
  v93 = v282;
  sub_219BF7B34();
  if (v93)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v282 = v82;
  v233 = v73;
  v228 = 0;
  v230 = v90;
  v232 = a1;
  LOBYTE(v296) = 0;
  sub_2186DFE60(&qword_280E91A28, sub_2189AE994);
  v95 = v278;
  v96 = v244;
  sub_219BF7674();
  LOBYTE(v296) = 1;
  sub_2186DFE60(&qword_280E91868, sub_2189AE9B4);
  v97 = v279;
  v98 = v245;
  sub_219BF7674();
  LOBYTE(v296) = 2;
  sub_2186DFE60(&qword_280EB06D0, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
  sub_219BF7674();
  LOBYTE(v296) = 3;
  sub_219BF7674();
  LOBYTE(v296) = 4;
  sub_2186DFE60(&qword_280EA9290, type metadata accessor for FoodTodayFeedGroupHeadlineKnobs);
  sub_219BF7674();
  LOBYTE(v296) = 5;
  sub_219BF7674();
  LOBYTE(v296) = 6;
  sub_2186DFE60(&qword_280E9B700, type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs);
  sub_219BF7674();
  LOBYTE(v296) = 7;
  sub_2186DFE60(&qword_280EA06B8, type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs);
  sub_219BF7674();
  sub_2192927D8();
  v100 = v99;
  LOBYTE(v295) = 8;
  sub_2186DFE60(&qword_280E917D0, sub_2192927D8);
  v231 = v89;
  v226[1] = v100;
  sub_219BF7674();
  v227 = v296;
  v101 = v266;
  sub_2196655C0(v95, v266, sub_2189AF720);
  v102 = v270;
  v103 = *(v270 + 48);
  v104 = v97;
  if (v103(v101, 1, v96) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFE60(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v102 = v270;
    v105 = v246;
    sub_219BEE974();
    v106 = v103(v101, 1, v96);
    v107 = v105;
    v108 = v106 == 1;
    v109 = v294;
    v110 = v258;
    v111 = v291;
    v112 = v247;
    if (!v108)
    {
      v113 = v92;
      v114 = v294;
      sub_219665404(v266, sub_2189AF720);
      v109 = v114;
      v92 = v113;
      v102 = v270;
    }
  }

  else
  {
    v107 = v246;
    (*(v102 + 32))(v246, v101, v96);
    v109 = v294;
    v110 = v258;
    v111 = v291;
    v112 = v247;
  }

  v229 = v92;
  (*(v102 + 32))(v109, v107, v96);
  v115 = v282;
  sub_2196655C0(v104, v282, sub_2189AF700);
  v116 = v271;
  v117 = *(v271 + 48);
  if (v117(v115, 1, v98) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DFE60(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    sub_219BEEC74();
    v118 = v117(v115, 1, v98);
    v120 = v289;
    v119 = v290;
    v121 = v293;
    v122 = v273;
    v123 = v112;
    v124 = v233;
    if (v118 != 1)
    {
      v125 = v123;
      v126 = v115;
      v127 = v293;
      sub_219665404(v126, sub_2189AF700);
      v121 = v127;
      v123 = v125;
    }
  }

  else
  {
    (*(v116 + 32))(v112, v115, v98);
    v120 = v289;
    v119 = v290;
    v121 = v293;
    v122 = v273;
    v123 = v112;
    v124 = v233;
  }

  (*(v271 + 32))(&v294[v121[5]], v123, v98);
  sub_2196655C0(v284, v124, sub_219665380);
  v282 = *(v111 + 48);
  v128 = v282(v124, 1, v292);
  v291 = v111 + 48;
  v129 = v275;
  v130 = v267;
  v131 = v250;
  if (v128 == 1)
  {
    v132 = v277;
    (*(v277 + 56))(v250, 1, 1, v110);
    v295 = 1;
    sub_2186F9548();
    swift_allocObject();
    v133 = sub_219BEF534();
    v134 = v248;
    *v248 = v133;
    v295 = 3;
    swift_allocObject();
    v134[1] = sub_219BEF534();
    v135 = v234;
    sub_2196655C0(v131, v234, sub_218D55324);
    v136 = *(v132 + 48);
    if (v136(v135, 1, v110) == 1)
    {
      v137 = v235;
      sub_219BEF1C4();
      v138 = v136(v135, 1, v110);
      v139 = v137;
      v122 = v273;
      if (v138 != 1)
      {
        sub_219665404(v135, sub_218D55324);
      }
    }

    else
    {
      v139 = v235;
      (*(v132 + 32))(v235, v135, v110);
      v122 = v273;
    }

    v141 = v292;
    v142 = *(v132 + 32);
    v143 = v248;
    v142(v248 + *(v292 + 24), v139, v110);
    LOBYTE(v295) = 1;
    sub_2186F95C4();
    swift_allocObject();
    v144 = sub_219BEF534();
    sub_219665404(v131, sub_218D55324);
    *(v143 + *(v141 + 28)) = v144;
    v140 = v249;
    sub_219665628(v143, v249, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    v145 = v233;
    v146 = v282(v233, 1, v141);
    v120 = v289;
    v119 = v290;
    v129 = v275;
    if (v146 != 1)
    {
      sub_219665404(v145, sub_219665380);
    }
  }

  else
  {
    v140 = v249;
    sub_219665628(v124, v249, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
  }

  sub_219665628(v140, &v294[v293[6]], type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
  sub_2196655C0(v285, v130, sub_219665380);
  if (v282(v130, 1, v292) == 1)
  {
    v147 = v277;
    (*(v277 + 56))(v122, 1, 1, v110);
    v295 = 1;
    sub_2186F9548();
    swift_allocObject();
    v148 = sub_219BEF534();
    v149 = v237;
    *v237 = v148;
    v295 = 3;
    swift_allocObject();
    *(v149 + 8) = sub_219BEF534();
    v150 = v236;
    sub_2196655C0(v122, v236, sub_218D55324);
    v151 = *(v147 + 48);
    if (v151(v150, 1, v110) == 1)
    {
      v152 = v238;
      sub_219BEF1C4();
      if (v151(v150, 1, v110) != 1)
      {
        sub_219665404(v150, sub_218D55324);
      }
    }

    else
    {
      v152 = v238;
      (*(v147 + 32))(v238, v150, v110);
    }

    v154 = v292;
    (*(v147 + 32))(v149 + *(v292 + 24), v152, v110);
    LOBYTE(v295) = 1;
    sub_2186F95C4();
    swift_allocObject();
    v155 = sub_219BEF534();
    sub_219665404(v273, sub_218D55324);
    *(v149 + *(v154 + 28)) = v155;
    v153 = v251;
    sub_219665628(v149, v251, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    v156 = v267;
    v157 = v282(v267, 1, v154);
    v120 = v289;
    v119 = v290;
    if (v157 != 1)
    {
      sub_219665404(v156, sub_219665380);
    }
  }

  else
  {
    v153 = v251;
    sub_219665628(v130, v251, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
  }

  sub_219665628(v153, &v294[v293[7]], type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
  v158 = v268;
  sub_2196655C0(v286, v268, sub_219665360);
  v159 = v276 + 48;
  v160 = *(v276 + 48);
  if (v160(v158, 1, v281) == 1)
  {
    v276 = v159;
    v161 = v277;
    (*(v277 + 56))(v129, 1, 1, v110);
    v295 = 0x40F5180000000000;
    sub_2186ECA28();
    swift_allocObject();
    v162 = sub_219BEF534();
    v163 = v253;
    v253[1] = v162;
    v295 = sub_219BED694();
    sub_2186F9548();
    swift_allocObject();
    *v163 = sub_219BEF534();
    v295 = 1;
    swift_allocObject();
    v163[2] = sub_219BEF534();
    v295 = 3;
    swift_allocObject();
    v163[3] = sub_219BEF534();
    v164 = v239;
    sub_2196655C0(v129, v239, sub_218D55324);
    v165 = *(v161 + 48);
    if (v165(v164, 1, v110) == 1)
    {
      v166 = v240;
      sub_219BEF1C4();
      v167 = v165(v164, 1, v110);
      v168 = v166;
      v169 = v254;
      if (v167 != 1)
      {
        sub_219665404(v164, sub_218D55324);
      }
    }

    else
    {
      v168 = v240;
      (*(v161 + 32))(v240, v164, v110);
      v169 = v254;
    }

    v170 = v281;
    v171 = *(v161 + 32);
    v172 = v253;
    v171(v253 + *(v281 + 32), v168, v110);
    LOBYTE(v295) = 1;
    sub_2186F95C4();
    swift_allocObject();
    v173 = sub_219BEF534();
    sub_219665404(v275, sub_218D55324);
    *(v172 + *(v170 + 36)) = v173;
    sub_219665628(v172, v169, type metadata accessor for FoodTodayFeedGroupHeadlineKnobs);
    v174 = v268;
    v175 = v160(v268, 1, v170);
    v120 = v289;
    v119 = v290;
    if (v175 != 1)
    {
      sub_219665404(v174, sub_219665360);
    }
  }

  else
  {
    v169 = v254;
    sub_219665628(v158, v254, type metadata accessor for FoodTodayFeedGroupHeadlineKnobs);
  }

  v176 = v293;
  sub_219665628(v169, &v294[v293[8]], type metadata accessor for FoodTodayFeedGroupHeadlineKnobs);
  v177 = v252;
  sub_2196655C0(v283, v252, sub_219665380);
  if (v282(v177, 1, v292) == 1)
  {
    v178 = v277;
    v179 = v257;
    (*(v277 + 56))(v257, 1, 1, v110);
    v295 = 1;
    sub_2186F9548();
    swift_allocObject();
    v180 = sub_219BEF534();
    v181 = v255;
    *v255 = v180;
    v295 = 3;
    swift_allocObject();
    v181[1] = sub_219BEF534();
    v182 = v179;
    v183 = v241;
    sub_2196655C0(v182, v241, sub_218D55324);
    v184 = *(v178 + 48);
    if (v184(v183, 1, v110) == 1)
    {
      v185 = v242;
      sub_219BEF1C4();
      v186 = v185;
      v108 = v184(v183, 1, v110) == 1;
      v187 = v269;
      v188 = v183;
      v189 = v292;
      if (!v108)
      {
        sub_219665404(v188, sub_218D55324);
      }
    }

    else
    {
      v186 = v242;
      (*(v178 + 32))(v242, v183, v110);
      v187 = v269;
      v189 = v292;
    }

    v191 = v255;
    (*(v178 + 32))(v255 + *(v189 + 24), v186, v110);
    LOBYTE(v295) = 1;
    sub_2186F95C4();
    swift_allocObject();
    v192 = sub_219BEF534();
    sub_219665404(v257, sub_218D55324);
    *(v191 + *(v189 + 28)) = v192;
    v190 = v256;
    sub_219665628(v191, v256, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    v193 = v282(v177, 1, v189);
    v120 = v289;
    v119 = v290;
    if (v193 != 1)
    {
      sub_219665404(v177, sub_219665380);
    }
  }

  else
  {
    v190 = v256;
    sub_219665628(v177, v256, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    v187 = v269;
  }

  sub_219665628(v190, &v294[v176[9]], type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
  v194 = v259;
  sub_2196655C0(v287, v259, sub_219665340);
  v195 = *(v261 + 48);
  v196 = v272;
  v197 = v195(v194, 1, v272);
  v198 = MEMORY[0x277D32A90];
  if (v197 == 1)
  {
    v199 = sub_219BEF814();
    v200 = v280;
    (*(*(v199 - 8) + 56))(v280, 1, 1, v199);
    v201 = v200;
    v202 = v262;
    sub_2196655C0(v201, v262, sub_2186E4FBC);
    (*(v120 + 104))(v187, *v198, v119);
    sub_218D1D174();
    swift_allocObject();
    v203 = MEMORY[0x277D84F90];
    *(v202 + v196[5]) = sub_219BEF534();
    sub_218CC4F9C();
    swift_allocObject();
    *(v202 + v196[6]) = sub_219BEEE04();
    v295 = 0;
    sub_2186ECA28();
    swift_allocObject();
    *(v202 + v196[7]) = sub_219BEF534();
    LOBYTE(v295) = 0;
    sub_2186F95C4();
    swift_allocObject();
    *(v202 + v196[8]) = sub_219BEF534();
    LOBYTE(v295) = 0;
    swift_allocObject();
    *(v202 + v196[9]) = sub_219BEF534();
    v204 = sub_2194AE724(v203);
    sub_219665404(v280, sub_2186E4FBC);
    *(v202 + v196[10]) = v204;
    if (v195(v194, 1, v196) != 1)
    {
      sub_219665404(v194, sub_219665340);
    }
  }

  else
  {
    v202 = v262;
    sub_219665628(v194, v262, type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs);
  }

  v205 = v294;
  sub_219665628(v202, &v294[v293[10]], type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs);
  v206 = v260;
  sub_2196655C0(v288, v260, sub_219665320);
  v207 = *(v263 + 48);
  v208 = v274;
  if (v207(v206, 1, v274) == 1)
  {
    v209 = sub_219BEF814();
    v210 = *(*(v209 - 8) + 56);
    v211 = v280;
    v210(v280, 1, 1, v209);
    v212 = v243;
    v210(v243, 1, 1, v209);
    v213 = v264;
    sub_2196655C0(v211, v264, sub_2186E4FBC);
    sub_2196655C0(v212, v213 + v208[5], sub_2186E4FBC);
    (*(v289 + 104))(v269, *MEMORY[0x277D32A90], v290);
    sub_218D1D174();
    swift_allocObject();
    v214 = MEMORY[0x277D84F90];
    *(v213 + v208[6]) = sub_219BEF534();
    sub_218CC4F9C();
    swift_allocObject();
    *(v213 + v208[7]) = sub_219BEEE04();
    v295 = 0;
    sub_2186ECA28();
    swift_allocObject();
    *(v213 + v208[8]) = sub_219BEF534();
    LOBYTE(v295) = 0;
    sub_2186F95C4();
    swift_allocObject();
    *(v213 + v208[9]) = sub_219BEF534();
    v215 = sub_2194AE724(v214);
    sub_219665404(v212, sub_2186E4FBC);
    v205 = v294;
    sub_219665404(v280, sub_2186E4FBC);
    *(v213 + v208[10]) = v215;
    v216 = v207(v206, 1, v208);
    v217 = v232;
    v218 = v265;
    v219 = v231;
    v220 = v230;
    if (v216 != 1)
    {
      sub_219665404(v206, sub_219665320);
    }
  }

  else
  {
    v213 = v264;
    sub_219665628(v206, v264, type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs);
    v217 = v232;
    v218 = v265;
    v219 = v231;
    v220 = v230;
  }

  sub_219665628(v213, v205 + v293[11], type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs);
  v221 = v227;
  if (!v227)
  {
    swift_allocObject();
    v222 = sub_219BEEE04();
    v205 = v294;
    v221 = v222;
  }

  v224 = v286;
  v223 = v287;
  v225 = v278;
  sub_219665404(v288, sub_219665320);
  sub_219665404(v223, sub_219665340);
  sub_219665404(v283, sub_219665380);
  sub_219665404(v224, sub_219665360);
  sub_219665404(v285, sub_219665380);
  sub_219665404(v284, sub_219665380);
  sub_219665404(v279, sub_2189AF700);
  sub_219665404(v225, sub_2189AF720);
  *(v205 + v293[12]) = v221;
  sub_219665628(v205, v218, type metadata accessor for FoodTodayFeedGroupKnobs);
  (*(v220 + 8))(v229, v219);
  return __swift_destroy_boxed_opaque_existential_1(v217);
}

uint64_t sub_219664BB8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x73656C7572;
    v6 = 0x655274736574616CLL;
    if (a1 != 2)
    {
      v6 = 0x676E69646E657274;
    }

    if (a1)
    {
      v5 = 0x6C6F6F706572;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x526C656E6E616863;
    v2 = 0x6365526369706F74;
    if (a1 != 7)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6548756F59726F66;
    if (a1 != 4)
    {
      v3 = 0x6552756F59726F66;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_219664D14(void *a1)
{
  v3 = v1;
  sub_2196653A0(0, &qword_280E8C598, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196652CC();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AE994(0);
  sub_2186DFE60(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for FoodTodayFeedGroupKnobs();
    LOBYTE(v14) = 1;
    sub_2189AE9B4(0);
    sub_2186DFE60(&unk_280E91870, sub_2189AE9B4);
    sub_219BF7834();
    LOBYTE(v14) = 2;
    type metadata accessor for FoodTodayFeedGroupRecipeKnobs();
    sub_2186DFE60(&qword_280EB06D8, type metadata accessor for FoodTodayFeedGroupRecipeKnobs);
    sub_219BF7834();
    LOBYTE(v14) = 3;
    sub_219BF7834();
    v12 = *(v10 + 32);
    LOBYTE(v14) = 4;
    type metadata accessor for FoodTodayFeedGroupHeadlineKnobs();
    sub_2186DFE60(&qword_280EA9298, type metadata accessor for FoodTodayFeedGroupHeadlineKnobs);
    sub_219BF7834();
    LOBYTE(v14) = 5;
    sub_219BF7834();
    LOBYTE(v14) = 6;
    type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();
    sub_2186DFE60(&qword_280E9B708, type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs);
    sub_219BF7834();
    LOBYTE(v14) = 7;
    type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs();
    sub_2186DFE60(&qword_280EA06C0, type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 48));
    v13 = 8;
    sub_2192927D8();
    sub_2186DFE60(&qword_280E917D8, sub_2192927D8);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2196651F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2196657A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219665220(uint64_t a1)
{
  v2 = sub_2196652CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21966525C(uint64_t a1)
{
  v2 = sub_2196652CC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2196652CC()
{
  result = qword_280EC4EC0;
  if (!qword_280EC4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4EC0);
  }

  return result;
}

void sub_2196653A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2196652CC();
    v7 = a3(a1, &type metadata for FoodTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219665404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219665464(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DFE60(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FoodTodayFeedGroupKnobs();
  if ((sub_219BEEC64() & 1) == 0 || (sub_219B40110(a1 + v4[6], a2 + v4[6]) & 1) == 0 || (sub_219B40110(a1 + v4[7], a2 + v4[7]) & 1) == 0 || (sub_219387FF0(a1 + v4[8], a2 + v4[8]) & 1) == 0 || (sub_219B40110(a1 + v4[9], a2 + v4[9]) & 1) == 0 || (sub_21905ED14(a1 + v4[10], a2 + v4[10]) & 1) == 0 || (sub_2195CE410(a1 + v4[11], a2 + v4[11]) & 1) == 0)
  {
    return 0;
  }

  sub_2192927D8();
  return sub_219BEEDE4() & 1;
}

uint64_t sub_2196655C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219665628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2196656A4()
{
  result = qword_27CC1D930;
  if (!qword_27CC1D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D930);
  }

  return result;
}

unint64_t sub_2196656FC()
{
  result = qword_280EC4EB0;
  if (!qword_280EC4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4EB0);
  }

  return result;
}

unint64_t sub_219665754()
{
  result = qword_280EC4EB8;
  if (!qword_280EC4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4EB8);
  }

  return result;
}

uint64_t sub_2196657A8(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x655274736574616CLL && a2 == 0xED00007365706963 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E69646E657274 && a2 == 0xEF73657069636552 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6548756F59726F66 && a2 == 0xEF73656E696C6461 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6552756F59726F66 && a2 == 0xED00007365706963 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x526C656E6E616863 && a2 == 0xEE00736570696365 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6365526369706F74 && a2 == 0xEC00000073657069 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219D2C050 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_219665ADC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = type metadata accessor for FoodTodayFeedGroupConfigData();
  MEMORY[0x28223BE20](v50);
  v51 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF1934();
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E1968(0, &qword_280E8CC38, sub_219666680, &type metadata for FoodTodayFeedGroupConfigData.CodingKeys, MEMORY[0x277D844C8]);
  v8 = v7;
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219666680();
  v11 = v54;
  sub_219BF7B34();
  if (v11)
  {
    v15 = a1;
  }

  else
  {
    v12 = v53;
    LOBYTE(v55) = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    v54 = v6;
    v13 = MEMORY[0x277D33708];
    sub_2186E1968(0, &qword_280E90530, sub_2186E19D0, &type metadata for FoodTodayFeedGroupArrangementDataSource, MEMORY[0x277D33708]);
    LOBYTE(v55) = 2;
    sub_2196666D4(&qword_280E90538, &qword_280E90530, v13);
    v48 = sub_219BF7654();
    v14 = MEMORY[0x277D33F70];
    sub_2186E1968(0, &qword_280E90098, sub_2186E19D0, &type metadata for FoodTodayFeedGroupArrangementDataSource, MEMORY[0x277D33F70]);
    LOBYTE(v55) = 3;
    sub_2196666D4(&qword_280E900A0, &qword_280E90098, v14);
    v17 = sub_219BF7654();
    LOBYTE(v55) = 4;
    sub_218E27034();
    sub_219BF76E4();
    v18 = v54;
    v46 = v61;
    v47 = v17;
    v19 = v62;
    v63 = 5;
    sub_218E27088();
    sub_219BF76E4();
    v38 = v19;
    v43 = v10;
    v39 = v55;
    v20 = v18;
    v21 = v56;
    v40 = v57;
    v41 = v58;
    v22 = v46;
    v44 = v59;
    v45 = v60;
    v23 = v50;
    v24 = v51;
    *v51 = 24;
    (*(v52 + 16))(&v24[v23[5]], v20, v4);
    v25 = v47;
    *&v24[v23[6]] = v48;
    *&v24[v23[7]] = v25;
    v42 = a1;
    if (v22)
    {
      v26 = v24;
      v27 = v12;
      v28 = v22;
      v29 = v38;
    }

    else
    {
      v28 = sub_2194AD74C(&unk_282A24130);
      swift_arrayDestroy();
      v29 = sub_2194AD74C(&unk_282A24170);
      v27 = v12;
      swift_arrayDestroy();
      v26 = v51;
    }

    v30 = v50;
    v31 = &v26[*(v50 + 32)];
    *v31 = v28;
    v31[1] = v29;
    if (v21)
    {
      v32 = v41;
      v33 = v40;
      v34 = v39;
    }

    else
    {
      v45 = 0xEA00000000006C72;
      v44 = 0x752D726564616568;
      v32 = 0xEF656C7469746275;
      v33 = 0x732D726564616568;
      v21 = 0xEC000000656C7469;
      v34 = 0x742D726564616568;
    }

    (*(v52 + 8))(v54, v4);
    (*(v27 + 8))(v43, v8);
    v35 = v51;
    v36 = &v51[*(v30 + 36)];
    *v36 = v34;
    v36[1] = v21;
    v36[2] = v33;
    v36[3] = v32;
    v37 = v45;
    v36[4] = v44;
    v36[5] = v37;
    sub_219666738(v35, v49);
    v15 = v42;
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_219666184(void *a1)
{
  v3 = v1;
  sub_2186E1968(0, &qword_280E8C450, sub_219666680, &type metadata for FoodTodayFeedGroupConfigData.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219666680();
  sub_219BF7B44();
  LOBYTE(v17[0]) = *v3;
  v20 = 0;
  sub_2189907F0();
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for FoodTodayFeedGroupConfigData();
    LOBYTE(v17[0]) = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
    *&v17[0] = *&v3[v10[6]];
    v20 = 2;
    sub_2186E18F4(0, &qword_280E8EEB0, &qword_280E90530, MEMORY[0x277D33708]);
    sub_21966679C();
    sub_219BF7834();
    *&v17[0] = *&v3[v10[7]];
    v20 = 3;
    sub_2186E18F4(0, &qword_280E8EEA0, &qword_280E90098, MEMORY[0x277D33F70]);
    sub_21966686C();
    sub_219BF7834();
    v17[0] = *&v3[v10[8]];
    v20 = 4;
    sub_218E272B4();
    sub_219BF7834();
    v11 = &v3[v10[9]];
    v12 = *v11;
    v13 = *(v11 + 1);
    v15 = *(v11 + 4);
    v14 = *(v11 + 5);
    v17[0] = v12;
    v17[1] = v13;
    v18 = v15;
    v19 = v14;
    v20 = 5;
    sub_218E27308();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2196664EC()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0x6574616C706D6574;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E65746E6F63;
  if (v1 != 1)
  {
    v5 = 0x6D65676E61727261;
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

uint64_t sub_2196665B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219666A54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2196665D8(uint64_t a1)
{
  v2 = sub_219666680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219666614(uint64_t a1)
{
  v2 = sub_219666680();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219666680()
{
  result = qword_280EB4438[0];
  if (!qword_280EB4438[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB4438);
  }

  return result;
}

uint64_t sub_2196666D4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2186E1968(255, a2, sub_2186E19D0, &type metadata for FoodTodayFeedGroupArrangementDataSource, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219666738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FoodTodayFeedGroupConfigData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21966679C()
{
  result = qword_280E8EEA8;
  if (!qword_280E8EEA8)
  {
    v1 = MEMORY[0x277D33708];
    sub_2186E18F4(255, &qword_280E8EEB0, &qword_280E90530, MEMORY[0x277D33708]);
    sub_2196666D4(&qword_280E90540, &qword_280E90530, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EEA8);
  }

  return result;
}

unint64_t sub_21966686C()
{
  result = qword_280E8EE98;
  if (!qword_280E8EE98)
  {
    v1 = MEMORY[0x277D33F70];
    sub_2186E18F4(255, &qword_280E8EEA0, &qword_280E90098, MEMORY[0x277D33F70]);
    sub_2196666D4(&unk_280E900A8, &qword_280E90098, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EE98);
  }

  return result;
}

unint64_t sub_219666950()
{
  result = qword_27CC1D938;
  if (!qword_27CC1D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D938);
  }

  return result;
}

unint64_t sub_2196669A8()
{
  result = qword_280EB4428;
  if (!qword_280EB4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4428);
  }

  return result;
}

unint64_t sub_219666A00()
{
  result = qword_280EB4430;
  if (!qword_280EB4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB4430);
  }

  return result;
}

uint64_t sub_219666A54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D65676E61727261 && a2 == 0xEC00000073746E65 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xE900000000000073 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CFB120 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CFB140 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_219666C68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219667464(0, &qword_280E8CF58, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196673AC();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2196674C8(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_219667400(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219666F14(uint64_t a1)
{
  v2 = sub_2196673AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219666F50(uint64_t a1)
{
  v2 = sub_2196673AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219666FCC(void *a1)
{
  sub_219667464(0, &qword_280E8C640, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196673AC();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_2196674C8(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21966722C(uint64_t a1)
{
  result = sub_2196674C8(&qword_280ED3B28, type metadata accessor for FoodTodayFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219667284(uint64_t a1)
{
  v2 = sub_2196674C8(&qword_280ED3B58, type metadata accessor for FoodTodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219667300(void *a1)
{
  a1[1] = sub_2196674C8(&qword_280ED3B58, type metadata accessor for FoodTodayFeedGroup);
  a1[2] = sub_2196674C8(&qword_280ED3B30, type metadata accessor for FoodTodayFeedGroup);
  result = sub_2196674C8(&qword_280ED3B40, type metadata accessor for FoodTodayFeedGroup);
  a1[3] = result;
  return result;
}

unint64_t sub_2196673AC()
{
  result = qword_280ED3B70;
  if (!qword_280ED3B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED3B70);
  }

  return result;
}

uint64_t sub_219667400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FoodTodayFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219667464(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2196673AC();
    v7 = a3(a1, &type metadata for FoodTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2196674C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219667524()
{
  result = qword_27CC1D940;
  if (!qword_27CC1D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D940);
  }

  return result;
}

unint64_t sub_21966757C()
{
  result = qword_280ED3B60;
  if (!qword_280ED3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED3B60);
  }

  return result;
}

unint64_t sub_2196675D4()
{
  result = qword_280ED3B68;
  if (!qword_280ED3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED3B68);
  }

  return result;
}

uint64_t sub_219667628(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_219BDBD64();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2196676E8, 0, 0);
}

uint64_t sub_2196676E8()
{
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = qword_280E8D7A0;
  v5 = *MEMORY[0x277D30BC8];
  if (v4 != -1)
  {
    swift_once();
  }

  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v9 = qword_280F616D8;
  sub_219BDBD54();
  v10 = sub_219BDBD44();
  v12 = v11;
  (*(v7 + 8))(v6, v8);
  v13 = [objc_opt_self() defaultCachePolicy];
  v0[2] = v10;
  v0[3] = v12;
  v0[4] = v5;
  v0[5] = v9;
  v0[6] = v13;
  v17 = (*(v3 + 8) + **(v3 + 8));
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_2196678EC;
  v15 = v0[7];

  return v17(v15, v0 + 2, v2, v3);
}

uint64_t sub_2196678EC()
{
  v2 = *v1;
  v3 = *v1;
  v2[13] = v0;

  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219667AA4, 0, 0);
  }

  else
  {

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_219667AA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219667B1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for FoodTodayFeedGroupEmitter()
{
  result = qword_280EBE880;
  if (!qword_280EBE880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219667BC4()
{
  sub_2186E16D0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FoodTodayFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, qword_280EDA4F0);
        if (v3 <= 0x3F)
        {
          sub_2186CFDE4(319, qword_280EBE990);
          if (v4 <= 0x3F)
          {
            type metadata accessor for TagFeedCurationService();
            if (v5 <= 0x3F)
            {
              sub_2186CFDE4(319, &qword_280E92678);
              if (v6 <= 0x3F)
              {
                sub_2186CFDE4(319, &unk_280E90620);
                if (v7 <= 0x3F)
                {
                  sub_2186CFDE4(319, &qword_280EE9E00);
                  if (v8 <= 0x3F)
                  {
                    sub_2190A6940();
                    if (v9 <= 0x3F)
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
}

uint64_t sub_219667D74@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for FoodTodayFeedGroupKnobs();
  v35 = *(v2 - 8);
  v34 = *(v35 + 64);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v33 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - v5;
  v31[0] = v31 - v5;
  sub_21967AA64(0, &qword_280E92610, MEMORY[0x277D31C80]);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v11);
  v37 = v31 - v12;
  v13 = *(v9 + 16);
  v13();
  v14 = type metadata accessor for FoodTodayFeedGroupEmitter();
  sub_21967A354(v1 + v14[5], v6, type metadata accessor for FoodTodayFeedGroupKnobs);
  sub_218718690(v1 + v14[8], v40);
  v32 = *(v1 + v14[13]);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
  MEMORY[0x28223BE20](v15);
  v17 = (v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v39[3] = type metadata accessor for FoodClusteringService();
  v39[4] = &off_282A75BE8;
  v39[0] = v19;
  sub_21967A3BC();
  v31[1] = v20;
  v21 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v13)(v21, v37, v8);
  sub_218718690(v39, v38);
  v22 = v31[0];
  v23 = v33;
  sub_21967A354(v31[0], v33, type metadata accessor for FoodTodayFeedGroupKnobs);
  v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v35 + 80) + v25 + 40) & ~*(v35 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v32;
  (*(v9 + 32))(v27 + v24, v21, v8);
  sub_2186CB1F0(v38, v27 + v25);
  sub_21967A43C(v23, v27 + v26, type metadata accessor for FoodTodayFeedGroupKnobs);

  v28 = MEMORY[0x21CEB8A80](&unk_219C96E18, v27);
  sub_219679DA4(v22, type metadata accessor for FoodTodayFeedGroupKnobs);
  (*(v9 + 8))(v37, v8);
  __swift_destroy_boxed_opaque_existential_1(v39);
  result = __swift_destroy_boxed_opaque_existential_1(v40);
  v30 = v36;
  v36[3] = &type metadata for FoodTodayFeedGroupEmitter.Cursor;
  *v30 = v28;
  return result;
}

uint64_t sub_2196681B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_21966825C(a1, a2);
}

uint64_t sub_21966825C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  sub_2186E4C9C(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v3[8] = swift_task_alloc();
  sub_219BEF554();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v4 = sub_219BED8D4();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  sub_21967A288(0, &unk_280E8FE10, MEMORY[0x277D34430]);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = sub_219BF0BD4();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  sub_21967A288(0, &qword_280E90530, MEMORY[0x277D33708]);
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for FoodTodayFeedGroupConfigData();
  v3[26] = swift_task_alloc();
  sub_21967A288(0, &unk_280E900B8, MEMORY[0x277D33F68]);
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2196685C0, 0, 0);
}

uint64_t sub_2196685C0()
{
  sub_219BEF0B4();
  v1 = *(v0[2] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  v2 = [v1 foodHubTagID];
  swift_unknownObjectRelease();
  if (!v2)
  {
    v8 = MEMORY[0x277D323F8];
    v5 = 0xEC00000044496761;
    v3 = 0x54627548646F6F66;
    goto LABEL_5;
  }

  v3 = sub_219BF5414();
  v5 = v4;
  sub_219BEF0B4();
  v6 = *(v0[3] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController);

  v7 = [v6 hasMutedSubscriptionForTagID_];

  if (v7)
  {
    v8 = MEMORY[0x277D32420];
LABEL_5:
    v9 = sub_219BEEDD4();
    sub_219667B1C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v10 = v3;
    v10[1] = v5;
    (*(*(v9 - 8) + 104))(v10, *v8, v9);
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  v13 = v0[7];
  v14 = type metadata accessor for FoodTodayFeedGroupEmitter();
  v0[30] = v14;
  __swift_project_boxed_opaque_existential_1((v13 + *(v14 + 44)), *(v13 + *(v14 + 44) + 24));
  v0[31] = sub_219BF1C14();

  v15 = swift_task_alloc();
  v0[32] = v15;
  *v15 = v0;
  v15[1] = sub_21966890C;

  return MEMORY[0x2821D23D8](v0 + 4);
}

uint64_t sub_21966890C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_2196695C8;
  }

  else
  {
    v2 = sub_219668A40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219668A40()
{
  v51 = v0;
  v1 = *(v0 + 232);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 48);
  v5 = *(v0 + 32);
  *(v0 + 272) = v5;
  sub_21966BCC8(v4, v5, v1);
  sub_2186E16D0();
  *(v0 + 280) = v6;
  sub_219BEDD14();
  v7 = *(v2 + *(v3 + 24));
  *(v0 + 288) = v7;

  v8 = sub_219679DA4(v2, type metadata accessor for FoodTodayFeedGroupConfigData);
  v11 = *(v7 + 16);
  *(v0 + 296) = v11;
  if (v11)
  {
    v12 = 0;
    *(v0 + 376) = *(*(v0 + 168) + 80);
    while (1)
    {
      *(v0 + 304) = v12;
      v14 = *(v0 + 288);
      if (v12 >= *(v14 + 16))
      {
        __break(1u);
        return MEMORY[0x282192E78](v8, v9, v10);
      }

      v15 = *(v0 + 192);
      v17 = *(v0 + 160);
      v16 = *(v0 + 168);
      v19 = *(v16 + 16);
      v16 += 16;
      v18 = v19;
      v20 = v14 + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v16 + 56) * v12;
      *(v0 + 312) = v19;
      *(v0 + 320) = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v19(v15, v20, v17);
      if (!sub_219BF2014())
      {
        break;
      }

      v22 = *(v0 + 144);
      v21 = *(v0 + 152);
      v23 = *(v0 + 136);
      sub_219BEF134();
      type metadata accessor for TodayFeedServiceConfig();
      sub_219667B1C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      sub_219BEF514();

      (*(v22 + 8))(v21, v23);
      if (*(v0 + 380))
      {
        break;
      }

      if (qword_280EE5F08 != -1)
      {
        swift_once();
      }

      v24 = *(v0 + 192);
      v25 = *(v0 + 176);
      v26 = *(v0 + 160);
      v27 = sub_219BE5434();
      __swift_project_value_buffer(v27, qword_280F62520);
      v18(v25, v24, v26);
      v28 = sub_219BE5414();
      v29 = sub_219BF6214();
      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 192);
      v33 = *(v0 + 168);
      v32 = *(v0 + 176);
      v34 = *(v0 + 160);
      if (v30)
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v50 = v36;
        *v35 = 136446210;
        v49 = sub_219BF2004();
        v38 = v37;
        v39 = *(v33 + 8);
        v39(v32, v34);
        v40 = sub_2186D1058(v49, v38, &v50);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_2186C1000, v28, v29, "Food emitter skipping arrangement %{public}s because it is disabled", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x21CECF960](v36, -1, -1);
        MEMORY[0x21CECF960](v35, -1, -1);

        v8 = (v39)(v31, v34);
      }

      else
      {

        v13 = *(v33 + 8);
        v13(v32, v34);
        v8 = (v13)(v31, v34);
      }

      v12 = *(v0 + 304) + 1;
      if (v12 == *(v0 + 296))
      {
        goto LABEL_12;
      }
    }

    v48 = swift_task_alloc();
    *(v0 + 328) = v48;
    *v48 = v0;
    v48[1] = sub_219668FE4;
    v10 = *(v0 + 216);
    v9 = *(v0 + 192);
    v8 = *(v0 + 128);

    return MEMORY[0x282192E78](v8, v9, v10);
  }

  else
  {
LABEL_12:
    v42 = *(v0 + 224);
    v41 = *(v0 + 232);
    v43 = *(v0 + 216);

    v44 = sub_219BEEDD4();
    sub_219667B1C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277D323C0], v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v41, v43);

    v46 = *(v0 + 8);

    return v46();
  }
}

uint64_t sub_219668FE4()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_2196696C4;
  }

  else
  {
    v2 = sub_2196690F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2196690F8()
{
  sub_219BF4474();
  v0[43] = sub_219BF5A84();

  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_2196691B0;
  v2 = v0[16];
  v3 = v0[6];

  return sub_21966C1CC(v3, v2);
}

uint64_t sub_2196691B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = sub_219669E34;
  }

  else
  {

    *(v4 + 368) = a1;
    v5 = sub_2196692E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2196692E0()
{
  v1 = v0[28];
  v14 = v0[27];
  v15 = v0[29];
  v12 = v0[24];
  v2 = v0[21];
  v11 = v0[20];
  v3 = v0[15];
  v8 = v0[14];
  v9 = v0[16];
  v7 = v0[13];
  v4 = v0[12];
  v13 = v0[11];
  v10 = v0[5];
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for FoodTodayFeedGroupKnobs();
  sub_21967AA64(0, &qword_280E91860, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED844();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v9, v8);
  (*(v2 + 8))(v12, v11);
  (*(v1 + 8))(v15, v14);
  (*(v4 + 32))(v10, v7, v13);
  type metadata accessor for TodayFeedGroup();
  swift_storeEnumTagMultiPayload();
  sub_218B8B124(0);
  swift_storeEnumTagMultiPayload();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2196695C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2196696C4()
{
  v68 = v0;
  v1 = *(v0 + 336);
  if (qword_280EE5F08 != -1)
  {
LABEL_23:
    swift_once();
  }

  v2 = *(v0 + 312);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 160);
  v66 = sub_219BE5434();
  __swift_project_value_buffer(v66, qword_280F62520);
  v2(v4, v3, v5);
  v6 = v1;
  v7 = sub_219BE5414();
  v8 = sub_219BF61F4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 184);
  v11 = *(v0 + 192);
  v13 = *(v0 + 160);
  v12 = *(v0 + 168);
  if (v9)
  {
    v64 = *(v0 + 192);
    v14 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v67[0] = v62;
    *v14 = 136446466;
    v60 = v8;
    v15 = sub_219BF2004();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v13);
    v19 = sub_2186D1058(v15, v17, v67);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2114;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v61 = v21;
    _os_log_impl(&dword_2186C1000, v7, v60, "Food emitter failed to resolve arrangement %{public}s, error=%{public}@", v14, 0x16u);
    sub_219679DA4(v61, sub_2189B3F3C);
    MEMORY[0x21CECF960](v61, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v62);
    MEMORY[0x21CECF960](v62, -1, -1);
    MEMORY[0x21CECF960](v14, -1, -1);

    v18(v64, v13);
  }

  else
  {

    v22 = *(v12 + 8);
    v22(v10, v13);
    v22(v11, v13);
  }

  v23 = *(v0 + 304) + 1;
  if (v23 == *(v0 + 296))
  {
LABEL_6:
    v25 = *(v0 + 224);
    v24 = *(v0 + 232);
    v26 = *(v0 + 216);

    v27 = sub_219BEEDD4();
    sub_219667B1C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D323C0], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v25 + 8))(v24, v26);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    while (1)
    {
      *(v0 + 304) = v23;
      v36 = *(v0 + 288);
      if (v23 >= *(v36 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v37 = *(v0 + 192);
      v39 = *(v0 + 160);
      v38 = *(v0 + 168);
      v41 = *(v38 + 16);
      v38 += 16;
      v40 = v41;
      v42 = v36 + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v38 + 56) * v23;
      *(v0 + 312) = v41;
      *(v0 + 320) = v38 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v41(v37, v42, v39);
      if (!sub_219BF2014())
      {
        break;
      }

      v44 = *(v0 + 144);
      v43 = *(v0 + 152);
      v45 = *(v0 + 136);
      sub_219BEF134();
      type metadata accessor for TodayFeedServiceConfig();
      sub_219667B1C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      sub_219BEF514();

      (*(v44 + 8))(v43, v45);
      if (*(v0 + 380))
      {
        break;
      }

      if (qword_280EE5F08 != -1)
      {
        swift_once();
      }

      v46 = *(v0 + 192);
      v47 = *(v0 + 176);
      v48 = *(v0 + 160);
      __swift_project_value_buffer(v66, qword_280F62520);
      v40(v47, v46, v48);
      v49 = sub_219BE5414();
      v50 = sub_219BF6214();
      v51 = os_log_type_enabled(v49, v50);
      v1 = *(v0 + 192);
      v53 = *(v0 + 168);
      v52 = *(v0 + 176);
      v54 = *(v0 + 160);
      if (v51)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v67[0] = v32;
        *v31 = 136446210;
        v63 = sub_219BF2004();
        v65 = v1;
        v1 = v33;
        v34 = *(v53 + 8);
        v34(v52, v54);
        v35 = sub_2186D1058(v63, v1, v67);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_2186C1000, v49, v50, "Food emitter skipping arrangement %{public}s because it is disabled", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v32);
        MEMORY[0x21CECF960](v32, -1, -1);
        MEMORY[0x21CECF960](v31, -1, -1);

        v34(v65, v54);
      }

      else
      {

        v55 = *(v53 + 8);
        v55(v52, v54);
        v55(v1, v54);
      }

      v23 = *(v0 + 304) + 1;
      if (v23 == *(v0 + 296))
      {
        goto LABEL_6;
      }
    }

    v56 = swift_task_alloc();
    *(v0 + 328) = v56;
    *v56 = v0;
    v56[1] = sub_219668FE4;
    v57 = *(v0 + 216);
    v58 = *(v0 + 192);
    v59 = *(v0 + 128);

    return MEMORY[0x282192E78](v59, v58, v57);
  }
}

uint64_t sub_219669E34()
{
  v71 = v0;
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 360);
  if (qword_280EE5F08 != -1)
  {
LABEL_23:
    swift_once();
  }

  v5 = *(v0 + 312);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 160);
  v69 = sub_219BE5434();
  __swift_project_value_buffer(v69, qword_280F62520);
  v5(v7, v6, v8);
  v9 = v4;
  v10 = sub_219BE5414();
  v11 = sub_219BF61F4();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 184);
  v14 = *(v0 + 192);
  v16 = *(v0 + 160);
  v15 = *(v0 + 168);
  if (v12)
  {
    v67 = *(v0 + 192);
    v17 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v70[0] = v65;
    *v17 = 136446466;
    v63 = v11;
    v18 = sub_219BF2004();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v13, v16);
    v22 = sub_2186D1058(v18, v20, v70);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2114;
    v23 = v4;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v64 = v24;
    _os_log_impl(&dword_2186C1000, v10, v63, "Food emitter failed to resolve arrangement %{public}s, error=%{public}@", v17, 0x16u);
    sub_219679DA4(v64, sub_2189B3F3C);
    MEMORY[0x21CECF960](v64, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x21CECF960](v65, -1, -1);
    MEMORY[0x21CECF960](v17, -1, -1);

    v21(v67, v16);
  }

  else
  {

    v25 = *(v15 + 8);
    v25(v13, v16);
    v25(v14, v16);
  }

  v26 = *(v0 + 304) + 1;
  if (v26 == *(v0 + 296))
  {
LABEL_6:
    v28 = *(v0 + 224);
    v27 = *(v0 + 232);
    v29 = *(v0 + 216);

    v30 = sub_219BEEDD4();
    sub_219667B1C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D323C0], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v28 + 8))(v27, v29);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    while (1)
    {
      *(v0 + 304) = v26;
      v39 = *(v0 + 288);
      if (v26 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      v40 = *(v0 + 192);
      v42 = *(v0 + 160);
      v41 = *(v0 + 168);
      v44 = *(v41 + 16);
      v41 += 16;
      v43 = v44;
      v45 = v39 + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v41 + 56) * v26;
      *(v0 + 312) = v44;
      *(v0 + 320) = v41 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v44(v40, v45, v42);
      if (!sub_219BF2014())
      {
        break;
      }

      v47 = *(v0 + 144);
      v46 = *(v0 + 152);
      v48 = *(v0 + 136);
      sub_219BEF134();
      type metadata accessor for TodayFeedServiceConfig();
      sub_219667B1C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
      sub_219BEF514();

      (*(v47 + 8))(v46, v48);
      if (*(v0 + 380))
      {
        break;
      }

      if (qword_280EE5F08 != -1)
      {
        swift_once();
      }

      v49 = *(v0 + 192);
      v50 = *(v0 + 176);
      v51 = *(v0 + 160);
      __swift_project_value_buffer(v69, qword_280F62520);
      v43(v50, v49, v51);
      v52 = sub_219BE5414();
      v53 = sub_219BF6214();
      v54 = os_log_type_enabled(v52, v53);
      v4 = *(v0 + 192);
      v56 = *(v0 + 168);
      v55 = *(v0 + 176);
      v57 = *(v0 + 160);
      if (v54)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v70[0] = v35;
        *v34 = 136446210;
        v66 = sub_219BF2004();
        v68 = v4;
        v4 = v36;
        v37 = *(v56 + 8);
        v37(v55, v57);
        v38 = sub_2186D1058(v66, v4, v70);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_2186C1000, v52, v53, "Food emitter skipping arrangement %{public}s because it is disabled", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x21CECF960](v35, -1, -1);
        MEMORY[0x21CECF960](v34, -1, -1);

        v37(v68, v57);
      }

      else
      {

        v58 = *(v56 + 8);
        v58(v55, v57);
        v58(v4, v57);
      }

      v26 = *(v0 + 304) + 1;
      if (v26 == *(v0 + 296))
      {
        goto LABEL_6;
      }
    }

    v59 = swift_task_alloc();
    *(v0 + 328) = v59;
    *v59 = v0;
    v59[1] = sub_219668FE4;
    v60 = *(v0 + 216);
    v61 = *(v0 + 192);
    v62 = *(v0 + 128);

    return MEMORY[0x282192E78](v62, v61, v60);
  }
}

uint64_t sub_21966A5CC@<X0>(uint64_t a1@<X8>)
{
  sub_2186E16D0();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for TodayFeedGroupConfig();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21966A64C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for FoodTodayFeedGroupKnobs();
  a2[4] = sub_219667B1C(&qword_280EC4EA0, type metadata accessor for FoodTodayFeedGroupKnobs);
  a2[5] = sub_219667B1C(&qword_280EC4EA8, type metadata accessor for FoodTodayFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21967A354(v2 + v4, boxed_opaque_existential_1, type metadata accessor for FoodTodayFeedGroupKnobs);
}

uint64_t sub_21966A714()
{
  v0 = sub_219BF1934();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x28223BE20](v0);
  v30 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for FoodTodayFeedGroupConfigData();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FoodTodayFeedGroupEmitter();
  v35 = 24;
  sub_2189AE994(0);
  v33 = sub_219BEE964();
  sub_2186E4C9C(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v28 = 2 * v9;
  v11 = swift_allocObject();
  v29 = v11;
  *(v11 + 16) = xmmword_219C0B8C0;
  v12 = (v11 + v10);
  sub_21967AA64(0, &qword_280E91230, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v12 = sub_219BEFB94();
  v13 = *MEMORY[0x277D32308];
  v14 = *(v8 + 104);
  v27 = v7;
  v14(v12, v13, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  swift_allocObject();
  *(v12 + v9) = sub_219BEFB94();
  v14((v12 + v9), v13, v7);
  sub_2186E16D0();
  sub_219BEDD14();
  v16 = *(v3 + 28);
  v17 = v30;
  v18 = v31;
  v19 = v32;
  (*(v31 + 16))(v30, &v5[v16], v32);
  sub_219679DA4(v5, type metadata accessor for FoodTodayFeedGroupConfigData);
  v20 = sub_219BF1784();
  v22 = v21;
  (*(v18 + 8))(v17, v19);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  swift_allocObject();
  v24 = sub_219BEFB94();
  v25 = v28;
  *(v12 + v28) = v24;
  v14((v12 + v25), v13, v27);
  v34 = v33;
  sub_2191EE478(v29);
  return v34;
}

uint64_t sub_21966AB70()
{
  sub_2186E16D0();

  return sub_219BEDCA4();
}

uint64_t sub_21966AB9C@<X0>(uint64_t *a1@<X8>)
{
  sub_2186E4C9C(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E16D0();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219679DA4(inited + 32, sub_2188317B0);
  sub_21967AB00(0);
  a1[3] = v5;
  a1[4] = sub_219667B1C(&qword_280EE7A08, sub_21967AB00);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_21966AD20()
{
  sub_219667B1C(&qword_280EBE8A0, type metadata accessor for FoodTodayFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_21966AEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a1;
  v5[10] = a3;
  sub_2186E4C9C(0, &qword_280E912E0, MEMORY[0x277D32720], MEMORY[0x277D83D88]);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for FoodTagRecipesClusteringRequest();
  v5[15] = swift_task_alloc();
  v6 = sub_219BF0BD4();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[20] = v7;
  *v7 = v5;
  v7[1] = sub_21966B08C;

  return MEMORY[0x2821D18D0](v5 + 2);
}

uint64_t sub_21966B08C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_21966BA60;
  }

  else
  {
    v2 = sub_21966B1A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21966B1A0()
{
  v51 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 176) = v2;
  *(v0 + 184) = v1;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 192) = v3;
  *(v0 + 200) = v4;
  if (v4 < 0)
  {
    swift_willThrow();
    v26 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    sub_218C6F990(v2, v1, v3, v4);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v5 = *(v0 + 88);
    sub_2189B6874();
    sub_21967AA64(0, &qword_280E92610, MEMORY[0x277D31C80]);
    sub_219BED944();
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    if (qword_280EE5F50 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 168);
    v7 = *(v0 + 152);
    v8 = *(v0 + 120);
    v9 = *(v0 + 96);
    v10 = sub_219BE5434();
    v11 = __swift_project_value_buffer(v10, qword_280F62598);
    (*(*(v10 - 8) + 16))(v8, v11, v10);

    sub_219BED954();
    v49 = *(*(v0 + 48) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
    swift_unknownObjectRetain();

    v12 = type metadata accessor for FoodTodayFeedGroupKnobs();
    v13 = v9 + *(v12 + 40);
    v14 = type metadata accessor for FoodTodayFeedGroupChannelRecipeKnobs();
    v15 = sub_219BEEDF4();
    v16 = v9 + *(v12 + 44);
    v47 = type metadata accessor for FoodTodayFeedGroupTopicRecipeKnobs();
    v48 = v16;
    v17 = sub_219BEEDF4();
    v18 = sub_2194796A0(v17, v15);
    v19 = *(v13 + *(v14 + 40));
    v20 = swift_task_alloc();
    *(v20 + 16) = v7;
    v21 = sub_2189B68B8(sub_21967AB54, v20, v19);

    v22 = swift_task_alloc();
    *(v22 + 16) = v7;
    v23 = sub_2189B68B8(sub_21967A61C, v22, v19);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v21;
    sub_21967A638(v23, sub_2189B713C, 0, isUniquelyReferenced_nonNull_native, &v50);

    if (v6)
    {
    }

    else
    {
      v28 = *(v0 + 144);
      v29 = *(v0 + 152);
      v43 = v2;
      v44 = v50;
      v30 = *(v0 + 128);
      v31 = *(v0 + 136);
      v45 = v18;
      v32 = *(v0 + 112);
      v33 = *(v0 + 120);
      v34 = *(v0 + 104);
      sub_2189B7614(v13, v34);
      v46 = *(v31 + 16);
      v46(v28, v29, v30);
      sub_219BEED74();
      sub_219BEF524();
      v35 = *(v0 + 56);
      sub_219BEF524();
      v42 = *(v0 + 224);
      sub_219BEF524();
      v41 = *(v0 + 225);
      sub_2189B7614(v48, v34);
      v46(v28, v29, v30);
      sub_219BEED74();
      sub_2189B7614(v48 + *(v47 + 20), v34);
      v46(v28, v29, v30);
      sub_219BEED74();
      sub_219BEF524();
      sub_219BEF524();
      v36 = *(v0 + 64);
      sub_219BEF524();

      v37 = *(v0 + 226);
      *(v33 + v32[5]) = v43;
      *(v33 + v32[6]) = v49;
      *(v33 + v32[7]) = v45;
      *(v33 + v32[8]) = v44;
      *(v33 + v32[10]) = v35;
      *(v33 + v32[11]) = v42;
      *(v33 + v32[12]) = v41;
      *(v33 + v32[16]) = v36;
      *(v33 + v32[17]) = v37;
      v38 = swift_task_alloc();
      *(v0 + 208) = v38;
      *v38 = v0;
      v38[1] = sub_21966B7A0;
      v39 = *(v0 + 120);
      v40 = *(v0 + 72);

      return sub_219500BB4(v40, v39);
    }
  }
}

uint64_t sub_21966B7A0()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  sub_219679DA4(*(v2 + 120), type metadata accessor for FoodTagRecipesClusteringRequest);
  if (v0)
  {
    v3 = sub_21966B9A8;
  }

  else
  {
    v3 = sub_21966B8E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21966B8E8()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  sub_218C6F990(v0[22], v0[23], v0[24], v0[25]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21966B9A8()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  sub_218C6F990(v0[22], v0[23], v0[24], v0[25]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21966BA60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21966BAEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF0BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4C9C(0, &qword_280E912E0, MEMORY[0x277D32720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_219BEF814();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  return sub_219BEED74();
}

uint64_t sub_21966BCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v42 = a2;
  v43 = a3;
  v4 = type metadata accessor for FoodTodayFeedGroupEmitter();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = v5;
  v39 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BF1934();
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v34 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FoodTodayFeedGroupConfigData();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - v12;
  v14 = sub_219BE5434();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21967A288(0, &qword_280E8FDD8, MEMORY[0x277D344F0]);
  v35 = *(v18 - 8);
  v36 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = v31 - v19;
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v14, qword_280F62520);
  (*(v15 + 16))(v17, v21, v14);
  v33 = sub_2186E19D0();
  sub_219BF47C4();
  v22 = (v3 + *(v4 + 24));
  v23 = v22[4];
  v32 = v22[3];
  v31[0] = v23;
  v31[1] = __swift_project_boxed_opaque_existential_1(v22, v32);
  sub_2186E16D0();
  sub_219BEDD14();
  v24 = v34;
  v25 = v40;
  (*(v6 + 16))(v34, &v13[*(v8 + 20)], v40);
  sub_219679DA4(v13, type metadata accessor for FoodTodayFeedGroupConfigData);
  sub_219BEDD14();

  sub_219679DA4(v11, type metadata accessor for FoodTodayFeedGroupConfigData);
  v26 = v39;
  sub_21967A354(v3, v39, type metadata accessor for FoodTodayFeedGroupEmitter);
  v27 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v28 = (v37 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  sub_21967A43C(v26, v29 + v27, type metadata accessor for FoodTodayFeedGroupEmitter);
  *(v29 + v28) = v41;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;

  swift_unknownObjectRetain();
  sub_219BF4C74();

  (*(v6 + 8))(v24, v25);
  return (*(v35 + 8))(v20, v36);
}

uint64_t sub_21966C1CC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186E4C9C(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[6] = swift_task_alloc();
  sub_2186E4C9C(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[7] = swift_task_alloc();
  sub_2186E4C9C(0, &unk_280E91A10, sub_2189AE994, v4);
  v3[8] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_219BF2034();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  sub_218A89A94(0);
  v3[15] = swift_task_alloc();
  sub_2186FE720();
  v3[16] = swift_task_alloc();
  v7 = sub_219BF1934();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21966C4A4, 0, 0);
}

uint64_t sub_21966C4A4()
{
  sub_21967A288(0, &unk_280E8FE10, MEMORY[0x277D34430]);
  sub_219BF4494();
  sub_219BEF0B4();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  v2 = [v1 foodHubTagID];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_219BF5414();
  }

  v3 = *(v0 + 152);
  v4 = *(v0 + 144);
  v28 = *(v0 + 136);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 64);
  v29 = *(v0 + 56);
  v8 = *(v0 + 40);
  v30 = *(v0 + 48);
  v9 = sub_219BEC004();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_218A42400(0);
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_219BF1764();

  sub_219679DA4(v6, sub_218A89A94);
  sub_219679DA4(v5, sub_2186FE720);
  v11 = *(v4 + 8);
  *(v0 + 168) = v11;
  *(v0 + 176) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v28);
  v12 = type metadata accessor for FoodTodayFeedGroupEmitter();
  v13 = (v8 + *(v12 + 24));
  v14 = v13[3];
  v15 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_219BF4484();
  v16 = *(v12 + 20);
  sub_2189AE994(0);
  v18 = v17;
  v19 = *(v17 - 8);
  (*(v19 + 16))(v7, v8 + v16, v17);
  (*(v19 + 56))(v7, 0, 1, v18);
  v20 = sub_219BF35D4();
  (*(*(v20 - 8) + 56))(v29, 1, 1, v20);
  *(v0 + 208) = 24;
  sub_21967AA64(0, &qword_280E90070, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v21 = sub_219BF2774();
  (*(*(v21 - 8) + 56))(v30, 1, 1, v21);
  v22 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v22 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  sub_219BF2A84();
  v23 = swift_task_alloc();
  *(v0 + 184) = v23;
  *v23 = v0;
  v23[1] = sub_21966C994;
  v24 = *(v0 + 160);
  v25 = *(v0 + 112);
  v26 = *(v0 + 88);

  return MEMORY[0x2821921B8](v24, v25, v26, v14, v15);
}

uint64_t sub_21966C994(uint64_t a1)
{
  v4 = *v2;
  v4[24] = v1;

  v5 = v4[14];
  v6 = v4[13];
  v7 = v4[12];
  v8 = v4[11];
  v9 = v4[10];
  v10 = v4[9];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    v11 = sub_21966CC7C;
  }

  else
  {
    v4[25] = a1;
    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v5, v7);
    v11 = sub_21966CB90;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_21966CB90()
{
  (*(v0 + 168))(*(v0 + 160), *(v0 + 136));

  v1 = *(v0 + 8);
  v2 = *(v0 + 200);

  return v1(v2);
}

uint64_t sub_21966CC7C()
{
  (*(v0 + 168))(*(v0 + 160), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21966CD64(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  v8 = sub_219BF0BD4();
  *(v6 + 56) = v8;
  *(v6 + 64) = *(v8 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 136) = *a2;

  return MEMORY[0x2822009F8](sub_21966CE38, 0, 0);
}

uint64_t sub_21966CE38()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 136);
  type metadata accessor for FoodTodayFeedGroupEmitter();
  type metadata accessor for FoodTodayFeedGroupKnobs();
  sub_219BEF134();
  v5 = sub_219BEEDF4();
  (*(v2 + 8))(v1, v3);
  LOBYTE(v1) = sub_218C324AC(v4, v5);

  v6 = *(v0 + 136);
  if (v1)
  {
    sub_219679F40();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  else if (*(v0 + 136) <= 2u)
  {
    if (*(v0 + 136))
    {
      if (v6 == 1)
      {
        v15 = swift_task_alloc();
        *(v0 + 88) = v15;
        *v15 = v0;
        v15[1] = sub_21966D40C;
        v16 = *(v0 + 40);
        v17 = *(v0 + 16);
        v18 = *(v0 + 24);

        return sub_21966FDC4(v17, v16, v18);
      }

      else
      {
        v27 = swift_task_alloc();
        *(v0 + 96) = v27;
        *v27 = v0;
        v27[1] = sub_21966D524;
        v28 = *(v0 + 40);
        v29 = *(v0 + 16);

        return sub_219671528(v29, v28);
      }
    }

    else
    {
      v22 = swift_task_alloc();
      *(v0 + 80) = v22;
      *v22 = v0;
      v22[1] = sub_21966D2F4;
      v23 = *(v0 + 40);
      v24 = *(v0 + 48);
      v25 = *(v0 + 24);
      v26 = *(v0 + 16);

      return sub_21966DA9C(v26, v23, v25, v24);
    }
  }

  else if (*(v0 + 136) > 4u)
  {
    if (v6 == 5)
    {
      v19 = swift_task_alloc();
      *(v0 + 120) = v19;
      *v19 = v0;
      v19[1] = sub_21966D86C;
      v20 = *(v0 + 40);
      v21 = *(v0 + 16);

      return sub_219675198(v21, v20);
    }

    else
    {
      v34 = swift_task_alloc();
      *(v0 + 128) = v34;
      *v34 = v0;
      v34[1] = sub_21966D984;
      v35 = *(v0 + 40);
      v36 = *(v0 + 16);

      return sub_2196763EC(v36, v35);
    }
  }

  else if (v6 == 3)
  {
    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v10[1] = sub_21966D63C;
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    v13 = *(v0 + 24);
    v14 = *(v0 + 16);

    return sub_2196727D8(v14, v11, v13, v12);
  }

  else
  {
    v30 = swift_task_alloc();
    *(v0 + 112) = v30;
    *v30 = v0;
    v30[1] = sub_21966D754;
    v31 = *(v0 + 40);
    v32 = *(v0 + 16);
    v33 = *(v0 + 24);

    return sub_219673A98(v32, v31, v33);
  }
}

uint64_t sub_21966D2F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21966D40C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21966D524()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21966D63C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21966D754()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21966D86C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21966D984()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21966DA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[243] = v4;
  v5[242] = a4;
  v5[241] = a3;
  v5[240] = a2;
  v5[239] = a1;
  v6 = sub_219BF3C84();
  v5[244] = v6;
  v5[245] = *(v6 - 8);
  v5[246] = swift_task_alloc();
  v7 = sub_219BEE6F4();
  v5[247] = v7;
  v5[248] = *(v7 - 8);
  v5[249] = swift_task_alloc();
  v5[250] = type metadata accessor for FoodForYouHeadlinesClusteringRequest();
  v5[251] = swift_task_alloc();
  v8 = type metadata accessor for FoodTodayFeedGroupEmitter();
  v5[252] = v8;
  v9 = *(v8 - 8);
  v5[253] = v9;
  v5[254] = *(v9 + 64);
  v5[255] = swift_task_alloc();
  v5[256] = swift_task_alloc();
  v10 = sub_219BED684();
  v5[257] = v10;
  v5[258] = *(v10 - 8);
  v5[259] = swift_task_alloc();
  v5[260] = swift_task_alloc();
  v5[261] = swift_task_alloc();
  v5[262] = swift_task_alloc();
  v11 = sub_219BEEA84();
  v5[263] = v11;
  v5[264] = *(v11 - 8);
  v5[265] = swift_task_alloc();
  v12 = sub_219BED624();
  v5[266] = v12;
  v5[267] = *(v12 - 8);
  v5[268] = swift_task_alloc();
  v13 = sub_219BED6B4();
  v5[269] = v13;
  v14 = *(v13 - 8);
  v5[270] = v14;
  v5[271] = *(v14 + 64);
  v5[272] = swift_task_alloc();
  v5[273] = swift_task_alloc();
  type metadata accessor for TodayFeedServiceContext();
  v5[274] = swift_task_alloc();
  v15 = sub_219BF0BD4();
  v5[275] = v15;
  v5[276] = *(v15 - 8);
  v5[277] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21966DE98, 0, 0);
}

uint64_t sub_21966DE98()
{
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  *(v0 + 2224) = __swift_project_value_buffer(v1, qword_280F62520);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "Food emitter fetching for you headlines..", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  sub_219BEF164();
  v5 = *(v0 + 2216);
  v6 = *(v0 + 2208);
  v56 = *(v0 + 2200);
  v7 = *(v0 + 2192);
  v49 = *(v0 + 2144);
  v51 = *(v0 + 2136);
  v8 = *(v0 + 2016);
  v47 = *(v0 + 1936);
  *(v0 + 2232) = *(v0 + 1816);
  *(v0 + 2408) = *(v8 + 20);
  *(v0 + 2412) = *(type metadata accessor for FoodTodayFeedGroupKnobs() + 32);
  sub_219BEF134();
  sub_219BEF524();
  v9 = *(v6 + 8);
  *(v0 + 2240) = v9;
  *(v0 + 2248) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v56);
  v53 = *(v0 + 1768);
  sub_219BEF134();
  sub_219BEF0B4();
  sub_21967A354(*(v0 + 1720) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v7, type metadata accessor for TodayFeedServiceContext);

  sub_219387DE4(v5, v7);
  v11 = v10;
  *(v0 + 2256) = v10;
  sub_219679DA4(v7, type metadata accessor for TodayFeedServiceContext);
  v9(v5, v56);
  sub_219BEF0B4();

  v12 = NewsCoreUserDefaults();
  LODWORD(v7) = [v12 BOOLForKey_];

  v13 = 135486;
  if (v7)
  {
    v13 = 151870;
  }

  v57 = v13;
  v14 = [objc_opt_self() feedRangeFromDateRange_];
  *(v0 + 2264) = v14;
  *v49 = v47;
  v49[1] = 0;
  (*(v51 + 104))();
  swift_unknownObjectRetain();
  sub_219BEF0B4();
  swift_unknownObjectRetain();

  v15 = *MEMORY[0x277D30BC8];
  *(v0 + 2272) = *MEMORY[0x277D30BC8];
  v16 = qword_280E8D7A0;
  v17 = v14;
  v55 = v11;
  v18 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v52 = (v0 + 1336);
  v19 = *(v0 + 2120);
  v20 = *(v0 + 2112);
  v21 = *(v0 + 2104);
  v22 = qword_280F616D8;
  *(v0 + 2280) = qword_280F616D8;
  v23 = v22;
  v24 = v18;
  v48 = v23;
  v50 = v24;
  v45 = v24;
  sub_219BED6A4();
  sub_219BEF0B4();
  (*(v20 + 16))(v19, *(v0 + 1576) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cachePolicy, v21);

  v25 = sub_219BEEA74();
  (*(v20 + 8))(v19, v21);
  v26 = v53;
  if (!v25)
  {
    v25 = [objc_opt_self() defaultCachePolicy];
  }

  v27 = *(v0 + 2184);
  v28 = *(v0 + 2176);
  v29 = *(v0 + 2160);
  v30 = *(v0 + 2152);
  v31 = *(v0 + 2048);
  v54 = *(v0 + 2040);
  v32 = *(v0 + 2032);
  v33 = *(v0 + 2024);
  v34 = *(v0 + 1944);
  v46 = v34;
  *(v0 + 1336) = v26;
  *(v0 + 1344) = v55;
  *(v0 + 1352) = 1;
  *(v0 + 1360) = v25;
  *(v0 + 1368) = v57;
  *(v0 + 1376) = v50;
  *(v0 + 1384) = v48;
  sub_21967A354(v34, v31, type metadata accessor for FoodTodayFeedGroupEmitter);
  (*(v29 + 16))(v28, v27, v30);
  v35 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v36 = v35 + v32;
  v37 = (v35 + v32 + *(v29 + 80)) & ~*(v29 + 80);
  v38 = swift_allocObject();
  *(v0 + 2288) = v38;
  sub_21967A43C(v31, v38 + v35, type metadata accessor for FoodTodayFeedGroupEmitter);
  (*(v29 + 32))(v38 + v37, v28, v30);
  v39 = v55;
  swift_asyncLet_begin();
  sub_21967A354(v46, v54, type metadata accessor for FoodTodayFeedGroupEmitter);
  v40 = swift_allocObject();
  *(v0 + 2296) = v40;
  sub_21967A43C(v54, v40 + v35, type metadata accessor for FoodTodayFeedGroupEmitter);
  v41 = v40 + ((v36 + 7) & 0xFFFFFFFFFFFFFFF8);
  v42 = *(v0 + 1352);
  *v41 = *v52;
  *(v41 + 16) = v42;
  *(v41 + 32) = *(v0 + 1368);
  *(v41 + 48) = *(v0 + 1384);
  sub_21967A1D8(v52, v0 + 1432);
  sub_218824C10(0, &qword_280E8F2C8, &type metadata for FeedLocalHeadline, MEMORY[0x277D83940]);
  swift_asyncLet_begin();
  v43 = *(v0 + 2096);

  return MEMORY[0x282200930](v0 + 16, v43, sub_21966E6A0, v0 + 1392);
}

uint64_t sub_21966E6A0()
{
  v1[288] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21966F944, 0, 0);
  }

  else
  {
    v2 = v1[262];
    v3 = v1[261];
    v4 = v1[258];
    v5 = v1[257];
    v6 = *(v4 + 16);
    v1[289] = v6;
    v1[290] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v3, v2, v5);

    return MEMORY[0x282200930](v1 + 82, v1 + 209, sub_21966E774, v1 + 162);
  }
}

uint64_t sub_21966E774()
{
  *(v1 + 2328) = v0;
  if (v0)
  {
    v2 = sub_21966FB54;
  }

  else
  {
    v2 = sub_21966E7A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21966E7A8()
{
  v1 = *(v0 + 2312);
  v2 = *(v0 + 2088);
  v3 = *(v0 + 2072);
  v4 = *(v0 + 2056);
  v5 = *(v0 + 1672);
  v1(*(v0 + 2080), v2, v4);
  v1(v3, v2, v4);
  swift_bridgeObjectRetain_n();
  v6 = sub_219BE5414();
  v7 = sub_219BF6214();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 2080);
  v54 = v5;
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134218496;
    v11 = sub_219BED674();
    v59 = v7;
    v12 = v5;
    if (v11 >> 62)
    {
      v13 = sub_219BF7214();
    }

    else
    {
      v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = *(v0 + 2080);
    v15 = *(v0 + 2064);
    v16 = *(v0 + 2056);

    v17 = *(v15 + 8);
    v17(v14, v16);
    *(v10 + 4) = v13;
    *(v10 + 12) = 2048;
    v18 = *(v12 + 16);

    *(v10 + 14) = v18;

    *(v10 + 22) = 2048;
    v19 = sub_219BED634();
    if (v19 >> 62)
    {
      v20 = sub_219BF7214();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v21 = *(v0 + 2072);
    v22 = *(v0 + 2056);

    v17(v21, v22);
    *(v10 + 24) = v20;
    _os_log_impl(&dword_2186C1000, v6, v59, "Food emitter will attempt to cluster for you headlines, headlines=%ld, localHeadlines=%ld, evergreenFeedItems=%ld", v10, 0x20u);
    MEMORY[0x21CECF960](v10, -1, -1);
  }

  else
  {
    v23 = *(v0 + 2056);
    v24 = *(*(v0 + 2064) + 8);
    v24(*(v0 + 2072), v23);

    v24(v9, v23);
  }

  v56 = *(v0 + 2272);
  v57 = *(v0 + 2280);
  v45 = *(v0 + 2240);
  v52 = *(v0 + 2232);
  v25 = *(v0 + 2216);
  v26 = *(v0 + 2200);
  v55 = *(v0 + 2016);
  v27 = *(v0 + 2000);
  v58 = v27;
  v28 = *(v0 + 1984);
  v53 = *(v0 + 1944);
  v29 = *(v0 + 2008);
  (*(v0 + 2312))();
  v30 = v27[6];
  v31 = *MEMORY[0x277D32938];
  v32 = sub_219BEFBD4();
  *(v0 + 2336) = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 104);
  *(v0 + 2344) = v34;
  *(v0 + 2352) = (v33 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v34(v29 + v30, v31, v32);
  *(v0 + 2416) = *MEMORY[0x277D320E8];
  v35 = *(v28 + 104);
  *(v0 + 2360) = v35;
  *(v0 + 2368) = (v28 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v35(v29 + v30);
  sub_219BEF134();
  sub_219BEF524();
  v45(v25, v26);
  v51 = *(v0 + 1864);
  sub_219BEF134();
  sub_219BEF524();
  v45(v25, v26);
  v50 = *(v0 + 1872);
  type metadata accessor for FoodTodayFeedGroupHeadlineKnobs();
  sub_219BEF204();
  sub_219BEF134();
  sub_219BEF524();

  v45(v25, v26);
  v49 = *(v0 + 1880);
  sub_219BEF1E4();
  sub_219BEF134();
  sub_219BEF524();

  v45(v25, v26);
  v48 = *(v0 + 1888);
  sub_219BEF1F4();
  sub_219BEF134();
  sub_219BEF524();

  v45(v25, v26);
  v47 = *(v0 + 1896);
  sub_219BEF1B4();
  sub_219BEF134();
  sub_219BEF524();

  v45(v25, v26);
  v46 = *(v0 + 1904);
  sub_219BEF1D4();
  sub_219BEF134();
  sub_219BEF524();

  v45(v25, v26);
  sub_219BEF134();
  sub_219BEF524();
  v45(v25, v26);
  v36 = *(v0 + 2420);
  v37 = *(v52 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
  sub_21967A288(0, &unk_280E8FDE0, MEMORY[0x277D344E8]);

  v38 = sub_219BF47B4();
  v39 = sub_2194796A0(v38, v37);
  *(v29 + v58[5]) = v54;
  *(v29 + v58[7]) = v51;
  *(v29 + v58[8]) = v50;
  *(v29 + v58[9]) = v49;
  *(v29 + v58[10]) = v48;
  *(v29 + v58[11]) = v47;
  *(v29 + v58[12]) = v46;
  *(v29 + v58[14]) = v36;
  *(v29 + v58[15]) = v39;
  *(v29 + v58[16]) = v56;
  *(v29 + v58[17]) = v57;
  __swift_project_boxed_opaque_existential_1((v53 + *(v55 + 32)), *(v53 + *(v55 + 32) + 24));
  v40 = v56;
  v41 = v57;
  v42 = swift_task_alloc();
  *(v0 + 2376) = v42;
  *v42 = v0;
  v42[1] = sub_21966EED8;
  v43 = *(v0 + 2008);

  return sub_2194FD604(v43);
}

uint64_t sub_21966EED8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[298] = a1;
  v4[299] = a2;
  v4[300] = v2;

  if (v2)
  {
    v5 = sub_21966F4AC;
  }

  else
  {
    v5 = sub_21966EFF4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21966EFF4()
{
  v33 = v0;

  v1 = sub_219BE5414();
  LOBYTE(v2) = sub_219BF6214();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 2384);
  if (!v3)
  {

    goto LABEL_6;
  }

  v5 = swift_slowAlloc();
  *v5 = 134217984;
  if (v4 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    *(v5 + 4) = i;

    _os_log_impl(&dword_2186C1000, v1, v2, "Food emitter fetched %ld latest recipes", v5, 0xCu);
    MEMORY[0x21CECF960](v5, -1, -1);
LABEL_6:

    v7 = *(v0 + 2384);
    v8 = *(v0 + 2360);
    v9 = *(v0 + 2416);
    v10 = *(v0 + 1992);
    v11 = *(v0 + 1976);
    (*(v0 + 2344))(v10, *MEMORY[0x277D32968], *(v0 + 2336));
    v8(v10, v9, v11);
    sub_2186E4C9C(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v12 = *(sub_219BF3E84() - 8);
    v5 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_219C09BA0;
    v13 = v7 >> 62 ? sub_219BF7214() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      break;
    }

    v32 = MEMORY[0x277D84F90];
    v1 = &v32;
    sub_218C34A88(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v14 = 0;
      v15 = *(v0 + 1960);
      v16 = v32;
      v30 = v4 & 0xC000000000000001;
      v17 = *MEMORY[0x277D34128];
      do
      {
        if (v30)
        {
          v18 = MEMORY[0x21CECE0F0](v14, *(v0 + 2384));
        }

        else
        {
          v18 = swift_unknownObjectRetain();
        }

        v19 = *(v0 + 1968);
        v20 = *(v0 + 1952);
        *v19 = v18;
        (*(v15 + 104))(v19, v17, v20);
        v32 = v16;
        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_218C34A88(v21 > 1, v22 + 1, 1);
          v16 = v32;
        }

        v23 = *(v0 + 1968);
        v24 = *(v0 + 1952);
        ++v14;
        *(v16 + 16) = v22 + 1;
        (*(v15 + 32))(v16 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v22, v23, v24);
      }

      while (v13 != v14);
      break;
    }

    __break(1u);
LABEL_22:
    ;
  }

  v25 = *(v0 + 2064);
  v29 = *(v0 + 2056);
  v31 = *(v0 + 2088);
  v28 = *(v0 + 2008);
  v26 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v26);
  sub_218F0BB90(v26);
  sub_219BF3E74();
  sub_2186E19D0();

  sub_219BF2D04();

  sub_219679DA4(v28, type metadata accessor for FoodForYouHeadlinesClusteringRequest);
  (*(v25 + 8))(v31, v29);

  return MEMORY[0x282200920](v0 + 656, v0 + 1672, sub_21966F748, v0 + 1776);
}

uint64_t sub_21966F4AC()
{
  v1 = v0[261];
  v2 = v0[258];
  v3 = v0[257];
  sub_219679DA4(v0[251], type metadata accessor for FoodForYouHeadlinesClusteringRequest);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x282200920](v0 + 82, v0 + 209, sub_21966F558, v0 + 210);
}

uint64_t sub_21966F5B0()
{
  v1 = v0[283];
  v2 = v0[282];
  v3 = v0[273];
  v4 = v0[270];
  v5 = v0[269];

  sub_21967A234((v0 + 167));

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21966F7A0()
{
  v1 = v0[283];
  v2 = v0[282];
  v3 = v0[273];
  v4 = v0[270];
  v5 = v0[269];

  sub_21967A234((v0 + 167));

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21966F9BC()
{
  v1 = v0[283];
  v2 = v0[282];
  v3 = v0[273];
  v4 = v0[270];
  v5 = v0[269];

  sub_21967A234((v0 + 167));

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21966FB54()
{
  (*(v0[258] + 8))(v0[261], v0[257]);

  return MEMORY[0x282200920](v0 + 82, v0 + 209, sub_21966FBD4, v0 + 198);
}

uint64_t sub_21966FC2C()
{
  v1 = v0[283];
  v2 = v0[282];
  v3 = v0[273];
  v4 = v0[270];
  v5 = v0[269];

  sub_21967A234((v0 + 167));

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_21966FDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_219BF3C84();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v6 = sub_219BEE6F4();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v7 = sub_219BF0BD4();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = type metadata accessor for FoodBestOfRecipesClusteringRequest();
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21966FF7C, 0, 0);
}

uint64_t sub_21966FF7C()
{
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  v0[29] = __swift_project_value_buffer(v1, qword_280F62520);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "Food emitter fetching latest recipes..", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  sub_219BEF164();
  v0[30] = v0[6];
  v0[31] = type metadata accessor for FoodTodayFeedGroupEmitter();
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_219670180;

  return MEMORY[0x2821D18D0](v0 + 2);
}

uint64_t sub_219670180()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_21967137C;
  }

  else
  {
    v2 = sub_219670294;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219670294()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 272) = v1;
  *(v0 + 280) = v2;
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  *(v0 + 288) = v4;
  *(v0 + 296) = v3;
  if (v3 < 0)
  {
    v28 = v3;
    swift_willThrow();
    v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);

    sub_218C6F990(v1, v2, v4, v28);

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v37 = *(v0 + 240);
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = *(v0 + 192);
    sub_2189B67F4(v1, v2, v4, v3);

    v10 = *(v6 + 20);
    v11 = *MEMORY[0x277D32840];
    *(v0 + 392) = v11;
    v12 = sub_219BEF9C4();
    *(v0 + 304) = v12;
    v13 = *(v12 - 8);
    v14 = *(v13 + 104);
    *(v0 + 312) = v14;
    *(v0 + 320) = (v13 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v14(v5 + v10, v11, v12);
    type metadata accessor for FoodTodayFeedGroupKnobs();
    sub_219BEF134();
    sub_219BEF524();
    v15 = *(v8 + 8);
    v15(v7, v9);
    v42 = *(v0 + 56);
    *(v0 + 328) = v42;
    sub_219BEF134();
    sub_219BEF524();
    v15(v7, v9);
    v41 = *(v0 + 64);
    type metadata accessor for FoodTodayFeedGroupRecipeKnobs();
    sub_219BEF1F4();
    sub_219BEF134();
    sub_219BEF524();

    v15(v7, v9);
    v39 = *(v0 + 72);
    sub_219BEF1B4();
    sub_219BEF134();
    sub_219BEF524();

    v15(v7, v9);
    v36 = *(v0 + 80);
    sub_219BEF1D4();
    sub_219BEF134();
    sub_219BEF524();

    v15(v7, v9);
    sub_219BEF134();
    sub_219BEF524();
    v43 = v15;
    v15(v7, v9);
    v35 = *(v0 + 396);
    v16 = *(v37 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
    sub_21967A288(0, &unk_280E8FDE0, MEMORY[0x277D344E8]);

    v17 = sub_219BF47B4();
    v34 = sub_2194796A0(v17, v16);
    v18 = *(v37 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 16);

    v19 = sub_219BF47A4();
    v40 = sub_2194796A0(v19, v18);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v38 = *(v0 + 248);
    v21 = *(v0 + 216);
    v20 = *(v0 + 224);
    v22 = *(v0 + 208);
    v23 = *(v0 + 192);
    v33 = *(v0 + 128);
    v32 = qword_280F616D8;
    sub_219BEF234();
    sub_219BEF134();
    sub_219BEF524();

    v43(v22, v23);
    v31 = *(v0 + 88);
    sub_219BEF224();
    sub_219BEF134();
    sub_219BEF524();

    v43(v22, v23);
    v24 = *(v0 + 96);
    *v20 = v2;
    *(v20 + v21[6]) = v42;
    *(v20 + v21[7]) = v41;
    *(v20 + v21[8]) = v39;
    *(v20 + v21[9]) = v36;
    *(v20 + v21[11]) = v35;
    *(v20 + v21[12]) = v34;
    *(v20 + v21[13]) = v40;
    *(v20 + v21[14]) = v32;
    *(v20 + v21[15]) = v31;
    *(v20 + v21[16]) = v24;
    __swift_project_boxed_opaque_existential_1((v33 + *(v38 + 32)), *(v33 + *(v38 + 32) + 24));
    v25 = swift_task_alloc();
    *(v0 + 336) = v25;
    *v25 = v0;
    v25[1] = sub_2196708BC;
    v26 = *(v0 + 224);

    return sub_2194FF428(v26);
  }
}

uint64_t sub_2196708BC(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[43] = a1;
  v5[44] = v2;

  if (v2)
  {
    v6 = sub_219670B78;
  }

  else
  {
    v5[45] = a2;
    v6 = sub_2196709E4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2196709E4()
{

  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[43];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_2186C1000, v1, v2, "Food emitter fetched %ld latest recipe items", v5, 0xCu);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  else
  {
  }

  v6 = (v0[16] + *(v0[31] + 48));
  v8 = v6[3];
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v8);
  v9 = swift_task_alloc();
  v0[46] = v9;
  *v9 = v0;
  v9[1] = sub_219670C5C;
  v10 = v0[43];

  return MEMORY[0x282192288](v10, v8, v7);
}

uint64_t sub_219670B78()
{
  v1 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[28];

  sub_218C6F990(v4, v3, v1, v2);
  sub_219679DA4(v5, type metadata accessor for FoodBestOfRecipesClusteringRequest);

  v6 = v0[1];

  return v6();
}

uint64_t sub_219670C5C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_219671424;
  }

  else
  {
    v4 = sub_219670D70;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

size_t sub_219670D70()
{
  v1 = *(v0 + 376);
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 328);
  if (v3 >= v2)
  {
    v18 = *(v0 + 288);
    v17 = *(v0 + 296);
    v19 = *(v0 + 272);
    v20 = *(v0 + 280);
    v39 = *(v0 + 224);

    v21 = sub_219BEEDD4();
    sub_219667B1C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v22 = v3;
    v22[1] = v2;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D32400], v21);
    swift_willThrow();

    sub_218C6F990(v19, v20, v18, v17);

    sub_219679DA4(v39, type metadata accessor for FoodBestOfRecipesClusteringRequest);

    v23 = *(v0 + 8);
  }

  else
  {
    v5 = *(v0 + 176);
    v4 = *(v0 + 184);
    v6 = *(v0 + 168);
    (*(v0 + 312))(v4, *(v0 + 392), *(v0 + 304));
    (*(v5 + 104))(v4, *MEMORY[0x277D320D8], v6);
    sub_2186E4C9C(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    sub_219BF3E84();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    if (v2)
    {
      v40 = MEMORY[0x277D84F90];
      result = sub_218C34A88(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        __break(1u);
        return result;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = 0;
        v9 = *(v0 + 144);
        v10 = *MEMORY[0x277D34120];
        do
        {
          v11 = *(v0 + 160);
          v12 = *(v0 + 136);
          *v11 = MEMORY[0x21CECE0F0](v8, *(v0 + 376));
          (*(v9 + 104))(v11, v10, v12);
          v14 = *(v40 + 16);
          v13 = *(v40 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_218C34A88(v13 > 1, v14 + 1, 1);
          }

          v15 = *(v0 + 160);
          v16 = *(v0 + 136);
          ++v8;
          *(v40 + 16) = v14 + 1;
          (*(v9 + 32))(v40 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v15, v16);
        }

        while (v2 != v8);
      }

      else
      {
        v24 = *(v0 + 144);
        v25 = (*(v0 + 376) + 32);
        v38 = *(v24 + 104);
        do
        {
          v26 = *v25;
          **(v0 + 152) = *v25;
          v38();
          v27 = *(v40 + 16);
          v28 = *(v40 + 24);
          v29 = v26;
          if (v27 >= v28 >> 1)
          {
            sub_218C34A88(v28 > 1, v27 + 1, 1);
          }

          v30 = *(v0 + 152);
          v31 = *(v0 + 136);
          *(v40 + 16) = v27 + 1;
          (*(v24 + 32))(v40 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v27, v30, v31);
          ++v25;
          --v2;
        }

        while (v2);
      }
    }

    v36 = *(v0 + 288);
    v37 = *(v0 + 296);
    v34 = *(v0 + 272);
    v35 = *(v0 + 280);
    v32 = *(v0 + 224);
    v33 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v33);
    sub_218F0BB90(v33);
    sub_219BF3E74();
    sub_2186E19D0();
    sub_219BF2D04();

    sub_218C6F990(v34, v35, v36, v37);

    sub_219679DA4(v32, type metadata accessor for FoodBestOfRecipesClusteringRequest);

    v23 = *(v0 + 8);
  }

  return v23();
}

uint64_t sub_21967137C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219671424()
{
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[28];

  sub_218C6F990(v4, v3, v2, v1);
  sub_219679DA4(v5, type metadata accessor for FoodBestOfRecipesClusteringRequest);

  v6 = v0[1];

  return v6();
}

uint64_t sub_219671528(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_219BF3C84();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = sub_219BEE6F4();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v6 = sub_219BF0BD4();
  v3[18] = v6;
  v3[19] = *(v6 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2196716B0, 0, 0);
}

uint64_t sub_2196716B0()
{
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  v0[21] = __swift_project_value_buffer(v1, qword_280F62520);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "Food emitter fetching trending recipes..", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  v0[22] = type metadata accessor for FoodTodayFeedGroupEmitter();
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_219671820;

  return MEMORY[0x2821D18D0](v0 + 2);
}

uint64_t sub_219671820()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_21967266C;
  }

  else
  {
    v2 = sub_219671934;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219671934()
{
  v18 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v0[25] = v2;
  v0[26] = v1;
  v4 = v0[4];
  v3 = v0[5];
  v0[27] = v4;
  v0[28] = v3;
  if (v3 < 0)
  {
  }

  else
  {
    sub_2189B6874();
    sub_218F97E88(v2, v1, v4, v17);

    v4 = v17[2];
  }

  v0[29] = v4;
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];

  type metadata accessor for FoodTodayFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v8 = *(v6 + 8);
  v8(v5, v7);
  v9 = v0[6];
  v0[30] = v9;
  sub_219BEF134();
  sub_219BEF524();
  v8(v5, v7);
  v10 = v0[7];
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v11 = v0[22];
  v12 = v0[10];
  v13 = qword_280F616D8;
  v0[31] = qword_280F616D8;
  __swift_project_boxed_opaque_existential_1((v12 + *(v11 + 32)), *(v12 + *(v11 + 32) + 24));
  v14 = v13;
  v15 = swift_task_alloc();
  v0[32] = v15;
  *v15 = v0;
  v15[1] = sub_219671B84;

  return sub_21950020C(v4, v9, v10, v14);
}

uint64_t sub_219671B84(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[33] = a1;
  v5[34] = v2;

  if (v2)
  {
    v6 = sub_219671E8C;
  }

  else
  {
    v5[35] = a2;
    v6 = sub_219671CAC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_219671CAC()
{

  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[33];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if (v4 >> 62)
    {
      v14 = v5;
      v6 = sub_219BF7214();
      v5 = v14;
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v6;
    v7 = v5;

    _os_log_impl(&dword_2186C1000, v1, v2, "Food emitter fetched %ld trending recipes", v7, 0xCu);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  else
  {
  }

  v8 = (v0[10] + *(v0[22] + 48));
  v10 = v8[3];
  v9 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v10);
  v11 = swift_task_alloc();
  v0[36] = v11;
  v12 = sub_2186C6148(0, &qword_280E8E810);
  *v11 = v0;
  v11[1] = sub_219671F4C;
  v13 = v0[33];

  return MEMORY[0x2821922A0](v13, v10, v12, v9);
}

uint64_t sub_219671E8C()
{
  v1 = v0[31];
  v2 = v0[28];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];

  sub_218C6F990(v5, v4, v3, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_219671F4C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v4 = sub_2196726F8;
  }

  else
  {
    v4 = sub_219672060;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

size_t sub_219672060()
{
  v1 = *(v0 + 296);
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 240);
  if (v3 >= v2)
  {
    v41 = *(v0 + 224);
    v19 = *(v0 + 208);
    v38 = *(v0 + 248);
    v40 = *(v0 + 216);
    v20 = *(v0 + 200);

    v21 = sub_219BEEDD4();
    sub_219667B1C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v22 = v3;
    v22[1] = v2;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D32400], v21);
    swift_willThrow();

    sub_218C6F990(v20, v19, v40, v41);

    v23 = *(v0 + 8);
  }

  else
  {
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = *MEMORY[0x277D32840];
    v8 = sub_219BEF9C4();
    (*(*(v8 - 8) + 104))(v4, v7, v8);
    (*(v5 + 104))(v4, *MEMORY[0x277D320D8], v6);
    sub_2186E4C9C(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    sub_219BF3E84();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    if (v2)
    {
      v42 = MEMORY[0x277D84F90];
      result = sub_218C34A88(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        __break(1u);
        return result;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v10 = 0;
        v11 = *(v0 + 96);
        v12 = *MEMORY[0x277D34120];
        do
        {
          v13 = *(v0 + 112);
          v14 = *(v0 + 88);
          *v13 = MEMORY[0x21CECE0F0](v10, *(v0 + 296));
          (*(v11 + 104))(v13, v12, v14);
          v16 = *(v42 + 16);
          v15 = *(v42 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_218C34A88(v15 > 1, v16 + 1, 1);
          }

          v17 = *(v0 + 112);
          v18 = *(v0 + 88);
          ++v10;
          *(v42 + 16) = v16 + 1;
          (*(v11 + 32))(v42 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v16, v17, v18);
        }

        while (v2 != v10);
      }

      else
      {
        v24 = *(v0 + 96);
        v25 = (*(v0 + 296) + 32);
        v39 = *(v24 + 104);
        do
        {
          v26 = *v25;
          **(v0 + 104) = *v25;
          v39();
          v27 = *(v42 + 16);
          v28 = *(v42 + 24);
          v29 = v26;
          if (v27 >= v28 >> 1)
          {
            sub_218C34A88(v28 > 1, v27 + 1, 1);
          }

          v30 = *(v0 + 104);
          v31 = *(v0 + 88);
          *(v42 + 16) = v27 + 1;
          (*(v24 + 32))(v42 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v27, v30, v31);
          ++v25;
          --v2;
        }

        while (v2);
      }
    }

    v37 = *(v0 + 248);
    v36 = *(v0 + 224);
    v32 = *(v0 + 208);
    v35 = *(v0 + 216);
    v33 = *(v0 + 200);
    v34 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v34);
    sub_218F0BB90(v34);
    sub_219BF3E74();
    sub_2186E19D0();
    sub_219BF2D04();
    sub_218C6F990(v33, v32, v35, v36);

    v23 = *(v0 + 8);
  }

  return v23();
}

uint64_t sub_21967266C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2196726F8()
{
  v1 = v0[31];
  v2 = v0[28];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];

  sub_218C6F990(v5, v4, v3, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2196727D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_219BEE6F4();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_219BF1934();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for TagFeedCuration(0);
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  sub_21967A288(0, &qword_280E900C8, MEMORY[0x277D33F58]);
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = type metadata accessor for FoodTodayFeedGroupConfigData();
  v5[24] = swift_task_alloc();
  v10 = type metadata accessor for TagFeedCurationRequest();
  v5[25] = v10;
  v11 = *(v10 - 8);
  v5[26] = v11;
  v5[27] = *(v11 + 64);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219672A70, 0, 0);
}

uint64_t sub_219672A70()
{
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  v0[30] = __swift_project_value_buffer(v1, qword_280F62520);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "Food emitter fetching food curations...", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  sub_219BEF164();
  v0[31] = v0[5];
  v5 = swift_task_alloc();
  v0[32] = v5;
  *v5 = v0;
  v5[1] = sub_219672C80;
  v6 = v0[9];
  v7 = v0[7];

  return sub_219679654(v7, v6);
}

uint64_t sub_219672C80(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_2196738E8;
  }

  else
  {
    v4 = sub_219672D94;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_219672D94()
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v34 = *(v0 + 264);
  v35 = *(v0 + 224);
  v36 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);
  v5 = *(v0 + 80);
  v6 = qword_280F616D8;
  v7 = *MEMORY[0x277D30BC8];
  sub_2186E16D0();
  v33 = v6;
  v32 = v7;
  v8 = v5;
  sub_219BEDD14();
  v9 = (v3 + *(v4 + 32));
  v10 = *v9;
  v11 = v9[1];

  sub_219679DA4(v3, type metadata accessor for FoodTodayFeedGroupConfigData);
  sub_21967A288(0, &unk_280E8FDE0, MEMORY[0x277D344E8]);
  v12 = sub_219BF47B4();
  v13 = sub_219BF47A4();
  v14 = *(v2 + 44);
  v15 = *MEMORY[0x277D329E0];
  *(v0 + 352) = v15;
  v16 = sub_219BEFBD4();
  *(v0 + 280) = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 104);
  *(v0 + 288) = v18;
  *(v0 + 296) = (v17 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v18(&v1[v14], v15, v16);
  v19 = *(v2 + 48);
  v20 = *MEMORY[0x277D32840];
  *(v0 + 356) = v20;
  v21 = sub_219BEF9C4();
  *(v0 + 304) = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 104);
  *(v0 + 312) = v23;
  *(v0 + 320) = (v22 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v23(&v1[v19], v20, v21);
  v24 = MEMORY[0x277D84F90];
  *v1 = v34;
  *(v1 + 1) = v24;
  *(v1 + 2) = v33;
  *(v1 + 3) = v32;
  *(v1 + 4) = v10;
  *(v1 + 5) = v11;
  *(v1 + 6) = v12;
  *(v1 + 7) = v13;
  v25 = *(v8 + *(type metadata accessor for FoodTodayFeedGroupEmitter() + 36));
  sub_219BF6214();
  sub_219BE5314();
  sub_218824C10(0, &unk_280EE6E20, &type metadata for TagFeedCurationResult, MEMORY[0x277D6CF30]);
  sub_21967A354(v1, v35, type metadata accessor for TagFeedCurationRequest);
  v26 = *(v36 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  sub_21967A43C(v35, v27 + ((v26 + 24) & ~v26), type metadata accessor for TagFeedCurationRequest);

  sub_219BE2F54();
  sub_21967A354(v1, v35, type metadata accessor for TagFeedCurationRequest);
  v28 = swift_allocObject();
  sub_21967A43C(v35, v28 + ((v26 + 16) & ~v26), type metadata accessor for TagFeedCurationRequest);
  v29 = sub_219BE2E54();
  *(v0 + 328) = sub_219BE3024();

  v30 = swift_task_alloc();
  *(v0 + 336) = v30;
  *v30 = v0;
  v30[1] = sub_2196731D0;

  return MEMORY[0x2821D23D8](v0 + 16);
}

uint64_t sub_2196731D0()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_2196739B0;
  }

  else
  {
    v2 = sub_219673304;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

size_t sub_219673304()
{
  v1 = v0[2];

  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_2186C1000, v2, v3, "Food emitter fetched food %ld curation", v4, 0xCu);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  else
  {
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = v0[21];
    v7 = v0[18];
    v44 = v0[19];
    v39 = v0[17];
    v8 = v0[15];
    v9 = v0[12];
    v46 = MEMORY[0x277D84F90];
    result = sub_218C37EE0(0, v5, 0);
    v11 = 0;
    v45 = v46;
    v40 = v7;
    v38 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v37 = (v8 + 16);
    v36 = *MEMORY[0x277D320D8];
    v35 = (v9 + 104);
    v34 = *MEMORY[0x277D320E8];
    v41 = v6;
    v42 = v5;
    v43 = v1;
    while (v11 < *(v1 + 16))
    {
      sub_21967A354(v38 + *(v40 + 72) * v11, v0[19], type metadata accessor for TagFeedCuration);
      v12 = *(v44 + 16);
      v13 = *(v12 + 16);
      if (v13)
      {
        v47 = MEMORY[0x277D84F90];
        sub_219BF73F4();
        v14 = (v12 + 32);
        do
        {
          v15 = *v14;
          v14 += 3;
          v16 = v15;
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          --v13;
        }

        while (v13);
        v17 = v47;
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
      }

      v18 = *(v44 + 8);
      v19 = *(v18 + 16);
      if (v19)
      {
        sub_219BF73F4();
        v20 = v18 + 32;
        do
        {
          v20 += 24;
          swift_unknownObjectRetain();
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          --v19;
        }

        while (v19);
      }

      (*v37)(v0[16], v0[19] + *(v39 + 44), v0[14]);
      if (v17 >> 62)
      {
        v21 = sub_219BF7214();
      }

      else
      {
        v21 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v22 = 39;
      if (!v21)
      {
        v22 = 36;
      }

      v23 = 38;
      if (!v21)
      {
        v23 = 35;
      }

      v24 = 356;
      if (v21)
      {
        v25 = v36;
      }

      else
      {
        v24 = 352;
        v25 = v34;
      }

      (v0[v22])(v0[13], *(v0 + v24), v0[v23]);
      v26 = v0[19];
      (*v35)(v0[13], v25, v0[11]);
      sub_2186E19D0();

      sub_219BF3894();
      sub_219679DA4(v26, type metadata accessor for TagFeedCuration);
      v27 = v45;
      v29 = *(v45 + 16);
      v28 = *(v45 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_218C37EE0(v28 > 1, v29 + 1, 1);
        v27 = v45;
      }

      ++v11;
      v30 = v0[22];
      v31 = v0[20];
      *(v27 + 16) = v29 + 1;
      v45 = v27;
      result = (*(v41 + 32))(v27 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v29, v30, v31);
      v1 = v43;
      if (v11 == v42)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:

    v32 = v0[29];
    sub_2186E19D0();
    sub_219BF2D14();

    sub_219679DA4(v32, type metadata accessor for TagFeedCurationRequest);

    v33 = v0[1];

    return v33();
  }

  return result;
}

uint64_t sub_2196738E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2196739B0()
{
  v1 = *(v0 + 232);

  sub_219679DA4(v1, type metadata accessor for TagFeedCurationRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_219673A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_219BF3C84();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v6 = sub_219BEE6F4();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v7 = sub_219BF0BD4();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = type metadata accessor for FoodBestOfRecipesClusteringRequest();
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219673C50, 0, 0);
}

uint64_t sub_219673C50()
{
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  v0[29] = __swift_project_value_buffer(v1, qword_280F62520);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "Food emitter fetching forYou recipes..", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  v0[30] = type metadata accessor for FoodTodayFeedGroupEmitter();
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_219673DC0;

  return MEMORY[0x2821D18D0](v0 + 2);
}

uint64_t sub_219673DC0()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_219674FF8;
  }

  else
  {
    v2 = sub_219673ED4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219673ED4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 264) = v1;
  *(v0 + 272) = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *(v0 + 280) = v3;
  *(v0 + 288) = v4;
  if (v4 < 0)
  {
    swift_willThrow();
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    goto LABEL_7;
  }

  if (v4)
  {
    sub_218F98174();
    swift_allocError();
    swift_willThrow();
LABEL_7:
    sub_218C6F990(v1, v2, v3, v4);

    v7 = *(v0 + 8);

    return v7();
  }

  v6 = *(v0 + 256);

  sub_219BEF164();
  if (v6)
  {

    goto LABEL_7;
  }

  v9 = *(v0 + 224);
  v33 = *(v0 + 216);
  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  v43 = *(v0 + 192);
  v35 = *(v0 + 48);
  *(v0 + 296) = v35;
  v12 = *(v33 + 20);
  v13 = *MEMORY[0x277D32840];
  *(v0 + 392) = v13;
  v14 = sub_219BEF9C4();
  *(v0 + 304) = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 104);
  *(v0 + 312) = v16;
  *(v0 + 320) = (v15 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v16(v9 + v12, v13, v14);
  type metadata accessor for FoodTodayFeedGroupKnobs();
  sub_219BEF134();
  sub_219BEF524();
  v17 = *(v11 + 8);
  v17(v10, v43);
  v42 = v17;
  v40 = *(v0 + 56);
  *(v0 + 328) = v40;
  sub_219BEF134();
  sub_219BEF524();
  v17(v10, v43);
  v39 = *(v0 + 64);
  type metadata accessor for FoodTodayFeedGroupRecipeKnobs();
  sub_219BEF1F4();
  sub_219BEF134();
  sub_219BEF524();

  v17(v10, v43);
  v38 = *(v0 + 72);
  sub_219BEF1B4();
  sub_219BEF134();
  sub_219BEF524();

  v17(v10, v43);
  v37 = *(v0 + 80);
  sub_219BEF1D4();
  sub_219BEF134();
  sub_219BEF524();

  v17(v10, v43);
  sub_219BEF134();
  sub_219BEF524();
  v17(v10, v43);
  v34 = *(v0 + 396);
  v18 = *(v35 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
  sub_21967A288(0, &unk_280E8FDE0, MEMORY[0x277D344E8]);

  v19 = sub_219BF47B4();
  v32 = sub_2194796A0(v19, v18);
  v20 = *(v35 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 16);

  v21 = sub_219BF47A4();
  v36 = sub_2194796A0(v21, v20);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  v24 = *(v0 + 208);
  v41 = *(v0 + 192);
  v30 = *(v0 + 128);
  v31 = *(v0 + 240);
  v29 = qword_280F616D8;
  sub_219BEF234();
  sub_219BEF134();
  sub_219BEF524();

  v42(v24, v41);
  v28 = *(v0 + 88);
  sub_219BEF224();
  sub_219BEF134();
  sub_219BEF524();

  v42(v24, v41);
  v25 = *(v0 + 96);
  *v22 = v1;
  *(v22 + v23[6]) = v40;
  *(v22 + v23[7]) = v39;
  *(v22 + v23[8]) = v38;
  *(v22 + v23[9]) = v37;
  *(v22 + v23[11]) = v34;
  *(v22 + v23[12]) = v32;
  *(v22 + v23[13]) = v36;
  *(v22 + v23[14]) = v29;
  *(v22 + v23[15]) = v28;
  *(v22 + v23[16]) = v25;
  __swift_project_boxed_opaque_existential_1((v30 + *(v31 + 32)), *(v30 + *(v31 + 32) + 24));
  v26 = swift_task_alloc();
  *(v0 + 336) = v26;
  *v26 = v0;
  v26[1] = sub_219674550;
  v27 = *(v0 + 224);

  return sub_2194FF428(v27);
}

uint64_t sub_219674550(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = v2;

  if (v2)
  {
    v5 = sub_219674848;
  }

  else
  {
    v5 = sub_219674668;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219674668()
{
  v1 = (v0[16] + *(v0[30] + 48));
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  v0[46] = v4;
  *v4 = v0;
  v4[1] = sub_219674734;
  v5 = v0[43];

  return MEMORY[0x282192288](v5, v3, v2);
}

uint64_t sub_219674734(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = sub_219675098;
  }

  else
  {
    v4 = sub_21967492C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_219674848()
{
  v1 = v0[36];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v0[28];

  sub_218C6F990(v4, v3, v2, v1);
  sub_219679DA4(v5, type metadata accessor for FoodBestOfRecipesClusteringRequest);

  v6 = v0[1];

  return v6();
}

size_t sub_21967492C()
{

  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 376);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if (v4 >> 62)
    {
      v6 = sub_219BF7214();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v6;

    _os_log_impl(&dword_2186C1000, v1, v2, "Food emitter fetched %ld forYou recipes", v5, 0xCu);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 376) >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *(v0 + 328);
  if (v7 >= v8)
  {
    v15 = *(v0 + 176);
    v14 = *(v0 + 184);
    v16 = *(v0 + 168);
    (*(v0 + 312))(v14, *(v0 + 392), *(v0 + 304));
    (*(v15 + 104))(v14, *MEMORY[0x277D320D8], v16);
    sub_2186E4C9C(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    sub_219BF3E84();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    if (v7)
    {
      v45 = MEMORY[0x277D84F90];
      result = sub_218C34A88(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        __break(1u);
        return result;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v18 = 0;
        v19 = *(v0 + 144);
        v20 = *MEMORY[0x277D34120];
        do
        {
          v21 = *(v0 + 160);
          v22 = *(v0 + 136);
          *v21 = MEMORY[0x21CECE0F0](v18, *(v0 + 376));
          (*(v19 + 104))(v21, v20, v22);
          v24 = *(v45 + 16);
          v23 = *(v45 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_218C34A88(v23 > 1, v24 + 1, 1);
          }

          v25 = *(v0 + 160);
          v26 = *(v0 + 136);
          ++v18;
          *(v45 + 16) = v24 + 1;
          (*(v19 + 32))(v45 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v24, v25, v26);
        }

        while (v7 != v18);
      }

      else
      {
        v27 = *(v0 + 144);
        v28 = (*(v0 + 376) + 32);
        v42 = *(v27 + 104);
        do
        {
          v29 = *v28;
          **(v0 + 152) = *v28;
          v42();
          v30 = *(v45 + 16);
          v31 = *(v45 + 24);
          v32 = v29;
          if (v30 >= v31 >> 1)
          {
            sub_218C34A88(v31 > 1, v30 + 1, 1);
          }

          v33 = *(v0 + 152);
          v34 = *(v0 + 136);
          *(v45 + 16) = v30 + 1;
          (*(v27 + 32))(v45 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v30, v33, v34);
          ++v28;
          --v7;
        }

        while (v7);
      }
    }

    v40 = *(v0 + 288);
    v39 = *(v0 + 280);
    v38 = *(v0 + 272);
    v37 = *(v0 + 264);
    v35 = *(v0 + 224);
    v36 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v36);
    sub_218F0BB90(v36);
    sub_219BF3E74();
    sub_2186E19D0();
    sub_219BF2D04();

    sub_218C6F990(v37, v38, v39, v40);
    sub_219679DA4(v35, type metadata accessor for FoodBestOfRecipesClusteringRequest);

    v13 = *(v0 + 8);
  }

  else
  {
    v9 = *(v0 + 272);
    v41 = *(v0 + 280);
    v43 = *(v0 + 288);
    v10 = *(v0 + 264);
    v44 = *(v0 + 224);

    v11 = sub_219BEEDD4();
    sub_219667B1C(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    *v12 = v8;
    v12[1] = v7;
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D32400], v11);
    swift_willThrow();

    sub_218C6F990(v10, v9, v41, v43);
    sub_219679DA4(v44, type metadata accessor for FoodBestOfRecipesClusteringRequest);

    v13 = *(v0 + 8);
  }

  return v13();
}