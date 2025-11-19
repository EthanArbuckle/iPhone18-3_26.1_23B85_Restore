uint64_t sub_2196912DC(uint64_t a1)
{
  v2 = sub_219691384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219691318(uint64_t a1)
{
  v2 = sub_219691384();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219691384()
{
  result = qword_280E97E88[0];
  if (!qword_280E97E88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E97E88);
  }

  return result;
}

void sub_2196913D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219691384();
    v7 = a3(a1, &type metadata for SportsEventTopicTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219691450()
{
  result = qword_27CC1DBD0;
  if (!qword_27CC1DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DBD0);
  }

  return result;
}

unint64_t sub_2196914A8()
{
  result = qword_280E97E78;
  if (!qword_280E97E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97E78);
  }

  return result;
}

unint64_t sub_219691500()
{
  result = qword_280E97E80;
  if (!qword_280E97E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97E80);
  }

  return result;
}

uint64_t sub_219691564(uint64_t a1)
{
  v2 = sub_2196918D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2196915A0(uint64_t a1)
{
  v2 = sub_2196918D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2196915DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_219691750(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_219691608(void *a1)
{
  sub_219691924(0, &qword_280E8C368, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196918D0();
  sub_219BF7B44();
  sub_219BF7824();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219691750(void *a1)
{
  sub_219691924(0, &qword_280E8CA68, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196918D0();
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

unint64_t sub_2196918D0()
{
  result = qword_280EA6D80;
  if (!qword_280EA6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6D80);
  }

  return result;
}

void sub_219691924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2196918D0();
    v7 = a3(a1, &type metadata for CategoriesMagazineFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21969199C()
{
  result = qword_27CC1DBD8;
  if (!qword_27CC1DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DBD8);
  }

  return result;
}

unint64_t sub_2196919F4()
{
  result = qword_280EA6D70;
  if (!qword_280EA6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6D70);
  }

  return result;
}

unint64_t sub_219691A4C()
{
  result = qword_280EA6D78;
  if (!qword_280EA6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6D78);
  }

  return result;
}

uint64_t sub_219691AA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BF5474();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v7 = NewsCoreUserDefaults();
  v8 = [v7 stringForKey_];

  if (!v8)
  {
    sub_2196927E0();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }

  v29[2] = a1;
  v30 = v1;
  v9 = sub_219BF5414();
  v11 = v10;

  sub_219BF6214();
  sub_2186F20D4();
  v29[1] = v12;
  v13 = swift_allocObject();
  v31 = xmmword_219C09BA0;
  *(v13 + 16) = xmmword_219C09BA0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  v14 = sub_2186FC3BC();
  *(v13 + 64) = v14;
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;

  sub_219BE5314();

  sub_219BF5464();
  v15 = sub_219BF5424();
  v17 = v16;

  (*(v4 + 8))(v6, v3);
  if (v17 >> 60 == 15)
  {
    sub_2196927E0();
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }

  sub_219BF6214();
  v21 = swift_allocObject();
  *(v21 + 16) = v31;
  v22 = sub_219BDB984();
  v23 = MEMORY[0x277D837D0];
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = v14;
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  sub_219BE5314();

  sub_219BDAFF4();
  swift_allocObject();
  sub_219BDAFE4();
  sub_219BE4E74();
  sub_219692834(&qword_27CC1DBF0, MEMORY[0x277D34AD0]);
  v25 = v30;
  sub_219BDAFC4();

  if (v25)
  {
    sub_219BF6214();
    v26 = swift_allocObject();
    *(v26 + 16) = v31;
    v32 = 0;
    v33 = 0xE000000000000000;
    v34 = v25;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    v27 = v32;
    v28 = v33;
    *(v26 + 56) = v23;
    *(v26 + 64) = v14;
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    sub_219BE5314();

    swift_willThrow();
  }

  return sub_218822A58(v15, v17);
}

uint64_t sub_219691F1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F43756F59726F66;
  }

  else
  {
    v3 = 0x656C646E7562;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEC0000006769666ELL;
  }

  if (*a2)
  {
    v5 = 0x6F43756F59726F66;
  }

  else
  {
    v5 = 0x656C646E7562;
  }

  if (*a2)
  {
    v6 = 0xEC0000006769666ELL;
  }

  else
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_219691FC8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219692050()
{
  sub_219BF5524();
}

uint64_t sub_2196920C4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219692148@<X0>(char *a1@<X8>)
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

uint64_t sub_2196921A8(uint64_t a1)
{
  v2 = sub_218774EA0();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_2196921FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_218774EA0();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_219692258()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_219692788();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CCD8DD0 = result;
  return result;
}

uint64_t sub_219692430()
{
  sub_219BF7AA4();
  PPT.Test.rawValue.getter();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_219692498()
{
  PPT.Test.rawValue.getter();
  sub_219BF5524();
}

uint64_t sub_2196924FC()
{
  sub_219BF7AA4();
  PPT.Test.rawValue.getter();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_21969256C@<X0>(unint64_t *a1@<X8>)
{
  result = PPT.Test.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_219692594()
{
  v0 = PPT.Test.rawValue.getter();
  v2 = v1;
  if (v0 == PPT.Test.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_219BF78F4();
  }

  return v5 & 1;
}

unint64_t sub_219692714()
{
  result = qword_27CC1DBE0;
  if (!qword_27CC1DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DBE0);
  }

  return result;
}

void sub_219692788()
{
  if (!qword_280EE9088)
  {
    v0 = sub_219BDC9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE9088);
    }
  }
}

unint64_t sub_2196927E0()
{
  result = qword_27CC1DBE8;
  if (!qword_27CC1DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DBE8);
  }

  return result;
}

uint64_t sub_219692834(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2196928A0()
{
  result = qword_27CC1DC08;
  if (!qword_27CC1DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DC08);
  }

  return result;
}

uint64_t type metadata accessor for TodayUpdateEngagementModifier()
{
  result = qword_280EAE118;
  if (!qword_280EAE118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219692968()
{
  sub_2196937B0(319, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_219692A14(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v93 = a3;
  v94 = a2;
  v5 = sub_219BE6DF4();
  v84 = *(v5 - 8);
  v85 = v5;
  MEMORY[0x28223BE20](v5);
  v83 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218849E78(0, &unk_280EE4B30, MEMORY[0x277D6DF88]);
  v92 = v7;
  v88 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v90 = (&v66 - v8);
  v87 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v87);
  v72 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853494();
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE38C4();
  v80 = *(v12 - 8);
  v81 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v79 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v78 = &v66 - v15;
  v16 = sub_219BE35B4();
  v76 = *(v16 - 8);
  v77 = v16;
  MEMORY[0x28223BE20](v16);
  v75 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196937B0(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v66 - v19;
  v86 = sub_219BEEC14();
  v89 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v82 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218849E78(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v23 = v22;
  v91 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - v24;
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218849E78(0, &qword_280EE58C0, MEMORY[0x277D6D710]);
  v30 = v29;
  v31 = *(v29 - 8);
  v32 = MEMORY[0x28223BE20](v29);
  v71 = &v66 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v66 - v34;
  sub_219BEB244();
  if ((*(v31 + 48))(v28, 1, v30) == 1)
  {
    sub_218ADF7F0(v28);
    sub_21969375C();
    v36 = swift_allocError();
    v37 = v90;
    *v90 = v36;
    v38 = v88;
    v39 = v92;
    (*(v88 + 104))(v37, *MEMORY[0x277D6DF68], v92);
    v94(v37);
    return (*(v38 + 8))(v37, v39);
  }

  v73 = v31;
  (*(v31 + 32))(v35, v28, v30);
  (*(v91 + 16))(v25, a1, v23);
  updated = type metadata accessor for TodayUpdateEngagementModifier();
  sub_2195C64E4(v3 + *(updated + 20), v20);
  v42 = v86;
  v43 = (*(v89 + 48))(v20, 1, v86);
  v70 = a1;
  v69 = v35;
  v68 = v23;
  if (v43 == 1)
  {
    sub_2195C6578(v20);
    v44 = v94;
    v45 = v90;
  }

  else
  {
    v66 = v30;
    v67 = v25;
    v46 = v82;
    (*(v89 + 32))(v82, v20, v42);
    v47 = v75;
    sub_219BEEBC4();
    v48 = v78;
    sub_219BE3574();
    (*(v76 + 8))(v47, v77);
    v50 = v79;
    v49 = v80;
    v51 = v81;
    (*(v80 + 104))(v79, *MEMORY[0x277D31748], v81);
    sub_219693814(&unk_280EE65E0, MEMORY[0x277D31758]);
    LOBYTE(v47) = sub_219BF53A4();
    v52 = *(v49 + 8);
    v52(v50, v51);
    v52(v48, v51);
    if ((v47 & 1) == 0)
    {
      v55 = v66;
      sub_219BE6934();
      v95 = v96;
      sub_2196937B0(0, &qword_280E8BFF0, sub_218853400, MEMORY[0x277D84560]);
      sub_218853400();
      v57 = v56;
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_219C09BA0;
      v59 = v89;
      (*(v89 + 16))(v72, v46, v42);
      swift_storeEnumTagMultiPayload();
      sub_219693814(&qword_280EDF9E0, type metadata accessor for TodayModel);
      sub_219BE5FB4();
      v60 = sub_219693814(&qword_280EE5D38, sub_218853400);
      v61 = sub_219693814(&qword_280EE5D40, sub_218853400);
      MEMORY[0x21CEB9170](v58, v57, v60, v61);
      sub_2186EB3E8();
      v62 = v71;
      sub_219BE6924();
      v54 = v67;
      sub_219BEB234();
      (*(v73 + 8))(v62, v55);
      (*(v59 + 8))(v82, v86);
      v44 = v94;
      v45 = v90;
      v53 = v55;
      goto LABEL_9;
    }

    (*(v89 + 8))(v46, v42);
    v44 = v94;
    v45 = v90;
    v25 = v67;
    v30 = v66;
  }

  sub_219BE6944();
  sub_219BEB214();

  v53 = v30;
  v54 = v25;
LABEL_9:
  v63 = v83;
  v64 = v84;
  v65 = v85;
  (*(v84 + 104))(v83, *MEMORY[0x277D6D868], v85);
  sub_2186EB3E8();
  sub_219693814(&qword_280EDF9E0, type metadata accessor for TodayModel);
  sub_2188552DC();
  sub_219BE85E4();
  (*(v64 + 8))(v63, v65);
  v44(v45);
  (*(v88 + 8))(v45, v92);
  (*(v91 + 8))(v54, v68);
  return (*(v73 + 8))(v69, v53);
}

uint64_t sub_219693660(uint64_t a1)
{
  v2 = sub_219693814(&qword_280EAE130, type metadata accessor for TodayUpdateEngagementModifier);

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21969375C()
{
  result = qword_280EAE138[0];
  if (!qword_280EAE138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAE138);
  }

  return result;
}

void sub_2196937B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219693814(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219693870()
{
  result = qword_27CC1DC20;
  if (!qword_27CC1DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DC20);
  }

  return result;
}

uint64_t sub_2196938C4(uint64_t a1, uint64_t a2)
{
  sub_219BF51C4();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_219BF5194();
}

void sub_2196939DC(void *a1, void (**a2)(void, void))
{
  v4 = sub_219BED214();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v43 - v8;
  v47 = sub_219BF51A4();
  v10 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v12 = (v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = swift_allocObject();
  *(v49 + 16) = a2;
  _Block_copy(a2);

  v13 = sub_219BF53D4();

  v14 = [a1 objectForKey_];

  if (!v14)
  {
    goto LABEL_17;
  }

  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_218751558(&v51, &v52);
  sub_218805E54();
  swift_dynamicCast();
  v15 = v50;
  sub_218803390();
  sub_219BF6584();
  v16 = v52;
  if (!v52)
  {
    v40 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
    (a2)[2](a2, v40);

    return;
  }

  v48 = v15;
  v17 = [v52 childViewControllers];
  v18 = sub_219BF5924();

  if (v18 >> 62)
  {
    v41 = sub_219BF7214();
    v19 = v48;
    if (v41)
    {
      goto LABEL_5;
    }

LABEL_13:

LABEL_14:
    type metadata accessor for TodayViewController();
    v42 = [objc_allocWithZone(MEMORY[0x277D6D138]) initWithMissingClass_];
    (a2)[2](a2, v42);

    return;
  }

  v19 = v48;
  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x21CECE0F0](0, v18);
    goto LABEL_8;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v18 + 32);
LABEL_8:
    v21 = v20;

    type metadata accessor for TodayViewController();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      v24 = v21;

      v25 = sub_219BF53D4();

      [a1 setObject:v23 forKey:v25];
      v44 = v24;

      v43[1] = sub_219BF51C4();
      sub_219BE8664();
      v26 = sub_219BE7BC4();

      [v26 bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v53.origin.x = v28;
      v53.origin.y = v30;
      v53.size.width = v32;
      v53.size.height = v34;
      *v12 = CGRectGetHeight(v53) * 20.0;
      (*(v10 + 104))(v12, *MEMORY[0x277D6D130], v47);
      sub_219BE8664();
      v35 = sub_219BE7BC4();

      sub_219BED1F4();
      sub_219BED244();
      v36 = v46;
      v45 = *(v45 + 8);
      (v45)(v7, v46);
      v37 = swift_allocObject();
      v38 = v12;
      v39 = v49;
      *(v37 + 16) = sub_218967168;
      *(v37 + 24) = v39;

      sub_219BF51B4();

      (v45)(v9, v36);
      (*(v10 + 8))(v38, v47);

      return;
    }

    v19 = v48;
    goto LABEL_14;
  }

  __break(1u);
LABEL_17:
  _Block_release(a2);
  __break(1u);
}

double sub_219693FE4()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694BD4(v0, v7);
  (*(v2 + 32))(v5, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_219694148@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694BD4(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_219694234(uint64_t a1)
{
  v2 = sub_2187DECA0(&unk_280ED7470);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2196942A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694BD4(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_219694468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_219BEF974();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694BD4(v4, v13);
  (*(v8 + 32))(v11, v13, v7);
  v14 = a4(a1);
  (*(v8 + 8))(v11, v7);
  return v14;
}

uint64_t sub_219694634(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694BD4(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v9, v5);
}

double sub_219694798@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_219BEF974();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694BD4(v1, v9);
  (*(v4 + 32))(v7, v9, v3);
  sub_219BEF964();
  (*(v4 + 8))(v7, v3);
  result = *&v13;
  v11 = v14;
  *a1 = v13;
  *(a1 + 16) = v11;
  *(a1 + 32) = v15;
  return result;
}

uint64_t sub_219694934(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694BD4(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  LOBYTE(a3) = a3(v12);
  (*(v6 + 8))(v9, v5);
  return a3 & 1;
}

uint64_t sub_219694A90(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219694BD4(v3, v11);
  v12 = (*(v6 + 32))(v9, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v9, v5);
  return v13;
}

uint64_t sub_219694BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayLayoutModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ANFSceneActivityBridge.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall ANFSceneActivityBridge.sceneDidDisconnect()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = v1 + 40;
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t ANFSceneActivityBridge.performOnSceneDidDisconnect(on:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2191F67A4(0, v6[2] + 1, 1, v6);
    *(v2 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_2191F67A4((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_218807D28;
  v10[5] = v5;
  *(v2 + 16) = v6;
  return swift_endAccess();
}

void sub_219694FFC()
{
  if (!qword_280E92100)
  {
    type metadata accessor for SportsBoxScoresTagFeedGroupConfigData();
    sub_219697EE0(&qword_280E98CA8, type metadata accessor for SportsBoxScoresTagFeedGroupConfigData);
    sub_219697EE0(&qword_280E98CB0, type metadata accessor for SportsBoxScoresTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E92100);
    }
  }
}

uint64_t type metadata accessor for SportsBoxScoresTagFeedGroupEmitter()
{
  result = qword_280E9ED00;
  if (!qword_280E9ED00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219695128()
{
  sub_219694FFC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsBoxScoresTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186CFDE4(319, &qword_280E8FD40);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_219695204()
{
  sub_219697894(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_219695284(uint64_t a1)
{
  v3 = type metadata accessor for SportsBoxScoresTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  v20 = a1;
  v18[0] = v1;
  sub_219697894(0, &qword_27CC12260, MEMORY[0x277D34470], MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_219697F28(v1, v6, type metadata accessor for SportsBoxScoresTagFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18[1] = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_21969637C(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v11 = v18[0];
  sub_219697F28(v18[0], v6, type metadata accessor for SportsBoxScoresTagFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_21969637C(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_219697F28(v11, v6, type metadata accessor for SportsBoxScoresTagFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_21969637C(v6, v14 + v7);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_219695568@<X0>(uint64_t *a1@<X8>)
{
  sub_219694FFC();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x4000000000000006;
  return result;
}

uint64_t sub_2196955E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SportsBoxScoresTagFeedGroupKnobs();
  a2[4] = sub_219697EE0(&qword_280EA4A20, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
  a2[5] = sub_219697EE0(&qword_27CC1DC48, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219697F28(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
}

unint64_t sub_2196956B0(uint64_t a1)
{
  v3 = sub_219BF0BD4();
  v33 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for SportsBoxScoresTagFeedGroupEmitter() + 20);
  LOBYTE(v43) = 20;
  sub_2189AD5C8();
  v35 = v7;
  v36 = a1;
  v42 = sub_219BEE964();
  v39 = MEMORY[0x277D84560];
  sub_219697894(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
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
  type metadata accessor for SportsBoxScoresTagFeedGroupKnobs();
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
  sub_219697894(0, &qword_280E8B8A0, MEMORY[0x277D32F00], v39);
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

uint64_t sub_219695C78()
{
  sub_219694FFC();

  return sub_219BEDCA4();
}

uint64_t sub_219695CA4@<X0>(uint64_t *a1@<X8>)
{
  sub_219697894(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_219694FFC();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A80EBC(inited + 32, sub_2188317B0);
  sub_219697894(0, &qword_27CC1DC50, type metadata accessor for SportsBoxScoresTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a1[3] = v5;
  a1[4] = sub_219697F90();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_219695E28()
{
  sub_219697EE0(&qword_27CC1DC38, type metadata accessor for SportsBoxScoresTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_219695FDC()
{
  sub_219BEF0B4();
  v0 = *(v11 + 16);

  v1 = *(v0 + 32);

  sub_219BEF0B4();
  v2 = *(v11 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult);

  if (v2)
  {
    MEMORY[0x28223BE20](v3);
    sub_219BF3824();
    sub_219BE3204();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    v5 = v1;

    v6 = sub_219BE2E54();
    sub_219697894(0, &qword_27CC12260, MEMORY[0x277D34470], MEMORY[0x277D83940]);
    sub_219BE2F74();

    v7 = sub_219BE2E54();
    v8 = sub_219BE2FD4();
  }

  else
  {
    v8 = sub_219BEEDD4();
    sub_219697EE0(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D32410], v8);
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_219696274(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BF2034();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219696478(*a1, v8);
  v9 = sub_219696C04(a3, v8);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_21969637C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsBoxScoresTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2196963E0(unint64_t *a1)
{
  v3 = *(type metadata accessor for SportsBoxScoresTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_219696274(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

size_t sub_219696478@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v34[4] = a2;
  sub_219697894(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v34 - v4;
  v40 = sub_219BF3484();
  v35 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = (v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_219BF3C84();
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF2124();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = MEMORY[0x277D84560];
  sub_219697894(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v11 = *(sub_219BF3E84() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v34[2] = *(v11 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09EC0;
  v34[3] = v13;
  v14 = v13 + v12;
  sub_219697894(0, &qword_280E8B860, MEMORY[0x277D333A8], v10);
  sub_219BF14C4();
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BF20F4();

  sub_219BF14A4();
  v17 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v17);
  sub_218F0BB90(v17);
  v34[1] = v14;
  sub_219BF3E74();
  if (a1 >> 62)
  {
    v18 = sub_219BF7214();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x277D84F90];
  if (!v18)
  {
LABEL_13:
    sub_218F0B984(v19);
    sub_218F0BA7C(v19);
    sub_218F0BB90(v19);
    sub_219BF3E74();
    v33 = sub_219BEC004();
    (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
    sub_219A95188(v19);
    sub_219A95188(v19);
    sub_219A951A0(v19);
    sub_219A951B8(v19);
    sub_219A952CC(v19);
    sub_219A952E4(v19);
    sub_219A953F8(v19);
    return sub_219BF2024();
  }

  v42 = MEMORY[0x277D84F90];
  result = sub_218C34A88(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v34[0] = v5;
    v21 = 0;
    v37 = a1 & 0xC000000000000001;
    v36 = *MEMORY[0x277D33E00];
    v22 = (v35 + 104);
    LODWORD(v35) = *MEMORY[0x277D34130];
    v23 = v42;
    v24 = (v41 + 104);
    v34[5] = v41 + 32;
    v25 = a1;
    v26 = v38;
    do
    {
      if (v37)
      {
        v27 = MEMORY[0x21CECE0F0](v21, a1);
      }

      else
      {
        v27 = *(a1 + 8 * v21 + 32);
      }

      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      v30 = v39;
      v29 = v40;
      *v39 = v28;
      (*v22)(v30, v36, v29);
      sub_219BF1AC4();
      (*v24)(v8, v35, v26);
      v42 = v23;
      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_218C34A88(v31 > 1, v32 + 1, 1);
        v23 = v42;
      }

      ++v21;
      *(v23 + 16) = v32 + 1;
      (*(v41 + 32))(v23 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v32, v8, v26);
      a1 = v25;
    }

    while (v18 != v21);
    v5 = v34[0];
    v19 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_219696C04(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_219697894(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v32 - v5;
  sub_219697894(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  sub_219697894(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v38 = sub_219BF2AB4();
  v12 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsBoxScoresTagFeedGroupConfigData();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v2 + *(type metadata accessor for SportsBoxScoresTagFeedGroupEmitter() + 24));
  v20 = v19[3];
  v35 = v19[4];
  v36 = v20;
  v34 = __swift_project_boxed_opaque_existential_1(v19, v20);
  sub_219694FFC();
  sub_219BEDD14();
  v33 = *(v16 + 28);
  sub_2189AD5C8();
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
  sub_219BEF0B4();
  v22 = *(v41 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v23 = sub_219BF35D4();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  LOBYTE(v40) = 20;
  sub_218A7F1DC(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v24 = *(v40 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  v25 = v37;
  sub_219BF3904();
  v26 = sub_219BF2774();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v27 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v28 = v33;
  v29 = sub_219BF2194();
  (*(v12 + 8))(v14, v38);
  v30 = sub_219BF1934();
  (*(*(v30 - 8) + 8))(&v18[v28], v30);
  return v29;
}

uint64_t sub_219697184(uint64_t a1)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196973B0(a1, v7);
  sub_219697F28(v7, v4, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_219697894(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v8 = sub_219BE3014();
  sub_218A80EBC(v7, type metadata accessor for TagFeedGroup);
  return v8;
}

uint64_t sub_2196973B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_219697894(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v21 = v19 - v4;
  v5 = sub_219BEF554();
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v19[0] = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = sub_219BF1904();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BED8D4();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  sub_219694FFC();
  v15 = sub_219BEDCB4();
  v19[1] = v16;
  v19[2] = v15;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for SportsBoxScoresTagFeedGroupEmitter();
  sub_2189AD5C8();
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v17 = sub_219BEE5D4();
  (*(*(v17 - 8) + 56))(v21, 1, 1, v17);
  sub_219BED854();
  (*(v12 + 32))(v22, v14, v20);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219697754()
{
  type metadata accessor for SportsBoxScoresTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_21877D2B0();
  return sub_219BEF194();
}

void sub_219697894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2196978F8(uint64_t a1)
{
  v2 = sub_219BF4684();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsBoxScoresTagFeedGroupEmitter();
  __swift_project_boxed_opaque_existential_1((a1 + *(v6 + 28)), *(a1 + *(v6 + 28) + 24));
  (*(v3 + 104))(v5, *MEMORY[0x277D34498], v2);
  v7 = sub_219BF4C14();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_219697A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v6 = sub_219BF4414();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  if (v6 >> 62)
  {
    v8 = sub_219BF7214();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v9;
  *(v7 + 32) = v8;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v10);
  v15[2] = a1;
  v15[3] = a2;
  v11 = sub_218DE0A58(sub_219697EC4, v15, v6);

  if (v11 >> 62)
  {
    result = sub_219BF7214();
    if (result)
    {
      goto LABEL_7;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    *a3 = v11;
    return result;
  }

  v13 = sub_219BEEDD4();
  sub_219697EE0(&qword_280E917E0, MEMORY[0x277D32430]);
  swift_allocError();
  (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D32428], v13);
  return swift_willThrow();
}

uint64_t sub_219697C84@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_219BF4654();
  v6 = [a2 alternativeFeedDescriptor];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 feedConfiguration];
  }

  else
  {
    v8 = [a2 feedConfiguration];
  }

  swift_getObjectType();
  v9 = swift_unknownObjectRetain();
  v10 = sub_218CD01A8(v9, v5, 20, v8);
  result = swift_unknownObjectRelease_n();
  *a3 = v10;
  return result;
}

uint64_t sub_219697D60()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
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

uint64_t sub_219697EE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219697F28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_219697F90()
{
  result = qword_27CC1DC58;
  if (!qword_27CC1DC58)
  {
    sub_219697894(255, &qword_27CC1DC50, type metadata accessor for SportsBoxScoresTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DC58);
  }

  return result;
}

uint64_t sub_219698018(void *a1)
{
  v2 = sub_219BE15B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FollowingNotificationsPrewarm();
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Strong = swift_unknownObjectUnownedLoadStrong();

  (*(v3 + 104))(v5, *MEMORY[0x277D2F508], v2);
  sub_219BDD0F4();

  (*(v3 + 8))(v5, v2);
  sub_219BDD274();
  sub_219BE1B94();
}

uint64_t sub_2196981E0(void *a1)
{
  v2 = sub_219BE15B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FollowingNotificationsPrewarm();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_219BF3BD4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  swift_storeEnumTagMultiPayload();
  sub_219BE1BA4();
  sub_218944194(v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Strong = swift_unknownObjectUnownedLoadStrong();

  (*(v3 + 104))(v5, *MEMORY[0x277D2F508], v2);
  sub_219BDD0F4();

  (*(v3 + 8))(v5, v2);
  sub_219BDD274();
  sub_219BE1B94();
}

uint64_t sub_2196985D0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21969BD0C(v6);
  return sub_219BF73E4();
}

void sub_21969864C(void *a1)
{
  sub_218D45728(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE3514();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v56 = a1;
    v12 = [v11 view];
    if (v12)
    {
      v13 = v12;
      v14 = [v11 dialogRequest];
      v15 = [v14 userInfo];

      sub_219BF5214();
      v55 = v1;
      __swift_project_boxed_opaque_existential_1((*&v1 + OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_engagementViewControllerFactory), *(*&v1 + OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_engagementViewControllerFactory + 24));
      sub_219BE3B84();

      sub_219BE39E4();

      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_21969DBC0(v5, sub_218D45728);
        return;
      }

      (*(v7 + 32))(v9, v5, v6);
      v17 = OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_engagementOverlayHandledPlacements;
      v18 = v55;
      swift_beginAccess();
      v19 = *(*&v18 + v17);

      v20 = sub_218C327A8(v9, v19);

      if ((v20 & 1) == 0)
      {

        (*(v7 + 8))(v9, v6);
        return;
      }

      sub_219BE8664();
      v21 = sub_219BE7BC4();

      v22 = [v11 popoverPresentationController];

      if (!v22)
      {
        (*(v7 + 8))(v9, v6);

        return;
      }

      [v22 sourceRect];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v64.origin.x = v24;
      v64.origin.y = v26;
      v64.size.width = v28;
      v64.size.height = v30;
      CGRectGetHeight(v64);
      sub_219BF6B64();
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      [v13 bounds];
      Height = CGRectGetHeight(v65);
      v40 = (*&v55 + OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_presentedOverlaySize);
      if (Height >= *(*&v55 + OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_presentedOverlaySize + 8) + -1.0)
      {
        [v13 frame];
        v42 = CGRectGetHeight(v66) + 16.0;
        v21 = v21;
        sub_219BF6084();
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v55 = v38;
        v49 = v36;
        v50 = v34;
        v51 = v32;
        v53 = v52;

        v67.origin.x = UIEdgeInsetsInsetRect(v44, v46, v48, v53, v42, 0.0);
        v68.origin.x = v51;
        v68.origin.y = v50;
        v68.size.width = v49;
        v68.size.height = v55;
        if (CGRectContainsRect(v67, v68))
        {
          (*(v7 + 8))(v9, v6);

          return;
        }

        v61 = sub_219698C90;
        v62 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v58 = 1107296256;
        v41 = &block_descriptor_21_3;
      }

      else
      {
        v61 = sub_219698C84;
        v62 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v58 = 1107296256;
        v41 = &block_descriptor_24_8;
      }

      v59 = sub_218793E0C;
      v60 = v41;
      v54 = _Block_copy(&aBlock);
      [v56 dismissViewControllerAnimated:1 completion:v54];

      _Block_release(v54);
      (*(v7 + 8))(v9, v6);
      *v40 = 0;
      v40[1] = 0;
    }

    else
    {

      v16 = v56;
    }
  }
}

void sub_219698C9C(const char *a1)
{
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F627F0);
  oslog = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, oslog, v3, a1, v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }
}

id sub_219698D8C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v52 = a3;
  v45 = a2;
  v51 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v51);
  v50 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDC104();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881168C(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v9 = v8;
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v10;
  sub_218853400();
  v13 = v12;
  v46 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE9834();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  result = [v20 representedElementCategory];
  if (result)
  {
    if (result == 1)
    {
      v22 = [v20 representedElementKind];
      v23 = v20;
      if (v22)
      {
        v24 = v22;
        v25 = sub_219BF5414();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      (*(v17 + 104))(v19, *MEMORY[0x277D6E758], v16);
      v33 = sub_219BE9824();
      v35 = v34;
      (*(v17 + 8))(v19, v16);
      if (v27)
      {
        if (v25 == v33 && v27 == v35)
        {

LABEL_16:
          *v52 = v23;
          return v23;
        }

        v36 = sub_219BF78F4();

        if (v36)
        {
          goto LABEL_16;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_219BE86A4();
    v53 = v54;
    sub_2187DD900();
    sub_2187A05D0(&qword_280EE5530, 255, sub_2187DD900);
    sub_219BE7B94();

    v28 = [v20 indexPath];
    sub_219BDC0B4();

    sub_219BEB344();
    (*(v48 + 8))(v7, v49);
    (*(v47 + 8))(v11, v9);
    v29 = v50;
    sub_219BE5FC4();
    (*(v46 + 8))(v15, v13);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_2186EAB00(0, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8]);
        v43 = *(v42 + 48);
        v44 = sub_219BF1584();
        (*(*(v44 - 8) + 8))(v29 + v43, v44);
        v30 = type metadata accessor for TodayGapLocation;
        goto LABEL_7;
      case 2u:
      case 3u:
      case 5u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
        v30 = type metadata accessor for TodayModel;
LABEL_7:
        v31 = v30;
        v32 = v29;
        goto LABEL_8;
      case 4u:
        sub_21969DBC0(v29, type metadata accessor for TodayModel);
        *v52 = v20;
        return v20;
      case 6u:
        sub_2186EAB00(0, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88);
        v38 = *(v37 + 48);
        sub_2186EAB88();
        (*(*(v39 - 8) + 8))(v29 + v38, v39);
        sub_2186EAD48();
        result = (*(*(v40 - 8) + 8))(v29, v40);
        break;
      default:

        sub_2186EA920();
        v31 = type metadata accessor for TodayGapLocation;
        v32 = v29 + *(v41 + 48);
LABEL_8:
        result = sub_21969DBC0(v32, v31);
        break;
    }
  }

  *v52 = 0;
  return result;
}

id sub_21969946C(void *a1)
{
  v2 = sub_219BE9834();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277D6E758], v2);
  sub_219BE9824();
  (*(v3 + 8))(v5, v2);
  v6 = sub_219BF53D4();

  v7 = sub_219BDC094();
  v8 = [a1 supplementaryViewForElementKind:v6 atIndexPath:v7];

  if (!v8)
  {
    v9 = sub_219BDC094();
    v8 = [a1 cellForItemAtIndexPath_];
  }

  return v8;
}

void sub_2196995F8(void *a1, char a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14)
{
  v105 = a14;
  v106 = a13;
  v107 = a12;
  v108 = a11;
  v23 = sub_219BE3514();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v27 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v104 = &v97 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v97 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v97 - v33;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    if (a2)
    {
      v107 = Strong;
      v37 = a1;
      if (qword_280EE60A0 != -1)
      {
        swift_once();
      }

      v38 = sub_219BE5434();
      __swift_project_value_buffer(v38, qword_280F627F0);
      (*(v24 + 16))(v32, v108, v23);
      v39 = a1;
      v40 = sub_219BE5414();
      v41 = sub_219BF61F4();
      sub_219087C70(a1, 1);
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        aBlock[0] = v43;
        *v42 = 136315394;
        sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550]);
        v44 = sub_219BF7894();
        v46 = v45;
        (*(v24 + 8))(v32, v23);
        v47 = sub_2186D1058(v44, v46, aBlock);

        *(v42 + 4) = v47;
        *(v42 + 12) = 2080;
        swift_getErrorValue();
        v48 = sub_219BF7A04();
        v50 = sub_2186D1058(v48, v49, aBlock);

        *(v42 + 14) = v50;
        _os_log_impl(&dword_2186C1000, v40, v41, "Failed to load assets for placement: [%s] [%s]", v42, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v43, -1, -1);
        MEMORY[0x21CECF960](v42, -1, -1);
        sub_219087C70(a1, 1);
      }

      else
      {
        sub_219087C70(a1, 1);

        (*(v24 + 8))(v32, v23);
      }

      v36 = v107;
    }

    else
    {
      if (qword_280EE60A0 != -1)
      {
        swift_once();
      }

      v51 = sub_219BE5434();
      v52 = __swift_project_value_buffer(v51, qword_280F627F0);
      v53 = v24 + 16;
      v103 = *(v24 + 16);
      v103(v34, v108, v23);
      v102 = v52;
      v54 = sub_219BE5414();
      v55 = v24;
      v56 = sub_219BF6214();
      if (os_log_type_enabled(v54, v56))
      {
        v57 = swift_slowAlloc();
        v97 = v57;
        v99 = swift_slowAlloc();
        aBlock[0] = v99;
        *v57 = 136315138;
        sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550]);
        v58 = v55;
        v98 = v55;
        v59 = sub_219BF7894();
        v100 = v53;
        v60 = v36;
        v62 = v61;
        v63 = v58;
        v27 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        v101 = *(v63 + 8);
        v101(v34, v23);
        v64 = sub_2186D1058(v59, v62, aBlock);
        v36 = v60;

        v65 = v97;
        *(v97 + 1) = v64;
        v66 = v56;
        v67 = v65;
        _os_log_impl(&dword_2186C1000, v54, v66, "Fetched overlay assets for placement: %s", v65, 0xCu);
        v68 = v99;
        __swift_destroy_boxed_opaque_existential_1(v99);
        MEMORY[0x21CECF960](v68, -1, -1);
        MEMORY[0x21CECF960](v67, -1, -1);

        v69 = v98;
      }

      else
      {

        v101 = *(v55 + 8);
        v101(v34, v23);
        v69 = v55;
      }

      [v107 contentOffset];
      if (v71 == a3 && v70 == a4)
      {
        v72 = v106;
        v73 = COERCE_DOUBLE(sub_219699FD4(a5, a6, a7, a8, a9, v36, v106));
        if ((v75 & 1) == 0)
        {
          v76 = v73;
          v77 = v74;
          v78 = [v72 popoverPresentationController];
          [v78 setPopoverLayoutMargins_];

          [v72 setPreferredContentSize_];
        }

        v79 = swift_unknownObjectWeakLoadStrong();
        if (v79)
        {
          v80 = v79;
          v81 = v104;
          v103(v104, v108, v23);
          v82 = v69;
          v83 = (*(v69 + 80) + 32) & ~*(v69 + 80);
          v84 = swift_allocObject();
          *(v84 + 16) = v36;
          *(v84 + 24) = v72;
          (*(v82 + 32))(v84 + v83, v81, v23);
          *(v84 + ((v25 + v83 + 7) & 0xFFFFFFFFFFFFFFF8)) = v105;
          aBlock[4] = sub_21969D9F4;
          aBlock[5] = v84;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_218793E0C;
          aBlock[3] = &block_descriptor_154;
          v85 = _Block_copy(aBlock);
          v86 = v36;
          v87 = v72;

          [v80 presentViewController:v87 animated:1 completion:v85];
          _Block_release(v85);
        }
      }

      else
      {
        v103(v27, v108, v23);
        v88 = sub_219BE5414();
        v89 = sub_219BF6214();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          aBlock[0] = v91;
          *v90 = 136315138;
          sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550]);
          v92 = sub_219BF7894();
          v93 = v36;
          v95 = v94;
          v101(v27, v23);
          v96 = sub_2186D1058(v92, v95, aBlock);
          v36 = v93;

          *(v90 + 4) = v96;
          _os_log_impl(&dword_2186C1000, v88, v89, "Feed offset changed since start of fetch. Skipping presentation for placement: %s", v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v91);
          MEMORY[0x21CECF960](v91, -1, -1);
          MEMORY[0x21CECF960](v90, -1, -1);
        }

        else
        {

          v101(v27, v23);
        }
      }
    }

    *(v36 + OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_isFetchingAssets) = 0;
  }
}

id sub_219699FD4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, uint64_t a6, void *a7)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = [result traitCollection];

    if (!v15)
    {
      return 0;
    }

    v16 = [v15 verticalSizeClass];
    v17 = [v15 horizontalSizeClass];
    if (v16 == 1)
    {
      if ((v17 - 1) > 1)
      {
LABEL_10:

        return 0;
      }
    }

    else if (v16 != 2 || v17 != 1)
    {
      goto LABEL_10;
    }

    result = [a7 view];
    if (result)
    {
      v18 = result;
      v20.origin.x = a1;
      v20.origin.y = a2;
      v20.size.width = a3;
      v20.size.height = a4;
      [result sizeThatFits_];

      v21.origin.x = a1;
      v21.origin.y = a2;
      v21.size.width = a3;
      v21.size.height = a4;
      Width = CGRectGetWidth(v21);

      return *&Width;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_21969A14C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE3514();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  result = [a2 view];
  if (result)
  {
    v19 = result;
    v47 = a4;
    v49 = v12;
    [result frame];
    v21 = v20;
    v23 = v22;

    v24 = (a1 + OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_presentedOverlaySize);
    *v24 = v21;
    v24[1] = v23;
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v25 = sub_219BE5434();
    __swift_project_value_buffer(v25, qword_280F627F0);
    v48 = *(v9 + 16);
    v48(v17, a3, v8);
    v26 = sub_219BE5414();
    v27 = sub_219BF6214();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v45 = v15;
      v29 = v28;
      v30 = swift_slowAlloc();
      v46 = v9;
      v44 = v30;
      v50[0] = v30;
      *v29 = 136315138;
      sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550]);
      v31 = sub_219BF7894();
      v32 = a3;
      v34 = v33;
      v35 = v17;
      v36 = *(v46 + 8);
      v36(v35, v8);
      v37 = sub_2186D1058(v31, v34, v50);
      a3 = v32;

      *(v29 + 4) = v37;
      _os_log_impl(&dword_2186C1000, v26, v27, "Engagement overlay presented for placement: %s", v29, 0xCu);
      v38 = v44;
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x21CECF960](v38, -1, -1);
      v39 = v29;
      v15 = v45;
      MEMORY[0x21CECF960](v39, -1, -1);
    }

    else
    {

      v40 = v17;
      v36 = *(v9 + 8);
      v36(v40, v8);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_219A17764(a3);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    v41 = sub_218F6E46C(a3);
    swift_endAccess();

    v42 = v49;
    v48(v49, a3, v8);
    swift_beginAccess();
    sub_21949A750(v15, v42);
    swift_endAccess();
    return (v36)(v15, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21969A574()
{
  v0 = sub_219BF1E04();
  if (*(v0 + 16))
  {
    v1 = sub_21870F700(0x652D726564616568, 0xEE00776F72626579);
    if (v2)
    {
      v3 = *(*(v0 + 56) + 8 * v1);

      if (v3 >> 62)
      {
        if (!sub_219BF7214())
        {
          goto LABEL_30;
        }
      }

      else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        goto LABEL_24;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      __break(1u);
    }
  }

  v4 = sub_219BF1E04();
  if (*(v4 + 16))
  {
    v5 = sub_21870F700(0x742D726564616568, 0xEC000000656C7469);
    if (v6)
    {
      v3 = *(*(v4 + 56) + 8 * v5);

      if (v3 >> 62)
      {
        if (!sub_219BF7214())
        {
          goto LABEL_30;
        }
      }

      else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      if ((v3 & 0xC000000000000001) == 0)
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

LABEL_21:
        v11 = *(v3 + 32);
LABEL_22:
        v12 = v11;

        return v12;
      }

LABEL_24:
      v11 = MEMORY[0x21CECE0F0](0, v3);
      goto LABEL_22;
    }
  }

LABEL_15:

  v7 = sub_219BF1E04();
  if (!*(v7 + 16))
  {
    goto LABEL_30;
  }

  v8 = sub_21870F700(0xD000000000000013, 0x8000000219D2CD90);
  if ((v9 & 1) == 0)
  {
    goto LABEL_30;
  }

  v3 = *(*(v7 + 56) + 8 * v8);

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

LABEL_30:

    return 0;
  }

  result = sub_219BF7214();
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_19:
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void *sub_21969A79C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_subtitleLabel);
  v3 = [v2 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_219BF5414();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      goto LABEL_9;
    }
  }

  v2 = *(a1 + OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_titleLabel);
  v9 = [v2 text];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = sub_219BF5414();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    return 0;
  }

LABEL_9:
  v15 = v2;
  return v2;
}

void sub_21969A94C(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v8 = a2;
    if ([v8 style]== 2)
    {
      [a1 dismissViewControllerAnimated:1 completion:0];
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_219791344(v8, a3);

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v5 = sub_219BE5434();
    __swift_project_value_buffer(v5, qword_280F627F0);
    v8 = sub_219BE5414();
    v6 = sub_219BF6214();
    if (os_log_type_enabled(v8, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2186C1000, v8, v6, "TodayEngagementOverlayManager didSelectAction called with no dialog action", v7, 2u);
      MEMORY[0x21CECF960](v7, -1, -1);
    }
  }
}

uint64_t sub_21969AADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE3514();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v64 - v13;
  v15 = sub_219BE34A4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v18, a2, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == *MEMORY[0x277D31438])
  {
    (*(v16 + 96))(v18, v15);
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v20 = sub_219BE5434();
    __swift_project_value_buffer(v20, qword_280F627F0);
    (*(v6 + 16))(v12, a3, v5);
    v21 = sub_219BE5414();
    v22 = sub_219BF6214();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v66 = a3;
      v25 = v24;
      v69[0] = v24;
      *v23 = 136315138;
      sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550]);
      v26 = sub_219BF7894();
      v28 = v27;
      (*(v6 + 8))(v12, v5);
      v29 = sub_2186D1058(v26, v28, v69);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_2186C1000, v21, v22, "TodayEngagementOverlayManager received event handler's dismiss request for placement: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v30 = v25;
      a3 = v66;
      MEMORY[0x21CECF960](v30, -1, -1);
      MEMORY[0x21CECF960](v23, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v12, v5);
    }

    swift_beginAccess();
    v42 = sub_218F6E46C(a3);
    swift_endAccess();

    v43 = sub_219BE3794();
    return (*(*(v43 - 8) + 8))(v18, v43);
  }

  else if (v19 == *MEMORY[0x277D31448])
  {
    (*(v16 + 96))(v18, v15);
    v31 = *v18;
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v32 = sub_219BE5434();
    __swift_project_value_buffer(v32, qword_280F627F0);
    (*(v6 + 16))(v14, a3, v5);
    v33 = sub_219BE5414();
    v34 = sub_219BF6214();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = a3;
      v69[0] = v65;
      *v35 = 136315138;
      sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550]);
      v36 = sub_219BF7894();
      v37 = v31;
      v39 = v38;
      (*(v6 + 8))(v14, v5);
      v40 = sub_2186D1058(v36, v39, v69);
      v31 = v37;

      *(v35 + 4) = v40;
      _os_log_impl(&dword_2186C1000, v33, v34, "TodayEngagementOverlayManager received event handler's process request for placement: %s", v35, 0xCu);
      v41 = v65;
      __swift_destroy_boxed_opaque_existential_1(v65);
      a3 = v66;
      MEMORY[0x21CECF960](v41, -1, -1);
      MEMORY[0x21CECF960](v35, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v14, v5);
    }

    sub_21901CEB4(0, &unk_280E8E5A0, &unk_280E8E590);
    v55 = *(v54 + 48);
    v56 = OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_engagementOverlayDialogRequests;
    v57 = v67;
    swift_beginAccess();
    v58 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(v57 + v56);
    *(v57 + v56) = 0x8000000000000000;
    sub_21948E624(v58, a3, isUniquelyReferenced_nonNull_native);
    *(v57 + v56) = v68;
    swift_endAccess();

    v60 = sub_219BE3794();
    return (*(*(v60 - 8) + 8))(v18 + v55, v60);
  }

  else if (v19 == *MEMORY[0x277D31440])
  {
    (*(v16 + 96))(v18, v15);

    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v45 = sub_219BE5434();
    __swift_project_value_buffer(v45, qword_280F627F0);
    (*(v6 + 16))(v9, a3, v5);
    v46 = sub_219BE5414();
    v47 = sub_219BF6214();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v69[0] = v49;
      *v48 = 136315138;
      sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550]);
      v50 = sub_219BF7894();
      v52 = v51;
      (*(v6 + 8))(v9, v5);
      v53 = sub_2186D1058(v50, v52, v69);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_2186C1000, v46, v47, "TodayEngagementOverlayManager received event handler's present request for placement: %s ** Unsupported", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x21CECF960](v49, -1, -1);
      MEMORY[0x21CECF960](v48, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    sub_21901CEB4(0, &qword_27CC1DCC0, &qword_27CC15298);
    v62 = *(v61 + 48);
    v63 = sub_219BE3794();
    return (*(*(v63 - 8) + 8))(v18 + v62, v63);
  }

  else
  {
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_21969B3F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE3514();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v63 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v63 - v12;
  v14 = sub_219BE34A4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x277D31438])
  {
    (*(v15 + 96))(v17, v14);
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v19 = sub_219BE5434();
    __swift_project_value_buffer(v19, qword_280F627F0);
    (*(v5 + 16))(v11, a2, v4);
    v20 = sub_219BE5414();
    v21 = sub_219BF6214();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v65 = a2;
      v24 = v23;
      v68[0] = v23;
      *v22 = 136315138;
      sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550]);
      v25 = sub_219BF7894();
      v27 = v26;
      (*(v5 + 8))(v11, v4);
      v28 = sub_2186D1058(v25, v27, v68);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_2186C1000, v20, v21, "TodayEngagementOverlayManager received UI Event observer's dismiss request for placement: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      v29 = v24;
      a2 = v65;
      MEMORY[0x21CECF960](v29, -1, -1);
      MEMORY[0x21CECF960](v22, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    swift_beginAccess();
    v41 = sub_218F6E46C(a2);
    swift_endAccess();

    v42 = sub_219BE3794();
    return (*(*(v42 - 8) + 8))(v17, v42);
  }

  else if (v18 == *MEMORY[0x277D31448])
  {
    (*(v15 + 96))(v17, v14);
    v30 = *v17;
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v31 = sub_219BE5434();
    __swift_project_value_buffer(v31, qword_280F627F0);
    (*(v5 + 16))(v13, a2, v4);
    v32 = sub_219BE5414();
    v33 = sub_219BF6214();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v65 = a2;
      v68[0] = v64;
      *v34 = 136315138;
      sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550]);
      v35 = sub_219BF7894();
      v36 = v30;
      v38 = v37;
      (*(v5 + 8))(v13, v4);
      v39 = sub_2186D1058(v35, v38, v68);
      v30 = v36;

      *(v34 + 4) = v39;
      _os_log_impl(&dword_2186C1000, v32, v33, "TodayEngagementOverlayManager received UI Event observer's process request for placement: %s", v34, 0xCu);
      v40 = v64;
      __swift_destroy_boxed_opaque_existential_1(v64);
      a2 = v65;
      MEMORY[0x21CECF960](v40, -1, -1);
      MEMORY[0x21CECF960](v34, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v13, v4);
    }

    sub_21901CEB4(0, &unk_280E8E5A0, &unk_280E8E590);
    v54 = *(v53 + 48);
    v55 = OBJC_IVAR____TtC7NewsUI229TodayEngagementOverlayManager_engagementOverlayDialogRequests;
    v56 = v66;
    swift_beginAccess();
    v57 = v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = *(v56 + v55);
    *(v56 + v55) = 0x8000000000000000;
    sub_21948E624(v57, a2, isUniquelyReferenced_nonNull_native);
    *(v56 + v55) = v67;
    swift_endAccess();
    sub_21880E84C();

    v59 = sub_219BE3794();
    return (*(*(v59 - 8) + 8))(v17 + v54, v59);
  }

  else if (v18 == *MEMORY[0x277D31440])
  {
    (*(v15 + 96))(v17, v14);

    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v44 = sub_219BE5434();
    __swift_project_value_buffer(v44, qword_280F627F0);
    (*(v5 + 16))(v8, a2, v4);
    v45 = sub_219BE5414();
    v46 = sub_219BF6214();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v68[0] = v48;
      *v47 = 136315138;
      sub_2187A05D0(&qword_280EE6670, 255, MEMORY[0x277D31550]);
      v49 = sub_219BF7894();
      v51 = v50;
      (*(v5 + 8))(v8, v4);
      v52 = sub_2186D1058(v49, v51, v68);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_2186C1000, v45, v46, "TodayEngagementOverlayManager received UI Event observer's present request for placement: %s ** Unsupported", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x21CECF960](v48, -1, -1);
      MEMORY[0x21CECF960](v47, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    sub_21901CEB4(0, &qword_27CC1DCC0, &qword_27CC15298);
    v61 = *(v60 + 48);
    v62 = sub_219BE3794();
    return (*(*(v62 - 8) + 8))(v17 + v61, v62);
  }

  else
  {
    return (*(v15 + 8))(v17, v14);
  }
}

void sub_21969BD0C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2186C6148(0, &qword_280E8DBF0);
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21969BF1C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_21969BE20(0, v2, 1, a1);
  }
}

void sub_21969BE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 frame];
      v15 = v14;
      [v13 frame];
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21969BF1C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_218C81048(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_21969C594((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_218C81048(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_218C80FBC(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 frame];
      v19 = v18;
      [v17 frame];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 frame];
        v27 = v26;
        [v25 frame];
        v29 = v28;

        ++v22;
        ++v14;
        if (v19 < v21 == v27 >= v29)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v19 < v21)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2191F6B60(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_2191F6B60((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_21969C594((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_218C81048(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_218C80FBC(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 frame];
    v48 = v47;
    [v46 frame];
    v50 = v49;

    if (v48 >= v50)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_21969C594(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 frame];
        v35 = v34;
        [v33 frame];
        v37 = v36;

        if (v35 < v37)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 frame];
        v19 = v18;
        [v17 frame];
        v21 = v20;

        if (v19 >= v21)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

void sub_21969C854(uint64_t a1, void *a2)
{
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F627F0);
  v4 = a2;
  oslog = sub_219BE5414();
  v5 = sub_219BF6214();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_219BF7A04();
    v10 = sub_2186D1058(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2186C1000, oslog, v5, "TodayEngagementOverlayManager failed fetching event with error= %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  else
  {
  }
}

void sub_21969C9EC()
{
  if (!qword_280EE4D60)
  {
    sub_219BF1E14();
    sub_2187A05D0(&unk_280E905B0, 255, MEMORY[0x277D33638]);
    v0 = sub_219BE8224();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4D60);
    }
  }
}

void sub_21969CA84(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_219BE38D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a2, v8);
  v12 = (*(v9 + 88))(v11, v8);
  v13 = 0uLL;
  if (v12 == *MEMORY[0x277D31780])
  {
    goto LABEL_2;
  }

  if (v12 == *MEMORY[0x277D31788])
  {
    v16 = sub_21969A79C(a1);
    if (v16)
    {
      v17 = v16;
      [v16 bounds];
      [v17 intrinsicContentSize];
      sub_219BF6B14();
      [v17 convertRect:a3 toCoordinateSpace:?];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      *&v13 = UIEdgeInsetsInsetRect(v19, v21, v23, v25, -10.0, 0.0);
    }

    else
    {
      [a1 frame];
    }

    goto LABEL_18;
  }

  if (v12 != *MEMORY[0x277D31770])
  {
    if (v12 == *MEMORY[0x277D31778])
    {
      v28 = *&a1[OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_moreActionsButton];
      if (![v28 isHidden])
      {
        [v28 bounds];
        [v28 convertRect:a3 toCoordinateSpace:?];
        *&v13 = CGRectInset(v34, -10.0, -10.0);
LABEL_18:
        v14 = 0;
        *(&v13 + 1) = v26;
        *(&v15 + 1) = v27;
        goto LABEL_19;
      }

      if (qword_280EE60A0 != -1)
      {
        swift_once();
      }

      v29 = sub_219BE5434();
      __swift_project_value_buffer(v29, qword_280F627F0);
      v30 = sub_219BE5414();
      v31 = sub_219BF6214();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2186C1000, v30, v31, "returning nil targetFrame for anchor .ellipsisButton since view is hidden", v32, 2u);
        MEMORY[0x21CECF960](v32, -1, -1);
      }
    }

    else
    {
      (*(v9 + 8))(v11, v8, 0);
    }

    v14 = 1;
    v15 = 0uLL;
    v13 = 0uLL;
    goto LABEL_19;
  }

LABEL_2:
  v14 = 1;
  v15 = 0uLL;
LABEL_19:
  *a4 = v13;
  *(a4 + 16) = v15;
  *(a4 + 32) = v14;
}

void sub_21969CDEC(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_219BE38D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  v13 = 0uLL;
  if (v12 == *MEMORY[0x277D31780])
  {
    v14 = 1;
    v15 = 0uLL;
    goto LABEL_70;
  }

  if (v12 != *MEMORY[0x277D31788])
  {
    if (v12 == *MEMORY[0x277D31770])
    {
      v16 = sub_219BF1E04();
      if (!v16[2])
      {
        goto LABEL_34;
      }

      v24 = sub_21870F700(0xD000000000000011, 0x8000000219D2CD50);
      if ((v25 & 1) == 0)
      {
        goto LABEL_34;
      }

      v26 = *(v16[7] + 8 * v24);

      if (v26 >> 62)
      {
        if (sub_219BF7214())
        {
          goto LABEL_12;
        }
      }

      else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_12:
        if ((v26 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x21CECE0F0](0, v26);
LABEL_15:
          v16 = v27;

          if ([v16 isHidden])
          {
            if (qword_280EE60A0 != -1)
            {
              swift_once();
            }

            v28 = sub_219BE5434();
            __swift_project_value_buffer(v28, qword_280F627F0);
            v29 = sub_219BE5414();
            v30 = sub_219BF6214();
            if (!os_log_type_enabled(v29, v30))
            {
              goto LABEL_33;
            }

            v31 = swift_slowAlloc();
            *v31 = 0;
            v32 = "returning nil targetFrame for anchor .plusButton since view is hidden";
            goto LABEL_32;
          }

          goto LABEL_71;
        }

        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v27 = *(v26 + 32);
          goto LABEL_15;
        }

        __break(1u);
        goto LABEL_77;
      }
    }

    else
    {
      if (v12 != *MEMORY[0x277D31778])
      {
        (*(v9 + 8))(v11, v8, 0);
        goto LABEL_36;
      }

      v16 = sub_219BF1E04();
      if (!v16[2])
      {
        goto LABEL_34;
      }

      v33 = sub_21870F700(0xD000000000000017, 0x8000000219D2CD30);
      if ((v34 & 1) == 0)
      {
        goto LABEL_34;
      }

      v26 = *(v16[7] + 8 * v33);

      if (v26 >> 62)
      {
LABEL_77:
        if (!sub_219BF7214())
        {
          goto LABEL_34;
        }

LABEL_25:
        if ((v26 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x21CECE0F0](0, v26);
        }

        else
        {
          if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_81;
          }

          v35 = *(v26 + 32);
        }

        v16 = v35;

        if ([v16 isHidden])
        {
          if (qword_280EE60A0 == -1)
          {
LABEL_30:
            v36 = sub_219BE5434();
            __swift_project_value_buffer(v36, qword_280F627F0);
            v29 = sub_219BE5414();
            v30 = sub_219BF6214();
            if (!os_log_type_enabled(v29, v30))
            {
LABEL_33:

LABEL_36:
              v14 = 1;
              v15 = 0uLL;
              v13 = 0uLL;
              goto LABEL_70;
            }

            v31 = swift_slowAlloc();
            *v31 = 0;
            v32 = "returning nil targetFrame for anchor .ellipsisButton since view is hidden";
LABEL_32:
            _os_log_impl(&dword_2186C1000, v29, v30, v32, v31, 2u);
            MEMORY[0x21CECF960](v31, -1, -1);
            goto LABEL_33;
          }

LABEL_89:
          swift_once();
          goto LABEL_30;
        }

LABEL_71:
        [v16 frame];
        [a2 convertRect:a3 toCoordinateSpace:?];
        v107 = CGRectInset(v106, -10.0, -10.0);
        size = v107.size;
        origin = v107.origin;
        v99 = *&v107.origin.y;
        v100 = *&v107.size.height;

        *&v15 = size.width;
        *&v13 = origin.x;
        v14 = 0;
        *(&v13 + 1) = v99;
        *(&v15 + 1) = v100;
        goto LABEL_70;
      }

      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }
    }

LABEL_34:

    goto LABEL_36;
  }

  v16 = sub_21969A574();
  if (v16)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      [v17 frame];
      [v18 intrinsicContentSize];
      sub_219BF6B14();
      [a2 convertRect:a3 toCoordinateSpace:?];
      v23 = -10.0;
LABEL_60:
      v53.x = UIEdgeInsetsInsetRect(v19, v20, v21, v22, v23, 0.0);
      goto LABEL_61;
    }

    sub_219BF1474();
    v37 = swift_dynamicCastClass();
    if (v37)
    {
      a1 = v37;
      v11 = v16;
      v38 = sub_219BF1464();
      if (!*(v38 + 16))
      {
        goto LABEL_49;
      }

      v39 = sub_21870F700(0xD000000000000014, 0x8000000219D2CD70);
      if ((v40 & 1) == 0)
      {
        goto LABEL_49;
      }

      v26 = *(*(v38 + 56) + 8 * v39);

      if (!(v26 >> 62))
      {
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_42:
          if ((v26 & 0xC000000000000001) != 0)
          {
            v41 = MEMORY[0x21CECE0F0](0, v26);
          }

          else
          {
            if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_87;
            }

            v41 = *(v26 + 32);
          }

          v42 = v41;

          sub_219BEB3F4();
          if (swift_dynamicCastClass())
          {
            v43 = sub_219BEB3D4();
            if (v43)
            {
              v44 = v43;
              [v43 size];

              [a1 frame];
              [a2 convertRect:a3 toCoordinateSpace:?];
              v46 = v45;
              v48 = v47;
              v50 = v49;
              v52 = v51;

LABEL_59:
              v23 = -10.0;
              v19 = v46;
              v20 = v48;
              v21 = v50;
              v22 = v52;
              goto LABEL_60;
            }
          }

LABEL_50:
          v57 = sub_219BF1464();
          if (*(v57 + 16))
          {
            v58 = sub_21870F700(0x742D726564616568, 0xEC000000656C7469);
            if (v59)
            {
              v26 = *(*(v57 + 56) + 8 * v58);

              if (v26 >> 62)
              {
                if (sub_219BF7214())
                {
LABEL_54:
                  if ((v26 & 0xC000000000000001) == 0)
                  {
                    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      v60 = *(v26 + 32);
LABEL_57:
                      v61 = v60;

                      [v61 frame];
                      sub_219BF6B14();
                      [a2 convertRect:a3 toCoordinateSpace:?];
                      v46 = v62;
                      v48 = v63;
                      v50 = v64;
                      v52 = v65;

                      goto LABEL_59;
                    }

                    __break(1u);
                    goto LABEL_89;
                  }

LABEL_87:
                  v60 = MEMORY[0x21CECE0F0](0, v26);
                  goto LABEL_57;
                }
              }

              else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_54;
              }
            }
          }

          v66 = v11;
          [a1 frame];
          [a1 frame];
          v68 = v67;
          v70 = v69;
          v72 = v71;
          v74 = v73;

          v104.origin.x = v68;
          v104.origin.y = v70;
          v104.size.width = v72;
          v104.size.height = v74;
          CGRectGetWidth(v104);
          sub_219BF6B14();
          [a2 convertRect:a3 toCoordinateSpace:?];
          v46 = v75;
          v48 = v76;
          v50 = v77;
          v52 = v78;

          goto LABEL_59;
        }

LABEL_49:

        goto LABEL_50;
      }

LABEL_81:
      if (sub_219BF7214())
      {
        goto LABEL_42;
      }

      goto LABEL_49;
    }
  }

  [a2 frame];
LABEL_61:
  size = v55;
  origin = v53;
  v99 = v56;
  v100 = v54;
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v79 = sub_219BE5434();
  __swift_project_value_buffer(v79, qword_280F627F0);
  v80 = v16;
  v81 = sub_219BE5414();
  v82 = sub_219BF6214();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v103 = v84;
    *v83 = 136315394;
    v105.size.width = size.width;
    v105.origin.x = origin.x;
    *&v105.size.height = v99;
    *&v105.origin.y = v100;
    v85 = NSStringFromCGRect(v105);
    v86 = sub_219BF5414();
    v88 = v87;

    v89 = sub_2186D1058(v86, v88, &v103);

    *(v83 + 4) = v89;
    *(v83 + 12) = 2080;
    if (v16)
    {
      [v80 frame];
    }

    else
    {
      v90 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
    }

    v94 = NSStringFromCGRect(*&v90);
    v95 = sub_219BF5414();
    v97 = v96;

    v98 = sub_2186D1058(v95, v97, &v103);

    *(v83 + 14) = v98;
    _os_log_impl(&dword_2186C1000, v81, v82, "targetFrame for anchor .title %s titleViewFrame: %s", v83, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v84, -1, -1);
    MEMORY[0x21CECF960](v83, -1, -1);
  }

  else
  {
  }

  v14 = 0;
  *&v13 = origin.x;
  *&v15 = size.width;
  *(&v13 + 1) = v100;
  *(&v15 + 1) = v99;
LABEL_70:
  *a4 = v13;
  *(a4 + 16) = v15;
  *(a4 + 32) = v14;
}

void sub_21969D8FC(void *a1, char a2)
{
  v5 = *(sub_219BE3514() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + 16);
  v13 = *(v2 + v7);
  v14 = *(v2 + v9);
  v15 = *(v2 + v8);
  v16 = *(v2 + v8 + 8);
  v17 = *(v2 + v10);
  v18 = *(v2 + v10 + 8);
  v19 = *(v2 + v10 + 16);
  v20 = *(v2 + v10 + 24);
  v21 = *(v2 + v11);
  v22 = *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_2196995F8(a1, a2 & 1, v15, v16, v17, v18, v19, v20, v21, v12, v2 + v6, v13, v14, v22);
}

id sub_21969D9F4()
{
  v1 = *(sub_219BE3514() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21969A14C(v3, v4, v0 + v2, v5);
}

uint64_t sub_21969DA84(uint64_t a1)
{
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F627F0);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "TodayEngagementOverlayManager: didEnqueueImpression", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_219A18494(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21969DBC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21969DD4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21969E250(0, &qword_280E8C708, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21969E1FC();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 1;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21969DFA0(void *a1)
{
  sub_21969E250(0, &qword_27CC1DD50, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21969E1FC();
  sub_219BF7B44();
  v9[15] = 0;
  sub_218A30220();
  sub_219BF7834();
  if (!v1)
  {
    v9[14] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21969E154(uint64_t a1)
{
  v2 = sub_21969E1FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21969E190(uint64_t a1)
{
  v2 = sub_21969E1FC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21969E1FC()
{
  result = qword_280E95178[0];
  if (!qword_280E95178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E95178);
  }

  return result;
}

void sub_21969E250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21969E1FC();
    v7 = a3(a1, &type metadata for ArticleListAudioHistoryFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21969E2C8()
{
  result = qword_27CC1DD58[0];
  if (!qword_27CC1DD58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC1DD58);
  }

  return result;
}

unint64_t sub_21969E320()
{
  result = qword_280E95168;
  if (!qword_280E95168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E95168);
  }

  return result;
}

unint64_t sub_21969E378()
{
  result = qword_280E95170;
  if (!qword_280E95170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E95170);
  }

  return result;
}

uint64_t sub_21969E3CC()
{
  v40 = type metadata accessor for MagazineFeedModel(0);
  v1 = MEMORY[0x28223BE20](v40);
  v38 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v39 = &v29 - v3;
  sub_218953870();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951DB0();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v36 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195762F0();
  v35 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21969E948(0, &qword_280EE3600, MEMORY[0x277D6EC60]);
  MEMORY[0x28223BE20](v16);
  (*(v18 + 16))(&v29 - v17, v0);
  result = sub_218B19138();
  v34 = *(result + 16);
  if (v34)
  {
    v20 = 0;
    v33 = result + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v31 = result;
    v32 = v11 + 16;
    v30 = v11;
    while (1)
    {
      if (v20 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v21 = *(v11 + 72);
      v37 = v20;
      (*(v11 + 16))(v36, v33 + v21 * v20, v10);
      sub_21969EA3C(&unk_280EE5940, sub_218951DB0);
      sub_219BF56A4();
      v22 = *(v35 + 36);
      sub_21969EA3C(&qword_280EE5938, sub_218951DB0);
LABEL_7:
      sub_219BF5E84();
      if (*&v15[v22] != v41[0])
      {
        break;
      }

      v20 = v37 + 1;
      sub_21969EAE8(v15, sub_2195762F0);
      v11 = v30;
      result = v31;
      if (v20 == v34)
      {
        goto LABEL_10;
      }
    }

    v23 = sub_219BF5EC4();
    (*(v6 + 16))(v8);
    v23(v41, 0);
    sub_219BF5E94();
    v24 = v39;
    sub_219BE5FC4();
    (*(v6 + 8))(v8, v5);
    v25 = v24;
    v26 = v38;
    sub_21969EA84(v25, v38);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v27 = sub_219BF1584();
        (*(*(v27 - 8) + 8))(v26, v27);
        goto LABEL_7;
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
        sub_21969EAE8(v26, type metadata accessor for MagazineFeedModel);
        goto LABEL_7;
      default:

        sub_2186F6F00();
        sub_21969EAE8(v26 + *(v28 + 48), type metadata accessor for MagazineFeedGapLocation);
        sub_21969EAE8(v15, sub_2195762F0);
        result = 0;
        break;
    }
  }

  else
  {
LABEL_10:

    return 1;
  }

  return result;
}

void sub_21969E948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor();
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_21969EA3C(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    v8[3] = sub_21969EA3C(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21969EA3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21969EA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21969EAE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21969EB48()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_21969EBFC()
{
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0);
  v0 = sub_219BF66A4();
  sub_219BE2F94();

  v1 = sub_219BE2E54();
  sub_219BE2FE4();
}

void sub_21969ED38(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  *v6 = *a1;
  v7 = v3;
  v8 = *(a1 + 32);
  (*(*(v2 + 88) + 40))(v6, *(v2 + 80));
  sub_21969F774();
  sub_21969F7F0();

  sub_219BE6EF4();

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_6;
  }

  v4 = [v6[0] name];
  if (!v4)
  {
    sub_219BF5414();
    v4 = sub_219BF53D4();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = sub_219BF65B4();
    [v5 setTitle_];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
LABEL_6:

    return;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_21969EEE4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v1 = off_282A345F8;
      type metadata accessor for SportsNavigationViewController();
      v1();
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21969EF98()
{
  v0 = sub_219BF1584();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6148(0, &qword_280E8D790);
  v4 = sub_219BF6F44();
  sub_219BF61F4();
  sub_219BE5314();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = v1;
    v14 = v0;
    v12[1] = "g SportsNavigation prewarm";
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = objc_opt_self();
    v8 = [v7 bundleForClass_];
    sub_219BDB5E4();

    v9 = [v7 bundleForClass_];
    sub_219BDB5E4();

    sub_219BF1514();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_21969F548();
      swift_unknownObjectRelease();
    }

    v11 = v13;
    v10 = v14;
    swift_unknownObjectRelease();
    return (*(v11 + 8))(v3, v10);
  }

  return result;
}

uint64_t sub_21969F258()
{
  v0 = type metadata accessor for SportsNavigationRouteModel();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189DADA8();
  sub_219BE5FC4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v4 = Strong;
  swift_unknownObjectRetain();
  sub_219BDD644();
  __swift_project_boxed_opaque_existential_1((v4 + 48), *(v4 + 72));
  sub_218FAAA9C(v2);

  sub_21969F45C(v2);
  return swift_unknownObjectRelease();
}

uint64_t *sub_21969F340()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21969F3E4()
{
  sub_21969F340();

  return swift_deallocClassInstance();
}

uint64_t sub_21969F45C(uint64_t a1)
{
  v2 = type metadata accessor for SportsNavigationRouteModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21969F4B8()
{
  v0 = off_282A667C8[0];
  type metadata accessor for SportsNavigationDataManager();
  return v0();
}

uint64_t sub_21969F548()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  *v7 = sub_219BF1554();
  v7[1] = v8;
  v7[7] = sub_219BF1534();
  v7[8] = v9;
  v10 = sub_219BE5AA4();
  v11 = MEMORY[0x277D6D2E8];
  v7[5] = v10;
  v7[6] = v11;
  __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  sub_219BE5A64();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_21969F774()
{
  if (!qword_27CC1DDE0)
  {
    sub_2189520BC();
    sub_218952110();
    v0 = sub_219BE6E74();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1DDE0);
    }
  }
}

unint64_t sub_21969F7F0()
{
  result = qword_27CC1DDE8;
  if (!qword_27CC1DDE8)
  {
    sub_21969F774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DDE8);
  }

  return result;
}

uint64_t sub_21969F86C()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_280ED4540);
  __swift_project_value_buffer(v0, qword_280ED4540);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_21969FAE4()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CC1DDF0);
  __swift_project_value_buffer(v0, qword_27CC1DDF0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_21969FCB8()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CC1DE08);
  __swift_project_value_buffer(v0, qword_27CC1DE08);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534();
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_21969FF38()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CC1DE20);
  __swift_project_value_buffer(v0, qword_27CC1DE20);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2196A0108()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CC1DE38);
  __swift_project_value_buffer(v0, qword_27CC1DE38);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_2196A039C@<X0>(uint64_t a1@<X8>)
{
  sub_21988E274(&v16);
  v3 = v17;
  if (v17 == 11)
  {
    v4 = *MEMORY[0x277D32EF0];
    v5 = sub_219BF0644();
    v6 = *(*(v5 - 8) + 104);

    return v6(a1, v4, v5);
  }

  else
  {
    v8 = v16;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_offlineFeatures), *(v1 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_offlineFeatures + 24));
    v16 = v8;
    v17 = v3;
    v9 = sub_2187FB8D0();
    sub_218ED0F50(v8, v3);
    v10 = off_282A442B8;
    type metadata accessor for OfflineFeatures();
    if (v10(v9) == 6)
    {
      v11 = sub_219BF1AE4();
      v12 = sub_219BF0644();
      if (v11)
      {
        v13 = MEMORY[0x277D32EF8];
      }

      else
      {
        v13 = MEMORY[0x277D32EF0];
      }

      return (*(*(v12 - 8) + 104))(a1, *v13, v12);
    }

    else
    {
      v14 = *MEMORY[0x277D32EF0];
      v15 = sub_219BF0644();
      return (*(*(v15 - 8) + 104))(a1, v14, v15);
    }
  }
}

uint64_t sub_2196A0598()
{
  swift_getObjectType();
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_219BEF424();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280EE95B0 != -1)
  {
    swift_once();
  }

  sub_2196AA67C(&unk_280ED2988, v7, type metadata accessor for TagFeedDataManager);
  sub_219BDC7D4();
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != *MEMORY[0x277D325C0])
  {
    if (v10 != *MEMORY[0x277D325C8])
    {
      if (v10 != *MEMORY[0x277D325B8])
      {
        v23[15] = 0;
        sub_2196AB0E0(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        v22 = sub_219BE3014();
        (*(v6 + 8))(v9, v5);
        return v22;
      }

      if (qword_280E8D7F8 == -1)
      {
LABEL_19:
        sub_219BF6214();
        sub_219BE5314();
        v23[12] = 1;
        sub_2196AB0E0(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        return sub_219BE3014();
      }

LABEL_28:
      swift_once();
      goto LABEL_19;
    }

    if (qword_280E8D7F8 == -1)
    {
LABEL_13:
      sub_219BF6214();
      sub_219BE5314();
      v23[11] = 0;
      sub_2196AB0E0(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE3014();
    }

LABEL_26:
    swift_once();
    goto LABEL_13;
  }

  if (sub_219BF1B84())
  {
    v11 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_appConfigManager) appConfiguration)];
    swift_unknownObjectRelease();
    sub_219BDC7D4();
    sub_219BDBC64();
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v13 = fabs(v12);
      if (v13 < 9.22337204e18)
      {
        v14 = v13;
        if (v11 <= v13)
        {
          if (qword_280E8D7F8 != -1)
          {
            swift_once();
          }

          sub_219BF6214();
          sub_219BE5314();
          v23[13] = 1;
          sub_2196AB0E0(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
          swift_allocObject();
          v20 = sub_219BE3014();
        }

        else
        {
          if (qword_280E8D7F8 != -1)
          {
            swift_once();
          }

          sub_2186F20D4();
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_219C09EC0;
          v16 = MEMORY[0x277D84A28];
          v17 = MEMORY[0x277D84A90];
          *(v15 + 56) = MEMORY[0x277D84A28];
          *(v15 + 64) = v17;
          *(v15 + 32) = v11;
          *(v15 + 96) = v16;
          *(v15 + 104) = v17;
          *(v15 + 72) = v14;
          sub_219BF6214();
          sub_219BE5314();

          MEMORY[0x28223BE20](v18);
          *&v23[-16] = v0;
          *&v23[-8] = v4;
          sub_219BE3204();
          v19 = sub_219BE1C44();
          v20 = sub_219BE2F74();
        }

        (*(v2 + 8))(v4, v1);
        return v20;
      }

      __break(1u);
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v23[14] = 0;
  sub_2196AB0E0(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2196A0D0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  type metadata accessor for TagFeedServiceConfig();
  type metadata accessor for TagFeedDataManager();
  sub_219BE31F4();
  (*(v4 + 16))(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v8 = sub_219BE2E54();
  v9 = sub_219BE2F74();

  return v9;
}

uint64_t sub_2196A0ED8()
{
  v1 = OBJC_IVAR____TtC7NewsUI218TagFeedDataManager____lazy_storage___ensurePrewarmPromise;
  if (*(v0 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager____lazy_storage___ensurePrewarmPromise))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager____lazy_storage___ensurePrewarmPromise);
  }

  else
  {
    v2 = sub_2196A0F40(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2196A0F40(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
  v2 = [v1 feedConfiguration];
  v3 = [v1 alternativeFeedDescriptor];
  if (v2 == 3 && v3 == 0)
  {
    MEMORY[0x28223BE20](v3);
    sub_2196AB0E0(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE30B4();
  }

  else
  {

    sub_2196AB0E0(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_2196A1088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = qword_280E8D7F8;

  if (v9 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  v10 = *(a5 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_sportsSyncManager + 24);
  v11 = *(a5 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_sportsSyncManager + 32);
  __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_sportsSyncManager), v10);
  sub_2187D9028();
  v12 = sub_219BF66A4();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = sub_2187A913C;
  v14[3] = v8;
  v14[4] = v13;
  v15 = *(v11 + 8);

  v15(v12, sub_2196AB0D4, v14, v10, v11);
}

void sub_2196A1244(void (*a1)(uint64_t))
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v2 = sub_219BE5314();
  a1(v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_sportsOnboardingManager + 32);
    v5 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_sportsOnboardingManager), *(Strong + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_sportsOnboardingManager + 24));
    v6 = *(v4 + 48);
    v7 = v5;
    v6();
  }
}

uint64_t sub_2196A1398()
{
  v0 = sub_2196A13E4();
  v1 = sub_2196A15E8(v0);

  return v1;
}

uint64_t sub_2196A13E4()
{
  v0 = sub_219BF0644();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - v5;
  sub_2196A039C(v10 - v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D32EF0], v0);
  sub_2196AA67C(&qword_280E90ED0, 255, MEMORY[0x277D32F00]);
  sub_219BF5874();
  sub_219BF5874();
  if (v11[0] == v10[0] && v11[1] == v10[1])
  {
    v7 = 0;
  }

  else if (sub_219BF78F4())
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);

  LOBYTE(v11[0]) = v7;
  return sub_2196E0A30(v11);
}

uint64_t sub_2196A15E8(uint64_t a1)
{
  v2 = v1;
  v20[1] = swift_getObjectType();
  sub_2196AAF18();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0644();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[2] = a1;
  type metadata accessor for TagFeedServiceContext();
  sub_2196AA67C(&qword_280EC9730, 255, type metadata accessor for TagFeedServiceContext);
  sub_219BEF384();
  sub_21988E274(v21);
  v12 = v21[0];
  v13 = v21[1];
  v14 = &v7[*(v5 + 56)];
  (*(v9 + 32))(v7, v11, v8);
  *v14 = v12;
  *(v14 + 1) = v13;
  v15 = (*(v9 + 88))(v7, v8);
  if (v15 != *MEMORY[0x277D32EF8] || v13 == 11)
  {
    v20[2] = a1;
    v18 = sub_219BF0C44();
    sub_2196AAFAC(v7, sub_2196AAF18);
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    v20[-4] = v2;
    v20[-3] = v12;
    v20[-2] = v13;
    sub_219BE3204();

    v17 = sub_219BE2E54();
    sub_2196ABD54(0, &qword_280E91660, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32580]);
    v18 = sub_219BE2F84();

    sub_218ED0F50(*v14, *(v14 + 1));
    (*(v9 + 8))(v7, v8);
  }

  return v18;
}

uint64_t sub_2196A1930(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  v9 = sub_2195ECBE8();
  v10 = MEMORY[0x277D839F0];
  *(v8 + 56) = MEMORY[0x277D839B0];
  *(v8 + 64) = v10;
  *(v8 + 32) = v9 & 1;
  sub_219BF6214();
  sub_219BE5314();

  if (sub_2195ECBE8())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09BA0;
    type metadata accessor for TagFeedServiceConfig();
    sub_2186F7CA4();
    v12 = *(sub_219BEF3E4() + 16);

    v13 = MEMORY[0x277D83C10];
    *(v11 + 56) = MEMORY[0x277D83B88];
    *(v11 + 64) = v13;
    *(v11 + 32) = v12;
    sub_219BF6214();
    sub_219BE5314();

    MEMORY[0x28223BE20](v14);
    sub_2196ABD54(0, &qword_280E91328, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D326E0]);
    sub_219BE3204();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;

    v16 = sub_219BE2E54();
    v17 = sub_219BE2F74();

    return v17;
  }

  else
  {
    *(swift_allocObject() + 16) = v7;
    sub_2196ABD54(0, &qword_280E90D00, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32F90]);
    type metadata accessor for TagFeedDataManager();

    sub_219BE31F4();

    sub_2196ABD54(0, &qword_280E91660, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32580]);
    sub_219BE2F84();

    v20 = *a5;
    v19 = *(a5 + 8);
    v21 = swift_allocObject();
    *(v21 + 16) = v7;
    *(v21 + 24) = a3;
    *(v21 + 32) = a4;
    v22 = *(a5 + 16);
    *(v21 + 40) = *a5;
    *(v21 + 56) = v22;
    *(v21 + 72) = *(a5 + 32);
    *(v21 + 88) = sub_218772E6C;
    *(v21 + 96) = 0;

    v29 = v20;
    v28 = v19;
    sub_219BE2F84();

    v23 = swift_allocObject();
    *(v23 + 16) = v7;
    *(v23 + 24) = a3;
    *(v23 + 32) = a4;
    v24 = *(a5 + 16);
    *(v23 + 40) = *a5;
    *(v23 + 56) = v24;
    *(v23 + 72) = *(a5 + 32);

    v25 = v29;
    v26 = v28;
    v27 = sub_219BE3074();

    return v27;
  }
}

uint64_t sub_2196A1EAC(uint64_t *a1)
{
  v14[1] = swift_getObjectType();
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v16 = a1[1];
  v17 = v6;
  v7 = a1[2];
  v15 = a1[3];
  type metadata accessor for TagFeedServiceConfig();
  sub_2186F7CA4();
  v8 = v7;
  sub_219BEF3D4();
  sub_219BEE794();

  sub_2196AA67C(&qword_280ED2980, v9, type metadata accessor for TagFeedDataManager);
  sub_219BDCA54();
  (*(v3 + 8))(v5, v2);
  sub_2196AB0E0(0, &qword_280E8BB48, &type metadata for TagFeedExpandResult, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  v11 = v16;
  *(v10 + 32) = v17;
  *(v10 + 40) = v11;
  v12 = v15;
  *(v10 + 48) = v8;
  *(v10 + 56) = v12;
  v18 = v10;
  sub_2196AB0E0(0, &qword_280EE6E70, &type metadata for TagFeedPrewarmResult, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_2196A20F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v44 = a2;
  ObjectType = swift_getObjectType();
  v7 = sub_219BEE644();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = CACurrentMediaTime();
  v45 = *(a2 + 8);
  v11 = sub_21988DFA0();
  v46 = v12;
  v47 = v11;
  v40 = *(v3 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_accessQueue);
  *(swift_allocObject() + 16) = a1;
  v42 = type metadata accessor for TagFeedServiceConfig;
  v41 = sub_2186F7CA4;
  sub_2196ABD54(0, &qword_280E90D00, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32F90]);

  sub_219BE31D4();

  v37 = *(v8 + 16);
  v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3;
  v14 = v7;
  v37(v35, v13, v7);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v39 = v15 + v9;
  v16 = swift_allocObject();
  v36 = *(v8 + 32);
  v36(v16 + v15, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v17 = (v16 + ((v15 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v46;
  *v17 = v47;
  v17[1] = v18;

  v19 = sub_219BE2E54();
  sub_2196AB310();
  sub_219BE2F84();

  v20 = v35;
  v37(v35, v38, v14);
  v21 = swift_allocObject();
  v36(v21 + v15, v20, v14);
  sub_2196ABD54(0, &qword_280E91660, v42, v41, MEMORY[0x277D32580]);
  sub_219BE2F84();

  sub_2187D9028();
  v22 = sub_219BF66A4();
  v23 = v44;
  v24 = *v44;
  v25 = swift_allocObject();
  v26 = *(v23 + 1);
  *(v25 + 16) = *v23;
  *(v25 + 32) = v26;
  *(v25 + 48) = *(v23 + 2);
  *(v25 + 64) = sub_218772E6C;
  *(v25 + 72) = 0;
  v27 = v24;
  v28 = v45;
  sub_219BE2F84();

  v29 = sub_219BE2E54();
  sub_219BE2F74();

  v30 = swift_allocObject();
  v30[2] = v10;
  v31 = v46;
  *(v30 + 3) = v47;
  *(v30 + 4) = v31;
  v32 = sub_219BE2E54();
  v33 = sub_219BE2FE4();

  return v33;
}

uint64_t sub_2196A25C8(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_219BEE644();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - v10;
  v12 = *MEMORY[0x277D320A8];
  v13 = *(v6 + 104);
  v57 = &v43 - v10;
  v15 = v14;
  v13(&v43 - v10, v12);
  v16 = CACurrentMediaTime();
  v53 = *(a2 + 8);
  v17 = sub_21988DFA0();
  v55 = v18;
  v56 = v17;
  v48 = *(v2 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_accessQueue);
  *(swift_allocObject() + 16) = a1;
  v50 = type metadata accessor for TagFeedServiceConfig;
  v49 = sub_2186F7CA4;
  sub_2196ABD54(0, &qword_280E90D00, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32F90]);

  sub_219BE31D4();

  v19 = v6;
  v46 = *(v6 + 16);
  v43 = v9;
  v44 = v15;
  v46(v9, v11, v15);
  v20 = *(v6 + 80);
  v54 = v19;
  v21 = (v20 + 16) & ~v20;
  v47 = v21 + v7;
  v22 = swift_allocObject();
  v45 = *(v19 + 32);
  v45(v22 + v21, v9, v15);
  v23 = (v22 + ((v21 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v55;
  *v23 = v56;
  v23[1] = v24;

  v25 = sub_219BE2E54();
  sub_2196AB310();
  sub_219BE2F84();

  v27 = v43;
  v26 = v44;
  v46(v43, v57, v44);
  v28 = swift_allocObject() + v21;
  v29 = v26;
  v45(v28, v27, v26);
  sub_2196ABD54(0, &qword_280E91660, v50, v49, MEMORY[0x277D32580]);
  sub_219BE2F84();

  sub_2187D9028();
  v30 = sub_219BF66A4();
  v31 = v52;
  v32 = *v52;
  v33 = swift_allocObject();
  v34 = *(v31 + 1);
  *(v33 + 16) = *v31;
  *(v33 + 32) = v34;
  *(v33 + 48) = *(v31 + 2);
  *(v33 + 64) = sub_2196A2B0C;
  *(v33 + 72) = 0;
  v35 = v32;
  v36 = v53;
  sub_219BE2F84();

  v37 = sub_219BE2E54();
  sub_219BE2F74();

  v38 = swift_allocObject();
  v38[2] = v16;
  v39 = v55;
  *(v38 + 3) = v56;
  *(v38 + 4) = v39;
  v40 = sub_219BE2E54();
  v41 = sub_219BE2FE4();

  (*(v54 + 8))(v57, v29);
  return v41;
}

uint64_t sub_2196A2B0C()
{
  v0 = type metadata accessor for TagFeedGroup();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v31 = v29 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v29 - v10;
  if ((sub_2196A3020() & 1) == 0)
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    goto LABEL_16;
  }

  v29[0] = v4;
  v29[2] = v0;
  if (qword_280E8D7F8 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v12 = qword_280F61708;
    sub_2186F20D4();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    type metadata accessor for TagFeedServiceConfig();
    sub_2186F7CA4();
    v14 = *(sub_219BEF3E4() + 16);

    v15 = MEMORY[0x277D83C10];
    *(v13 + 56) = MEMORY[0x277D83B88];
    *(v13 + 64) = v15;
    *(v13 + 32) = v14;
    sub_219BF6214();
    v29[1] = v12;
    sub_219BE5314();

    v16 = sub_219BEF3E4();
    v30 = *(v16 + 16);
    if (!v30)
    {
      break;
    }

    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    while (v17 < *(v16 + 16))
    {
      v19 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v20 = *(v1 + 72);
      sub_2196AB534(v16 + v19 + v20 * v17, v11, type metadata accessor for TagFeedGroup);
      sub_2196AB534(v11, v9, type metadata accessor for TagFeedGroup);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_2196AAFAC(v9, type metadata accessor for TagFeedGroup);
      if (EnumCaseMultiPayload == 7)
      {
        sub_2196AAFAC(v11, type metadata accessor for TagFeedGroup);
      }

      else
      {
        sub_2196ABBE4(v11, v31, type metadata accessor for TagFeedGroup);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C37F00(0, *(v18 + 16) + 1, 1);
          v18 = v32;
        }

        v24 = *(v18 + 16);
        v23 = *(v18 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_218C37F00(v23 > 1, v24 + 1, 1);
          v18 = v32;
        }

        *(v18 + 16) = v24 + 1;
        sub_2196ABBE4(v31, v18 + v19 + v24 * v20, type metadata accessor for TagFeedGroup);
      }

      if (v30 == ++v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v18 = MEMORY[0x277D84F90];
LABEL_18:

  v26 = *(v18 + 16);
  if (v26 <= 1)
  {
  }

  else
  {
    v27 = v29[0];
    sub_2196AB534(v18 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * (v26 - 2), v29[0], type metadata accessor for TagFeedGroup);

    v28 = swift_getEnumCaseMultiPayload();
    sub_2196AAFAC(v27, type metadata accessor for TagFeedGroup);
    if (v28 == 13)
    {
LABEL_16:
      sub_219BF6214();
      sub_219BE5314();
      return 0;
    }
  }

  sub_219BF6214();
  sub_219BE5314();
  return 1;
}

uint64_t sub_2196A3020()
{
  type metadata accessor for TagFeedServiceConfig();
  sub_2186F7CA4();
  if (sub_219BEF3D4() < 0)
  {

    return 0;
  }

  else
  {
    sub_219BF0944();
    v0 = *(v9 + 24);

    v1 = *(v0 + 16);

    v2 = *(v1 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_groups);

    v3 = *(v2 + 16);
    v4 = 32;
    do
    {
      v5 = v3-- != 0;
      v6 = v5;
      if (!v5)
      {
        break;
      }

      v7 = (*(v2 + v4) >> 58) & 0x3C | (*(v2 + v4) >> 1) & 3;
      v4 += 8;
    }

    while (v7 != 11);
  }

  return v6;
}

uint64_t sub_2196A3120(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for TagFeedExpandRequest();
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v32 = v3;
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = CACurrentMediaTime();
  v6 = *a1;
  v5 = a1[1];

  v7 = sub_21988DFA0();
  v9 = v8;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v28 = qword_280F61708;
  sub_219BF6214();
  sub_2186F20D4();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C0B8C0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_2186FC3BC();
  *(v10 + 32) = v6;
  *(v10 + 40) = v5;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = v7;
  v29 = v6;
  v30 = v7;
  *(v10 + 80) = v9;
  v36 = 0;
  v37 = 0xE000000000000000;
  type metadata accessor for TagFeedGapLocation(0);

  sub_219BF7484();
  v13 = v36;
  v14 = v37;
  *(v10 + 136) = v11;
  *(v10 + 144) = v12;
  *(v10 + 112) = v13;
  *(v10 + 120) = v14;
  sub_219BE5314();

  MEMORY[0x28223BE20](v15);
  *(&v28 - 2) = v35;
  *(&v28 - 1) = a1;
  sub_2196ABD54(0, &qword_280E91660, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32580]);
  sub_219BE3204();
  sub_2187D9028();
  v16 = sub_219BF66A4();
  v17 = v33;
  sub_2196AB534(a1, v33, type metadata accessor for TagFeedExpandRequest);
  v18 = (*(v31 + 80) + 56) & ~*(v31 + 80);
  v19 = swift_allocObject();
  v19[2] = v4;
  v21 = v29;
  v20 = v30;
  *(v19 + 3) = v29;
  *(v19 + 4) = v5;
  *(v19 + 5) = v20;
  *(v19 + 6) = v9;
  sub_2196ABBE4(v17, v19 + v18, type metadata accessor for TagFeedExpandRequest);

  sub_219BE2F84();

  v22 = swift_allocObject();
  v22[2] = v4;
  *(v22 + 3) = v21;
  *(v22 + 4) = v5;
  *(v22 + 5) = v20;
  *(v22 + 6) = v9;

  v23 = sub_219BE2E54();
  sub_219BE2F74();

  v24 = swift_allocObject();
  v24[2] = v4;
  *(v24 + 3) = v21;
  *(v24 + 4) = v5;
  *(v24 + 5) = v20;
  *(v24 + 6) = v9;
  v25 = sub_219BE2E54();
  v26 = sub_219BE2FD4();

  return v26;
}

uint64_t sub_2196A35AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TagFeedGapLocation(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = type metadata accessor for TagFeedExpandRequest();
  sub_2196AB534(a2 + *(v6 + 20), &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TagFeedGapLocation);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_2196ABBE4(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TagFeedGapLocation);
  sub_2186FAE74();
  type metadata accessor for TagFeedDataManager();
  sub_219BE31F4();

  v9 = sub_219BE2E54();
  sub_219BE2F64();

  sub_2196ABD54(0, &qword_280E91660, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32580]);
  v10 = sub_219BE2F84();

  return v10;
}

uint64_t sub_2196A37F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0EE20;
  sub_219BF5CD4();
  v13 = MEMORY[0x277D83A80];
  *(v12 + 56) = MEMORY[0x277D839F8];
  *(v12 + 64) = v13;
  *(v12 + 32) = v14;
  v15 = MEMORY[0x277D837D0];
  *(v12 + 96) = MEMORY[0x277D837D0];
  v16 = sub_2186FC3BC();
  *(v12 + 72) = a3;
  *(v12 + 80) = a4;
  *(v12 + 136) = v15;
  *(v12 + 144) = v16;
  *(v12 + 104) = v16;
  *(v12 + 112) = a5;
  *(v12 + 120) = a6;
  sub_2196ABD54(0, &qword_280E91660, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32580]);
  sub_2196ABB08();

  v17 = sub_219BE2324();
  *(v12 + 176) = v15;
  *(v12 + 184) = v16;
  *(v12 + 152) = v17;
  *(v12 + 160) = v18;
  sub_219BF6214();
  sub_219BE5314();

  v20 = *a7;
  v19 = a7[1];
  v21 = type metadata accessor for TagFeedExpandRequest();
  MEMORY[0x28223BE20](v21);
  sub_2196ABD54(0, &qword_280E91328, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D326E0]);
  sub_219BE3204();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v19;

  v23 = sub_219BE2E54();
  v24 = sub_219BE2F74();

  return v24;
}

uint64_t sub_2196A3AE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v10 = a1[1];
  v20 = *a1;
  v11 = a1[3];
  v19 = a1[2];
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0EE20;
  sub_219BF5CD4();
  v13 = MEMORY[0x277D83A80];
  *(v12 + 56) = MEMORY[0x277D839F8];
  *(v12 + 64) = v13;
  *(v12 + 32) = v14;
  v15 = MEMORY[0x277D837D0];
  *(v12 + 96) = MEMORY[0x277D837D0];
  v16 = sub_2186FC3BC();
  *(v12 + 72) = a2;
  *(v12 + 80) = a3;
  *(v12 + 136) = v15;
  *(v12 + 144) = v16;
  *(v12 + 104) = v16;
  *(v12 + 112) = a4;
  *(v12 + 120) = a5;

  sub_219BF7484();
  *(v12 + 176) = v15;
  *(v12 + 184) = v16;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  *a6 = v20;
  a6[1] = v10;
  a6[2] = v19;
  a6[3] = v11;
}

uint64_t sub_2196A3CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C0EE20;
  sub_219BF5CD4();
  v10 = MEMORY[0x277D83A80];
  *(v9 + 56) = MEMORY[0x277D839F8];
  *(v9 + 64) = v10;
  *(v9 + 32) = v11;
  v12 = MEMORY[0x277D837D0];
  *(v9 + 96) = MEMORY[0x277D837D0];
  v13 = sub_2186FC3BC();
  *(v9 + 72) = a2;
  *(v9 + 80) = a3;
  *(v9 + 136) = v12;
  *(v9 + 144) = v13;
  *(v9 + 104) = v13;
  *(v9 + 112) = a4;
  *(v9 + 120) = a5;
  sub_2186CFDE4(0, &qword_280E8B580);

  sub_219BF7484();
  *(v9 + 176) = v12;
  *(v9 + 184) = v13;
  *(v9 + 152) = 0;
  *(v9 + 160) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_2196A3E50(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  sub_218954350();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196ABD54(0, &qword_280E8D490, sub_218954408, sub_2196AA74C, MEMORY[0x277D84310]);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v33 = MEMORY[0x277D84F98];
  (*(v10 + 16))(v12, a2, v9);
  sub_2196AA67C(&qword_280EE36E0, 255, sub_218954408);
  sub_219BF56A4();
  v17 = *(v14 + 44);
  sub_2196AA74C();
  sub_219BF5E84();
  if (*&v16[v17] == v32)
  {
LABEL_5:
    sub_2196AB270(v16, &qword_280E8D490, sub_218954408, sub_2196AA74C);
    v22 = v33;
    __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_headlineService), *(v30 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_headlineService + 24));
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = sub_21947D1C0(*(v22 + 16), 0);
      v25 = sub_2194B7E3C(&v32, v24 + 4, v23, v22);
      sub_21892DE98();
      if (v25 == v23)
      {
LABEL_9:
        v26 = [objc_opt_self() ignoreCacheCachePolicy];
        v27 = sub_219BF2864();

        return v27;
      }

      __break(1u);
    }

    goto LABEL_9;
  }

  v18 = (v5 + 16);
  v19 = (v5 + 8);
  while (1)
  {
    v20 = sub_219BF5EC4();
    (*v18)(v7);
    v20(&v32, 0);
    sub_219BF5E94();
    v21 = v31;
    sub_2196A42F4(&v33);
    v31 = v21;
    if (v21)
    {
      break;
    }

    (*v19)(v7, v4);
    sub_219BF5E84();
    if (*&v16[v17] == v32)
    {
      goto LABEL_5;
    }
  }

  (*v19)(v7, v4);
  sub_2196AB270(v16, &qword_280E8D490, sub_218954408, sub_2196AA74C);

  __break(1u);
  return result;
}

uint64_t sub_2196A42F4(void *a1)
{
  v39 = a1;
  v38 = sub_219BF0614();
  v1 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350();
  sub_218F54CC4();
  sub_2196AA67C(&unk_280EDE870, 255, type metadata accessor for TagFeedModel);
  v3 = sub_219BE6A04();
  v4 = *(v3 + 16);
  if (!v4)
  {
  }

  v33[2] = v3;
  v6 = *(v1 + 16);
  v5 = v1 + 16;
  v7 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
  v8 = *(v5 + 56);
  v33[3] = v5;
  v34 = v8;
  v35 = (v5 - 8);
  v36 = v6;
  while (1)
  {
    v10 = v37;
    v9 = v38;
    v36(v37, v7, v38);
    v11 = sub_219BF05F4();
    (*v35)(v10, v9);
    if (!v11)
    {
      goto LABEL_5;
    }

    v12 = [v11 identifier];
    v13 = sub_219BF5414();
    v15 = v14;

    v16 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v16;
    v18 = v40;
    v20 = sub_21870F700(v13, v15);
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v18[3] >= v23)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v40;
        if ((v19 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_2194902C8();
        v27 = v40;
        if ((v24 & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_21947DE18(v23, isUniquelyReferenced_nonNull_native);
      v25 = sub_21870F700(v13, v15);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_23;
      }

      v20 = v25;
      v27 = v40;
      if ((v24 & 1) == 0)
      {
LABEL_14:
        v27[(v20 >> 6) + 8] |= 1 << v20;
        v28 = (v27[6] + 16 * v20);
        *v28 = v13;
        v28[1] = v15;
        *(v27[7] + 8 * v20) = v11;
        v29 = v27[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_22;
        }

        v27[2] = v31;
        goto LABEL_4;
      }
    }

    *(v27[7] + 8 * v20) = v11;

    swift_unknownObjectRelease();
LABEL_4:
    *v39 = v27;
LABEL_5:
    v7 += v34;
    if (!--v4)
    {
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_2196A4618(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v3 = 0;
    v29 = v1 & 0xC000000000000001;
    v27 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D84F98];
    v28 = v1;
    while (v29)
    {
      v7 = MEMORY[0x21CECE0F0](v3, v1);
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_22;
      }

LABEL_12:
      v1 = i;
      v9 = [v7 identifier];
      v10 = sub_219BF5414();
      v12 = v11;

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_21870F700(v10, v12);
      v16 = v4[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_23;
      }

      v20 = v15;
      if (v4[3] < v19)
      {
        sub_21947DE18(v19, isUniquelyReferenced_nonNull_native);
        v14 = sub_21870F700(v10, v12);
        if ((v20 & 1) != (v21 & 1))
        {
          result = sub_219BF79A4();
          __break(1u);
          return result;
        }

LABEL_17:
        if (v20)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v25 = v14;
      sub_2194902C8();
      v14 = v25;
      if (v20)
      {
LABEL_4:
        v5 = v14;

        *(v4[7] + 8 * v5) = v7;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_5;
      }

LABEL_18:
      v4[(v14 >> 6) + 8] |= 1 << v14;
      v22 = (v4[6] + 16 * v14);
      *v22 = v10;
      v22[1] = v12;
      *(v4[7] + 8 * v14) = v7;
      swift_unknownObjectRelease();
      v23 = v4[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_24;
      }

      v4[2] = v24;
LABEL_5:
      ++v3;
      i = v1;
      v6 = v8 == v1;
      v1 = v28;
      if (v6)
      {
        goto LABEL_27;
      }
    }

    if (v3 >= *(v27 + 16))
    {
      goto LABEL_25;
    }

    v7 = *(v1 + 8 * v3 + 32);
    swift_unknownObjectRetain();
    v8 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
  sub_2196AB0E0(0, &unk_280EE6FD8, &type metadata for TagFeedUpdateFeedItemsResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2196A48D0()
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
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

uint64_t sub_2196A49FC(uint64_t a1)
{
  v2 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196ABD54(0, &qword_280EE5CE0, type metadata accessor for TagFeedModel, sub_218CF5CE4, MEMORY[0x277D6D3F0]);
  v6 = v5;
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v44 = &v33 - v7;
  v8 = MEMORY[0x277D84310];
  sub_2196ABD54(0, &qword_280E8D4F0, sub_218954350, sub_2196AB238, MEMORY[0x277D84310]);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  sub_218954350();
  v13 = v12;
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v37 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196ABD54(0, &qword_280E8D490, sub_218954408, sub_2196AA74C, v8);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  v45[4] = MEMORY[0x277D84FA0];
  sub_218954408();
  v20 = v19;
  (*(*(v19 - 8) + 16))(v18, a1, v19);
  v21 = *(v16 + 44);
  v22 = sub_2196AA74C();
  sub_219BF5DF4();
  sub_219BF5E84();
  if (*&v18[v21] != v45[0])
  {
    v24 = v21;
    v34 = (v43 + 1);
    v35 = v43 + 2;
    v42 = v20;
    v43 = (v39 + 16);
    v25 = (v39 + 8);
    v36 = v18;
    v40 = v22;
    v41 = v24;
    do
    {
      v39 = sub_219BF5EC4();
      v26 = *v35;
      v27 = v37;
      (*v35)(v37);
      (v39)(v45, 0);
      sub_219BF5E94();
      (v26)(v11, v27, v13);
      v28 = *(v38 + 36);
      sub_2196AB238();
      sub_219BF5DF4();
      (*v34)(v27, v13);
      while (1)
      {
        sub_219BF5E84();
        if (*&v11[v28] == v45[0])
        {
          break;
        }

        v29 = sub_219BF5EC4();
        v30 = v44;
        (*v43)(v44);
        v29(v45, 0);
        sub_219BF5E94();
        sub_219BE5FC4();
        (*v25)(v30, v6);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v31 = sub_219BE5B24();
          sub_219497B60(v45, v31, v32);
        }

        else
        {
          sub_2196AAFAC(v4, type metadata accessor for TagFeedModel);
        }
      }

      sub_2196AB270(v11, &qword_280E8D4F0, sub_218954350, sub_2196AB238);
      v18 = v36;
      sub_219BF5E84();
    }

    while (*&v18[v41] != v45[0]);
  }

  sub_2196AB270(v18, &qword_280E8D490, sub_218954408, sub_2196AA74C);
  sub_219BE6074();
}

uint64_t sub_2196A5060(uint64_t a1, uint64_t a2)
{
  sub_2186FAE74();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TagFeedGapLocation(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196AB534(a2, v14, type metadata accessor for TagFeedGapLocation);
  v15 = (*(v6 + 48))(v14, 1, v5);
  if (v15 == 1)
  {
    MEMORY[0x28223BE20](v15);
    *(&v19 - 2) = a1;
    type metadata accessor for TagFeedServiceConfig();
    sub_219BE3204();
    v16 = sub_219BE2E54();
    v17 = sub_219BE2F74();
  }

  else
  {
    (*(v6 + 32))(v11, v14, v5);
    (*(v6 + 16))(v9, v11, v5);
    sub_2196ABDD4(0, &qword_280EE6C18, sub_2186FAE74, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v17 = sub_219BE3014();
    (*(v6 + 8))(v11, v5);
  }

  return v17;
}

uint64_t sub_2196A5318()
{
  sub_2196A13E4();
  v0 = sub_219BED564();

  return v0;
}

uint64_t sub_2196A5378()
{
  type metadata accessor for TagFeedServiceConfig();
  sub_2186F7CA4();
  return sub_219BF0F44();
}

uint64_t sub_2196A53D4(uint64_t a1)
{
  v3 = MEMORY[0x277D83D88];
  sub_2196ABDD4(0, &unk_280E924C0, MEMORY[0x277D31E08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v46 - v5;
  sub_2196ABDD4(0, &qword_280E90C48, sub_2196ABD0C, v3);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v46 - v7;
  sub_2196ABDD4(0, &unk_280E90C60, MEMORY[0x277D32FE0], v3);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v46 - v9;
  sub_2196ABDD4(0, &qword_280EE9C40, MEMORY[0x277CC9578], v3);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v53 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v46 - v13;
  sub_2196ABDD4(0, &unk_280E92570, MEMORY[0x277D31D28], v3);
  MEMORY[0x28223BE20](v14 - 8);
  v64 = &v46 - v15;
  sub_2186FAE74();
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = (&v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v23 = (&v46 - v22);
  v24 = *(v18 + 16);
  v24(&v46 - v22, a1, v17);
  if ((*(v18 + 88))(v23, v17) == *MEMORY[0x277D33078])
  {
    v47 = v21;
    v48 = v1;
    (*(v18 + 96))(v23, v17);
    v46 = *v23;
    sub_219BF0944();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v62 = 0;
      v25 = *MEMORY[0x277D31D10];
      v26 = sub_219BEDA64();
      v27 = *(v26 - 8);
      v28 = v64;
      (*(v27 + 104))(v64, v25, v26);
      (*(v27 + 56))(v28, 0, 1, v26);
      v29 = sub_219BDBD34();
      v30 = *(*(v29 - 8) + 56);
      v31 = v49;
      v30();
      (v30)(v53, 1, 1, v29);
      sub_2196ABE38(v63);
      v58 = v63[4];
      v59 = v63[5];
      v60 = v63[6];
      v61 = v63[7];
      v54 = v63[0];
      v55 = v63[1];
      v56 = v63[2];
      v57 = v63[3];
      v32 = sub_219BF0BD4();
      v33 = v50;
      (*(*(v32 - 8) + 56))(v50, 1, 1, v32);
      sub_2196ABD0C(0);
      v35 = v51;
      (*(*(v34 - 8) + 56))(v51, 1, 1, v34);
      v36 = sub_219BEDC14();
      v37 = v52;
      (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
      v38 = v31;
      v39 = v53;
      v40 = sub_219BF0984();
      sub_2196AB1C8(v37, &unk_280E924C0, MEMORY[0x277D31E08]);
      sub_2196AB1C8(v35, &qword_280E90C48, sub_2196ABD0C);
      sub_2196AB1C8(v33, &unk_280E90C60, MEMORY[0x277D32FE0]);
      v41 = MEMORY[0x277CC9578];
      sub_2196AB1C8(v39, &qword_280EE9C40, MEMORY[0x277CC9578]);
      sub_2196AB1C8(v38, &qword_280EE9C40, v41);
      sub_2196AB1C8(v64, &unk_280E92570, MEMORY[0x277D31D28]);
      v42 = swift_allocObject();
      *(v42 + 16) = v40;
      v43 = v47;
      *v47 = v42;
      (*(v18 + 104))(v43, *MEMORY[0x277D33070], v17);
    }

    else
    {

      v24(v47, a1, v17);
    }

    sub_2196ABDD4(0, &qword_280EE6C18, sub_2186FAE74, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v44 = sub_219BE3014();
  }

  else
  {
    v24(v21, a1, v17);
    sub_2196ABDD4(0, &qword_280EE6C18, sub_2186FAE74, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v44 = sub_219BE3014();
    (*(v18 + 8))(v23, v17);
  }

  return v44;
}

uint64_t sub_2196A5C60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v40[1] = a3;
  v47 = a2;
  v6 = sub_219BEDA64();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF0BD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEEAF4();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v45 = v15;
  v46 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v40 - v16;
  v18 = *a1;
  sub_219BF0944();

  sub_219BF08F4();
  sub_219BEF524();

  (*(v10 + 8))(v12, v9);
  if (qword_280EE95D8 != -1)
  {
    swift_once();
  }

  sub_2190EA6E0(qword_280EE95E0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C0EE20;
  v20 = sub_219BEEAE4();
  v22 = v21;
  v23 = MEMORY[0x277D837D0];
  *(v19 + 56) = MEMORY[0x277D837D0];
  v24 = sub_2186FC3BC();
  *(v19 + 64) = v24;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_219BEE644();
  sub_219BF7484();
  v25 = v50;
  v26 = v51;
  *(v19 + 96) = v23;
  *(v19 + 104) = v24;
  *(v19 + 72) = v25;
  *(v19 + 80) = v26;
  sub_219BF0974();
  v27 = sub_219BEDA54();
  v29 = v28;
  (*(v41 + 8))(v8, v42);
  *(v19 + 136) = v23;
  *(v19 + 144) = v24;
  *(v19 + 112) = v27;
  *(v19 + 120) = v29;
  *(v19 + 176) = v23;
  *(v19 + 184) = v24;
  v30 = v44;
  *(v19 + 152) = v43;
  *(v19 + 160) = v30;

  sub_219BF6214();
  sub_219BE5314();

  sub_219BF0944();

  v31 = sub_2193F9A28(v17);

  v50 = v31;
  sub_219BED564();
  v33 = v48;
  v32 = v49;
  v34 = v46;
  (*(v48 + 16))(v46, v17, v49);
  v35 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v18;
  (*(v33 + 32))(v36 + v35, v34, v32);

  v37 = sub_219BE2E54();
  sub_2196AB310();
  v38 = sub_219BE2F74();

  (*(v33 + 8))(v17, v32);
  return v38;
}

uint64_t sub_2196A61A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *a1;
  sub_2196AB310();
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  *a4 = a2;
  v11 = sub_219BEEAF4();
  (*(*(v11 - 8) + 16))(&a4[v9], a3, v11);
  *&a4[v10] = v7;
}

uint64_t sub_2196A6254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  sub_2186FAE74();
  v36 = v4;
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2196AB310();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_219BEEAF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196AB534(a1, v9, sub_2196AB310);
  v14 = *v9;
  v15 = *(v9 + *(v7 + 72));
  v16 = *(v11 + 32);
  v17 = v9 + *(v7 + 56);
  v32 = v10;
  v16(v13, v17, v10);
  sub_2196AB59C(0);
  v19 = v18;
  v20 = swift_allocBox();
  v22 = v21;
  v23 = *(v19 + 64);
  v24 = *(v19 + 80);
  *v21 = v14;
  *(v21 + 1) = v15;
  (*(v11 + 16))(&v21[v23], v13, v10);
  v25 = sub_219BEE644();
  (*(*(v25 - 8) + 16))(&v22[v24], v35, v25);
  v26 = v33;
  *v33 = v20;
  v27 = v34;
  v28 = v36;
  (*(v34 + 104))(v26, *MEMORY[0x277D33088], v36);

  v29 = sub_219BF0C64();

  (*(v27 + 8))(v26, v28);
  (*(v11 + 8))(v13, v32);
  return v29;
}

uint64_t sub_2196A6564(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  type metadata accessor for TagFeedServiceConfig();
  sub_2186F7CA4();
  sub_219BEF3D4();
  sub_219BEE794();

  type metadata accessor for TagFeedDataManager();
  sub_2196AA67C(&qword_280ED2980, v12, type metadata accessor for TagFeedDataManager);
  sub_219BDCA54();
  (*(v8 + 8))(v10, v7);
  if ((sub_2195ECBE8() & 1) != 0 && ((v35)(v11) & 1) == 0)
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    v27 = *(sub_219BEF3E4() + 16);

    v28 = MEMORY[0x277D83C10];
    *(v26 + 56) = MEMORY[0x277D83B88];
    *(v26 + 64) = v28;
    *(v26 + 32) = v27;
    sub_219BF6214();
    sub_219BE5314();

    MEMORY[0x28223BE20](v29);
    *(&v33 - 4) = a2;
    *(&v33 - 3) = v11;
    *(&v33 - 2) = v34;
    sub_2196ABD54(0, &qword_280E91328, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D326E0]);
    sub_219BE3204();
    v30 = swift_allocObject();
    *(v30 + 16) = 0x68736572666572;
    *(v30 + 24) = 0xE700000000000000;
    v31 = sub_219BE2E54();
    v25 = sub_219BE2F74();
  }

  else
  {
    v13 = *(a2 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_accessQueue);
    *(swift_allocObject() + 16) = v11;
    sub_2196ABD54(0, &qword_280E90D00, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32F90]);

    v33 = v13;
    sub_219BE31F4();

    sub_2196ABD54(0, &qword_280E91660, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32580]);
    sub_219BE2F84();

    v14 = v34;
    v15 = *v34;
    v16 = *(v34 + 8);
    v17 = swift_allocObject();
    *(v17 + 16) = v11;
    *(v17 + 24) = 0x68736572666572;
    *(v17 + 32) = 0xE700000000000000;
    v18 = v14[1];
    *(v17 + 40) = *v14;
    *(v17 + 56) = v18;
    *(v17 + 72) = v14[2];
    v19 = v36;
    *(v17 + 88) = v35;
    *(v17 + 96) = v19;

    v35 = v15;
    v20 = v16;

    sub_219BE2F84();

    v21 = swift_allocObject();
    *(v21 + 16) = v11;
    *(v21 + 24) = 0x68736572666572;
    *(v21 + 32) = 0xE700000000000000;
    v22 = v14[1];
    *(v21 + 40) = *v14;
    *(v21 + 56) = v22;
    *(v21 + 72) = v14[2];

    v23 = v35;
    v24 = v20;
    v25 = sub_219BE3074();
  }

  return v25;
}

uint64_t sub_2196A6B88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  sub_2196AB0E0(0, &qword_280E8BB48, &type metadata for TagFeedExpandResult, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  *a2 = v7;
}

uint64_t sub_2196A6C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD24();
  type metadata accessor for TagFeedDataManager();
  sub_2196AA67C(&qword_280ED2980, v11, type metadata accessor for TagFeedDataManager);
  sub_219BDCA54();
  (*(v8 + 8))(v10, v7);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v13 = MEMORY[0x277D83A80];
  *(v12 + 56) = MEMORY[0x277D839F8];
  *(v12 + 64) = v13;
  *(v12 + 32) = v14;
  v21 = 0;
  v22 = 0xE000000000000000;
  v20[1] = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  v15 = v21;
  v16 = v22;
  v17 = MEMORY[0x277D837D0];
  *(v12 + 96) = MEMORY[0x277D837D0];
  v18 = sub_2186FC3BC();
  *(v12 + 72) = v15;
  *(v12 + 80) = v16;
  *(v12 + 136) = v17;
  *(v12 + 144) = v18;
  *(v12 + 104) = v18;
  *(v12 + 112) = a3;
  *(v12 + 120) = a4;

  sub_219BF6214();
  sub_219BE5314();
}

uint64_t sub_2196A6EA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{

  v6 = sub_219BEF6F4();
  sub_219BEF704();
  sub_2196ABDD4(0, &unk_280E8F530, MEMORY[0x277D6D310], MEMORY[0x277D83940]);
  sub_21882FF78();
  sub_2196AA67C(&unk_280EE5DD0, 255, MEMORY[0x277D6D310]);
  v7 = sub_219BF56C4();

  *a3 = a1;
  a3[1] = a2;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

uint64_t sub_2196A6FB8()
{
  type metadata accessor for TagFeedServiceConfig();
  sub_2186F7CA4();
  sub_219BEF3D4();
  v0 = sub_219BEE814();

  return v0;
}

uint64_t sub_2196A702C(uint64_t *a1)
{
  sub_2186FAE74();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *v6 = v8;
  (*(v4 + 104))(v6, *MEMORY[0x277D33070], v3);

  v9 = sub_219BF0C64();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_2196A7168(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v11 = *a1;
  type metadata accessor for TagFeedServiceConfig();
  sub_2186F7CA4();
  v12 = sub_219BEF3E4();
  v13 = sub_219BEF3E4();
  sub_2191F04BC(v13);
  v14 = v12;
  v86 = sub_219BEF3D4();
  v85 = a5;
  if ((v11 >> 61) >= 2)
  {
    if ((v11 >> 61) - 2 >= 2)
    {
      v53 = *(v12 + 16);
      if (v53 == 1)
      {
        sub_2196AAE64();
        v71 = v70;
        swift_allocBox();
        v73 = v72;
        v56 = (v72 + *(v71 + 48));
        v74 = *(type metadata accessor for TagFeedGroup() - 8);
        sub_2196AB534(v12 + ((*(v74 + 80) + 32) & ~*(v74 + 80)), v73, type metadata accessor for TagFeedGroup);

        v54 = a5;
      }

      else
      {
        v54 = a5;
        if (v53)
        {
          v55 = swift_allocObject();
          v56 = (v55 + 24);
          *(v55 + 16) = v12;
        }

        else
        {

          v55 = swift_allocObject();
          v56 = (v55 + 16);
        }
      }

      *v56 = v86;
      MEMORY[0x28223BE20](v55);
      sub_2196ABD54(0, &qword_280E91328, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D326E0]);

      sub_219BE3204();
      v75 = swift_allocObject();
      *(v75 + 16) = a4;
      *(v75 + 24) = v54;

      v76 = sub_219BE2E54();
      v63 = sub_219BE2F74();

      goto LABEL_29;
    }

    v15 = *(v12 + 16);
    if (v15 >= 2)
    {
      v16 = swift_allocObject();
      v17 = (v16 + 24);
      *(v16 + 16) = v14;
      v18 = 0x6000000000000000;
LABEL_9:
      *v17 = v86;
      v27 = v18 | v16;

      if (sub_2195ECBE8() & 1) == 0 || (a7(v27))
      {
        *(swift_allocObject() + 16) = v27;
        sub_2196ABD54(0, &qword_280E90D00, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32F90]);
        v79 = a4;
        type metadata accessor for TagFeedDataManager();

        sub_219BE31F4();

        sub_2196ABD54(0, &qword_280E91660, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32580]);
        sub_219BE2F84();

        v28 = *a6;
        v29 = *(a6 + 8);
        v30 = swift_allocObject();
        *(v30 + 16) = v27;
        *(v30 + 24) = v79;
        *(v30 + 32) = v85;
        v31 = *(a6 + 16);
        *(v30 + 40) = *a6;
        *(v30 + 56) = v31;
        *(v30 + 72) = *(a6 + 32);
        *(v30 + 88) = a7;
        *(v30 + 96) = a8;

        v84 = v28;
        v81 = v29;
        sub_219BE2F84();

        v32 = swift_allocObject();
        *(v32 + 16) = v27;
        *(v32 + 24) = v79;
        *(v32 + 32) = v85;
        v33 = *(a6 + 16);
        *(v32 + 40) = *a6;
        *(v32 + 56) = v33;
        *(v32 + 72) = *(a6 + 32);

        v34 = v84;
        v35 = v81;
        v36 = sub_219BE3074();

LABEL_17:

        return v36;
      }

      if (qword_280E8D7F8 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_32;
    }

    sub_2196AAE64();
    v22 = v21;
    v23 = swift_allocBox();
    if (v15 == 1)
    {
      v16 = v23;
      v17 = (v24 + *(v22 + 48));
      v25 = v24;
      v26 = *(type metadata accessor for TagFeedGroup() - 8);
      sub_2196AB534(v14 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v25, type metadata accessor for TagFeedGroup);

      v18 = 0x4000000000000000;
      goto LABEL_9;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
LABEL_22:
    sub_2186F20D4();
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_219C09BA0;
    v58 = *(sub_219BEF3E4() + 16);

    v59 = MEMORY[0x277D83C10];
    *(v57 + 56) = MEMORY[0x277D83B88];
    *(v57 + 64) = v59;
    *(v57 + 32) = v58;
    sub_219BF6214();
    sub_219BE5314();

    MEMORY[0x28223BE20](v60);
    sub_2196ABD54(0, &qword_280E91328, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D326E0]);
    sub_219BE3204();
    v61 = swift_allocObject();
    *(v61 + 16) = a4;
    *(v61 + 24) = v85;

    v62 = sub_219BE2E54();
    v63 = sub_219BE2F74();

    goto LABEL_29;
  }

  v78 = a4;
  a4 = *(v12 + 16);
  if (a4 < 2)
  {
    sub_2196AAE64();
    v38 = v37;
    v39 = swift_allocBox();
    if (a4 != 1)
    {
      goto LABEL_31;
    }

    v20 = v39;
    v41 = v40;
    v42 = *(v38 + 48);
    v43 = *(type metadata accessor for TagFeedGroup() - 8);
    sub_2196AB534(v14 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v41, type metadata accessor for TagFeedGroup);

    *(v41 + v42) = v86;
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v12;
    *(v19 + 24) = v86;
    v20 = v19 | 0x2000000000000000;
  }

  if (sub_2195ECBE8() & 1) == 0 || (a7(v20))
  {
    *(swift_allocObject() + 16) = v20;
    sub_2196ABD54(0, &qword_280E90D00, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32F90]);
    type metadata accessor for TagFeedDataManager();

    sub_219BE31F4();

    sub_2196ABD54(0, &qword_280E91660, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32580]);
    sub_219BE2F84();

    v44 = *a6;
    v45 = *(a6 + 8);
    v46 = swift_allocObject();
    *(v46 + 16) = v20;
    *(v46 + 24) = v78;
    *(v46 + 32) = v85;
    v47 = *(a6 + 16);
    *(v46 + 40) = *a6;
    *(v46 + 56) = v47;
    *(v46 + 72) = *(a6 + 32);
    *(v46 + 88) = a7;
    *(v46 + 96) = a8;

    v82 = v44;
    v77 = v45;

    sub_219BE2F84();

    v48 = swift_allocObject();
    *(v48 + 16) = v20;
    *(v48 + 24) = v78;
    *(v48 + 32) = v85;
    v49 = *(a6 + 16);
    *(v48 + 40) = *a6;
    *(v48 + 56) = v49;
    *(v48 + 72) = *(a6 + 32);

    v50 = v82;
    v51 = v77;
    v36 = sub_219BE3074();

    goto LABEL_17;
  }

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_219C09BA0;
  v65 = *(sub_219BEF3E4() + 16);

  v66 = MEMORY[0x277D83C10];
  *(v64 + 56) = MEMORY[0x277D83B88];
  *(v64 + 64) = v66;
  *(v64 + 32) = v65;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v67);
  sub_2196ABD54(0, &qword_280E91328, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D326E0]);
  sub_219BE3204();
  v68 = swift_allocObject();
  *(v68 + 16) = v78;
  *(v68 + 24) = v85;

  v69 = sub_219BE2E54();
  v63 = sub_219BE2F74();

LABEL_29:

  return v63;
}

uint64_t sub_2196A7FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  sub_219BF6214();
  sub_219BE5314();

  MEMORY[0x28223BE20](v8);
  sub_2196ABD54(0, &qword_280E91328, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D326E0]);
  sub_219BE3204();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;

  v10 = sub_219BE2E54();
  v11 = sub_219BE2F74();

  return v11;
}

uint64_t sub_2196A8208(uint64_t a1)
{
  v2 = sub_219BEE754();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(a1 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedServiceConfigFetcher);
  v18 = 0;
  v6 = sub_2196E0A30(&v18);
  v7 = v6[3];
  v17[0] = v6[2];
  v9 = v6[4];
  v8 = v6[5];
  v10 = v6[6];
  (*(v3 + 16))(v5, v6 + OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions, v2);
  type metadata accessor for TagFeedServiceContext();
  v11 = swift_allocObject();
  *(v11 + 16) = v17[0];
  *(v11 + 24) = v7;
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;
  *(v11 + 48) = v10;
  *(v11 + 56) = 1;
  (*(v3 + 32))(v11 + OBJC_IVAR____TtC7NewsUI221TagFeedServiceContext_serviceOptions, v5, v2);

  v12 = v9;
  v13 = v8;
  v14 = v10;

  v17[3] = v11;
  v15 = sub_219BED564();

  return v15;
}

uint64_t sub_2196A83CC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  sub_2196ABDD4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = sub_219BDBD34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_2187D96F4(*(*(*a1 + 24) + 16) + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_publishDate, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2196AB1C8(v8, &qword_280EE9C40, MEMORY[0x277CC9578]);
LABEL_8:
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C09EC0;
    sub_2187D96F4(*(*(v13 + 24) + 16) + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_publishDate, v5);
    v25 = sub_219BF5484();
    v27 = v26;
    v28 = MEMORY[0x277D837D0];
    *(v24 + 56) = MEMORY[0x277D837D0];
    v29 = sub_2186FC3BC();
    *(v24 + 64) = v29;
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    sub_2196AA67C(&qword_280EE9C60, 255, MEMORY[0x277CC9578]);
    v30 = sub_219BF7894();
    *(v24 + 96) = v28;
    *(v24 + 104) = v29;
    *(v24 + 72) = v30;
    *(v24 + 80) = v31;
    sub_219BF6214();
    sub_219BE5314();

    v23 = 0;
    goto LABEL_11;
  }

  (*(v10 + 32))(v12, v8, v9);
  if ((sub_219BDBC14() & 1) == 0)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_8;
  }

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v32 = qword_280F61708;
  sub_2186F20D4();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09EC0;
  sub_2187D96F4(*(*(v13 + 24) + 16) + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_publishDate, v5);
  v15 = sub_219BF5484();
  v17 = v16;
  v18 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  v19 = sub_2186FC3BC();
  *(v14 + 64) = v19;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  sub_2196AA67C(&qword_280EE9C60, 255, MEMORY[0x277CC9578]);
  v20 = sub_219BF7894();
  *(v14 + 96) = v18;
  *(v14 + 104) = v19;
  *(v14 + 72) = v20;
  *(v14 + 80) = v21;
  sub_219BF6214();
  sub_219BE5314();

  result = (*(v10 + 8))(v12, v9);
  v23 = 1;
LABEL_11:
  *v33 = v23;
  return result;
}

uint64_t sub_2196A8A54(uint64_t a1)
{
  swift_getObjectType();
  sub_218954408();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_2187E7248();
  sub_219BE31F4();

  v8 = sub_219BE2E54();
  sub_219BE2F64();

  v9 = sub_219BE2E54();
  v10 = sub_219BE2FD4();

  return v10;
}

void sub_2196A8C40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = MEMORY[0x28223BE20](Strong);
    type metadata accessor for FCSportsOnboardingState(0);
    sub_219BE3204();
    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    *(v5 + 24) = v4;

    v6 = v4;
    v7 = sub_219BE2E54();
    type metadata accessor for TagFeedDataManager();
    sub_219BE2F94();
  }
}

void *sub_2196A8D88(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result == 1)
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_219C09BA0;
    v8 = sub_2186D6710(0, &qword_280E8E680);
    v9 = MEMORY[0x21CECC6D0](a3, v8);
    v11 = v10;
    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = sub_2186FC3BC();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    sub_219BF6214();
    sub_219BE5314();

    v12 = a2 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      (*(v13 + 48))(a4, &off_282A80E38, ObjectType, v13);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2196A8F18(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v2, &off_282A80E38, a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2196A8FCC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(v2, &off_282A80E38, a1, a2, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2196A9080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 40))(v3, &off_282A80E38, a1, a2, a3, ObjectType, v9);
    swift_unknownObjectRelease();
    return v11;
  }

  return result;
}

uint64_t sub_2196A9124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(v3, &off_282A80E38, a1, a2, a3, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2196A91EC(uint64_t a1, uint64_t a2)
{
  result = [*(v2 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor) feedConfiguration];
  if (result == 3)
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_219C09BA0;
    if (a2 == 1)
    {
      v6 = 0xE900000000000064;
      v7 = 0x656472616F626E6FLL;
    }

    else if (a2)
    {
      v8 = sub_219BF7894();
      MEMORY[0x21CECC330](v8);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      v7 = 0x286E776F6E6B6E75;
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEC00000064656472;
      v7 = 0x616F626E4F746F6ELL;
    }

    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_2186FC3BC();
    *(v5 + 32) = v7;
    *(v5 + 40) = v6;
    sub_219BF6214();
    sub_219BE5314();

    v9 = v2 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = *(v9 + 8);
      ObjectType = swift_getObjectType();
      (*(v10 + 56))(v2, &off_282A80E38, ObjectType, v10);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2196A93F4()
{
  v1 = v0 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 56))(v0, &off_282A80E38, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2196A948C(uint64_t a1, uint64_t a2)
{
  sub_2196ABDD4(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = &v53 - v4;
  v59 = sub_219BF24C4();
  v5 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  v54 = a2;
  if (!v7)
  {
    v10 = MEMORY[0x277D84F98];
LABEL_17:
    v7 = v55;
    v31 = *&v55[OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor];

    v32 = [objc_msgSend(v31 backingTag)];
    swift_unknownObjectRelease();
    v33 = sub_219BF5414();
    v35 = v34;

    if (v10[2])
    {
      v36 = sub_21870F700(v33, v35);
      v38 = v37;

      if (v38)
      {
        v39 = *(v10[7] + 8 * v36);
        swift_unknownObjectRetain();
LABEL_22:
        if ([v31 feedConfiguration] == 11 && v39)
        {
          if (qword_280E8D7F8 != -1)
          {
LABEL_32:
            swift_once();
          }

          sub_2186F20D4();
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_219C09BA0;
          v41 = sub_219BF3C04();
          v42 = MEMORY[0x21CECC6D0](v54, v41);
          v44 = v43;
          *(v40 + 56) = MEMORY[0x277D837D0];
          *(v40 + 64) = sub_2186FC3BC();
          *(v40 + 32) = v42;
          *(v40 + 40) = v44;
          sub_219BF6214();
          sub_219BE5314();

          v45 = &v7[OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_delegate];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v46 = *(v45 + 1);
            ObjectType = swift_getObjectType();
            (*(v46 + 56))(v7, &off_282A80E38, ObjectType, v46);
            swift_bridgeObjectRelease_n();
            swift_unknownObjectRelease();
            return swift_unknownObjectRelease();
          }
        }

        else
        {
          v48 = sub_219BF5BF4();
          v49 = v53;
          (*(*(v48 - 8) + 56))(v53, 1, 1, v48);
          v50 = swift_allocObject();
          v50[2] = 0;
          v50[3] = 0;
          v50[4] = v7;
          v50[5] = v10;

          v51 = v7;
          sub_218AB3D80(0, 0, v49, &unk_219C9A490, v50);
        }

        swift_bridgeObjectRelease_n();
        return swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    v39 = 0;
    goto LABEL_22;
  }

  v8 = *(sub_219BF3C04() - 8);
  v9 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v57 = (v5 + 8);
  v56 = *(v8 + 72);
  v10 = MEMORY[0x277D84F98];
  while (1)
  {
    v11 = v58;
    sub_219BF3BF4();
    v12 = sub_219BF24B4();
    (*v57)(v11, v59);
    v13 = [v12 puzzleType];
    swift_unknownObjectRelease();
    v14 = [v13 identifier];
    v15 = sub_219BF5414();
    v17 = v16;

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v10;
    v20 = sub_21870F700(v15, v17);
    v21 = v10[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v24 = v19;
    if (v10[3] < v23)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v19)
      {
        goto LABEL_3;
      }
    }

    else
    {
      sub_21949570C();
      if (v24)
      {
LABEL_3:

        v10 = v60;
        *(v60[7] + 8 * v20) = v13;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_4;
      }
    }

LABEL_12:
    v10 = v60;
    v60[(v20 >> 6) + 8] |= 1 << v20;
    v27 = (v10[6] + 16 * v20);
    *v27 = v15;
    v27[1] = v17;
    *(v10[7] + 8 * v20) = v13;
    swift_unknownObjectRelease();
    v28 = v10[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_31;
    }

    v10[2] = v30;
LABEL_4:
    v9 += v56;
    if (!--v7)
    {
      goto LABEL_17;
    }
  }

  sub_219486388(v23, isUniquelyReferenced_nonNull_native);
  v25 = sub_21870F700(v15, v17);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if (v24)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_2196A9AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_219BF1D54();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2196A9B84, 0, 0);
}

uint64_t sub_2196A9B84()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_puzzleStatsService;
  v0[9] = OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_puzzleStatsService;
  v4 = *(v1 + v2 + 24);
  v3 = *(v1 + v2 + 32);
  __swift_project_boxed_opaque_existential_1((v1 + v2), v4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_2196A9C4C;

  return MEMORY[0x282192A48](v4, v3);
}

uint64_t sub_2196A9C4C()
{

  return MEMORY[0x2822009F8](sub_2196A9D48, 0, 0);
}

uint64_t sub_2196A9D48()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 32);
  *(v0 + 152) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 64);
  v6 = MEMORY[0x277D84F98];
  *(v0 + 88) = MEMORY[0x277D84F98];
  *(v0 + 96) = v6;

  if (v5)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 112) = v5;
    *(v0 + 120) = v8;
    v10 = (*(v0 + 24) + *(v0 + 72));
    v11 = *(*(v7 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    *(v0 + 128) = v11;
    v12 = v10[3];
    v13 = v10[4];
    __swift_project_boxed_opaque_existential_1(v10, v12);
    swift_unknownObjectRetain();
    v14 = swift_task_alloc();
    *(v0 + 136) = v14;
    *v14 = v0;
    v14[1] = sub_2196AA098;

    return MEMORY[0x282192A40](v11, v12, v13);
  }

  else
  {
    v9 = 0;
    while (((63 - v4) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v5 = *(v7 + 8 * v9++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    sub_219BF5BD4();

    *(v0 + 104) = sub_219BF5BC4();
    v16 = sub_219BF5B44();

    return MEMORY[0x2822009F8](sub_2196A9F40, v16, v15);
  }
}

uint64_t sub_2196A9F40()
{
  v1 = *(v0 + 24);

  v2 = v1 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 24);
    v5 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v4, &off_282A80E38, MEMORY[0x277D84FA0], MEMORY[0x277D84FA0], MEMORY[0x277D84FA0], v3, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  swift_bridgeObjectRelease_n();

  return MEMORY[0x2822009F8](sub_2196AA030, 0, 0);
}

uint64_t sub_2196AA030()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2196AA098(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_2196AA198, 0, 0);
}

uint64_t sub_2196AA198(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 144);
  v46 = *(v4 + 16);
  if (v46)
  {
    v5 = 0;
    v6 = *(*(v3 + 48) + 80);
    v44 = *(v3 + 144);
    v45 = v4 + ((v6 + 32) & ~v6);
    v7 = *(v3 + 88);
    while (1)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v12 = *(v3 + 56);
      v11 = *(v3 + 64);
      v14 = *(v3 + 40);
      v13 = *(v3 + 48);
      v48 = *(v13 + 72);
      (*(v13 + 16))(v11, v45 + v48 * v5, v14);
      v15 = sub_219BF1D24();
      v17 = v16;
      v47 = *(v13 + 32);
      v47(v12, v11, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 16) = v7;
      a1 = sub_21870F700(v15, v17);
      v19 = v7[2];
      v20 = (a2 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_34;
      }

      v23 = a2;
      if (v7[3] < v22)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v30 = a1;
      sub_219492A38();
      a1 = v30;
      v25 = *(v3 + 56);
      if (v23)
      {
LABEL_3:
        v9 = *(v3 + 40);
        v8 = *(v3 + 48);
        v10 = a1;

        v7 = *(v3 + 16);
        a1 = (*(v8 + 40))(v7[7] + v10 * v48, v25, v9);
        goto LABEL_4;
      }

LABEL_12:
      v26 = *(v3 + 40);
      v7 = *(v3 + 16);
      v7[(a1 >> 6) + 8] |= 1 << a1;
      v27 = (v7[6] + 16 * a1);
      *v27 = v15;
      v27[1] = v17;
      a1 = (v47)(v7[7] + a1 * v48, v25, v26);
      v28 = v7[2];
      v21 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v21)
      {
        goto LABEL_35;
      }

      v7[2] = v29;
LABEL_4:
      ++v5;
      v4 = v44;
      if (v46 == v5)
      {
        v31 = v7;
        goto LABEL_18;
      }
    }

    sub_219481C48(v22, isUniquelyReferenced_nonNull_native);
    a1 = sub_21870F700(v15, v17);
    if ((v23 & 1) != (v24 & 1))
    {

      return sub_219BF79A4();
    }

LABEL_11:
    v25 = *(v3 + 56);
    if (v23)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v7 = *(v3 + 88);
  v31 = *(v3 + 96);
LABEL_18:
  swift_unknownObjectRelease();

  v32 = *(v3 + 112);
  v33 = *(v3 + 120);
  *(v3 + 88) = v7;
  *(v3 + 96) = v31;
  v34 = (v32 - 1) & v32;
  if (v34)
  {
    a1 = *(v3 + 32);
LABEL_24:
    *(v3 + 112) = v34;
    *(v3 + 120) = v33;
    v36 = (*(v3 + 24) + *(v3 + 72));
    v37 = *(*(a1 + 56) + ((v33 << 9) | (8 * __clz(__rbit64(v34)))));
    *(v3 + 128) = v37;
    v38 = v36[3];
    v39 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v38);
    swift_unknownObjectRetain();
    v40 = swift_task_alloc();
    *(v3 + 136) = v40;
    *v40 = v3;
    v40[1] = sub_2196AA098;
    a1 = v37;
    a2 = v38;
    a3 = v39;
  }

  else
  {
    while (1)
    {
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      a1 = *(v3 + 32);
      if (v35 >= (((1 << *(v3 + 152)) + 63) >> 6))
      {

        sub_219BF5BD4();

        *(v3 + 104) = sub_219BF5BC4();
        v43 = sub_219BF5B44();

        return MEMORY[0x2822009F8](sub_2196A9F40, v43, v42);
      }

      v34 = *(a1 + 8 * v35 + 64);
      ++v33;
      if (v34)
      {
        v33 = v35;
        goto LABEL_24;
      }
    }

LABEL_36:
    __break(1u);
  }

  return MEMORY[0x282192A40](a1, a2, a3);
}

uint64_t sub_2196AA67C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2196AA784(uint64_t a1, uint64_t a2)
{
  sub_219ADE0B4();
  v5 = v4;
  v6 = sub_2194AF2AC(MEMORY[0x277D84F90]);
  v7 = a2 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 24);

    v10(a2, &off_282A80E38, a1, MEMORY[0x277D84FA0], v5, v6, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_2196AA8BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(v3 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
  if ([v8 feedConfiguration] == 3)
  {
    v9 = [v8 alternativeFeedDescriptor];
    if (v9)
    {
    }

    else if (sub_219ADC44C(a3, a1))
    {
      v10 = *(v4 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_sportsSyncManager + 32);
      v35 = *(v4 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_sportsSyncManager + 24);
      __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_sportsSyncManager), v35);
      v34 = *(v4 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_sportsSyncToken);
      v33 = *(v4 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_sportsSyncToken + 8);
      sub_2187D9028();
      v11 = sub_219BF66A4();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = a2;
      v14 = *(v10 + 56);

      v14(v34, v33, v11, sub_2196AAC8C, v13, v35, v10);
    }
  }

  if (a3 == 4 || a3 == 2)
  {
    v15 = *(a1 + 16);
    v16 = MEMORY[0x277D84F90];
    if (v15)
    {
      v36 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v15, 0);
      v16 = v36;
      v17 = a1 + 40;
      do
      {
        v18 = *(*(v17 - 8) + 16);
        j__swift_retain();
        j__swift_retain();
        j__swift_retain();
        v19 = [v18 identifier];
        v20 = sub_219BF5414();
        v22 = v21;

        j__swift_release();
        j__swift_release();
        j__swift_release();
        v24 = *(v36 + 16);
        v23 = *(v36 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_21870B65C((v23 > 1), v24 + 1, 1);
        }

        v17 += 16;
        *(v36 + 16) = v24 + 1;
        v25 = v36 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        --v15;
      }

      while (v15);
    }

    v26 = sub_218845F78(v16);

    sub_219ADE0B4();
    v28 = v27;
    v29 = sub_2194AF2AC(MEMORY[0x277D84F90]);
    v30 = v4 + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v30 + 8);
      ObjectType = swift_getObjectType();
      (*(v31 + 24))(v4, &off_282A80E38, MEMORY[0x277D84FA0], v26, v28, v29, ObjectType, v31);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_2196AAC94()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_sportsOnboardingManager);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

uint64_t sub_2196AAD18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187608D4;

  return sub_2196A9AB8(a1, v4, v5, v7, v6);
}

void sub_2196AAE64()
{
  if (!qword_27CC1DF08)
  {
    type metadata accessor for TagFeedGroup();
    sub_2196ABD54(255, &qword_27CC1DF10, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32170]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1DF08);
    }
  }
}

void sub_2196AAF18()
{
  if (!qword_280E90EC0)
  {
    sub_219BF0644();
    sub_2196AB0E0(255, &qword_280EDA038, &type metadata for OfflineFeedKind, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E90EC0);
    }
  }
}

uint64_t sub_2196AAFAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2196AB00C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_offlineFeedPrimer);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  *&v7 = v1;
  *(&v7 + 1) = v2;
  return sub_21895F754(&v7, v4, v5);
}

void sub_2196AB0E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2196AB1C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2196ABDD4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2196AB270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  sub_2196ABD54(0, a2, a3, a4, MEMORY[0x277D84310]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_2196AB310()
{
  if (!qword_280E90CF8)
  {
    sub_2196ABD54(255, &qword_280E90D00, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32F90]);
    sub_219BEEAF4();
    type metadata accessor for TagFeedServiceConfig();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E90CF8);
    }
  }
}

uint64_t objectdestroy_30Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_33Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_36Tm()
{

  return swift_deallocObject();
}

uint64_t sub_2196AB534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2196AB59C(uint64_t a1)
{
  if (!qword_280E90D10)
  {
    MEMORY[0x28223BE20](a1);
    sub_2196ABD54(255, &qword_280E90D00, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32F90]);
    type metadata accessor for TagFeedServiceConfig();
    sub_219BEEAF4();
    sub_219BEE644();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_280E90D10);
    }
  }
}

uint64_t sub_2196AB790()
{
  type metadata accessor for TagFeedServiceConfig();
  sub_2186F7CA4();
  return sub_219BEE814();
}

uint64_t objectdestroy_110Tm()
{
  v1 = sub_219BEE644();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2196AB880(uint64_t *a1, uint64_t a2)
{
  v5 = *(sub_219BEE644() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_2196A5C60(a1, a2, v2 + v6, *v7, v7[1]);
}

uint64_t objectdestroy_116Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_165Tm()
{

  return swift_deallocObject();
}

unint64_t sub_2196ABB08()
{
  result = qword_280E91668;
  if (!qword_280E91668)
  {
    sub_2196ABD54(255, &qword_280E91660, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D32580]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E91668);
  }

  return result;
}

uint64_t sub_2196ABBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2196ABD54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2196ABDD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_2196ABE38(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_2196ABF70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196AC470(0, &qword_280E8C828, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196AC41C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2196AC1C0(void *a1)
{
  sub_2196AC470(0, &qword_27CC1DF18, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196AC41C();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  if (!v1)
  {
    v9[14] = 1;
    sub_218B73808();
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2196AC374(uint64_t a1)
{
  v2 = sub_2196AC41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2196AC3B0(uint64_t a1)
{
  v2 = sub_2196AC41C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2196AC41C()
{
  result = qword_280E99FE0;
  if (!qword_280E99FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99FE0);
  }

  return result;
}

void sub_2196AC470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2196AC41C();
    v7 = a3(a1, &type metadata for ArticleListHistoryFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2196AC4E8()
{
  result = qword_27CC1DF20;
  if (!qword_27CC1DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DF20);
  }

  return result;
}

unint64_t sub_2196AC540()
{
  result = qword_280E99FD0;
  if (!qword_280E99FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99FD0);
  }

  return result;
}

unint64_t sub_2196AC598()
{
  result = qword_280E99FD8;
  if (!qword_280E99FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99FD8);
  }

  return result;
}

uint64_t sub_2196AC5EC(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v68 = a1;
  v2 = sub_219BDF104();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v53 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE0724();
  v7 = *(v6 - 8);
  v62 = v6;
  v63 = v7;
  MEMORY[0x28223BE20](v6);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDF0E4();
  v10 = *(v9 - 8);
  v59 = v9;
  v60 = v10;
  MEMORY[0x28223BE20](v9);
  v58 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDF804();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE14C4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BE14A4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v19, *MEMORY[0x277D2F2E8], v16);
  sub_219BE1484();
  sub_2196B6B28(&qword_280EE8010, MEMORY[0x277D2F280]);
  v67 = "articleFooterContext";
  sub_219BDCCC4();
  (*(v21 + 8))(v23, v20);
  v24 = sub_219BDDCD4();
  sub_219BDDCC4();
  sub_219BDF7F4();
  sub_2196B6B28(&unk_280EE8660, MEMORY[0x277D2DD88]);
  sub_219BDCCC4();
  (*(v13 + 8))(v15, v12);
  ObjectType = swift_getObjectType();
  v25 = v58;
  sub_219BF67F4();
  sub_2196B6ABC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v27 = v26;
  v28 = sub_219BDCD44();
  v29 = *(v28 - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v65 = v27;
  v32 = swift_allocObject();
  v64 = xmmword_219C09BA0;
  *(v32 + 16) = xmmword_219C09BA0;
  v33 = *(v29 + 104);
  v50 = *MEMORY[0x277CEAD10];
  v57 = v33;
  v33(v32 + v31);
  sub_2196B6B28(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
  v34 = v59;
  sub_219BDCCC4();
  v35 = v62;

  (v60)[1](v25, v34);
  v36 = v61;
  v60 = v24;
  sub_219BF6824();
  v37 = v36;
  v38 = v63;
  v39 = (*(v63 + 48))(v36, 1, v35);
  v51 = v30;
  v52 = v28;
  if (v39 == 1)
  {
    sub_2196B6A5C(v36, sub_218B58FEC);
    v40 = v57;
  }

  else
  {
    v41 = v49;
    (*(v38 + 32))(v49, v37, v35);
    v42 = swift_allocObject();
    *(v42 + 16) = v64;
    v43 = v28;
    v40 = v57;
    v57(v42 + v31, *MEMORY[0x277CEAD18], v43);
    sub_2196B6B28(&unk_27CC0DC50, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v38 + 8))(v41, v35);
  }

  if (![v60 sourceChannel])
  {
    return swift_unknownObjectRelease();
  }

  v44 = v53;
  sub_219BE01F4();
  v45 = swift_allocObject();
  *(v45 + 16) = v64;
  v40(v45 + v31, v50, v52);
  sub_2196B6B28(&unk_280EE8890, MEMORY[0x277D2D8B8]);
  v46 = v55;
  sub_219BDCCC4();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return (*(v54 + 8))(v44, v46);
}

uint64_t sub_2196ACEB8(uint64_t a1)
{
  v19 = a1;
  v2 = sub_219BDF074();
  MEMORY[0x28223BE20](v2 - 8);
  v18 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE1544();
  v14 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDBD64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE1524();
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BDBD54();
  sub_219BDBD44();
  (*(v7 + 8))(v9, v6);
  (*(v14 + 104))(v5, *MEMORY[0x277D2F3E0], v16);
  sub_2196AD1EC(v1, v18);
  sub_219BE1514();
  sub_2196B6B28(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v12 = v15;
  sub_219BDD1F4();

  (*(v17 + 8))(v11, v12);

  sub_219BDD134();
}

uint64_t sub_2196AD1EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a1;
  v3 = sub_219BE15B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BDCD34();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE9C04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9934();
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277D6E830])
  {
    v15 = *MEMORY[0x277D2D868];
    v16 = sub_219BDF074();
    return (*(*(v16 - 8) + 104))(a2, v15, v16);
  }

  else if (v14 == *MEMORY[0x277D6E840] || v14 == *MEMORY[0x277D6E848] || v14 == *MEMORY[0x277D6E838])
  {

    sub_219BDD184();

    sub_2196B6ABC(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
    sub_219BDD0A4();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    (*(v4 + 104))(v6, *MEMORY[0x277D2F548], v3);
    sub_219BDD094();
    (*(v4 + 8))(v6, v3);
    v20 = sub_219BDCD14();

    (*(v7 + 8))(v9, v24);
    v21 = sub_219BDF074();
    if (v20)
    {
      v22 = MEMORY[0x277D2D820];
    }

    else
    {
      v22 = MEMORY[0x277D2D810];
    }

    return (*(*(v21 - 8) + 104))(a2, *v22, v21);
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_2196AD640(uint64_t a1)
{
  v37 = a1;
  v2 = sub_219BDBD34();
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE1574();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE9C04();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v31 - v14;
  v16 = sub_219BDF244();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v1;
  v31[1] = *(v1 + 16);

  sub_219BE8F44();
  (*(v10 + 32))(v13, v15, v9);
  v19 = (*(v10 + 88))(v13, v9);
  if (v19 == *MEMORY[0x277D6E830])
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D2F428], v5);
  }

  else
  {
    v20 = *(v6 + 104);
    if (v19 == *MEMORY[0x277D6E840] || v19 == *MEMORY[0x277D6E848] || v19 == *MEMORY[0x277D6E838])
    {
      v20(v8, *MEMORY[0x277D2F420], v5);
    }

    else
    {
      v20(v8, *MEMORY[0x277D2F430], v5);
      (*(v10 + 8))(v13, v9);
    }
  }

  sub_219BDF234();
  sub_2196B6ABC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v23 = sub_219BDCD44();
  v24 = *(v23 - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_219C09BA0;
  (*(v24 + 104))(v26 + v25, *MEMORY[0x277CEAD18], v23);
  sub_2196B6B28(&qword_280EE8810, MEMORY[0x277D2D9A8]);
  v27 = v33;
  sub_219BDD1F4();

  (*(v32 + 8))(v18, v27);
  sub_219BDFC54();

  sub_219BE8F64();
  sub_2196B6B28(&qword_280EE85B8, MEMORY[0x277D2DFF8]);
  sub_219BDD174();

  v28 = v36;
  v29 = *(v35 + 8);
  v29(v4, v36);

  sub_219BE8F54();
  sub_219BDD194();

  return (v29)(v4, v28);
}

uint64_t sub_2196ADC08(unint64_t a1)
{
  sub_2196B646C();
  v181 = *(v2 - 8);
  v182 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v146 = v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v4;
  MEMORY[0x28223BE20](v3);
  v184 = v140 - v5;
  sub_2196B61C0(0, &unk_280EE5140, MEMORY[0x277D6DA48]);
  v7 = v6;
  v160 = *(v6 - 8);
  v159 = *(v160 + 64);
  MEMORY[0x28223BE20](v6);
  v162 = v140 - v8;
  v154 = sub_219BF0F34();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B6554();
  v186 = v10;
  v189 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v156 = v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = v12;
  MEMORY[0x28223BE20](v11);
  v169 = v140 - v13;
  v180 = sub_219BDDA04();
  v178 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v185 = v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B6ABC(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v158 = v140 - v16;
  v17 = sub_219BE16E4();
  MEMORY[0x28223BE20](v17 - 8);
  v166 = v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_219BDE874();
  v164 = *(v187 - 8);
  v19 = MEMORY[0x28223BE20](v187);
  v163 = v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v148 = v140 - v22;
  MEMORY[0x28223BE20](v21);
  v157 = v140 - v23;
  sub_218B58F30(0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v151 = v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v167 = v140 - v27;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v28 - 8);
  v176 = v140 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_219BDF584();
  v175 = *(v177 - 8);
  v30 = MEMORY[0x28223BE20](v177);
  v165 = v140 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v170 = v140 - v32;
  sub_218B58D58(0);
  v183 = v33;
  MEMORY[0x28223BE20](v33);
  v150 = v140 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E847D8();
  v190 = v35;
  v193 = *(v35 - 1);
  MEMORY[0x28223BE20](v35);
  v188 = v140 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B612C();
  v38 = v37;
  v39 = *(v37 - 8);
  v40 = MEMORY[0x28223BE20](v37);
  v173 = v140 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = v140 - v42;
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  v45 = v44;
  v46 = *(v44 - 8);
  v47 = MEMORY[0x28223BE20](v44);
  v168 = v140 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v50 = v140 - v49;
  sub_2196B62B4(0);
  v52 = MEMORY[0x28223BE20](v51 - 8);
  v54 = v140 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v56 = v140 - v55;
  sub_219BE7594();
  v191 = a1;
  v192 = v7;
  sub_219BE7564();
  sub_219BE5F84();
  v57 = *(v39 + 8);
  v172 = v38;
  v174 = v39 + 8;
  v171 = v57;
  v57(v43, v38);
  sub_219BEB244();
  v58 = v190;

  v59 = *(v46 + 8);
  v149 = v45;
  v147 = v46 + 8;
  v59(v50, v45);
  v60 = swift_allocBox();
  v62 = v61;
  v63 = sub_219BE16D4();
  v64 = *(v63 - 8);
  v65 = *(v64 + 56);
  v66 = v64 + 56;
  v65(v62, 1, 1, v63);
  v183 = v56;
  sub_2196B6404(v56, v54, sub_2196B62B4);
  v67 = (*(v193 + 6))(v54, 1, v58);
  v179 = v60;
  if (v67 != 1)
  {
    v141 = v62;
    v142 = v66;
    v143 = v65;
    v144 = v59;
    v68 = v188;
    (*(v193 + 4))(v188, v54, v58);
    sub_219BE7594();
    v69 = v175;
    v70 = v170;
    v71 = v177;
    (*(v175 + 104))(v170, *MEMORY[0x277D2DB50], v177);
    v72 = sub_219BE97D4();
    v73 = v176;
    (*(*(v72 - 8) + 56))(v176, 1, 1, v72);
    v74 = sub_219BDF474();
    (*(*(v74 - 8) + 56))(v167, 1, 1, v74);
    result = sub_218E66970();
    if ((v76 & 1) == 0)
    {
      v77 = result;
      sub_219690144(v73, v68);
      (*(v69 + 16))(v165, v70, v71);
      v78 = v157;
      sub_219BE6934();
      sub_219A5E7F0(v166);
      v79 = *(v164 + 8);
      v79(v78, v187);
      result = sub_219BE6944();
      v81 = v158;
      if (v77 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v77 <= 0x7FFFFFFF)
      {
        v140[1] = v80;
        v140[2] = result;
        v140[3] = v77;
        v157 = v63;
        v82 = v141;
        v83 = v148;
        sub_219BE6934();
        v84 = v164;
        v85 = v163;
        v86 = v187;
        (*(v164 + 32))(v163, v83, v187);
        v87 = (*(v84 + 88))(v85, v86);
        if (v87 == *MEMORY[0x277D301C0] || v87 == *MEMORY[0x277D301B8] || v87 == *MEMORY[0x277D301A0] || v87 == *MEMORY[0x277D30198] || v87 == *MEMORY[0x277D301B0])
        {
          v88 = v167;
          v79(v163, v187);
          v92 = *MEMORY[0x277D2E6B0];
          v91 = sub_219BE0674();
          (*(*(v91 - 8) + 104))(v81, v92, v91);
          v89 = v168;
        }

        else
        {
          v88 = v167;
          v89 = v168;
          if (v87 == *MEMORY[0x277D301C8])
          {
            v79(v163, v187);
            v90 = *MEMORY[0x277D2E6C0];
            v91 = sub_219BE0674();
            (*(*(v91 - 8) + 104))(v81, v90, v91);
          }

          else
          {
            v93 = *MEMORY[0x277D2E6C0];
            v91 = sub_219BE0674();
            (*(*(v91 - 8) + 104))(v81, v93, v91);
            v79(v163, v187);
          }
        }

        sub_219BE0674();
        (*(*(v91 - 8) + 56))(v81, 0, 1, v91);
        sub_2196B6404(v88, v151, sub_218B58F30);
        v94 = v150;
        sub_219BE15E4();
        sub_2196B6A5C(v88, sub_218B58F30);
        sub_2196B6A5C(v176, sub_218B58900);
        (*(v175 + 8))(v170, v177);
        v144(v89, v149);
        (*(v193 + 1))(v188, v190);
        v143(v94, 0, 1, v157);
        sub_218B58ECC(v94, v82);
        goto LABEL_16;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_2196B6A5C(v54, sub_2196B62B4);
LABEL_16:
  v95 = v181;
  v96 = v184;
  v97 = v173;
  v99 = v191;
  v98 = v192;
  sub_219BE7564();
  v100 = v185;
  v101 = v172;
  sub_219BE5FC4();
  v171(v97, v101);
  v102 = v178;
  v103 = v180;
  v104 = (*(v178 + 88))(v100, v180);
  v105 = v182;
  if (v104 == *MEMORY[0x277D2FB98])
  {
    (*(v102 + 96))(v100, v103);
    v106 = *(v189 + 32);
    v190 = (v189 + 32);
    v193 = v106;
    v107 = v169;
    v108 = v100;
    v109 = v186;
    v106(v169, v108, v186);
    v110 = v152;
    v111 = v109;
    v112 = v107;
    sub_219BF07D4();
    v113 = sub_219BF0F14();
    v188 = v113;
    (*(v153 + 8))(v110, v154);
    v114 = v161;
    __swift_project_boxed_opaque_existential_1(v161 + 11, v161[14]);
    v115 = [v113 identifier];
    sub_219BF5414();

    LODWORD(v185) = sub_219BF4774();

    v187 = v114[2];
    v116 = v160;
    v117 = v162;
    v118 = v192;
    (*(v160 + 16))(v162, v191, v192);
    v119 = v189;
    v120 = v156;
    (*(v189 + 16))(v156, v112, v111);
    v121 = (*(v116 + 80) + 16) & ~*(v116 + 80);
    v122 = (v159 + v121 + 7) & 0xFFFFFFFFFFFFFFF8;
    v191 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
    v123 = (v122 + 31) & 0xFFFFFFFFFFFFFFF8;
    v124 = *(v119 + 80);
    v125 = v118;
    v126 = (v124 + v123 + 8) & ~v124;
    v127 = swift_allocObject();
    (*(v116 + 32))(v127 + v121, v117, v125);
    *(v127 + v122) = v188;
    v128 = v127 + v191;
    *v128 = v114;
    *(v128 + 8) = v185 & 1;
    *(v127 + v123) = v179;
    v129 = v186;
    v193(v127 + v126, v120, v186);

    swift_unknownObjectRetain();

    sub_219BDD154();
    swift_unknownObjectRelease();

    (*(v189 + 8))(v169, v129);
    sub_2196B6A5C(v183, sub_2196B62B4);
  }

  else if (v104 == *MEMORY[0x277D2FBA0])
  {
    (*(v102 + 96))(v100, v103);
    sub_2196B66D0();
    v193 = *(v130 + 48);
    v190 = *(v95 + 32);
    v190(v96, v100, v105);
    v131 = v161;
    __swift_project_boxed_opaque_existential_1(v161 + 6, v161[9]);
    if (sub_219BE0BD4())
    {
      v188 = v131[2];
      v132 = v99;
      v133 = v160;
      (*(v160 + 16))(v162, v132, v98);
      v134 = v146;
      (*(v95 + 16))(v146, v96, v105);
      v135 = (*(v133 + 80) + 16) & ~*(v133 + 80);
      v136 = (v159 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
      v137 = v105;
      v138 = (*(v95 + 80) + v136 + 8) & ~*(v95 + 80);
      v139 = swift_allocObject();
      (*(v133 + 32))(v139 + v135, v162, v98);
      *(v139 + v136) = v179;
      v190(v139 + v138, v134, v137);

      sub_219BDD154();

      (*(v95 + 8))(v184, v137);
    }

    else
    {
      (*(v95 + 8))(v96, v105);
    }

    sub_2196B6A5C(v183, sub_2196B62B4);
    (*(v189 + 8))(v193 + v185, v186);
  }

  else
  {
    sub_2196B6A5C(v183, sub_2196B62B4);
    (*(v102 + 8))(v100, v103);
  }
}

uint64_t sub_2196AF278(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v175 = a7;
  v167 = a5;
  v181 = a4;
  v190 = a3;
  v199 = a1;
  v176 = sub_219BF0F34();
  v173 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v172 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_219BDBD34();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v174 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3B80(0);
  MEMORY[0x28223BE20](v10 - 8);
  v182 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_219BDF754();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v136 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_219BE09E4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_219BDF104();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v15 - 8);
  v180 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_219BE0724();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v135 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BE1774();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v19 - 8);
  v165 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BE16D4();
  v166 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v134 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_219BDF8A4();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v162 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_219BEFBD4();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v155 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_219BDF1A4();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v159 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_219BE0D44();
  v187 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v183 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_219BDF0E4();
  v153 = *(v154 - 1);
  MEMORY[0x28223BE20](v154);
  v152 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_219BE0444();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B612C();
  ObjectType = v29;
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196B61C0(0, &qword_280EE37B0, MEMORY[0x277D6EC60]);
  v34 = v33;
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v37 = &v130 - v36;
  v179 = sub_219BDFCE4();
  v38 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v40 = &v130 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = swift_projectBox();
  sub_2196B61C0(0, &unk_280EE5140, MEMORY[0x277D6DA48]);
  v42 = v41;
  sub_219BE7594();
  v185 = v42;
  v186 = a2;
  sub_219BE7564();
  v43 = sub_2196B6B28(&qword_280EE8DF0, MEMORY[0x277D2FBA8]);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v147 = v21;
  sub_219BDFCD4();
  v45 = *(v30 + 8);
  v146 = v30 + 8;
  v144 = v45;
  v45(v32, ObjectType);
  v46 = *(v35 + 8);
  v145 = v35 + 8;
  v143 = v46;
  v46(v37, v34);
  sub_2196B6ABC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v48 = v47;
  v49 = sub_219BDCD44();
  v50 = *(v49 - 8);
  v148 = v43;
  v51 = v50;
  v52 = *(v50 + 72);
  v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v193 = *(v51 + 80);
  v197 = v48;
  v198 = v53 + v52;
  v54 = swift_allocObject();
  v200 = xmmword_219C09BA0;
  *(v54 + 16) = xmmword_219C09BA0;
  v55 = *MEMORY[0x277CEAD18];
  v56 = *(v51 + 104);
  v191 = v53;
  v195 = v55;
  v189 = v49;
  v192 = v51 + 104;
  v194 = v56;
  v56(v54 + v53);
  sub_2196B6B28(&unk_280EE8590, MEMORY[0x277D2E058]);
  v196 = "articleFooterContext";
  v57 = v179;
  sub_219BDCCC4();

  (*(v38 + 8))(v40, v57);
  sub_219BE7594();
  sub_219BE7564();
  result = sub_219BEB314();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v58 = v149;
  sub_219BE0434();
  v144(v32, ObjectType);
  v143(v37, v34);
  v59 = swift_allocObject();
  *(v59 + 16) = v200;
  v60 = v191;
  v61 = v189;
  v194(v59 + v191, v195);
  sub_2196B6B28(&unk_280EE8400, MEMORY[0x277D2E530]);
  v62 = v151;
  sub_219BDCCC4();

  (*(v150 + 8))(v58, v62);
  ObjectType = swift_getObjectType();
  v63 = v152;
  sub_219BF67F4();
  v64 = swift_allocObject();
  *(v64 + 16) = v200;
  v65 = v195;
  (v194)(v64 + v60, v195, v61);
  sub_2196B6B28(&qword_280EE88B0, MEMORY[0x277D2D8A8]);
  v66 = v154;
  sub_219BDCCC4();

  (*(v153 + 8))(v63, v66);
  v67 = v183;
  sub_219BF6834();
  v68 = swift_allocObject();
  *(v68 + 16) = v200;
  v69 = v65;
  v70 = v194;
  (v194)(v68 + v60, v69, v61);
  v179 = sub_2196B6B28(&qword_280EE8190, MEMORY[0x277D2ECA0]);
  v71 = v184;
  sub_219BDCCC4();

  v72 = *(v187 + 8);
  v187 += 8;
  v154 = v72;
  (v72)(v67, v71);
  v73 = v157;
  v74 = v155;
  v75 = v158;
  (*(v157 + 104))(v155, *MEMORY[0x277D329E0], v158);
  v76 = v159;
  sub_219BE02C4();
  (*(v73 + 8))(v74, v75);
  v77 = swift_allocObject();
  *(v77 + 16) = v200;
  v70(v77 + v191, v195, v189);
  sub_2196B6B28(&unk_280EE8850, MEMORY[0x277D2D950]);
  v78 = v161;
  sub_219BDCCC4();

  v79 = v76;
  v80 = v70;
  (*(v160 + 8))(v79, v78);
  v81 = v183;
  sub_219BF6834();
  v82 = swift_allocObject();
  *(v82 + 16) = v200;
  v83 = v191;
  v84 = v195;
  v85 = v189;
  v80(v82 + v191, v195, v189);
  v86 = v184;
  sub_219BDCCC4();

  (v154)(v81, v86);
  v87 = v162;
  sub_219BDF894();
  v88 = swift_allocObject();
  *(v88 + 16) = v200;
  v80(v88 + v83, v84, v85);
  sub_2196B6B28(&qword_280EE8640, MEMORY[0x277D2DE40]);
  v89 = v164;
  sub_219BDCCC4();

  (*(v163 + 8))(v87, v89);
  v90 = v156;
  swift_beginAccess();
  v91 = v90;
  v92 = v165;
  sub_2196B6404(v91, v165, sub_218B58D58);
  v93 = v166;
  v94 = v147;
  if ((*(v166 + 48))(v92, 1, v147) == 1)
  {
    v95 = v189;
    sub_2196B6A5C(v92, sub_218B58D58);
    v96 = v169;
    v97 = v180;
    v98 = v194;
  }

  else
  {
    v99 = v134;
    (*(v93 + 32))(v134, v92, v94);
    v100 = swift_allocObject();
    *(v100 + 16) = v200;
    v95 = v189;
    v98 = v194;
    v194(v100 + v191, v84);
    sub_2196B6B28(&unk_280EE7FB0, MEMORY[0x277D2F590]);
    sub_219BDCCC4();

    (*(v93 + 8))(v99, v94);
    v96 = v169;
    v97 = v180;
  }

  v101 = v190;
  v102 = [v190 scoreProfile];
  if (v102)
  {
    v103 = v102;
    if ([v102 hasShadowScores])
    {
      [v103 shadowTabiScore];
      [v103 shadowAgedPersonalizationScore];
      v104 = v131;
      sub_219BE1764();
      v105 = swift_allocObject();
      *(v105 + 16) = v200;
      (v194)(v105 + v191, v195, v189);
      sub_2196B6B28(&unk_280EE7F40, MEMORY[0x277D2F8F0]);
      v106 = v133;
      sub_219BDCCC4();

      v97 = v180;

      v107 = v104;
      v98 = v194;
      v95 = v189;
      (*(v132 + 8))(v107, v106);
    }

    else
    {
    }
  }

  sub_219BF6824();
  v108 = v168;
  if ((*(v168 + 48))(v97, 1, v96) == 1)
  {
    sub_2196B6A5C(v97, sub_218B58FEC);
  }

  else
  {
    v109 = v135;
    (*(v108 + 32))(v135, v97, v96);
    v110 = swift_allocObject();
    *(v110 + 16) = v200;
    v98(v110 + v191, v195, v95);
    sub_2196B6B28(&unk_27CC0DC50, MEMORY[0x277D2E738]);
    sub_219BDCCC4();

    (*(v108 + 8))(v109, v96);
  }

  v111 = v182;
  v112 = [v101 sourceChannel];
  if (v112)
  {
    v187 = *(v181 + 24);
    v113 = v137;
    v184 = v112;
    sub_219BE01F4();
    v114 = swift_allocObject();
    *(v114 + 16) = v200;
    v115 = v191;
    v116 = v195;
    (v194)(v114 + v191, v195, v95);
    sub_2196B6B28(&unk_280EE8890, MEMORY[0x277D2D8B8]);
    v117 = v139;
    sub_219BDCCC4();

    (*(v138 + 8))(v113, v117);
    v118 = v140;
    sub_219BE01E4();
    v119 = swift_allocObject();
    *(v119 + 16) = v200;
    v120 = v116;
    v98 = v194;
    (v194)(v119 + v115, v120, v95);
    sub_2196B6B28(&qword_280EE8270, MEMORY[0x277D2E9C0]);
    v121 = v142;
    sub_219BDCCC4();
    v111 = v182;
    swift_unknownObjectRelease();

    (*(v141 + 8))(v118, v121);
  }

  sub_219BF6804();
  v122 = v170;
  v123 = v171;
  if ((*(v170 + 48))(v111, 1, v171) == 1)
  {
    sub_2196B6A5C(v111, sub_218BD3B80);
  }

  else
  {
    v124 = v136;
    (*(v122 + 32))(v136, v111, v123);
    v125 = swift_allocObject();
    *(v125 + 16) = v200;
    v98(v125 + v191, v195, v95);
    sub_2196B6B28(&unk_280EE86A0, MEMORY[0x277D2DD28]);
    sub_219BDCCC4();

    (*(v122 + 8))(v124, v123);
  }

  sub_219BE0834();
  v126 = v174;
  sub_219BE75A4();
  sub_2196B6B28(&qword_280EE82C0, MEMORY[0x277D2E858]);
  sub_219BDCC64();
  v127 = *(v177 + 8);
  v128 = v178;
  v127(v126, v178);
  sub_219BE7574();
  sub_2196B6554();
  v129 = v172;
  sub_219BF07D4();
  sub_219BF0F14();
  (*(v173 + 8))(v129, v176);
  v201[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v201);
  sub_219BDF4C4();
  sub_219BDCC84();
  v127(v126, v128);
  return sub_2196B6A5C(v201, sub_21880702C);
}